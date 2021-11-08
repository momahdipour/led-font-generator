unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TntDelayedEdit, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Timer1: TTimer;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    TntDelayedEdit: TTntDelayedEdit;
    procedure DelayedChange(Sender: TObject);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.DelayedChange(Sender: TObject);
begin
  Label1.Caption := TntDelayedEdit.Text;
  Caption := IntToStr(Random(1000));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  TntDelayedEdit := TTntDelayedEdit.Create(nil);
  TntDelayedEdit.Left := 5;
  TntDelayedEdit.Top := 5;
  TntDelayedEdit.Parent := Self;
  TntDelayedEdit.OnDelayedChange := DelayedChange;
end;

end.
 