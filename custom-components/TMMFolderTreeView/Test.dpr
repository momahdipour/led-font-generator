program Test;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  MMFolderTreeView in 'MMFolderTreeView.pas',
  TntCancelDialog in '..\TTntCancelDialog\TntCancelDialog.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
 