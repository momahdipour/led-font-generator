program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Graphics32 in '..\..\Graphics32.pas',
  Image32 in '..\..\Image32.pas',
  Blend32 in '..\..\Blend32.pas',
  CPUid in '..\..\CPUid.pas',
  Filters32 in '..\..\Filters32.pas',
  Transform32 in '..\..\Transform32.pas',
  LowLevel32 in '..\..\LowLevel32.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
