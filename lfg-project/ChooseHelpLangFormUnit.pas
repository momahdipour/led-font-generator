unit ChooseHelpLangFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, TntButtons, ComCtrls, TntComCtrls,
  TntStdCtrls, Help, Language, TntSystem, TntForms;

const
  STATIC_LANG_RESID_START_NUM = 7000;
  DYNAMIC_LANG_RESID_START_NUM = 7250;
  DYNAMIC_TEXTS_COUNT = 1;

type
  TChooseHelpLangForm = class(TTntForm)
    TitleLabel: TTntLabel;
    OKBtn: TTntBitBtn;
    CancelBtn: TTntBitBtn;
    HelpLanguageList: TListBox;
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure HelpLanguageListClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure HelpLanguageListDblClick(Sender: TObject);
  private
    { Private declarations }
    OKClicked: Boolean;
    
    Dyn_Texts: array[1..DYNAMIC_TEXTS_COUNT] of WideString;
    ControlsFlipped: Boolean;
    procedure SetDynamicTexts(LangInstance: THandle);
  public
    { Public declarations }
    procedure SetLanguage(LanguageInfo: TLanguageInfo;
      LanguageOptions: TLanguageOptions; LangInstance: THandle);
  end;

var
  ChooseHelpLangForm: TChooseHelpLangForm;

implementation

uses
  MainUnit, SpecialProcsUnit;

{$R *.dfm}

procedure TChooseHelpLangForm.FormShow(Sender: TObject);
begin
  Help.GetAvailableHelpLanguages(HelpLanguageList.Items);
  HelpLanguageList.ItemIndex := HelpLanguageList.Items.IndexOf(MainForm.GlobalOptions.DefaultHelpLanguage);
  OKBtn.Enabled := HelpLanguageList.ItemIndex >= 0;
  OKClicked:= False;
end;

procedure TChooseHelpLangForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;

  if OKClicked and (HelpLanguageList.ItemIndex >= 0) then
  begin
    MainForm.GlobalOptions.DefaultHelpLanguage := HelpLanguageList.Items.Strings[HelpLanguageList.ItemIndex];
    MainForm.SetDefaultHelpLanguage(MainForm.GlobalOptions.DefaultHelpLanguage);
  end;
  OKClicked := False;
end;

procedure TChooseHelpLangForm.HelpLanguageListClick(Sender: TObject);
begin
  OKBtn.Enabled := HelpLanguageList.ItemIndex >= 0;
end;

procedure TChooseHelpLangForm.OKBtnClick(Sender: TObject);
begin
  OKClicked:= True;
end;

procedure TChooseHelpLangForm.HelpLanguageListDblClick(Sender: TObject);
begin
  if HelpLanguageList.ItemAtPos(HelpLanguageList.ScreenToClient(Mouse.CursorPos), True) >= 0 then
    OKBtn.Click;
end;

//===========================================================================
//***************************************************************************
//Multilanguage
//***************************************************************************
//===========================================================================
procedure TChooseHelpLangForm.SetLanguage(LanguageInfo: TLanguageInfo;
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
    SpecialProcs.FlipControls([OKBtn, CancelBtn]);
  //////////////////////////////
  if LangInstance = 0 then
  begin
    MainForm.ShowForm(Self, FormVisible);
    Exit;
  end;

  Self.Caption := GetStaticText(0);

  //////////////////
  TitleLabel.Caption := GetStaticText(1);

  //////////////////
  OKBtn.Caption := GetStaticText(2);
  CancelBtn.Caption := GetStaticText(3);

  MainForm.ShowForm(Self, FormVisible);
end;

procedure TChooseHelpLangForm.SetDynamicTexts(LangInstance: THandle);

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
//===========================================================================
//***************************************************************************
//***************************************************************************
//===========================================================================

end.
