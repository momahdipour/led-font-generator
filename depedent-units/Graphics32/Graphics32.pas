unit Graphics32;

{**************************************************}
{  Graphics32 - Basic classes and TBitmap32        }
{  A Library for Fast 32-Bit Bitmap Manipulation   }
{  Copyright (c) 2000 Alex Denissov                }
{  Version: 0.98                                   }
{  Date: 17-May-2000                               }
{  See Licence.txt for license information         }
{**************************************************}


interface

uses
  Windows, Classes, SysUtils, Messages, Controls, Graphics;

type
  { New color types }
  TColor32 = type Longword;
  PColor32 = ^TColor32;
  TColor32Array = array [0..0] of TColor32;
  PColor32Array = ^TColor32Array;
  TArrayOfColor32 = array of TColor32;
  TPalette32 = array [Byte] of TColor32;
  PPalette32 = ^TPalette32;
  TArrayOfInteger = array of Integer;
  TArrayOfArrayOfInteger = array of TArrayOfInteger;
  TArrayOfPoint = array of TPoint;
  TArrayOfArrayOfPoint = array of TArrayOfPoint;
  TPointF = record
    X, Y: Single;
  end;
  TArrayOfPointF = array of TPointF;

  { TBitmap32 draw mode }
  TDrawMode = (dmOpaque, dmBlend);

  { stretch filter }
  TStretchFilter = (sfNearest, sfLinear, sfSpline);

const
  { Some predefined color constants }
  clBlack32               : TColor32 = $FF000000;
  clDimGray32             : TColor32 = $FF3F3F3F;
  clGray32                : TColor32 = $FF7F7F7F;
  clLightGray32           : TColor32 = $FFBFBFBF;
  clWhite32               : TColor32 = $FFFFFFFF;
  clMaroon32              : TColor32 = $FF7F0000;
  clGreen32               : TColor32 = $FF007F00;
  clOlive32               : TColor32 = $FF7F7F00;
  clNavy32                : TColor32 = $FF00007F;
  clPurple32              : TColor32 = $FF7F007F;
  clTeal32                : TColor32 = $FF007F7F;
  clRed32                 : TColor32 = $FFFF0000;
  clLime32                : TColor32 = $FF00FF00;
  clYellow32              : TColor32 = $FFFFFF00;
  clBlue32                : TColor32 = $FF0000FF;
  clFuchsia32             : TColor32 = $FFFF00FF;
  clAqua32                : TColor32 = $FF00FFFF;

  { Some semi-transparent color constants }
  clTrWhite32             : TColor32 = $7FFFFFFF;
  clTrBlack32             : TColor32 = $7F000000;
  clTrRed32               : TColor32 = $7FFF0000;
  clTrGreen32             : TColor32 = $7F00FF00;
  clTrBlue32              : TColor32 = $7F0000FF;

{ Color construction and conversion }
function Color32(WinColor: TColor): TColor32; overload;
function Color32(R, G, B: Byte; A: Byte = $FF): TColor32; overload;
function Color32(Index: Byte; var Palette: TPalette32): TColor32; overload;
function Gray32(Intensity: Byte; Alpha: Byte = $FF): TColor32;
function WinColor(Color32: TColor32): TColor;

{ Color component access }
function RedComponent(Color32: TColor32): Integer;
function GreenComponent(Color32: TColor32): Integer;
function BlueComponent(Color32: TColor32): Integer;
function AlphaComponent(Color32: TColor32): Integer;
function Intensity(Color32: TColor32): Integer;

{ Alpha adjustment }
function SetAlpha(Color32: TColor32; NewAlpha: Integer): TColor32;

{ Color space conversion }
function HSLtoRGB(H, S, L: Single): TColor32;
procedure RGBtoHSL(RGB: TColor32; out H, S, L : Single);

type
  { TThreadPersistent }
  { TThreadPersistent is an ancestor for TBitmap32 object. In addition to
    TPersistent methods, it provides thread-safe locking and change notification }
  TThreadPersistent = class(TPersistent)
  private
    FLock: TRTLCriticalSection;
    FLockCount: Integer;
    FUpdateCount: Integer;
    FOnChanging: TNotifyEvent;
    FOnChange: TNotifyEvent;
  protected
    property LockCount: Integer read FLockCount;
    property UpdateCount: Integer read FUpdateCount;
  public
    constructor Create; virtual;
    destructor Destroy; override;
    procedure Changing; virtual;
    procedure Changed; virtual;
    procedure BeginUpdate;
    procedure EndUpdate;
    procedure Lock;
    procedure Unlock;
    property OnChanging: TNotifyEvent read FOnChanging write FOnChanging;
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
  end;

  { TCustomMap }
  { An ancestor for bitmaps and similar 2D distributions wich have width and
    height properties }
  TCustomMap = class(TThreadPersistent)
  private
    FHeight: Integer;
    FWidth: Integer;
    procedure SetHeight(NewHeight: Integer);
    procedure SetWidth(NewWidth: Integer);
  public
    procedure Delete; virtual;
    function  Empty: Boolean; virtual;
    procedure SetSize(Source: TPersistent); overload;
    procedure SetSize(NewWidth, NewHeight: Integer); overload; virtual;
    property Height: Integer read FHeight write SetHeight;
    property Width: Integer read FWidth write SetWidth;
  end;

  { TBitmap32 }
  { This is the core of Graphics32 unit. The TBitmap32 class is responsible
    for storage of a bitmap, as well as for drawing in it }
  TBitmap32 = class(TCustomMap)
  private
    FBitmapInfo: TBitmapInfo;
    FBits: PColor32Array;
    FDrawMode: TDrawMode;
    FFont: TFont;
    FHandle: HBITMAP;
    FHDC: HDC;
    FMasterAlpha: Byte;
    FOuterColor: TColor32; // the value returned when accessing outer areas
    FPenColor: TColor32;
    FStippleCounter: Single;
    FStipplePattern: TArrayOfColor32;
    FStippleStep: Single;
    FStretchFilter: TStretchFilter;
    function  GetPixel(X, Y: Integer): TColor32;
    function  GetPixelS(X, Y: Integer): TColor32;
    function  GetPixelPtr(X, Y: Integer): PColor32;
    function  GetScanLine(Y: Integer): PColor32Array;
    procedure SetDrawMode(Value: TDrawMode);
    procedure SetFont(Value: TFont);
    procedure SetMasterAlpha(Value: Byte);
    procedure SetPixel(X, Y: Integer; Value: TColor32);
    procedure SetPixelS(X, Y: Integer; Value: TColor32);
    procedure SetStretchFilter(Value: TStretchFilter);
  protected
    FontHandle: HFont;
    RasterX, RasterY: Integer;
    RasterXF, RasterYF: Single;
    procedure AssignTo(Dst: TPersistent); override;
    function  ClipLine(var X0, Y0, X1, Y1: Integer): Boolean;
    function  ClipLineF(var X0, Y0, X1, Y1: Single; MinX, MaxX, MinY, MaxY: Single): Boolean;
    procedure FontChanged(Sender: TObject);
    procedure SET_T256(X, Y: Integer; C: TColor32);
    procedure SET_TS256(X, Y: Integer; C: TColor32);
    procedure ReadData(Stream: TStream); virtual;
    procedure WriteData(Stream: TStream); virtual;
    procedure DefineProperties(Filer: TFiler); override;
  public
    constructor Create; override;
    destructor Destroy; override;

    procedure Assign(Source: TPersistent); override;
    procedure SetSize(NewWidth, NewHeight: Integer); override;
    function  Empty: Boolean; override;
    procedure Clear; overload;
    procedure Clear(FillColor: TColor32); overload;
    procedure Delete; override;

    procedure LoadFromStream(Stream: TStream);
    procedure SaveToStream(Stream: TStream);
    procedure LoadFromFile(const FileName: string);
    procedure SaveToFile(const FileName: string);

    procedure ResetAlpha;

    procedure Draw(DstX, DstY: Integer; Src: TBitmap32); overload;
    procedure Draw(DstRect, SrcRect: TRect; Src: TBitmap32); overload;
    procedure Draw(DstRect, SrcRect: TRect; hSrc: HDC); overload;

    procedure DrawTo(Dst: TBitmap32); overload;
    procedure DrawTo(Dst: TBitmap32; DstX, DstY: Integer); overload;
    procedure DrawTo(Dst: TBitmap32; DstRect: TRect); overload;
    procedure DrawTo(Dst: TBitmap32; DstRect, SrcRect: TRect); overload;
    procedure DrawTo(hDst: HDC; DstX, DstY: Integer); overload;
    procedure DrawTo(hDst: HDC; DstRect, SrcRect: TRect); overload;

    function  GetPixelB(X, Y: Integer): TColor32;
    procedure SetPixelT(X, Y: Integer; Value: TColor32); overload;
    procedure SetPixelT(var Ptr: PColor32; Value: TColor32); overload;
    procedure SetPixelTS(X, Y: Integer; Value: TColor32);
    procedure SetPixelF(X, Y: Single; Value: TColor32);
    procedure SetPixelFS(X, Y: Single; Value: TColor32);

    procedure SetStipple(NewStipple: TArrayOfColor32); overload;
    procedure SetStipple(NewStipple: array of TColor32); overload;
    procedure SetStippleStep(Value: Single);
    procedure ResetStippleCounter;
    function  GetStippleColor: TColor32;

    procedure DrawHorzLine(X1, Y, X2: Integer; Value: TColor32);
    procedure DrawHorzLineS(X1, Y, X2: Integer; Value: TColor32);
    procedure DrawHorzLineT(X1, Y, X2: Integer; Value: TColor32);
    procedure DrawHorzLineTS(X1, Y, X2: Integer; Value: TColor32);
    procedure DrawHorzLineTSP(X1, Y, X2: Integer);

    procedure DrawVertLine(X, Y1, Y2: Integer; Value: TColor32);
    procedure DrawVertLineS(X, Y1, Y2: Integer; Value: TColor32);
    procedure DrawVertLineT(X, Y1, Y2: Integer; Value: TColor32);
    procedure DrawVertLineTS(X, Y1, Y2: Integer; Value: TColor32);
    procedure DrawVertLineTSP(X, Y1, Y2: Integer);

    procedure DrawLine(X1, Y1, X2, Y2: Integer; Value: TColor32; L: Boolean = False);
    procedure DrawLineS(X1, Y1, X2, Y2: Integer; Value: TColor32; L: Boolean = False);
    procedure DrawLineT(X1, Y1, X2, Y2: Integer; Value: TColor32; L: Boolean = False);
    procedure DrawLineTS(X1, Y1, X2, Y2: Integer; Value: TColor32; L: Boolean = False);
    procedure DrawLineA(X1, Y1, X2, Y2: Integer; Value: TColor32; L: Boolean = False);
    procedure DrawLineAS(X1, Y1, X2, Y2: Integer; Value: TColor32; L: Boolean = False);
    procedure DrawLineF(X1, Y1, X2, Y2: Single; Value: TColor32; L: Boolean = False);
    procedure DrawLineFS(X1, Y1, X2, Y2: Single; Value: TColor32; L: Boolean = False);
    procedure DrawLineFP(X1, Y1, X2, Y2: Single; L: Boolean = False);
    procedure DrawLineFSP(X1, Y1, X2, Y2: Single; L: Boolean = False);

    procedure MoveTo(X, Y: Integer);
    procedure LineToS(X, Y: Integer);
    procedure LineToTS(X, Y: Integer);
    procedure LineToAS(X, Y: Integer);
    procedure MoveToF(X, Y: Single);
    procedure LineToFS(X, Y: Single);

    procedure FillRect(X1, Y1, X2, Y2: Integer; Value: TColor32);
    procedure FillRectS(X1, Y1, X2, Y2: Integer; Value: TColor32);
    procedure FillRectT(X1, Y1, X2, Y2: Integer; Value: TColor32);
    procedure FillRectTS(X1, Y1, X2, Y2: Integer; Value: TColor32);

    procedure FrameRectS(X1, Y1, X2, Y2: Integer; Value: TColor32);
    procedure FrameRectTS(X1, Y1, X2, Y2: Integer; Value: TColor32); overload;
    procedure FrameRectTSP(X1, Y1, X2, Y2: Integer); overload;
    procedure RaiseRectTS(X1, Y1, X2, Y2: Integer; Contrast: Integer);

    procedure UpdateFont;
    procedure TextOut(X, Y: Integer; const Text: widestring); overload;
    procedure TextOut(X, Y: Integer; const ClipRect: TRect; const Text: widestring); overload;
    procedure TextOut(ClipRect: TRect; const Flags: Cardinal; const Text: widestring); overload;
    function  TextExtent(const Text: Widestring): TSize;
    function  TextHeight(const Text: widestring): Integer;
    function  TextWidth(const Text: widestring): Integer;
    procedure RenderText(X, Y: Integer; const Text: widestring; AALevel: Integer; Color: TColor32);

    property BitmapHandle: HBITMAP read FHandle;
    property BitmapInfo: TBitmapInfo read FBitmapInfo;
    property Bits: PColor32Array read FBits;
    property Font: TFont read FFont write SetFont;
    property Handle: HDC read FHDC;
    property PenColor: TColor32 read FPenColor write FPenColor;
    property Pixel[X, Y: Integer]: TColor32 read GetPixel write SetPixel; default;
    property PixelS[X, Y: Integer]: TColor32 read GetPixelS write SetPixelS;
    property PixelPtr[X, Y: Integer]: PColor32 read GetPixelPtr;
    property ScanLine[Y: Integer]: PColor32Array read GetScanLine;
  published
    property DrawMode: TDrawMode read FDrawMode write SetDrawMode default dmOpaque;
    property MasterAlpha: Byte read FMasterAlpha write SetMasterAlpha default $FF;
    property OuterColor: TColor32 read FOuterColor write FOuterColor default 0;
    property StretchFilter: TStretchFilter read FStretchFilter write SetStretchFilter default sfNearest;
    property OnChanging;
    property OnChange;
  end;

