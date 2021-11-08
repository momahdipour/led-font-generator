unit Image32;

{**************************************************}
{  Graphics32 - VCL components                     }
{  A Library for Fast 32-Bit Bitmap Manipulation   }
{  Copyright (c) 2000 Alex Denissov                }
{  Version: 0.98                                   }
{  Date: 17-May-2000                               }
{  See Licence.txt for license information         }
{**************************************************}

interface

uses Windows, Classes, Messages, Controls, SysUtils, Graphics32;

type
  TPaintEvent = procedure(Sender: TObject; BackBuffer: TBitmap32) of object;

  { Alignment of the bitmap in TImage32 }
  TBitmapAlign = (baTopLeft, baCenter, baTile);
  TScaleMode = (smNormal, smStretch, smScale, smResize);

  { TCustomPaintBox32 }
  TCustomPaintBox32 = class(TWinControl)
  private
    FBuffer: TBitmap32;
    FSmartResize: Boolean;
    FUpdateCount: Integer;
    FOnClearBuffer: TNotifyEvent;
    FOnPaint: TPaintEvent;
    FOnChanging: TNotifyEvent;
    FOnChange: TNotifyEvent;
    procedure BufferChanged(Sender: TObject);
    procedure BufferChanging(Sender: TObject);
    procedure WMEraseBkgnd(var Msg: TWmEraseBkgnd); message WM_ERASEBKGND;
    procedure WMPaint(var Msg: TWMPaint); message WM_PAINT;
  protected
    procedure Paint; virtual;
    procedure PaintControls(DC: HDC; First: TControl);
    procedure PaintHandler(var Msg: TWMPaint);
    procedure PaintWindow(DC: HDC); override;
    procedure ResizeBuffer; virtual;
    property  UpdateCount: Integer read FUpdateCount;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure BeginUpdate; virtual;
    procedure ClearBuffer; virtual;
    procedure Changing; virtual;
    procedure Changed; virtual;
    procedure EndUpdate; virtual;
    procedure Resize; override;
    property Buffer: TBitmap32 read FBuffer;
    property SmartResize: Boolean read FSmartResize write FSmartResize;
    property OnClearBuffer: TNotifyEvent read FOnClearBuffer write FOnClearBuffer;
    property OnChanging: TNotifyEvent read FOnChanging write FOnChanging;
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
    property OnPaint: TPaintEvent read FOnPaint write FOnPaint;
    property OnResize;
  end;

  { TPaintBox32 }
  TPaintBox32 = class(TCustomPaintBox32)
  published
    property Align;
    property Anchors;
    property AutoSize;
    property Color;
    property Constraints;
    property Cursor;
    property ParentColor;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property Visible;
    property OnClearBuffer;
    property OnClick;
    property OnChange;
    property OnChanging;
{$IFDEF DELPHI5}property OnContextPopup;{$ENDIF}
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnPaint;
    property OnResize;
  end;

  { TCustomImage32 }
  TCustomImage32 = class(TCustomPaintBox32)
  private
    FBitmap: TBitmap32;
    FBitmapAlign: TBitmapAlign;
    FScale: Extended;
    FScaleMode: TScaleMode;
    procedure BitmapChanging(Sender: TObject);
    procedure BitmapChanged(Sender: TObject);
    procedure SetBitmap(Value: TBitmap32);
    procedure SetBitmapAlign(Value: TBitmapAlign);
    procedure SetScale(Value: Extended);
    procedure SetScaleMode(Value: TScaleMode);
  protected
    function CanAutoSize(var NewWidth, NewHeight: Integer): Boolean; override;
    procedure Paint; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Changed; override;
    procedure Changing; override;
    function GetPictureRect: TRect;
    procedure SetupBitmap(DoClear: Boolean = False; ClearColor: TColor32 = $FF000000);
    property Bitmap: TBitmap32 read FBitmap write SetBitmap;
    property BitmapAlign: TBitmapAlign read FBitmapAlign write SetBitmapAlign;
    property Scale: Extended read FScale write SetScale;
    property ScaleMode: TScaleMode read FScaleMode write SetScaleMode;
  end;

  { TImage32 }
  TImage32 = class(TCustomImage32)
  published
    property Align;
    property Anchors;
    property AutoSize;
    property Bitmap;
    property BitmapAlign;
    property Color;
    property Constraints;
    property Cursor;
    property ParentColor;
    property ParentShowHint;
    property PopupMenu;
    property Scale;
    property ScaleMode;
    property ShowHint;
    property Visible;
    property OnClick;
    property OnChange;
    property OnChanging;
{$IFDEF DELPHI5}property OnContextPopup;{$ENDIF}
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnResize;
  end;

  { TBitmapItem }
  { An bitmap container designed to be inserted into TBitmapCollection }
  TBitmapItem = class(TCollectionItem)
  private
    FBitmap: TBitmap32;
    FUpdateCount: Integer;
    FOnChanging: TNotifyEvent;
    FOnChange: TNotifyEvent;
    procedure BitmapChanged(Sender: TObject);
    procedure SetBitmap(ABitmap: TBitmap32);
  public
    constructor Create(Collection: TCollection); override;
    destructor Destroy; override;
    procedure BeginUpdate; virtual;
    procedure Changing; virtual;
    procedure Changed; virtual;
    procedure EndUpdate; virtual;
  published
    property Bitmap: TBitmap32 read FBitmap write SetBitmap;
    property OnChanging: TNotifyEvent read FOnChanging write FOnChanging;
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
  end;

  TBitmapItemClass = class of TBitmapItem;

  { TBitmapCollection }
  { A collection of TBitmapItem objects }
  TBitmapCollection = class(TCollection)
  private
    FOwner: TPersistent;
    FUpdateCount: Integer;
    FOnChanging: TNotifyEvent;
    FOnChange: TNotifyEvent;
    function  GetItem(Index: Integer): TBitmapItem;
    procedure SetItem(Index: Integer; Value: TBitmapItem);
  protected
    procedure Changing;
    procedure Changed;
    function  GetOwner: TPersistent; override;
    procedure ItemChanging(Sender: TObject);
    procedure ItemChanged(Sender: TObject);
  public
    constructor Create(AOwner: TPersistent; ItemClass: TBitmapItemClass);
    function Add: TBitmapItem;
    procedure BeginUpdate; reintroduce;
    procedure EndUpdate; reintroduce;
    property Items[Index: Integer]: TBitmapItem read GetItem write SetItem; default;
    property OnChanging: TNotifyEvent read FOnChanging write FOnChanging;
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
  end;

  { TBitmapList32 }
  { A component that stores TBitmapCollection }
  TBitmapList32 = class(TComponent)
  private
    FBitmapCollection: TBitmapCollection;
    FOnChanging: TNotifyEvent;
    FOnChange: TNotifyEvent;
    procedure SetBitmapCollection(Value: TBitmapCollection);
    procedure CollectionChanging(Sender: TObject);
    procedure CollectionChanged(Sender: TObject);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property Bitmaps: TBitmapCollection read FBitmapCollection write SetBitmapCollection;
    property OnChanging: TNotifyEvent read FOnChanging write FOnChanging;
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
  end;

  { TCustomLayer32 }
  { A TControl descendant, that "knows" how to draw itself into TCustomPaintBox32 }
  TCustomLayer32 = class(TControl)
  private
    FOnPaint: TPaintEvent;
    FOnChange: TNotifyEvent;
    FOnChanging: TNotifyEvent;
    procedure WMPaint(var Msg: TWMPaint); message WM_PAINT;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Changing; virtual;
    procedure Changed; virtual;
    procedure Paint(Bitmap32: TBitmap32); virtual;
  published
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
    property OnChanging: TNotifyEvent read FOnChanging write FOnChanging;
    property OnPaint: TPaintEvent read FOnPaint write FOnPaint;
  end;

  { TLayer32 }

  TLayer32 = class(TCustomLayer32)
  published
    property Align;
    property Anchors;
    property Constraints;
    property Cursor;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property Visible;
    property OnChange;
    property OnChanging;
    property OnClick;
{$IFDEF DELPHI5}property OnContextPopup;{$ENDIF}
    property OnDblClick;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnPaint;
    property OnResize;
  end;

  { TBitmapLayer32 }
  { A bitmap layer (overlay, sprite) }
  TBitmapLayer32 = class(TLayer32)
  private
    FBitmap: TBitmap32;
    procedure BitmapChanging(Sender: TObject);
    procedure BitmapChanged(Sender: TObject);
    procedure SetBitmap(Value: TBitmap32);
  protected
    function CanAutoSize(var NewWidth, NewHeight: Integer): Boolean; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Paint(Bitmap32: TBitmap32); override;
  published
    property AutoSize;
    property Bitmap: TBitmap32 read FBitmap write SetBitmap;
  end;


