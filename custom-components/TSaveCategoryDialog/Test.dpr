program Test;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  SaveCategoryDialog in 'SaveCategoryDialog.pas',
  SaveCategoryDialogFormUnit in 'SaveCategoryDialogFormUnit.pas' {SaveCategoryDialogForm},
  SpecialCharNamesDialog in 'TSpecialCharNamesDialog\SpecialCharNamesDialog.pas',
  SelectCharNameFormUnit in 'TSpecialCharNamesDialog\SelectCharNameFormUnit.pas' {SelectCharNameForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
