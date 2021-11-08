unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PopupSpinEdit, XPMenu, XPMan, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    XPManifest1: TXPManifest;
    Label1: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    TrackBar1: TTrackBar;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure TrackBar1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    PopupSpinEdit: TPopupSpinEdit;
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
  PopupSpinEdit := TPopupSpinEdit.Create(nil);
  PopupSpinEdit.Parent := Form1;
  PopupSpinEdit.Left := 5;
  PopupSpinEdit.Top := 5;
  PopupSpinEdit.Max := 200;
//  PopupSpinEdit.Click;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  t: TTickMark;
begin
//  PopupSpinEdit.Click;
  Enabled := False;
  Form2.Show;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  PopupSpinEdit.OnDelayedChange := Button1Click;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  PopupSpinEdit.Title := '';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  PopupSpinEdit.Title := 'Select value:';
end;

procedure TForm1.TrackBar1KeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_ESCAPE then
    Close;
end;

end.