{ Scaling and Aligning }
function BmpToImg(BmpW, BmpH, ImgW, ImgH: Integer;
  Align: TBitmapAlign; ScaleMode: TScaleMode; Scale: Extended): TRect;

implementation

{ TCustomPaintBox32 }

procedure TCustomPaintBox32.BeginUpdate;
begin
  Inc(FUpdateCount);
end;

procedure TCustomPaintBox32.BufferChanged(Sender: TObject);
begin
  Changed;
end;

procedure TCustomPaintBox32.BufferChanging(Sender: TObject);
begin
  Changing;
end;

procedure TCustomPaintBox32.Changed;
begin
  if (FUpdateCount = 0) then
  begin
    Invalidate;
    if Assigned(FOnChange) then FOnChange(Self);
  end;
end;

procedure TCustomPaintBox32.Changing;
begin
  if (FUpdateCount = 0) and Assigned(FOnChanging) then FOnChanging(Self);
end;

procedure TCustomPaintBox32.ClearBuffer;
begin
  BeginUpdate;
  if (FBuffer.Width < Width) or (FBuffer.Height < Height) then
    FBuffer.SetSize(Width, Height);
  if Assigned(FOnClearBuffer) then FOnClearBuffer(Self)
  else FBuffer.Clear(Color32(Color));
  EndUpdate;
