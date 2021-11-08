unit ErrorLogFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, TntStdCtrls, TntSystem, Language, TntForms;

const
  STATIC_LANG_RESID_START_NUM = 1500;
  DYNAMIC_LANG_RESID_START_NUM = 1750;
  DYNAMIC_TEXTS_COUNT = 1;

type
  TErrorLogForm = class(TTntForm)
    Panel1: TPanel;
    CloseBtn: TTntButton;
    ErrorLogListBox: TTntListBox;
    procedure CloseBtnClick(Sender: TObject);
    procedure TntFormActivate(Sender: TObject);
    procedure TntFormShow(Sender: TObject);
    procedure TntFormResize(Sender: TObject);
  private
    { Private declarations }

    //Multilanguage
    Dyn_Texts: array[1..DYNAMIC_TEXTS_COUNT] of WideString;
    ControlsFlipped: Boolean;
    procedure SetDynamicTexts(LangInstance: THandle);
    ///////////////
  public
    { Public declarations }
    procedure SetLanguage(LanguageInfo: TLanguageInfo;
      LanguageOptions: TLanguageOptions; LangInstance: THandle);
  end;

var
  ErrorLogForm: TErrorLogForm;

implementation

uses MainUnit, SpecialProcsUnit;

{$R *.dfm}

procedure TErrorLogForm.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TErrorLogForm.TntFormActivate(Sender: TObject);
begin
  if WindowState = wsMinimized then
    WindowState := wsNormal;
end;

procedure TErrorLogForm.TntFormShow(Sender: TObject);
begin
  CloseBtn.SetFocus;
end;

//***************************************************************************
//Multilanguage
//***************************************************************************
procedure TErrorLogForm.SetLanguage(LanguageInfo: TLanguageInfo;
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
  //Exceptions
  if LanguageInfo.RightToLeft and LanguageInfo.FlipControls and
    LanguageOptions.ApplyRTLToAppearance then
  begin
    ErrorLogListBox.BiDiMode := bdRightToLeft;
  end;
  ////////////
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
    SpecialProcs.FlipControls([CloseBtn]);
  //////////////////////////////
  if LangInstance = 0 then
  begin
    MainForm.ShowForm(Self, FormVisible);
    Exit;
  end;

  Self.Caption := GetStaticText(0);

  ////////////////////
  CloseBtn.Caption := GetStaticText(1);

  MainForm.ShowForm(Self, FormVisible);
end;

procedure TErrorLogForm.SetDynamicTexts(LangInstance: THandle);

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

procedure TErrorLogForm.TntFormResize(Sender: TObject);
begin
  ErrorLogListBox.Invalidate;
end;

end.
