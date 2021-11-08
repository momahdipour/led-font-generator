unit CodeToLCDFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TntStdCtrls, Buttons, TntButtons, ExtCtrls, ComCtrls,
  Clipbrd, TntDelayedMemo, TntClasses, ProcsUnit, Grids, BaseGrid, AdvGrid,
  TntDelayedEdit, TntExtCtrls, TntSystem, Language, Menus, ImgList, TntForms,
  TntMenus, MMAdvancedGrid;

const
  STATIC_LANG_RESID_START_NUM = 1000;
  DYNAMIC_LANG_RESID_START_NUM = 1250;
  DYNAMIC_TEXTS_COUNT = 1;

  HxWPANEL_NO_SIZE_CAPTION = 'H x W';

type
  TCodeFormat = record
    Binary: Boolean;
    ColByColOrder: Boolean;
  end;
  TCodeToLCDForm = class(TTntForm)
    Panel1: TPanel;
    PreviewGroup: TTntGroupBox;
    Panel2: TPanel;
    ColByColOrderCheck: TTntCheckBox;
    LCDGridLinesCheck: TTntCheckBox;
    ZoomTrackBar: TTrackBar;
    ZoomLabel: TTntLabel;
    CaptionLabel: TLabel;
    BottomPanel: TPanel;
    CopyBtn: TTntBitBtn;
    InsertAsLCDBtn: TTntBitBtn;
    TopPanel: TPanel;
    CodeGroup: TTntGroupBox;
    Panel3: TPanel;
    PasteCodeBtn: TTntSpeedButton;
    ClearCodeMemoBtn: TSpeedButton;
    CodeMemo: TTntDelayedMemo;
    SettingsGroup: TTntGroupBox;
    ManualSettingsGroup: TTntGroupBox;
    PrefixEditLabel: TTntLabel;
    SuffixEditLabel: TTntLabel;
    BinRadio: TTntRadioButton;
    HexRadio: TTntRadioButton;
    AutodetectCodeFormatCheck: TTntCheckBox;
    PrefixEdit: TTntDelayedEdit;
    SuffixEdit: TTntDelayedEdit;
    HxWPanel: TTntPanel;
    Bevel5: TBevel;
    IgnoreCharsEditLabel: TTntLabel;
    IgnoreCharsEdit: TTntDelayedEdit;
    CaptionPopup: TPopupMenu;
    Window1: TTntMenuItem;
    N1: TTntMenuItem;
    Close1: TTntMenuItem;
    MenuImages: TImageList;
    PreviewGrid: TMMAdvancedGrid;
    procedure FormDeactivate(Sender: TObject);
    procedure PasteCodeBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ClearCodeMemoBtnClick(Sender: TObject);
    procedure CodeMemoDelayedChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ZoomTrackBarChange(Sender: TObject);
    procedure LCDGridLinesCheckClick(Sender: TObject);
    procedure AutodetectCodeFormatCheckClick(Sender: TObject);
    procedure CopyBtnClick(Sender: TObject);
    procedure CaptionLabelMouseEnter(Sender: TObject);
    procedure CaptionLabelMouseLeave(Sender: TObject);
    procedure CaptionLabelMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure InsertAsLCDBtnClick(Sender: TObject);
    procedure BinRadioClick(Sender: TObject);
    procedure PrefixEditDelayedChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Window1Click(Sender: TObject);
    procedure Close1Click(Sender: TObject);
    procedure TntFormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TntFormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    CodeFormat: TCodeFormat;
    CodeLines: TTntStringList;

    //Multilanguage
    Dyn_Texts: array[1..DYNAMIC_TEXTS_COUNT] of WideString;
    ControlsFlipped: Boolean;
    procedure SetDynamicTexts(LangInstance: THandle);
    ///////////////

    function FindDataColumns(var StartCol, EndCol: Integer; Lines: TTntStrings;
      TrimLines: Boolean): Boolean;
    procedure PrepareCodeLines;
    procedure CodeToLCDSimple;
    procedure EnableManualSettings(Enabled: Boolean);
    procedure GenerateSimpleOutput;
    function CanReplaceWithZero(AChar: Char): Boolean;
    procedure RemoveInvalidChars(var ALine: String);

    procedure DettachFromToolbar;

    function RemoveControlChars(const Line: String): String;
  public
    { Public declarations }
    procedure ClearPreviewGrid;
    procedure ClipboardChanged;
    procedure ReadSettings;

    procedure SetLanguage(LanguageInfo: TLanguageInfo;
      LanguageOptions: TLanguageOptions; LangInstance: THandle);
  end;

