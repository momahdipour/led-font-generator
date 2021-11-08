unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, D7ColorBox, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cb: TD7ColorBox; 
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  cb := TD7ColorBox.Create(nil);
  cb.Parent := Self;
  cb.Left := 10;
  cb.Top := 10;
  cb.Style := [cbPrettyNames, cbCustomColor, cbStandardColors];
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  ShowMessage(ColorToString(cb.Selected));
end;

end.
 