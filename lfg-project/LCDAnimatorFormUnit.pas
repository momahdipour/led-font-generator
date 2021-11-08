unit LCDAnimatorFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Buttons, ImgList,
  Grids, BaseGrid, AdvGrid, ProcsUnit, TntStdCtrls, TntButtons, TntDialogs,
  TntSystem, Language, TntForms, License, MMAdvancedGrid;

const
  STATIC_LANG_RESID_START_NUM = 3000;
  DYNAMIC_LANG_RESID_START_NUM = 3250;
  DYNAMIC_TEXTS_COUNT = 2;

  PLAY_BITMAP = 0;
  PAUSE_BITMAP = 1;
  MORE_BITMAP = 2;
  LESS_BITMAP = 3;

type
  TDirection=(drRight,drLeft,drUp,drDown);
  TLCDAnimatorSettings=record
    LCDZoomValue:Integer;
    LCDGridVisible:Boolean;
    AnimDirection:TDirection;
    AnimSpeed:Integer;
    AdvancedOptionsVisible:Boolean;
    OutputCheckValue, RunExternalCheckValue:Boolean;
    OutFile: String[255];
    ExternalProgram: String[255];
    FormState: TWindowState;
    FormLeft,FormTop,FormWidth,FormHeight:Integer;
  end;
  TLCDAnimatorForm = class(TTntForm)
    ZoomPanel: TPanel;
    ZoomTrackBar: TTrackBar;
    AnimationGridPanel: TPanel;
    ButtonImageList: TImageList;
    OptionsPanel: TPanel;
    PlayControlPanel: TPanel;
    PlayOptionsPanel: TGroupBox;
    PlayPauseBtn: TBitBtn;
    StopBtn: TBitBtn;
    SplitterPanel: TPanel;
    AnimationTimer: TTimer;
    ZoomLabel: TTntLabel;
    LCDGridLinesCheck: TTntCheckBox;
    AdvancedOptionsSection: TTntGroupBox;
    OutputFileEdit: TEdit;
    ExternalProgramEdit: TEdit;
    DirectionGroup: TTntGroupBox;
    LeftDirectionRadio: TTntRadioButton;
    RightDirectionRadio: TTntRadioButton;
    AnimationSpeedGroup: TTntGroupBox;
    AnimationSpeedTrackBar: TTrackBar;
    SlowLabel: TTntLabel;
    FastLabel: TTntLabel;
    CloseBtn: TTntBitBtn;
    AdvancedOptionsBtn: TTntBitBtn;
    OutputCheck: TTntCheckBox;
    RunExternalCheck: TTntCheckBox;
    OutputFileLabel: TTntLabel;
    ExternalProgramLabel: TTntLabel;
    OutputFileBrowseBtn: TTntBitBtn;
    ExternalProgBrowseBtn: TTntBitBtn;
    SaveDialog1: TTntSaveDialog;
    OpenDialog1: TTntOpenDialog;
    AnimationGrid1: TMMAdvancedGrid;
    SaveGrid: TMMAdvancedGrid;
    procedure AdvancedOptionsBtnClick(Sender: TObject);
    procedure OutputCheckClick(Sender: TObject);
    procedure LCDGridLinesCheckClick(Sender: TObject);
    procedure StopBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RunExternalCheckClick(Sender: TObject);
    procedure OutputFileBrowseBtnClick(Sender: TObject);
    procedure ExternalProgBrowseBtnClick(Sender: TObject);
    procedure PlayPauseBtnClick(Sender: TObject);
    procedure RightDirectionRadioClick(Sender: TObject);
    procedure LeftDirectionRadioClick(Sender: TObject);
    procedure AnimationTimerTimer(Sender: TObject);
    procedure AnimationSpeedTrackBarChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure ZoomTrackBarChange(Sender: TObject);
    procedure SaveDialog1CanClose(Sender: TObject; var CanClose: Boolean);
    procedure TntFormResize(Sender: TObject);
  private
    { Private declarations }
    AnimDirection:TDirection;
    UpdateFormPosSettings: Boolean;

    //Multilanguage
    Dyn_Texts: array[1..DYNAMIC_TEXTS_COUNT] of WideString;
    ControlsFlipped: Boolean;
    procedure SetDynamicTexts(LangInstance: THandle);
    ///////////////

    procedure WindowMove(var msg: TWMMove); message WM_MOVE;
    procedure WindowSize(var msg: TWMSize); message WM_SIZE;

    procedure ReadSettings;
    procedure WriteSettings;
  public
    { Public declarations }
    procedure PutLCDAtCenter(LCDGrid:TAdvStringGrid;Container:TControl);
    procedure ReloadLCD;
    procedure PositionLCD;
    procedure PlayLCD;
    procedure StopLCD;

    procedure SetLanguage(LanguageInfo: TLanguageInfo;
      LanguageOptions: TLanguageOptions; LangInstance: THandle);
  end;

