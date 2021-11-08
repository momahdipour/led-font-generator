unit ByteMaps;

{**************************************************}
{  Graphics32 - Byte Maps                          }
{  A Library for Fast 32-Bit Bitmap Manipulation   }
{  Copyright (c) 2000 Alex Denissov                }
{  Version: 0.98                                   }
{  Date: 17-May-2000                               }
{  See Licence.txt for license information         }
{**************************************************}


interface

uses
  Windows, Classes, SysUtils, Controls, Graphics, Graphics32, Transform32;

type
  TArrayOfBytes = array of Byte;

  TConversionType = (ctRed, ctGreen, ctBlue, ctAlpha, ctUniformRGB, ctWeightedRGB);

  TByteMap = class(TCustomMap)
  private
    FBytes: TArrayOfBytes;
    FHeight: Integer;
    FWidth: Integer;
    function GetValue(X, Y: Integer): Byte;
    function GetValPtr(X, Y: Integer): PByte;
    procedure SetValue(X, Y: Integer; Value: Byte);
  protected
    procedure AssignTo(Dst: TPersistent); override;
  public
    destructor Destroy; override;
    procedure Assign(Source: TPersistent); override;
    function  Empty: Boolean; override;
    procedure Clear(FillValue: Byte);
    procedure ReadFrom(Source: TBitmap32; Conversion: TConversionType);
    procedure SetSize(NewWidth, NewHeight: Integer); override;
    procedure WriteTo(Dest: TBitmap32; Conversion: TConversionType); overload;
    procedure WriteTo(Dest: TBitmap32; const Palette: TPalette32); overload;
    property Bytes: TArrayOfBytes read FBytes;
    property ValPtr[X, Y: Integer]: PByte read GetValPtr;
    property Value[X, Y: Integer]: Byte read GetValue write SetValue; default;
  end;

implementation

uses Math;

{ TByteMap }

procedure TByteMap.Assign(Source: TPersistent);
begin
  Changing;
  BeginUpdate;
  try
    if Source is TByteMap then
    begin
      FWidth := TByteMap(Source).Width;
      FHeight := TByteMap(Source).Height;
      FBytes := Copy(TByteMap(Source).Bytes, 0, FWidth * FHeight);
    end
    else if Source is TBitmap32 then
      ReadFrom(TBitmap32(Source), ctWeightedRGB)
    else
      inherited;
  finally
    EndUpdate;
    Changed;
  end;
end;

procedure TByteMap.AssignTo(Dst: TPersistent);
begin
  if Dst is TBitmap32 then
    WriteTo(TBitmap32(Dst), ctUniformRGB)
  else
    inherited;
end;

procedure TByteMap.Clear(FillValue: Byte);
begin
  Changing;
  FillChar(Bytes[0], Width * Height, FillValue);
  Changed;
end;

destructor TByteMap.Destroy;
begin
  FBytes := nil;
  inherited;
end;

function TByteMap.Empty: Boolean;
begin
  Result := not Assigned(Bytes);
end;

function TByteMap.GetValPtr(X, Y: Integer): PByte;
begin
  Result := @Bytes[X + Y * Width];
end;

function TByteMap.GetValue(X, Y: Integer): Byte;
begin
  Result := Bytes[X + Y * Width];
end;

procedure TByteMap.ReadFrom(Source: TBitmap32; Conversion: TConversionType);
var
  W, H, I, N: Integer;
  SrcC: PColor32;
  SrcB, DstB: PByte;
  Value: TColor32;
