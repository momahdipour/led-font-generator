unit SaveCategoryDialog;

interface

uses
  SysUtils, Classes, SaveCategoryDialogFormUnit, Controls, ShlObj, ActiveX,
  ComCtrls, StrUtils, Dialogs, TntControls;

type
  TSaveCategoryDialog = class(TComponent)
  private
    { Private declarations }
    FTitle: TWideCaption;
    FLibraryPath: String;
    FCharacterName,FCategoryFolder: String;

    FSaveBtnCaption: WideString;
    FCancelBtnCaption: WideString;
    FOKBtnCaption: WideString;
    FCharacterGroupsWord: WideString;
    FCharactersInTheGroupWord: WideString;
    FSpecialNamesBtnCaption: WideString;
    FUserMappedCharsBtnCaption: WideString;
    FSpecialCharNamesDialogCaption: TWideCaption;
    FUserMappedCharsFormCaption: TWideCaption;

    FOtherPlacesSelected,FDefaultIsCharacterLibrary:Boolean;
    FAllowCharacterLibrary:Boolean;
    FDefaultCharLibPath,FDefaultOtherPath:String;
    FBrowseToLastPath: Boolean;
    FLastWasCharacterLibrary: Boolean;
    FLastSelectedPath: String;
    FOverwritePrompt: Boolean;
    FCharacterFileExtension: String;  //e.g. '.chr'

    DialogForm:TSaveCategoryDialogForm;
    function GetFileName: String;
    function GetDesktopPath: String;
    function FindTreeViewNode(TreeNodes: TTreeNodes; const NodeFullPath: String): TTreeNode;
  protected
    { Protected declarations }
  public
    { Public declarations }
    MessageStrings: array[1..3] of WideString;
    constructor Create(AOwner:TComponent);override;
    destructor Destroy;override;
    function Execute(const DefaultCharacterName:String):Boolean;
  published
    { Published declarations }
    property DefaultOtherPath:String read FDefaultOtherPath write FDefaultOtherPath;
    property DefaultCharLibPath:String read FDefaultCharLibPath write FDefaultCharLibPath;
    property Title: TWideCaption read FTitle write FTitle;
    property LibraryPath:String read FLibraryPath write FLibraryPath;
    property CharacterName:String read FCharacterName;
    property CategoryFolder:String read FCategoryFolder;
    property OtherPlacesSelected:Boolean read FOtherPlacesSelected;
    property DefaultIsCharacterLibrary:Boolean read FDefaultIsCharacterLibrary write FDefaultIsCharacterLibrary;
    property AllowCharacterLibrary:Boolean read FAllowCharacterLibrary write FAllowCharacterLibrary;
    property FileName:String read GetFileName;
    property BrowseToLastPath: Boolean read FBrowseToLastPath write FBrowseToLastPath;
    property OverwritePrompt: Boolean read FOverwritePrompt write FOverwritePrompt;
    property CharacterFileExtension: String read FCharacterFileExtension write FCharacterFileExtension;

    property SaveBtnCaption: WideString read FSaveBtnCaption write FSaveBtnCaption;
    property CancelBtnCaption: WideString read FCancelBtnCaption write FCancelBtnCaption;
    property OKBtnCaption: WideString read FOKBtnCaption write FOKBtnCaption;
    property CharacterGroupsWord: WideString read FCharacterGroupsWord write FCharacterGroupsWord;
    property CharactersInTheGroupWord: WideString read FCharactersInTheGroupWord write FCharactersInTheGroupWord;
    property SpecialNamesBtnCaption: WideString read FSpecialNamesBtnCaption write FSpecialNamesBtnCaption;
    property UserMappedCharsBtnCaption: WideString read FUserMappedCharsBtnCaption write FUserMappedCharsBtnCaption;
    property SpecialCharNamesDialogCaption: TWideCaption read FSpecialCharNamesDialogCaption write FSpecialCharNamesDialogCaption;
    property UserMappedCharsFormCaption: TWideCaption read FUserMappedCharsFormCaption write FUserMappedCharsFormCaption;
  end;

procedure Register;

implementation

uses StdCtrls;

procedure Register;
begin
  RegisterComponents('[LCD Designer]', [TSaveCategoryDialog]);
end;

{ TSaveCategoryDialog }

