program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  PopupSpinEdit in '..\PopupSpinEdit.pas',
  PopupSpinEditPopupForm in 'PopupSpinEditPopupForm\PopupSpinEditPopupForm.pas' {PopupForm},
  Unit2 in 'Unit2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TPopupForm, PopupForm);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
