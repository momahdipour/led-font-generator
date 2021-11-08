unit ExportLCDFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, StdCtrls, Buttons, ComCtrls, Spin,
  ExtCtrls, TntComCtrls, TntStdCtrls, ImgList, TntDelayedEdit,
  TntDelayedMemo, TntButtons, TntDialogs, TntSystem, Language, TntForms,
  TntRegistry, LCDConsts, SoundDialogs, ProcsUnit, License, Menus, TntMenus,
  TntExtCtrls, rmLabel, TntXPMenu;

const
  STATIC_LANG_RESID_START_NUM = 2000;
  DYNAMIC_LANG_RESID_START_NUM = 2250;
  DYNAMIC_TEXTS_COUNT = 1;

//  ROWSEPTEXT_FILENAME = 'RS.INI';  --> Not used any more. Separator is written and read to/from the registry

type
  TAutoCalculateFieldProc = function: String;
  TAutoCalculatedField = record
    Identifier: String;
    FieldProc: TAutoCalculateFieldProc;
  end;

  TOutputFormat=(ofBinary,ofHexadecimal);
  THexFormat=(hfPlainFormat,hf0xFormat,hfHFormat,hfDollarFormat, hfCustom);
  TExportLCDForm = class(TTntForm)
    BottomPanel: TPanel;
    ExportMemo: TTntMemo;
    AllGlyphs: TImageList;
    CloseBtn: TTntBitBtn;
    SaveBtn: TTntBitBtn;
    CopyBtn: TTntBitBtn;
    SaveDialog1: TTntSaveDialog;
    QESaveDialog: TTntSaveDialog;
    FieldsPopupMenu: TTntPopupMenu;
    CurrentFrame1: TTntMenuItem;
    InputStringinput1: TTntMenuItem;
    CurrentDatedate1: TTntMenuItem;
    CurrentTimeTime1: TTntMenuItem;
    OutputRowCountRowCount1: TTntMenuItem;
    N1: TTntMenuItem;
    N2: TTntMenuItem;
    TntPanel1: TTntPanel;
    OutputPageControl: TTntPageControl;
    BasicOutputSection: TTntTabSheet;
    OutputGroup: TTntGroupBox;
    OnlySelectionCheck: TTntCheckBox;
    OutputFormatGroup: TTntGroupBox;
    BasicSuffixLabel: TTntLabel;
    BasicPrefixLabel: TTntLabel;
    BinaryRadioBtn: TTntRadioButton;
    HexRadioBtn: TTntRadioButton;
    HexFormatCombo: TComboBox;
    SuffixEdit: TTntDelayedEdit;
    PrefixEdit: TTntDelayedEdit;
    NOTValuesCheck: TTntCheckBox;
    OutputOrderGroup: TTntGroupBox;
    ColumnByColumnRadio: TTntRadioButton;
    InverseOrderCheck: TTntCheckBox;
    RowByRowRadio: TTntRadioButton;
    AdvancedOutputSection: TTntTabSheet;
    RowSepGroup: TTntGroupBox;
    AddRowSepRowsLabel: TTntLabel;
    RowSepLabel: TTntLabel;
    RowSeparatorMemo: TTntDelayedMemo;
    AddRowSepCheck: TTntCheckBox;
    RowSepNumOfRowsSpin: TSpinEdit;
    ColumnSepGroup: TTntGroupBox;
    ColSepLabel: TTntLabel;
    ColSepEdit: TTntDelayedEdit;
    AddColSepCheck: TTntCheckBox;
    ColSepNumOfUnitSpin: TSpinEdit;
    ColSepUnitCombo: TTntComboBox;
    AddColBreakCheck: TTntCheckBox;
    ColBreakNumOfUnitSpin: TSpinEdit;
    ColBreakUnitCombo: TTntComboBox;
    Panel2: TPanel;
    ApplyBtn: TTntBitBtn;
    AutomaticApplyCheck: TTntCheckBox;
    QETopLabel: TrmLabel;
    rmLabel2: TrmLabel;
    TntPageControl1: TTntPageControl;
    QESimpleSection: TTntTabSheet;
    QECopyCheck: TTntCheckBox;
    QESaveToFileCheck: TTntCheckBox;
    QEFileNameEdit: TTntEdit;
    BrowseForQEFileBtn: TTntBitBtn;
    QEAdvancedSection: TTntTabSheet;
    QEBeforeFrameLabel: TTntLabel;
    QEAfterFrameLabel: TTntLabel;
    FrameStartNumLabel: TTntLabel;
    QEAppendToFileCheck: TTntCheckBox;
    QEAdvancedFileNameEdit: TTntEdit;
    BrowseForQEAdvancedFileBtn: TTntBitBtn;
    FramePrefixMemo: TTntMemo;
    FrameSuffixMemo: TTntMemo;
    FrameStartNumSpin: TSpinEdit;
    QEAdvancedClearOutputFileBtn: TTntBitBtn;
    QEAdvancedRestartNumberingBtn: TTntBitBtn;
    ClearFramePrefixBtn: TBitBtn;
    ClearFrameSuffixBtn: TBitBtn;
    Bevel2: TBevel;
    InsertAutoItemBtn1: TTntSpeedButton;
    InsertAutoItemBtn2: TTntSpeedButton;
    TntXPMenu1: TTntXPMenu;
    procedure BinaryRadioBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure HexFormatComboChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OnlySelectionCheckClick(Sender: TObject);
    procedure CopyBtnClick(Sender: TObject);
    procedure ApplyBtnClick(Sender: TObject);
    procedure AddColSepCheckClick(Sender: TObject);
    procedure ColSepUnitComboChange(Sender: TObject);
    procedure AutomaticApplyCheckClick(Sender: TObject);
    procedure PrefixEditDelayedChange(Sender: TObject);
    procedure NOTValuesCheckClick(Sender: TObject);
    procedure SuffixEditDelayedChange(Sender: TObject);
    procedure ColSepEditDelayedChange(Sender: TObject);
    procedure RowSeparatorMemoDelayedChange(Sender: TObject);
    procedure PrefixEditChange(Sender: TObject);
    procedure SuffixEditChange(Sender: TObject);
    procedure QESaveToFileCheckClick(Sender: TObject);
    procedure TntFormCreate(Sender: TObject);
    procedure SaveDialog1CanClose(Sender: TObject; var CanClose: Boolean);
    procedure QESaveDialogCanClose(Sender: TObject; var CanClose: Boolean);
    procedure TntFormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure InsertAutoItemBtn1Click(Sender: TObject);
    procedure QEAdvancedClearOutputFileBtnClick(Sender: TObject);
    procedure BrowseForQEFileBtnClick(Sender: TObject);
    procedure BrowseForQEAdvancedFileBtnClick(Sender: TObject);
    procedure QEAppendToFileCheckClick(Sender: TObject);
    procedure InsertAutoItemBtn2Click(Sender: TObject);
    procedure CurrentFrame1Click(Sender: TObject);
    procedure QEAdvancedRestartNumberingBtnClick(Sender: TObject);
    procedure FrameStartNumSpinChange(Sender: TObject);
    procedure QECopyCheckClick(Sender: TObject);
    procedure ClearFramePrefixBtnClick(Sender: TObject);
    procedure ClearFrameSuffixBtnClick(Sender: TObject);
  private
    { Private declarations }
    LoadingConfig: Boolean;

    QEFrameStartNumChanged: Boolean;

    //Multilanguage
    Dyn_Texts: array[1..DYNAMIC_TEXTS_COUNT] of WideString;
    ControlsFlipped: Boolean;
    procedure SetDynamicTexts(LangInstance: THandle);
    ///////////////

    procedure PrepareAdvancedOutputControls;
    function GetHexFomatValue(const Prefix, Suffix: String): THexFormat;
  public
    { Public declarations }
    LCDGrid:TAdvStringGrid;
    LCDFilledColor,LCDClearedColor:TColor;
    procedure GenerateOutput;  //Simple GenerateOutput: Not used anymore - is removed automatically from the final code by compiler 
    function ConvertBinToHex(const BinStr:String):String;
    procedure NormalizeOutput(Lines: TStrings);
    procedure LoadConfig;
    procedure SaveConfig;
    procedure GenerateAdvancedOutput;

    procedure SetLanguage(LanguageInfo: TLanguageInfo;
      LanguageOptions: TLanguageOptions; LangInstance: THandle);
    function ChooseOutputFile(const DefaultFileName: String): String;

    function FillInFields(const Text: String): String;
  end;

