unit Transform32;

{**************************************************}
{  Graphics32 - Scaling and other transformations  }
{  A Library for Fast 32-Bit Bitmap Manipulation   }
{  Copyright (c) 2000 Alex Denissov                }
{  Version: 0.98                                   }
{  Date: 17-May-2000                               }
{  See Licence.txt for license information         }
{**************************************************}

{$WARNINGS OFF}

interface

uses
  Windows, SysUtils, Classes, Graphics32, Blend32;

type
  ETransformError = class(Exception);

procedure BlockTransfer(
  Dst: TBitmap32;
  DstX: Integer;
  DstY: Integer;
  Src: TBitmap32;
  SrcRect: TRect;
  CombineOp: TDrawMode);

procedure StretchTransfer(
  Dst: TBitmap32;
  DstRect: TRect;
  Src: TBitmap32;
  SrcRect: TRect;
  StretchFilter: TStretchFilter;
  CombineOp: TDrawMode);

type
  TMatrix3d = array[0..2, 0..2] of Extended;  // 3x3 double precision

const
  IdentityMatrix: TMatrix3d = (
    (1, 0, 0),
    (0, 1, 0),
    (0, 0, 1));

type
  TTransformation = class(TObject)
  public
    function  GetTransformedBounds(const Src: TRect): TRect; virtual; abstract;
    procedure PrepareTransform; virtual; abstract;
    procedure Transform(DstX, DstY: Integer; out SrcX, SrcY: Integer); virtual; abstract;
    procedure Transform256(DstX, DstY: Integer; out SrcX256, SrcY256: Integer); virtual; abstract;
  end;

  TLinearTransformation = class(TTransformation)
  private
    FMatrix: TMatrix3d;
  protected
    A, B, C: Integer;
    D, E, F: Integer;
  public
    constructor Create; virtual;
    function  GetTransformedBounds(const Src: TRect): TRect; override;
    procedure PrepareTransform; override;
    procedure Transform(DstX, DstY: Integer; out SrcX, SrcY: Integer); override;
    procedure Transform256(DstX, DstY: Integer; out SrcX256, SrcY256: Integer); override;
    procedure Clear;
    procedure Rotate(Cx, Cy, Alpha: Extended); // degrees
    procedure Skew(Fx, Fy: Extended);
    procedure Scale(Sx, Sy: Extended);
    procedure Translate(Dx, Dy: Extended);
    property Matrix: TMatrix3d read FMatrix write FMatrix;
  end;

procedure Transform(Dst, Src: TBitmap32; SrcRect: TRect; Transformation: TTransformation);
procedure SetBorderTransparent(ABitmap: TBitmap32; ARect: TRect);

implementation

uses LowLevel32, Math;

const
  SDstEmpty = 'Destination bitmap is nil or empty';
  SSrcEmpty = 'Source bitmap is nil or empty';
  SSrcInvalid = 'Source rectangle is invalid';

procedure CheckBitmaps(Dst, Src: TBitmap32);
begin
  if not Assigned(Dst) or Dst.Empty then raise ETransformError.Create(SDstEmpty);
  if not Assigned(Src) or Src.Empty then raise ETransformError.Create(SSrcEmpty);
end;

function CheckSrcRect(Src: TBitmap32; const SrcRect: TRect): Boolean;
begin
  Result := False;
  if IsRectEmpty(SrcRect) then Exit;
  if (SrcRect.Left < 0) or (SrcRect.Right > Src.Width) or
    (SrcRect.Top < 0) or (SrcRect.Bottom > Src.Height) then
    raise ETransformError.Create(SSrcInvalid);
  Result := True;
end;

procedure BlockTransfer(
  Dst: TBitmap32;
  DstX: Integer;
  DstY: Integer;
  Src: TBitmap32;
  SrcRect: TRect;
  CombineOp: TDrawMode);
var
  SrcX, SrcY: Integer;
  S, D: TRect;
  J, N: Integer;
  Ps, Pd: PColor32;
  MstrAlpha: TColor32;
