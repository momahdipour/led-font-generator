program TestTntDelayedComboBox;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  TntDelayedComboBox in '..\TntDelayedComboBox.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
