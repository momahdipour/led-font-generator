program TestD7ColorBox;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  D7ColorBox in '..\D7ColorBox.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
