unit SaveCategoryDialogFormUnit;

{$WARN UNIT_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, MMFolderTreeView, ShellCtrls, Buttons,
  TntButtons, SpecialCharNamesDialog, TntDialogs, Menus, TntForms,
  TntControls, SoundDialogs;

type
  TSaveCategoryDialogForm = class(TTntForm)
    GroupBox1: TGroupBox;
    CharacterLibraryRadio: TRadioButton;
    OtherPlacesRadio: TRadioButton;
    ShellTreeView1: TShellTreeView;
    GroupBox2: TGroupBox;
    CharacterNameEdit: TEdit;
    CategoryFolderTreeView: TMMFolderTreeView;
    Label1: TLabel;
    SelectedFolderEdit: TEdit;
    SaveBtn: TTntBitBtn;
    CancelBtn: TTntBitBtn;
    SpecialNamesBtn: TTntBitBtn;
    procedure CharacterLibraryRadioClick(Sender: TObject);
    procedure OtherPlacesRadioClick(Sender: TObject);
    procedure ShellTreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure CategoryFolderTreeViewFolderChange(Sender: TObject;
      Node: TTreeNode);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure SpecialNamesBtnClick(Sender: TObject);
    procedure SelectedFolderEditChange(Sender: TObject);
    procedure CharacterNameEditChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ShellTreeView1Enter(Sender: TObject);
    procedure ShellTreeView1Exit(Sender: TObject);
    procedure CategoryFolderTreeViewKeyPress(Sender: TObject;
      var Key: Char);
  private
    { Private declarations }
    SpecialCharNameDialog: TSpecialCharNamesDialog;
  public
    { Public declarations }
    OtherPlacesPath: String;  //This is to browse to the specified path only if Other Places is selected.
    CharacterFileExtension: String;  //e.g. '.chr'
    OverwritePrompt: Boolean;

    OKBtnCaption: WideString;
    CharacterGroupsWord: WideString;
    CharactersInTheGroupWord: WideString;
    UserMappedCharsBtnCaption: WideString;
    SpecialCharNamesDialogCaption: TWideCaption;
    UserMappedCharsFormCaption: TWideCaption;
    MessageStrings: array[1..3] of WideString;
  end;

implementation

{$R *.dfm}

procedure TSaveCategoryDialogForm.CharacterLibraryRadioClick(
  Sender: TObject);
begin
  CategoryFolderTreeView.Visible := (Sender as TRadioButton).Checked;
  ShellTreeView1.Visible := not (Sender as TRadioButton).Checked;
  SelectedFolderEdit.Text := CategoryFolderTreeView.SelectedFolderFullPath;
end;

procedure TSaveCategoryDialogForm.OtherPlacesRadioClick(Sender: TObject);
var
  OldPath: String;
begin
  if OtherPlacesRadio.Checked and (Length(OtherPlacesPath) > 0) then
  begin
    OldPath := ShellTreeView1.Path;
    ShellTreeView1.Path := OtherPlacesPath;
    OtherPlacesPath := '';
    //Refresh the folder tree if the path is the old path (because it is not
    // automatically refreshed if the path is the same as the old path.
    if ShellTreeView1.Items.Count > 0 then
      ShellTreeView1.Refresh(ShellTreeView1.Items[0]);
  end;

  CategoryFolderTreeView.Visible := not (Sender as TRadioButton).Checked;
  ShellTreeView1.Visible := (Sender as TRadioButton).Checked;
  SelectedFolderEdit.Text := ShellTreeView1.Path;
end;

procedure TSaveCategoryDialogForm.ShellTreeView1Change(Sender: TObject;
  Node: TTreeNode);
begin
  SelectedFolderEdit.Text := ShellTreeView1.Path;
end;

procedure TSaveCategoryDialogForm.CategoryFolderTreeViewFolderChange(
  Sender: TObject; Node: TTreeNode);
begin
  SelectedFolderEdit.Text := CategoryFolderTreeView.SelectedFolderFullPath;
end;

procedure TSaveCategoryDialogForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);

  function GetCharFileName: String;
  begin
    if OtherPlacesRadio.Checked then
      Result := SelectedFolderEdit.Text
    else
    begin
      Result := CategoryFolderTreeView.Root;
      if Length(SelectedFolderEdit.Text) > 0 then
        Result := Result + '\' + SelectedFolderEdit.Text;
    end;

    Result := Result + '\' + CharacterNameEdit.Text;
    if LowerCase(ExtractFileExt(Result)) <> LowerCase(CharacterFileExtension) then
      Result := Result + CharacterFileExtension;
  end;

