unit D7ColorBox;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, ExtCtrls, Graphics, Types, Windows,
  Dialogs, Consts;

type
  TD7CustomColorBox = class(TCustomComboBox)
  private
    FStyle: TColorBoxStyle;
    FNeedToPopulate: Boolean;
    FListSelected: Boolean;
    FDefaultColorColor: TColor;
    FNoneColorColor: TColor;
    FSelectedColor: TColor;
    FOldItemIndex: Integer;
    function GetColor(Index: Integer): TColor;
    function GetColorName(Index: Integer): string;
    function GetSelected: TColor;
    procedure SetSelected(const AColor: TColor);
    procedure ColorCallBack(const AName: string);
    procedure SetDefaultColorColor(const Value: TColor);
    procedure SetNoneColorColor(const Value: TColor);
  protected
    procedure CloseUp; override;
    procedure CreateWnd; override;
    procedure DrawItem(Index: Integer; Rect: TRect; State: TOwnerDrawState); override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyPress(var Key: Char); override;
    procedure Loaded; override;
    function PickCustomColor: Boolean; virtual;
    procedure PopulateList;
    procedure Select; override;
    procedure SetStyle(AStyle: TColorBoxStyle); reintroduce;
  public
    constructor Create(AOwner: TComponent); override;
    property Style: TColorBoxStyle read FStyle write SetStyle
      default [cbStandardColors, cbExtendedColors, cbSystemColors];
    property Colors[Index: Integer]: TColor read GetColor;
    property ColorNames[Index: Integer]: string read GetColorName;
    property Selected: TColor read GetSelected write SetSelected default clBlack;
    property DefaultColorColor: TColor read FDefaultColorColor write SetDefaultColorColor default clBlack;
    property NoneColorColor: TColor read FNoneColorColor write SetNoneColorColor default clBlack;
  end;

  TD7ColorBox = class(TD7CustomColorBox)
  published
    property AutoComplete;
    property AutoDropDown;
    property DefaultColorColor;
    property NoneColorColor;
    property Selected;
    property Style;

    property Anchors;
    property BevelEdges;
    property BevelInner;
    property BevelKind;
    property BevelOuter;
    property BiDiMode;
    property Color;
    property Constraints;
    property Ctl3D;
    property DropDownCount;
    property Enabled;
    property Font;
    property ItemHeight;
    property ParentBiDiMode;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property Visible;
    property OnChange;
    property OnCloseUp;
    property OnClick;
    property OnContextPopup;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnDropDown;
    property OnEndDock;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnSelect;
    property OnStartDock;
    property OnStartDrag;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('[LCD Designer]', [TD7ColorBox]);
end;

{ TD7CustomColorBox }

procedure TD7CustomColorBox.CloseUp;
begin
  inherited CloseUp;
  FListSelected := True;
end;

resourcestring
  clNameBlack = 'Black';
  clNameMaroon = 'Maroon';
  clNameGreen = 'Green';
  clNameOlive = 'Olive';
  clNameNavy = 'Navy';
  clNamePurple = 'Purple';
  clNameTeal = 'Teal';
  clNameGray = 'Gray';
  clNameSilver = 'Silver';
  clNameRed = 'Red';
  clNameLime = 'Lime';
  clNameYellow = 'Yellow';
  clNameBlue = 'Blue';
  clNameFuchsia = 'Fuchsia';
  clNameAqua = 'Aqua';
  clNameWhite = 'White';
  clNameMoneyGreen = 'Money Green';
  clNameSkyBlue = 'Sky Blue';
  clNameCream = 'Cream';
  clNameMedGray = 'Medium Gray';
  clNameActiveBorder = 'Active Border';
  clNameActiveCaption = 'Active Caption';
  clNameAppWorkSpace = 'Application Workspace';
  clNameBackground = 'Background';
  clNameBtnFace = 'Button Face';
  clNameBtnHighlight = 'Button Highlight';
  clNameBtnShadow = 'Button Shadow';
  clNameBtnText = 'Button Text';
  clNameCaptionText = 'Caption Text';
  clNameDefault = 'Default';
  clNameGradientActiveCaption = 'Gradient Active Caption';
  clNameGradientInactiveCaption = 'Gradient Inactive Caption';
  clNameGrayText = 'Gray Text';
  clNameHighlight = 'Highlight Background';
  clNameHighlightText = 'Highlight Text';
  clNameInactiveBorder = 'Inactive Border';
  clNameInactiveCaption = 'Inactive Caption';
  clNameInactiveCaptionText = 'Inactive Caption Text';
  clNameInfoBk = 'Info Background';
  clNameInfoText = 'Info Text';
  clNameMenu = 'Menu Background';
  clNameMenuText = 'Menu Text';
  clNameNone = 'None';
  clNameScrollBar = 'Scroll Bar';
  clName3DDkShadow = '3D Dark Shadow';
  clName3DLight = '3D Light';
  clNameWindow = 'Window Background';
  clNameWindowFrame = 'Window Frame';
  clNameWindowText = 'Window Text';
  

