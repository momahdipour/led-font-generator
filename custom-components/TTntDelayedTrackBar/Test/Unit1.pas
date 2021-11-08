unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TntDelayedTrackBar, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    dtb: TTntDelayedTrackBar;
    procedure DTBChanged(Sender: TObject);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.DTBChanged(Sender: TObject);
begin
  Label1.Caption := IntToStr(dtb.Position);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  dtb := TTntDelayedTrackBar.Create(Self);
  dtb.Left := 5;
  dtb.Top := 5;
  dtb.Parent := Self;
  dtb.Min := 1;
  dtb.Max := 500;
  dtb.Frequency := 50;
  dtb.OnDelayedChange := DTBChanged;
end;

end.
