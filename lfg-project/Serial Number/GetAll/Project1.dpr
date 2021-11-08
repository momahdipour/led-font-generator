program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  cls_id in 'Units\CPUid\cls_id.pas',
  magwmi in 'Units\HarDisk Serial\magwmi.pas',
  WbemScripting_TLB in 'Units\HarDisk Serial\WbemScripting_TLB.pas',
  magsubs1 in 'Units\HarDisk Serial\magsubs1.pas',
  smartapi in 'Units\HarDisk Serial\smartapi.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