end;

constructor TCustomPaintBox32.Create(AOwner: TComponent);
begin
  inherited;
  ControlStyle := [csAcceptsControls, csCaptureMouse, csClickEvents,
    csDoubleClicks, csReplicatable, csOpaque];
  Width := 192;
  Height := 192;
  FBuffer := TBitmap32.Create;
  FBuffer.SetSize(192, 192);
  FBuffer.OnChanging := BufferChanging;
  FBuffer.OnChange := BufferChanged;
end;

destructor TCustomPaintBox32.Destroy;
begin
  FBuffer.Free;
  inherited;
end;

procedure TCustomPaintBox32.EndUpdate;
begin
  Assert(FUpdateCount > 0, 'Unpaired TCustomPaintBox32.EndUpdate');
  Dec(FUpdateCount);
end;

procedure TCustomPaintBox32.Paint;
begin
  if csDesigning in ComponentState then
  begin
    ClearBuffer;
    DrawFocusRect(FBuffer.Handle, Rect(0, 0, Width, Height));
  end;
  if (FUpdateCount = 0) and Assigned(FOnPaint) then FOnPaint(Self, FBuffer);
end;

procedure TCustomPaintBox32.PaintControls(DC: HDC; First: TControl);
var
  I, J, Count, SaveIndex: Integer;
begin
  if ControlCount > 0 then
  begin
    I := 0;
    if First <> nil then
    begin
      I := -1;
      for J := 0 to ControlCount - 1 do
        if Controls[J] = First then
        begin
          I := J;
          Break;
        end;
      if I < 0 then I := 0;
    end;
    Count := ControlCount;
    while I < Count do
    begin
      if Controls[I] is TCustomLayer32 then
      with TCustomLayer32(Controls[I]) do
        if (Visible) and
          RectVisible(DC, Rect(Left, Top, Left + Width, Top + Height)) then
        begin
          SaveIndex := SaveDC(DC);
          IntersectClipRect(DC, Left, Top, Left + Width, Top + Height);
          Perform(WM_PAINT, DC, 0);
          RestoreDC(DC, SaveIndex);
        end;
      Inc(I);
    end;
  end;
end;

procedure TCustomPaintBox32.PaintHandler(var Msg: TWMPaint);
var
  I, Clip, SaveIndex: Integer;
  DC: HDC;
  PS: TPaintStruct;
