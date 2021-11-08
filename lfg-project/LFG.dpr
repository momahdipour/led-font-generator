program LFG;

{$R 'Resource Files\Button Border GIF\ButtonBorderGIF.res' 'Resource Files\Button Border GIF\ButtonBorderGIF.rc'}
{$R 'Resource Files\Progress GIF\ButtonBorderGIF.res' 'Resource Files\Progress GIF\ButtonBorderGIF.rc'}
{$R 'Resource Files\Internal Language Images\Internal Language Images.res' 'Resource Files\Internal Language Images\Internal Language Images.rc'}
{$R 'Languages\English\Translation\Images\EnglishImages.res' 'Languages\English\Translation\Images\EnglishImages.rc'}

uses
  Forms,
  MainUnit in 'MainUnit.pas' {MainForm},
  LCDOptionsUnit in 'LCDOptionsUnit.pas' {LCDOptionsForm},
  AboutFormUnit in 'AboutFormUnit.pas' {AboutForm},
  ProgramOptionsFormUnit in 'ProgramOptionsFormUnit.pas' {ProgramOptionsForm},
  ProcsUnit in 'ProcsUnit.pas',
  NewDesignFormUnit in 'NewDesignFormUnit.pas' {NewDesignForm},
  LibraryOrganizerFormUnit in 'LibraryOrganizerFormUnit.pas' {LibraryOrganizerForm},
  CharacterMapFormUnit in 'CharacterMapFormUnit.pas' {CharacterMapForm},
  SplashScreenUnit in 'SplashScreenUnit.pas' {SplashScreen},
  SysUtils,
  ErrorLogFormUnit in 'ErrorLogFormUnit.pas' {ErrorLogForm},
  LCDAnimatorFormUnit in 'LCDAnimatorFormUnit.pas' {LCDAnimatorForm},
  ImportGraphicsFormUnit in 'ImportGraphicsFormUnit.pas' {ImportGraphicsForm},
  GraphicCompression in 'Graphic Units\GraphicCompression.pas',
  GraphicEx in 'Graphic Units\GraphicEx.pas',
  Graphics32 in '..\depedent-units\Graphics32\Graphics32.pas',
  Blend32 in '..\depedent-units\Graphics32\Blend32.pas',
  CPUid in '..\depedent-units\Graphics32\CPUid.pas',
  Transform32 in '..\depedent-units\Graphics32\Transform32.pas',
  LowLevel32 in '..\depedent-units\Graphics32\LowLevel32.pas',
  Filters32 in '..\depedent-units\Graphics32\Filters32.pas',
  Image32 in '..\depedent-units\Graphics32\Image32.pas',
  TntCancelDialog in '..\custom-components\TTntCancelDialog\TntCancelDialog.pas',
  LCDPicturePreviewFormUnit in 'LCDPicturePreviewFormUnit.pas' {LCDPicturePreviewForm},
  Language in 'Language.pas',
  ChooseLanguageFormUnit in 'ChooseLanguageFormUnit.pas' {ChooseLanguageForm},
  CodeToLCDFormUnit in 'CodeToLCDFormUnit.pas' {CodeToLCDForm},
  Help in 'Help.pas',
  SaveCategoryDialog in '..\custom-components\TSaveCategoryDialog\SaveCategoryDialog.pas',
  SaveCategoryDialogFormUnit in '..\custom-components\TSaveCategoryDialog\SaveCategoryDialogFormUnit.pas' {SaveCategoryDialogForm},
  SelectCharNameFormUnit in '..\custom-components\TSaveCategoryDialog\TSpecialCharNamesDialog\SelectCharNameFormUnit.pas' {SelectCharNameForm},
  SpecialCharNamesDialog in '..\custom-components\TSaveCategoryDialog\TSpecialCharNamesDialog\SpecialCharNamesDialog.pas',
  ChooseHelpLangFormUnit in 'ChooseHelpLangFormUnit.pas' {ChooseHelpLangForm},
  CheckForUpdatesFormUnit in 'CheckForUpdatesFormUnit.pas' {CheckForUpdatesForm},
  HowToBuyFormUnit in 'HowToBuyFormUnit.pas' {HowToBuyForm},
  ClipboardMonitor in 'ClipboardMonitor.pas' {ClipboardMonitorForm},
  cls_id in '..\depedent-units\CPUid\cls_id.pas',
  GIFImage in '..\depedent-units\GIFImage\GIFImage.pas',
  UserMappedCharsFormUnit in '..\custom-components\TSaveCategoryDialog\TSpecialCharNamesDialog\UserMappedCharsFormUnit.pas' {UserMappedCharsForm},
  SpecialProcsUnit in 'SpecialProcsUnit.pas',
  LCDProcsUnit in 'LCDProcsUnit.pas',
  FullScreenFormUnit in 'FullScreenFormUnit.pas' {FullScreenForm},
  LCDTypes in 'LCDTypes.pas',
  TntToolWin in '..\depedent-units\TntToolWin\TntToolWin.pas',
  LCDConsts in 'LCDConsts.pas',
  LCDHistory in 'LCDHistory.pas',
  SoundDialogs in 'SoundDialogs.pas',
  ExportLCDFormUnit in 'ExportLCDFormUnit.pas' {ExportLCDForm: TTntForm},
  BiDiDialogs in 'BiDiDialogs.pas',
  BiDiSoundDialogs in 'BiDiSoundDialogs.pas',
  License in 'License Units\Main License Unit\License.pas',
  License2 in 'License Units\License Unit Copies\License2.pas',
  License3 in 'License Units\License Unit Copies\License3.pas',
  License4 in 'License Units\License Unit Copies\License4.pas',
  License5 in 'License Units\License Unit Copies\License5.pas',
  License6 in 'License Units\License Unit Copies\License6.pas';

