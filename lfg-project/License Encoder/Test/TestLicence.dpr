program TestLicence;

uses
  Forms,
  MainUnit in 'MainUnit.pas' {Form1},
  Hurricane in '..\Hurricane.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
