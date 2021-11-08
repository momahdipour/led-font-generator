program CharacterDesigner;

uses
  Forms,
  MainUnit in 'MainUnit.pas' {MainForm},
  SaveCategoryDialog in '..\..\custom-components\TSaveCategoryDialog\SaveCategoryDialog.pas',
  SaveCategoryDialogFormUnit in '..\..\custom-components\TSaveCategoryDialog\SaveCategoryDialogFormUnit.pas' {SaveCategoryDialogForm},
  SpecialCharNamesDialog in '..\..\custom-components\TSaveCategoryDialog\TSpecialCharNamesDialog\SpecialCharNamesDialog.pas',
  SelectCharNameFormUnit in '..\..\custom-components\TSaveCategoryDialog\TSpecialCharNamesDialog\SelectCharNameFormUnit.pas' {SelectCharNameForm},
  ProcsUnit in '..\ProcsUnit.pas',
  Language in 'Language.pas',
  OpenCharacterDialog in '..\..\custom-components\TOpenCharacterDialog\OpenCharacterDialog.pas',
  OpenCharacterDialogFormUnit in '..\..\custom-components\TOpenCharacterDialog\OpenCharacterDialogFormUnit.pas' {OpenCharacterDialogForm},
  cls_id in '..\..\depedent-units\CPUid\cls_id.pas',
  UserMappedCharsFormUnit in '..\..\custom-components\TSaveCategoryDialog\TSpecialCharNamesDialog\UserMappedCharsFormUnit.pas' {UserMappedCharsForm},
  SpecialProcsUnit in '..\SpecialProcsUnit.pas',
  LCDProcsUnit in '..\LCDProcsUnit.pas',
  LCDTypes in '..\LCDTypes.pas',
  ClipboardMonitor in 'ClipboardMonitor.pas' {ClipboardMonitorForm},
  TntToolWin in '..\..\depedent-units\TntToolWin\TntToolWin.pas',
  LCDConsts in '..\LCDConsts.pas',
  LCDHistory in '..\LCDHistory.pas',
  SoundDialogs in '..\SoundDialogs.pas',
  BiDiSoundDialogs in '..\BiDiSoundDialogs.pas',
  BiDiDialogs in '..\BiDiDialogs.pas',
  License in '..\License Units\Main License Unit\License.pas',
  License2 in '..\License Units\License Unit Copies\License2.pas',
  License3 in '..\License Units\License Unit Copies\License3.pas',
  License4 in '..\License Units\License Unit Copies\License4.pas',
  License5 in '..\License Units\License Unit Copies\License5.pas',
  License6 in '..\License Units\License Unit Copies\License6.pas',
  AboutFormUnit in 'AboutFormUnit.pas' {AboutForm: TTntForm};

{$R *.res}

begin
  ApplicationState := [asLoading];

  Application.Initialize;
  Application.Title := 'LED Character Designer';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TClipboardMonitorForm, ClipboardMonitorForm);
  Application.CreateForm(TAboutForm, AboutForm);
  ApplicationState := [];
  Application.Run;
end.