constructor TSaveCategoryDialog.Create(AOwner: TComponent);
begin
  inherited;
  DialogForm:=TSaveCategoryDialogForm.Create(nil);
  DialogForm.Hide;
  FTitle:='Save Character';
  FLibraryPath:='';
  FCharacterName:='';

  FSaveBtnCaption:='&Save';
  FCancelBtnCaption:='Cancel';
  FOKBtnCaption := 'OK';
  FCharacterGroupsWord := 'Character Groups';
  FCharactersInTheGroupWord := 'Characters In the Group';
  FSpecialNamesBtnCaption := 'Special &Names...';
  FUserMappedCharsBtnCaption := '&User-Mapped Chars...';
  FSpecialCharNamesDialogCaption := 'Select Character';
  FUserMappedCharsFormCaption := 'User-Mapped Character Names';
  MessageStrings[1] := '%s already exists.%s Do you want to replace it?';
  MessageStrings[2] := 'Please enter a character name.';
  MessageStrings[3] := 'Please specify a location.';

  FDefaultIsCharacterLibrary:=True;
  FOtherPlacesSelected:=False;
  FCategoryFolder:='';
  FAllowCharacterLibrary:=True;
  FDefaultOtherPath:='';
  FDefaultCharLibPath:='';
  FBrowseToLastPath := True;
  FLastSelectedPath := '';
  FLastWasCharacterLibrary := True;
  FOverwritePrompt := False;
  FCharacterFileExtension := '.chr';
end;

destructor TSaveCategoryDialog.Destroy;
begin
  DialogForm.Free;
  inherited;
end;

function TSaveCategoryDialog.Execute(const DefaultCharacterName: String):Boolean;
var
  ShellTreeViewPath:String;
  tmpTreeNode:TTreeNode;
  SetDefaultPath1, SetDefaultPath2: Boolean;
begin
  with DialogForm do
  begin
    Caption := FTitle;
    CharacterNameEdit.Text:=DefaultCharacterName;
    SaveBtn.Caption:=FSaveBtnCaption;
    CancelBtn.Caption:=FCancelBtnCaption;
    SpecialNamesBtn.Caption := FSpecialNamesBtnCaption;
    OKBtnCaption := FOKBtnCaption;
    DialogForm.CharacterGroupsWord := FCharacterGroupsWord;
    DialogForm.CharactersInTheGroupWord := FCharactersInTheGroupWord;
    DialogForm.UserMappedCharsBtnCaption := FUserMappedCharsBtnCaption;
    DialogForm.SpecialCharNamesDialogCaption := FSpecialCharNamesDialogCaption;
    DialogForm.UserMappedCharsFormCaption := FUserMappedCharsFormCaption;
    DialogForm.MessageStrings[1] := Self.MessageStrings[1];
    DialogForm.MessageStrings[2] := Self.MessageStrings[2];
    DialogForm.MessageStrings[3] := Self.MessageStrings[3];
  end;

  if FBrowseToLastPath then
    DialogForm.CharacterLibraryRadio.Checked := FLastWasCharacterLibrary
  else
    DialogForm.CharacterLibraryRadio.Checked:=FDefaultIsCharacterLibrary;
  DialogForm.OtherPlacesRadio.Checked:=not DialogForm.CharacterLibraryRadio.Checked;
  DialogForm.SelectedFolderEdit.Text:='';

  DialogForm.CharacterLibraryRadio.Enabled:=FAllowCharacterLibrary;
  if DirectoryExists(FLibraryPath) and FAllowCharacterLibrary then
  begin
    DialogForm.CategoryFolderTreeView.Root:=FLibraryPath;
    DialogForm.CategoryFolderTreeView.RefreshFolderTree;
  end
  else
    DialogForm.CharacterLibraryRadio.Enabled:=False;
  if not( DialogForm.CharacterLibraryRadio.Enabled and DialogForm.CharacterLibraryRadio.Checked ) then
    DialogForm.OtherPlacesRadio.Checked := True;
  DialogForm.CharacterLibraryRadio.OnClick(DialogForm.CharacterLibraryRadio);

  SetDefaultPath1 := True;
  SetDefaultPath2 := True;
  if FBrowseToLastPath then
  begin
    if FLastWasCharacterLibrary then
    begin
      if FAllowCharacterLibrary then
      begin
        tmpTreeNode:=FindTreeViewNode(DialogForm.CategoryFolderTreeView.Items, FLastSelectedPath);
        if Assigned(tmpTreeNode) then
        begin
          DialogForm.CategoryFolderTreeView.Selected:=tmpTreeNode;
          SetDefaultPath1 := False;
        end;
      end;
    end
    else
    begin
      if DirectoryExists(FLastSelectedPath) then
      begin
        ShellTreeViewPath := FLastSelectedPath;
        SetDefaultPath2 := False;
      end;
    end;
  end;

  if SetDefaultPath2 then
  begin
    if (Length(Trim(FDefaultOtherPath))>0) and DirectoryExists(FDefaultOtherPath) then
      ShellTreeViewPath:=FDefaultOtherPath
    else
    begin
      if DirectoryExists(FLibraryPath) then
        ShellTreeViewPath:=FLibraryPath
      else
        ShellTreeViewPath:=GetDesktopPath;
    end;
  end;
