unit ImportGraphicsFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Grids, BaseGrid,
  AdvGrid, Buttons, ExtDlgs, Jpeg, TntButtons, PopupSpinEdit, TntStdCtrls,
  TntComCtrls, AdvancedNumEdit, TntDelayedTrackBar, TntCancelDialog,
  TntDialogs, ProcsUnit, TntExtDlgs, TntSystem, Language, Clipbrd, TntForms,
  SoundDialogs, MMAdvancedGrid;

const
  STATIC_LANG_RESID_START_NUM = 2500;
  DYNAMIC_LANG_RESID_START_NUM = 2750;
  DYNAMIC_TEXTS_COUNT = 4;

  MAX_SELECT_BEST_COLOR_OPERATION_TIME = 3;  //Seconds

resourcestring
  OpenPictureFilter = 'All Pictures (*.bmp;*.dib;*.jpg;*.jpeg;*.gif;*.tif;*.tiff;*.pcx)|*.bmp;*.dib;*.jpg;*.jpeg;*.gif;*.tif;*.tiff;*.pcx|' +
                      'Bitmaps (*.bmp;*.dib)|*.bmp;*.dib|JPEG Image Files (*.jpg;*.jpeg)|*.jpg;*.jpeg|' +
                      'CompuServe images (*.gif)|*.gif|TIFF images (*.tif;*.tiff)|*.tif;*.tiff|' +
                      'ZSoft PCX images (*.pcx)|*.pcx';

