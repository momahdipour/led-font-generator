unit OpenCharacterDialog;

interface

uses
  SysUtils, Classes, OpenCharacterDialogFormUnit, ComCtrls, Controls,
  Graphics, StrUtils, ShlObj, ActiveX, Registry, Windows, TntControls;

type
  TOpenCharacterDialog = class(TComponent)
  private
    { Private declarations }
    FTitle: TWideCaption;
    FLibraryPath:String;
    FCharacterName,FCategoryFolder:String;
    FOpenBtnCaption, FCancelBtnCaption: WideString;
    FOtherPlacesSelected, FDefaultIsCharacterLibrary:Boolean;
    FAllowCharacterLibrary:Boolean;
    FDefaultCharLibPath, FDefaultOtherPath:String;
    FBrowseToLastPath: Boolean;
    FLastWasCharacterLibrary: Boolean;
    FLastSelectedPath: String;
    FCharacterFileExtension: String;  //e.g. '.chr'
    FRegSettingsPath: String;
    FOpenCharacterDialogSetting: TOpenCharacterDialogSettings;

    DialogForm: TOpenCharacterDialogForm;
    function GetFileName: String;
    function GetDesktopPath: String;
    function FindTreeViewNode(TreeNodes: TTreeNodes; const NodeFullPath: String): TTreeNode;

    procedure SetDefaultDialogSettings;
  protected
    { Protected declarations }
  public
    { Public declarations }
    LCDFilledColor: TColor;
    LCDClearedColor: TColor;
    LCDUseSolidColors: Boolean;

    MessageStrings: array[1..1] of WideString;

    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function Execute: Boolean;

    function SaveSettings: Boolean;
    function ReadSettings: Boolean;
  published
    { Published declarations }
    property DefaultOtherPath: String read FDefaultOtherPath write FDefaultOtherPath;
    property DefaultCharLibPath: String read FDefaultCharLibPath write FDefaultCharLibPath;
    property Title: TWideCaption read FTitle write FTitle;
    property LibraryPath: String read FLibraryPath write FLibraryPath;
    property CharacterName: String read FCharacterName;
    property CategoryFolder: String read FCategoryFolder;
    property OpenBtnCaption: WideString read FOpenBtnCaption write FOpenBtnCaption;
    property CancelBtnCaption: WideString read FCancelBtnCaption write FCancelBtnCaption;
    property OtherPlacesSelected: Boolean read FOtherPlacesSelected;
    property DefaultIsCharacterLibrary: Boolean read FDefaultIsCharacterLibrary write FDefaultIsCharacterLibrary;
    property AllowCharacterLibrary: Boolean read FAllowCharacterLibrary write FAllowCharacterLibrary;
    property FileName: String read GetFileName;
    property BrowseToLastPath: Boolean read FBrowseToLastPath write FBrowseToLastPath;
    property CharacterFileExtension: String read FCharacterFileExtension write FCharacterFileExtension;
    property RegSettingsPath: String read FRegSettingsPath write FRegSettingsPath;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('[LCD Designer]', [TOpenCharacterDialog]);
end;

{ TOpenCharacterDialog }

constructor TOpenCharacterDialog.Create(AOwner: TComponent);
begin
  inherited;
  DialogForm := TOpenCharacterDialogForm.Create(nil);
  DialogForm.Hide;
  FTitle := 'Open Character';
  FLibraryPath := '';
  FCharacterName := '';
  FOpenBtnCaption := '&Open';
  FCancelBtnCaption := 'Cancel';
  MessageStrings[1] := 'Error in reading the character file ''%s''.';

  FDefaultIsCharacterLibrary := True;
  FOtherPlacesSelected := False;
  FCategoryFolder := '';
  FAllowCharacterLibrary := True;
  FDefaultOtherPath := '';
  FDefaultCharLibPath := '';
  FBrowseToLastPath := True;
  FLastSelectedPath := '';
  FLastWasCharacterLibrary := True;
  FCharacterFileExtension := '.chr';

  SetDefaultDialogSettings;
end;

destructor TOpenCharacterDialog.Destroy;
begin
  DialogForm.Free;
  inherited;
end;

function TOpenCharacterDialog.Execute: Boolean;
var
  ShellTreeViewPath:String;
  tmpTreeNode:TTreeNode;
  SetDefaultPath1, SetDefaultPath2: Boolean;