var
  ExportLCDForm: TExportLCDForm;

implementation

uses
  MainUnit, TntWideStrings, SpecialProcsUnit;

{$R *.dfm}

//*********************************
//Autocalculated fileds procedures:
function FrameNumber: String;
begin
  Result := IntToStr(MainForm.GlobalOptions.NextFrameNo);
end;

function InputString: String;
var
  S: WideString;
begin
  S := MainForm.GlobalOptions.LastDefaultQEInputString;
  if WideInputQuery('Input For Quick Export', 'Enter string to replace in quick export or press ESC to replace it with empty string:', S) then
    MainForm.GlobalOptions.LastDefaultQEInputString := S
  else
    S := '';
  Result := S;
end;

function LineCount: String;
begin
  Result := IntToStr(ExportLCDForm.ExportMemo.Lines.Count);
end;

function CurrentDate: String;
begin
  Result := DateToStr(Date);
//  Result := FormatDateTime('mmmm d, yyyy', Date);
end;

function CurrentTime: String;
var
  DateTime: TDateTime;
begin
  DateTime := Time;
//  Result := TimeToStr(DateTime);
  Result := FormatDateTime('hh:mm AM/PM', DateTime);
end;
//*********************************

const
  AutoCalculatedFields: array[1..5] of TAutoCalculatedField = (
    (Identifier: '<FrameNo>'; FieldProc: FrameNumber),
    (Identifier: '<Input>'; FieldProc: InputString),
    (Identifier: '<LineCount>'; FieldProc: LineCount),
    (Identifier: '<Date>'; FieldProc: CurrentDate),
    (Identifier: '<Time>'; FieldProc: CurrentTime)
  );

function TExportLCDForm.ConvertBinToHex(const BinStr: String): String;
  function NibbleToHex(const Nibble:String):String;
  begin
    if      Nibble='0000' then Result:='0'
    else if Nibble='0001' then Result:='1'
    else if Nibble='0010' then Result:='2'
    else if Nibble='0011' then Result:='3'
    else if Nibble='0100' then Result:='4'
    else if Nibble='0101' then Result:='5'
    else if Nibble='0110' then Result:='6'
    else if Nibble='0111' then Result:='7'
    else if Nibble='1000' then Result:='8'
    else if Nibble='1001' then Result:='9'
    else if Nibble='1010' then Result:='A'
    else if Nibble='1011' then Result:='B'
    else if Nibble='1100' then Result:='C'
    else if Nibble='1101' then Result:='D'
    else if Nibble='1110' then Result:='E'
    else if Nibble='1111' then Result:='F';
  end;
var
  i:Integer;
  S:String;
begin
  Result:='';
  i:=Length(BinStr);
  while i>0 do
  begin
    if i>4 then
    begin
      S:=Copy(BinStr,i-3,4);
      i:=i-4;
    end
    else
    begin
      S:=Copy(BinStr,1,i);
      i:=0;
    end;
    Insert(StringOfChar('0',4-Length(S)),S,1);
    Insert(NibbleToHex(S),Result,1);
  end;
end;

procedure TExportLCDForm.GenerateOutput;
var
  Line:String;
  Row,Col:Integer;
  StartRow,EndRow,StartCol,EndCol:Integer;
  OneChar, ZeroChar: String;