var
  CodeToLCDForm: TCodeToLCDForm;

implementation

uses Math, StrUtils, MainUnit, TntWideStrings, ExportLCDFormUnit,
  SpecialProcsUnit, LCDProcsUnit;

{$R *.dfm}

type
  TCharSet = Set of Char;
const
  HexChars: TCharSet = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'];
  BinChars: TCharSet = ['0', '1'];

procedure TCodeToLCDForm.FormDeactivate(Sender: TObject);
begin
  if BorderStyle = bsNone then
    Close;
end;

procedure TCodeToLCDForm.PasteCodeBtnClick(Sender: TObject);
var
  i: Integer;
begin
  CodeMemo.Clear;
  CodeMemo.PasteFromClipboard;
  for i := 0 to CodeMemo.Lines.Count - 1 do
    CodeMemo.Lines[i] := RemoveControlChars(CodeMemo.Lines.Strings[i]);
end;

procedure TCodeToLCDForm.FormShow(Sender: TObject);
begin
  PasteCodeBtn.Enabled := Clipboard.HasFormat(CF_TEXT);
  CaptionLabel.Visible := BorderStyle = bsNone;
  PreviewGrid.DefaultRowHeight := PreviewGrid.DefaultRowHeight;
  PreviewGrid.RowHeights[PreviewGrid.RowCount - 1] := 0; 
end;

procedure TCodeToLCDForm.ClearCodeMemoBtnClick(Sender: TObject);
begin
  CodeMemo.Clear;
  CodeMemo.Lines.Strings[0] := '1';  //Force an OnChange event
  CodeMemo.Lines.Strings[0] := '';
end;

procedure TCodeToLCDForm.CodeToLCDSimple;

  function NormalizeLine(const Line: String): String;
  var
    ValidCharSet: TCharSet;
    i: Integer;
  begin
    if CodeFormat.Binary then
      ValidCharSet := BinChars
    else
      ValidCharSet := HexChars;
    Result := UpperCase(Line);
    for i:=1 to Length(Line) do
      if not(Result[i] in ValidCharSet) then
        Result[i] := '0';
  end;

var
  i, j: Integer;
  S: String;
  LineWidth, LineHeight: Integer;
begin
  if CodeFormat.Binary then
    LineWidth := Length(CodeLines.Strings[0])
  else
    LineWidth := Length(Procs.HexToBinStr(CodeLines.Strings[0]));
  LineHeight := CodeLines.Count;
  if CodeFormat.ColByColOrder then
  begin
    PreviewGrid.ColCount := LineHeight;
    PreviewGrid.RowCount := LineWidth;
  end
  else
  begin
    PreviewGrid.ColCount := LineWidth;
    PreviewGrid.RowCount := LineHeight;
  end;
  PreviewGrid.RowCount := PreviewGrid.RowCount + 1;
  PreviewGrid.DefaultRowHeight := PreviewGrid.DefaultRowHeight;
  PreviewGrid.RowHeights[PreviewGrid.RowCount - 1] := 0;
  LCDProcs.ClearLCD(PreviewGrid, MainForm.LCDOptions.LCDClearedColor);

  for i:=0 to CodeLines.Count - 1 do
  begin

    try

    S := NormalizeLine(CodeLines.Strings[i]);
    if not CodeFormat.Binary then
      S := Procs.HexToBinStr(S);
    if CodeFormat.ColByColOrder then
    begin
      for j:=0 to PreviewGrid.RowCount - 2 do
        if S[j + 1] = '1' then
          MainForm.SetCellColor(PreviewGrid, i, j, True)
        else
          MainForm.SetCellColor(PreviewGrid, i, j, False);
    end
    else
    begin
      for j:=0 to PreviewGrid.ColCount - 1 do
        if S[j + 1] = '1' then
          MainForm.SetCellColor(PreviewGrid, j, i, True)
        else
          MainForm.SetCellColor(PreviewGrid, j, i, False);
    end;

    except

    end;  //try

  end;