begin
  CheckBitmaps(Src, Dst);
  if CombineOp = dmOpaque then
  begin
    BitBlt(Dst.Handle, DstX, DstY, SrcRect.Right - SrcRect.Left,
      SrcRect.Bottom - SrcRect.Top, Src.Handle, SrcRect.Left, SrcRect.Top,
      SRCCOPY);
    Exit;
  end;

  if Src.MasterAlpha = 0 then Exit;

  // clip the rectangles with bitmap boundaries
  SrcX := SrcRect.Left;
  SrcY := SrcRect.Top;
  IntersectRect(S, SrcRect, Rect(0, 0, Src.Width, Src.Height));
  OffsetRect(S, DstX - SrcX, DstY - SrcY);
  IntersectRect(D, S, Rect(0, 0, Dst.Width, Dst.Height));
  if IsRectEmpty(D) then Exit;

  MstrAlpha := Src.MasterAlpha;
  N := D.Right - D.Left;

  try
    if MstrAlpha = 255 then
      for J := D.Top to D.Bottom - 1 do
      begin
        Ps := Src.PixelPtr[D.Left + SrcX - DstX, J + SrcY - DstY];
        Pd := Dst.PixelPtr[D.Left, J];
        BlendLine(Ps, Pd, N);
      end
    else
      for J := D.Top to D.Bottom - 1 do
      begin
        Ps := Src.PixelPtr[D.Left + SrcX - DstX, J + SrcY - DstY];
        Pd := Dst.PixelPtr[D.Left, J];
        BlendLineEx(Ps, Pd, N, MstrAlpha);
      end;
  finally
    EMMS;
  end;
end;

procedure StretchNearest(
  Dst: TBitmap32;
  DstRect: TRect;
  Src: TBitmap32;
  SrcRect: TRect;
  CombineOp: TDrawMode);
var
  SrcW, SrcH, DstW, DstH: Integer;
  MapX, MapY: array of Integer;
  DstX, DstY: Integer;
  R: TRect;
  I, J, Y: Integer;
  P: PColor32;
  MstrAlpha: TColor32;
begin
  // check source and destination
  CheckBitmaps(Dst, Src);
  if not CheckSrcRect(Src, SrcRect) then Exit;
  if IsRectEmpty(DstRect) then Exit;
  IntersectRect(R, DstRect, Rect(0, 0, Dst.Width, Dst.Height));
  if IsRectEmpty(R) then Exit;
  if (CombineOp = dmBlend) and (Src.MasterAlpha = 0) then Exit;

  SrcW := SrcRect.Right - SrcRect.Left;
  SrcH := SrcRect.Bottom - SrcRect.Top;
  DstW := DstRect.Right - DstRect.Left;
  DstH := DstRect.Bottom - DstRect.Top;
  DstX := DstRect.Left;
  DstY := DstRect.Top;

  // check if we actually have to stretch anything
  if (SrcW = DstW) and (SrcH = DstH) then
  begin
    BlockTransfer(Dst, DstX, DstY, Src, SrcRect, CombineOp);
    Exit;
  end;

  // build X coord mapping table
  SetLength(MapX, DstW);
  SetLength(MapY, DstH);

  try
    for I := 0 to DstW - 1 do
      MapX[I] := I * (SrcW) div (DstW) + SrcRect.Left;

    // build Y coord mapping table
    for J := 0 to DstH - 1 do
      MapY[J] := J * (SrcH) div (DstH) + SrcRect.Top;

    // transfer pixels
    case CombineOp of
      dmOpaque:
        for J := R.Top to R.Bottom - 1 do
        begin
          Y := MapY[J - DstY];
          P := Dst.PixelPtr[R.Left, J];
          for I := R.Left to R.Right - 1 do
          begin
            P^ := Src[MapX[I - DstX], Y];
            Inc(P);
          end;
        end;

      dmBlend:
      begin
        MstrAlpha := Src.MasterAlpha;
        if MstrAlpha = 255 then
          for J := R.Top to R.Bottom - 1 do
          begin
            Y := MapY[J - DstY];
            P := Dst.PixelPtr[R.Left, J];
            for I := R.Left to R.Right - 1 do
            begin
              BlendMem(Src[MapX[I - DstX], Y], P^);
              Inc(P);
            end;
          end
        else // Master Alpha is in [1..254] range
          for J := R.Top to R.Bottom - 1 do
          begin
            Y := MapY[J - DstY];
            P := Dst.PixelPtr[R.Left, J];
            for I := R.Left to R.Right - 1 do
            begin
              BlendMemEx(Src[MapX[I - DstX], Y], P^, MstrAlpha);
              Inc(P);
            end;
          end
      end;
    end;
  finally
    EMMS;
    MapX := nil;
    MapY := nil;
  end;