{ Gamma bias for line/pixel antialiasing/shape correction }
var
  GAMMA_TABLE: array [Byte] of Byte;

procedure SetGamma(Gamma: Single = 0.7);


implementation

{$R-}

uses Blend32, Transform32, LowLevel32, Filters32, Math, TypInfo, Clipbrd;

const
  { Component masks }
  _R   : TColor32 = $00FF0000;
  _G   : TColor32 = $0000FF00;
  _B   : TColor32 = $000000FF;
  _RGB : TColor32 = $00FFFFFF;

var
  CounterLock: TRTLCriticalSection;
  StockFont: HFONT;

type
  TGraphicAccess = class(TGraphic);

{ Color construction and conversion functions }

function Color32(WinColor: TColor): TColor32; overload;
begin
  WinColor := ColorToRGB(WinColor);
  Result := ColorSwap(WinColor);
end;

function Color32(R, G, B: Byte; A: Byte = $FF): TColor32; overload;
begin
  Result := A shl 24 + R shl 16 + G shl 8 + B;
end;

function Color32(Index: Byte; var Palette: TPalette32): TColor32; overload;
begin
  Result := Palette[Index];
end;

function Gray32(Intensity: Byte; Alpha: Byte = $FF): TColor32;
begin
  Result := TColor32(Alpha) shl 24 + TColor32(Intensity) shl 16 +
    TColor32(Intensity) shl 8 + TColor32(Intensity);
end;

function WinColor(Color32: TColor32): TColor;
begin
  // the alpha channel byte is set to zero
  Result := (Color32 and _R shr 16) or (Color32 and _G) or
    (Color32 and _B shl 16);
end;

{ Component access }

function RedComponent(Color32: TColor32): Integer;
begin
  Result := Color32 and _R shr 16;
end;

function GreenComponent(Color32: TColor32): Integer;
begin
  Result := Color32 and _G shr 8;
end;

function BlueComponent(Color32: TColor32): Integer;
begin
  Result := Color32 and _B;
end;

function AlphaComponent(Color32: TColor32): Integer;
begin
  Result := Color32 shr 24;
end;

function Intensity(Color32: TColor32): Integer;
asm
// input:  RGB components
// outut: R * 61 + G * 174 + B * 20
        MOV     ECX,EAX
        AND     EAX,$00FF00FF      // EAX <-   0 R 0 B
        IMUL    EAX,$003D0014
        AND     ECX,$0000FF00      // ECX <-   0 0 G 0
        IMUL    ECX,$0000AE00
        MOV     EDX,EAX
        SHR     ECX,8
        SHR     EDX,16
        ADD     EAX,ECX
        ADD     EAX,EDX
        SHR     EAX,8
end;

{ Alpha adjustment }

function SetAlpha(Color32: TColor32; NewAlpha: Integer): TColor32;
begin
   Result := (Color32 and _RGB) or (TColor32(NewAlpha) shl 24);
end;

{ Color space conversions }

function HSLtoRGB(H, S, L: Single): TColor32;
var
  M1, M2: Single;
  R, G, B: Byte;

  function HueToColourValue(Hue: Single): Byte;
  var
    V: Double;
  begin
    Hue := Hue - Floor(Hue);

    if 6 * Hue < 1 then V := M1 + (M2 - M1) * Hue * 6
    else if 2 * Hue < 1 then V := M2
    else if 3 * Hue < 2 then V := M1 + (M2 - M1) * (2 / 3 - Hue) * 6
    else V := M1;
    Result := Round(255 * V);
  end;
begin
  if S = 0 then
  begin
    R := Round(255 * L);
    G := R;
    B := R;
  end
  else
  begin
    if L <= 0.5 then M2 := L * (1 + S)
    else M2 := L + S - L * S;
    M1 := 2 * L - M2;
    R := HueToColourValue(H - 1 / 3);
    G := HueToColourValue(H);
    B := HueToColourValue(H + 1 / 3)
  end;
  Result := Color32(R, G, B, 255);