var
  LCDAnimatorForm: TLCDAnimatorForm;

implementation

uses
  MainUnit, SpecialProcsUnit, LCDProcsUnit;

{$R *.dfm}

var
  OldWindowRect: TWindowRect;

procedure TLCDAnimatorForm.AdvancedOptionsBtnClick(Sender: TObject);
begin
  if OptionsPanel.Height=66 then
  begin
    AdvancedOptionsBtn.Tag:=1;  //Indicated that Advanced Options section is open
    OptionsPanel.Height:=185;
    Self.Height:=Self.Height+(185-66);
    AdvancedOptionsBtn.Glyph.Width := 0;
    AdvancedOptionsBtn.Glyph.Height := 0;
    ButtonImageList.GetBitmap(LESS_BITMAP, AdvancedOptionsBtn.Glyph);
  end
  else
  begin
    AdvancedOptionsBtn.Tag:=0;  //Indicated that Advanced Options section is closed
    OptionsPanel.Height:=66;
    Self.Height:=Self.Height-(185-66);
    AdvancedOptionsBtn.Glyph.Width := 0;
    AdvancedOptionsBtn.Glyph.Height := 0;
    ButtonImageList.GetBitmap(MORE_BITMAP, AdvancedOptionsBtn.Glyph);
  end;
  PositionLCD;
{  OptionsPanel.Height:=185;  //Large size
  OptionsPanel.Height:=66;  //Small size}
end;

procedure TLCDAnimatorForm.OutputCheckClick(Sender: TObject);
begin
  OutputFileLabel.Enabled:=OutputCheck.Checked;
  OutputFileEdit.Enabled:=OutputCheck.Checked;
  OutputFileBrowseBtn.Enabled:=OutputCheck.Checked;
  if OutputCheck.Checked then
  begin
    if Length(Trim(OutputFileEdit.Text)) = 0 then
      OutputFileBrowseBtn.Click;
    OutputCheck.Checked := Length(Trim(OutputFileEdit.Text)) <> 0;
  end;
end;

procedure TLCDAnimatorForm.PutLCDAtCenter(LCDGrid: TAdvStringGrid;
  Container: TControl);
var
  ShowScrollBars:Boolean;
begin
  LCDGrid.Width:=(LCDGrid.ColCount)*LCDGrid.DefaultColWidth;
  LCDGrid.Height:=(LCDGrid.RowCount-1)*LCDGrid.DefaultRowHeight;
  ShowScrollBars:=False;
  if LCDGrid.Width>Container.Width then
  begin
    LCDGrid.Width:=Container.Width;
    ShowScrollBars:=True;
  end;
  if LCDGrid.Height>Container.Height then
  begin
    LCDGrid.Height:=Container.Height;
    ShowScrollBars:=True;
  end;
  if ShowScrollBars then
    LCDGrid.ScrollBars:=ssBoth;
  //Put at center
  LCDGrid.Left:=Trunc(Container.Width/2-LCDGrid.Width/2);
  LCDGrid.Top:=Trunc(Container.Height/2-LCDGrid.Height/2);
  LCDGrid.Col:=0;
  LCDGrid.Row:=0;  
end;

procedure TLCDAnimatorForm.LCDGridLinesCheckClick(Sender: TObject);
begin
  if (Sender as TTntCheckBox).Checked then
    //AnimationGrid1.Options:=AnimationGrid1.Options+[goVertLine,goHorzLine]
    AnimationGrid1.GridLineColor := MainForm.LCDOptions.LCDGridColor
  else
    //AnimationGrid1.Options:=AnimationGrid1.Options-[goVertLine,goHorzLine];
    AnimationGrid1.GridLineColor := AnimationGrid1.Color;
end;

procedure TLCDAnimatorForm.ReloadLCD;
var
  Row,Col:Integer;
begin
  with MainForm do
  begin
    AnimationGrid1.GridLineWidth := LCDGrid.GridLineWidth;
    //AnimationGrid1.GridLineColor := LCDGrid.GridLineColor;  --> GridLineColor is set by the LCDGridLinesCheck checkbox, so don't change it here
    AnimationGrid1.RowCount:=LCDGrid.RowCount;
    AnimationGrid1.ColCount:=LCDGrid.ColCount;
    AnimationGrid1.RowHeights[AnimationGrid1.RowCount-1]:=0;
    for Row:=0 to LCDGrid.RowCount-1 do
      for Col:=0 to LCDGrid.ColCount-1 do
      begin
        AnimationGrid1.Colors[Col, Row] := LCDGrid.Colors[Col, Row];
        AnimationGrid1.ColorsTo[Col, Row] := LCDGrid.ColorsTo[Col, Row];
      end;
        
    SaveGrid.ColCount:=AnimationGrid1.ColCount;
    SaveGrid.RowCount:=AnimationGrid1.RowCount-1;
  end;
  ZoomTrackBar.OnChange(ZoomTrackBar);
end;

procedure TLCDAnimatorForm.StopBtnClick(Sender: TObject);
begin
  StopLCD;
  ReloadLCD;
  PositionLCD;
end;

procedure TLCDAnimatorForm.FormShow(Sender: TObject);
begin
  //************************************
  if not License.CheckLicenseStatus then
    Halt;
  //************************************

  ReadSettings;
  UpdateFormPosSettings := True;
  ReloadLCD;
  PlayPauseBtn.Click;
  StopBtn.Click;
//  PositionLCD;
//  ZoomTrackBarEdit1.OnZoomChange(ZoomTrackBarEdit1);
end;

procedure TLCDAnimatorForm.RunExternalCheckClick(Sender: TObject);
begin
  ExternalProgramLabel.Enabled:=RunExternalCheck.Checked;
  ExternalProgramEdit.Enabled:=RunExternalCheck.Checked;
  ExternalProgBrowseBtn.Enabled:=RunExternalCheck.Checked;
  if RunExternalCheck.Checked then
  begin
    if Length(Trim(ExternalProgramEdit.Text)) = 0 then
      ExternalProgBrowseBtn.Click;
    RunExternalCheck.Checked := Length(Trim(ExternalProgramEdit.Text)) <> 0;
  end;
end;

procedure TLCDAnimatorForm.OutputFileBrowseBtnClick(Sender: TObject);
var
  FName: WideString;
  RetrySave: Boolean;
begin
  RetrySave := True;
  SaveDialog1.InitialDir := '';
  while RetrySave do
  begin
    SaveDialog1.Title := Dyn_Texts[1];  //'Output File';
    SaveDialog1.Filter := 'Include Files (*.inc)|*.inc|C Source Files (*.c)|*.c|Assembly Source Files(*.asm)|*.asm|Text Files (*.txt)|*.txt|All Files (*.*)|*.*';
    if DirectoryExists(ExtractFilePath(OutputFileEdit.Text)) then
    begin
      SaveDialog1.InitialDir := ExtractFilePath(OutputFileEdit.Text);
      SaveDialog1.FileName := Procs.ExtractFileNameWithoutExt(OutputFileEdit.Text);
      SaveDialog1.FilterIndex := Procs.GetFilterIndex(SaveDialog1.Filter,
                                   ExtractFileExt(OutputFileEdit.Text));
    end
    else
      SaveDialog1.FileName := Procs.ExtractFileNameWithoutExt(MainForm.GetDefaultFileName) + ' Output';
    if SaveDialog1.Execute then
    begin
      FName := Procs.ApplyFileNameExtension(SaveDialog1.FileName,
                 ExtractFileExt(Procs.ExtractFilterString(SaveDialog1.Filter, SaveDialog1.FilterIndex)));
      if not MainForm.InformForReadOnlySelectedFile(FName) then
      begin
        OutputFileEdit.Text := FName;
        RetrySave := False;
      end;
    end
    else
      RetrySave := False;
  end;
end;

procedure TLCDAnimatorForm.ExternalProgBrowseBtnClick(Sender: TObject);
begin
  OpenDialog1.Title := Dyn_Texts[2];  {'Select External Program'}
  OpenDialog1.Filter:='Programs (*.exe)|*.exe';
  OpenDialog1.DefaultExt := 'exe';
  OpenDialog1.InitialDir := '';
  if DirectoryExists(ExtractFilePath(ExternalProgramEdit.Text)) then
  begin
    OpenDialog1.InitialDir := ExtractFilePath(ExternalProgramEdit.Text);
    OpenDialog1.FileName := Procs.ExtractFileNameWithoutExt(ExternalProgramEdit.Text);
  end;
  if OpenDialog1.Execute then
    ExternalProgramEdit.Text := OpenDialog1.FileName;
  OpenDialog1.DefaultExt := '';
end;

procedure TLCDAnimatorForm.PlayPauseBtnClick(Sender: TObject);
begin
  if PlayPauseBtn.Tag=1 then  //Playing
    StopLCD
  else if PlayPauseBtn.Tag=0 then
    PlayLCD;
end;

procedure TLCDAnimatorForm.RightDirectionRadioClick(Sender: TObject);
begin
  AnimDirection:=drRight;
end;

procedure TLCDAnimatorForm.LeftDirectionRadioClick(Sender: TObject);
begin
  AnimDirection:=drLeft;
end;

procedure TLCDAnimatorForm.AnimationTimerTimer(Sender: TObject);
const
  PROCESS_EXE_TRY_COUNT = 10;  //Try 10 times to execute the external program (>= 1)
var
  StartupInfo:TStartupInfo;
  ProcessInformation:TProcessInformation;
  Col,Row, i:Integer;
  ProcessCreated: Boolean;
begin
  AnimationTimer.Enabled:=False;
  AnimationGrid1.SelectRows(0, AnimationGrid1.RowCount - 1);  //Don;t select the last row because it is invisible (in TAdvStringGrid)
  case AnimDirection of
    drRight: LCDProcs.RotateSelectionRight(AnimationGrid1);
    drLeft:  LCDProcs.RotateSelectionLeft(AnimationGrid1);
  end;
  Application.ProcessMessages;
  //Process advanced options
  if OutputCheck.Checked then
  begin
    try
      //SaveGrid.ColCount and SaveGrid.RowCount are previously set in ReloadLCD procedure.
      for Row:=0 to SaveGrid.RowCount-1 do  //SaveGrid.RowCount already is set to (AnimationGrid1.RowCount - 1)
        for Col:=0 to SaveGrid.ColCount-1 do
          if AnimationGrid1.Colors[Col,Row]=MainForm.LCDOptions.LCDFilledColor then
            //***Comparing the ColorsTo values is not necessary
            SaveGrid.Cells[Col,Row]:='1'
          else
            SaveGrid.Cells[Col,Row]:='0';
      SaveGrid.SaveToASCII(OutputFileEdit.Text);
      Application.ProcessMessages;
    except
      Screen.Cursor:=crDefault;
    end;
  end;
  if RunExternalCheck.Checked then
  begin
    try
      StartupInfo.cb:=SizeOf(TStartupInfo);
      StartupInfo.lpReserved:=nil;
      StartupInfo.lpDesktop:=nil;
      StartupInfo.lpTitle:=nil;
      StartupInfo.dwFlags:=0;

      for i := 1 to PROCESS_EXE_TRY_COUNT do  //Try to execute the external program for a specified number of times
      begin
        ProcessCreated := Windows.CreateProcess(PChar(ExternalProgramEdit.Text),PChar(OutputFileEdit.Text),
          nil,nil,False,HIGH_PRIORITY_CLASS,nil,
          PChar(Procs.GetFullyQualifiedFilName(ExtractFilePath(ExternalProgramEdit.Text))),
           StartupInfo,ProcessInformation);
        if ProcessCreated then
          Break;
      end;

      if ProcessCreated then
      begin
        WaitForSingleObject(ProcessInformation.hProcess,INFINITE);
        Application.ProcessMessages;
        Sleep(5);  //Allow user to stop the operation
      end;
    except
    end;
  end;
  if PlayPauseBtn.Tag=1 then
    AnimationTimer.Enabled:=True;
end;

procedure TLCDAnimatorForm.AnimationSpeedTrackBarChange(Sender: TObject);
begin
  AnimationTimer.Interval:=Trunc(1000/AnimationSpeedTrackBar.Position);
end;

procedure TLCDAnimatorForm.PositionLCD;
begin
  AnimationGrid1.ScrollBars:=ssNone;
  AnimationGrid1.DefaultRowHeight:=ZoomTrackBar.Position;
  AnimationGrid1.DefaultColWidth:=ZoomTrackBar.Position;
  AnimationGrid1.RowHeights[AnimationGrid1.RowCount-1]:=0;

  PutLCDAtCenter(AnimationGrid1,AnimationGridPanel);
end;

procedure TLCDAnimatorForm.PlayLCD;
begin
  PlayPauseBtn.Tag:=1;
  AdvancedOptionsSection.Enabled:=False;
  if RightDirectionRadio.Checked then
    AnimDirection:=drRight
  else if LeftDirectionRadio.Checked then
    AnimDirection:=drLeft;
  AnimationTimer.Interval:=Trunc(1000/AnimationSpeedTrackBar.Position);
  AnimationTimer.Enabled:=True;
  //Update glyph
  PlayPauseBtn.Glyph.Width := 0;
  PlayPauseBtn.Glyph.Height := 0;
  ButtonImageList.GetBitmap(PAUSE_BITMAP, PlayPauseBtn.Glyph);
end;

procedure TLCDAnimatorForm.StopLCD;
begin
  PlayPauseBtn.Tag:=0;
  AdvancedOptionsSection.Enabled:=True;
  AnimationTimer.Enabled:=False;
  //Update glyph
  PlayPauseBtn.Glyph.Width := 0;
  PlayPauseBtn.Glyph.Height := 0;
  ButtonImageList.GetBitmap(PLAY_BITMAP, PlayPauseBtn.Glyph);
end;

procedure TLCDAnimatorForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  StopLCD;
  WriteSettings;
end;

procedure TLCDAnimatorForm.ReadSettings;
begin
  with MainForm.GlobalOptions do
  begin
    AdvancedOptionsBtn.Click;
    AdvancedOptionsBtn.Click;
    if LCDAnimatorSettings.AdvancedOptionsVisible and (AdvancedOptionsBtn.Tag=0) then
      AdvancedOptionsBtn.Click  //Close the Advanced Options section
    else if (not LCDAnimatorSettings.AdvancedOptionsVisible) and (AdvancedOptionsBtn.Tag=1) then
      AdvancedOptionsBtn.Click;
    if LCDAnimatorSettings.FormWidth>0 then
    begin
      Left:=LCDAnimatorSettings.FormLeft;
      Top:=LCDAnimatorSettings.FormTop;
      Width:=LCDAnimatorSettings.FormWidth;
      Height:=LCDAnimatorSettings.FormHeight;
      WindowState := LCDAnimatorSettings.FormState;
    end;

    ZoomTrackBar.Position:=LCDAnimatorSettings.LCDZoomValue;
    LCDGridLinesCheck.Checked := LCDAnimatorSettings.LCDGridVisible;
    LCDGridLinesCheck.OnClick(LCDGridLinesCheck);  //Force to update grid lines color
//    LCDGridLinesCheck
    case LCDAnimatorSettings.AnimDirection of
      drRight: RightDirectionRadio.Checked:=True;
      drLeft:  LeftDirectionRadio.Checked:=True;
//      drUp:
//      drDown:
    end;
    AnimationSpeedTrackBar.Position:=LCDAnimatorSettings.AnimSpeed;
    OutputFileEdit.Text:=LCDAnimatorSettings.OutFile;
    ExternalProgramEdit.Text:=LCDAnimatorSettings.ExternalProgram;
    OutputCheck.Checked:=LCDAnimatorSettings.OutputCheckValue;
    OutputCheckClick(OutputCheck);
    RunExternalCheck.Checked:=LCDAnimatorSettings.RunExternalCheckValue;
    RunExternalCheckClick(RunExternalCheck);
  end;
end;

procedure TLCDAnimatorForm.WriteSettings;
begin
  with MainForm.GlobalOptions do
  begin
    {FormLeft, FormTop, FormWidth, and FormHeight settings already are updated.}
    LCDAnimatorSettings.AnimSpeed:=AnimationSpeedTrackBar.Position;
    if RightDirectionRadio.Checked then
      LCDAnimatorSettings.AnimDirection:=drRight
    else if LeftDirectionRadio.Checked then
      LCDAnimatorSettings.AnimDirection:=drLeft;
{    else if UpDirectionRadio.Checked then
      LCDAnimatorSettings.AnimDirection:=drUp
    else if DownDirectionRadio.Checked then
      LCDAnimatorSettings.AnimDirection:=drDown;}
    LCDAnimatorSettings.LCDZoomValue:=ZoomTrackBar.Position;
    LCDAnimatorSettings.LCDGridVisible:=LCDGridLinesCheck.Checked;
    LCDAnimatorSettings.AdvancedOptionsVisible:=AdvancedOptionsBtn.Tag=1;
    LCDAnimatorSettings.OutputCheckValue:=OutputCheck.Checked;
    LCDAnimatorSettings.OutFile:=OutputFileEdit.Text;
    LCDAnimatorSettings.RunExternalCheckValue:=RunExternalCheck.Checked;
    LCDAnimatorSettings.ExternalProgram:=ExternalProgramEdit.Text;
  end;
end;

procedure TLCDAnimatorForm.FormCreate(Sender: TObject);
begin
  with MainForm.GlobalOptions do
    if MainForm.GlobalOptions.LCDAnimatorSettings.FormWidth=0 then
    begin
      AdvancedOptionsBtn.Click;
      LCDAnimatorSettings.FormLeft:=Trunc(Screen.Width/2-Width/2);
      LCDAnimatorSettings.FormTop:=Trunc(Screen.Height/2-Height/2);
      LCDAnimatorSettings.FormWidth:=Width;
      LCDAnimatorSettings.FormHeight:=Height;
    end;
end;

procedure TLCDAnimatorForm.FormResize(Sender: TObject);
begin
  PositionLCD;
end;

procedure TLCDAnimatorForm.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TLCDAnimatorForm.ZoomTrackBarChange(Sender: TObject);
begin
  PositionLCD;
end;

procedure TLCDAnimatorForm.WindowMove(var msg: TWMMove);
begin
  inherited;
  if not UpdateFormPosSettings then
    Exit;
  with MainForm.GlobalOptions do
  begin
    OldWindowRect.Left := LCDAnimatorSettings.FormLeft;
    OldWindowRect.Top := LCDAnimatorSettings.FormTop;
    OldWindowRect.Width := LCDAnimatorSettings.FormWidth;
    OldWindowRect.Height := LCDAnimatorSettings.FormHeight;
    LCDAnimatorSettings.FormLeft := Left;
    LCDAnimatorSettings.FormTop := Top;
    LCDAnimatorSettings.FormWidth := Width;
    LCDAnimatorSettings.FormHeight := Height;
    msg.Result:=0;
  end;
end;

procedure TLCDAnimatorForm.WindowSize(var msg: TWMSize);
begin
  inherited;
  if not UpdateFormPosSettings then
    Exit;
  if msg.SizeType = SIZE_MAXIMIZED then
  begin
    with MainForm.GlobalOptions do
    begin
      LCDAnimatorSettings.FormState := wsMaximized;
      LCDAnimatorSettings.FormLeft := OldWindowRect.Left;
      LCDAnimatorSettings.FormTop := OldWindowRect.Top;
      LCDAnimatorSettings.FormWidth := OldWindowRect.Width;
      LCDAnimatorSettings.FormHeight := OldWindowRect.Height;
    end;
  end
  else if msg.SizeType = SIZE_RESTORED then
  begin
    with MainForm.GlobalOptions do
    begin
      LCDAnimatorSettings.FormState := wsNormal;
      LCDAnimatorSettings.FormLeft := Left;
      LCDAnimatorSettings.FormTop := Top;
      LCDAnimatorSettings.FormWidth := Width;
      LCDAnimatorSettings.FormHeight := Height;
    end;
  end;
  msg.Result := 0;
end;

procedure TLCDAnimatorForm.SaveDialog1CanClose(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := MainForm.PromptForFileReplace(SaveDialog1.FileName,
              ExtractFileExt(Procs.ExtractFilterString(SaveDialog1.Filter, SaveDialog1.FilterIndex)));
end;

procedure TLCDAnimatorForm.TntFormResize(Sender: TObject);
begin
  PositionLCD;
end;

//***************************************************************************
//Multilanguage
//***************************************************************************
procedure TLCDAnimatorForm.SetLanguage(LanguageInfo: TLanguageInfo;
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
    SpecialProcs.FlipChildrenExcept(PlayControlPanel, FlipExcludedControlsList, True);
  end;
  //////////////////////////////
  if LangInstance = 0 then
  begin
    MainForm.ShowForm(Self, FormVisible);
    Exit;
  end;

  Self.Caption := GetStaticText(0);

  //////////////
  ZoomLabel.Caption := GetStaticText(1);
  LCDGridLinesCheck.Caption := GetStaticText(2);

  //////////////
  DirectionGroup.Caption := GetStaticText(3);
  LeftDirectionRadio.Caption := GetStaticText(4);
  RightDirectionRadio.Caption := GetStaticText(5);

  //////////////
  AnimationSpeedGroup.Caption := GetStaticText(6);
  SlowLabel.Caption := GetStaticText(7);
  FastLabel.Caption := GetStaticText(8);

  //////////////
  CloseBtn.Caption := GetStaticText(9);
  AdvancedOptionsBtn.Caption := GetStaticText(10);

  //////////////
  //Advanced Options
  AdvancedOptionsSection.Caption := GetStaticText(11);
  OutputCheck.Caption := GetStaticText(12);
  OutputFileLabel.Caption := GetStaticText(13);
  RunExternalCheck.Caption := GetStaticText(14);
  ExternalProgramLabel.Caption := GetStaticText(15);

  MainForm.ShowForm(Self, FormVisible);
end;

procedure TLCDAnimatorForm.SetDynamicTexts(LangInstance: THandle);

  procedure SetDefaultDynamicTexts;
  begin
    Dyn_Texts[1] := 'Output File';
    Dyn_Texts[2] := 'Select External Program';
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
