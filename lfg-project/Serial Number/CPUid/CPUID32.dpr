program CPUID32;

uses
  Forms,
  cls_id in 'cls_id.pas',
  Umain in 'Umain.pas' {DemoForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TDemoForm, DemoForm);
  Application.Run;
end.
