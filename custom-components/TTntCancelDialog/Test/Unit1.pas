unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TntCancelDialog, StdCtrls, TntStdCtrls;

type
  TForm1 = class(TForm)
    TntLabel1: TTntLabel;
    TntButton1: TTntButton;
    procedure FormCreate(Sender: TObject);
    procedure TntButton1Click(Sender: TObject);
  private
    { Private declarations }
    cd: TTntCancelDialog;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  cd := TTntCancelDialog.Create(Self);
end;

procedure TForm1.TntButton1Click(Sender: TObject);
begin
//  cd.Execute;
  Form2.Show;
end;

end.
 