begin
  DC := Msg.DC;
  if DC = 0 then DC := BeginPaint(Handle, PS);
  try
    if ControlCount = 0 then PaintWindow(DC) else
    begin
      SaveIndex := SaveDC(DC);
      Clip := SimpleRegion;
      for I := 0 to ControlCount - 1 do
        if Controls[I] is TCustomLayer32 then
          with TCustomLayer32(Controls[I]) do
            if Visible and (csOpaque in ControlStyle) then
            begin
              Clip := ExcludeClipRect(DC, Left, Top, Left + Width, Top + Height);
              if Clip = NullRegion then Break;
            end;
      if Clip <> NullRegion then PaintWindow(DC);
      RestoreDC(DC, SaveIndex);
    end;
    PaintControls(DC, nil);
  finally
    if Msg.DC = 0 then EndPaint(Handle, PS);
  end;
end;

procedure TCustomPaintBox32.PaintWindow(DC: HDC);
begin
  FBuffer.Lock;
  try
    ResizeBuffer;
    Paint; // calls OnPaint by default
  finally
    FBuffer.Unlock;
  end;
end;

procedure TCustomPaintBox32.Resize;
begin
  ResizeBuffer;
  inherited; // calls OnResize event
  Paint;
end;

procedure TCustomPaintBox32.ResizeBuffer;
const
  OVERSIZE = 40;
var
  NewWidth, NewHeight: Integer;
begin
  if (FBuffer.Width = Width) and (FBuffer.Height = Height) then Exit
  else if not FSmartResize then
  begin
    FBuffer.SetSize(Width, Height);
    ClearBuffer;
  end
  else // 'smart resize' mode
  begin
    NewWidth := FBuffer.Width;
    NewHeight := FBuffer.Height;
    if Width > FBuffer.Width then NewWidth := Width + OVERSIZE;
    if Height > FBuffer.Height then NewHeight := Height + OVERSIZE;
    if Width < FBuffer.Width - OVERSIZE then NewWidth := Width;
    if Height < FBuffer.Height - OVERSIZE then NewHeight := Height;
    if (NewWidth <> FBuffer.Width) or (NewHeight <> FBuffer.Height) then
    begin
      FBuffer.SetSize(NewWidth, NewHeight);
      ClearBuffer;
    end;
  end;
end;

procedure TCustomPaintBox32.WMEraseBkgnd(var Msg: TWmEraseBkgnd);
begin
  Msg.Result := 1;
end;

procedure TCustomPaintBox32.WMPaint(var Msg: TWMPaint);
var
  DC: HDC;
  PS: TPaintStruct;
begin
  if Msg.DC <> 0 then PaintHandler(Msg)
  else
  begin
    DC := BeginPaint(Handle, PS);
    try
      Msg.DC := FBuffer.Handle;
      WMPaint(Msg);
      Msg.DC := 0;
      BitBlt(DC, 0, 0, ClientRect.Right, ClientRect.Bottom, FBuffer.Handle, 0,
        0, SRCCOPY);
    finally
      EndPaint(Handle, PS);
    end;
  end;
end;


{ TCustomImage32 }

procedure TCustomImage32.BitmapChanged(Sender: TObject);
begin
  Changed;
end;

procedure TCustomImage32.BitmapChanging(Sender: TObject);
begin
  Changing;
end;

function TCustomImage32.CanAutoSize(var NewWidth, NewHeight: Integer): Boolean;
var
  W, H: Integer;
begin
  Result := True;
  W := Bitmap.Width;
  H := Bitmap.Height;
  if ScaleMode = smScale then
  begin
    W := Round(W * Scale);
    H := Round(H * Scale);
  end;
  if not (csDesigning in ComponentState) or (W > 0) and (H > 0) then
  begin
    if Align in [alNone, alLeft, alRight] then NewWidth := W;
    if Align in [alNone, alTop, alBottom] then NewHeight := H;
  end;
end;

procedure TCustomImage32.Changed;
var
  W, H: Integer;
begin
  if (FUpdateCount = 0) then
  begin
    W := Bitmap.Width;
    H := Bitmap.Height;
    if ScaleMode = smScale then
    begin
      W := Round(W * Scale);
      H := Round(H * Scale);
    end;
    if AutoSize and (W > 0) and (H > 0) then SetBounds(Left, Top, W, H);
    Invalidate;
    if Assigned(FOnChange) then FOnChange(Self);
  end;
end;

procedure TCustomImage32.Changing;
begin
  if (FUpdateCount = 0) and Assigned(FOnChanging) then FOnChanging(Self);