begin
  if LoadingConfig then Exit;

  ExportMemo.Lines.Clear;
  if OnlySelectionCheck.Checked then
  begin
    StartRow:=LCDGrid.Selection.Top;
    EndRow:=LCDGrid.Selection.Bottom;
    StartCol:=LCDGrid.Selection.Left;
    EndCol:=LCDGrid.Selection.Right;
  end
  else
  begin
    StartRow:=0;
    EndRow:=LCDGrid.RowCount-2;
    StartCol:=0;
    EndCol:=LCDGrid.ColCount-1;
  end;

  if NOTValuesCheck.Checked then
  begin
    OneChar := '0';
    ZeroChar := '1';
  end
  else
  begin
    OneChar := '1';
    ZeroChar := '0';
  end;

  if RowByRowRadio.Checked then
  begin

    for Row:=StartRow to EndRow do
    begin
      Line:='';
      for Col:=StartCol to EndCol do
        if LCDGrid.Colors[Col,Row]=LCDFilledColor then
          Line:=Line + OneChar
        else
          Line:=Line + ZeroChar;

      if HexRadioBtn.Checked then
        Line := ConvertBinToHex(Line);

      if InverseOrderCheck.Checked then
        ExportMemo.Lines.Insert(0, Line)
      else
        ExportMemo.Lines.Append(Line);
    end;

  end
  else  //ColumnByColumnRadio.Checked
  begin

    for Col:=StartCol to EndCol do
    begin
      Line:='';
      for Row:=StartRow to EndRow do
        if LCDGrid.Colors[Col,Row]=LCDFilledColor then
          Line:=Line + OneChar
        else
          Line:=Line + ZeroChar;

      if HexRadioBtn.Checked then
        Line := ConvertBinToHex(Line);

      if InverseOrderCheck.Checked then
        ExportMemo.Lines.Insert(0, Line)
      else
        ExportMemo.Lines.Append(Line);
    end;

  end;

  NormalizeOutput(nil);
end;

procedure TExportLCDForm.BinaryRadioBtnClick(Sender: TObject);
begin
  HexFormatCombo.Enabled:=HexRadioBtn.Checked;
  if HexRadioBtn.Checked then
    HexFormatCombo.ItemIndex := Integer(GetHexFomatValue(PrefixEdit.Text, SuffixEdit.Text));
  if AutomaticApplyCheck.Checked then
    ApplyBtn.Click;
end;

procedure TExportLCDForm.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TExportLCDForm.FormShow(Sender: TObject);
begin
  //************************************
  if not License.CheckLicenseStatus then
    Halt;
  //************************************

  LoadConfig;
  ApplyBtn.Click;
  SaveBtn.SetFocus;
end;

procedure TExportLCDForm.SaveBtnClick(Sender: TObject);
var
  FName:String;
  RetrySave: Boolean;
begin
  //Apply export settings
  if not AutomaticApplyCheck.Checked then
    ApplyBtn.Click;

  //Save output
  RetrySave := True;
  while RetrySave do
  begin
    SaveDialog1.FileName := Procs.ExtractFileNameWithoutExt(MainForm.GetDefaultFileName) + ' Output';
    if SaveDialog1.Execute then
    begin
      FName := SaveDialog1.FileName;
      FName := Procs.ApplyFileNameExtension(SaveDialog1.FileName, ExtractFileExt(Procs.ExtractFilterString(SaveDialog1.Filter, SaveDialog1.FilterIndex)));
      if MainForm.InformForReadOnlySelectedFile(FName) then
        Continue;
      try
        ExportMemo.Lines.SaveToFile(FName);
        RetrySave := False;
      except
        RetrySave := MainForm.DisplayFileSaveError(FName);
      end;
    end
    else
      RetrySave := False;
  end;
end;

procedure TExportLCDForm.HexFormatComboChange(Sender: TObject);
begin
  case HexFormatCombo.ItemIndex of
    0:  //Plain Hex
      begin
        PrefixEdit.Text := '';
        SuffixEdit.Text := '';
      end;
    1:  //0x-Format
      begin
        PrefixEdit.Text := '0x';
        SuffixEdit.Text := '';
      end;
    2:  //H-Format
      begin
        PrefixEdit.Text := '';
        SuffixEdit.Text := 'H';
      end;
    3:  //$-Format
      begin
        PrefixEdit.Text := '$';
        SuffixEdit.Text := '';
      end;
  end;
  if AutomaticApplyCheck.Checked then
    ApplyBtn.Click;
end;

procedure TExportLCDForm.NormalizeOutput(Lines: TStrings);
var
  Line:Integer;
  Suffix,Prefix:String;
begin
  Prefix := PrefixEdit.Text;
  Suffix := SuffixEdit.Text;

  if Lines = nil then
  begin
    for Line:=0 to ExportMemo.Lines.Count - 1 do
      ExportMemo.Lines[Line]:=Prefix+ExportMemo.Lines[Line]+Suffix;
  end
  else
  begin
    for Line:=0 to Lines.Count-1 do
      Lines.Strings[Line]:=Prefix+Lines.Strings[Line]+Suffix;
  end;
end;

procedure TExportLCDForm.LoadConfig;

  function ReadMultiLineString(const KeyName, ValueName: String): WideString;
  var
    Reg: TTntRegistry;
  begin
    Result := '';
    Reg := TTntRegistry.Create(KEY_READ or KEY_QUERY_VALUE or KEY_ENUMERATE_SUB_KEYS);
    try
      if Reg.OpenKeyReadOnly(KeyName) then
      begin
        Result := Reg.ReadString(ValueName);
        Reg.CloseKey;
      end;
    finally
      Reg.Free;
    end;
  end;