end;

{ StretchFlt }

type
  TPointRec = record
    Pos: Integer;
    Weight: Integer;
  end;
  TCluster = array of TPointRec;
  TMappingTable = array of TCluster;
  TFilterFunc = function(Value: Extended): Extended;

function NearestFilter(Value: Extended): Extended;
begin
  if (Value > -0.5) and (Value <= 0.5) then Result := 1
  else Result := 0;
end;

function LinearFilter(Value: Extended): Extended;
begin
  if Value < -1 then Result := 0
  else if Value < 0 then Result := 1 + Value
  else if Value < 1 then Result := 1 - Value
  else Result := 0;
end;

function SplineFilter(Value: Extended): Extended;
var
  tt: Extended;
begin
  Value := Abs(Value);
  if Value < 1 then
  begin
    tt := Sqr(Value);
    Result := 0.5 * tt * Value - tt + 2 / 3;
  end
  else if Value < 2 then
  begin
    Value := 2 - Value;
    Result := 1 / 6 * Sqr(Value) * Value;
  end
  else Result := 0;
end;

function BuildMappingTable(
  DstWidth, SrcFrom, SrcWidth: Integer;
  StretchFilter: TStretchFilter): TMappingTable;
const
  FILTERS: array[TStretchFilter] of TFilterFunc = (NearestFilter, LinearFilter,
    SplineFilter);
var
  Filter: TFilterFunc;
  FilterWidth: Extended;
  Scale, OldScale: Extended;
  Center: Extended;
  Bias: Extended;
  Left, Right: Integer;
  I, J, K: Integer;
  Weight: Integer;
begin
  if SrcWidth = 0 then
  begin
    Result := nil;
    Exit;
  end;
  Filter := FILTERS[StretchFilter];
  if StretchFilter in [sfNearest, sfLinear] then FilterWidth := 1
  else FilterWidth := 1.5;
  SetLength(Result, DstWidth);
  Scale := (DstWidth - 1) / (SrcWidth - 1);

  if (Scale < 1) then
  begin
    OldScale := Scale;
    Scale := 1 / Scale;
    FilterWidth := FilterWidth * Scale;
    for I := 0 to DstWidth - 1 do
    begin
      Center := I * Scale;
      Left := Floor(Center - FilterWidth);
      Right := Ceil(Center + FilterWidth);
      Bias := 0;
      for J := Left to Right do
      begin
        Weight := Round(255 * Filter((Center - J) * OldScale) * OldScale);
        if Weight <> 0 then
        begin
          Bias := Bias + Weight / 255;
          k := Length(Result[I]);
          SetLength(Result[I], k + 1);
          Result[I][k].Pos := Constrain(j + SrcFrom, 0, SrcWidth - 1);
          Result[I][k].Weight := Weight;
        end;
      end;
      if (Bias > 0) and (Bias <> 1) then
      begin
        Bias := 1 / Bias;
        for k := 0 to High(Result[I]) do
          Result[I][k].Weight := Round(Result[I][k].Weight * Bias);
      end
    end;
  end
  else // scale > 1
  begin
    FilterWidth := 1 / FilterWidth;
    Scale := 1 / Scale;
    for I := 0 to DstWidth - 1 do
    begin
      Center := I * Scale;
      Left := Floor(Center - FilterWidth);
      Right := Ceil(Center + FilterWidth);
      for j := Left to Right do
      begin
        Weight := Round(255 * Filter(Center - j));
        if Weight <> 0 then
        begin
          k := Length(Result[I]);
          SetLength(Result[I], k + 1);
          Result[i][k].Pos := Constrain(j + SrcFrom, 0, SrcWidth - 1);
          Result[i][k].Weight := Weight;
        end;
      end;
    end;
  end;
