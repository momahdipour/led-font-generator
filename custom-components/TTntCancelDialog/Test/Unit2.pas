unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TntCancelDialog, StdCtrls, TntStdCtrls;

type
  TForm2 = class(TForm)
    TntButton1: TTntButton;
    procedure TntButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    cd: TTntCancelDialog;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.TntButton1Click(Sender: TObject);
begin
  cd.Execute;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  cd := TTntCancelDialog.Create(Form2);
end;

end.