begin
  LoadingConfig := True;
  with MainForm.GlobalOptions.ExportLCDFormSettings do
  begin
    BinaryRadioBtn.Checked:=OutputFormat=ofBinary;
    HexRadioBtn.Checked:=OutputFormat=ofHexadecimal;
    OnlySelectionCheck.Checked:=ExportOnlySelection;
    PrefixEdit.Text := PrefixString;
    SuffixEdit.Text := SuffixString;
    HexFormatCombo.ItemIndex:=Ord(OutputHexFormat);
    if HexRadioBtn.Checked then
      HexFormatCombo.OnChange(HexFormatCombo);
    NOTValuesCheck.Checked := InverseValues;
    RowByRowRadio.Checked := not ColumnByColumnOrder;
    ColumnByColumnRadio.Checked := ColumnByColumnOrder;
    InverseOrderCheck.Checked := InverseOrder;
    Height := ExportLCDFormHeight;

    AutomaticApplyCheck.Checked := AutomaticApply;
    AddColSepCheck.Checked := AddColSep;
    AddColBreakCheck.Checked := AddColBreak;
    AddRowSepCheck.Checked := AddRowSep;
    ColSepNumOfUnitSpin.Value := ColSepNumOfUnits;
    ColBreakNumOfUnitSpin.Value := ColBreakNumOfUnits;
    ColSepUnitCombo.ItemIndex := ColSepUnitComboIndex;
    ColBreakUnitCombo.ItemIndex := ColBreakUnitComboIndex;
    RowSepNumOfRowsSpin.Value := RowSepNumOfRows;
    ColSepEdit.Text := ColSepText;

    try
      RowSeparatorMemo.Clear;
      RowSeparatorMemo.Text := ReadMultiLineString(REG_USER_SETTINGS_PATH + '\Export Design\Advanced Output', 'Row Separator');
    except
      RowSeparatorMemo.Clear;
    end;

    QECopyCheck.Checked := QECopyToClipboard;
    QESaveToFileCheck.Checked := QESaveToFile;
    QEFileNameEdit.Text := QEFileName;

    //Quick Export advanced settings
    QEAppendToFileCheck.Checked := QEAppendToFile;
    QEAdvancedFileNameEdit.Text := QEAdvancedFileName;
    FrameStartNumSpin.Value := MainForm.GlobalOptions.NextFrameNo;
    QEFrameStartNumChanged := False;
    FramePrefixMemo.Text := ReadMultiLineString(REG_USER_SETTINGS_PATH + '\Export Design\Quick Export', 'Frame Prefix');
    FrameSuffixMemo.Text := ReadMultiLineString(REG_USER_SETTINGS_PATH + '\Export Design\Quick Export', 'Frame Suffix');
  end;
  PrepareAdvancedOutputControls;
  AutomaticApplyCheck.OnClick(AutomaticApplyCheck);
  LoadingConfig := False;
end;

procedure TExportLCDForm.SaveConfig;

  procedure WriteMultiLineString(const KeyName, ValueName: String; const Value: WideString);
  var
    Reg: TTntRegistry;
  begin
    Reg := TTntRegistry.Create;
    try
      if Reg.OpenKey(KeyName, False) then
      begin
        Reg.WriteString(ValueName, Value);
        Reg.CloseKey;
      end;
    finally
      Reg.Free;
    end;
  end;

begin
  with MainForm.GlobalOptions.ExportLCDFormSettings do
  begin
    if BinaryRadioBtn.Checked then OutputFormat:=ofBinary
    else if HexRadioBtn.Checked then OutputFormat:=ofHexadecimal;
    OutputHexFormat:=THexFormat(HexFormatCombo.ItemIndex);
    ExportOnlySelection:=OnlySelectionCheck.Checked;
    PrefixString := PrefixEdit.Text;
    SuffixString := SuffixEdit.Text;
    InverseValues := NOTValuesCheck.Checked;
    ColumnByColumnOrder := ColumnByColumnRadio.Checked;
    InverseOrder := InverseOrderCheck.Checked;
    ExportLCDFormHeight := Height;
    AutomaticApply := AutomaticApplyCheck.Checked;

    //Advanced Output settings
    AddColSep := AddColSepCheck.Checked;
    AddColBreak := AddColBreakCheck.Checked;
    AddRowSep := AddRowSepCheck.Checked;
    ColSepNumOfUnits := ColSepNumOfUnitSpin.Value;
    ColBreakNumOfUnits := ColBreakNumOfUnitSpin.Value;
    ColSepUnitComboIndex := ColSepUnitCombo.ItemIndex;
    ColBreakUnitComboIndex := ColBreakUnitCombo.ItemIndex;
    RowSepNumOfRows := RowSepNumOfRowsSpin.Value;
    ColSepText := ColSepEdit.Text;

    try
      WriteMultiLineString(REG_USER_SETTINGS_PATH + '\Export Design\Advanced Output', 'Row Separator', RowSeparatorMemo.Text);
    except
    end;

    //Quick Export settings
    QECopyToClipboard := QECopyCheck.Checked;
    QESaveToFile := QESaveToFileCheck.Checked;
    QEFileName := QEFileNameEdit.Text;

    //Quick Export advanced settings
    QEAppendToFile := QEAppendToFileCheck.Checked;
    QEAdvancedFileName := QEAdvancedFileNameEdit.Text;
    if QEFrameStartNumChanged then  //Update the QEFrameStartNum if it is changed
      QEFrameStartNum := FrameStartNumSpin.Value;
    WriteMultiLineString(REG_USER_SETTINGS_PATH + '\Export Design\Quick Export', 'Frame Prefix', FramePrefixMemo.Text);
    WriteMultiLineString(REG_USER_SETTINGS_PATH + '\Export Design\Quick Export', 'Frame Suffix', FrameSuffixMemo.Text);

    //Set the next frame number
    MainForm.GlobalOptions.NextFrameNo := FrameStartNumSpin.Value;
  end;
end;

procedure TExportLCDForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Length(Trim(QEFileNameEdit.Text)) = 0 then
  begin
    QEFileNameEdit.Text := '';
    QESaveToFileCheck.Checked := False;
  end;
  SaveConfig;
  ExportMemo.Lines.Clear;  //Free up memory
end;

procedure TExportLCDForm.OnlySelectionCheckClick(Sender: TObject);
begin
  if AutomaticApplyCheck.Checked then
    ApplyBtn.Click;
