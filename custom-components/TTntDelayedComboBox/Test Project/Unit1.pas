unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TntDelayedComboBox;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    dcb: TTntDelayedComboBox;
    procedure dcbDelayedChange(Sender: TObject); 
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.dcbDelayedChange(Sender: TObject);
begin
  Caption := dcb.Text;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  dcb := TTntDelayedComboBox.Create(Self);
  dcb.Parent := Self;
  dcb.Left := 10;
  dcb.Top := 10;
  dcb.Width := 150;
  dcb.OnDelayedChange := dcbDelayedChange;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  dcb.Free;
end;

end.
 