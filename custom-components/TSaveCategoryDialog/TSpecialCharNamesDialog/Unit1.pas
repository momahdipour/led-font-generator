unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SpecialCharNamesDialog, StdCtrls, XPMan;

type
  TForm1 = class(TForm)
    Button1: TButton;
    XPManifest1: TXPManifest;
    Edit1: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    cd: TSpecialCharNamesDialog;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  cd := TSpecialCharNamesDialog.Create(nil);
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  cd.Free;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if cd.Execute then
    Edit1.Text := cd.CharacterFileName;
end;

end.