end;

procedure TExportLCDForm.CopyBtnClick(Sender: TObject);
var
  SelStart, SelLength: Integer;
begin
  //Apply export settings
  if not AutomaticApplyCheck.Checked then
    ApplyBtn.Click;

  //Save current selection
  SelStart := ExportMemo.SelStart;
  SelLength := ExportMemo.SelLength;

  //Copy to clipboard
  ExportMemo.SelectAll;
  ExportMemo.CopyToClipboard;

  //Restore old selection
  ExportMemo.SelStart := SelStart;
  ExportMemo.SelLength := SelLength;
end;

procedure TExportLCDForm.GenerateAdvancedOutput;
  procedure ApplyColumnBreaks(InputLineList, OutputLineList: TStringList; BitNum: Integer);
  var
    Line, NewLine: String;
    LineIndex, i, BitCount: Integer;
  begin
    OutputLineList.Clear;
    OutputLineList.BeginUpdate;
    for LineIndex := 0 to InputLineList.Count - 1 do
    begin
      Line := InputLineList.Strings[LineIndex];

      BitCount := 0;
      i := 1;
      NewLine := '';
      while i<=Length(Line) do
      begin
        NewLine := NewLine + Copy(Line,i,1);
        Inc(i);
        Inc(BitCount);
        if BitCount = BitNum then
        begin
          OutputLineList.Append(NewLine);
          NewLine := '';
          BitCount := 0;
        end;
      end;
      if Length(NewLine) > 0 then
        OutputLineList.Append(NewLine);
    end;
    OutputLineList.EndUpdate;
  end;

  procedure ApplyColumnSeparators(InputLineList, OutputLineList: TStringList; ColumnSeparator: String; BitNum: Integer);
  var
    Line, NewFullLine, NewLine: String;
    LineIndex, i, BitCount: Integer;
  begin
    OutputLineList.Clear;
    OutputLineList.BeginUpdate;
    for LineIndex := 0 to InputLineList.Count - 1 do
    begin
      Line := InputLineList.Strings[LineIndex];

      BitCount := 0;
      i := 1;
      NewLine := '';
      NewFullLine := '';
      while i <= Length(Line) do
      begin
        NewLine := NewLine + Copy(Line,i,1);
        Inc(i);
        Inc(BitCount);
        if BitCount = BitNum then
        begin
          if HexRadioBtn.Checked then
            NewFullLine := NewFullLine + ConvertBinToHex(NewLine)
          else
            NewFullLine := NewFullLine + NewLine;
          if i < Length(Line) then
            NewFullLine := NewFullLine + ColumnSeparator;
          NewLine := '';
          BitCount := 0;
        end;
      end;
      if Length(NewLine) > 0 then
      begin
        if HexRadioBtn.Checked then
          NewFullLine := NewFullLine + ConvertBinToHex(NewLine)
        else
          NewFullLine := NewFullLine + NewLine;
      end;
      OutputLineList.Append(NewFullLine);
    end;
    OutputLineList.EndUpdate;
  end;

  function GetColumnSeparatorBitNum(UnitNum, UnitIndex: Integer): Integer;
  var
    UnitFactor: Integer;
  begin
    case UnitIndex of
      0:  UnitFactor := 8;
      1:  UnitFactor := 4;
      2:  UnitFactor := 1;
    else
      UnitFactor := 0
    end;
    Result := UnitNum * UnitFactor;
  end;

var
  Line:String;
  Row, Col, i: Integer;
  StartRow,EndRow,StartCol,EndCol:Integer;
  OneChar, ZeroChar: String;
  FullOutputLineList: TStringList;
  OutputLineList: TStringList;
  RowCount: Integer;
begin
{
1. Generate bit stream of output directly from LCD.
2. Apply column breaks to this bitstream.
2. Apply column separators to this bitstream (based on the number of bits).
3. Change the base of this values for each row (convert to hexadecimal if required).
4. Append any necessary texts for column separators (excxept to the end of each row).
3. Apply row separators to this bitstream. Append any necessary texts.
4. Apply basic settings to the current output.
5. Done.
}
  if LoadingConfig then Exit;

  OutputLineList := TStringList.Create;

//Stage 1.
  OutputLineList.Clear;
  if OnlySelectionCheck.Checked then
  begin
    StartRow:=LCDGrid.Selection.Top;
    EndRow:=LCDGrid.Selection.Bottom;
    StartCol:=LCDGrid.Selection.Left;
    EndCol:=LCDGrid.Selection.Right;
  end
  else
  begin
    StartRow:=0;
    EndRow:=LCDGrid.RowCount-2;
    StartCol:=0;
    EndCol := LCDGrid.ColCount - 1;
  end;

  if NOTValuesCheck.Checked then
  begin
    OneChar := '0';
    ZeroChar := '1';
  end
  else
  begin
    OneChar := '1';
    ZeroChar := '0';
  end;

  if RowByRowRadio.Checked then
  begin

    for Row:=StartRow to EndRow do
    begin
      Line:='';
      for Col:=StartCol to EndCol do
        if LCDGrid.Colors[Col,Row]=LCDFilledColor then
          Line:=Line + OneChar
        else
          Line:=Line + ZeroChar;

//      if HexRadioBtn.Checked then
//        Line := ConvertBinToHex(Line);

      if InverseOrderCheck.Checked then
        OutputLineList.Insert(0, Line)
      else
        OutputLineList.Append(Line);
    end;

  end
  else  //ColumnByColumnRadio.Checked
  begin

    for Col:=StartCol to EndCol do
    begin
      Line:='';
      for Row:=StartRow to EndRow do
        if LCDGrid.Colors[Col,Row]=LCDFilledColor then
          Line:=Line + OneChar
        else
          Line:=Line + ZeroChar;

//      if HexRadioBtn.Checked then
//        Line := ConvertBinToHex(Line);

      if InverseOrderCheck.Checked then
        OutputLineList.Insert(0, Line)
      else
        OutputLineList.Append(Line);
    end;

  end;