end;

function TCodeToLCDForm.FindDataColumns(var StartCol, EndCol: Integer;
  Lines: TTntStrings; TrimLines: Boolean): Boolean;

  function IsValidChar(C: Char): Boolean;
  var
    S: String;
  begin
    S := UpperCase(C);
    C := S[1];
    Result := C in ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'];
  end;

var
  MaxLineLen, i: Integer;
  Line: String;
begin
  Result := False;

  MaxLineLen := 0;
  for i:=0 to Lines.Count - 1 do
    if MaxLineLen < Length(Lines.Strings[i]) then
      MaxLineLen := Length(Lines.Strings[i]);
  if ( (LowerCase(LeftStr(Lines.Strings[0], 2)) = '0x') or
       (LowerCase(LeftStr(Lines.Strings[0], 2)) = '0b') ) and (MaxLineLen >= 3) then
    StartCol := 3
  else
    StartCol := 1;
  EndCol := MaxLineLen;
  if StartCol > EndCol then  //--> Prevent potential software bugs
    Exit;
  for i:=0 to Lines.Count - 1 do
  begin
    if Length(Lines.Strings[i]) < MaxLineLen then
      Lines.Strings[i] := Lines.Strings[i] + StringOfChar('0', MaxLineLen - Length(Lines.Strings[i]));
    Line := Lines.Strings[i];
    while not IsValidChar(Line[StartCol]) do
    begin
      Inc(StartCol);
      if StartCol >= Length(Line) then
        Exit;
    end;
    while not IsValidChar(Line[EndCol]) do
    begin
      Dec(EndCol);
      if EndCol = 0 then
        Exit;
    end;
  end;
  Result := True;
  if TrimLines then
  begin
    for i:=0 to Lines.Count - 1 do
      Lines.Strings[i] := Copy(Lines.Strings[i], StartCol, EndCol - StartCol + 1);
  end;
end;

procedure TCodeToLCDForm.CodeMemoDelayedChange(Sender: TObject);
begin
  GenerateSimpleOutput;
end;

procedure TCodeToLCDForm.PrepareCodeLines;

  function IsBinaryLine(const Line: String): Boolean;
  var
    i: Integer;
  begin
    Result := True;
    for i:=1 to Length(Line) do
    begin
      Result := Line[i] in BinChars;
      if not Result then
        Exit;
    end;
  end;

  function IsHexLine(Line: String): Boolean;
  var
    i: Integer;
  begin
    Result := True;
    Line := UpperCase(Line);
    for i:=1 to Length(Line) do
    begin
      Result := Line[i] in HexChars;
      if not Result then
        Exit;
    end;
  end;

  function CheckAndDropInvalidLine(var Line: String): Boolean;
  var
    i: Integer;
    ValidCharCount: Integer;
  begin
    Line := UpperCase(Line);
    ValidCharCount := 0;
    for i:=1 to Length(Line) do
      if Line[i] in HexChars then
        Inc(ValidCharCount)
      else
        Line[i] := '0';

    Result := ValidCharCount < Trunc(Length(Line) / 2);
  end;

  function AutoDetectCodeFormat: Boolean;
  var
    StartCol, EndCol: Integer;
    i, BinCount, HexCount: Integer;
    sTemp: String;
  begin
    Result := FindDataColumns(StartCol, EndCol, CodeLines, True);
    if not Result then
      Exit;
    BinCount := 0;
    HexCount := 0;
    i := 0;
    while i <= (CodeLines.Count - 1) do
    begin
      if IsBinaryLine(CodeLines.Strings[i]) then
        Inc(BinCount)
      else if IsHexLine(CodeLines.Strings[i]) then
        Inc(HexCount)
      else
      begin
        sTemp := CodeLines.Strings[i];
        if CheckAndDropInvalidLine(sTemp) then
        begin
          CodeLines.Delete(i);  //Drop invalid lines
          Dec(i);
        end
        else
        begin
          CodeLines.Strings[i] := sTemp;
          if IsBinaryLine(CodeLines.Strings[i]) then
            Inc(BinCount)
          else if IsHexLine(CodeLines.Strings[i]) then
            Inc(HexCount)
        end;
      end;
      Inc(i);
    end;
    //Result is True
    if (BinCount = 0) and (HexCount = 0) then
      Result := False
    else if BinCount > HexCount then
      CodeFormat.Binary := True
    else if HexCount >= BinCount then
      CodeFormat.Binary := False;
    Result := Result and not(CodeLines.Count = 0);
  end;

  procedure ApplyCustomFormat(Lines: TTntStrings);
    procedure NormalizeLineFormat(var Line: String);
    var
      ValidCharSet: TCharSet;
      i: Integer;
    begin
      if BinRadio.Checked then
        ValidCharSet := BinChars
      else
        ValidCharSet := HexChars;
      Line := UpperCase(Line);
      for i:=1 to Length(Line) do
        if not (Line[i] in ValidCharSet) then
          Line[i] := '0';
    end;
  var
    i: Integer;
    Line: String;
  begin
    for i:=0 to Lines.Count - 1 do
    begin
      Line := Lines.Strings[i];

      if LowerCase(LeftStr(Line, Length(PrefixEdit.Text))) = LowerCase(PrefixEdit.Text) then
        Line := Copy(Line, Length(PrefixEdit.Text) + 1, Length(Line) - Length(PrefixEdit.Text));
      if LowerCase(RightStr(Line, Length(SuffixEdit.Text))) = LowerCase(SuffixEdit.Text) then
        Line := Copy(Line, 1, Length(Line) - Length(SuffixEdit.Text));

      RemoveInvalidChars(Line);

      if LowerCase(LeftStr(Line, Length(PrefixEdit.Text))) = LowerCase(PrefixEdit.Text) then
        Line := Copy(Line, Length(PrefixEdit.Text) + 1, Length(Line) - Length(PrefixEdit.Text));
      if LowerCase(RightStr(Line, Length(SuffixEdit.Text))) = LowerCase(SuffixEdit.Text) then
        Line := Copy(Line, 1, Length(Line) - Length(SuffixEdit.Text));

      NormalizeLineFormat(Line);
      Lines.Strings[i] := Line;
    end;
  end;

