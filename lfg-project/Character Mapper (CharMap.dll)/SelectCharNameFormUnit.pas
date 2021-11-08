unit SelectCharNameFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, TntButtons, ExtCtrls, TntStdCtrls,
  CharMapTables;

type
  TSelectCharNameForm = class(TForm)
    Panel1: TPanel;
    OKBtn: TTntBitBtn;
    CancelBtn: TTntBitBtn;
    Panel3: TPanel;
    StaticText2: TStaticText;
    CharactersList: TTntListBox;
    Panel2: TPanel;
    StaticText1: TStaticText;
    CharGroupList: TTntListBox;
    CharFileNameEdit: TTntEdit;
    procedure FormCreate(Sender: TObject);
    procedure CharGroupListClick(Sender: TObject);
    procedure CharactersListDblClick(Sender: TObject);
    procedure CharactersListClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    LastSelectedCharGroup: Integer;
    procedure RefreshCharGroupList;
    procedure RefreshCharactersList;
  public
    { Public declarations }
    SelectedCharFileName: ShortString;
    procedure SetOldState(CharGroupIndex, CharIndex: Integer);
  end;

var
  SelectCharNameForm: TSelectCharNameForm;

implementation

{$R *.dfm}

{ TSelectCharNameForm }

procedure TSelectCharNameForm.RefreshCharGroupList;
begin
  CharGroupList.Items.Clear;
  GetCharMapTablesList(CharGroupList.Items);
end;

procedure TSelectCharNameForm.FormCreate(Sender: TObject);
begin
  RefreshCharGroupList;
end;

procedure TSelectCharNameForm.RefreshCharactersList;
begin
  CharactersList.Items.Clear;
  GetCharTableCharacters(CharGroupList.Items.Strings[CharGroupList.ItemIndex], CharactersList.Items);
  if CharactersList.ItemIndex < 0 then
    CharactersList.ItemIndex := 0; 
end;

procedure TSelectCharNameForm.CharGroupListClick(Sender: TObject);
begin
  if CharGroupList.ItemIndex <> LastSelectedCharGroup then
  begin
    RefreshCharactersList;
    LastSelectedCharGroup := CharGroupList.ItemIndex;
  end;
end;

procedure TSelectCharNameForm.CharactersListDblClick(Sender: TObject);
begin
  if CharactersList.ItemIndex >= 0 then
    OKBtn.Click;
end;

procedure TSelectCharNameForm.CharactersListClick(Sender: TObject);
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
      CharactersList.OnClick(CharactersList);
    end;
  end;
end;

procedure TSelectCharNameForm.FormShow(Sender: TObject);
begin
  if CharGroupList.ItemIndex < 0 then
  begin
    CharGroupList.ItemIndex := 0;
    RefreshCharactersList;
  end;
  LastSelectedCharGroup := CharGroupList.ItemIndex;
end;

initialization
  SelectCharNameForm := TSelectCharNameForm.Create(nil);

finalization
  if Assigned(SelectCharNameForm) then
  begin
    try
      SelectCharNameForm.Free;
    except
    end;
  end;

end.
