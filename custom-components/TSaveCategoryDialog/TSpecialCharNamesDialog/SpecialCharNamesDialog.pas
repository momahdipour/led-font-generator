unit SpecialCharNamesDialog;

interface

uses
  SysUtils, Classes, SelectCharNameFormUnit, TntControls;

type
  TSpecialCharNamesDialog = class(TComponent)
  private
    { Private declarations }
    FTitle: TWideCaption;

    LastSelectedCharGroupIndex: Integer;
    LastSelectedCharIndex: Integer;
    FCharacterFileName: String;
    SelectCharNameForm: TSelectCharNameForm;

    FCancelBtnCaption: WideString;
    FOKBtnCaption: WideString;
    FCharacterGroupsWord: WideString;
    FCharactersInTheGroupWord: WideString;
    FUserMappedCharsBtnCaption: WideString;
    FUserMappedCharsFormCaption: TWideCaption;
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function Execute: Boolean;
  published
    { Published declarations }
    property CharacterFileName: String read FCharacterFileName;
    property Title: TWideCaption read FTitle write FTitle;

    property CancelBtnCaption: WideString read FCancelBtnCaption write FCancelBtnCaption;
    property OKBtnCaption: WideString read FOKBtnCaption write FOKBtnCaption;
    property CharacterGroupsWord: WideString read FCharacterGroupsWord write FCharacterGroupsWord;
    property CharactersInTheGroupWord: WideString read FCharactersInTheGroupWord write FCharactersInTheGroupWord;
    property UserMappedCharsBtnCaption: WideString read FUserMappedCharsBtnCaption write FUserMappedCharsBtnCaption;    property UserMappedCharsFormCaption: TWideCaption read FUserMappedCharsFormCaption write FUserMappedCharsFormCaption;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('[LCD Designer]', [TSpecialCharNamesDialog]);
end;

{ TSpecialCharNamesDialog }

constructor TSpecialCharNamesDialog.Create(AOwner: TComponent);
begin
  inherited;
  LastSelectedCharGroupIndex := 0;
  LastSelectedCharIndex := 0;
  SelectCharNameForm := TSelectCharNameForm.Create(nil);
  FTitle := 'Select Character';
  FCancelBtnCaption := 'Cancel';
  FOKBtnCaption := 'OK';
  FCharacterGroupsWord := 'Character Groups';
  FCharactersInTheGroupWord := 'Characters In the Group';
  FUserMappedCharsBtnCaption := '&User-Mapped Chars...';
end;

destructor TSpecialCharNamesDialog.Destroy;
begin
  SelectCharNameForm.Free;
  inherited;
end;

function TSpecialCharNamesDialog.Execute: Boolean;
begin
  with SelectCharNameForm do
  begin
    Caption := FTitle;
    SetOldState(LastSelectedCharGroupIndex, LastSelectedCharIndex);

    OKBtn.Caption := FOKBtnCaption;
    CancelBtn.Caption := FCancelBtnCaption;
    CharacterGroupsTitle.Caption := FCharacterGroupsWord;
    CharactersTitle.Caption := FCharactersInTheGroupWord;
    UserMappedCharsBtn.Caption := FUserMappedCharsBtnCaption;
    UserMappedCharsFormCaption := FUserMappedCharsFormCaption;
  end;
  SelectCharNameForm.ShowModal;
  Result := SelectCharNameForm.SelectedCharFileName <> '';
  FCharacterFileName := SelectCharNameForm.SelectedCharFileName;
  if Length(SelectCharNameForm.SelectedCharFileName) > 0 then
  begin
    LastSelectedCharGroupIndex := SelectCharNameForm.CharGroupList.ItemIndex;
    LastSelectedCharIndex := SelectCharNameForm.CharactersList.ItemIndex;
  end;
end;

end.
