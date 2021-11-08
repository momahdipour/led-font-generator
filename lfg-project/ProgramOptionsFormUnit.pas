unit ProgramOptionsFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ProcsUnit, MainUnit, TntStdCtrls, TntButtons,
  TntDialogs, ExtCtrls, TntSystem, Language, Spin, TntFileCtrl, TntForms,
  SoundDialogs;

const
  STATIC_LANG_RESID_START_NUM = 5500;
  DYNAMIC_LANG_RESID_START_NUM = 5750;
  DYNAMIC_TEXTS_COUNT = 5;

type
  TProgramOptionsForm = class(TTntForm)
    CancelBtn: TTntBitBtn;
    OKBtn: TTntBitBtn;
    GeneralOptionsGroup: TTntGroupBox;
    NewDesignDialogCheck: TTntCheckBox;
    DefaultLCDSizeGroup: TTntGroupBox;
    DefaultWidthLabel: TTntLabel;
    DefaultHeightLabel: TTntLabel;
    DefaultLCDWidthEdit: TEdit;
    DefaultLCDHeightEdit: TEdit;
    CharacterLibraryGroup: TTntGroupBox;
    CharacterLibraryPathLabel: TTntLabel;
    CharacterLibraryPathEdit: TEdit;
    BrowseCharLibBtn: TTntBitBtn;
    FullProgramResetBtn: TTntBitBtn;
    GoToLCDOptionsBtn: TTntBitBtn;
    ButtonsSplitterBevel: TBevel;
    RUFLSpin: TSpinEdit;
    RUFLLabel1: TTntLabel;
    RUFLLabel2: TTntLabel;
    UndoLevelsLabel: TTntLabel;
    UndoLevelsSpin: TSpinEdit;
    procedure BrowseCharLibBtnClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FullProgramResetBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    OKClicked:Boolean;
    FullResetClicked: Boolean;

    Dyn_Texts: array[1..DYNAMIC_TEXTS_COUNT] of WideString;
    ControlsFlipped: Boolean;
    procedure SetDynamicTexts(LangInstance: THandle);
  public
    { Public declarations }
    procedure ReadSettings(AGlobalOptions:TGlobalOptions);
    procedure WriteSettings(var AGlobalOptions:TGlobalOptions);

    procedure SetLanguage(LanguageInfo: TLanguageInfo;
      LanguageOptions: TLanguageOptions; LangInstance: THandle);
  end;

var
  ProgramOptionsForm: TProgramOptionsForm;

implementation

uses SpecialProcsUnit;

{$R *.dfm}

procedure TProgramOptionsForm.BrowseCharLibBtnClick(Sender: TObject);
var
  FolderName: WideString;
begin
  FolderName := CharacterLibraryPathEdit.Text;
  if Procs.BrowseForFolderW(Dyn_Texts[1] {'Select Character Library path:'}, '', FolderName) then
    CharacterLibraryPathEdit.Text := FolderName;
end;

procedure TProgramOptionsForm.ReadSettings(AGlobalOptions: TGlobalOptions);
begin
  CharacterLibraryPathEdit.Text:=AGlobalOptions.LibraryPath;
  NewDesignDialogCheck.Checked:=not AGlobalOptions.NewDesignDialog;
  DefaultLCDWidthEdit.Text:=IntToStr(AGlobalOptions.NewLCDDefaultWidth);
  DefaultLCDHeightEdit.Text:=IntToStr(AGlobalOptions.NewLCDDefaultHeight);
  RUFLSpin.Value := AGlobalOptions.RUFLCount;
  UndoLevelsSpin.Value := AGlobalOptions.UndoLevels;
end;

procedure TProgramOptionsForm.WriteSettings(
  var AGlobalOptions: TGlobalOptions);
begin
  with AGlobalOptions do
  begin
    LibraryPath:=CharacterLibraryPathEdit.Text;
    NewDesignDialog:=not NewDesignDialogCheck.Checked;
    NewLCDDefaultWidth:=StrToInt(DefaultLCDWidthEdit.Text);
    NewLCDDefaultHeight:=StrToInt(DefaultLCDHeightEdit.Text);
    AGlobalOptions.RUFLCount := RUFLSpin.Value;
    AGlobalOptions.UndoLevels := UndoLevelsSpin.Value;
  end;
end;

procedure TProgramOptionsForm.OKBtnClick(Sender: TObject);
begin
  OKClicked := True;
end;

procedure TProgramOptionsForm.FormShow(Sender: TObject);
begin
  CharacterLibraryPathEdit.SetFocus;  //Taborder = 1 (set focus to the default control because this form is always in the memory.)
  CharacterLibraryPathEdit.SelectAll;
  OKClicked:=False;
  FullResetClicked := False;
end;