end;

constructor TCustomImage32.Create(AOwner: TComponent);
begin
  inherited;
  ControlStyle := [csAcceptsControls, csCaptureMouse, csClickEvents,
    csDoubleClicks, csReplicatable, csOpaque];
  Buffer.BeginUpdate; // disable buffer's self change detection
  FBitmap := TBitmap32.Create;
  FBitmap.OnChanging := BitmapChanging;
  FBitmap.OnChange := BitmapChanged;
  FScale := 1;
  SmartResize := True;
end;

destructor TCustomImage32.Destroy;
begin
  FBitmap.Free;
  inherited;
end;

function TCustomImage32.GetPictureRect: TRect;
begin
  Result := BmpToImg(Bitmap.Width, Bitmap.Height, Width, Height,
    BitmapAlign, ScaleMode, Scale);
end;

procedure TCustomImage32.Paint;
var
  C: TColor32;
  R, TileRect: TRect;
  I, J, Tx, Ty: Integer;
begin
  C := Color32(Color);

  if Bitmap.Empty then
  begin
    FBuffer.Clear(C);
    if csDesigning in ComponentState then
      DrawFocusRect(FBuffer.Handle, Rect(0, 0, Width, Height));
    Exit;
  end;

  R := BmpToImg(Bitmap.Width, Bitmap.Height, Width, Height,
    BitmapAlign, ScaleMode, Scale);

  if Bitmap.DrawMode <> dmOpaque then
  begin
    // clean the entire buffer before painting the image
    FBuffer.Clear(C);
  end
  else if ((R.Left > 0) or (R.Right < Width) or (R.Top > 0) or (R.Bottom < Height)) and
    not (BitmapAlign = baTile) then
  begin
    // clean only the part of the buffer lying around image edges
    FBuffer.FillRectS(0, 0, Width - 1, R.Top - 1, C);              // top
    FBuffer.FillRectS(0, R.Bottom, Width - 1, Height - 1, C);      // bottom
    FBuffer.FillRectS(0, R.Top, R.Left - 1, R.Bottom - 1, C);      // left
    FBuffer.FillRectS(R.Right, R.Top, Width - 1, R.Bottom - 1, C); // right
  end;

  Bitmap.Lock;
  try
    if BitmapAlign <> baTile then Bitmap.DrawTo(FBuffer, R)
    else if (R.Right > 0) and (R.Bottom > 0) then
    begin
      Tx := Width div R.Right;
      Ty := Height div R.Bottom;
      for J := 0 to Ty do
        for I := 0 to Tx do
        begin
          TileRect := R;
          OffsetRect(TileRect, R.Right * I, R.Bottom * J);
          Bitmap.DrawTo(FBuffer, TileRect);
        end;
    end;
  finally
    Bitmap.Unlock;
  end;
  
  if csDesigning in ComponentState then
    DrawFocusRect(FBuffer.Handle, Rect(0, 0, Width, Height));
end;

procedure TCustomImage32.SetBitmap(Value: TBitmap32);
begin
  Changing;
  BeginUpdate;
  try
    FBitmap.Assign(Value);
  finally
    EndUpdate;
    Changed;
  end;
end;

procedure TCustomImage32.SetBitmapAlign(Value: TBitmapAlign);
begin
  if FBitmapAlign <> Value then
  begin
    Changing;
    FBitmapAlign := Value;
    Changed;
  end;
end;

procedure TCustomImage32.SetScale(Value: Extended);
begin
  if Value < 0.001 then Value := 0.001;
  if FScale <> Value then
  begin
    Changing;
    FScale := Value;
    Changed;
  end;
end;

procedure TCustomImage32.SetScaleMode(Value: TScaleMode);
begin
  if FScaleMode <> Value then
  begin
    Changing;
    FScaleMode := Value;
    Changed;
  end;
end;

procedure TCustomImage32.SetupBitmap(DoClear: Boolean; ClearColor: TColor32);
begin
  Changing;
  FBitmap.BeginUpdate;
  FBitmap.SetSize(Width, Height);
  if DoClear then FBitmap.Clear(ClearColor);
  FBitmap.EndUpdate;
  Changed;
end;

{ TBitmapItem }

procedure TBitmapItem.BeginUpdate;
begin
  Inc(FUpdateCount);
end;