end;

procedure RGBtoHSL(RGB: TColor32; out H, S, L : Single);
var
  R, G, B, D, Cmax, Cmin: Single;
begin
  R := RedComponent(RGB) / 255;
  G := GreenComponent(RGB) / 255;
  B := BlueComponent(RGB) / 255;
  Cmax := Max(R, Max(G, B));
  Cmin := Min(R, Min(G, B));
  L := (Cmax + Cmin) / 2;

  if Cmax = Cmin then
  begin
    H := 0;
    S := 0
  end
  else
  begin
    D := Cmax - Cmin;
    if L < 0.5 then S := D / (Cmax + Cmin)
    else S := D / (2 - Cmax - Cmin);
    if R = Cmax then H := (G - B) / D
    else
      if G = Cmax then H  := 2 + (B - R) /D
      else H := 4 + (R - G) / D;
    H := H / 6;
    if H < 0 then H := H + 1
  end;
end;


{ TThreadPersistent }

constructor TThreadPersistent.Create;
begin
  InitializeCriticalSection(FLock);
end;

destructor TThreadPersistent.Destroy;
begin
  DeleteCriticalSection(FLock);
  inherited;
end;

procedure TThreadPersistent.BeginUpdate;
begin
  Inc(FUpdateCount);
end;

procedure TThreadPersistent.Changing;
begin
  if (FUpdateCount = 0) and Assigned(FOnChanging) then FOnChanging(Self);
end;

procedure TThreadPersistent.Changed;
begin
  if (FUpdateCount = 0) and Assigned(FOnChange) then FOnChange(Self);
end;

procedure TThreadPersistent.EndUpdate;
begin
  Assert(FUpdateCount > 0, 'Unpaired TThreadPersistent.EndUpdate');
  Dec(FUpdateCount);
end;

procedure TThreadPersistent.Lock;
begin
  EnterCriticalSection(CounterLock);
  Inc(FLockCount);
  LeaveCriticalSection(CounterLock);
  EnterCriticalSection(FLock);
end;

procedure TThreadPersistent.Unlock;
begin
  LeaveCriticalSection(FLock);
  EnterCriticalSection(CounterLock);
  Dec(FLockCount);
  LeaveCriticalSection(CounterLock);
end;


{ TCustomMap }

procedure TCustomMap.Delete;
begin
  SetSize(0, 0);
end;

function TCustomMap.Empty: Boolean;
begin
  Result := (Width = 0) or (Height = 0);
end;

procedure TCustomMap.SetHeight(NewHeight: Integer);
begin
  SetSize(Width, NewHeight);
end;

procedure TCustomMap.SetSize(NewWidth, NewHeight: Integer);
begin
  FWidth := NewWidth;
  FHeight := NewHeight;
end;

