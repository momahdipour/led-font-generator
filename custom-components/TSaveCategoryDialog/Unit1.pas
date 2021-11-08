unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SaveCategoryDialog, StdCtrls, Buttons, ComCtrls, ShellCtrls,
  XPMan;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ShellTreeView1: TShellTreeView;
    BitBtn1: TBitBtn;
    TreeView1: TTreeView;
    XPManifest1: TXPManifest;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
  private
    { Private declarations }
  public
    { Public declarations }
    SCD:TSaveCategoryDialog;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  SCD:=TSaveCategoryDialog.Create(nil);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SCD.Free;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  SCD.Title:='Select Character';
  SCD.LibraryPath:='G:\AMohammad\Delphi\LCD Designer\Main\LCD Designer\LCD Designer-MAIN [CUSTOM]\Character Library';
  SCD.DefaultOtherPath:=SCD.LibraryPath;
  SCD.DefaultIsCharacterLibrary:=False;
  SCD.OverwritePrompt := True;
  if SCD.Execute('CharName') then
    ShowMessage(SCD.FileName);
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
//  ShellTreeView1.Path:=ShellTreeView1.Path
  TreeView1.Selected:=TreeView1.Items[0];
end;

procedure TForm1.TreeView1Change(Sender: TObject; Node: TTreeNode);
begin
  Caption:=IntToStr(Random(2000));
end;

end.