//Stage 2.
  FullOutputLineList := TStringList.Create;
  if AddColBreakCheck.Checked then
  begin
    try
      ApplyColumnBreaks(OutputLineList, FullOutputLineList, GetColumnSeparatorBitNum(ColBreakNumOfUnitSpin.Value, ColBreakUnitCombo.ItemIndex));
    except
    end;
  end
  else
    FullOutputLineList.Assign(OutputLineList);

  OutputLineList.Clear;

  if AddColSepCheck.Checked then
  begin
    try
      ApplyColumnSeparators(FullOutputLineList, OutputLineList, ColSepEdit.Text, GetColumnSeparatorBitNum(ColSepNumOfUnitSpin.Value, ColSepUnitCombo.ItemIndex));
    except
    end;
  end
  else
  begin
    try
      ApplyColumnSeparators(FullOutputLineList, OutputLineList, EmptyStr, 100);
    except
    end;
  end;


//Stage 3.
  try
    ExportMemo.Lines.BeginUpdate;
    ExportMemo.Lines.Clear;
    NormalizeOutput(OutputLineList);
    if AddRowSepCheck.Checked then
    begin
      //Don't use a procedure to add widestrings.
      RowCount := 0;
      for i:=0 to OutputLineList.Count - 1 do
      begin
        ExportMemo.Lines.Append(OutputLineList.Strings[i]);
        Inc(RowCount);
        if RowCount = RowSepNumOfRowsSpin.Value then
        begin
          ExportMemo.Lines.AddStrings(RowSeparatorMemo.Lines);
          RowCount := 0;
        end;
      end;
    end
    else
      ExportMemo.Lines.AddStrings(OutputLineList);
  finally
    ExportMemo.Lines.EndUpdate;
  end;
  OutputLineList.Free;
  FullOutputLineList.Free;

  ExportMemo.SelStart := Perform(EM_LINEINDEX, 1 {Line number}, 0);
end;

procedure TExportLCDForm.ApplyBtnClick(Sender: TObject);
begin
  GenerateAdvancedOutput;
  Application.ProcessMessages;
end;

procedure TExportLCDForm.PrepareAdvancedOutputControls;
begin
  ColSepNumOfUnitSpin.Enabled := AddColSepCheck.Checked;
  ColSepUnitCombo.Enabled := AddColSepCheck.Checked;
  ColSepEdit.Enabled := AddColSepCheck.Checked;

  ColBreakNumOfUnitSpin.Enabled := AddColBreakCheck.Checked;
  ColBreakUnitCombo.Enabled := AddColBreakCheck.Checked;

  RowSepNumOfRowsSpin.Enabled := AddRowSepCheck.Checked;
  RowSeparatorMemo.Enabled := AddRowSepCheck.Checked;

  if AddColSepCheck.Checked or AddColBreakCheck.Checked or
     AddRowSepCheck.Checked then
    AdvancedOutputSection.ImageIndex := 1
  else
    AdvancedOutputSection.ImageIndex := 0;
end;

procedure TExportLCDForm.AddColSepCheckClick(Sender: TObject);
begin
  PrepareAdvancedOutputControls;
  if AutomaticApplyCheck.Checked then
    ApplyBtn.Click;
end;

procedure TExportLCDForm.ColSepUnitComboChange(Sender: TObject);
begin
  if AutomaticApplyCheck.Checked then
    ApplyBtn.Click;
end;

procedure TExportLCDForm.AutomaticApplyCheckClick(Sender: TObject);
begin
  ApplyBtn.Enabled := not AutomaticApplyCheck.Checked;
  if AutomaticApplyCheck.Checked then
    ApplyBtn.Click;
end;

procedure TExportLCDForm.PrefixEditDelayedChange(Sender: TObject);
begin
  if AutomaticApplyCheck.Checked then
    ApplyBtn.Click;
end;

procedure TExportLCDForm.NOTValuesCheckClick(Sender: TObject);
begin
  if AutomaticApplyCheck.Checked then
    ApplyBtn.Click;
end;

procedure TExportLCDForm.SuffixEditDelayedChange(Sender: TObject);
begin
  if AutomaticApplyCheck.Checked then
    ApplyBtn.Click;
end;

procedure TExportLCDForm.ColSepEditDelayedChange(Sender: TObject);
begin
  if AutomaticApplyCheck.Checked then
    ApplyBtn.Click;
end;

procedure TExportLCDForm.RowSeparatorMemoDelayedChange(Sender: TObject);
begin
  if AutomaticApplyCheck.Checked then
    ApplyBtn.Click;
end;

function TExportLCDForm.GetHexFomatValue(const Prefix, Suffix: String): THexFormat;
begin
  if Prefix = '' then
  begin

    if Suffix = '' then
      Result := hfPlainFormat
    else if LowerCase(Suffix) = 'h' then
      Result := hfHFormat
    else
      Result := hfCustom;

  end
  else if Suffix = '' then
  begin

    if LowerCase(Prefix) = '0x' then
      Result := hf0xFormat
    else if Prefix = '$' then
      Result := hfDollarFormat
    else
      Result := hfCustom;

  end
  else
    Result := hfCustom;
end;

procedure TExportLCDForm.PrefixEditChange(Sender: TObject);
begin
  if not HexRadioBtn.Checked then
    Exit;
  HexFormatCombo.ItemIndex := Integer(GetHexFomatValue(PrefixEdit.Text, SuffixEdit.Text));
end;

procedure TExportLCDForm.SuffixEditChange(Sender: TObject);
begin
  if not HexRadioBtn.Checked then
    Exit;
  HexFormatCombo.ItemIndex := Integer(GetHexFomatValue(PrefixEdit.Text, SuffixEdit.Text));
end;

