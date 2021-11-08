unit SelectCharNameFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, TntButtons, ExtCtrls, TntStdCtrls, TntClasses,
  TntExtCtrls, TntForms, TntControls;

type
  TSelectCharNameForm = class(TTntForm)
    Panel1: TPanel;
    OKBtn: TTntBitBtn;
    CancelBtn: TTntBitBtn;
    Panel3: TPanel;
    CharactersTitle: TTntStaticText;
    CharactersList: TTntListBox;
    Panel2: TPanel;
    CharacterGroupsTitle: TTntStaticText;
    CharGroupList: TTntListBox;
    CharFileNameEdit: TTntEdit;
    UserMappedCharsBtn: TTntBitBtn;
    Bevel5: TTntBevel;
    procedure CharGroupListClick(Sender: TObject);
    procedure CharactersListDblClick(Sender: TObject);
    procedure CharactersListClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure UserMappedCharsBtnClick(Sender: TObject);
  private
    { Private declarations }
    LastSelectedCharGroup: Integer;
    OldCharListIndexes: array of Integer;
    procedure RefreshCharacterName;
    procedure RefreshCharGroupList;
    procedure RefreshCharactersList;
  public
    { Public declarations }
    SelectedCharFileName: ShortString;

    UserMappedCharsFormCaption: TWideCaption;
    procedure SetOldState(CharGroupIndex, CharIndex: Integer);
  end;

  procedure GetCharMapTablesList(List: TTntStrings); external 'CharMap.dll';
  function FindCharFileName(CharCode: WideChar;
    var FileName: ShortString; var CanBeMappedByUser: Boolean): Boolean; external 'CharMap.dll';
  procedure GetCharTableCharacters(CharTableName: WideString; List: TTntStrings); external 'CharMap.dll';

implementation

uses UserMappedCharsFormUnit;

{$R *.dfm}

{ TSelectCharNameForm }

procedure TSelectCharNameForm.RefreshCharGroupList;
begin
  CharGroupList.Items.Clear;
  GetCharMapTablesList(CharGroupList.Items);
end;

procedure TSelectCharNameForm.RefreshCharactersList;
begin
  CharactersList.Items.Clear;
  GetCharTableCharacters(CharGroupList.Items.Strings[CharGroupList.ItemIndex], CharactersList.Items);
  if CharactersList.ItemIndex < 0 then
    CharactersList.ItemIndex := 0;
  if CharactersList.ItemIndex >= 0 then
    RefreshCharacterName;
end;

procedure TSelectCharNameForm.CharGroupListClick(Sender: TObject);
begin
  if CharGroupList.ItemIndex <> LastSelectedCharGroup then
  begin
    RefreshCharactersList;
    LastSelectedCharGroup := CharGroupList.ItemIndex;
    CharactersList.ItemIndex := OldCharListIndexes[CharGroupList.ItemIndex];
    RefreshCharacterName;
  end;
end;

procedure TSelectCharNameForm.CharactersListDblClick(Sender: TObject);
begin
  if CharactersList.ItemIndex >= 0 then
    OKBtn.Click;
end;

procedure TSelectCharNameForm.CharactersListClick(Sender: TObject);
begin
  RefreshCharacterName;
  OldCharListIndexes[CharGroupList.ItemIndex] := CharactersList.ItemIndex;
end;

procedure TSelectCharNameForm.OKBtnClick(Sender: TObject);
var
  s: WideString;
  Temp: Boolean;
begin
  s := CharactersList.Items.Strings[CharactersList.ItemIndex];
  if not FindCharFileName(s[1], SelectedCharFileName, Temp) then
    SelectedCharFileName := '';
end;

procedure TSelectCharNameForm.CancelBtnClick(Sender: TObject);
begin
  SelectedCharFileName := '';
end;

procedure TSelectCharNameForm.SetOldState(CharGroupIndex,
  CharIndex: Integer);
begin
  if CharGroupList.Items.Count > CharGroupIndex then
  begin
    CharGroupList.ItemIndex := CharGroupIndex;
    RefreshCharactersList;
    if CharactersList.Items.Count > CharIndex then
    begin
      CharactersList.ItemIndex := CharIndex;
      RefreshCharacterName;
    end;
  end;
end;

procedure TSelectCharNameForm.FormShow(Sender: TObject);
var
  i: Integer;
begin
  SetLength(OldCharListIndexes, CharGroupList.Items.Count);
  for i:= 0 to High(OldCharListIndexes) do
    OldCharListIndexes[i] := 0;       

  RefreshCharGroupList;
  if CharGroupList.ItemIndex < 0 then
  begin
    CharGroupList.ItemIndex := 0;
    RefreshCharactersList;
  end;
  LastSelectedCharGroup := CharGroupList.ItemIndex;
end;

procedure TSelectCharNameForm.FormHide(Sender: TObject);
begin
  SetLength(OldCharListIndexes, 0);
end;

procedure TSelectCharNameForm.RefreshCharacterName;
var
  FName: ShortString;
  s: WideString;
  Temp: Boolean;
begin
  s := CharactersList.Items.Strings[CharactersList.ItemIndex];
  FindCharFileName(s[1], FName, Temp);
  CharFileNameEdit.Text := FName;
  CharFileNameEdit.Hint := FName;
end;

procedure TSelectCharNameForm.UserMappedCharsBtnClick(Sender: TObject);
var
  UserMappedCharsForm: TUserMappedCharsForm;
  CharSelected: Boolean;
begin
  UserMappedCharsForm := TUserMappedCharsForm.Create(nil);
  with UserMappedCharsForm do
  begin
    Caption := UserMappedCharsFormCaption;
    OKBtn.Caption := Self.OKBtn.Caption;
    CancelBtn.Caption := Self.CancelBtn.Caption;
  end;
  CharSelected := False;
  try
    if UserMappedCharsForm.ShowModal = mrOk then
    begin
      CharFileNameEdit.Text := UserMappedCharsForm.SelectedCharFileName;
      SelectedCharFileName := UserMappedCharsForm.SelectedCharFileName;
      CharSelected := True;
    end;
  finally
    UserMappedCharsForm.Free;
  end;
  if CharSelected then
  begin
    ModalResult := mrOk;
    Close;
  end;
end;

end.
