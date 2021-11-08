unit MMFolderTreeView;

{$WARN UNIT_PLATFORM OFF}

interface

uses
  SysUtils, Classes, Controls, ComCtrls, ShellCtrls, Forms, StrUtils,
  TntCancelDialog, Windows;

type
  TMMFolderTreeView = class(TTreeView)
  private
    { Private declarations }
    ShellTreeView:TShellTreeView;
    FRoot:String;
    FSelectedFolderFullPath:String;
    FSelectedFolderName:String;
    FFolderChangeEvent:TTVChangedEvent;
    FAllowToCancelRefresh: Boolean;
    FRefreshCancelled: Boolean;
    FCancelDialog: TTntCancelDialog;
    FCancelDescription: WideString;
    FCancelTitle: WideString;
    FCancelDelay: Cardinal;  //In milliseconds
    FRefreshStartTickcount: Cardinal;
    OldPath:String;
    SettingRoot: Boolean;
    procedure SetRoot(ARoot:String);
    function FindTreeViewNode(TreeNodes: TTreeNodes;const NodeFullPath: String): TTreeNode;
    procedure ShellTreeViewExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure CancelRefresh(Sender: TObject);
  protected
    { Protected declarations }
    procedure Change(Node: TTreeNode); override;
  public
    { Public declarations }
    constructor Create(AOwner:TComponent);override;
    destructor Destroy;override;
    function RefreshFolderTree: Boolean;  //False if refresh cancelled, else True
    procedure StorePath;
    procedure RestorePath;
  published
    { Published declarations }
    property Root:String read FRoot write FRoot;
    property SelectedFolderFullPath:String read FSelectedFolderFullPath;
    property SelectedFolderName:String read FSelectedFolderName;
    property OnFolderChange:TTVChangedEvent read FFolderChangeEvent write FFolderChangeEvent;
    property AllowToCancelRefresh: Boolean read FAllowToCancelRefresh write FAllowToCancelRefresh;
    property CancelDialog: TTntCancelDialog read FCancelDialog;
    property CancelTitle: Widestring read FCancelTitle write FCancelTitle;
    property CancelDescription: WideString read FCancelDescription write FCancelDescription;
    property CancelDelay: Cardinal read FCancelDelay write FCancelDelay;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('[LCD Designer]', [TMMFolderTreeView]);
end;

{ TMMFolderTreeView }

constructor TMMFolderTreeView.Create(AOwner: TComponent);
begin
  inherited;
  OldPath:='';
  FRoot:='';
  FSelectedFolderFullPath:='';
  FSelectedFolderName:='';
  FFolderChangeEvent:=nil;
  FAllowToCancelRefresh := True;
  FCancelDialog := TTntCancelDialog.Create(nil);
  FCancelDialog.OnCancel := CancelRefresh;
  FCancelTitle := '';
  FCancelDescription := '';
  FCancelDelay := 2000;  //2 seconds
end;

destructor TMMFolderTreeView.Destroy;
begin
  FCancelDialog.Free;
  inherited;
end;

function TMMFolderTreeView.RefreshFolderTree: Boolean;  //False if refresh cancelled, else True
begin
  try
    if DirectoryExists(FRoot) then
      SetRoot(FRoot);
  finally
    Result := not FRefreshCancelled;
  end;
end;

procedure TMMFolderTreeView.RestorePath;
var
  tmpTreeNode:TTreeNode;
begin
  if Length(OldPath)>0 then
  begin
    tmpTreeNode:=FindTreeViewNode(Items,OldPath);
    if Assigned(tmpTreeNode) then
      Selected:=tmpTreeNode
    else if Items.Count>0 then
      Selected:=Items[0];
  end
  else if Items.Count>0 then
    Selected:=Items[0];
end;

procedure TMMFolderTreeView.SetRoot(ARoot: String);
var
  i:Integer;
  FTemp:TForm;
  OldSelection:TTreeNode;
  S: String;
begin
  if not DirectoryExists(ARoot) then
    Exception.Create('Error setting path: '''+ARoot+'''');
  FRoot:=ARoot;
  FTemp:=TForm.Create(nil);
  try
    ShellTreeView:=TShellTreeView.Create(nil);
    try
      SettingRoot := True;
      ShellTreeView.Hide;
      ShellTreeView.Parent:=FTemp;
      ShellTreeView.UseShellImages := False;
      ShellTreeView.OnExpanding := ShellTreeViewExpanding;

      FRefreshCancelled := False;
      FRefreshStartTickcount := GetTickCount;

      ShellTreeView.Root:=FRoot;

      ShellTreeView.FullExpand;

      OldSelection:=Self.Selected;
      Self.Items.Assign(ShellTreeView.Items);
      Self.Items[0].Text:='';
      for i:=1 to Self.Items[0].Count do
        Self.Items[0].Item[0].MoveTo(Self.Items[0],naAdd);
      Self.Items[0].Delete;

      //Remove trailing #0'SHORTNAME'#0 at the end of the folder names (in Win98, or...???)
      for i := 0 to Self.Items.Count - 1 do
      begin
        S := Self.Items[i].Text;
        if Pos(#0, S) > 0 then
        begin
          S := Copy(S, 1, Pos(#0, S) - 1);
          Self.Items[i].Text := S;
        end;
      end;
      /////////////////////////////////////

      try
        Self.Selected:=OldSelection;
        Self.Refresh;
      except
        Self.Selected:=nil;
      end;
    finally
      if FCancelDialog.Visible then
        FCancelDialog.Terminate;
      ShellTreeView.Free;
      SettingRoot := False;
    end;
  finally
    FTemp.Free;
  end;  
end;

procedure TMMFolderTreeView.StorePath;
begin
  if Items.Count>0 then
    OldPath:=SelectedFolderFullPath
  else
    OldPath:='';  
end;

function TMMFolderTreeView.FindTreeViewNode(TreeNodes: TTreeNodes;
  const NodeFullPath: String): TTreeNode;

  function GetFirstNode(var NodePath:String):String;
  var
    EndPos:Integer;
  begin
    Result:='';
    if Length(NodePath)=0 then
      Exit;
    EndPos:= 1;
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

procedure TMMFolderTreeView.Change(Node: TTreeNode);
var
  FullPath:String;
  Node1:TTreeNode;
begin
  if SettingRoot then
    Exit;
  inherited;
  FullPath:=Node.Text;
  Node1:=Node;
  while Node1.Parent<>nil do
  begin
    Node1:=Node1.Parent;
    Insert(Node1.Text+'\',FullPath,1);
  end;
  FSelectedFolderFullPath:=FullPath;
  FSelectedFolderName:=Node.Text;
  if Assigned(FFolderChangeEvent) then
    FFolderChangeEvent(Self, Node);
end;

procedure TMMFolderTreeView.ShellTreeViewExpanding(Sender: TObject; Node: TTreeNode;
  var AllowExpansion: Boolean);
begin
  if FAllowToCancelRefresh then
  begin
    AllowExpansion := not FRefreshCancelled;
    if not FCancelDialog.Visible and
       ( (GetTickCount - FRefreshStartTickcount) >= FCancelDelay) then
    begin
      if (Length(FCancelTitle) = 0) and
        (Length(FCancelDescription) = 0) then
        FCancelDialog.Execute()
      else
        FCancelDialog.Execute(FCancelTitle, FCancelDescription);
    end;
    Application.ProcessMessages;
  end
  else
    AllowExpansion := True;
end;

procedure TMMFolderTreeView.CancelRefresh(Sender: TObject);
begin
  FRefreshCancelled := True;
end;

end.