var
  i: Integer;
  S: String;
begin
  i := 0;
  while i < CodeLines.Count do
  begin
    S := CodeLines.Strings[i];
    S := RemoveControlChars(S);
    RemoveInvalidChars(S);
    if S = EmptyStr then
      CodeLines.Delete(i)
    else
    begin
      CodeLines.Strings[i] := S;
      Inc(i);
    end;
  end;
  if CodeLines.Count = 0 then
    Exit;

  CodeFormat.ColByColOrder := ColByColOrderCheck.Checked;
  if AutodetectCodeFormatCheck.Checked then
  begin
    if not AutoDetectCodeFormat then
      CodeLines.Clear;
  end
  else
  begin
    CodeFormat.Binary := BinRadio.Checked;
    ApplyCustomFormat(CodeLines);
  end;
end;

procedure TCodeToLCDForm.FormCreate(Sender: TObject);
begin
  CodeLines := TTntStringList.Create;
  ReadSettings;
end;

procedure TCodeToLCDForm.FormDestroy(Sender: TObject);
begin
  CodeLines.Free;
end;

procedure TCodeToLCDForm.ZoomTrackBarChange(Sender: TObject);
begin
  PreviewGrid.DefaultRowHeight := ZoomTrackBar.Position;
  PreviewGrid.DefaultColWidth := ZoomTrackBar.Position;
  PreviewGrid.RowHeights[PreviewGrid.RowCount - 1] := 0;
end;

procedure TCodeToLCDForm.LCDGridLinesCheckClick(Sender: TObject);
begin
  if (Sender as TTntCheckBox).Checked then
    PreviewGrid.Options:=PreviewGrid.Options+[goVertLine,goHorzLine]
  else
    PreviewGrid.Options:=PreviewGrid.Options-[goVertLine,goHorzLine];
end;

procedure TCodeToLCDForm.EnableManualSettings(Enabled: Boolean);
begin
  BinRadio.Enabled := Enabled;
  HexRadio.Enabled := Enabled;
  PrefixEditLabel.Enabled := Enabled;
  PrefixEdit.Enabled := Enabled;
  SuffixEditLabel.Enabled := Enabled;
  SuffixEdit.Enabled := Enabled;
end;

procedure TCodeToLCDForm.AutodetectCodeFormatCheckClick(Sender: TObject);
begin
  EnableManualSettings(not AutodetectCodeFormatCheck.Checked);
  GenerateSimpleOutput;