procedure TCustomMap.SetSize(Source: TPersistent);
begin
  if Source is TCustomMap then
    SetSize(TCustomMap(Source).Width, TCustomMap(Source).Height)
  else if Source is TGraphic then
    SetSize(TGraphic(Source).Width, TGraphic(Source).Height)
  else if Source is TControl then
    SetSize(TControl(Source).Width, TControl(Source).Height)
  else if Source = nil then
    SetSize(0, 0)
  else
    raise Exception.Create('Can''t set size from ''' + Source.ClassName + '''');
end;

procedure TCustomMap.SetWidth(NewWidth: Integer);
begin
  SetSize(NewWidth, Height);
end;



{ TBitmap32 }

constructor TBitmap32.Create;
begin
  inherited;
  FillChar(FBitmapInfo, SizeOf(TBitmapInfo), 0);
  with FBitmapInfo.bmiHeader do
  begin
    biSize := SizeOf(TBitmapInfoHeader);
    biPlanes := 1;
    biBitCount := 32;
    biCompression := BI_RGB;
  end;
  FOuterColor := $00000000;  // by default as full transparency black
  FFont := TFont.Create;
  FFont.OnChange := FontChanged;
  FFont.OwnerCriticalSection := @FLock;
  FMasterAlpha := $FF;
  FPenColor := clWhite32;
  FStippleStep := 1;
end;

destructor TBitmap32.Destroy;
begin
  Lock;
  try
    FFont.Free;
    SetSize(0, 0);
  finally
    Unlock;
  end;
  inherited;
end;

procedure TBitmap32.SetSize(NewWidth, NewHeight: Integer);
begin
  if NewWidth <= 0 then NewWidth := 0;
  if NewHeight <= 0 then NewHeight := 0;
  if (NewWidth = Width) and (NewHeight = Height) then Exit;

  Changing;

  try
    if FHDC <> 0 then DeleteDC(FHDC);
    if FHandle <> 0 then DeleteObject(FHandle);
    FBits := nil;
    FWidth := 0;
    FHeight := 0;
    if (NewWidth > 0) and (NewHeight > 0) then
    begin
      with FBitmapInfo.bmiHeader do
      begin
        biWidth := NewWidth;
        biHeight := -NewHeight;
      end;
      FHandle := CreateDIBSection(0, FBitmapInfo, DIB_RGB_COLORS, Pointer(FBits), 0, 0);
      if FBits = nil then raise Exception.Create('Can''t allocate the DIB handle');

      FHDC := CreateCompatibleDC(0);
      if FHDC = 0 then
      begin
        DeleteObject(FHandle);
        FHandle := 0;
        FBits := nil;
        raise Exception.Create('Can''t create compatible DC');
      end;

      if SelectObject(FHDC, FHandle) = 0 then
      begin
        DeleteDC(FHDC);
        DeleteObject(FHandle);
        FHDC := 0;
        FHandle := 0;
        FBits := nil;
        raise Exception.Create('Can''t select an object into DC');
      end;

      FWidth := NewWidth;
      FHeight := NewHeight;
    end;

  finally
    Changed;
  end;
end;

function TBitmap32.Empty: Boolean;
begin
  Result := (FHandle = 0);
end;

procedure TBitmap32.Clear;
begin
  Clear(clBlack32);
end;

procedure TBitmap32.Clear(FillColor: TColor32);
begin
  if Empty then Exit;
  Changing;
  FillLongword(Bits[0], Width * Height, FillColor);
  Changed;
end;

procedure TBitmap32.Delete;
begin
  Changing;
  SetSize(0, 0);
  Changed;
end;

procedure TBitmap32.Assign(Source: TPersistent);
var
  Canvas: TCanvas;
  Picture: TPicture;

  procedure AssignFromBitmap(SrcBmp: TBitmap);
  begin
    SetSize(SrcBmp.Width, SrcBmp.Height);
    if Empty then Exit;
    BitBlt(Handle, 0, 0, Width, Height, SrcBmp.Canvas.Handle, 0, 0, SRCCOPY);
    ResetAlpha;
  end;
begin
  Changing;
  BeginUpdate;
  try
    if Source = nil then
    begin
      SetSize(0, 0);
      Exit;
    end
    else if Source is TBitmap32 then
    begin
      SetSize(TBitmap32(Source).Width, TBitmap32(Source).Height);
      Move(TBitmap32(Source).Bits[0], Bits[0], Width * Height * 4);
      Exit;
    end
    else if Source is TBitmap then
    begin
      AssignFromBitmap(TBitmap(Source));
      Exit;
    end
    else if Source is TPicture then
    begin
      with TPicture(Source) do
      begin
        if TPicture(Source).Graphic is TBitmap then
          AssignFromBitmap(TBitmap(TPicture(Source).Graphic))
        else
        begin
          // icons, metafiles etc...
          SetSize(TPicture(Source).Graphic.Width, TPicture(Source).Graphic.Height);
          if Empty then Exit;
          Canvas := TCanvas.Create;
          try
            Canvas.Handle := Self.Handle;
            TGraphicAccess(Graphic).Draw(Canvas, Rect(0, 0, Width, Height));
            ResetAlpha;
          finally
            Canvas.Free;
          end;
        end;
      end;
      Exit;
    end
    else if Source is TClipboard then
    begin
      Picture := TPicture.Create;
      try
        Picture.Assign(TClipboard(Source));
        SetSize(Picture.Width, Picture.Height);
        if Empty then Exit;
        Canvas := TCanvas.Create;
        try
          Canvas.Handle := Self.Handle;
          TGraphicAccess(Picture.Graphic).Draw(Canvas, Rect(0, 0, Width, Height));
          ResetAlpha;
        finally
          Canvas.Free;
        end;
      finally
        Picture.Free;
      end;
      Exit;
    end
    else
      inherited; // default handler
  finally;
    EndUpdate;
    Changed;
  end;
end;

procedure TBitmap32.AssignTo(Dst: TPersistent);
var
  Bmp: TBitmap;
begin
  if Dst is TPicture then
  begin
    Bmp := TPicture(Dst).Bitmap;
    Bmp.HandleType := bmDIB;
    Bmp.PixelFormat := pf32Bit;
    Bmp.Width := Width;
    Bmp.Height := Height;
    DrawTo(Bmp.Canvas.Handle, 0, 0);
  end
  else if Dst is TBitmap then
  begin
    Bmp := TBitmap(Dst);
    Bmp.HandleType := bmDIB;
    Bmp.PixelFormat := pf32Bit;
    Bmp.Width := Width;
    Bmp.Height := Height;
    DrawTo(Bmp.Canvas.Handle, 0, 0);
  end
  else if Dst is TClipboard then
  begin
    Bmp := TBitmap.Create;
    try
      Bmp.HandleType := bmDIB;
      Bmp.PixelFormat := pf32Bit;
      Bmp.Width := Width;
      Bmp.Height := Height;
      DrawTo(Bmp.Canvas.Handle, 0, 0);
      TClipboard(Dst).Assign(Bmp);
    finally
      Bmp.Free;
    end;
  end
  else
    inherited;
end;

procedure TBitmap32.SetPixel(X, Y: Integer; Value: TColor32);
begin
  Bits[X + Y * Width] := Value;
end;

procedure TBitmap32.SetPixelS(X, Y: Integer; Value: TColor32);
begin
  if (X >= 0) and (X < Width) and (Y >= 0) and (Y < Height) then
    Bits[X + Y * Width] := Value;
end;

function TBitmap32.GetScanLine(Y: Integer): PColor32Array;
begin
  Result := @Bits[Y * FWidth];
end;

function TBitmap32.GetPixel(X, Y: Integer): TColor32;
begin
  Result := Bits[X + Y * Width];
end;

function TBitmap32.GetPixelS(X, Y: Integer): TColor32;
begin
  if (X >= 0) and (X < Width) and (Y >= 0) and (Y < Height) then
    Result := Bits[X + Y * Width]
  else
    Result := OuterColor;
end;

function TBitmap32.GetPixelPtr(X, Y: Integer): PColor32;
begin
  Result := @Bits[X + Y * Width];
end;

procedure TBitmap32.Draw(DstX, DstY: Integer; Src: TBitmap32);
begin
  Changing;
  if Assigned(Src) then Src.DrawTo(Self, DstX, DstY);
  Changed;
end;

procedure TBitmap32.Draw(DstRect, SrcRect: TRect; Src: TBitmap32);
begin
  Changing;
  if Assigned(Src) then Src.DrawTo(Self, DstRect, SrcRect);
  Changed;
end;

procedure TBitmap32.Draw(DstRect, SrcRect: TRect; hSrc: HDC);
begin
  if Empty then Exit;
  Changing;
  StretchBlt(Handle, DstRect.Left, DstRect.Top, DstRect.Right - DstRect.Left,
    DstRect.Bottom - DstRect.Top, hSrc, SrcRect.Left, SrcRect.Top,
    SrcRect.Right - SrcRect.Left, SrcRect.Bottom - SrcRect.Top, SRCCOPY);
  Changed;
end;

procedure TBitmap32.DrawTo(Dst: TBitmap32);
begin
  if Empty or Dst.Empty then Exit;
  Dst.Changing;
  BlockTransfer(Dst, 0, 0, Self, Rect(0, 0, Width, Height), DrawMode);
  Dst.Changed;
end;

procedure TBitmap32.DrawTo(Dst: TBitmap32; DstX, DstY: Integer);
begin
  if Empty or Dst.Empty then Exit;
  Dst.Changing;
  BlockTransfer(Dst, DstX, DstY, Self, Rect(0, 0, Width, Height), DrawMode);
  Dst.Changed;
end;

procedure TBitmap32.DrawTo(Dst: TBitmap32; DstRect: TRect);
begin
  if Empty or Dst.Empty then Exit;
  Dst.Changing;
  StretchTransfer(Dst, DstRect, Self, Rect(0, 0, Width, Height), StretchFilter, DrawMode);
  Dst.Changed;
end;

procedure TBitmap32.DrawTo(Dst: TBitmap32; DstRect, SrcRect: TRect);
begin
  if Empty or Dst.Empty then Exit;
  Dst.Changing;
  StretchTransfer(Dst, DstRect, Self, SrcRect, StretchFilter, DrawMode);
  Dst.Changed;
end;

procedure TBitmap32.DrawTo(hDst: HDC; DstX, DstY: Integer);
begin
  if Empty then Exit;
  BitBlt(hDst, DstX, DstY, Width, Height, Handle, 0, 0, SRCCOPY);
end;

procedure TBitmap32.DrawTo(hDst: HDC; DstRect, SrcRect: TRect);
begin
  if Empty then Exit;
  StretchDIBits(hDst,
    DstRect.Left, DstRect.Top, DstRect.Right - DstRect.Left, DstRect.Bottom - DstRect.Top,
    SrcRect.Left, SrcRect.Top, SrcRect.Right - SrcRect.Left, SrcRect.Bottom - SrcRect.Top,
    Bits, FBitmapInfo, DIB_RGB_COLORS, SRCCOPY);
end;

procedure TBitmap32.ResetAlpha;
var
  I: Integer;
  P: PByte;
begin
  Changing;
  P := Pointer(FBits);
  Inc(P, 3);
  for I := 0 to Width * Height - 1 do
  begin
    P^ := $FF;
    Inc(P, 4)
  end;
  Changed;
end;

function TBitmap32.GetPixelB(X, Y: Integer): TColor32;
begin
  // this function should never be used on empty bitmaps !!!
  if X < 0 then X := 0
  else if X >= Width then X := Width - 1;
  if Y < 0 then Y := 0
  else if Y >= Height then Y := Height - 1;
  Result := Bits[X + Y * Width];
end;

procedure TBitmap32.SetPixelT(X, Y: Integer; Value: TColor32);
begin
  BlendMem(Value, Bits[X + Y * Width]);
  EMMS;
end;

procedure TBitmap32.SetPixelT(var Ptr: PColor32; Value: TColor32);
begin
  BlendMem(Value, Ptr^);
  EMMS;
  Inc(Ptr);
end;

procedure TBitmap32.SetPixelTS(X, Y: Integer; Value: TColor32);
begin
  if (X >= 0) and (X < Width) and (Y >= 0) and (Y < Width) then
  begin
    BlendMem(Value, Bits[X + Y * Width]);
    EMMS;
  end;
end;

procedure TBitmap32.SET_T256(X, Y: Integer; C: TColor32);
var
  flrx, flry, celx, cely: Longword;
  P: PColor32;
  A: TColor32;
begin
  A := C shr 24;  // opacity

  flrx := X and $FF;
  flry := Y and $FF;

  X := SAR_8(X);
  Y := SAR_8(Y);

  celx := A * GAMMA_TABLE[flrx xor 255];
  cely := GAMMA_TABLE[flry xor 255];
  flrx := A * GAMMA_TABLE[flrx];
  flry := GAMMA_TABLE[flry];

  P := @FBits[X + Y * FWidth];

  CombineMem(C, P^, celx * cely shr 16);
  Inc(P);
  CombineMem(C, P^, flrx * cely shr 16);
  Inc(P, FWidth);
  CombineMem(C, P^, flrx * flry shr 16);
  Dec(P);
  CombineMem(C, P^, celx * flry shr 16);
end;

procedure TBitmap32.SET_TS256(X, Y: Integer; C: TColor32);
var
  flrx, flry, celx, cely: Longword;
  P: PColor32;
  A: TColor32;
begin
  if (X < -256) or (Y < -256) then Exit;

  flrx := X and $FF;
  flry := Y and $FF;

  X := SAR_8(X);
  Y := SAR_8(Y);

  if (X >= FWidth) or (Y >= FHeight) then Exit;

  A := C shr 24;  // opacity

  celx := A * GAMMA_TABLE[flrx xor 255];
  cely := GAMMA_TABLE[flry xor 255];
  flrx := A * GAMMA_TABLE[flrx];
  flry := GAMMA_TABLE[flry];

  P := @FBits[X + Y * FWidth];

  if (X >= 0) and (Y >= 0) and (X < FWidth - 1) and (Height < FHeight - 1) then
  begin
    CombineMem(C, P^, celx * cely shr 16);
    Inc(P);
    CombineMem(C, P^, flrx * cely shr 16);
    Inc(P, FWidth);
    CombineMem(C, P^, flrx * flry shr 16);
    Dec(P);
    CombineMem(C, P^, celx * flry shr 16);
  end
  else
  begin
    if (X >= 0) and (Y >= 0) then CombineMem(C, P^, celx * cely shr 16);
    Inc(P);
    if (X < FWidth - 1) and (Y >= 0) then CombineMem(C, P^, flrx * cely shr 16);
    Inc(P, FWidth);
    if (X < FWidth - 1) and (Y < FHeight - 1) then CombineMem(C, P^, flrx * flry shr 16);
    Dec(P);
    if (X >= 0) and (Y < FHeight - 1) then CombineMem(C, P^, celx * flry shr 16);
  end;
end;

procedure TBitmap32.SetPixelF(X, Y: Single; Value: TColor32);
begin
  SET_T256(Round(X * 256), Round(Y * 256), Value);
  EMMS;
end;

procedure TBitmap32.SetPixelFS(X, Y: Single; Value: TColor32);
begin
  SET_TS256(Round(X * 256), Round(Y * 256), Value);
  EMMS;
end;

procedure TBitmap32.SetStipple(NewStipple: TArrayOfColor32);
begin
  FStippleCounter := 0;
  FStipplePattern := Copy(NewStipple, 0, Length(NewStipple));
end;

procedure TBitmap32.SetStipple(NewStipple: array of TColor32);
var
  L: Integer;
begin
  FStippleCounter := 0;
  L := High(NewStipple) - Low(NewStipple) + 1;
  SetLength(FStipplePattern, L);
  Move(NewStipple[Low(NewStipple)], FStipplePattern[0], L * SizeOf(TColor32));
end;

function TBitmap32.GetStippleColor: TColor32;
var
  L: Integer;
  NextIndex, PrevIndex: Integer;
  PrevWeight: Integer;
begin
  L := Length(FStipplePattern);
  if L = 0 then
  begin
    // no pattern defined, just return something and exit
    Result := clBlack32;
    Exit;
  end;
  while FStippleCounter >= L do FStippleCounter := FStippleCounter - L;
  while FStippleCounter < 0 do FStippleCounter := FStippleCounter + L;
  PrevIndex := Round(FStippleCounter - 0.5);
  PrevWeight := 255 - Round(255 * (FStippleCounter - PrevIndex));
  if PrevIndex < 0 then FStippleCounter := L - 1;
  NextIndex := PrevIndex + 1;
  if NextIndex >= L then NextIndex := 0;
  if PrevWeight = 255 then Result := FStipplePattern[PrevIndex]
  else
  begin
    Result := CombineReg(
      FStipplePattern[PrevIndex],
      FStipplePattern[NextIndex],
      PrevWeight);
    EMMS;
  end;
  FStippleCounter := FStippleCounter + FStippleStep;
end;

procedure TBitmap32.SetStippleStep(Value: Single);
begin
  FStippleStep := Value;
end;

procedure TBitmap32.ResetStippleCounter;
begin
  FStippleCounter := 0;
end;

procedure TBitmap32.DrawHorzLine(X1, Y, X2: Integer; Value: TColor32);
begin
  FillLongword(Bits[X1 + Y * Width], X2 - X1 + 1, Value);
end;

procedure TBitmap32.DrawHorzLineS(X1, Y, X2: Integer; Value: TColor32);
begin
  if (Y >= 0) and (Y < Height) and TestClip(X1, X2, Width) then
    DrawHorzLine(X1, Y, X2, Value);
end;

procedure TBitmap32.DrawHorzLineT(X1, Y, X2: Integer; Value: TColor32);
var
  i: Integer;
  P: PColor32;
begin
  if X2 < X1 then Exit;
  P := PixelPtr[X1, Y];
  for i := X1 to X2 do
  begin
    BlendMem(Value, P^);
    Inc(P);
  end;
  EMMS;
end;

procedure TBitmap32.DrawHorzLineTS(X1, Y, X2: Integer; Value: TColor32);
begin
  if (Y >= 0) and (Y < Height) and TestClip(X1, X2, Width) then
    DrawHorzLineT(X1, Y, X2, Value);
end;

procedure TBitmap32.DrawHorzLineTSP(X1, Y, X2: Integer);
var
  I: Integer;
begin
  if Empty then Exit;
  if (Y >= 0) and (Y < Height) then
  begin
    if ((X1 < 0) and (X2 < 0)) or ((X1 >= Width) and (X2 >= Width)) then
      Exit;
    if X1 < 0 then X1 := 0
    else if X1 >= Width then X1 := Width - 1;
    if X2 < 0 then X2 := 0
    else if X2 >= Width then X2 := Width - 1;

    if X2 >= X1 then
      for I := X1 to X2 do SetPixelT(I, Y, GetStippleColor)
    else
      for I := X2 downto X1 do SetPixelT(I, Y, GetStippleColor);
  end;
end;

procedure TBitmap32.DrawVertLine(X, Y1, Y2: Integer; Value: TColor32);
var
  i: Integer;
  P: PColor32;
begin
  if Y2 < Y1 then Exit;
  P := PixelPtr[X, Y1];
  for i := 0 to Y2 - Y1 do
  begin
    P^ := Value;
    Inc(P, Width);
  end;
end;

procedure TBitmap32.DrawVertLineS(X, Y1, Y2: Integer; Value: TColor32);
begin
  if (X >= 0) and (X < Width) and TestClip(Y1, Y2, Height) then
    DrawVertLine(X, Y1, Y2, Value);
end;

procedure TBitmap32.DrawVertLineT(X, Y1, Y2: Integer; Value: TColor32);
var
  i: Integer;
  P: PColor32;
begin
  P := PixelPtr[X, Y1];
  for i := Y1 to Y2 do
  begin
    BlendMem(Value, P^);
    Inc(P, Width);
  end;
  EMMS;
end;

procedure TBitmap32.DrawVertLineTS(X, Y1, Y2: Integer; Value: TColor32);
begin
  if (X >= 0) and (X < Width) and TestClip(Y1, Y2, Height) then
    DrawVertLineT(X, Y1, Y2, Value);
end;

procedure TBitmap32.DrawVertLineTSP(X, Y1, Y2: Integer);
var
  I: Integer;
begin
  if Empty then Exit;
  if (X >= 0) and (X < Width) then
  begin
    if ((Y1 < 0) and (Y2 < 0)) or ((Y1 >= Height) and (Y2 >= Height)) then
      Exit;
    if Y1 < 0 then Y1 := 0
    else if Y1 >= Height then Y1 := Height - 1;
    if Y2 < 0 then Y2 := 0
    else if Y2 >= Height then Y2 := Height - 1;

    if Y2 >= Y1 then
      for I := Y1 to Y2 do SetPixelT(X, I, GetStippleColor)
    else
      for I := Y2 downto Y1 do SetPixelT(X, I, GetStippleColor);
  end;
end;

procedure TBitmap32.DrawLine(X1, Y1, X2, Y2: Integer; Value: TColor32; L: Boolean);
var
  Dy, Dx, Sy, Sx, I, Delta: Integer;
  P: PColor32;
begin
  Changing;

  try
    Dx := X2 - X1;
    Dy := Y2 - Y1;

    if Dx > 0 then Sx := 1
    else if Dx < 0 then
    begin
      Dx := -Dx;
      Sx := -1;
    end
    else // Dx = 0
    begin
      if Dy > 0 then DrawVertLine(X1, Y1, Y2 - 1, Value)
      else if Dy < 0 then DrawVertLine(X1, Y2, Y1 - 1, Value);
      if L then Pixel[X2, Y2] := Value;
      Exit;
    end;

    if Dy > 0 then Sy := 1
    else if Dy < 0 then
    begin
      Dy := -Dy;
      Sy := -1;
    end
    else // Dy = 0
    begin
      if Dx > 0 then DrawHorzLine(X1, Y1, X2 - 1, Value)
      else DrawHorzLine(X2, Y1, X1 - 1, Value);
      if L then Pixel[X2, Y2] := Value;
      Exit;
    end;

    P := PixelPtr[X1, Y1];
    Sy := Sy * Width;

    if Dx > Dy then
    begin
      Delta := Dx shr 1;
      for I := 0 to Dx - 1 do
      begin
        P^ := Value;
        Inc(P, Sx);
        Delta := Delta + Dy;
        if Delta > Dx then
        begin
          Inc(P, Sy);
          Delta := Delta - Dx;
        end;
      end;
    end
    else // Dx < Dy
    begin
      Delta := Dy shr 1;
      for I := 0 to Dy - 1 do
      begin
        P^ := Value;
        Inc(P, Sy);
        Delta := Delta + Dx;
        if Delta > Dy then
        begin
          Inc(P, Sx);
          Delta := Delta - Dy;
        end;
      end;
    end;
    if L then P^ := Value;
  finally
    Changed;
  end;
end;

function TBitmap32.ClipLine(var X0, Y0, X1, Y1: Integer): Boolean;
type
  Edge = (Left, Right, Top, Bottom);
  OutCode = set of Edge;
var
  Accept, AllDone: Boolean;
  OutCode0, OutCode1, OutCodeOut: OutCode;
  X, Y: Integer;

  procedure CompOutCode(X, Y: Integer; var Code: OutCode);
  begin
    Code := [];
    if X < 0 then Code := Code + [Left];
    if X >= Width then Code := Code + [Right];
    if Y < 0 then Code := Code + [Top];
    if Y >= Height then Code := Code + [Bottom];
  end;

begin
  Accept := False;
  AllDone := False;
  CompOutCode(X0, Y0, OutCode0);
  CompOutCode(X1, Y1, OutCode1);
  repeat
    if (OutCode0 = []) and (OutCode1 = []) then // trivial accept and exit
    begin
      Accept := True;
      AllDone := True;
    end
    else if (OutCode0 * OutCode1) <> [] then AllDone := True // trivial reject
    else // calculate intersections
    begin
      if OutCode0 <> [] then OutCodeOut := OutCode0
      else OutCodeOut := OutCode1;
      X := 0;
      Y := 0;
      if Left in OutCodeOut then
        Y := Y0 + (Y1 - Y0) * (-X0) div (X1 - X0)
      else if Right in OutCodeOut then
      begin
        Y := Y0 + (Y1 - Y0) * (Width - 1 - X0) div (X1 - X0);
        X := Width - 1;
      end
      else if Top in OutCodeOut then
        X := X0 + (X1 - X0) * (-Y0) div (Y1 - Y0)
      else if Bottom in OutCodeOut then
      begin
        X := X0 + (X1 - X0) * (Height - 1 - Y0) div (Y1 - Y0);
        Y := Height - 1;
      end;
      if OutCodeOut = OutCode0 then
      begin
        X0 := X;
        Y0 := Y;
        CompOutCode(X0, Y0, OutCode0);
      end
      else
      begin
        X1 := X;
        Y1 := Y;
        CompOutCode(X1, Y1, OutCode1);
      end
    end;
  until AllDone;
  Result := Accept;
end;

function TBitmap32.ClipLineF(var X0, Y0, X1, Y1: Single;
  MinX, MaxX, MinY, MaxY: Single): Boolean;
type
  Edge = (Left, Right, Top, Bottom);
  OutCode = set of Edge;
var
  Accept, AllDone: Boolean;
  OutCode0, OutCode1, OutCodeOut: OutCode;
  X, Y: Single;

  procedure CompOutCode(X, Y: Single; var Code: OutCode);
  begin
    Code := [];
    if X < MinX then Code := Code + [Left];
    if X > MaxX then Code := Code + [Right];
    if Y < MinY then Code := Code + [Top];
    if Y > MaxY then Code := Code + [Bottom];
  end;

begin
  Accept := False; AllDone := False;
  CompOutCode(X0, Y0, OutCode0);
  CompOutCode(X1, Y1, OutCode1);
  repeat
    if (OutCode0 = []) and (OutCode1 = []) then // trivial accept and exit
    begin
      Accept := True;
      AllDone := True;
    end
    else if (OutCode0 * OutCode1) <> [] then AllDone := True // trivial reject
    else // calculate intersections
    begin
      if OutCode0 <> [] then OutCodeOut := OutCode0
      else OutCodeOut := OutCode1;
      X := 0;
      Y := 0;
      if Left in OutCodeOut then
      begin
        Y := Y0 + (Y1 - Y0) * (MinX - X0) / (X1 - X0);
        X := MinX;
      end
      else if Right in OutCodeOut then
      begin
        Y := Y0 + (Y1 - Y0) * (MaxX - X0) / (X1 - X0);
        X := MaxX - 1;
      end
      else if Top in OutCodeOut then
      begin
        X := X0 + (X1 - X0) * (MinY - Y0) / (Y1 - Y0);
        Y := MinY;
      end
      else if Bottom in OutCodeOut then
      begin
        X := X0 + (X1 - X0) * (MaxY - Y0) / (Y1 - Y0);
        Y := MaxY;
      end;
      if OutCodeOut = OutCode0 then
      begin
        X0 := X;
        Y0 := Y;
        CompOutCode(X0, Y0, OutCode0);
      end
      else
      begin
        X1 := X;
        Y1 := Y;
        CompOutCode(X1, Y1, OutCode1);
      end
    end;
  until AllDone;
  Result := Accept;
end;

procedure TBitmap32.DrawLineS(X1, Y1, X2, Y2: Integer; Value: TColor32; L: Boolean);
begin
  if ClipLine(X1, Y1, X2, Y2) then DrawLine(X1, Y1, X2, Y2, Value, L);
end;

procedure TBitmap32.DrawLineT(X1, Y1, X2, Y2: Integer; Value: TColor32; L: Boolean);
var
  Dy, Dx, Sy, Sx, I, Delta: Integer;
  P: PColor32;
begin
  Changing;
  try
    Dx := X2 - X1;
    Dy := Y2 - Y1;

    if Dx > 0 then Sx := 1
    else if Dx < 0 then
    begin
      Dx := -Dx;
      Sx := -1;
    end
    else // Dx = 0
    begin
      if Dy > 0 then DrawVertLineT(X1, Y1, Y2 - 1, Value)
      else if Dy < 0 then DrawVertLineT(X1, Y2, Y1 - 1, Value);
      if L then SetPixelT(X2, Y2, Value);
      Exit;
    end;

    if Dy > 0 then Sy := 1
    else if Dy < 0 then
    begin
      Dy := -Dy;
      Sy := -1;
    end
    else // Dy = 0
    begin
      if Dx > 0 then DrawHorzLineT(X1, Y1, X2 - 1, Value)
      else DrawHorzLineT(X2, Y1, X1 - 1, Value);
      if L then SetPixelT(X2, Y2, Value);
      Exit;
    end;

    P := PixelPtr[X1, Y1];
    Sy := Sy * Width;

    try
      if Dx > Dy then
      begin
        Delta := Dx shr 1;
        for I := 0 to Dx - 1 do
        begin
          BlendMem(Value, P^);
          Inc(P, Sx);
          Delta := Delta + Dy;
          if Delta > Dx then
          begin
            Inc(P, Sy);
            Delta := Delta - Dx;
          end;
        end;
      end
      else // Dx < Dy
      begin
        Delta := Dy shr 1;
        for I := 0 to Dy - 1 do
        begin
          BlendMem(Value, P^);
          Inc(P, Sy);
          Delta := Delta + Dx;
          if Delta > Dy then
          begin
            Inc(P, Sx);
            Delta := Delta - Dy;
          end;
        end;
      end;
      if L then BlendMem(Value, P^);
    finally
      EMMS;
    end;
  finally
    Changed;
  end;
end;

procedure TBitmap32.DrawLineTS(X1, Y1, X2, Y2: Integer; Value: TColor32; L: Boolean);
begin
  if ClipLine(X1, Y1, X2, Y2) then DrawLineT(X1, Y1, X2, Y2, Value, L);
end;

procedure TBitmap32.DrawLineF(X1, Y1, X2, Y2: Single; Value: TColor32; L: Boolean);
var
  n, i: Integer;
  px, py, ex, ey, nx, ny, hyp: Integer;
  A: TColor32;
begin
  Changing;
  try
    px := Round(x1 * 65536); py := Round(y1 * 65536);
    ex := Round(x2 * 65536); ey := Round(y2 * 65536);
    nx := ex - px; ny := ey - py;
    hyp := Round(Hypot(nx, ny));
    if L then Inc(hyp, 65536);
    if hyp < 256 then Exit;
    n := hyp shr 16;
    if n > 0 then
    begin
      nx := Round(nx / hyp * 65536); ny := Round(ny / hyp * 65536);
      for i := 0 to n - 1 do
      begin
        SET_T256(px shr 8, py shr 8, Value);
        px := px + nx;
        py := py + ny;
      end;
    end;
    A := Value shr 24;
    hyp := hyp - n shl 16;
    A := A * Longword(hyp) shl 8 and $FF000000;
    SET_T256((px + ex - nx) shr 9, (py + ey - ny) shr 9, Value and _RGB + A);
  finally
    EMMS;
    Changed;
  end;
end;

procedure TBitmap32.DrawLineFS(X1, Y1, X2, Y2: Single; Value: TColor32; L: Boolean);
var
  n, i: Integer;
  px, py, ex, ey, nx, ny, hyp: Integer;
  A: TColor32;
begin
  if ClipLineF(X1, Y1, X2, Y2, 0, FWidth, 0, FHeight) then
    if (X1 < FWidth - 1) and (X2 < FWidth - 1) and
      (Y1 < FHeight - 1) and (Y2 < FHeight - 1) then
      DrawLineF(X1, Y1, X2, Y2, Value)
    else // check every pixel
    begin
      Changing;
      try
        px := Round(x1 * 65536); py := Round(y1 * 65536);
        ex := Round(x2 * 65536); ey := Round(y2 * 65536);
        nx := ex - px; ny := ey - py;
        hyp := Round(Hypot(nx, ny));
        if L then Inc(Hyp, 65536);
        if hyp < 256 then Exit;
        n := hyp shr 16;
        if n > 0 then
        begin
          nx := Round(nx / hyp * 65536); ny := Round(ny / hyp * 65536);
          for i := 0 to n - 1 do
          begin
            SET_TS256(px div 256, py div 256, Value);
            px := px + nx;
            py := py + ny;
          end;
        end;
        A := Value shr 24;
        hyp := hyp - n shl 16;
        A := A * Longword(hyp) shl 8 and $FF000000;
        SET_TS256(SAR_9(px + ex - nx), SAR_9(py + ey - ny), Value and _RGB + A);
      finally
        EMMS;
        Changed;
      end;
    end;
end;

procedure TBitmap32.DrawLineFP(X1, Y1, X2, Y2: Single; L: Boolean);
var
  n, i: Integer;
  px, py, ex, ey, nx, ny, hyp: Integer;
  A, C: TColor32;
begin
  Changing;
  try
    px := Round(x1 * 65536); py := Round(y1 * 65536);
    ex := Round(x2 * 65536); ey := Round(y2 * 65536);
    nx := ex - px; ny := ey - py;
    hyp := Round(Hypot(nx, ny));
    if L then Inc(hyp, 65536);
    if hyp < 256 then Exit;
    n := hyp shr 16;
    if n > 0 then
    begin
      nx := Round(nx / hyp * 65536);
      ny := Round(ny / hyp * 65536);
      for i := 0 to n - 1 do
      begin
        C := GetStippleColor;
        SET_T256(px shr 8, py shr 8, C);
        EMMS;
        px := px + nx;
        py := py + ny;
      end;
    end;
    C := GetStippleColor;
    A := C shr 24;
    hyp := hyp - n shl 16;
    A := A * Longword(hyp) shl 8 and $FF000000;
    SET_T256((px + ex - nx) shr 9, (py + ey - ny) shr 9, C and _RGB + A);
    EMMS;
  finally
    Changed;
  end;
end;

procedure TBitmap32.DrawLineFSP(X1, Y1, X2, Y2: Single; L: Boolean);
var
  n, i: Integer;
  px, py, ex, ey, nx, ny, hyp: Integer;
  A, C: TColor32;
begin
  if ClipLineF(X1, Y1, X2, Y2, 0, FWidth, 0, FHeight) then
    if (X1 < FWidth - 1) and (X2 < FWidth - 1) and
      (Y1 < FHeight - 1) and (Y2 < FHeight - 1) then
      DrawLineFP(X1, Y1, X2, Y2)
    else // check every pixel
    begin
      Changing;
      try
        px := Round(x1 * 65536); py := Round(y1 * 65536);
        ex := Round(x2 * 65536); ey := Round(y2 * 65536);
        nx := ex - px; ny := ey - py;
        hyp := Round(Hypot(nx, ny));
        if L then Inc(hyp, 65536);
        if hyp < 256 then Exit;
        n := hyp shr 16;
        if n > 0 then
        begin
          nx := Round(nx / hyp * 65536); ny := Round(ny / hyp * 65536);
          for i := 0 to n - 1 do
          begin
            C := GetStippleColor;
            SET_TS256(px div 256, py div 256, C);
            EMMS;
            px := px + nx;
            py := py + ny;
          end;
        end;
        C := GetStippleColor;
        A := C shr 24;
        hyp := hyp - n shl 16;
        A := A * Longword(hyp) shl 8 and $FF000000;
        SET_TS256(SAR_9(px + ex - nx), SAR_9(py + ey - ny), C and _RGB + A);
        EMMS;
      finally
        Changed;
      end;
    end;
end;

procedure TBitmap32.DrawLineA(X1, Y1, X2, Y2: Integer; Value: TColor32; L: Boolean);
var
  Dx, Dy, Sx, Sy, D: Integer;
  EC, EA: Word;
  CI: Byte;
  P: PColor32;
begin
  if (X1 = X2) or (Y1 = Y2) then
  begin
    DrawLineT(X1, Y1, X2, Y2, Value, L);
    Exit;
  end;

  Dx := X2 - X1;
  Dy := Y2 - Y1;

  if Dx > 0 then Sx := 1
  else
  begin
    Sx := -1;
    Dx := -Dx;
  end;

  if Dy > 0 then Sy := 1
  else
  begin
    Sy := -1;
    Dy := -Dy;
  end;

  Changing;
  try
    EC := 0;
    BlendMem(Value, Bits[X1 + Y1 * Width]);

    if Dy > Dx then
    begin
      EA := Dx shl 16 div Dy;
      if not L then Dec(Dy);
      while Dy > 0 do
      begin
        Dec(Dy);
        D := EC;
        Inc(EC, EA);
        if EC <= D then Inc(X1, Sx);
        Inc(Y1, Sy);
        CI := EC shr 8;
        P := @Bits[X1 + Y1 * Width];
        BlendMemEx(Value, P^, GAMMA_TABLE[CI xor 255]);
        Inc(P, Sx);
        BlendMemEx(Value, P^, GAMMA_TABLE[CI]);
      end;
    end
    else // DY <= DX
    begin
      EA := Dy shl 16 div Dx;
      if not L then Dec(Dx);
      while Dx > 0 do
      begin
        Dec(Dx);
        D := EC;
        Inc(EC, EA);
        if EC <= D then Inc(Y1, Sy);
        Inc(X1, Sx);
        CI := EC shr 8;
        P := @Bits[X1 + Y1 * Width];
        BlendMemEx(Value, P^, GAMMA_TABLE[CI xor 255]);
        if Sy = 1 then Inc(P, Width) else Dec(P, Width);
        BlendMemEx(Value, P^, GAMMA_TABLE[CI]);
      end;
    end;
  finally
    EMMS;
    Changed;
  end;
end;

procedure TBitmap32.DrawLineAS(X1, Y1, X2, Y2: Integer; Value: TColor32; L: Boolean);
begin
  if ClipLine(X1, Y1, X2, Y2) then DrawLineA(X1, Y1, X2, Y2, Value, L);
end;

procedure TBitmap32.MoveTo(X, Y: Integer);
begin
  RasterX := X;
  RasterY := Y;
end;

procedure TBitmap32.LineToS(X, Y: Integer);
begin
  DrawLineS(RasterX, RasterY, X, Y, PenColor);
  RasterX := X;
  RasterY := Y;
end;

procedure TBitmap32.LineToTS(X, Y: Integer);
begin
  DrawLineTS(RasterX, RasterY, X, Y, PenColor);
  RasterX := X;
  RasterY := Y;
end;

procedure TBitmap32.LineToAS(X, Y: Integer);
begin
  DrawLineAS(RasterX, RasterY, X, Y, PenColor);
  RasterX := X;
  RasterY := Y;
end;

procedure TBitmap32.MoveToF(X, Y: Single);
begin
  RasterXF := X;
  RasterYF := Y;
end;

procedure TBitmap32.LineToFS(X, Y: Single);
begin
  DrawLineFS(RasterXF, RasterYF, X, Y, PenColor);
  RasterXF := X;
  RasterYF := Y;
end;

procedure TBitmap32.FillRect(X1, Y1, X2, Y2: Integer; Value: TColor32);
var
  j: Integer;
  P: PColor32Array;
begin
  Changing;
  for j := Y1 to Y2 do
  begin
    P := Pointer(GetScanLine(j));
    FillLongword(P[X1], X2 - X1 + 1, Value);
  end;
  Changed;
end;

procedure TBitmap32.FillRectS(X1, Y1, X2, Y2: Integer; Value: TColor32);
begin
  if TestClip(X1, X2, Width) and TestClip(Y1, Y2, Height) then
    FillRect(X1, Y1, X2, Y2, Value);
end;

procedure TBitmap32.FillRectT(X1, Y1, X2, Y2: Integer; Value: TColor32);
var
  i, j: Integer;
  P: PColor32;
  A: Integer;
begin
  A := Value shr 24;
  if A = $FF then FillRect(X1, Y1, X2, Y2, Value)
  else
  begin
    Changing;
    try
    for j := Y1 to Y2 do
    begin
      P := GetPixelPtr(X1, j);
      for i := X1 to X2 do
      begin
        CombineMem(Value, P^, A);
        Inc(P);
      end;
    end;
    finally
      EMMS;
      Changed;
    end;
  end;
end;

procedure TBitmap32.FillRectTS(X1, Y1, X2, Y2: Integer; Value: TColor32);
begin
  if TestClip(X1, X2, Width) and TestClip(Y1, Y2, Height) then
    FillRectT(X1, Y1, X2, Y2, Value);
end;

procedure TBitmap32.FrameRectS(X1, Y1, X2, Y2: Integer; Value: TColor32);
begin
  Changing;
  TestSwap(X1, X2);
  TestSwap(Y1, Y2);
  DrawHorzLineS(X1, Y1, X2, Value);
  if Y2 > Y1 then DrawHorzLineS(X1, Y2, X2, Value);
  if Y2 > Y1 + 1 then
  begin
    DrawVertLineS(X1, Y1 + 1, Y2 - 1, Value);
    if X2 > X1 then DrawVertLineS(X2, Y1 + 1, Y2 - 1, Value);
  end;
  Changed;
end;

procedure TBitmap32.FrameRectTS(X1, Y1, X2, Y2: Integer; Value: TColor32);
begin
  Changing;
  TestSwap(X1, X2);
  TestSwap(Y1, Y2);
  DrawHorzLineTS(X1, Y1, X2, Value);
  if Y2 > Y1 then DrawHorzLineTS(X1, Y2, X2, Value);
  if Y2 > Y1 + 1 then
  begin
    DrawVertLineTS(X1, Y1 + 1, Y2 - 1, Value);
    if X2 > X1 then DrawVertLineTS(X2, Y1 + 1, Y2 - 1, Value);
  end;
  Changed;
end;

procedure TBitmap32.FrameRectTSP(X1, Y1, X2, Y2: Integer);
begin
  Changing;
  TestSwap(X1, X2);
  TestSwap(Y1, Y2);
  DrawHorzLineTSP(X1, Y1, X2);
  if Y2 > Y1 + 1 then
  begin
    DrawVertLineTSP(X2, Y1 + 1, Y2 - 1);
    if X2 > X1 then DrawVertLineTSP(X1, Y1 + 1, Y2 - 1);
  end;
  if Y2 > Y1 then DrawHorzLineTSP(X1, Y2, X2);
  Changed;
end;

procedure TBitmap32.RaiseRectTS(X1, Y1, X2, Y2: Integer; Contrast: Integer);
var
  C1, C2: TColor32;
begin
  Changing;
  try
    if Contrast > 0 then
    begin
      C1 := clWhite32;
      C2 := clBlack32;
    end
    else if Contrast < 0 then
    begin
      C1 := clBlack32;
      C2 := clWhite32;
      Contrast := -Contrast;
    end
    else Exit;
    Contrast := Clamp(Contrast * 255 div 100);
    C1 := SetAlpha(C1, Contrast);
    C2 := SetAlpha(C2, Contrast);
    TestSwap(X1, X2);
    TestSwap(Y1, Y2);
    DrawHorzLineTS(X1, Y1, X2 - 1, C1);
    DrawHorzLineTS(X1 + 1, Y2, X2, C2);
    DrawVertLineTS(X1, Y1, Y2 - 1, C1);
    DrawVertLineTS(X2, Y1 + 1, Y2, C2);
  finally
    Changed;
  end;
end;

procedure TBitmap32.LoadFromStream(Stream: TStream);
var
  B: TBitmap;
begin
  Changing;
  B := TBitmap.Create;
  try
    B.LoadFromStream(Stream);
    Assign(B);
  finally
    B.Free;
    Changed;
  end;
end;

procedure TBitmap32.SaveToStream(Stream: TStream);
var
  B: TBitmap;
begin
  B := TBitmap.Create;
  try
    AssignTo(B);
    B.SaveToStream(Stream);
  finally
    B.Free;
  end;
end;

procedure TBitmap32.DefineProperties(Filer: TFiler);
{}function DoWrite: Boolean;
  begin
    if Filer.Ancestor <> nil then
      Result := not (Filer.Ancestor is TGraphic)
    else
      Result := not Empty;
  end;
begin
  Filer.DefineBinaryProperty('Data', ReadData, WriteData, DoWrite);
end;

procedure TBitmap32.ReadData(Stream: TStream);
var
  w, h: Integer;
begin
  Changing;
  try
    Stream.ReadBuffer(w, 4);
    Stream.ReadBuffer(h, 4);
    SetSize(w, h);
    Stream.ReadBuffer(FBits[0], FWidth * FHeight * 4);
  finally
    Changed;
  end;
end;

procedure TBitmap32.WriteData(Stream: TStream);
begin
  Stream.WriteBuffer(FWidth, 4);
  Stream.WriteBuffer(FHeight, 4);
  Stream.WriteBuffer(FBits[0], FWidth * FHeight * 4);
end;

procedure TBitmap32.LoadFromFile(const FileName: string);
var
  P: TPicture;
begin
  P := TPicture.Create;
  try
    P.LoadFromFile(FileName);
    Assign(P);
  finally
    P.Free;
  end;
end;

procedure TBitmap32.SaveToFile(const FileName: string);
var
  B: TBitmap;
begin
  B := TBitmap.Create;
  try
    AssignTo(B);
    B.SaveToFile(FileName);
  finally
    B.Free;
  end;
end;

procedure TBitmap32.SetFont(Value: TFont);
begin
  FFont.Assign(Value);
  FontChanged(Self);
end;

procedure TBitmap32.FontChanged(Sender: TObject);
begin
  if FontHandle > 0 then
  begin
    SelectObject(Handle, StockFont);
    FontHandle := 0;
  end;
end;

procedure TBitmap32.UpdateFont;
begin
  if FontHandle = 0 then
  begin
    SelectObject(Handle, Font.Handle);
    SetTextColor(Handle, ColorToRGB(Font.Color));
    SetBkMode(Handle, Windows.TRANSPARENT);
  end;
end;

procedure TBitmap32.SetDrawMode(Value: TDrawMode);
begin
  if FDrawMode <> Value then
  begin
    Changing;
    FDrawMode := Value;
    Changed;
  end;
end;

procedure TBitmap32.SetMasterAlpha(Value: Byte);
begin
  if FMasterAlpha <> Value then
  begin
    Changing;
    FMasterAlpha := Value;
    Changed;
  end;
end;

procedure TBitmap32.SetStretchFilter(Value: TStretchFilter);
begin
  if FStretchFilter <> Value then
  begin
    Changing;
    FStretchFilter := Value;
    Changed;
  end;
end;


// Text and Fonts

function TBitmap32.TextExtent(const Text: Widestring): TSize;
begin
  UpdateFont;
  Result.cX := 0;
  Result.cY := 0;
  Windows.GetTextExtentPoint32W(Handle, PWideChar(Text), Length(Text), Result);
end;

procedure TBitmap32.TextOut(X, Y: Integer; const Text: widestring);
begin
  Changing;
  UpdateFont;
  ExtTextOutW(Handle, X, Y, 0, nil, PWideChar(Text), Length(Text), nil);
  Changed;
end;

procedure TBitmap32.TextOut(X, Y: Integer; const ClipRect: TRect;
  const Text: widestring);
begin
  Changing;
  UpdateFont;
  ExtTextOutW(Handle, X, Y, ETO_CLIPPED, @ClipRect, PWideChar(Text), Length(Text), nil);
  Changed;
end;

procedure TBitmap32.TextOut(ClipRect: TRect; const Flags: Cardinal;
  const Text: widestring);
begin
  Changing;
  UpdateFont;
  DrawTextW(Handle, PWideChar(Text), Length(Text), ClipRect, Flags);
  Changed;
end;

function TBitmap32.TextHeight(const Text: widestring): Integer;
begin
  Result := TextExtent(Text).cY;
end;

function TBitmap32.TextWidth(const Text: widestring): Integer;
begin
  Result := TextExtent(Text).cX;
end;

procedure TBitmap32.RenderText(X, Y: Integer; const Text: Widestring; AALevel: Integer; Color: TColor32);
var
  B, B2: TBitmap32;
  Sz: TSize;
  C: TColor32;
  I: Integer;
  P: PColor32;
begin
  AALevel := Constrain(AALevel, 0, 4);
  B := TBitmap32.Create;
  try
    if AALevel = 0 then
    begin
      Sz := TextExtent(Text + ' ');
      B.SetSize(Sz.cX, Sz.cY);
      B.Font := Font;
      B.Clear(0);
      B.Font.Color := clWhite;
      B.TextOut(0, 0, Text);
    end
    else
    begin
      B2 := TBitmap32.Create;
      try
        B2.SetSize(1, 1); // just need some DC here
        B2.Font := Font;
        B2.Font.Size := Font.Size shl AALevel;
        Sz := B2.TextExtent(Text + ' ');
        Sz.cx := (Sz.cx shr AALevel + 1) shl AALevel;
        B2.SetSize(Sz.cx, Sz.cy);
        B2.Clear(0);
        B2.Font.Color := clWhite;
        B2.TextOut(0, 0, Text);
        B2.StretchFilter := sfLinear;
        B.SetSize(Sz.cx shr AALevel, Sz.cy shr AALevel);
        B.Draw(Rect(0, 0, B.Width, B.Height), Rect(0, 0, B2.Width, B2.Height), B2);
      finally
        B2.Free;
      end;
    end;

    // convert intensity and color to alpha
    B.MasterAlpha := Color shr 24;
    Color := Color and $00FFFFFF;
    P := @B.Bits[0];
    for I := 0 to B.Width * B.Height - 1 do
    begin
      C := P^;
      if C <> 0 then
      begin
        C := P^ shl 24; // transfer blue channel to alpha
        C := C + Color;
        P^ := C;
      end;
      Inc(P);
    end;
    B.DrawMode := dmBlend;

    B.DrawTo(Self, X, Y);
  finally
    B.Free;
  end;
end;


{ Gamma table support for opacities }

procedure SetGamma(Gamma: Single);
var
  i: Integer;
begin
  for i := 0 to 255 do
    GAMMA_TABLE[i] := Round(255 * Power(i / 255, Gamma));
end;

initialization
  InitializeCriticalSection(CounterLock);
  SetGamma;
  StockFont := GetStockObject(SYSTEM_FONT);

finalization
  DeleteCriticalSection(CounterLock);

end.



