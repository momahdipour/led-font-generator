unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TntDelayedMemo, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    TntDelayedMemo: TTntDelayedMemo;
    procedure DelayChange(Sender: TObject);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.DelayChange(Sender: TObject);
begin
  Memo1.Lines.Assign(TntDelayedMemo.Lines);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  TntDelayedMemo := TTntDelayedMemo.Create(Self);
  TntDelayedMemo.Left := 5;
  TntDelayedMemo.Top := 5;
  TntDelayedMemo.Parent := Self;
  TntDelayedMemo.OnDelayedChange := DelayChange;
end;

end.
 