end;

procedure StretchTransfer(
  Dst: TBitmap32;
  DstRect: TRect;
  Src: TBitmap32;
  SrcRect: TRect;
  StretchFilter: TStretchFilter;
  CombineOp: TDrawMode);
var
  SrcW, SrcH, DstW, DstH: Integer;
  t: Single;
  MapX, MapY: TMappingTable;
  DstX, DstY: Integer;
  R: TRect;
  I, J, X, Y: Integer;
  P: PColor32;
  ClusterX, ClusterY: TCluster;
  C, Wt, Cr, Cg, Cb, Ca: Integer;
  MstrAlpha: TColor32;
begin
  if StretchFilter = sfNearest then
  begin
    StretchNearest(Dst, DstRect, Src, SrcRect, CombineOp);
    Exit;
  end;

  // check source and destination
  CheckBitmaps(Dst, Src);
  if not CheckSrcRect(Src, SrcRect) then Exit;
  if IsRectEmpty(DstRect) then Exit;
  IntersectRect(R, DstRect, Rect(0, 0, Dst.Width, Dst.Height));
  if IsRectEmpty(R) then Exit;
  if (CombineOp = dmBlend) and (Src.MasterAlpha = 0) then Exit;

  SrcW := SrcRect.Right - SrcRect.Left;
  SrcH := SrcRect.Bottom - SrcRect.Top;
  DstW := DstRect.Right - DstRect.Left;
  DstH := DstRect.Bottom - DstRect.Top;
  DstX := DstRect.Left;
  DstY := DstRect.Top;
  MstrAlpha := Src.MasterAlpha;

  // check if we actually have to stretch anything
  if (SrcW = DstW) and (SrcH = DstH) then
  begin
    BlockTransfer(Dst, DstX, DstY, Src, SrcRect, CombineOp);
    Exit;
  end;

  // mapping tables
  MapX := BuildMappingTable(DstW, SrcRect.Left, SrcW, StretchFilter);
  MapY := BuildMappingTable(DstH, SrcRect.Top, SrcH, StretchFilter);
  try
    ClusterX := nil; ClusterY := nil;
    if (MapX = nil) or (MapY = nil) then Exit;

    // transfer pixels
    for J := R.Top to R.Bottom - 1 do
    begin
      ClusterY := MapY[J - DstY];
      P := Dst.PixelPtr[R.Left, J];
      for I := R.Left to R.Right - 1 do
      begin
        ClusterX := MapX[I - DstX];

        // reset color accumulators
        Ca := 0; Cr := 0; Cg := 0; Cb := 0;

        // now iterate through each cluster
        for y := 0 to High(ClusterY) do
          for x := 0 to High(ClusterX) do
          begin
            C := Src[ClusterX[x].Pos, ClusterY[y].Pos];
            Wt := ClusterX[x].Weight * ClusterY[y].Weight;
            Inc(Ca, C shr 24 * Wt);
            Inc(Cr, (C and $00FF0000) shr 16 * Wt);
            Inc(Cg, (C and $0000FF00) shr 8 * Wt);
            Inc(Cb, (C and $000000FF) * Wt);
          end;
        Ca := Ca and $00FF0000;
        Cr := Cr and $00FF0000;
        Cg := Cg and $00FF0000;
        Cb := Cb and $00FF0000;
        C := (Ca shl 8) or Cr or (Cg shr 8) or (Cb shr 16);

        // combine it with the background
        case CombineOp of
          dmOpaque: P^ := C;
          dmBlend: BlendMemEx(C, P^, MstrAlpha);
        end;
        Inc(P);
      end;
    end;
  finally
    EMMS;
    MapX := nil;
    MapY := nil;
  end;
