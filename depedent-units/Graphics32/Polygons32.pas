unit Polygons32;

{**************************************************}
{  Graphics32 - PolyLines and Polygons             }
{  A Library for Fast 32-Bit Bitmap Manipulation   }
{  Copyright (c) 2000 Alex Denissov                }
{  Version: 0.98                                   }
{  Date: 17-May-2000                               }
{  See Licence.txt for license information         }
{**************************************************}

interface

uses
  Windows, SysUtils, Graphics32, LowLevel32, Blend32;

type
  TArrayOfPoint = array of TPoint;
  TArrayOfArrayOfPoint = array of TArrayOfPoint;

  TPointF = record
    X, Y: Single;
  end;
  TArrayOfPointF = array of TPointF;
  TArrayOfArrayOfPointF = array of TArrayOfPointF;

  TScanLine = array of Integer;
  TScanLines = array of TScanLine;

procedure PolyLineTS(Bitmap: TBitmap32; const Points: TArrayOfPoint; Color: TColor32);
procedure PolyLineAS(Bitmap: TBitmap32; const Points: TArrayOfPoint; Color: TColor32);
procedure PolyLineFS(Bitmap: TBitmap32; const Points: TArrayOfPointF; Color: TColor32);

procedure PolygonTS(Bitmap: TBitmap32; const Points: TArrayOfPoint; Color: TColor32);
procedure PolygonAS(Bitmap: TBitmap32; const Points: TArrayOfPoint; Color: TColor32);
procedure PolygonFS(Bitmap: TBitmap32; const Points: TArrayOfPointF; Color: TColor32);

procedure PolyPolygonTS(Bitmap: TBitmap32; const Points: TArrayOfArrayOfPoint;
  Color: TColor32);
procedure PolyPolygonAS(Bitmap: TBitmap32; const Points: TArrayOfArrayOfPoint;
  Color: TColor32);
procedure PolyPolygonFS(Bitmap: TBitmap32; const Points: TArrayOfArrayOfPointF;
  Color: TColor32);

implementation

procedure PolylineTS(Bitmap: TBitmap32; const Points: TArrayOfPoint;
  Color: TColor32);
var
  I, L: Integer;
  DoAlpha: Boolean;
begin
  DoAlpha := Color and $FF000000 <> $FF000000;
  L := Length(Points);
  if L < 2 then Exit;

  Bitmap.Changing;
  Bitmap.BeginUpdate;
  with Points[L - 1] do Bitmap.MoveTo(X, Y);
  Bitmap.PenColor := Color;
  if DoAlpha then
    for I := 0 to L - 1 do with Points[I] do Bitmap.LineToTS(X, Y)
  else
    for I := 0 to L - 1 do with Points[I] do Bitmap.LineToS(X, Y);
  Bitmap.EndUpdate;
  Bitmap.Changed;
end;

procedure PolyLineAS(Bitmap: TBitmap32; const Points: TArrayOfPoint;
  Color: TColor32);
var
  I, L: Integer;
begin
  L := Length(Points);
  if L < 2 then Exit;
  Bitmap.Changing;
  Bitmap.BeginUpdate;
  with Points[L - 1] do Bitmap.MoveTo(X, Y);
  Bitmap.PenColor := Color;
  for I := 0 to L - 1 do with Points[I] do Bitmap.LineToAS(X, Y);
  Bitmap.EndUpdate;
  Bitmap.Changed;
end;

procedure PolylineFS(Bitmap: TBitmap32; const Points: TArrayOfPointF;
  Color: TColor32);
var
  I, L: Integer;
begin
  L := Length(Points);
  if L < 2 then Exit;
  Bitmap.Changing;
  Bitmap.BeginUpdate;
  with Points[L - 1] do Bitmap.MoveToF(X, Y);
  Bitmap.PenColor := Color;
  for I := 0 to L - 1 do with Points[I] do Bitmap.LineToFS(X, Y);
  Bitmap.EndUpdate;
  Bitmap.Changed;
end;

procedure QSortLine(const ALine: TScanLine; L, R: Integer);
var
  I, J, P: Integer;
