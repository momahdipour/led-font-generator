unit LCDPicturePreviewFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, TntMenus, TntDialogs, TntXPMenu, TntSystem,
  Language, TntForms, SoundDialogs, ProcsUnit, MainUnit;

const
  STATIC_LANG_RESID_START_NUM = 4000;
  DYNAMIC_LANG_RESID_START_NUM = 4250;
  DYNAMIC_TEXTS_COUNT = 1;

type
  TLCDPicturePreviewForm = class(TTntForm)
    PreviewImage: TImage;
    PopupMenu1: TTntPopupMenu;
    SaveAsPictureMenuItem: TTntMenuItem;
    SaveDialog1: TTntSaveDialog;
    TntXPMenu1: TTntXPMenu;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SaveAsPictureMenuItemClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SaveDialog1CanClose(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }

    //Multilanguage
    Dyn_Texts: array[1..DYNAMIC_TEXTS_COUNT] of WideString;
    ControlsFlipped: Boolean;
    procedure SetDynamicTexts(LangInstance: THandle);
    ///////////////
  public
    { Public declarations }
    procedure SetLanguage(LanguageInfo: TLanguageInfo;
      LanguageOptions: TLanguageOptions; LangInstance: THandle);
  end;

var
  LCDPicturePreviewForm: TLCDPicturePreviewForm;

implementation

{$R *.dfm}

uses
  SpecialProcsUnit;

procedure TLCDPicturePreviewForm.FormShow(Sender: TObject);
begin
  MainForm.GlobalOptions.LCDPicturePreviewFormFirstShow := False;
end;

procedure TLCDPicturePreviewForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MainForm.LCDPicturePreviewMenuItem.Click;
end;

procedure TLCDPicturePreviewForm.SaveAsPictureMenuItemClick(Sender: TObject);
var
  FName: String;
  RetrySave: Boolean;
begin
  RetrySave := True;
  while RetrySave do
  begin
    SaveDialog1.FileName := Procs.ExtractFileNameWithoutExt(MainForm.GetDefaultFileName);
    if SaveDialog1.Execute then
    begin
      FName := Procs.ApplyFileNameExtension(SaveDialog1.FileName,
                 ExtractFileExt(Procs.ExtractFilterString(SaveDialog1.Filter, SaveDialog1.FilterIndex)),
                 True);  //Force file extension because we do not have the *.* filter in the filter list
      if MainForm.InformForReadOnlySelectedFile(FName) then
        Continue;
      while RetrySave do
        try
          PreviewImage.Picture.SaveToFile(FName);
          RetrySave := False;
        except
          RetrySave := MainForm.DisplayFileSaveError(FName);
        end;
    end
    else
      RetrySave := False;
  end;
end;

procedure TLCDPicturePreviewForm.FormCreate(Sender: TObject);
begin
  if (Win32Platform = VER_PLATFORM_WIN32s) or
     (Win32Platform = VER_PLATFORM_WIN32_WINDOWS) then
  begin
    //This windows version is a windows older than NT (and maybe not unicode)
  end;
end;

//***************************************************************************
//Multilanguage
//***************************************************************************
procedure TLCDPicturePreviewForm.SetLanguage(LanguageInfo: TLanguageInfo;
  LanguageOptions: TLanguageOptions; LangInstance: THandle);

  function GetStaticText(ResID: Integer): WideString;
  var
    ResStringRec: TResStringRec;
  begin
    ResStringRec.Identifier := ResID + STATIC_LANG_RESID_START_NUM;
    ResStringRec.Module := @LangInstance;
    Result := MainForm.ReplaceInvalidUnicodeChars(WideLoadResString(@ResStringRec));
  end;

var
  FormVisible: Boolean;
  FlipOperation: Boolean;
begin
  //////////////////////////////
  SetDynamicTexts(LangInstance);

  FormVisible := Self.Visible;
  try
    if (LangInstance <> 0) or LanguageOptions.LanguageOptionsChanged then
      if FormVisible then
        Self.Visible := False;
  except
  end;

  MainForm.ApplyLanguageOptions(Self, LanguageInfo, LanguageOptions);
  FlipOperation := False;
  if LanguageInfo.RightToLeft and LanguageInfo.FlipControls and
    LanguageOptions.ApplyRTLToAppearance then
  begin
    if not ControlsFlipped then
    begin
      SpecialProcs.FlipChildrenExcept(Self, FlipExcludedControlsList, True);
      FlipOperation := True;
    end;
    ControlsFlipped := True;
  end
  else if ControlsFlipped then
  begin
    SpecialProcs.FlipChildrenExcept(Self, FlipExcludedControlsList, True);
    ControlsFlipped := False;
    FlipOperation := True;
  end;
  if FlipOperation then
    SpecialProcs.FlipControls([]);
  //////////////////////////////
  if LangInstance = 0 then
  begin
    MainForm.ShowForm(Self, FormVisible);
    Exit;
  end;

  Self.Caption := GetStaticText(0);

  //////////////
  //Menu Items
  SaveAsPictureMenuItem.Caption := GetStaticText(1);

  //////////////
  //Dialogs
  SaveDialog1.Title := GetStaticText(2);

  MainForm.ShowForm(Self, FormVisible);
end;

procedure TLCDPicturePreviewForm.SetDynamicTexts(LangInstance: THandle);

  procedure SetDefaultDynamicTexts;
  begin
    //Dyn_Texts[1] := 'The file %s already exists. Do you want to replace it?';
  end;

var
  i: Integer;
  S: WideString;
  ResStringRec: TResStringRec;
begin
  SetDefaultDynamicTexts;
  if LangInstance = 0 then
    Exit;
  
  ResStringRec.Module := @LangInstance;
  for i := 1 to DYNAMIC_TEXTS_COUNT do
  begin
    ResStringRec.Identifier := i + DYNAMIC_LANG_RESID_START_NUM;
    S := MainForm.ReplaceInvalidUnicodeChars(WideLoadResString(@ResStringRec));
    if Length(S) > 0 then
      Dyn_Texts[i] := S;
  end;
end;
//***************************************************************************
//***************************************************************************
//***************************************************************************

procedure TLCDPicturePreviewForm.SaveDialog1CanClose(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := MainForm.PromptForFileReplace(SaveDialog1.FileName,
                ExtractFileExt(Procs.ExtractFilterString(SaveDialog1.Filter, SaveDialog1.FilterIndex)),
                True);  //Force file extension because we do not have the *.* filter in the filter list
end;

end.