const
  ColorToPretyName: array[0..46] of TIdentMapEntry = (
    (Value: clBlack; Name: clNameBlack),
    (Value: clMaroon; Name: clNameMaroon),
    (Value: clGreen; Name: clNameGreen),
    (Value: clOlive; Name: clNameOlive),
    (Value: clNavy; Name: clNameNavy),
    (Value: clPurple; Name: clNamePurple),
    (Value: clTeal; Name: clNameTeal),
    (Value: clGray; Name: clNameGray),
    (Value: clSilver; Name: clNameSilver),
    (Value: clRed; Name: clNameRed),
    (Value: clLime; Name: clNameLime),
    (Value: clYellow; Name: clNameYellow),
    (Value: clBlue; Name: clNameBlue),
    (Value: clFuchsia; Name: clNameFuchsia),
    (Value: clAqua; Name: clNameAqua),
    (Value: clWhite; Name: clNameWhite),
    (Value: clMoneyGreen; Name: clNameMoneyGreen),
    (Value: clSkyBlue; Name: clNameSkyBlue),
    (Value: clCream; Name: clNameCream),
    (Value: clMedGray; Name: clNameMedGray),

    (Value: clActiveBorder; Name: clNameActiveBorder),
    (Value: clActiveCaption; Name: clNameActiveCaption),
    (Value: clAppWorkSpace; Name: clNameAppWorkSpace),
    (Value: clBackground; Name: clNameBackground),
    (Value: clBtnFace; Name: clNameBtnFace),
    (Value: clBtnHighlight; Name: clNameBtnHighlight),
    (Value: clBtnShadow; Name: clNameBtnShadow),
    (Value: clBtnText; Name: clNameBtnText),
    (Value: clCaptionText; Name: clNameCaptionText),
    (Value: clDefault; Name: clNameDefault),
    (Value: clGrayText; Name: clNameGrayText),
    (Value: clHighlight; Name: clNameHighlight),
    (Value: clHighlightText; Name: clNameHighlightText),
    (Value: clInactiveBorder; Name: clNameInactiveBorder),
    (Value: clInactiveCaption; Name: clNameInactiveCaption),
    (Value: clInactiveCaptionText; Name: clNameInactiveCaptionText),
    (Value: clInfoBk; Name: clNameInfoBk),
    (Value: clInfoText; Name: clNameInfoText),
    (Value: clMenu; Name: clNameMenu),
    (Value: clMenuText; Name: clNameMenuText),
    (Value: clNone; Name: clNameNone),
    (Value: clScrollBar; Name: clNameScrollBar),
    (Value: cl3DDkShadow; Name: clName3DDkShadow),
    (Value: cl3DLight; Name: clName3DLight),
    (Value: clWindow; Name: clNameWindow),
    (Value: clWindowFrame; Name: clNameWindowFrame),
    (Value: clWindowText; Name: clNameWindowText) );

procedure TD7CustomColorBox.ColorCallBack(const AName: String);
var
  I, LStart: Integer;
  LColor: TColor;
  LName: string;