begin
  repeat
    I := L;
    J := R;
    P := ALine[(L + R) shr 1];
    repeat
      while ALine[I] < P do Inc(I);
      while ALine[J] > P do Dec(J);
      if I <= J then
      begin
        Swap(ALine[I], ALine[J]);
        Inc(I);
        Dec(J);
      end;
    until I > J;
    if L < J then QSortLine(ALine, L, J);
    L := I;
  until I >= R;
end;

procedure SortLine(const ALine: TScanLine);
var
  L: Integer;
begin
  L := Length(ALine);
  Assert(not Odd(L));
  if L = 2 then TestSwap(ALine[0], ALine[1])
  else if L > 2 then QSortLine(ALine, 0, L - 1);
end;

procedure SortLines(const ScanLines: TScanLines);
var
  I: Integer;
begin
  for I := 0 to High(ScanLines) do SortLine(ScanLines[I]);
end;

procedure AddPolygon(const Points: TArrayOfPoint; BaseY: Integer;
  MaxX, MaxY: Integer; var ScanLines: TScanLines; SubSampleX: Boolean);
var
  I, X1, Y1, X2, Y2: Integer;
  Direction, PrevDirection: Integer; // up = 1 or down = -1

{}procedure AddEdgePoint(X, Y: Integer);
  var
    L: Integer;
  begin
    if (Y < 0) or (Y > MaxY) then Exit;
    X := Constrain(X, 0, MaxX);
    L := Length(ScanLines[Y - BaseY]);
    SetLength(ScanLines[Y - BaseY], L + 1);
    ScanLines[Y - BaseY][L] := X;
  end;

{}procedure DrawEdge(X1, Y1, X2, Y2: Integer);
  var
    X, Y, I: Integer;
    Dx, Dy, Sx, Sy: Integer;
    Delta: Integer;
  begin
    // this function 'renders' a line into the edge (ScanLines) buffer
    if Y2 = Y1 then Exit;

    Dx := X2 - X1;
    Dy := Y2 - Y1;

    if Dy > 0 then Sy := 1
    else
    begin
      Sy := -1;
      Dy := -Dy;
    end;
    if Dx > 0 then Sx := 1
    else
    begin
      Sx := -1;
      Dx := -Dx;
    end;
    Delta := (Dx mod Dy) shr 1;
    X := X1; Y := Y1;
    for I := 0 to Dy - 1 do
    begin
      AddEdgePoint(X, Y);
      Inc(Y, Sy);
      Inc(Delta, Dx);
      while Delta > Dy do
      begin
        Inc(X, Sx);
        Dec(Delta, Dy);
      end;
    end;
  end;
begin
  X1 := Points[0].X;
  Y1 := Points[0].Y;
  if SubSampleX then X1 := X1 shl 8;

  // find the last Y different from Y1 and assign it to Y0
  PrevDirection := 0;
  for I := High(Points) downto 1 do
  begin
    if Points[I].Y > Y1 then PrevDirection := -1
    else if Points[I].Y < Y1 then PrevDirection := 1
    else Continue;
    Break;
  end;
  Assert(PrevDirection <> 0);

  for I := 1 to High(Points) do
  begin
    X2 := Points[I].X;
    Y2 := Points[I].Y;
    if SubSampleX then X2 := X2 shl 8;
    if Y1 <> Y2 then
    begin
      DrawEdge(X1, Y1, X2, Y2);
      if Y2 > Y1 then Direction := 1 // up
      else Direction := -1; // down
      if Direction <> PrevDirection then
      begin
        AddEdgePoint(X1, Y1);
        PrevDirection := Direction;
      end;
    end;
    X1 := X2; Y1 := Y2;
  end;
  X2 := Points[0].X;
  Y2 := Points[0].Y;
  if SubSampleX then X2 := X2 shl 8;
  if Y1 <> Y2 then
  begin
    DrawEdge(X1, Y1, X2, Y2);
    if Y2 > Y1 then Direction := 1
    else Direction := -1;
    if Direction <> PrevDirection then AddEdgePoint(X1, Y1);
  end;