end;

procedure TCodeToLCDForm.CopyBtnClick(Sender: TObject);
begin
  if HxWPanel.Caption = HxWPANEL_NO_SIZE_CAPTION then
    Exit;  //No lcd is available

  LCDProcs.CopyLCDToClipboard(PreviewGrid, MainForm.LCDOptions.LCDFilledColor, False);
end;

procedure TCodeToLCDForm.CaptionLabelMouseEnter(Sender: TObject);
begin
  CaptionLabel.Color := clActiveCaption;
end;

procedure TCodeToLCDForm.CaptionLabelMouseLeave(Sender: TObject);
begin
  CaptionLabel.Color := clInactiveCaption;
end;

procedure TCodeToLCDForm.CaptionLabelMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
  begin
    DettachFromToolbar;
  end;
end;

procedure TCodeToLCDForm.InsertAsLCDBtnClick(Sender: TObject);
var
  Row, Col: Integer;
begin
  if HxWPanel.Caption = HxWPANEL_NO_SIZE_CAPTION then
    Exit;  //No lcd is available

  with MainForm do
  begin

    try

    ChangeLCDSize(PreviewGrid.ColCount, PreviewGrid.RowCount - 1);
    LCDGrid.BeginUpdate;
    for Col := 0 to PreviewGrid.ColCount - 1 do
      for Row := 0 to PreviewGrid.RowCount - 2 do
      begin
        LCDGrid.Colors[Col, Row] := PreviewGrid.Colors[Col, Row];
        LCDGrid.ColorsTo[Col, Row] := PreviewGrid.ColorsTo[Col, Row];
      end;

    finally

    LCDGrid.EndUpdate;

    end;
  end;
end;

procedure TCodeToLCDForm.ClearPreviewGrid;
begin
  PreviewGrid.ColCount := 1;
  PreviewGrid.RowCount := 2;
  PreviewGrid.DefaultRowHeight := PreviewGrid.DefaultRowHeight;
  PreviewGrid.RowHeights[PreviewGrid.RowCount - 1] := 0;
  LCDProcs.ClearLCD(PreviewGrid, MainForm.LCDOptions.LCDClearedColor);
  HxWPanel.Caption := HxWPANEL_NO_SIZE_CAPTION;
end;

procedure TCodeToLCDForm.GenerateSimpleOutput;
begin
  CodeLines.Assign(CodeMemo.Lines);
  PrepareCodeLines;

  if CodeLines.Count = 0 then
  begin
    ClearPreviewGrid;
    Exit;
  end;
  CodeToLCDSimple;
  HxWPanel.Caption := IntToStr(PreviewGrid.RowCount - 1) + ' x ' + IntToStr(PreviewGrid.ColCount);
  CodeLines.Clear;  //Free memory
end;

procedure TCodeToLCDForm.BinRadioClick(Sender: TObject);
begin
  GenerateSimpleOutput;
end;

procedure TCodeToLCDForm.PrefixEditDelayedChange(Sender: TObject);
begin
  GenerateSimpleOutput;
end;

function TCodeToLCDForm.CanReplaceWithZero(AChar: Char): Boolean;
var
  i: Integer;
  IgnoreTheseChars: String;
begin
  Result := not( (AChar = ' ') or (AChar = ',') );  //Always ignore space character

  IgnoreTheseChars := IgnoreCharsEdit.Text;
  for i := 1 to Length(IgnoreTheseChars) do
  begin
    Result := Result and not(AChar = IgnoreTheseChars[i]);
    if not Result then
      Exit;
  end;
end;

procedure TCodeToLCDForm.RemoveInvalidChars(var ALine: String);
var
  i: Integer;
begin
  i := 1;
  while i <= Length(ALine) do
  begin
    if not CanReplaceWithZero(ALine[i]) then
      Delete(ALine, i, 1)
    else
      Inc(i);
  end;
end;

procedure TCodeToLCDForm.ClipboardChanged;
begin
  PasteCodeBtn.Enabled := Clipboard.HasFormat(CF_TEXT);
end;

procedure TCodeToLCDForm.FormActivate(Sender: TObject);
begin
  PasteCodeBtn.Enabled := Clipboard.HasFormat(CF_TEXT);