begin
  LColor := StringToColor(AName);
  if cbPrettyNames in Style then
  begin
    if not IntToIdent(LColor, LName, ColorToPretyName) then
    begin
      if Copy(AName, 1, 2) = 'cl' then
        LStart := 3
      else
        LStart := 1;
      LName := '';
      for I := LStart to Length(AName) do
      begin
        case AName[I] of
          'A'..'Z':
            if LName <> '' then
              LName := LName + ' ';
        end;
        LName := LName + AName[I];
      end;
    end;
  end
  else
    LName := AName;
  Items.AddObject(LName, TObject(LColor));
end;

constructor TD7CustomColorBox.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  inherited Style := csOwnerDrawFixed;
  FStyle := [cbStandardColors, cbExtendedColors, cbSystemColors];
  FSelectedColor := clBlack;
  FDefaultColorColor := clBlack;
  FNoneColorColor := clBlack;
  PopulateList;
end;

procedure TD7CustomColorBox.CreateWnd;
begin
  inherited CreateWnd;
  if FNeedToPopulate then
    PopulateList;
end;

procedure TD7CustomColorBox.DrawItem(Index: Integer; Rect: TRect;
  State: TOwnerDrawState);

  function ColorToBorderColor(AColor: TColor): TColor;
  type
    TColorQuad = record
      Red,
      Green,
      Blue,
      Alpha: Byte;
    end;
  begin
    if (TColorQuad(AColor).Red > 192) or
       (TColorQuad(AColor).Green > 192) or
       (TColorQuad(AColor).Blue > 192) then
      Result := clBlack
    else if odSelected in State then
      Result := clWhite
    else
      Result := AColor;
  end;

var
  LRect: TRect;
  LBackground: TColor;
begin
  with Canvas do
  begin
    FillRect(Rect);
    LBackground := Brush.Color;

    LRect := Rect;
    LRect.Right := LRect.Bottom - LRect.Top + LRect.Left;
    InflateRect(LRect, -1, -1);
    Brush.Color := Colors[Index];
    if Brush.Color = clDefault then
      Brush.Color := DefaultColorColor
    else if Brush.Color = clNone then
      Brush.Color := NoneColorColor;
    FillRect(LRect);
    Brush.Color := ColorToBorderColor(ColorToRGB(Brush.Color));
    FrameRect(LRect);

    Brush.Color := LBackground;
    Rect.Left := LRect.Right + 5;

    TextRect(Rect, Rect.Left,
      Rect.Top + (Rect.Bottom - Rect.Top - TextHeight(Items[Index])) div 2,
      Items[Index]);
  end;
end;

function TD7CustomColorBox.GetColor(Index: Integer): TColor;
begin
  Result := TColor(Items.Objects[Index]);
end;

function TD7CustomColorBox.GetColorName(Index: Integer): string;
begin
  Result := Items[Index];
end;

function TD7CustomColorBox.GetSelected: TColor;
begin
  if HandleAllocated then
    if ItemIndex <> -1 then
      Result := Colors[ItemIndex]
    else
      Result := NoColorSelected
  else
    Result := FSelectedColor;
end;

procedure TD7CustomColorBox.KeyDown(var Key: Word; Shift: TShiftState);
begin
  FListSelected := False;
  inherited KeyDown(Key, Shift);
end;