end;

procedure FillLines(Bitmap: TBitmap32; BaseY: Integer;
  const ScanLines: TScanLines; Color: TColor32);
var
  I, J, L: Integer;
  Left, Right: Integer;
  DoAlpha: Boolean;
begin
  DoAlpha := Color and $FF000000 <> $FF000000;
  for J := 0 to High(ScanLines) do
  begin
    L := Length(ScanLines[J]); // assuming length is even
    I := 0;
    while I < L do
    begin
      Left := ScanLines[J][I];
      Inc(I);
      Right := ScanLines[J][I];
      if Right > Left then
      begin
        if (Left and $FF) < $80 then Left := Left shr 8
        else Left := Left shr 8 + 1;
        if (Right and $FF) < $80 then Right := Right shr 8
        else Right := Right shr 8 + 1;
          if DoAlpha then Bitmap.DrawHorzLineT(Left, BaseY + J, Right, Color)
          else Bitmap.DrawHorzLine(Left, BaseY + J, Right, Color);
      end;
      Inc(I);
    end
  end;
end;

procedure FillLines2(Bitmap: TBitmap32; BaseY: Integer;
  const ScanLines: TScanLines; Color: TColor32);
var
  I, J, L, N: Integer;
  MinY, MaxY, Y, Top, Bottom: Integer;
  MinX, MaxX, X, Dx: Integer;
  Left, Right: Integer;
  Buffer: array of Integer;
  P: PColor32;
  DoAlpha: Boolean;
begin
  DoAlpha := Color and $FF000000 <> $FF000000;
  // find the range of Y screen coordinates
  MinY := BaseY shr 4;
  MaxY := (BaseY + Length(ScanLines) + 15) shr 4;

  Y := MinY;
  while Y < MaxY do
  begin
    Top := Y shl 4 - BaseY;
    Bottom := Top + 15;
    if Top < 0 then Top := 0;
    if Bottom > High(ScanLines) then Bottom := High(ScanLines);

    // find left and right edges of the screen scanline
    MinX := 1000000; MaxX := -1000000;
    for J := Top to Bottom do
    begin
      L := High(ScanLines[J]);
      Left := ScanLines[J][0] shr 4;
      Right := (ScanLines[J][L] + 15) shr 4;
      if Left < MinX then MinX := Left;
      if Right > MaxX then MaxX := Right;
    end;

    // allocate the buffer for a screen scanline
    SetLength(Buffer, MaxX - MinX + 2);
    FillLongword(Buffer[0], Length(Buffer), 0);

    // and fill it
    for J := Top to Bottom do
    begin
      I := 0;
      L := Length(ScanLines[J]);
      while I < L do
      begin
        // Left edge
        X := ScanLines[J][I];
        Dx := X and $0F;
        X := X shr 4 - MinX;
        Inc(Buffer[X], Dx xor $0F);
        Inc(Buffer[X + 1], Dx);
        Inc(I);

        // Right edge
        X := ScanLines[J][I];
        Dx := X and $0F;
        X := X shr 4 - MinX;
        Dec(Buffer[X], Dx xor $0F);
        Dec(Buffer[X + 1], Dx);
        Inc(I);
      end;
    end;

    // integrate the buffer
    N := 0;
    for I := 0 to High(Buffer) do
    begin
      Inc(N, Buffer[I]);
      Buffer[I] := N * 273 shr 8; // some bias
    end;

    // draw it to the screen
    P := Bitmap.PixelPtr[MinX, Y];
    try
      if DoAlpha then
        for I := 0 to High(Buffer) do
        begin
          BlendMemEx(Color, P^, Buffer[I]);
          Inc(P);
        end
      else
        for I := 0 to High(Buffer) do
        begin
          N := Buffer[I];
          if N = 255 then P^ := Color
          else BlendMemEx(Color, P^, Buffer[I]);
          Inc(P);
        end;
    finally
      EMMS;
    end;

    Inc(Y);
  end;
end;

procedure GetMinMax(const Points: TArrayOfPoint; out MinY, MaxY: Integer);
var
  I, Y: Integer;