procedure TBitmapItem.BitmapChanged(Sender: TObject);
begin
  Changed;
end;

procedure TBitmapItem.Changed;
begin
  if (FUpdateCount = 0) and Assigned(FOnChange) then FOnChange(Self);
end;

procedure TBitmapItem.Changing;
begin
  if (FUpdateCount = 0) and Assigned(FOnChanging) then FOnChanging(Self);
end;

constructor TBitmapItem.Create(Collection: TCollection);
begin
  inherited;
  FBitmap := TBitmap32.Create;
  FBitmap.OnChange := BitmapChanged;
end;

destructor TBitmapItem.Destroy;
begin
  FBitmap.Free;
  inherited;
end;

procedure TBitmapItem.EndUpdate;
begin
  Assert(FUpdateCount > 0, 'Unpaired TBitmapItem.EndUpdate');
  Dec(FUpdateCount);
end;

procedure TBitmapItem.SetBitmap(ABitmap: TBitmap32);
begin
  Changing;
  BeginUpdate;
  try
    if Assigned(ABitmap) then FBitmap.Assign(ABitmap)
    else FBitmap.SetSize(0, 0);
  finally
    EndUpdate;
    Changed;
  end;
end;


{ TBitmapCollection }

function TBitmapCollection.Add: TBitmapItem;
begin
  Result := TBitmapItem(inherited Add);
  Result.OnChange := ItemChanged;
  Result.OnChanging := ItemChanging;
end;

procedure TBitmapCollection.BeginUpdate;
begin
  Inc(FUpdateCount);
end;

procedure TBitmapCollection.Changed;
begin
  if (FUpdateCount = 0) and Assigned(FOnChange) then FOnChange(Self);
end;

procedure TBitmapCollection.Changing;
begin
  if (FUpdateCount = 0) and Assigned(FOnChanging) then FOnChanging(Self);
end;

constructor TBitmapCollection.Create(AOwner: TPersistent; ItemClass: TBitmapItemClass);
begin
  inherited Create(ItemClass);
  FOwner := AOwner;
end;

procedure TBitmapCollection.EndUpdate;
begin
  Assert(FUpdateCount = 0, 'Unpaired TBitmapCollection.EndUpdate');
  Dec(FUpdateCount);
end;

function TBitmapCollection.GetItem(Index: Integer): TBitmapItem;
begin
  Result := TBitmapItem(inherited GetItem(Index));
end;

function TBitmapCollection.GetOwner: TPersistent;
begin
  Result := FOwner;
end;

procedure TBitmapCollection.ItemChanged(Sender: TObject);
begin
  Changed;
end;

procedure TBitmapCollection.ItemChanging(Sender: TObject);
begin
  Changing;
end;

procedure TBitmapCollection.SetItem(Index: Integer; Value: TBitmapItem);
begin
  Changing;
  BeginUpdate;
  try
    inherited SetItem(Index, Value);
  finally
    EndUpdate;
    Changed;
  end;
end;


{ TBitmapList32 }

procedure TBitmapList32.CollectionChanged(Sender: TObject);
begin
  if Assigned(FOnChange) then FOnChange(Sender);
end;

procedure TBitmapList32.CollectionChanging(Sender: TObject);
begin
  if Assigned(FOnChange) then FOnChange(Sender);
end;

constructor TBitmapList32.Create(AOwner: TComponent);
begin
  inherited;
  FBitmapCollection := TBitmapCollection.Create(Self, TBitmapItem);
  FBitmapCollection.OnChanging := CollectionChanging;
  FBitmapCollection.OnChange := CollectionChanged;
end;

destructor TBitmapList32.Destroy;
begin
  FBitmapCollection.Free;
  inherited;
end;

procedure TBitmapList32.SetBitmapCollection(Value: TBitmapCollection);
begin
  FBitmapCollection := Value;
end;


{ TCustomLayer32 }

procedure TCustomLayer32.Changed;
begin
  inherited Changed;
  if Assigned(FOnChange) then FOnChange(Self);
end;

procedure TCustomLayer32.Changing;
begin
  if Assigned(FOnChanging) then FOnChanging(Self);
end;

constructor TCustomLayer32.Create(AOwner: TComponent);
begin
  inherited;
  ControlStyle := [csCaptureMouse, csClickEvents, csDoubleClicks];
  Width := 64;
  Height := 64;
