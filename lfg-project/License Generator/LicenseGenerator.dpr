program LicenseGenerator;

uses
  Forms,
  MainUnit in 'MainUnit.pas' {MainForm},
  cls_id in 'Used Units\CPUid\cls_id.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'LCD Designer License 2.0 Generator';
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