procedure TProgramOptionsForm.CancelBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TProgramOptionsForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  DWidth, DHeight: Integer;
begin
  if OKClicked then
  begin
    DWidth := 0;
    DHeight:= 0;
    Procs.StrToInteger(DefaultLCDWidthEdit.Text, DWidth);
    Procs.StrToInteger(DefaultLCDHeightEdit.Text, DHeight);

    if not Procs.IsValidInt(DefaultLCDWidthEdit.Text) or (DWidth<=0) then
    begin
      WideShowMessageSoundTop(Dyn_Texts[2] {'Please enter a valid value for default design width.'});
      DefaultLCDWidthEdit.SetFocus;
      DefaultLCDWidthEdit.SelectAll;
    end
    else if not Procs.IsValidInt(DefaultLCDHeightEdit.Text) or (DHeight<=0) then
    begin
      WideShowMessageSoundTop(Dyn_Texts[3] {'Please enter a valid value for default design height.'});
      DefaultLCDHeightEdit.SetFocus;
      DefaultLCDHeightEdit.SelectAll;
    end;
//    else if (StrToInt(DefaultLCDWidthEdit.Text)<2) and  -->  This limitation on the LCD size is removed
//            (StrToInt(DefaultLCDHeightEdit.Text)<2) then
//    begin
//      WideShowMessageSoundTop(Dyn_Texts[4] {'Design surface may not be less than 2 cells.'});  -->  This resource string is no longer available
//    end;

    CanClose:=Procs.IsValidInt(DefaultLCDWidthEdit.Text) and Procs.IsValidInt(DefaultLCDHeightEdit.Text);
    if CanClose then
      CanClose := ( (DWidth>=2) or (DHeight>=2) ) and (DWidth>0) and (DHeight>0);
  end
  else if FullResetClicked then
  begin
    CanClose := WideMessageDlgSoundTop(WideFormat(Dyn_Texts[5] {'This will reset all program settings to their default values.%sAre you sure you want to reset all the settings?'},
                                       [Chr(13)]), mtWarning, [mbyes, mbNo], 0) = mrYes;
  end
  else
    CanClose:=True;
  OKClicked:=False;
  FullResetClicked := False;
end;

procedure TProgramOptionsForm.FullProgramResetBtnClick(Sender: TObject);
begin
  FullResetClicked := True;
end;

procedure TProgramOptionsForm.FormCreate(Sender: TObject);
begin
  GoToLCDOptionsBtn.ModalResult := mrGoToLCDOptions;
  FullProgramResetBtn.ModalResult := mrFullProgramReset;

  //Multilanguage
  ControlsFlipped := False;
  ///////////////
end;

//***************************************************************************
//Multilanguage
//***************************************************************************
procedure TProgramOptionsForm.SetLanguage(LanguageInfo: TLanguageInfo;
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
    SpecialProcs.FlipControls([CancelBtn, OKBtn, ButtonsSplitterBevel, GoToLCDOptionsBtn, FullProgramResetBtn]);
  //////////////////////////////
  if LangInstance = 0 then
  begin
    MainForm.ShowForm(Self, FormVisible);
    Exit;
  end;

  Self.Caption := GetStaticText(0);

  //Character Library
  CharacterLibraryGroup.Caption := GetStaticText(1);
  CharacterLibraryPathLabel.Caption := GetStaticText(2);
  BrowseCharLibBtn.Caption := GetStaticText(3);

  //Default LCD Size
  DefaultLCDSizeGroup.Caption := GetStaticText(4);
  DefaultWidthLabel.Caption := GetStaticText(5);
  DefaultHeightLabel.Caption := GetStaticText(6);

  //General Options
  GeneralOptionsGroup.Caption := GetStaticText(7);
  NewDesignDialogCheck.Caption := GetStaticText(8);

  /////////////////
  FullProgramResetBtn.Caption := GetStaticText(9);
  GoToLCDOptionsBtn.Caption := GetStaticText(10);
  OKBtn.Caption := GetStaticText(11);
  CancelBtn.Caption := GetStaticText(12);

  //=== NEW =====================
  RUFLLabel1.Caption := GetStaticText(13);
  RUFLLabel2.Caption := GetStaticText(14);

  //Undo levels
  UndoLevelsLabel.Caption := GetStaticText(15);

  MainForm.ShowForm(Self, FormVisible);
end;

procedure TProgramOptionsForm.SetDynamicTexts(LangInstance: THandle);

  procedure SetDefaultDynamicTexts;
  begin
    Dyn_Texts[1] := 'Select Character Library path:';
    Dyn_Texts[2] := 'Please enter a valid value for default design width.';
    Dyn_Texts[3] := 'Please enter a valid value for default design height.';
//    Dyn_Texts[4] := 'Design surface may not be less than 2 cells.';  -->  This limitation on the LCD size has been removed
    Dyn_Texts[5] := 'This will reset all program settings to their default values.%sAre you sure you want to reset all the settings?';
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
