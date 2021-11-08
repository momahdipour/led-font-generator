unit Graphics32Reg;

{**************************************************}
{  Graphics32 - Design time support                }
{  A Library for Fast 32-Bit Bitmap Manipulation   }
{  Copyright (c) 2000 Alex Denissov                }
{  Version: 0.98                                   }
{  Date: 17-May-2000                               }
{  See Licence.txt for license information         }
{**************************************************}

interface

{$I G32.INC}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Consts, Registry, ExtCtrls, StdCtrls, DesignIntf, DesignEditors, TypInfo, ExtDlgs, Clipbrd,
  ImgList, ComCtrls, ToolWin, Menus, Graphics32, Image32, Transform32,
  Filters32;

type
  TPictureEditorDlg = class(TForm)
    ToolBar1: TToolBar;
    Load: TToolButton;
    Save: TToolButton;
    ImageList: TImageList;
    Clear: TToolButton;
    ToolButton2: TToolButton;
    Copy: TToolButton;
    Paste: TToolButton;
    Timer: TTimer;
    PageControl: TPageControl;
    ImageSheet: TTabSheet;
    AlphaSheet: TTabSheet;
    OpenDialog: TOpenPictureDialog;
    SaveDialog: TSavePictureDialog;
    PopupMenu: TPopupMenu;
    mnSave: TMenuItem;
    mnSeparator: TMenuItem;
    mnCopy: TMenuItem;
    mnPaste: TMenuItem;
    mnClear: TMenuItem;
    Load1: TMenuItem;
    mnSeparator2: TMenuItem;
    mnInvert: TMenuItem;
    AlphaChannel: TImage32;
    RGBChannels: TImage32;
    Panel1: TPanel;
    OKButton: TButton;
    Cancel: TButton;
    StaticText1: TStaticText;
    MagnCombo: TComboBox;
    procedure LoadClick(Sender: TObject);
    procedure SaveClick(Sender: TObject);
    procedure ClearClick(Sender: TObject);
    procedure CopyClick(Sender: TObject);
    procedure PasteClick(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure PopupMenuPopup(Sender: TObject);
    procedure mnInvertClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MagnComboChange(Sender: TObject);
  protected
    function CurrentImage: TImage32;
  end;

  TBitmap32Editor = class(TComponent)
  private
    FBitmap32: TBitmap32;
    FPicDlg: TPictureEditorDlg;
    procedure SetBitmap32(Value: TBitmap32);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function Execute: Boolean;
    property Bitmap32: TBitmap32 read FBitmap32 write SetBitmap32;
  end;

  TBitmap32Property = class(TClassProperty)
  public
    procedure Edit; override;
    function GetAttributes: TPropertyAttributes; override;
    function GetValue: string; override;
    procedure SetValue(const Value: string); override;
{$IFDEF EXT_PROP_EDIT}
    procedure PropDrawValue(Canvas: TCanvas; const Rect: TRect; Selected: Boolean); override;
{$ENDIF}
  end;

  TImage32Editor = class(TComponentEditor)
  public
    procedure ExecuteVerb(Index: Integer); override;
    function GetVerb(Index: Integer): string; override;
    function GetVerbCount: Integer; override;
  end;

  TBitmapLayer32Editor = class(TComponentEditor)
  public
    procedure ExecuteVerb(Index: Integer); override;
    function GetVerb(Index: Integer): string; override;
    function GetVerbCount: Integer; override;
  end;

  { TColorManager }
  PColorEntry = ^TColorEntry;
  TColorEntry = record
    Name: string[31];
    Color: TColor32;
  end;

  TColorManager = class(TList)
  public
    destructor Destroy; override;
    procedure AddColor(AName: string; AColor: TColor32);
    procedure EnumColors(Proc: TGetStrProc);
    function FindColor(AName: string): TColor32;
    function GetColor(AName: string): TColor32;
    function GetColorName(AColor: TColor32): string;
    procedure RegisterDefaultColors;
    procedure RemoveColor(AName: string);
  end;

  { TColor32Property }
  TColor32Property = class(TIntegerProperty)
  public
    function GetAttributes: TPropertyAttributes; override;
    function GetValue: string; override;
    procedure GetValues(Proc: TGetStrProc); override;
    procedure SetValue(const Value: string); override;
{$IFDEF EXT_PROP_EDIT}
    procedure Edit; override;
    procedure ListDrawValue(const Value: string; ACanvas: TCanvas;
      const ARect: TRect; ASelected: Boolean); override;
    procedure PropDrawValue(ACanvas: TCanvas; const ARect: TRect;
      ASelected: Boolean); override;
{$ENDIF}
  end;

var
  ColorManager: TColorManager;

procedure RegisterColor(AName: string; AColor: TColor32);
procedure UnregisterColor(AName: string);

procedure Register;

implementation

{$R *.DFM}

{$IFDEF EXT_PROP_EDIT}
procedure TColor32Property.Edit;
var
  ColorDialog: TColorDialog;
  IniFile: TRegIniFile;

  procedure GetCustomColors;
  begin
    if BaseRegistryKey = '' then Exit;
    IniFile := TRegIniFile.Create(BaseRegistryKey);
    try
      IniFile.ReadSectionValues(SCustomColors, ColorDialog.CustomColors);
    except
      { Ignore errors while reading values }
    end;
  end;

  procedure SaveCustomColors;
  var
    I, P: Integer;
    S: string;
  begin
    if IniFile <> nil then
      with ColorDialog do
        for I := 0 to CustomColors.Count - 1 do
        begin
          S := CustomColors.Strings[I];
          P := Pos('=', S);
          if P <> 0 then
          begin
            S := Copy(S, 1, P - 1);
            IniFile.WriteString(SCustomColors, S, CustomColors.Values[S]);
          end;
        end;
  end;

begin
  IniFile := nil;
  ColorDialog := TColorDialog.Create(Application);
  try
    GetCustomColors;
    ColorDialog.Color := WinColor(GetOrdValue);
    ColorDialog.HelpContext := 25010;
    ColorDialog.Options := [cdShowHelp];
    if ColorDialog.Execute then
      SetOrdValue(Cardinal(Color32(ColorDialog.Color)));
    SaveCustomColors;
  finally
    IniFile.Free;
    ColorDialog.Free;
  end;
end;
{$ENDIF}

function TColor32Property.GetAttributes: TPropertyAttributes;
begin
  Result := [paMultiSelect, {$IFDEF EXT_PROP_EDIT}paDialog,{$ENDIF} paValueList,
  paRevertable];
end;

procedure TColor32Property.GetValues(Proc: TGetStrProc);
begin
  try
    ColorManager.EnumColors(Proc);
  except
    on E: Exception do ShowMessage(E.Message);
  end;
end;

function TColor32Property.GetValue: string;
begin
  try
    Result := ColorManager.GetColorName(Cardinal(GetOrdValue));
  except
    on E: Exception do ShowMessage(E.Message);
  end;
end;

procedure TColor32Property.SetValue(const Value: string);
begin
  try
    SetOrdValue(Cardinal(ColorManager.GetColor(Value)));
    Modified;
  except
    on E: Exception do ShowMessage(E.Message);
  end;
end;

{$IFDEF EXT_PROP_EDIT}
procedure TColor32Property.ListDrawValue(const Value: string; ACanvas: TCanvas;
  const ARect: TRect; ASelected: Boolean);
var
  Right: Integer;
  C: TColor32;
  i, j: Integer;
  W, H: Integer;
  Bitmap32: TBitmap32;
begin
  try
  Right := (ARect.Bottom - ARect.Top) + ARect.Left;
  ACanvas.FillRect(Rect(ARect.Left, ARect.Top, Right, ARect.Bottom));
  Bitmap32 := TBitmap32.Create;
  try
    Bitmap32.SetSize(Right - ARect.Left - 2, ARect.Bottom - ARect.Top - 2);
    if Assigned(ColorManager) then C := ColorManager.GetColor(Value)
    else C := clWhite32;
    W := Bitmap32.Width;
    H := Bitmap32.Height;
    if (W > 8) and (H > 8) then
    begin
      if C and $FF000000 = $FF000000 then
        Bitmap32.FillRect(0, 0, W - 1, H - 1, C)
      else // transparent
      begin
        for j := 0 to H - 1 do
          for i := 0 to W - 1 do
            if Odd(i div 3) = Odd(j div 3) then
              Bitmap32[i, j] := clBlack32
            else
              Bitmap32[i, j] := clWhite32;
      end;
      Bitmap32.FillRectT(0, 0, W - 1, H - 1, C);
    end;
    Bitmap32.FrameRectTS(0, 0, W - 1, H - 1, $DF000000);
    Bitmap32.RaiseRectTS(1, 1, W - 2, H - 2, 20);
    Bitmap32.DrawTo(ACanvas.Handle, ARect.Left + 1, ARect.Top + 1);
  finally
    Bitmap32.Free;
    inherited ListDrawValue(Value, ACanvas,
      Rect(Right, ARect.Top, ARect.Right, ARect.Bottom), ASelected);
  end;
  except
    on E: Exception do ShowMessage(E.Message);
  end;
end;

procedure TColor32Property.PropDrawValue(ACanvas: TCanvas; const ARect: TRect;
  ASelected: Boolean);
begin
  if GetVisualValue <> '' then ListDrawValue(GetVisualValue, ACanvas, ARect, True)
  else inherited PropDrawValue(ACanvas, ARect, ASelected);
end;
{$ENDIF}


{ TPictureEditorDlg }

procedure TPictureEditorDlg.LoadClick(Sender: TObject);
var
  Picture: TPicture;
begin
  if OpenDialog.Execute then
  begin
    Picture := TPicture.Create;
    Picture.LoadFromFile(OpenDialog.Filename);
    with CurrentImage do
    begin
      Bitmap.Assign(Picture);
      if CurrentImage = AlphaChannel then ColorToGrayscale(Bitmap, Bitmap);
    end;
  end;
end;

procedure TPictureEditorDlg.SaveClick(Sender: TObject);
var
  Picture: TPicture;
begin
  Picture := TPicture.Create;
  try
    Picture.Bitmap.Assign(CurrentImage.Bitmap);

    if Picture.Graphic <> nil then
    begin
      with SaveDialog do
      begin
        DefaultExt := GraphicExtension(TGraphicClass(Picture.Graphic.ClassType));
        Filter := GraphicFilter(TGraphicClass(Picture.Graphic.ClassType));
        if Execute then Picture.SaveToFile(Filename);
      end;
    end;
  finally
    Picture.Free;
  end;
end;

procedure TPictureEditorDlg.ClearClick(Sender: TObject);
begin
  CurrentImage.Bitmap.Delete;
end;

procedure TPictureEditorDlg.CopyClick(Sender: TObject);
begin
  Clipboard.Assign(CurrentImage.Bitmap);
end;

procedure TPictureEditorDlg.PasteClick(Sender: TObject);
begin
  if Clipboard.HasFormat(CF_BITMAP) or Clipboard.HasFormat(CF_PICTURE) then
    CurrentImage.Bitmap.Assign(Clipboard);
  if CurrentImage = AlphaChannel then
    ColorToGrayscale(CurrentImage.Bitmap, CurrentImage.Bitmap);
end;

procedure TPictureEditorDlg.TimerTimer(Sender: TObject);
begin
  Save.Enabled := not CurrentImage.Bitmap.Empty;
  Clear.Enabled := Save.Enabled;
  Copy.Enabled := Save.Enabled;
  Paste.Enabled := Clipboard.HasFormat(CF_BITMAP) or Clipboard.HasFormat(CF_PICTURE);
end;

function TPictureEditorDlg.CurrentImage: TImage32;
begin
  if PageControl.ActivePage = ImageSheet then Result := RGBChannels
  else Result := AlphaChannel;
end;

procedure TPictureEditorDlg.PopupMenuPopup(Sender: TObject);
begin
  mnSave.Enabled := not CurrentImage.Bitmap.Empty;
  mnClear.Enabled := Save.Enabled;
  mnCopy.Enabled := Save.Enabled;
  mnInvert.Enabled := Save.Enabled;
  mnPaste.Enabled := Clipboard.HasFormat(CF_BITMAP) or Clipboard.HasFormat(CF_PICTURE);
end;

procedure TPictureEditorDlg.mnInvertClick(Sender: TObject);
begin
  InvertRGB(CurrentImage.Bitmap, CurrentImage.Bitmap);
end;

procedure TPictureEditorDlg.FormCreate(Sender: TObject);
begin
  MagnCombo.ItemIndex := 2;
end;

procedure TPictureEditorDlg.MagnComboChange(Sender: TObject);
const
  MAGN: array[0..6] of Integer = (25, 50, 100, 200, 400, 800, -1);
var
  S: Integer;
begin
  S := MAGN[MagnCombo.ItemIndex];
  if S = -1 then
  begin
    RGBChannels.ScaleMode := smResize;
    AlphaChannel.ScaleMode := smResize;
  end
  else
  begin
    RGBChannels.ScaleMode := smScale;
    RGBChannels.Scale := S / 100;
    AlphaChannel.ScaleMode := smScale;
    AlphaChannel.Scale := S / 100;
  end;
end;



{ TBitmap32Editor }

constructor TBitmap32Editor.Create(AOwner: TComponent);
begin
  inherited;
  FBitmap32 := TBitmap32.Create;
  FPicDlg := TPictureEditorDlg.Create(Self);
end;

destructor TBitmap32Editor.Destroy;
begin
  FBitmap32.Free;
  inherited;
end;

function TBitmap32Editor.Execute: Boolean;
var
  B: TBitmap32;
begin
  FPicDlg.RGBChannels.Bitmap := FBitmap32;
  AlphaToGrayscale(FPicDlg.AlphaChannel.Bitmap, FBitmap32);
  Result := (FPicDlg.ShowModal = mrOK);
  if Result then
  begin
    FBitmap32.Assign(FPicDlg.RGBChannels.Bitmap);
    FBitmap32.ResetAlpha;
    if not FBitmap32.Empty and not FPicDlg.AlphaChannel.Bitmap.Empty then
    begin
      B := TBitmap32.Create;
      try
        B.SetSize(FBitmap32.Width, FBitmap32.Height);
        FPicDlg.AlphaChannel.Bitmap.DrawTo(B, Rect(0, 0, B.Width, B.Height));
        IntensityToAlpha(FBitmap32, B);
      finally
        B.Free;
      end;
    end;
  end;
end;

procedure TBitmap32Editor.SetBitmap32(Value: TBitmap32);
begin
  try
  FBitmap32.Assign(Value);
  except
    on E: Exception do ShowMessage(E.Message);
  end;
end;

{ TBitmap32Property }

procedure TBitmap32Property.Edit;
var
  BitmapEditor: TBitmap32Editor;
begin
  try
    BitmapEditor := TBitmap32Editor.Create(nil);
    try
      BitmapEditor.Bitmap32 := TBitmap32(Pointer(GetOrdValue));
      if BitmapEditor.Execute then
        SetOrdValue(Longint(BitmapEditor.Bitmap32));
    finally
      BitmapEditor.Free;
    end;
  except
    on E: Exception do ShowMessage(E.Message);
  end;
end;

function TBitmap32Property.GetAttributes: TPropertyAttributes;
begin
  Result := [paDialog, paSubProperties];
end;

function TBitmap32Property.GetValue: string;
var
  Bitmap: TBitmap32;
begin
  try
    Bitmap := TBitmap32(GetOrdValue);
    if (Bitmap = nil) or Bitmap.Empty then Result := srNone
    else Result := (Bitmap.ClassName);
  except
    on E: Exception do ShowMessage(E.Message);
  end;
end;

{$IFDEF EXT_PROP_EDIT}
procedure TBitmap32Property.PropDrawValue(Canvas: TCanvas;
  const Rect: TRect; Selected: Boolean);
var
  Bitmap32: TBitmap32;
  R: TRect;
begin
  Bitmap32 := TBitmap32(GetOrdValue);
  if Bitmap32.Empty then inherited
  else
  begin
    R := Rect;
    R.Right := R.Left + R.Bottom - R.Top;
    Bitmap32.DrawTo(Canvas.Handle, R, Classes.Rect(0, 0, Bitmap32.Width, Bitmap32.Height));
    R.Left := R.Right;
    R.Right := Rect.Right;
    inherited PropDrawValue(Canvas, R, Selected);
  end;
end;
{$ENDIF}

procedure TBitmap32Property.SetValue(const Value: string);
begin
  if Value = '' then SetOrdValue(0);
end;

{ TImage32Editor }

procedure TImage32Editor.ExecuteVerb(Index: Integer);
var
  Img: TCustomImage32;
  BitmapEditor: TBitmap32Editor;
begin
  Img := Component as TCustomImage32;
  if Index = 0 then
  begin
    BitmapEditor := TBitmap32Editor.Create(nil);
    try
      BitmapEditor.Bitmap32 := Img.Bitmap;
      if BitmapEditor.Execute then
      begin
        Img.Bitmap := BitmapEditor.Bitmap32;
      end;
    finally
      BitmapEditor.Free;
    end;
  end;
end;

function TImage32Editor.GetVerb(Index: Integer): string;
begin
  if Index = 0 then Result := 'Bitmap32 Editor...';
end;

function TImage32Editor.GetVerbCount: Integer;
begin
  Result := 1;
end;


{ TBitmapLayer32Editor }

procedure TBitmapLayer32Editor.ExecuteVerb(Index: Integer);
var
  Layer: TBitmapLayer32;
  BitmapEditor: TBitmap32Editor;
begin
  Layer := Component as TBitmapLayer32;
  if Index = 0 then
  begin
    BitmapEditor := TBitmap32Editor.Create(nil);
    try
      Layer.Changing;
      BitmapEditor.Bitmap32 := Layer.Bitmap;
      if BitmapEditor.Execute then
      begin
        Layer.Bitmap := BitmapEditor.Bitmap32;
      end;
      Layer.Changed;
    finally
      BitmapEditor.Free;
    end;
  end;
end;

function TBitmapLayer32Editor.GetVerb(Index: Integer): string;
begin
  if Index = 0 then Result := 'BitmapLayer32 Editor...';
end;

function TBitmapLayer32Editor.GetVerbCount: Integer;
begin
  Result := 1;
end;


{ TColorManager }

function TColorManager.FindColor(AName: string): TColor32;
var
  I: Integer;
begin
  Result := clBlack32;
  for I := 0 to Count - 1 do
    with TColorEntry(Items[I]^) do
      if Name = AName then
      begin
        Result := Color;
        Break;
      end;
end;

function TColorManager.GetColor(AName: string): TColor32;
var
  S: string;

  function HexToClr(const HexStr: string): Cardinal;
  var
    I: Integer;
    C: Char;
  begin
    Result := 0;
    for I := 1 to Length(HexStr) do
    begin
      C := HexStr[I];
      case C of
        '0'..'9': Result := Int64(16) * Result + (Ord(C) - $30);
        'A'..'F': Result := Int64(16) * Result + (Ord(C) - $37);
        'a'..'f': Result := Int64(16) * Result + (Ord(C) - $57);
      else
        raise EConvertError.Create('Illegal character in hex string');
      end;
    end;
  end;

begin
  S := Trim(AName);
  if S[1] = '$' then S := Copy(S, 2, Length(S) - 1);
  if (S[1] = 'c') and (S[2] = 'l') then Result := FindColor(S)
  else
  try
    Result := HexToClr(S);
  except
    Result := clBlack32;
  end;
end;

function TColorManager.GetColorName(AColor: TColor32): string;
var
  I: Integer;
begin
  for I := 0 to Count - 1 do
    with TColorEntry(Items[I]^) do
      if Color = AColor then
      begin
        Result := TColorEntry(Items[I]^).Name;
        Exit;
      end;
  Result := '$' + IntToHex(AColor, 8);
end;

destructor TColorManager.Destroy;
var
  I: Integer;
begin
  for I := 0 to Count - 1 do FreeMem(Items[I], SizeOf(TColorEntry));
  inherited;
end;

procedure TColorManager.AddColor(AName: string; AColor: TColor32);
var
  NewEntry: PColorEntry;
begin
  New(NewEntry);
  if NewEntry = nil then
    raise Exception.Create('Could not allocate memory for color registration!');
  with NewEntry^ do
  begin
    Name := AName;
    Color := AColor;
  end;
  Add(NewEntry);
end;

procedure TColorManager.EnumColors(Proc: TGetStrProc);
var
  I: Integer;
begin
  for I := 0 to Count - 1 do Proc(TColorEntry(Items[I]^).Name);
end;

procedure TColorManager.RegisterDefaultColors;
begin
  Capacity := 50;
  AddColor('clBlack32',              clBlack32);
  AddColor('clDimGray32',            clDimGray32);
  AddColor('clGray32',               clGray32);
  AddColor('clLightGray32',          clLightGray32);
  AddColor('clWhite32',              clWhite32);
  AddColor('clMaroon32',             clMaroon32);
  AddColor('clGreen32',              clGreen32);
  AddColor('clOlive32',              clOlive32);
  AddColor('clNavy32',               clNavy32);
  AddColor('clPurple32',             clPurple32);
  AddColor('clTeal32',               clTeal32);
  AddColor('clRed32',                clRed32);
  AddColor('clLime32',               clLime32);
  AddColor('clYellow32',             clYellow32);
  AddColor('clBlue32',               clBlue32);
  AddColor('clFuchsia32',            clFuchsia32);
  AddColor('clAqua32',               clAqua32);

  AddColor('clTrWhite32',            clTrWhite32);
  AddColor('clTrBlack32',            clTrBlack32);
  AddColor('clTrRed32',              clTrRed32);
  AddColor('clTrGreen32',            clTrGreen32);
  AddColor('clTrBlue32',             clTrBlue32);
end;

procedure TColorManager.RemoveColor(AName: string);
var
  I: Integer;
begin
  for I := 0 to Count - 1 do
    if CompareText(TColorEntry(Items[I]^).Name, AName) = 0 then
    begin
      Delete(I);
      Break;
    end;
end;

procedure RegisterColor(AName: string; AColor: TColor32);
begin
  ColorManager.AddColor(AName, AColor);
end;

procedure UnregisterColor(AName: string);
begin
  ColorManager.RemoveColor(AName);
end;


{ Registration }
procedure Register;
begin
  RegisterComponents('Graphics32', [TPaintBox32, TImage32, TBitmapList32,
    TLayer32, TBitmapLayer32]);
  RegisterPropertyEditor(TypeInfo(TColor32), nil, '', TColor32Property);
  RegisterPropertyEditor(TypeInfo(TBitmap32), nil, '', TBitmap32Property);
  RegisterComponentEditor(TCustomImage32, TImage32Editor);
  RegisterComponentEditor(TBitmapLayer32, TBitmapLayer32Editor);
end;

initialization
  ColorManager := TColorManager.Create;
  ColorManager.RegisterDefaultColors;

finalization
  ColorManager.Free;

end.
