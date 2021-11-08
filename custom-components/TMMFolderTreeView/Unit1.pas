unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MMFolderTreeView, ComCtrls, ShellCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    ShellTreeView1: TShellTreeView;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ShellTreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    FTV:TMMFolderTreeView;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  FTV:=TMMFolderTreeView.Create(nil);
  FTV.Items.Clear;
  FTV.Parent:=Form1;
  FTV.Left:=10;
  FTV.Top:=10;
  FTV.Width:=500;
  FTV.Height:=300;
  FTV.OnFolderChange:=ShellTreeView1Change;
  FTV.Root:='G:\AMohammad\Delphi\LCD Designer\Main\LCD Designer\LCD Designer-MAIN [CUSTOM]\Character Library';
  FTV.RefreshFolderTree;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  FTV.Free;
end;

procedure TForm1.ShellTreeView1Change(Sender: TObject; Node: TTreeNode);
begin
  Label1.Caption:=FTV.SelectedFolderFullPath;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  FTV.StorePath;
  FTV.RefreshFolderTree;
  Caption:=FTV.SelectedFolderFullPath;
  ShowMessage('dd');
  FTV.RestorePath;
  Caption:=FTV.SelectedFolderFullPath;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  FTV.Root := 'C:\'; //'G:\AMohammad\Delphi\LCD Designer\Main\LCD Designer\LCD Designer-MAIN [CUSTOM]\Character Library';
//  FTV.RefreshFolderTree;
end;

end.
 