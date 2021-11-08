program TestOpenCharacterDialog;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  OpenCharacterDialog in '..\OpenCharacterDialog.pas',
  OpenCharacterDialogFormUnit in '..\OpenCharacterDialogFormUnit.pas' {OpenCharacterDialogForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
//  Application.CreateForm(TOpenCharacterDialogForm, OpenCharacterDialogForm);
  Application.Run;
end.