{$R *.res}
var
  SplashScreen: TSplashScreen;

begin
  ApplicationState := [asLoading];

  Application.Initialize;
  Application.Title := '';

  if not License.CheckLicenseStatus and
     (Procs.ProcessInstanceCount(APPLICATION_EXE_FILE_NAME) >= 2) then
    Halt;  //No more than one copy of the program can be executed when the software is not registered

  SplashScreen := nil;
  if Procs.ProcessInstanceCount(APPLICATION_EXE_FILE_NAME) <= 1 then
  begin
    SplashScreen:=TSplashScreen.Create(nil);
//    SplashScreen.Show;
    SplashScreen.Update;
    Application.ProcessMessages;
  end;

  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TExportLCDForm, ExportLCDForm);
  //If there was any problem, this would Halt the application.

//  Application.CreateForm(THowToBuyForm, HowToBuyForm);
//  Application.CreateForm(TCheckForUpdatesForm, CheckForUpdatesForm);

  //Clipboard Monitor form
  Application.CreateForm(TClipboardMonitorForm, ClipboardMonitorForm);

  //Ful Screen view form
  Application.CreateForm(TFullScreenForm, FullScreenForm);
  //FullScreenForm := nil;  //The form will be created on the first use  --> This method has been changed

//  Application.CreateForm(TChooseHelpLangForm, ChooseHelpLangForm);
  Application.CreateForm(TLCDOptionsForm, LCDOptionsForm);

  Application.CreateForm(TAboutForm, AboutForm);

  Application.CreateForm(TProgramOptionsForm, ProgramOptionsForm);
//  Application.CreateForm(TNewDesignForm, NewDesignForm);
  Application.CreateForm(TLCDPicturePreviewForm, LCDPicturePreviewForm);

  if Assigned(SplashScreen) then
  begin
    SplashScreen.Update;
    Application.ProcessMessages;
  end;

  Application.CreateForm(TExportLCDForm, ExportLCDForm);

//  Application.CreateForm(TLibraryOrganizerForm, LibraryOrganizerForm);
//  Application.CreateForm(TCharacterMapForm, CharacterMapForm);
  Application.CreateForm(TErrorLogForm, ErrorLogForm);

//  Application.CreateForm(TLCDAnimatorForm, LCDAnimatorForm);
  Application.CreateForm(TImportGraphicsForm, ImportGraphicsForm);

  if Assigned(SplashScreen) then
  begin
    SplashScreen.Update;
    Application.ProcessMessages;
  end;

//  Application.CreateForm(TChooseLanguageForm, ChooseLanguageForm);
  Application.CreateForm(TCodeToLCDForm, CodeToLCDForm);

  //Hide the splash screen
  if Assigned(SplashScreen) then
  begin
    //Sleep(200);  --> Never use this method of displaying splash screen for big applications
    SplashScreen.Hide;
    SplashScreen.Free;
  end;

  ApplicationState := [];
  Application.Run;
end.
