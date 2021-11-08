unit NewDesignFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ProcsUnit, TntStdCtrls, TntButtons, TntSystem,
  Language, TntForms;

const
  STATIC_LANG_RESID_START_NUM = 5000;
  DYNAMIC_LANG_RESID_START_NUM = 5250;
  DYNAMIC_TEXTS_COUNT = 1;

type
  TNewDesignForm = class(TTntForm)
    LCDSizeGroup: TTntGroupBox;
    LCDWidthEdit: TEdit;
    LCDHeightEdit: TEdit;
    SetAsDefaultSizeCheck: TTntCheckBox;
    CancelBtn: TTntBitBtn;
    OKBtn: TTntBitBtn;
    WidthLabel: TTntLabel;
    SizeLabel: TTntLabel;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Dyn_Texts: array[1..DYNAMIC_TEXTS_COUNT] of WideString;
    ControlsFlipped: Boolean;
    procedure SetDynamicTexts(LangInstance: THandle);
  public
    { Public declarations }
    procedure SetLanguage(LanguageInfo: TLanguageInfo;
      LanguageOptions: TLanguageOptions; LangInstance: THandle);
  end;

var
  NewDesignForm: TNewDesignForm;

implementation

uses MainUnit, SpecialProcsUnit;

{$R *.dfm}

procedure TNewDesignForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);

begin
  if Self.ModalResult=mrCancel then
  begin
    CanClose:=True;
    Exit;
  end;  
  CanClose:=Procs.IsValidInt(LCDWidthEdit.Text) and
            Procs.IsValidInt(LCDHeightEdit.Text);
  if CanClose then
    CanClose:=(StrToInt(LCDWidthEdit.Text)>0) and
              (StrToInt(LCDHeightEdit.Text)>0);
end;

procedure TNewDesignForm.FormShow(Sender: TObject);
begin
  SetAsDefaultSizeCheck.Checked := MainForm.GlobalOptions.NewDesignFormCheckChecked;
  LCDWidthEdit.SelectAll;
  LCDWidthEdit.SetFocus;
end;

procedure TNewDesignForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SetAsDefaultSizeCheck.Checked then
  begin
    MainForm.GlobalOptions.NewLCDDefaultWidth := StrToInt(LCDWidthEdit.Text);
    MainForm.GlobalOptions.NewLCDDefaultHeight := StrToInt(LCDHeightEdit.Text);
    MainForm.GlobalOptions.NewDesignFormCheckChecked := SetAsDefaultSizeCheck.Checked;
  end;
end;

//***************************************************************************
//Multilanguage
//***************************************************************************
procedure TNewDesignForm.SetLanguage(LanguageInfo: TLanguageInfo;
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

  /////////////////
  //LCD Size
  LCDSizeGroup.Caption := GetStaticText(1);
  WidthLabel.Caption := GetStaticText(2);
  SizeLabel.Caption := GetStaticText(3);

  /////////////////
  SetAsDefaultSizeCheck.Caption := GetStaticText(4);

  OKBtn.Caption := GetStaticText(5);
  CancelBtn.Caption := GetStaticText(6);

  MainForm.ShowForm(Self, FormVisible);
end;

procedure TNewDesignForm.SetDynamicTexts(LangInstance: THandle);

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