end;


{ A little bit of linear algebra }

function _DET(a1, a2, b1, b2: Extended): Extended; overload;
begin
  Result := a1 * b2 - a2 * b1;
end;

function _DET(a1, a2, a3, b1, b2, b3, c1, c2, c3: Extended): Extended; overload;
begin
  Result :=
    a1 * (b2 * c3 - b3 * c2) -
    b1 * (a2 * c3 - a3 * c2) +
    c1 * (a2 * b3 - a3 * b2);
end;

procedure Adjoint(var M: TMatrix3d);
var
  a1, a2, a3: Extended;
  b1, b2, b3: Extended;
  c1, c2, c3: Extended;
begin
  a1 := M[0,0]; a2:= M[0,1]; a3 := M[0,2];
  b1 := M[1,0]; b2:= M[1,1]; b3 := M[1,2];
  c1 := M[2,0]; c2:= M[2,1]; c3 := M[2,2];

  M[0,0]:= _DET(b2, b3, c2, c3);
  M[0,1]:=-_DET(a2, a3, c2, c3);
  M[0,2]:= _DET(a2, a3, b2, b3);

  M[1,0]:=-_DET(b1, b3, c1, c3);
  M[1,1]:= _DET(a1, a3, c1, c3);
  M[1,2]:=-_DET(a1, a3, b1, b3);

  M[2,0]:= _DET(b1, b2, c1, c2);
  M[2,1]:=-_DET(a1, a2, c1, c2);
  M[2,2]:= _DET(a1, a2, b1, b2);
end;

function Determinant(const M: TMatrix3d): Extended;
begin
  Result := _DET(M[0,0], M[1,0], M[2,0],
                 M[0,1], M[1,1], M[2,1],
                 M[0,2], M[1,2], M[2,2]);
end;

procedure Scale(var M: TMatrix3d; Factor: Extended);
var
  i, j: Integer;
begin
  for i := 0 to 2 do
    for j := 0 to 2 do
      M[i,j] := M[i,j] * Factor;
end;

procedure Invert(var M: TMatrix3d);
var
  Det: Extended;
begin
  Det := Determinant(M);
  if Abs(Det) < 1E-5 then M := IdentityMatrix
  else
  begin
    Adjoint(M);
    Scale(M, 1 / Det);
  end;
end;

function Mult(const M1, M2: TMatrix3d): TMatrix3d;
var
  i, j: Integer;
begin
  for i := 0 to 2 do
    for j := 0 to 2 do
      Result[i, j] :=
        M1[0, j] * M2[i, 0] +
        M1[1, j] * M2[i, 1] +
        M1[2, j] * M2[i, 2];
end;

type
  TVector3d = array[0..2] of Extended;
  TVector3i = array[0..2] of Integer;

function VectorTransform(const M: TMatrix3d; const V: TVector3d): TVector3d;
begin
  Result[0] := M[0,0] * V[0] + M[1,0] * V[1] + M[2,0] * V[2];
  Result[1] := M[0,1] * V[0] + M[1,1] * V[1] + M[2,1] * V[2];
  Result[2] := M[0,2] * V[0] + M[1,2] * V[1] + M[2,2] * V[2];
end;

function SAR_4(Value: Integer): Integer; assembler
asm
        SAR EAX,4
end;

function SAR_8(Value: Integer): Integer; assembler
asm
        SAR EAX,8
end;

function SAR_12(Value: Integer): Integer; assembler
asm
        SAR EAX,12
end;

{ TLinearTransformation }

procedure TLinearTransformation.Clear;
begin
  FMatrix := IdentityMatrix;
end;

constructor TLinearTransformation.Create;
begin
  Clear;
end;