procedure TExportLCDForm.QESaveToFileCheckClick(Sender: TObject);
begin
  QEFileNameEdit.Enabled := QESaveToFileCheck.Checked;
  BrowseForQEFileBtn.Enabled := QESaveToFileCheck.Checked;
  if QESaveToFileCheck.Checked and (Length(Trim(QEFileNameEdit.Text)) = 0) then
    BrowseForQEFileBtn.Click;
  if QESaveToFileCheck.Checked and (Length(Trim(QEFileNameEdit.Text)) = 0) then
    QESaveToFileCheck.Checked := False;
end;

procedure TExportLCDForm.TntFormCreate(Sender: TObject);
begin
  //Set default page of page control
  OutputPageControl.ActivePage := BasicOutputSection;
end;

procedure TExportLCDForm.SaveDialog1CanClose(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := MainForm.PromptForFileReplace(SaveDialog1.FileName,
                ExtractFileExt(Procs.ExtractFilterString(SaveDialog1.Filter, SaveDialog1.FilterIndex)));
end;

procedure TExportLCDForm.QESaveDialogCanClose(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := MainForm.PromptForFileReplace(QESaveDialog.FileName,
                ExtractFileExt(Procs.ExtractFilterString(QESaveDialog.Filter, QESaveDialog.FilterIndex)));
end;

procedure TExportLCDForm.TntFormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not(Screen.ActiveControl is TCustomComboBox) and
     (Key = VK_ESCAPE) then  //The ESC key closes the window
    CloseBtn.Click;
end;

//***************************************************************************
//Multilanguage
//***************************************************************************
procedure TExportLCDForm.SetLanguage(LanguageInfo: TLanguageInfo;
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
    SpecialProcs.FlipControls([]);
    SpecialProcs.FlipChildrenExcept(BottomPanel, FlipExcludedControlsList, True);

    //**********************
    //Here we prevent the new sections to be flipped until they are translated in the final release
    SpecialProcs.FlipChildrenExcept(QEAdvancedSection, FlipExcludedControlsList, True);
    //Also correct BiDiMode values to bdLeftToRight
    //ParentBiDiMode property is set to True. This property must be set to False in the final release.
    QEAdvancedSection.BiDiMode := bdLeftToRight;
    FieldsPopupMenu.BiDiMode := bdLeftToRight;
    //**********************
  end;
  //////////////////////////////
  if LangInstance = 0 then
  begin
    MainForm.ShowForm(Self, FormVisible);
    Exit;
  end;

  Self.Caption := GetStaticText(0);

  //////////////
  //Basic Output
  BasicOutputSection.Caption := GetStaticText(1);
  OutputGroup.Caption := GetStaticText(2);

  OnlySelectionCheck.Caption := GetStaticText(3);
  OutputFormatGroup.Caption := GetStaticText(4);
  OutputOrderGroup.Caption := GetStaticText(5);

  //--Output Format
  BinaryRadioBtn.Caption := GetStaticText(6);
  HexRadioBtn.Caption := GetStaticText(7);
  BasicPrefixLabel.Caption := GetStaticText(8);
  BasicSuffixLabel.Caption := GetStaticText(9);
  NOTValuesCheck.Caption := GetStaticText(10);

  //--Output Order
  ColumnByColumnRadio.Caption := GetStaticText(11);
  RowByRowRadio.Caption := GetStaticText(12);
  InverseOrderCheck.Caption := GetStaticText(13);

  /////////////////
  //Advanced Output
  AdvancedOutputSection.Caption := GetStaticText(14);
  ColumnSepGroup.Caption := GetStaticText(15);
  RowSepGroup.Caption := GetStaticText(16);

  //--Column Separators
  AddColSepCheck.Caption := GetStaticText(17);
  ColSepLabel.Caption := GetStaticText(18);
  AddColBreakCheck.Caption := GetStaticText(19);

  //--Row Separators
  AddRowSepCheck.Caption := GetStaticText(20);
  RowSepLabel.Caption := GetStaticText(21);

  //////////////////
  ApplyBtn.Caption := GetStaticText(22);
  AutomaticApplyCheck.Caption := GetStaticText(23);

  //////////////
  //Quick Export
  //QETopLabel.Caption := GetStaticText(24);  --> Not a unicode control yet
  QECopyCheck.Caption := GetStaticText(25);
  QESaveToFileCheck.Caption := GetStaticText(26);

  //////////////
  CopyBtn.Caption := GetStaticText(27);
  SaveBtn.Caption := GetStaticText(28);
  CloseBtn.Caption := GetStaticText(29);

  //Dialogs
  SaveDialog1.Title := GetStaticText(30);
  QESaveDialog.Title := GetStaticText(31);

  //=== NEW ===
  AddRowSepRowsLabel.Caption := GetStaticText(32);

  MainForm.ShowForm(Self, FormVisible);
end;

procedure TExportLCDForm.SetDynamicTexts(LangInstance: THandle);

  procedure SetDefaultDynamicTexts;
  begin
    Dyn_Texts[1] := 'The file %s already exists. Do you want to replace it?';
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

procedure TExportLCDForm.InsertAutoItemBtn1Click(Sender: TObject);
begin
  FieldsPopupMenu.PopupComponent := FramePrefixMemo;
  SpecialProcs.PopupMenuAtControl(InsertAutoItemBtn1, FieldsPopupMenu);
end;

procedure TExportLCDForm.QEAdvancedClearOutputFileBtnClick(Sender: TObject);
var
  F: File;
begin
  AssignFile(F, QEAdvancedFileNameEdit.Text);
  IOResult;
  {$I-}
  Rewrite(F);
  {$I+}
  if IOResult <> 0 then
    WideMessageDlgSoundTop(WideFormat('Unable to access the file ''%s''.', [QEAdvancedFileNameEdit.Text]) , mtError, [mbOK], 0);
  {$I-}
  CloseFile(F);
  {$I+}
  IOResult;
end;

function TExportLCDForm.ChooseOutputFile(const DefaultFileName: String): String;
var
  RetrySave: Boolean;
begin
  Result := DefaultFileName;
  RetrySave := True;
  QESaveDialog.InitialDir := '';
  while RetrySave do
  begin
    if (ExtractFileName(DefaultFileName) = ExtractFileExt(DefaultFileName)) or
       not DirectoryExists(ExtractFilePath(DefaultFileName)) then
      //An invalid filename
      QESaveDialog.FileName := Procs.ExtractFileNameWithoutExt(MainForm.GetDefaultFileName) + ' Output'
    else
    begin
      QESaveDialog.InitialDir := ExtractFilePath(DefaultFileName);
      QESaveDialog.FileName := Procs.ExtractFileNameWithoutExt(DefaultFileName);
      QESaveDialog.FilterIndex := Procs.GetFilterIndex(QESaveDialog.Filter, ExtractFileExt(DefaultFileName));
    end;

    if QESaveDialog.Execute then
    begin
      Result := Procs.ApplyFileNameExtension(QESaveDialog.FileName,
                             ExtractFileExt(Procs.ExtractFilterString(QESaveDialog.Filter, QESaveDialog.FilterIndex)));
      if MainForm.InformForReadOnlySelectedFile(Result) then
        Continue;
      RetrySave := False;
    end
    else
    begin
      RetrySave := False;
      Result := DefaultFileName;
    end;
  end;
end;

procedure TExportLCDForm.BrowseForQEFileBtnClick(Sender: TObject);
begin
  QEFileNameEdit.Text := ChooseOutputFile(QEFileNameEdit.Text);
end;

procedure TExportLCDForm.BrowseForQEAdvancedFileBtnClick(Sender: TObject);
begin
  QEAdvancedFileNameEdit.Text := ChooseOutputFile(QEAdvancedFileNameEdit.Text)
end;

procedure TExportLCDForm.QEAppendToFileCheckClick(Sender: TObject);
begin
  QEAdvancedFileNameEdit.Enabled := QEAppendToFileCheck.Checked;
  BrowseForQEAdvancedFileBtn.Enabled := QEAppendToFileCheck.Checked;
  FramePrefixMemo.Enabled := QEAppendToFileCheck.Checked;
  FrameSuffixMemo.Enabled := QEAppendToFileCheck.Checked;
  InsertAutoItemBtn1.Enabled := QEAppendToFileCheck.Checked;
  InsertAutoItemBtn2.Enabled := QEAppendToFileCheck.Checked;
  QEBeforeFrameLabel.Enabled := QEAppendToFileCheck.Checked;
  QEAfterFrameLabel.Enabled := QEAppendToFileCheck.Checked;
  ClearFramePrefixBtn.Enabled := QEAppendToFileCheck.Checked;
  ClearFrameSuffixBtn.Enabled := QEAppendToFileCheck.Checked;
  FrameStartNumLabel.Enabled := QEAppendToFileCheck.Checked;
  FrameStartNumSpin.Enabled := QEAppendToFileCheck.Checked;
  QEAdvancedClearOutputFileBtn.Enabled := QEAppendToFileCheck.Checked;
  QEAdvancedRestartNumberingBtn.Enabled := QEAppendToFileCheck.Checked;


  if QEAppendToFileCheck.Checked and (Length(Trim(QEAdvancedFileNameEdit.Text)) = 0) then
    BrowseForQEAdvancedFileBtn.Click;
  if QEAppendToFileCheck.Checked and (Length(Trim(QEAdvancedFileNameEdit.Text)) = 0) then
    QEAppendToFileCheck.Checked := False;

  if QEAppendToFileCheck.Checked then
    QEAdvancedSection.ImageIndex := 1
  else
    QEAdvancedSection.ImageIndex := 0;
end;

procedure TExportLCDForm.InsertAutoItemBtn2Click(Sender: TObject);
begin
  FieldsPopupMenu.PopupComponent := FrameSuffixMemo;
  SpecialProcs.PopupMenuAtControl(InsertAutoItemBtn2, FieldsPopupMenu);
end;

procedure TExportLCDForm.CurrentFrame1Click(Sender: TObject);
begin
  SpecialProcs.InsertTextAtCursor(FieldsPopupMenu.PopupComponent as TCustomEdit, AutoCalculatedFields[(Sender as TMenuItem).Tag].Identifier);
end;

function TExportLCDForm.FillInFields(const Text: String): String;

  procedure FillIn(const FieldIdentifier: String; FieldProc: TAutoCalculateFieldProc);
  var
    NextPos: Integer;
  begin
    NextPos := Pos(LowerCase(FieldIdentifier), LowerCase(Result));
    while NextPos > 0 do
    begin
      Delete(Result, NextPos, Length(FieldIdentifier));
      Insert(FieldProc, Result, NextPos);
      NextPos := Pos(LowerCase(FieldIdentifier), LowerCase(Result));
    end;
  end;

var
  i: Integer;
begin
  Result := Text;
  for i := 1 to Length(AutoCalculatedFields) do
    FillIn(AutoCalculatedFields[i].Identifier, AutoCalculatedFields[i].FieldProc);
end;

procedure TExportLCDForm.QEAdvancedRestartNumberingBtnClick(Sender: TObject);
begin
  FrameStartNumSpin.Value := MainForm.GlobalOptions.ExportLCDFormSettings.QEFrameStartNum;
end;

procedure TExportLCDForm.FrameStartNumSpinChange(Sender: TObject);
begin
  QEFrameStartNumChanged := True;
end;

procedure TExportLCDForm.QECopyCheckClick(Sender: TObject);
begin
  if QECopyCheck.Checked or QESaveToFileCheck.Checked then
    QEsimpleSection.ImageIndex := 1
  else
    QESimpleSection.ImageIndex := 0;
end;

procedure TExportLCDForm.ClearFramePrefixBtnClick(Sender: TObject);
begin
  FramePrefixMemo.Clear;
end;

procedure TExportLCDForm.ClearFrameSuffixBtnClick(Sender: TObject);
begin
  FrameSuffixMemo.Clear;
end;

end.
