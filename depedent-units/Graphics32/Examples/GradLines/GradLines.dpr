program GradLines;

uses
  Forms,
  Lines_Ex in 'Lines_Ex.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