//  DialogForm.ShellTreeView1.Path := ShellTreeViewPath;
  DialogForm.OtherPlacesPath := ShellTreeViewPath;

  if SetDefaultPath1 and DialogForm.CharacterLibraryRadio.Enabled then
  begin
    if Length(Trim(FDefaultCharLibPath)) > 0 then
    begin
      tmpTreeNode:=FindTreeViewNode(DialogForm.CategoryFolderTreeView.Items,FDefaultCharLibPath);
      if Assigned(tmpTreeNode) then
        DialogForm.CategoryFolderTreeView.Selected:=tmpTreeNode
      else
        DialogForm.CategoryFolderTreeView.Selected:=DialogForm.CategoryFolderTreeView.Items[0];
    end
    else
    begin
      if DialogForm.CategoryFolderTreeView.Items.Count>0 then
        DialogForm.CategoryFolderTreeView.Selected:=DialogForm.CategoryFolderTreeView.Items[0];
    end;
  end;

  if DialogForm.OtherPlacesRadio.Checked then
    DialogForm.SelectedFolderEdit.Text := ShellTreeViewPath
  else
    DialogForm.SelectedFolderEdit.Text := DialogForm.CategoryFolderTreeView.SelectedFolderFullPath;

  DialogForm.OverwritePrompt := FOverwritePrompt;
  DialogForm.CharacterFileExtension := FCharacterFileExtension;
    
  Result := DialogForm.ShowModal = mrOk;
  if Result then
  begin
    FCharacterName:=DialogForm.CharacterNameEdit.Text;
    FOtherPlacesSelected:=DialogForm.OtherPlacesRadio.Checked;
    if FOtherPlacesSelected then
      FCategoryFolder:=DialogForm.SelectedFolderEdit.Text
    else
    begin
      if Length(DialogForm.SelectedFolderEdit.Text)=0 then
        FCategoryFolder:=LibraryPath
      else
        FCategoryFolder:=LibraryPath+'\'+DialogForm.SelectedFolderEdit.Text;
    end;
    FLastWasCharacterLibrary := not FOtherPlacesSelected;
    FLastSelectedPath := DialogForm.SelectedFolderEdit.Text;
  end;
end;

function TSaveCategoryDialog.FindTreeViewNode(TreeNodes: TTreeNodes;
  const NodeFullPath: String): TTreeNode;

  function GetFirstNode(var NodePath:String):String;
  var
    EndPos:Integer;
  begin
    Result:='';
    EndPos := 1;
    if Length(NodePath)=0 then
      Exit;
    while (EndPos<=Length(NodePath)) and (NodePath[EndPos]<>'\') do
      Inc(EndPos);
    Result:=LeftStr(NodePath,EndPos-1);
    NodePath:=Copy(NodePath,EndPos+1,Length(NodePath)-EndPos);
  end;

  function FindNode(NodeText:String;NodeParent:TTreeNode;TreeNodes:TTreeNodes):TTreeNode;
  var
    i:Integer;
  begin
    Result:=nil;
    for i:=0 to TreeNodes.Count-1 do
      if TreeNodes[i].Parent=NodeParent then
        if LowerCase(NodeText)=LowerCase(TreeNodes[i].Text) then
        begin
          Result:=TreeNodes[i];
          Break;
        end;
  end;

var
  ParentNode:TTreeNode;
  tmpNodeFullPath:String;
begin
  tmpNodeFullPath:=NodeFullPath;
  ParentNode:=nil;
  ParentNode:=FindNode(GetFirstNode(tmpNodeFullPath),ParentNode,TreeNodes);
  while Length(tmpNodeFullPath)>0 do
    ParentNode:=FindNode(GetFirstNode(tmpNodeFullPath),ParentNode,TreeNodes);
  Result:=ParentNode;
end;

function TSaveCategoryDialog.GetDesktopPath: String;
const
  MAX_PATH=500;
var
  shellMalloc: IMalloc;
  ppidl: PItemIdList;
begin
  ppidl := nil;
  try
    if SHGetMalloc(shellMalloc) = 0 then
    begin
      SHGetSpecialFolderLocation(DialogForm.Handle, CSIDL_DESKTOP, ppidl);
      SetLength(Result, MAX_PATH);
      if not SHGetPathFromIDList(ppidl, PChar(Result)) then
        raise exception.create('SHGetPathFromIDList failed : invalid pidl');
      SetLength(Result, StrLen(PChar(Result)));
    end;
  finally
   if ppidl <> nil then
         shellMalloc.free(ppidl);
  end;
end;

function TSaveCategoryDialog.GetFileName: String;
begin
  Result:=CategoryFolder;
  if Length(Result)=0 then
    Result:=Result+'\'+CharacterName
  else
  begin
    if Result[Length(Result)]='\' then
      Result:=Result+CharacterName
    else
      Result:=Result+'\'+CharacterName;
  end;
end;

end.