function TLinearTransformation.GetTransformedBounds(const Src: TRect): TRect;
var
  V1, V2, V3, V4: TVector3d;
begin
  V1[0] := Src.Left;      V1[1] := Src.Top;        V1[2] := 1;
  V2[0] := Src.Right - 1; V2[1] := V1[1];          V2[2] := 1;
  V3[0] := V1[0];         V3[1] := Src.Bottom - 1; V3[2] := 1;
  V4[0] := V2[0];         V4[1] := V3[1];          V4[2] := 1;
  V1 := VectorTransform(Matrix, V1);
  V2 := VectorTransform(Matrix, V2);
  V3 := VectorTransform(Matrix, V3);
  V4 := VectorTransform(Matrix, V4);
  Result.Left   := Round(Min(Min(V1[0], V2[0]), Min(V3[0], V4[0])) - 0.5);
  Result.Right  := Round(Max(Max(V1[0], V2[0]), Max(V3[0], V4[0])) + 0.5);
  Result.Top    := Round(Min(Min(V1[1], V2[1]), Min(V3[1], V4[1])) - 0.5);
  Result.Bottom := Round(Max(Max(V1[1], V2[1]), Max(V3[1], V4[1])) + 0.5);
end;

procedure TLinearTransformation.PrepareTransform;
var
  M: TMatrix3d;
begin
  M := Matrix;
  Invert(M);

  // calculate a fixed point (4096) factors
  A := Round(M[0,0] * 4096); B := Round(M[1,0] * 4096); C := Round(M[2,0] * 4096);
  D := Round(M[0,1] * 4096); E := Round(M[1,1] * 4096); F := Round(M[2,1] * 4096);
end;

procedure TLinearTransformation.Rotate(Cx, Cy, Alpha: Extended);
var
  S, C: Extended;
  M: TMatrix3d;
begin
  if (Cx <> 0) and (Cy <> 0) then Translate(-Cx, -Cy);
  SinCos(DegToRad(Alpha), S, C);
  M := IdentityMatrix;
  M[0,0] := C;   M[1,0] := S;
  M[0,1] := -S;  M[1,1] := C;
  FMatrix := Mult(M, FMatrix);
  if (Cx <> 0) and (Cy <> 0) then Translate(Cx, Cy);
end;

procedure TLinearTransformation.Scale(Sx, Sy: Extended);
var
  M: TMatrix3d;
begin
  M := IdentityMatrix;
  M[0,0] := Sx;
  M[1,1] := Sy;
  FMatrix := Mult(M, FMatrix);
end;

procedure TLinearTransformation.Skew(Fx, Fy: Extended);
var
  M: TMatrix3d;
begin
  M := IdentityMatrix;
  M[1, 0] := Fx;
  M[0, 1] := Fy;
  FMatrix := Mult(M, FMatrix);
end;

procedure TLinearTransformation.Transform(
  DstX, DstY: Integer;
  out SrcX, SrcY: Integer);
begin
  SrcX := SAR_12(DstX * A + DstY * B + C);
  SrcY := SAR_12(DstX * D + DstY * E + F);
end;

procedure TLinearTransformation.Transform256(
  DstX, DstY: Integer;
  out SrcX256, SrcY256: Integer);
begin
  SrcX256 := SAR_4(DstX * A + DstY * B + C);
  SrcY256 := SAR_4(DstX * D + DstY * E + F);
end;

procedure TLinearTransformation.Translate(Dx, Dy: Extended);
var
  M: TMatrix3d;
begin
  M := IdentityMatrix;
  M[2,0] := Dx;
  M[2,1] := Dy;
  FMatrix := Mult(M, FMatrix);
end;


{ Transformation functions }

procedure Transform(Dst, Src: TBitmap32; SrcRect: TRect;
  Transformation: TTransformation);