type
  TImportGraphicsFormSettings=record
    PreviewZoomValue:Integer;
    ShowPreviewGridLines:Boolean;
    FormWidth, FormHeight:Integer;
    SourceSectionWidth:Integer;
    ScaleFactor: Integer;
    ColorTolerance: Integer;
    ImportOnlySelection: Boolean;
  end;
  TImportGraphicsForm = class(TTntForm)
    BottomPanel: TPanel;
    TopPanel: TPanel;
    SectionSplitter: TSplitter;
    SourceSection: TTntGroupBox;
    ScrollBox1: TScrollBox;
    PreviewImage: TImage;
    Panel1: TPanel;
    ScalePictureLabel: TTntLabel;
    ForegroundColorGroup: TTntGroupBox;
    ForegroundColorLabel: TLabel;
    ToleranceBtn: TPopupSpinEdit;
    ImportPictureBtn: TTntBitBtn;
    ScalePictureNumEdit: TAdvancedNumEdit;
    ScalePictureTrackbar: TTntDelayedTrackBar;
    PreviewSection: TTntGroupBox;
    Panel6: TPanel;
    PreviewZoomLabel: TTntLabel;
    PreviewGridZoomTrackbar: TTrackBar;
    PreviewOptionsGroup: TTntGroupBox;
    InvertLCDCheck: TTntCheckBox;
    PreviewGridLinesCheck: TTntCheckBox;
    PreviewStatusBar: TStatusBar;
    InsertAsLCDBtn: TTntBitBtn;
    InsertAtCursorBtn: TTntBitBtn;
    CloseBtn: TTntBitBtn;
    ColorDialog1: TColorDialog;
    OpenPictureDialog1: TTntOpenPictureDialog;
    ImportFromClipboardBtn: TTntBitBtn;
    Bevel4: TBevel;
    OnlySelectionCheck: TTntCheckBox;
    PreviewGrid: TMMAdvancedGrid;
    procedure ImportPictureBtnClick(Sender: TObject);
    procedure PreviewGridLinesCheckClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure InsertAsLCDBtnClick(Sender: TObject);
    procedure SectionSplitterMoved(Sender: TObject);
    procedure SectionSplitterCanResize(Sender: TObject; var NewSize: Integer;
      var Accept: Boolean);
    procedure InsertAtCursorBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ScalePictureNumEditMaskedChange(Sender: TObject);
    procedure PreviewGridZoomTrackbarChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PreviewImageMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure InvertLCDCheckClick(Sender: TObject);
    procedure ScalePictureTrackbarDelayedChange(Sender: TObject);
    procedure ScalePictureTrackbarChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ToleranceBtnDelayedChange(Sender: TObject);
    procedure ForegroundColorLabelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ImportFromClipboardBtnClick(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure OnlySelectionCheckClick(Sender: TObject);
    procedure PreviewGridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure PreviewGridSelectionChanged(Sender: TObject; ALeft, ATop,
      ARight, ABottom: Integer);
  private
    { Private declarations }
    SelectBestColorOperationTime:Integer;
    SourceBitmap: TBitmap;
    CancelDialog: TTntCancelDialog;
    ConversionCancelled: Boolean;
    Converting: Boolean;
    FullyConverted: Boolean;
    LastSelectedArea: TGridRect;
    PreviewGridSelection: TGridRect;

    ClipboardPictureFormat: Word;

    //Multilanguage
    Dyn_Texts: array[1..DYNAMIC_TEXTS_COUNT] of WideString;
    ControlsFlipped: Boolean;
    procedure SetDynamicTexts(LangInstance: THandle);
    ///////////////

    procedure BitmapToLCD(Bitmap:TBitmap;BackGroundColor:TColor; Tolerance: Integer; ALCDGrid:TAdvStringGrid);
    procedure ShowPreview;
    procedure SelectBestBackground(ABitmap: TBitmap);
    procedure SelectBestColorTimer(Sender:TObject);
    procedure InvertLCD(ALCD: TAdvStringGrid; OnlySelection: Boolean = False);
    procedure FindLCDDefinedBoundaries(ALCDGrid: TAdvStringGrid; var BoundCol, BoundRow: Integer);
    procedure RefreshStatusbar;
    procedure CancelConversion(Sender: TObject);

    procedure SavePreviewGridSelection;
    procedure RestorePreviewGridSelection;

    procedure CheckSelectedAreaSize;
  public
    { Public declarations }
    procedure LoadSettings;
    procedure SaveSettings;
    function ImportPicture(const FileName: String): Boolean;  //If FileName is empty string, imports from the clipboard.

    function ClipboardContainsPicture: Boolean;
    procedure ClipboardChanged;

    procedure SetLanguage(LanguageInfo: TLanguageInfo;
      LanguageOptions: TLanguageOptions; LangInstance: THandle);
  end;

var
  ImportGraphicsForm: TImportGraphicsForm;

implementation

uses
  MainUnit, Math, DateUtils, ConvUtils, SpecialProcsUnit;

{$R *.dfm}

procedure TImportGraphicsForm.ImportPictureBtnClick(Sender: TObject);
begin
  ScalePictureTrackbar.CancelPendingDelay;
  ToleranceBtn.CancelPendingDelay;
  OpenPictureDialog1.Filter := OpenPictureFilter;
  if OpenPictureDialog1.Execute then
  begin
    ImportPicture(OpenPictureDialog1.FileName);
  end;
end;

procedure TImportGraphicsForm.PreviewGridLinesCheckClick(Sender: TObject);
begin
  if (Sender as TTntCheckBox).Checked then
    PreviewGrid.Options:=PreviewGrid.Options+[goVertLine,goHorzLine]
  else
    PreviewGrid.Options:=PreviewGrid.Options-[goVertLine,goHorzLine];
end;

procedure TImportGraphicsForm.BitmapToLCD(Bitmap: TBitmap; BackGroundColor:TColor;
  Tolerance: Integer; ALCDGrid: TAdvStringGrid);
var
  BKR, BKG, BKB: Byte;
  RMin, RMax, GMin, GMax, BMin, BMax: Byte;

  function IsColorInRange(AColor: TColor): Boolean;
  var
    R, G, B: Byte;
    Color: Longint;
  begin
    Color := ColorToRGB(AColor);
    R := Color;
    G := Color shr 8;
    B := Color shr 16;

    Result := (R >= RMin) and (R <= RMax) and
              (G >= GMin) and (G <= GMax) and
              (B >= BMin) and (B <= BMax);
  end;

  procedure IncreaseLCDSizeGradually(ALCD: TAdvStringGrid;
    FinalColCount, FinalRowCount: Integer);
  const
    IncStep = 20;
  begin
    if ALCD.ColCount > FinalColCount then
      ALCD.ColCount := FinalColCount
    else
      ALCD.ColCount := IfThen( (FinalColCount - ALCD.ColCount) >= IncStep, ALCD.ColCount + IncStep, FinalColCount);

    if (ALCD.RowCount - 1) > FinalRowCount then  // "+ 1" because of TAdvStringGrid
      ALCD.RowCount := FinalRowCount + 1
    else  //"- 1" because of TAdvStringGrid
      ALCD.RowCount := IfThen( (FinalRowCount - (ALCD.RowCount - 1)) >= IncStep, ALCD.RowCount + IncStep, FinalRowCount + 1);

    ALCD.ClearRows(0, ALCDGrid.RowCount);
  end;

var
  Row,Col:Integer;
  BKColor: Longint;
begin
  BKColor := ColorToRGB(BackGroundColor);
  BKR := BKColor;
  BKG := BKColor shr 8;
  BKB := BKColor shr 16;

  RMin := IfThen(Tolerance > BKR, 0, BKR - Tolerance);
  GMin := IfThen(Tolerance > BKG, 0, BKG - Tolerance);
  BMin := IfThen(Tolerance > BKB, 0, BKB - Tolerance);

  RMax := IfThen(Tolerance > (255 - BKR), 255, BKR + Tolerance);
  GMax := IfThen(Tolerance > (255 - BKG), 255, BKG + Tolerance);
  BMax := IfThen(Tolerance > (255 - BKB), 255, BKB + Tolerance);

  ALCDGrid.BeginUpdate;
  try
//    ALCDGrid.ColCount:=1;
//    ALCDGrid.RowCount:=2;
//    IncreaseLCDSizeGradually(ALCDGrid, Bitmap.Width, Bitmap.Height);

    ALCDGrid.ColCount := Bitmap.Width;
    ALCDGrid.RowCount := Bitmap.Height + 1;
    ALCDGrid.ClearRows(0, ALCDGrid.RowCount);

    for Col:=0 to Bitmap.Width - 1 do
      for Row:=0 to Bitmap.Height - 1 do
      begin
        Application.ProcessMessages;
        if ConversionCancelled then
          Exit;
//        if (Col > ALCDGrid.ColCount) or
//          (Row > (ALCDGrid.RowCount - 1)) then
//          IncreaseLCDSizeGradually(ALCDGrid, Bitmap.Width, Bitmap.Height);
        if not IsColorInRange(Bitmap.Canvas.Pixels[Col,Row]) then
          MainForm.SetCellColor(ALCDGrid, Col, Row, True)
        else
          MainForm.SetCellColor(ALCDGrid, Col, Row, False);
      end;
  finally
    ALCDGrid.DefaultRowHeight:=ALCDGrid.DefaultRowHeight;
    ALCDGrid.RowHeights[ALCDGrid.RowCount-1]:=0;
    ALCDGrid.EndUpdate;
  end;
end;

procedure TImportGraphicsForm.FormShow(Sender: TObject);
begin
  with MainForm.LCDOptions do
  begin
    //Also included in form OnActivate event.
    PreviewGrid.SelectionRectangleColor := LCDCursorColor;
  end;

  LoadSettings;  //Also included in the form OnActivate event.
  if SourceBitmap.Width=0 then
    ImportPictureBtn.Click
  else if (PreviewGrid.ColCount < 5) and (PreviewGrid.RowCount < 5) then
    ShowPreview;

  ImportFromClipboardBtn.Enabled := ClipboardContainsPicture;
end;

procedure TImportGraphicsForm.CloseBtnClick(Sender: TObject);
begin
  if not(fsShowing in FormState) then
    Close;
end;

procedure TImportGraphicsForm.InsertAsLCDBtnClick(Sender: TObject);
var
  Row,Col:Integer;
  DefinedCol, DefinedRow: Integer;
  CharArea: TGridRect;
  CharWidth, CharHeight: Integer;
begin
  CheckSelectedAreaSize;
  if OnlySelectionCheck.Checked then
    CharArea := PreviewGrid.Selection
  else
  begin
    FindLCDDefinedBoundaries(PreviewGrid, DefinedCol, DefinedRow);
    CharArea.Left := 0;
    CharArea.Top := 0;
    CharArea.Right := DefinedCol;
    CharArea.Bottom := DefinedRow;
  end;

  CharWidth := CharArea.Right - CharArea.Left + 1;
  CharHeight := CharArea.Bottom - CharArea.Top + 1;

  with MainForm do
  begin
    LCDGrid.ColCount := CharWidth;
    LCDGrid.RowCount := CharHeight + 1;
    LCDGrid.DefaultRowHeight := LCDGrid.DefaultRowHeight;
    LCDGrid.RowHeights[LCDGrid.RowCount - 1] := 0; 

    for Row:=0 to LCDGrid.RowCount - 2 do
      for Col:=0 to LCDGrid.ColCount - 1 do
        if (PreviewGrid.Colors[Col + CharArea.Left, Row + CharArea.Top] = MainForm.LCDOptions.LCDFilledColor) or (PreviewGrid.Colors[Col + CharArea.Left, Row + CharArea.Top] = MainForm.LCDOptions.LCDClearedColor) then
        //***It is not necessary to compare ColorsTo values
        begin
          LCDGrid.Colors[Col, Row] := PreviewGrid.Colors[Col + CharArea.Left, Row + CharArea.Top];
          LCDGrid.ColorsTo[Col, Row] := PreviewGrid.ColorsTo[Col + CharArea.Left, Row + CharArea.Top];
        end
        else
          MainForm.SetCellColor(LCDGrid, Col, Row, False);
    UpdateLCDOptions;
  end;
end;

procedure TImportGraphicsForm.InsertAtCursorBtnClick(Sender: TObject);
var
  CharWidth, CharHeight: Integer;
begin
  CheckSelectedAreaSize;
  if OnlySelectionCheck.Checked then
  begin
    CharWidth := PreviewGrid.Selection.Right - PreviewGrid.Selection.Left + 1;
    CharHeight := PreviewGrid.Selection.Bottom - PreviewGrid.Selection.Top + 1;
  end
  else
  begin
    CharWidth := PreviewGrid.ColCount;
    CharHeight := PreviewGrid.RowCount - 1;  //Minus 1 because of TAdvStringGrid
  end;

  with MainForm do
  begin
    if (LCDGrid.ColCount-LCDGrid.Col) < CharWidth then
      LCDGrid.ColCount := LCDGrid.ColCount + ( CharWidth - (LCDGrid.ColCount - LCDGrid.Col) );
    if (LCDGrid.RowCount - LCDGrid.Row - 1) < CharHeight then
    begin
      LCDGrid.RowCount := LCDGrid.RowCount + ( CharHeight - (LCDGrid.RowCount - LCDGrid.Row) + 1 );  //Plus 1 because of TAdvStringGrid
      LCDGrid.DefaultRowHeight := LCDGrid.DefaultRowHeight;
      LCDGrid.RowHeights[LCDGrid.RowCount - 1] := 0;
    end;

    MainForm.InsertCharAtCursor(PreviewGrid, MainForm.LCDGrid, MainForm.LCDGrid.Row, MainForm.LCDGrid.Col, OnlySelectionCheck.Checked);
    UpdateLCDOptions;
  end;
end;

procedure TImportGraphicsForm.InvertLCD(ALCD: TAdvStringGrid;
  OnlySelection: Boolean);
//Same as TMainForm.InvertLCD, but allows to cancel the invert operation
var
  Row, Col: Integer;
  FromRow, ToRow, FromCol, ToCol: Integer;
begin
  if OnlySelection then
  begin
    FromRow := ALCD.Selection.Top;
    ToRow := ALCD.Selection.Bottom;
    FromCol := ALCD.Selection.Left;
    ToCol := ALCD.Selection.Right;
  end
  else
  begin
    FromRow := 0;
    ToRow := ALCD.RowCount - 2;
    FromCol := 0;
    ToCol := ALCD.ColCount - 1;
  end;

  try
    ALCD.BeginUpdate;

    for Row:=FromRow to ToRow do
      for Col:=FromCol to ToCol do
      begin
        Mainform.ToggleCellColor(ALCD, Col, Row);
        if ConversionCancelled then
          Exit;
      end;
  finally
    ALCD.EndUpdate;
  end;
end;

procedure TImportGraphicsForm.ShowPreview;
var
  MP: TPoint;
begin
  if Converting then
    Exit;
  Converting := True;

  MP := Mouse.CursorPos;
  if ScalePictureTrackbar.Focused then
    SendMessage(ScalePictureTrackbar.Handle, WM_LBUTTONUP, 0, MakeWord(MP.X, MP.Y))
  else if PreviewGridZoomTrackbar.Focused then
    SendMessage(PreviewGridZoomTrackbar.Handle, WM_LBUTTONUP, 0, MakeWord(MP.X, MP.Y));

  SavePreviewGridSelection;
  PreviewGrid.BeginUpdate;
  try
    ConversionCancelled := False;
    Self.Enabled := False;
    CancelDialog.Execute('', Dyn_Texts[1] {'Converting picture...'});
    Application.ProcessMessages;

    BitmapToLCD(PreviewImage.Picture.Bitmap, ForegroundColorLabel.Color, ToleranceBtn.Position, PreviewGrid);
    if not InvertLCDCheck.Checked then
      InvertLCD(PreviewGrid);
    CancelDialog.Terminate;
    if Self.Visible then
    begin
      Self.BringToFront;
      Self.Activate;
    end;
    Application.ProcessMessages;
    RefreshStatusBar;
    InsertAsLCDBtn.Enabled:=(PreviewGrid.ColCount>0) and (PreviewGrid.RowCount>1);
    InsertAtCursorBtn.Enabled:=(PreviewGrid.ColCount>0) and (PreviewGrid.RowCount>1);
  finally
    RestorePreviewGridSelection;
    PreviewGrid.EndUpdate;
    Self.Enabled := True;
    FullyConverted := not ConversionCancelled;
    ConversionCancelled := False;
    Converting := False;
  end;
end;

procedure TImportGraphicsForm.SectionSplitterMoved(Sender: TObject);
begin
  if PreviewSection.Width < 208 then
    PreviewSection.Width := 208;
end;

procedure TImportGraphicsForm.SectionSplitterCanResize(Sender: TObject;
  var NewSize: Integer; var Accept: Boolean);
begin
  Accept:=NewSize >= 315;
end;

procedure TImportGraphicsForm.SelectBestBackground(ABitmap: TBitmap);
type
  TColorFreq=record
    Color:TColor;
    Freq:Longint;
  end;
var
  X,Y,i:Integer;
  MaxIndex:Integer;
  AllColors:array of TColorFreq;
  Timer:TTimer;
begin
  //This procedure is not used inthis version
  //Set the foreground color to the color of the top-left pixel and exit
  ForegroundColorLabel.Color := ABitmap.Canvas.Pixels[0,0];
  Exit;
  ///////////////////////////////////////////

  Timer:=TTimer.Create(nil);
  try

  Timer.Enabled:=False;
  Timer.Interval:=1000;
  Timer.OnTimer:=SelectBestColorTimer;
  SelectBestColorOperationTime:=0;
  SetLength(AllColors,0);
  for X:=0 to ABitmap.Width-1 do
  begin
    for Y:=0 to ABitmap.Height-1 do
    begin
//      Application.ProcessMessages;
      for i:=0 to Length(AllColors)-1 do
        if ABitmap.Canvas.Pixels[X,Y]=AllColors[i].Color then
          Break;
      if (i=Length(AllColors)) or (Length(AllColors)=0) then
      begin
        SetLength(AllColors,Length(AllColors)+1);
        AllColors[Length(AllColors)-1].Color:=ABitmap.Canvas.Pixels[X,Y];
      end;
      if SelectBestColorOperationTime>=(MAX_SELECT_BEST_COLOR_OPERATION_TIME-1) then
        Break;
    end;
    if SelectBestColorOperationTime>=(MAX_SELECT_BEST_COLOR_OPERATION_TIME-1) then
      Break;
  end;
  MaxIndex:=0;
  for i:=0 to Length(AllColors)-1 do
  begin
    if SelectBestColorOperationTime=MAX_SELECT_BEST_COLOR_OPERATION_TIME then
      Break;
    AllColors[i].Freq:=0;
    for X:=0 to ABitmap.Height do
      for Y:=0 to ABitmap.Width do
        if ABitmap.Canvas.Pixels[X,Y]=AllColors[i].Color then
          AllColors[i].Freq:=AllColors[i].Freq+1;
    if AllColors[i].Freq>AllColors[MaxIndex].Freq then
      MaxIndex:=i;
  end;
  ForegroundColorLabel.Color:=AllColors[MaxIndex].Color;
  SetLength(AllColors,0);
  Timer.Free;

  except

  SetLength(AllColors,0);
  Timer.Free;

  end;
end;

procedure TImportGraphicsForm.LoadSettings;
begin
  with MainForm.GlobalOptions do
  begin
    PreviewGridLinesCheck.Checked := ImportGraphicsFormSettings.ShowPreviewGridLines;
    PreviewGridZoomTrackbar.Position := ImportGraphicsFormSettings.PreviewZoomValue;
    Self.Width := ImportGraphicsFormSettings.FormWidth;
    Self.Height := ImportGraphicsFormSettings.FormHeight;
    SourceSection.Width := ImportGraphicsFormSettings.SourceSectionWidth;
    ScalePictureTrackbar.Position := ImportGraphicsFormSettings.ScaleFactor;
    ScalePictureTrackbar.CancelPendingDelay;
    ToleranceBtn.Position := ImportGraphicsFormSettings.ColorTolerance;
    ToleranceBtn.CancelPendingDelay;
    OnlySelectionCheck.Checked := ImportGraphicsFormSettings.ImportOnlySelection;
    OnlySelectionCheck.OnClick(OnlySelectionCheck);  //Force an OnClick event.
  end;
end;

procedure TImportGraphicsForm.SaveSettings;
begin
  with MainForm.GlobalOptions do
  begin
    ImportGraphicsFormSettings.PreviewZoomValue:=PreviewGridZoomTrackbar.Position;
    ImportGraphicsFormSettings.ShowPreviewGridLines:=PreviewGridLinesCheck.Checked;
    ImportGraphicsFormSettings.FormWidth:=Self.Width;
    ImportGraphicsFormSettings.FormHeight:=Self.Height;
    ImportGraphicsFormSettings.SourceSectionWidth:=SourceSection.Width;
    ImportGraphicsFormSettings.ScaleFactor := ScalePictureTrackbar.Position;
    ImportGraphicsFormSettings.ColorTolerance := ToleranceBtn.Position;
    ImportGraphicsFormSettings.ImportOnlySelection := OnlySelectionCheck.Checked;
  end;
end;

procedure TImportGraphicsForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SaveSettings;  //Also included in the form OnDeactivate event.

  PreviewGrid.ColCount := 1;  //Free up memory - Also included in the form OnCreate event.
  PreviewGrid.RowCount := 2;
  PreviewGrid.DefaultRowHeight := PreviewGrid.DefaultRowHeight;
  PreviewGrid.RowHeights[PreviewGrid.RowCount - 1] := 0;
end;

procedure TImportGraphicsForm.SelectBestColorTimer(Sender: TObject);
begin
  Inc(SelectBestColorOperationTime);
  if SelectBestColorOperationTime=MAX_SELECT_BEST_COLOR_OPERATION_TIME then
    (Sender as TTimer).Enabled:=False;
end;

procedure TImportGraphicsForm.ScalePictureNumEditMaskedChange(
  Sender: TObject);
begin
  ScalePictureTrackbar.Position := ScalePictureNumEdit.Value;
end;

procedure TImportGraphicsForm.PreviewGridZoomTrackbarChange(
  Sender: TObject);
begin
  PreviewGrid.DefaultRowHeight:=PreviewGridZoomTrackbar.Position;
  PreviewGrid.DefaultColWidth:=PreviewGridZoomTrackbar.Position;
  PreviewGrid.RowHeights[PreviewGrid.RowCount-1]:=0;
end;

procedure TImportGraphicsForm.FormCreate(Sender: TObject);
begin
  ToleranceBtn.CancelPendingDelay;
  SourceBitmap := TBitmap.Create;
  SourceBitmap.Width := 0;
  SourceBitmap.Height := 0;
  CancelDialog := TTntCancelDialog.Create(nil);
  CancelDialog.Font.Assign(Self.Font);
  CancelDialog.OnCancel := CancelConversion;
  with LastSelectedArea do
  begin
    Left := 0;
    Top := 0;
    Right := 0;
    Bottom := 0;
  end;
  PreviewGrid.Selection := LastSelectedArea;

  PreviewGrid.ColCount := 1;  //Free up memory - Also included in the form OnClose event.
  PreviewGrid.RowCount := 2;
  PreviewGrid.DefaultRowHeight := PreviewGrid.DefaultRowHeight;
  PreviewGrid.RowHeights[PreviewGrid.RowCount - 1] := 0;
end;

function TImportGraphicsForm.ImportPicture(
  const FileName: String): Boolean;
//If FileName is empty string, imports from the clipboard.
var
  Picture: TPicture;
  DataHandle: THandle;
begin
  ScalePictureTrackbar.CancelPendingDelay;
  Result := False;

  if FileName = EmptyStr then  //Import from the clipboard.
  begin
    if not ClipboardContainsPicture then
    begin
      WideMessageDlgSoundTop(Dyn_Texts[3] {'No picture is available on the clipboard.'}, mtCustom, [mbOK], 0);
      Exit;
    end;
    try
      Clipboard.Open;
    except
      //No message
      WideMessageDlgSoundTop(Dyn_Texts[4] {'Unable to get data from the clipboard.'}, mtError, [mbOK], 0);
      Exit;
    end;
  end;

  //Import picture from the specified source (either file or the clipboard)
  Picture := TPicture.Create;
  try
    if FileName = EmptyStr then
    begin
      //Import from the clipboard
      DataHandle := 0;
      try
        DataHandle := Clipboard.GetAsHandle(CF_BITMAP);
        GlobalLock(DataHandle);
        Picture.LoadFromClipboardFormat(ClipboardPictureFormat, DataHandle, 0);
        SourceBitmap.Assign(Picture.Graphic);
        Picture.Bitmap.Assign(SourceBitmap);
      finally
        GlobalUnlock(DataHandle);
        Clipboard.Close;
      end;
    end
    else
    begin
      //Import from file
      Picture.LoadFromFile(FileName);
      if Picture.Graphic is TJPEGImage then
      begin
        SourceBitmap.Assign(Picture.Graphic);
        Picture.Bitmap.Assign(SourceBitmap);
      end;
    end;

    SourceBitmap.Assign(Picture.Bitmap);
    Picture.Free;
  except
    Picture.Free;
    WideMessageDlgSoundTop(Dyn_Texts[2] {'Unable to load the picture.'},mtError,[mbOK],0);
    Exit;
  end;

  //Picture is imported. Now convert it to LCD.
  try
    Procs.ScaleBitmap(SourceBitmap, PreviewImage.Picture.Bitmap, ScalePictureTrackbar.Position);
    SelectBestBackground(PreviewImage.Picture.Bitmap);
    ShowPreview;
    Result := True;
  except
    WideMessageDlgSoundTop(Dyn_Texts[2] {'Unable to load the picture.'},mtError,[mbOK],0);
  end;
end;

procedure TImportGraphicsForm.PreviewImageMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //WideShowMessageSoundTop('X='+IntToStr(X)+', Y='+IntToStr(Y));
  if (ForegroundColorLabel.Color <> PreviewImage.Picture.Bitmap.Canvas.Pixels[X, Y]) or
     not FullyConverted then
  begin
    ForegroundColorLabel.Color  :=  PreviewImage.Picture.Bitmap.Canvas.Pixels[X, Y];
    ShowPreview;
  end;
end;

procedure TImportGraphicsForm.RefreshStatusbar;
begin
  PreviewStatusBar.SimpleText := IntToStr(PreviewGrid.RowCount) + ' x ' + IntToStr(PreviewGrid.ColCount);
end;

procedure TImportGraphicsForm.InvertLCDCheckClick(Sender: TObject);
begin
  MainForm.InvertLCD(PreviewGrid);
end;

procedure TImportGraphicsForm.ScalePictureTrackbarDelayedChange(
  Sender: TObject);
begin
  ShowPreview;
end;

procedure TImportGraphicsForm.ScalePictureTrackbarChange(Sender: TObject);
begin
  ScalePictureNumEdit.Value := ScalePictureTrackbar.Position;
  Procs.ScaleBitmap(SourceBitmap, PreviewImage.Picture.Bitmap, ScalePictureTrackbar.Position);
end;

procedure TImportGraphicsForm.FormDestroy(Sender: TObject);
begin
  SourceBitmap.Free;
  CancelDialog.Free;
end;

procedure TImportGraphicsForm.CancelConversion(Sender: TObject);
begin
  ConversionCancelled := True;
end;

procedure TImportGraphicsForm.ToleranceBtnDelayedChange(Sender: TObject);
begin
  ShowPreview;
end;

procedure TImportGraphicsForm.ForegroundColorLabelClick(Sender: TObject);
begin
  ColorDialog1.Color := ForegroundColorLabel.Color;
  if ColorDialog1.Execute then
    if ColorDialog1.Color <> ForegroundColorLabel.Color then
    begin
      ForegroundColorLabel.Color := ColorDialog1.Color;
      ShowPreview;
    end;
end;

procedure TImportGraphicsForm.FindLCDDefinedBoundaries(
  ALCDGrid: TAdvStringGrid; var BoundCol, BoundRow: Integer);
var
  Row, Col: Integer;
begin
  //***It is not necessary to compare ColorsTo values
  for Row := 0 to ALCDGrid.RowCount - 2 do
    if not( (ALCDGrid.Colors[0, Row] = MainForm.LCDOptions.LCDFilledColor) or
            (ALCDGrid.Colors[0, Row] = MainForm.LCDOptions.LCDClearedColor) ) then
      Break;
  BoundRow := Row - 1;

  for Col := 0 to ALCDGrid.ColCount - 1 do
    if not( (ALCDGrid.Colors[Col, 0] = MainForm.LCDOptions.LCDFilledColor) or
            (ALCDGrid.Colors[Col, 0] = MainForm.LCDOptions.LCDClearedColor) ) then
      Break;
  BoundCol := Col - 1;
end;

procedure TImportGraphicsForm.ClipboardChanged;
begin
  ImportFromClipboardBtn.Enabled := ClipboardContainsPicture;
end;

function TImportGraphicsForm.ClipboardContainsPicture: Boolean;
//var
//  p: TPicture;
begin
  Result := Clipboard.HasFormat(CF_BITMAP);
  if Result then
    ClipboardPictureFormat := CF_BITMAP;
  //Only BITMAP is supported in this version.
  //p := TPicture.Create;
  //if p.SupportsClipboardFormat(CF_PICTURE) then...
end;

procedure TImportGraphicsForm.FormActivate(Sender: TObject);
begin
  with MainForm.LCDOptions do
  begin
    //Also included in for OnShow event.
    PreviewGrid.SelectionRectangleColor := LCDCursorColor;
  end;

  ImportFromClipboardBtn.Enabled := ClipboardContainsPicture;

//  LoadSettings;  //Also included in the form OnShow event.
end;

procedure TImportGraphicsForm.ImportFromClipboardBtnClick(Sender: TObject);
begin
  ImportPicture(EmptyStr);  //EmptyStr selects the clipboard as the source.
end;

procedure TImportGraphicsForm.FormDeactivate(Sender: TObject);
begin
  SaveSettings;  //Also included in the form OnClose event.
end;

procedure TImportGraphicsForm.OnlySelectionCheckClick(Sender: TObject);
begin
  PreviewGrid.SelectionRectangle := OnlySelectionCheck.Checked;
  if PreviewGrid.SelectionRectangle then
  begin
    //Adjust the selection
    if (LastSelectedArea.Left >= PreviewGrid.ColCount) or
       (LastSelectedArea.Top >= (PreviewGrid.RowCount - 1)) then
    begin
      LastSelectedArea.Left := 0;
      LastSelectedArea.Top := 0;
      LastSelectedArea.Right := 0;
      LastSelectedArea.Bottom := 0;
    end
    else
    begin
      if LastSelectedArea.Right >= PreviewGrid.ColCount then
        LastSelectedArea.Right := PreviewGrid.ColCount - 1;
      if LastSelectedArea.Bottom >= (PreviewGrid.RowCount - 1) then
        LastSelectedArea.Bottom := PreviewGrid.RowCount - 2;
    end;
    //Set teh selection
    PreviewGrid.Selection := LastSelectedArea;
  end;
end;

procedure TImportGraphicsForm.PreviewGridSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  CanSelect := not(ARow = PreviewGrid.RowCount - 1);  //Because of TAdvStringGrid
end;

procedure TImportGraphicsForm.PreviewGridSelectionChanged(Sender: TObject;
  ALeft, ATop, ARight, ABottom: Integer);
begin
  if PreviewGrid.SelectionRectangle then
    LastSelectedArea := PreviewGrid.Selection;
end;

//***************************************************************************
//Multilanguage
//***************************************************************************
procedure TImportGraphicsForm.SetLanguage(LanguageInfo: TLanguageInfo;
  LanguageOptions: TLanguageOptions; LangInstance: THandle);

  function GetStaticText(ResID: Integer): WideString;
  var
    ResStringRec: TResStringRec;
  begin
    ResStringRec.Identifier := ResID + STATIC_LANG_RESID_START_NUM;
    ResStringRec.Module := @LangInstance;
    Result := MainForm.ReplaceInvalidUnicodeChars(WideLoadResString(@ResStringRec));
  end;

var
  FormVisible: Boolean;
  FlipOperation: Boolean;
begin
  //////////////////////////////
  SetDynamicTexts(LangInstance);

  FormVisible := Self.Visible;
  try
    if (LangInstance <> 0) or LanguageOptions.LanguageOptionsChanged then
      if FormVisible then
        Self.Visible := False;
  except
  end;

  MainForm.ApplyLanguageOptions(Self, LanguageInfo, LanguageOptions);
  FlipOperation := False;
  if LanguageInfo.RightToLeft and LanguageInfo.FlipControls and
    LanguageOptions.ApplyRTLToAppearance then
  begin
    if not ControlsFlipped then
    begin
      SpecialProcs.FlipChildrenExcept(Self, FlipExcludedControlsList, True);
      FlipOperation := True;
    end;
    ControlsFlipped := True;
  end
  else if ControlsFlipped then
  begin
    SpecialProcs.FlipChildrenExcept(Self, FlipExcludedControlsList, True);
    ControlsFlipped := False;
    FlipOperation := True;
  end;
  if FlipOperation then
  begin
    SpecialProcs.FlipControls([SourceSection, SectionSplitter, PreviewSection]);
    SpecialProcs.FlipChildrenExcept(SourceSection, FlipExcludedControlsList, True);
    SpecialProcs.FlipControls([ScalePictureLabel, ScalePictureTrackbar, ScalePictureNumEdit]);
    SpecialProcs.FlipChildrenExcept(BottomPanel, FlipExcludedControlsList, True);
  end;
  CancelDialog.BiDiMode := Self.BiDiMode;
  //////////////////////////////
  if LangInstance = 0 then
  begin
    MainForm.ShowForm(Self, FormVisible);
    Exit;
  end;

  Self.Caption := GetStaticText(0);

  //////////////
  //Source Section
  SourceSection.Caption := GetStaticText(1);

  ImportPictureBtn.Caption := GetStaticText(2);
  ScalePictureLabel.Caption := GetStaticText(3);

  ForegroundColorGroup.Caption := GetStaticText(4);
  ToleranceBtn.Prefix := GetStaticText(5);

  /////////////////
  //Preview Section
  PreviewSection.Caption := GetStaticText(6);
  PreviewZoomLabel.Caption := GetStaticText(7);
  PreviewGridLinesCheck.Caption := GetStaticText(8);

  PreviewOptionsGroup.Caption := GetStaticText(9);
  InvertLCDCheck.Caption := GetStaticText(10);

  //////////////
  InsertAtCursorBtn.Caption := GetStaticText(11);
  InsertAsLCDBtn.Caption := GetStaticText(12);
  CloseBtn.Caption := GetStaticText(13);

  /////////
  //Dialogs
  OpenPictureDialog1.Title := GetStaticText(14);

  //=====================================================
  //==== OTHER ====
  //=====================================================
  ToleranceBtn.Title := GetStaticText(15);

  //==== NEW ===
  ImportFromClipboardBtn.Hint := GetStaticText(16);
  OnlySelectionCheck.Caption := GetStaticText(17);
  OnlySelectionCheck.Hint := GetStaticText(18);

  //CancelDialog (Form MainForm global resource strings}
  CancelDialog.CancelCaption := MainForm.Dyn_Texts[33];

  MainForm.ShowForm(Self, FormVisible);
end;

procedure TImportGraphicsForm.SetDynamicTexts(LangInstance: THandle);

  procedure SetDefaultDynamicTexts;
  begin
    Dyn_Texts[1] := 'Converting picture...';
    Dyn_Texts[2] := 'Unable to load the picture.';
    Dyn_Texts[3] := 'No picture is available on the clipboard.';
    Dyn_Texts[4] := 'Unable to get data from the clipboard.';
  end;

var
  i: Integer;
  S: WideString;
  ResStringRec: TResStringRec;
begin
  SetDefaultDynamicTexts;
  if LangInstance = 0 then
    Exit;

  ResStringRec.Module := @LangInstance;
  for i := 1 to DYNAMIC_TEXTS_COUNT do
  begin
    ResStringRec.Identifier := i + DYNAMIC_LANG_RESID_START_NUM;
    S := MainForm.ReplaceInvalidUnicodeChars(WideLoadResString(@ResStringRec));
    if Length(S) > 0 then
      Dyn_Texts[i] := S;
  end;
end;
//***************************************************************************
//***************************************************************************
//***************************************************************************

procedure TImportGraphicsForm.CheckSelectedAreaSize;
var
  gr: TGridRect;
begin
  gr := PreviewGrid.Selection;
  if gr.Bottom = (PreviewGrid.RowCount - 1) then
  begin
    gr.Bottom := PreviewGrid.RowCount - 2;
    PreviewGrid.Selection := gr;
    Application.ProcessMessages;
  end;
  
  //If the selected area size is 1x1, uncheck the 'Only selection' check box
  if ((PreviewGrid.Selection.Right - PreviewGrid.Selection.Left) = 0) and
     ((PreviewGrid.Selection.Bottom - PreviewGrid.Selection.Top) = 0) then
  begin
    OnlySelectionCheck.Checked := False;
    Application.ProcessMessages;  //Show the selection change to the user
  end;
end;

procedure TImportGraphicsForm.RestorePreviewGridSelection;
begin
  //Adjust the selection
  if (PreviewGridSelection.Left >= PreviewGrid.ColCount) or
     (PreviewGridSelection.Top >= (PreviewGrid.RowCount - 1)) then
  begin
    PreviewGridSelection.Left := 0;
    PreviewGridSelection.Top := 0;
    PreviewGridSelection.Right := 0;
    PreviewGridSelection.Bottom := 0;
  end
  else
  begin
    if PreviewGridSelection.Right >= PreviewGrid.ColCount then
      PreviewGridSelection.Right := PreviewGrid.ColCount - 1;
    if PreviewGridSelection.Bottom >= (PreviewGrid.RowCount - 1) then
      PreviewGridSelection.Bottom := PreviewGrid.RowCount - 2;
  end;

  //Restore the selection
  PreviewGrid.Selection := PreviewGridSelection;
end;

procedure TImportGraphicsForm.SavePreviewGridSelection;
begin
  PreviewGridSelection := PreviewGrid.Selection;
end;

end.
