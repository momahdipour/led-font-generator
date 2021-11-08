unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, WheelListBox;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
  private
    { Private declarations }
    wl: TWheelListBox;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  wl := TWheelListBox.Create(Self);
  wl.Parent := Self;
  wl.Left := 1;
  wl.Top := 1;
  for i := 1 to 50 do
    wl.AddItem(IntToStr(i), nil);
  wl.OnMouseWheelUp := FormMouseWheelUp;
  wl.OnMouseWheelDown := FormMouseWheelDown;
end;

procedure TForm1.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  Label1.Caption := 'MouseWheelDown';
end;

procedure TForm1.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  Label1.Caption := 'MouseWheelUp';
end;

end.

