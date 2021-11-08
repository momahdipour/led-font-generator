unit LCDOptionsUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, MainUnit, Mask, ProcsUnit,
  TntStdCtrls, TntButtons, TntDialogs, TntSystem, Language, D7ColorBox,
  TntForms, SoundDialogs, LCDConsts;

const
  //Multilanguage
  STATIC_LANG_RESID_START_NUM = 3500;
  DYNAMIC_LANG_RESID_START_NUM = 3750;
  DYNAMIC_TEXTS_COUNT = 3;
  ///////////////

type
  TLCDOptionsForm = class(TTntForm)
    LCDDisplayOptionsGroup: TTntGroupBox;
    LCDCursorGroup: TTntGroupBox;
    CursorColorLabel: TTntLabel;
    ShowCursorRecCheck: TTntCheckBox;
    CursorColorColorBox: TD7ColorBox;
    FilledLabel: TTntLabel;
    ClearedLabel: TTntLabel;
    GridLabel: TTntLabel;
    GridColorBox: TD7ColorBox;
    ClearedColorBox: TD7ColorBox;
    FilledColorBox: TD7ColorBox;
    LCDSizeGroup: TTntGroupBox;
    LCDWidthEdit: TEdit;
    LCDHeightEdit: TEdit;
    CancelBtn: TTntBitBtn;
    OKBtn: TTntBitBtn;
    LCDWidthLabel: TTntLabel;
    LCDHeightLabel: TTntLabel;
    GoToProgramOptionsBtn: TTntBitBtn;
    Bevel4: TBevel;
    UseSolidColorsCheck: TTntCheckBox;
    DefaultColorsBtn: TTntBitBtn;
    LCDOtherOptionsGroupBox: TTntGroupBox;
    CTRLClickToggleCheck: TTntCheckBox;
    DontAdvanceCursorCheck: TTntCheckBox;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FilledColorBoxChange(Sender: TObject);
    procedure DefaultColorsBtnClick(Sender: TObject);
  private
    { Private declarations }
    OldFilledColor,OldClearedColor:TColor;
    OKClicked:Boolean;

    //Multilanguage
    Dyn_Texts: array[1..DYNAMIC_TEXTS_COUNT] of WideString;
    ControlsFlipped: Boolean;
    procedure SetDynamicTexts(LangInstance: THandle);
    ///////////////
  public
    { Public declarations }
    procedure ReadSettings(ALCDOptions:TLCDOptions);
    procedure WriteSettings(var ALCDOpions:TLCDOptions);

    procedure SetLanguage(LanguageInfo: TLanguageInfo;
      LanguageOptions: TLanguageOptions; LangInstance: THandle);
  end;

var
  LCDOptionsForm: TLCDOptionsForm;

implementation

uses SpecialProcsUnit;

{$R *.dfm}

{ TLCDOptionsForm }

procedure TLCDOptionsForm.ReadSettings(ALCDOptions: TLCDOptions);
begin
  with ALCDOptions do
  begin
    ShowCursorRecCheck.Checked := ShowCursorRectangle;
    CursorColorColorBox.Selected := LCDCursorColor;
    FilledColorBox.Selected := LCDFilledColor;
    ClearedColorBox.Selected := LCDClearedColor;
    GridColorBox.Selected := LCDGridColor;
    LCDWidthEdit.Text := IntToStr(ALCDOptions.LCDWidth);
    LCDHeightEdit.Text := IntToStr(ALCDOptions.LCDHeight);
    UseSolidColorsCheck.Checked := LCDUseSolidColors;
    CTRLClickToggleCheck.Checked := CTRLClickToggle;
    DontAdvanceCursorCheck.Checked := not DontAdvanceCursorAutomatically;
  end;
  OldFilledColor := FilledColorBox.Selected;
  OldClearedColor := ClearedColorBox.Selected;
end;

procedure TLCDOptionsForm.WriteSettings(var ALCDOpions: TLCDOptions);
begin
  with ALCDOpions do
  begin
    ShowCursorRectangle := ShowCursorRecCheck.Checked;
    LCDCursorColor := CursorColorColorBox.Selected;
    LCDFilledColor := FilledColorBox.Selected;
    LCDClearedColor := ClearedColorBox.Selected;
    LCDGridColor := GridColorBox.Selected;
    ALCDOpions.LCDWidth := StrToInt(LCDWidthEdit.Text);
    ALCDOpions.LCDHeight := StrToInt(LCDHeightEdit.Text);
    LCDUseSolidColors := UseSolidColorsCheck.Checked;
    CTRLClickToggle := CTRLClickToggleCheck.Checked;
    DontAdvanceCursorAutomatically := not DontAdvanceCursorCheck.Checked;
  end;
end;

