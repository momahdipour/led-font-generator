program Test;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  SelectCharNameFormUnit in 'SelectCharNameFormUnit.pas' {SelectCharNameForm},
  SpecialCharNamesDialog in 'SpecialCharNamesDialog.pas',
  UserMappedCharsFormUnit in 'UserMappedCharsFormUnit.pas' {UserMappedCharsForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