begin
  MinY := 100000; MaxY := -100000;
  for I := 0 to High(Points) do
  begin
    Y := Points[I].Y;
    if Y < MinY then MinY := Y;
    if Y > MaxY then MaxY := Y;
  end;
end;

procedure PolygonTS(Bitmap: TBitmap32; const Points: TArrayOfPoint; Color: TColor32);
var
  L, MinY, MaxY: Integer;
  ScanLines: TScanLines;
begin
  L := Length(Points);
  if L < 3 then Exit;
  GetMinMax(Points, MinY, MaxY);
  MinY := Constrain(MinY, 0, Bitmap.Height);
  MaxY := Constrain(MaxY, 0, Bitmap.Height);
  if MinY >= MaxY then Exit;
  SetLength(ScanLines, MaxY - MinY + 1);
  AddPolygon(Points, MinY, Bitmap.Width shl 8 - 1, Bitmap.Height - 1,
    ScanLines, True);
  SortLines(ScanLines);
  Bitmap.Changing;
  Bitmap.BeginUpdate;
  try
    FillLines(Bitmap, MinY, ScanLines, Color);
  finally
    Bitmap.EndUpdate;
    Bitmap.Changed;
  end;
end;

procedure PolygonAS(Bitmap: TBitmap32; const Points: TArrayOfPoint; Color: TColor32);
var
  L, I, MinY, MaxY: Integer;
  ScanLines: TScanLines;
  PP: TArrayOfPoint;
begin
  L := Length(Points);
  if L < 3 then Exit;
  SetLength(PP, L);
  for I := 0 to L - 1 do
  begin
    PP[I].X := Points[I].X shl 4 + 7;
    PP[I].Y := Points[I].Y shl 4 + 7;
  end;
  GetMinMax(PP, MinY, MaxY);
  MinY := Constrain(MinY, 0, Bitmap.Height shl 4 - 1);
  MaxY := Constrain(MaxY, 0, Bitmap.Height shl 4 - 1);
  if MinY >= MaxY then Exit;
  SetLength(ScanLines, MaxY - MinY + 1);
  AddPolygon(PP, MinY, Bitmap.Width  shl 4 - 1, Bitmap.Height shl 4 - 1,
    ScanLines, False);
  SortLines(ScanLines);
  Bitmap.Changing;
  Bitmap.BeginUpdate;
  try
    FillLines2(Bitmap, MinY, ScanLines, Color);
  finally
    Bitmap.EndUpdate;
    Bitmap.Changed;
  end;
end;

procedure PolygonFS(Bitmap: TBitmap32; const Points: TArrayOfPointF; Color: TColor32);
var
  L, I, MinY, MaxY: Integer;
  ScanLines: TScanLines;
  PP: TArrayOfPoint;
begin
  L := Length(Points);
  if L < 3 then Exit;
  SetLength(PP, L);
  for I := 0 to L - 1 do
  begin
    PP[I].X := Round(Points[I].X * 16) + 7;
    PP[I].Y := Round(Points[I].Y * 16) + 7;
  end;
  GetMinMax(PP, MinY, MaxY);
  MinY := Constrain(MinY, 0, Bitmap.Height shl 4 - 1);
  MaxY := Constrain(MaxY, 0, Bitmap.Height shl 4 - 1);
  if MinY >= MaxY then Exit;
  SetLength(ScanLines, MaxY - MinY + 1);
  AddPolygon(PP, MinY, Bitmap.Width shl 4 - 1, Bitmap.Height shl 4 - 1,
    ScanLines, False);
  SortLines(ScanLines);
  Bitmap.Changing;
  Bitmap.BeginUpdate;
  try
    FillLines2(Bitmap, MinY, ScanLines, Color);
  finally
    Bitmap.EndUpdate;
    Bitmap.Changed;
  end;
end;

procedure PolyPolygonTS(Bitmap: TBitmap32; const Points: TArrayOfArrayOfPoint;
  Color: TColor32);
var
  N, L, min, max, MinY, MaxY: Integer;
  ScanLines: TScanLines;