begin
  Changing;
  BeginUpdate;
  try
    SetSize(Source.Width, Source.Height);
    if Empty then Exit;

    W := Source.Width;
    H := Source.Height;
    N := W * H - 1;
    SrcC := Source.PixelPtr[0, 0];
    SrcB := Pointer(SrcC);
    DstB := @Bytes[0];
    case Conversion of

      ctRed:
        begin
          Inc(SrcB, 2);
          for I := 0 to N do
          begin
            DstB^ := SrcB^;
            Inc(DstB);
            Inc(SrcB, 4);
          end;
        end;

      ctGreen:
        begin
          Inc(SrcB, 1);
          for I := 0 to N do
          begin
            DstB^ := SrcB^;
            Inc(DstB);
            Inc(SrcB, 4);
          end;
        end;

      ctBlue:
        begin
          for I := 0 to N do
          begin
            DstB^ := SrcB^;
            Inc(DstB);
            Inc(SrcB, 4);
          end;
        end;

      ctAlpha:
        begin
          Inc(SrcB, 3);
          for I := 0 to N do
          begin
            DstB^ := SrcB^;
            Inc(DstB);
            Inc(SrcB, 4);
          end;
        end;

      ctUniformRGB:
        begin
          for I := 0 to N do
          begin
            Value := SrcC^;
            Value := (Value and $00FF0000) shr 16 + (Value and $0000FF00) shr 8 +
              (Value and $000000FF);
            Value := Value div 3;
            DstB^ := Value;
            Inc(DstB);
            Inc(SrcC);
          end;
        end;

      ctWeightedRGB:
        begin
          for I := 0 to N do
          begin
            DstB^ := Intensity(SrcC^);
            Inc(DstB);
            Inc(SrcC);
          end;
        end;
    end;
  finally
    EndUpdate;
    Changed;
  end;
end;

procedure TByteMap.SetValue(X, Y: Integer; Value: Byte);
begin
  Bytes[X + Y * Width] := Value;
end;

procedure TByteMap.SetSize(NewWidth, NewHeight: Integer);
begin
  Changing;
  inherited;
  SetLength(FBytes, Width * Height);
  Changed;
end;

procedure TByteMap.WriteTo(Dest: TBitmap32; Conversion: TConversionType);
var
  W, H, I, N: Integer;
  DstC: PColor32;
  DstB, SrcB: PByte;
begin
  Dest.Changing;
  Dest.BeginUpdate;
  try
    Dest.SetSize(Width, Height);
    if Empty then Exit;

    W := Width;
    H := Height;
    N := W * H - 1;
    DstC := Dest.PixelPtr[0, 0];
    DstB := Pointer(DstC);
    SrcB := @Bytes[0];
    case Conversion of

      ctRed:
        begin
          Inc(DstB, 2);
          for I := 0 to N do
          begin
            DstB^ := SrcB^;
            Inc(DstB, 4);
            Inc(SrcB);
          end;
        end;

      ctGreen:
        begin
          Inc(DstB, 1);
          for I := 0 to N do
          begin
            DstB^ := SrcB^;
            Inc(DstB, 4);
            Inc(SrcB);
          end;
        end;

      ctBlue:
        begin
          for I := 0 to N do
          begin
            DstB^ := SrcB^;
            Inc(DstB, 4);
            Inc(SrcB);
          end;
        end;

      ctAlpha:
        begin
          Inc(DstB, 3);
          for I := 0 to N do
          begin
            DstB^ := SrcB^;
            Inc(DstB, 4);
            Inc(SrcB);
          end;
        end;

      ctUniformRGB, ctWeightedRGB:
        begin
          for I := 0 to N do
          begin
            DstC^ := Gray32(SrcB^);
            Inc(DstC);
            Inc(SrcB);
          end;
        end;
    end;
  finally
    Dest.EndUpdate;
    Dest.Changed;
  end;
end;

procedure TByteMap.WriteTo(Dest: TBitmap32; const Palette: TPalette32);
var
  W, H, I, N: Integer;
  DstC: PColor32;
  SrcB: PByte;
begin
  Dest.Changing;
  Dest.BeginUpdate;
  try
    Dest.SetSize(Width, Height);
    if Empty then Exit;

    W := Width;
    H := Height;
    N := W * H - 1;
    DstC := Dest.PixelPtr[0, 0];
    SrcB := @Bytes[0];

    for I := 0 to N do
    begin
      DstC^ := Palette[SrcB^];
      Inc(DstC);
      Inc(SrcB);
    end;
  finally
    Dest.EndUpdate;
    Dest.Changed;
  end;
end;

end.