end;

procedure TCodeToLCDForm.ReadSettings;
begin
  with MainForm.GlobalOptions.CodeToLCDFormSettings do
  begin
    AutodetectCodeFormatCheck.Checked := AutodetectCodeFormat;

    BinRadio.Checked := CustomFormat = ofBinary;
    HexRadio.Checked := CustomFormat = ofHexadecimal;

    PrefixEdit.Text := PrefixStr;
    SuffixEdit.Text := SuffixStr;
    IgnoreCharsEdit.Text := CharsToIgnore;

    LCDGridLinesCheck.Checked := ShowPreviewGridLines;
    ZoomTrackBar.Position := PreviewZoomValue + 1;  //Force update
    ZoomTrackBar.Position := PreviewZoomValue;

    ColByColOrderCheck.Checked := ColumnByColumnOrder;
  end;
end;

procedure TCodeToLCDForm.DettachFromToolbar;
begin
  CodeToLCDForm.BorderStyle := bsSizeToolWin;
  CaptionLabel.Hide;
  SendMessage(Self.Handle, WM_NCLBUTTONDOWN, HTCAPTION, MakeLParam(Word(Mouse.CursorPos.x), Word(Mouse.CursorPos.Y)));
end;

procedure TCodeToLCDForm.Window1Click(Sender: TObject);
begin
  DettachFromToolbar;
end;

procedure TCodeToLCDForm.Close1Click(Sender: TObject);
begin
  Hide;
end;

procedure TCodeToLCDForm.TntFormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then  //The ESC key closes the window
    Close;  //Use the Close method, not the Hide method, because these methods have big differences
end;

procedure TCodeToLCDForm.TntFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MainForm.CodeToLCDToolBtn.Down := False;
end;

function TCodeToLCDForm.RemoveControlChars(const Line: String): String;
const
  ControlChars: set of Char = [#9 {TAB}];
var
  i: Integer;
begin
  Result := Line;
  i := 1;
  while i <= Length(Result) do
  begin
    if Result[i] in ControlChars then
      Delete(Result, i, 1)
    else
      Inc(i);
  end;
end;

//***************************************************************************
//Multilanguage
//***************************************************************************
procedure TCodeToLCDForm.SetLanguage(LanguageInfo: TLanguageInfo;
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
  //Exception
  CaptionPopup.BiDiMode := bdLeftToRight;
  ///////////
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
    SpecialProcs.FlipControls([CodeGroup, SettingsGroup]);
    SpecialProcs.FlipChildrenExcept(BottomPanel, FlipExcludedControlsList, True);
  end;  
  //////////////////////////////
  if LangInstance = 0 then
  begin
    MainForm.ShowForm(Self, FormVisible);
    Exit;
  end;

  Self.Caption := GetStaticText(0);

  CodeGroup.Caption := GetStaticText(1);

  SettingsGroup.Caption := GetStaticText(2);
  AutodetectCodeFormatCheck.Caption := GetStaticText(3);
  BinRadio.Caption := GetStaticText(4);
  HexRadio.Caption := GetStaticText(5);
  PrefixEditLabel.Caption := GetStaticText(6);
  SuffixEditLabel.Caption := GetStaticText(7);

  PreviewGroup.Caption := GetStaticText(8);
  ColByColOrderCheck.Caption := GetStaticText(9);
  ZoomLabel.Caption := GetStaticText(10);
  LCDGridLinesCheck.Caption := GetStaticText(11);

  InsertAsLCDBtn.Caption := GetStaticText(12);
  CopyBtn.Caption := GetStaticText(13);

  //-----------------
  //Change Hints
  //-----------------
  ///////////////////
  PasteCodeBtn.Hint := GetStaticText(14);
  ClearCodeMemoBtn.Hint := GetStaticText(15);

  //======================================================
  //===  OTHER  ===
  //======================================================
  IgnoreCharsEditLabel.Caption := GetStaticText(16);

  MainForm.ShowForm(Self, FormVisible);
end;

procedure TCodeToLCDForm.SetDynamicTexts(LangInstance: THandle);

  procedure SetDefaultDynamicTexts;
  begin
    //No dynamic text is available in this unit.
    //A dummy dynamic text is declared.
    Dyn_Texts[1] := '';
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

end.