var
  SrcBlend: Boolean;
  C, SrcAlpha: TColor32;
  R, DstRect: TRect;
  Pixels: PColor32Array;
  I, J, X, Y: Integer;

  function GET_S256(X, Y: Integer; out C: TColor32): Boolean;
  var
    flrx, flry, celx, cely: Longword;
    C1, C2, C3, C4: TColor32;
    P: PColor32;
  begin
    flrx := X and $FF;
    flry := Y and $FF;

    X := SAR_8(X);
    Y := SAR_8(Y);

    celx := flrx xor 255;
    cely := flry xor 255;

    if (X >= SrcRect.Left) and (X < SrcRect.Right - 1) and
      (Y >= SrcRect.Top) and (Y < SrcRect.Bottom - 1) then
    begin
      // evrething is ok take the four values and interpolate them
      P := Src.PixelPtr[X, Y];
      C1 := P^;
      Inc(P);
      C2 := P^;
      Inc(P, Src.Width);
      C4 := P^;
      Dec(P);
      C3 := P^;
      C := CombineReg(CombineReg(C1, C2, celx), CombineReg(C3, C4, celx), cely);
      Result := True;
    end
    else
    begin
      // (X,Y) coordinate is out of the SrcRect, do not interpolate
      C := 0; // just write something to disable compilator warnings
      Result := False;
    end;
  end;
begin
  SrcBlend := (Src.DrawMode = dmBlend);
  SrcAlpha := Src.MasterAlpha; // store it into a local variable

  // clip SrcRect
  R := SrcRect;
  IntersectRect(SrcRect, R, Rect(0, 0, Src.Width, Src.Height));
  if IsRectEmpty(SrcRect) then Exit;

  // clip DstRect
  R := Transformation.GetTransformedBounds(SrcRect);
  IntersectRect(DstRect, R, Rect(0, 0, Dst.Width, Dst.Height));
  if IsRectEmpty(DstRect) then Exit;

  try
    if Src.StretchFilter <> sfNearest then
      for J := DstRect.Top to DstRect.Bottom - 1 do
      begin
        Pixels := Dst.ScanLine[J];
        for I := DstRect.Left to DstRect.Right - 1 do
        begin
          Transformation.Transform256(I, J, X, Y);
          if GET_S256(X, Y, C) then
            if SrcBlend then
              BlendMemEx(C, Pixels[I], SrcAlpha)
            else
              Pixels[I] := C;
        end;
      end
    else // nearest filter
      for J := DstRect.Top to DstRect.Bottom - 1 do
      begin
        Pixels := Dst.ScanLine[J];
        for I := DstRect.Left to DstRect.Right - 1 do
        begin
          Transformation.Transform(I, J, X, Y);
          if (X >= SrcRect.Left) and (X < SrcRect.Right) and
            (Y >= SrcRect.Top) and (Y < SrcRect.Bottom) then
          begin
            if SrcBlend then
              BlendMemEx(Src.Pixel[X, Y], Pixels[I], SrcAlpha)
            else
              Pixels[I] := Src.Pixel[X, Y];
          end;
        end;
      end;
  finally
    EMMS;
  end;
  Dst.Changed;
end;

procedure SetBorderTransparent(ABitmap: TBitmap32; ARect: TRect);
var
  I: Integer;
begin
  if TestClip(ARect.Left, ARect.Right, ABitmap.Width) and
    TestClip(ARect.Top, ARect.Bottom, ABitmap.Height) then
  begin
    ABitmap.Changing;

    for I := ARect.Left to ARect.Right do
      ABitmap[I, ARect.Top] := ABitmap[I, ARect.Top] and $00FFFFFF;

    for I := ARect.Left to ARect.Right do
      ABitmap[I, ARect.Bottom] := ABitmap[I, ARect.Bottom] and $00FFFFFF;

    if ARect.Bottom > ARect.Top + 1 then
      for I := ARect.Top + 1 to ARect.Bottom - 1 do
      begin
        ABitmap[ARect.Left, I] := ABitmap[ARect.Left, I] and $00FFFFFF;
        ABitmap[ARect.Right, I] := ABitmap[ARect.Right, I] and $00FFFFFF;
      end;

    ABitmap.Changed;
  end;
end;

end.