var
  FName: String;
begin
  CanClose := ((Length(Trim(CharacterNameEdit.Text)) > 0) and (Length(Trim(SelectedFolderEdit.Text)) > 0)) or (Self.ModalResult = mrCancel);
  if Self.ModalResult = mrCancel then
    Exit
  else if CanClose then
  begin
    if OverwritePrompt then
    begin
      FName := GetCharFileName;
      if FileExists(FName) then
        CanClose := WideMessageDlgSoundTop(WideFormat(MessageStrings[1], [FName, #13]), mtWarning, [mbYes, mbNo], 0) = mrYes;
    end;
  end
  else
  begin
    if Length(Trim(CharacterNameEdit.Text)) = 0 then
      WideShowMessageSoundTop(MessageStrings[2])  {'Please enter a character name.'}
    else if Length(Trim(SelectedFolderEdit.Text)) = 0 then
      WideShowMessageSoundTop(MessageStrings[3]);  {'Please specify a location.'}
    CharacterNameEdit.SetFocus;
  end;
end;

procedure TSaveCategoryDialogForm.FormShow(Sender: TObject);
begin
  if OtherPlacesRadio.Checked and (Length(OtherPlacesPath) > 0) then
  begin
    ShellTreeView1.Path := OtherPlacesPath;
    OtherPlacesPath := '';
  end;

  CharacterNameEdit.SelectAll;
  CharacterNameEdit.SetFocus;
end;

procedure TSaveCategoryDialogForm.SpecialNamesBtnClick(Sender: TObject);
begin
  SpecialCharNameDialog.Title := SpecialCharNamesDialogCaption;
  SpecialCharNameDialog.UserMappedCharsFormCaption := UserMappedCharsFormCaption;
  SpecialCharNameDialog.CancelBtnCaption := CancelBtn.Caption;
  SpecialCharNameDialog.OKBtnCaption := OKBtnCaption;
  SpecialCharNameDialog.CharacterGroupsWord := CharacterGroupsWord;
  SpecialCharNameDialog.CharactersInTheGroupWord := CharactersInTheGroupWord;
  SpecialCharNameDialog.UserMappedCharsBtnCaption := UserMappedCharsBtnCaption;

  if SpecialCharNameDialog.Execute then
    CharacterNameEdit.Text := SpecialCharNameDialog.CharacterFileName;
end;

procedure TSaveCategoryDialogForm.SelectedFolderEditChange(
  Sender: TObject);
begin
  SelectedFolderEdit.Hint := SelectedFolderEdit.Text;
  //Make end of the string visible in the editbox
  SelectedFolderEdit.SelStart := Length(SelectedFolderEdit.Text);
  SelectedFolderEdit.SelLength := 0; 
end;

procedure TSaveCategoryDialogForm.CharacterNameEditChange(Sender: TObject);
begin
  CharacterNameEdit.Hint := CharacterNameEdit.Text;
end;

procedure TSaveCategoryDialogForm.FormCreate(Sender: TObject);
begin
  SpecialCharNameDialog := TSpecialCharNamesDialog.Create(nil);
end;

procedure TSaveCategoryDialogForm.FormDestroy(Sender: TObject);
begin
  if Assigned(SpecialCharNameDialog) then
  begin
    SpecialCharNameDialog.Free;
    SpecialCharNameDialog := nil;
  end;
end;

procedure TSaveCategoryDialogForm.ShellTreeView1Enter(Sender: TObject);
begin
  SaveBtn.Default := False;
end;

procedure TSaveCategoryDialogForm.ShellTreeView1Exit(Sender: TObject);
begin
  SaveBtn.Default := True;
end;

procedure TSaveCategoryDialogForm.CategoryFolderTreeViewKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
  begin
    SaveBtn.Click;
    Key := Chr(0);
  end;
end;

end.