begin
  MinY := 100000; MaxY := -100000;
  for N := 0 to High(Points) do
  begin
    L := Length(Points[N]);
    if L < 3 then Exit;
    GetMinMax(Points[N], min, max);
    if min < MinY then MinY := min;
    if max > MaxY then MaxY := max;
  end;
  MinY := Constrain(MinY, 0, Bitmap.Height - 1);
  MaxY := Constrain(MaxY, 0, Bitmap.Height - 1);
  if MinY >= MaxY then Exit;
  SetLength(ScanLines, MaxY - MinY + 1);

  for N := 0 to High(Points) do
  begin
    AddPolygon(Points[N], MinY, Bitmap.Width shl 8 - 1 , Bitmap.Height - 1,
      ScanLines, True);
  end;

  SortLines(ScanLines);

  Bitmap.Changing;
  FillLines(Bitmap, MinY, ScanLines, Color);
  Bitmap.Changed;
end;

procedure PolyPolygonAS(Bitmap: TBitmap32; const Points: TArrayOfArrayOfPoint;
  Color: TColor32);
var
  N, L, I, min, max, MinY, MaxY: Integer;
  ScanLines: TScanLines;
  PPP: TArrayOfArrayOfPoint;
begin
  MinY := 100000; MaxY := -100000;
  SetLength(PPP, Length(Points));
  for N := 0 to High(Points) do
  begin
    L := Length(Points);
    SetLength(PPP[N], Length(Points[N]));
    for I := 0 to L - 1 do
    begin
      PPP[N][I].X := Points[N][I].X shl 4 + 7;
      PPP[N][I].Y := Points[N][I].Y shl 4 + 7;
    end;
    if L < 3 then Continue;
    GetMinMax(PPP[N], min, max);
    if min < MinY then MinY := min;
    if max > MaxY then MaxY := max;
  end;
  MinY := Constrain(MinY, 0, Bitmap.Height shl 4 - 1);
  MaxY := Constrain(MaxY, 0, Bitmap.Height shl 4 - 1);
  if MinY >= MaxY then Exit;
  SetLength(ScanLines, MaxY - MinY + 1);

  for N := 0 to High(PPP) do
  begin
    AddPolygon(PPP[N], MinY, Bitmap.Width shl 4 - 1, Bitmap.Height shl 4 - 1,
      ScanLines, False);
  end;

  SortLines(ScanLines);

  Bitmap.Changing;
  FillLines2(Bitmap, MinY, ScanLines, Color);
  Bitmap.Changed;
end;

procedure PolyPolygonFS(Bitmap: TBitmap32; const Points: TArrayOfArrayOfPointF;
  Color: TColor32);
var
  N, L, I, min, max, MinY, MaxY: Integer;
  ScanLines: TScanLines;
  PPP: TArrayOfArrayOfPoint;
begin
  MinY := 100000; MaxY := -100000;
  SetLength(PPP, Length(Points));
  for N := 0 to High(Points) do
  begin
    L := Length(Points);
    SetLength(PPP[N], Length(Points[N]));
    for I := 0 to L - 1 do
    begin
      PPP[N][I].X := Round(Points[N][I].X * 16) + 7;
      PPP[N][I].Y := Round(Points[N][I].Y * 16) + 7;
    end;
    if L < 3 then Continue;
    GetMinMax(PPP[N], min, max);
    if min < MinY then MinY := min;
    if max > MaxY then MaxY := max;
  end;
  MinY := Constrain(MinY, 0, Bitmap.Height shl 4 - 1);
  MaxY := Constrain(MaxY, 0, Bitmap.Height shl 4 - 1);
  if MinY >= MaxY then Exit;
  SetLength(ScanLines, MaxY - MinY + 1);

  for N := 0 to High(PPP) do
  begin
    AddPolygon(PPP[N], MinY, Bitmap.Width shl 4 - 1, Bitmap.Height shl 4 - 1,
      ScanLines, False);
  end;

  SortLines(ScanLines);

  Bitmap.Changing;
  FillLines2(Bitmap, MinY, ScanLines, Color);
  Bitmap.Changed;
end;

end.
