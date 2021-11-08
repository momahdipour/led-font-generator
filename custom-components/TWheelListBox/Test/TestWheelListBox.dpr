program TestWheelListBox;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  WheelListBox in '..\WheelListBox.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