procedure TD7CustomColorBox.KeyPress(var Key: Char);
begin
  inherited KeyPress(Key);
  if (cbCustomColor in Style) and (Key = #13) and (ItemIndex = 0) then
  begin
    { If the user picked a custom color, force a select event to happen
      so the user can handle it }
    if PickCustomColor and Assigned(OnSelect)then
      OnSelect(Self);
    Key := #0;
  end;
end;

procedure TD7CustomColorBox.Loaded;
begin
  inherited;
  Selected := FSelectedColor;
end;

function TD7CustomColorBox.PickCustomColor: Boolean;
var
  LColor: TColor;
begin
  with TColorDialog.Create(nil) do
    try
      LColor := ColorToRGB(TColor(Items.Objects[0]));
      Color := LColor;
      CustomColors.Text := Format('ColorA=%.8x', [LColor]);
      Result := Execute;
      if Result then
      begin
        Items.Objects[0] := TObject(Color);
        Self.Invalidate;
      end;
    finally
      Free;
    end;
end;

procedure TD7CustomColorBox.PopulateList;
  procedure DeleteRange(const AMin, AMax: Integer);
  var
    I: Integer;
  begin
    for I := AMax downto AMin do
      Items.Delete(I);
  end;
  procedure DeleteColor(const AColor: TColor);
  var
    I: Integer;
  begin
    I := Items.IndexOfObject(TObject(AColor));
    if I <> -1 then
      Items.Delete(I);
  end;
var
  LSelectedColor, LCustomColor: TColor;
begin
  if HandleAllocated then
  begin
    Items.BeginUpdate;
    try
      LCustomColor := clBlack;
      if (cbCustomColor in Style) and (Items.Count > 0) then
        LCustomColor := TColor(Items.Objects[0]);
      LSelectedColor := FSelectedColor;
      Items.Clear;
      GetColorValues(ColorCallBack);
      if not (cbIncludeNone in Style) then
        DeleteColor(clNone);
      if not (cbIncludeDefault in Style) then
        DeleteColor(clDefault);
      if not (cbSystemColors in Style) then
        DeleteRange(StandardColorsCount + ExtendedColorsCount, Items.Count - 1);
      if not (cbExtendedColors in Style) then
        DeleteRange(StandardColorsCount, StandardColorsCount + ExtendedColorsCount - 1);
      if not (cbStandardColors in Style) then
        DeleteRange(0, StandardColorsCount - 1);
      if cbCustomColor in Style then
        Items.InsertObject(0, SColorBoxCustomCaption, TObject(LCustomColor));
      Selected := LSelectedColor;
    finally
      Items.EndUpdate;
      FNeedToPopulate := False;
    end;
  end
  else
    FNeedToPopulate := True;
end;

procedure TD7CustomColorBox.Select;
begin
  if FListSelected then
  begin
    FListSelected := False;
    if (cbCustomColor in Style) and
       (ItemIndex = 0) then
    begin
      if not PickCustomColor then
      begin
        Self.ItemIndex := FOldItemIndex;
        Self.Invalidate;
        Exit;
      end;
    end;
  end;
  FOldItemIndex := Self.ItemIndex;
  inherited Select;
end;

procedure TD7CustomColorBox.SetDefaultColorColor(const Value: TColor);
begin
  if Value <> FDefaultColorColor then
  begin
    FDefaultColorColor := Value;
    Invalidate;
  end;
end;

procedure TD7CustomColorBox.SetNoneColorColor(const Value: TColor);
begin
  if Value <> FNoneColorColor then
  begin
    FNoneColorColor := Value;
    Invalidate;
  end;
end;

procedure TD7CustomColorBox.SetSelected(const AColor: TColor);
var
  I, Index: Integer;
begin
//  if HandleAllocated then  --> HandleAllocated has a bug (returns False when the language is switched to Farsi)
//  begin
    I := Items.IndexOfObject(TObject(AColor));
    if (I = -1) and (cbCustomColor in Style) and (AColor <> NoColorSelected) then
    begin
      Items.Objects[0] := TObject(AColor);
      I := 0;
    end
    else if (cbCustomColor in Style) and (I = 0) then
    begin
      { Look for the color anywhere else but the first color before
        defaulting to selecting the "custom color". }
      for Index := 1 to Items.Count - 1 do
      begin
        if Items.Objects[Index] = TObject(AColor) then
        begin
          I := Index;
          Break;
        end;
      end;
    end;
    ItemIndex := I;
    FOldItemIndex := ItemIndex;
//  end;
  FSelectedColor := AColor;
end;

procedure TD7CustomColorBox.SetStyle(AStyle: TColorBoxStyle);
begin
  if AStyle <> Style then
  begin
    FStyle := AStyle;
    Enabled := ([cbStandardColors, cbExtendedColors, cbSystemColors, cbCustomColor] * FStyle) <> [];
    PopulateList;
    if (Items.Count > 0) and (ItemIndex = -1) then
    begin
      ItemIndex := 0;
      FOldItemIndex := ItemIndex;
    end;
  end;
end;

end.