end;

destructor TCustomLayer32.Destroy;
begin
  if GetCaptureControl = Self then SetCaptureControl(nil);
  inherited;
end;

procedure TCustomLayer32.Paint(Bitmap32: TBitmap32);
begin
  if csDesigning in ComponentState then
    with BoundsRect do
    begin
      Bitmap32.SetStipple([clBlack32, clBlack32, clWhite32, clWhite32]);
      Bitmap32.FrameRectTSP(Left, Top, Right - 1, Bottom - 1);
    end;
  if Assigned(FOnPaint) then FOnPaint(Self, Bitmap32);
end;

procedure TCustomLayer32.WMPaint(var Msg: TWMPaint);
begin
  if Parent is TCustomPaintBox32 then
  begin
    TCustomPaintBox32(Parent).FBuffer.BeginUpdate;
    Paint(TCustomPaintBox32(Parent).FBuffer);
    TCustomPaintBox32(Parent).FBuffer.EndUpdate;
  end
  else inherited;
end;


{ TBitmapLayer32 }

procedure TBitmapLayer32.BitmapChanged(Sender: TObject);
var
  W, H: Integer;
begin
  W := Bitmap.Width;
  H := Bitmap.Height;
  if AutoSize and not Bitmap.Empty then SetBounds(Left, Top, W, H);
  if Bitmap.Empty or (Bitmap.DrawMode <> dmOpaque) then
  begin
    if csOpaque in ControlStyle then
      ControlStyle := ControlStyle - [csOpaque];
  end
  else
  begin
    if not (csOpaque in ControlStyle) then
      ControlStyle := ControlStyle + [csOpaque]
  end;
  Invalidate;
  inherited Changed;
end;

procedure TBitmapLayer32.BitmapChanging(Sender: TObject);
begin
  if Assigned(FOnChanging) then FOnChanging(Self);
end;

function TBitmapLayer32.CanAutoSize(var NewWidth, NewHeight: Integer): Boolean;
var
  W, H: Integer;
begin
  Result := True;
  W := FBitmap.Width;
  H := FBitmap.Height;
  if not Bitmap.Empty then
  begin
    if Align in [alNone, alLeft, alRight] then NewWidth := W;
    if Align in [alNone, alTop, alBottom] then NewHeight := H;
  end;
end;

constructor TBitmapLayer32.Create(AOwner: TComponent);
begin
  inherited;
  FBitmap := TBitmap32.Create;
  FBitmap.OnChanging := BitmapChanging;
  FBitmap.OnChange := BitmapChanged;
end;

destructor TBitmapLayer32.Destroy;
begin
  FBitmap.Free;
  inherited;
end;

procedure TBitmapLayer32.Paint(Bitmap32: TBitmap32);
begin
  FBitmap.DrawTo(Bitmap32, BoundsRect);
  inherited;
end;

procedure TBitmapLayer32.SetBitmap(Value: TBitmap32);
begin
  FBitmap.Assign(Value);
end;


{ Scaling and aligning }

function BmpToImg(BmpW, BmpH, ImgW, ImgH: Integer;
  Align: TBitmapAlign; ScaleMode: TScaleMode; Scale: Extended): TRect;
var
  sx, sy: Extended;
  W, H: Integer;
begin
  Result := Rect(0, 0, 0, 0);
  if (ImgW = 0) or (ImgH = 0) or (BmpW = 0) or (BmpH = 0) then Exit;

  case ScaleMode of
    smNormal:
      begin
        W := BmpW;
        H := BmpH;
      end;

    smStretch:
      begin
        W := ImgW;
        H := ImgH;
      end;

    smResize:
      begin
        sx := ImgW / BmpW;
        sy := ImgH / BmpH;
        if sx >= sy then
        begin
          W := Round(BmpW * sy);
          H := ImgH;
        end
        else
        begin
          W := ImgW;
          H := Round(BmpH * sx);
        end;
      end;
  else // smScale:
    begin
      W := Round(BmpW * Scale);
      H := Round(BmpH * Scale);
    end;
  end; // case

  Result := Rect(0, 0, W, H);
  if Align = baCenter then
    OffsetRect(Result, (ImgW - W) div 2, (ImgH - H) div 2);
end;

end.
