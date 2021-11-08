unit CharacterMapFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, StdCtrls, Buttons, TntButtons,
  TntStdCtrls, TntDialogs, TntSystem, Language, TntForms, Registry,
  StrUtils, SoundDialogs, MMAdvancedGrid;

const
  STATIC_LANG_RESID_START_NUM = 6000;
  DYNAMIC_LANG_RESID_START_NUM = 6250;
  DYNAMIC_TEXTS_COUNT = 5;

type
  TCharacterMapForm = class(TTntForm)
    GroupBox1: TGroupBox;
    CharacterEdit: TEdit;
    FilenameEdit: TEdit;
    DescriptionLabel: TTntLabel;
    OKBtn: TTntBitBtn;
    CancelBtn: TTntBitBtn;
    AddEditBtn: TTntBitBtn;
    RemoveBtn: TTntBitBtn;
    CharacterLabel: TTntLabel;
    MapLabel: TTntLabel;
    CharMapGrid: TMMAdvancedGrid;
    procedure FormShow(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure CharMapGridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure CharacterEditChange(Sender: TObject);
    procedure AddEditBtnClick(Sender: TObject);
    procedure RemoveBtnClick(Sender: TObject);
    procedure CharacterEditKeyPress(Sender: TObject; var Key: Char);
    procedure FilenameEditKeyPress(Sender: TObject; var Key: Char);
    procedure CancelBtnClick(Sender: TObject);
    procedure CharacterEditEnter(Sender: TObject);
    procedure CharacterEditExit(Sender: TObject);
    procedure FilenameEditEnter(Sender: TObject);
    procedure FilenameEditExit(Sender: TObject);
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
  CharacterMapForm: TCharacterMapForm;

implementation

{$R *.dfm}

uses
  MainUnit, SpecialProcsUnit, ProcsUnit, LCDProcsUnit;

procedure TCharacterMapForm.FormShow(Sender: TObject);
begin
  CharMapGrid.RowCount:=2;
  AddEditBtn.Caption:= Dyn_Texts[1];  //'&Add'
  CharacterEdit.Text:='';
  FilenameEdit.Text:='';
  try
    //CharMapGrid.BeginUpdate;  --> not necessray because in OnShow event
    LCDProcs.ReadUserMappedChars(CharMapGrid);
  finally
    //CharMapGrid.EndUpdate;  --> not necessray because in OnShow event
    //This section is only because of TAdvStringGrid.
    //CharMapGrid.DefaultRowHeight := CharMapGrid.DefaultRowHeight;  --> Done in LCDProcs
    //CharMapGrid.RowHeights[CharMapGrid.RowCount - 1] := 0;  --> Done in LCDProcs
    CharMapGrid.Cells[0, CharMapGrid.RowCount - 1] := EmptyStr;
    CharMapGrid.Cells[1, CharMapGrid.RowCount - 1] := EmptyStr;
  end;
  
{  try
    if FileExists(ApplicationPath + CHARACTER_MAP_FNAME) then
      CharMapGrid.LoadFromCSV(ApplicationPath + CHARACTER_MAP_FNAME);
  finally
    //This section is only because of TAdvStringGrid.
    CharMapGrid.DefaultRowHeight := CharMapGrid.DefaultRowHeight;
    CharMapGrid.RowHeights[CharMapGrid.RowCount-1]:=0;
    CharMapGrid.Cells[0, CharMapGrid.RowCount - 1] := EmptyStr;
    CharMapGrid.Cells[1, CharMapGrid.RowCount - 1] := EmptyStr;
  end;}
end;

procedure TCharacterMapForm.OKBtnClick(Sender: TObject);
{var
  FName: String;}
begin
  if not LCDProcs.WriteUserMappedChars(CharMapGrid) then
  begin
    WideMessageDlgSoundTop(Dyn_Texts[2] {'Unable to save character map settings.'},mtError,[mbOK],0);
    Exit;
  end;
  Close;

{  FName := ApplicationPath + CHARACTER_MAP_FNAME;
  if FileExists(FName) then
  begin
    if not DeleteFile(FName) then
    begin}
//    WideMessageDlgSoundTop(Dyn_Texts[2] {'Unable to save character map settings.'},SmtError,[mbOK],0);
{    Exit;
    end;
  end;
  CharMapGrid.SaveToCSV(FName);
  Close;}
end;

procedure TCharacterMapForm.CharMapGridSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  if ARow=CharMapGrid.RowCount-1 then
  begin
    CanSelect:=False;
    Exit;
  end;
  CanSelect:=True;
  CharacterEdit.Text:=CharMapGrid.Cells[0,ARow];
  FilenameEdit.Text:=CharMapGrid.Cells[1,ARow];
end;

procedure TCharacterMapForm.CharacterEditChange(Sender: TObject);
var
  Row:Integer;
begin
  for Row:=1 to CharMapGrid.RowCount-2 do
    if CharMapGrid.Cells[0,Row]=CharacterEdit.Text then
    begin
      AddEditBtn.Caption:= Dyn_Texts[3];  //'&Edit';
      Exit;
    end;
  AddEditBtn.Caption := Dyn_Texts[1];
end;

procedure TCharacterMapForm.AddEditBtnClick(Sender: TObject);
var
  ErrMsg1, ErrMsg2: WideString;
  NewChar,NewFName:String;
  Row:Integer;
begin
  ErrMsg1:=Dyn_Texts[4];  //'Please enter a character to add.';
  ErrMsg2:=Dyn_Texts[5];  //'Please enter a name for the character.';

  NewChar:=CharacterEdit.Text;
  NewFName:=FilenameEdit.Text;
  if Length(NewChar)=0 then
  begin
    WideShowMessageSoundTop(ErrMsg1);
    CharacterEdit.SetFocus;
    Exit;
  end;
  if Length(Trim(NewFName))=0 then
  begin
    WideShowMessageSoundTop(ErrMsg2);
    FilenameEdit.SetFocus;
    Exit;
  end;
  if AddEditBtn.Caption=Dyn_Texts[3] {'&Edit'} then
  begin
    for Row:=1 to CharMapGrid.RowCount-2 do
      if CharacterEdit.Text=CharMapGrid.Cells[0,Row] then
      begin
        CharMapGrid.Row:=Row;
        Break;
      end;
    CharMapGrid.Cells[1,CharMapGrid.Row]:=NewFName;
    FilenameEdit.SelectAll;
    FilenameEdit.SetFocus;
  end
  else
  begin
    CharMapGrid.RowCount:=CharMapGrid.RowCount+1;
    CharMapGrid.DefaultRowHeight:=CharMapGrid.DefaultRowHeight;
    CharMapGrid.RowHeights[CharMapGrid.RowCount-1]:=0;
    CharMapGrid.Cells[0,CharMapGrid.RowCount-2]:=NewChar;
    CharMapGrid.Cells[1,CharMapGrid.RowCount-2]:=NewFName;
    CharacterEdit.Text:='';
    FilenameEdit.Text:='';
    CharacterEdit.SetFocus;
  end;
end;

procedure TCharacterMapForm.RemoveBtnClick(Sender: TObject);
var
  Row,RowAdd:Integer;
begin
  if AddEditBtn.Caption=Dyn_Texts[1] then
    Exit;
  RowAdd:=0;
  for Row:=1 to CharMapGrid.RowCount-3 do
  begin
    if CharacterEdit.Text=CharMapGrid.Cells[0,Row] then
    begin
      RowAdd:=1;
    end;
    CharMapGrid.Cells[0,Row]:=CharMapGrid.Cells[0,Row+RowAdd];
    CharMapGrid.Cells[1,Row]:=CharMapGrid.Cells[1,Row+RowAdd];
  end;
  CharMapGrid.RowCount:=CharMapGrid.RowCount-1;
  CharMapGrid.DefaultRowHeight:=CharMapGrid.DefaultRowHeight;
  CharMapGrid.RowHeights[CharMapGrid.RowCount-1]:=0;
  CharacterEdit.Text:='';
  FilenameEdit.Text:='';
end;

procedure TCharacterMapForm.CharacterEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
  begin
    if Length(CharacterEdit.Text) > 0 then
    begin
      FilenameEdit.SelectAll;
      FilenameEdit.SetFocus;
    end
    else
      AddEditBtn.Click;  //Display a message for entering a character
    Key := #0;
  end;
end;

procedure TCharacterMapForm.FilenameEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
  begin
    Key := #0;
    AddEditBtn.Click;
  end;
end;

procedure TCharacterMapForm.CancelBtnClick(Sender: TObject);
begin
  Close;
end;

//***************************************************************************
//Multilanguage
//***************************************************************************
procedure TCharacterMapForm.SetLanguage(LanguageInfo: TLanguageInfo;
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

  DescriptionLabel.Caption := GetStaticText(1);

  CharacterLabel.Caption := GetStaticText(2);
  MapLabel.Caption := GetStaticText(3);
  RemoveBtn.Caption := GetStaticText(4);

  OKBtn.Caption := GetStaticText(5);
  CancelBtn.Caption := GetStaticText(6);

  MainForm.ShowForm(Self, FormVisible);
end;

procedure TCharacterMapForm.SetDynamicTexts(LangInstance: THandle);

  procedure SetDefaultDynamicTexts;
  begin
    Dyn_Texts[1] := '&Add';
    Dyn_Texts[2] := 'Unable to save character map settings.';
    Dyn_Texts[3] := '&Edit';
    Dyn_Texts[4] := 'Please enter a character to add.';
    Dyn_Texts[5] := 'Please enter a name for the character.';
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

procedure TCharacterMapForm.CharacterEditEnter(Sender: TObject);
begin
  OKBtn.Default := False;
end;

procedure TCharacterMapForm.CharacterEditExit(Sender: TObject);
begin
  OKBtn.Default := True;
end;

procedure TCharacterMapForm.FilenameEditEnter(Sender: TObject);
begin
  OKBtn.Default := False;
end;

procedure TCharacterMapForm.FilenameEditExit(Sender: TObject);
begin
  OKBtn.Default := True;
end;

end.