procedure TLCDOptionsForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  NewWidth, NewHeight: Integer;
begin
  if not OKClicked then
    CanClose:=True
  else
  begin
    NewWidth := 0;
    NewHeight := 0;
    Procs.StrToInteger(LCDWidthEdit.Text, NewWidth);
    Procs.StrToInteger(LCDHeightEdit.Text, NewHeight);

    if not Procs.IsValidInt(LCDWidthEdit.Text) or (NewWidth <= 0) then
    begin
      WideShowMessageSoundTop(Dyn_Texts[2] {'Please enter a valid value for the design width.'});
      LCDWidthEdit.SetFocus;
      LCDWidthEdit.SelectAll;
    end
    else if not Procs.IsValidInt(LCDHeightEdit.Text) or (NewHeight <= 0) then
    begin
      WideShowMessageSoundTop(Dyn_Texts[3] {'Please enter a valid value for the design height.'});
      LCDHeightEdit.SetFocus;
      LCDHeightEdit.SelectAll;
    end
    else if FilledColorBox.Selected = ClearedColorBox.Selected then
      WideShowMessageSoundTop(Dyn_Texts[1] {'Filled cell color cannot be same as the cleared cell color.'});

    CanClose := (Procs.IsValidInt(LCDWidthEdit.Text) and Procs.IsValidInt(LCDHeightEdit.Text)) and
                (FilledColorBox.Selected <> ClearedColorBox.Selected);
  end;
  OKClicked:=False;  
end;

procedure TLCDOptionsForm.FormShow(Sender: TObject);
begin
  LCDWidthEdit.SetFocus;  //Taborder = 1 (set focus to the default control because this form is always in the memory.)
  LCDWidthEdit.SelectAll;
  OKClicked:=False;
end;

procedure TLCDOptionsForm.OKBtnClick(Sender: TObject);
begin
  OKClicked := True;
end;

procedure TLCDOptionsForm.FormCreate(Sender: TObject);
begin
  GoToProgramOptionsBtn.ModalResult := mrGoToProgramOptions;
end;

procedure TLCDOptionsForm.FilledColorBoxChange(Sender: TObject);
begin
  if FilledColorBox.Selected = ClearedColorBox.Selected then
  begin
    WideShowMessageSoundTop(Dyn_Texts[1] {'Filled cell color cannot be same as the cleared cell color.'});
    FilledColorBox.Selected := OldFilledColor;
    ClearedColorBox.Selected := OldClearedColor;
  end
  else
  begin
    OldFilledColor:=FilledColorBox.Selected;
    OldClearedColor:=ClearedColorBox.Selected;
  end;
end;

//***************************************************************************
//Multilanguage
//***************************************************************************
procedure TLCDOptionsForm.SetLanguage(LanguageInfo: TLanguageInfo;
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
    SpecialProcs.FlipControls([OKBtn, CancelBtn, GoToProgramOptionsBtn]);
  //////////////////////////////
  if LangInstance = 0 then
  begin
    MainForm.ShowForm(Self, FormVisible);
    Exit;
  end;

   Self.Caption := GetStaticText(0);

  //////////////
  //LCD Size
  LCDSizeGroup.Caption := GetStaticText(1);
  LCDWidthLabel.Caption := GetStaticText(2);
  LCDHeightLabel.Caption := GetStaticText(3);

  /////////////////
  //Display Options
  LCDDisplayOptionsGroup.Caption := GetStaticText(4);
  FilledLabel.Caption := GetStaticText(5);
  ClearedLabel.Caption := GetStaticText(6);
  GridLabel.Caption := GetStaticText(7);
  CTRLClickToggleCheck.Caption := GetStaticText(8);
  DontAdvanceCursorCheck.Caption := GetStaticText(9);

  //LCD Cursor
  LCDCursorGroup.Caption := GetStaticText(10);
  ShowCursorRecCheck.Caption := GetStaticText(11);
  CursorColorLabel.Caption := GetStaticText(12);

  ////////////
  GoToProgramOptionsBtn.Caption := GetStaticText(13);
  OKBtn.Caption := GetStaticText(14);
  CancelBtn.Caption := GetStaticText(15);

  //=== NEW ===
  //Solid colors check box
  UseSolidColorsCheck.Caption := GetStaticText(16);

  //Default Colors button
  DefaultColorsBtn.Caption := GetStaticText(17);

  //Other Options group box
  LCDOtherOptionsGroupBox.Caption := GetStaticText(18);

  MainForm.ShowForm(Self, FormVisible);
end;

procedure TLCDOptionsForm.SetDynamicTexts(LangInstance: THandle);

  procedure SetDefaultDynamicTexts;
  begin
    Dyn_Texts[1] := 'Filled cell color cannot be same as the cleared cell color.';
    Dyn_Texts[2] := 'Please enter a valid value for the design width.';
    Dyn_Texts[3] := 'Please enter a valid value for the design height.';
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

procedure TLCDOptionsForm.DefaultColorsBtnClick(Sender: TObject);
begin
  //Reset cursor color
  CursorColorColorBox.Selected := DEFAULT_LCD_CURSOR_COLOR;

  //Reset filled and cleared cell colors
  FilledColorBox.OnChange := nil;  //Avoid error messages
  ClearedColorBox.OnChange := nil;
  FilledColorBox.Selected := DEFAULT_LCD_FILLED_COLOR;
  ClearedColorBox.Selected := DEFAULT_LCD_CLEARED_COLOR;
  FilledColorBox.OnChange := FilledColorBoxChange;  //Restore the OnChange event handler
  ClearedColorBox.OnChange := FilledColorBoxChange;
  OldFilledColor:=FilledColorBox.Selected;
  OldClearedColor:=ClearedColorBox.Selected;

  //Reset gridlines color
  GridColorBox.Selected := DEFAULT_LCD_GRIDLINES_COLOR;
end;

end.