begin
  DialogForm.Caption := FTitle;
  DialogForm.OpenBtn.Caption := FOpenBtnCaption;
  DialogForm.CancelBtn.Caption := FCancelBtnCaption;
  DialogForm.MessageStrings[1] := Self.MessageStrings[1];  {'Error in reading the character file ''%s''.'}

  DialogForm.CharacterFileExtension := FCharacterFileExtension;
  DialogForm.LCDFilledColor := LCDFilledColor;
  DialogForm.LCDCLearedColor := LCDClearedColor;
  DialogForm.LCDUseSolidColors := LCDUseSolidColors;

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

  DialogForm.ApplySettings(FOpenCharacterDialogSetting);

  Result := DialogForm.ShowModal = mrOk;
  if Result then
  begin
    DialogForm.GetSettings(FOpenCharacterDialogSetting);
    FCharacterName := DialogForm.CharactersListBox.Items.Strings[DialogForm.CharactersListBox.ItemIndex] + FCharacterFileExtension;
    FOtherPlacesSelected := DialogForm.OtherPlacesRadio.Checked;
    if FOtherPlacesSelected then
      FCategoryFolder := DialogForm.SelectedFolderEdit.Text
    else
    begin
      if Length(DialogForm.SelectedFolderEdit.Text) = 0 then
        FCategoryFolder := LibraryPath
      else
        FCategoryFolder := LibraryPath + '\' + DialogForm.SelectedFolderEdit.Text;
    end;
    FLastWasCharacterLibrary := not FOtherPlacesSelected;
    FLastSelectedPath := DialogForm.SelectedFolderEdit.Text;
  end;
end;

function TOpenCharacterDialog.FindTreeViewNode(TreeNodes: TTreeNodes;
  const NodeFullPath: String): TTreeNode;

  function GetFirstNode(var NodePath:String): String;
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

function TOpenCharacterDialog.GetDesktopPath: String;
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

function TOpenCharacterDialog.GetFileName: String;
begin
  Result := CategoryFolder;
  if Length(Result) = 0 then
    Result:=Result + '\' + CharacterName
  else
  begin
    if Result[Length(Result)]='\' then
      Result:=Result+CharacterName
    else
      Result:=Result + '\' + CharacterName;
  end;
end;

function TOpenCharacterDialog.ReadSettings: Boolean;
var
  Reg: TRegistry;
begin
  Result := False;

  Reg := TRegistry.Create(KEY_READ);
  Reg.RootKey := HKEY_CURRENT_USER;

  try
    if Reg.KeyExists(FRegSettingsPath) then
    begin
      if Reg.OpenKeyReadOnly(RegSettingsPath) then
      begin
        with FOpenCharacterDialogSetting do
        begin
          DialogWidth := Reg.ReadInteger('Width');
          DialogHeight := Reg.ReadInteger('Height');
          PreviewSectionHeight := Reg.ReadInteger('Preview Height');

          LCDZoom := Reg.ReadInteger('Zoom');
          ShowLCDGrid := Reg.ReadBool('Gridlines');
        end;
        Reg.CloseKey;
        Result := True;
      end;
    end;
  except
    SetDefaultDialogSettings;
  end;
  Reg.Free;
end;

function TOpenCharacterDialog.SaveSettings: Boolean;
var
  Reg: TRegistry;
begin
  Result := False;

  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;

  try
    if Reg.OpenKey(FRegSettingsPath, True) then
    begin
      with FOpenCharacterDialogSetting do
      begin
        Reg.WriteInteger('Width', DialogWidth);
        Reg.WriteInteger('Height', DialogHeight);
        Reg.WriteInteger('Preview Height', PreviewSectionHeight);

        Reg.WriteInteger('Zoom', LCDZoom);
        Reg.WriteBool('Gridlines', ShowLCDGrid);
      end;
      Reg.CloseKey;
      Result := True;
    end;
  except
  end;
  Reg.Free;
end;

procedure TOpenCharacterDialog.SetDefaultDialogSettings;
begin
  with FOpenCharacterDialogSetting do
  begin
    DialogWidth := DialogForm.Width;
    DialogHeight := DialogForm.Height;
    PreviewSectionHeight := DialogForm.PreviewGroup.Height;

    LCDZoom := DialogForm.PreviewZoomTrackBar.Position;
    ShowLCDGrid := DialogForm.CharPreviewGridLinesCheck.Checked;
  end;
end;

end.
