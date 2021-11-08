unit FullScreenFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ImgList, TntComCtrls, Buttons,
  TntButtons, TntXPMenu, TntExtCtrls, MainUnit, Language, TntSystem,
  TntForms, Menus, TntMenus, ExtCtrls, TntToolWin, cmpStandardSystemMenu,
  StdCtrls, SoundDialogs;

const
  /////////////////////////////////////////////////////
  //Language
  STATIC_LANG_RESID_START_NUM = 7500;
  DYNAMIC_LANG_RESID_START_NUM = 7750;
  DYNAMIC_TEXTS_COUNT = 1;
  /////////////////////////////////////////////////////

  ///////////////////////////////
  //Registry paths
  REG_TOOLBAR_VALUE_SAVEANDEDIT = 'Save and Edit';
  REG_TOOLBAR_VALUE_FULLSCREENDESIGN = 'Full Screen Design';
  REG_TOOLBAR_VALUE_FULLSCREEN = 'Full Screen';
  ///////////////////////////////

type
  TFullScreenForm = class(TTntForm)
    TopControlBar: TTntControlBar;
    SaveAndEditToolBar: TTntToolBar;
    SaveToolBtn: TTntToolButton;
    ToolButton2: TTntToolButton;
    CutToolBtn: TTntToolButton;
    CopyToolBtn: TTntToolButton;
    PasteToolBtn: TTntToolButton;
    ClearLCDToolBtn: TTntToolButton;
    FullScreenToolBar: TTntToolBar;
    SwitchFullScreenModeBtn: TTntToolButton;
    CustomizeToolBarPopupMenu: TTntPopupMenu;
    ToggleSaveAndEditToolBarMenuItem: TTntMenuItem;
    ToggleDesignToolBarMenuItem: TTntMenuItem;
    ToggleFullScreenToolBarMenuItem: TTntMenuItem;
    FullScreenDesignToolBar: TTntToolBar;
    ClearAllToolBtn: TTntToolButton;
    TntToolButton22: TTntToolButton;
    ShiftLeftToolBtn: TTntToolButton;
    ShiftRightToolBtn: TTntToolButton;
    ToolButton11: TTntToolButton;
    RotateLToolBtn: TTntToolButton;
    RotateRToolBtn: TTntToolButton;
    RotateUToolBtn: TTntToolButton;
    RotateDToolBtn: TTntToolButton;
    ToolButton16: TTntToolButton;
    FlipHorizontalToolBtn: TTntToolButton;
    FlipVerticalToolBtn: TTntToolButton;
    RotatePage90CWToolBtn: TTntToolButton;
    RotatePage90CCWToolBtn: TTntToolButton;
    RedoToolBtn: TTntToolButton;
    UndoToolBtn: TTntToolButton;
    TntToolButton3: TTntToolButton;
    TntToolBar1: TTntToolBar;
    TntToolBar2: TTntToolBar;
    CloseFullScreenToolBtn: TTntToolButton;
    TntXPMenu1: TTntXPMenu;
    procedure SwitchFullScreenModeBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure CloseFullScreenToolBtnClick(Sender: TObject);
    procedure SaveToolBtnClick(Sender: TObject);
    procedure CutToolBtnClick(Sender: TObject);
    procedure CopyToolBtnClick(Sender: TObject);
    procedure PasteToolBtnClick(Sender: TObject);
    procedure ClearLCDToolBtnClick(Sender: TObject);
    procedure ClearAllToolBtnClick(Sender: TObject);
    procedure ShiftLeftToolBtnClick(Sender: TObject);
    procedure ShiftRightToolBtnClick(Sender: TObject);
    procedure RotateLToolBtnClick(Sender: TObject);
    procedure RotateRToolBtnClick(Sender: TObject);
    procedure RotateUToolBtnClick(Sender: TObject);
    procedure RotateDToolBtnClick(Sender: TObject);
    procedure FlipHorizontalToolBtnClick(Sender: TObject);
    procedure FlipVerticalToolBtnClick(Sender: TObject);
    procedure RotatePage90CWToolBtnClick(Sender: TObject);
    procedure RotatePage90CCWToolBtnClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToggleSaveAndEditToolBarMenuItemClick(Sender: TObject);
    procedure CustomizeToolBarPopupMenuPopup(Sender: TObject);
    procedure ToggleDesignToolBarMenuItemClick(Sender: TObject);
    procedure ToggleFullScreenToolBarMenuItemClick(Sender: TObject);
    procedure FullScreenToolBarEndDock(Sender, Target: TObject; X,
      Y: Integer);
    procedure UndoToolBtnClick(Sender: TObject);
    procedure RedoToolBtnClick(Sender: TObject);
  private
    { Private declarations }
    LastWindowRect: TWindowRect;

    //Multilanguage
    Dyn_Texts: array[1..DYNAMIC_TEXTS_COUNT] of WideString;
    ControlsFlipped: Boolean;
    ToolBarCaptions: array[1..3] of WideString;  //1: SaveAndEditToolBar
                                                 //2: FullScreenDesignToolBar
                                                 //3: FullScreenToolBar

    procedure SetToolBarHints;
    procedure SetDynamicTexts(LangInstance: THandle);
    procedure SetToolbarCaptions;
    ///////////////

    procedure SaveWindowRect;
    procedure RestoreWindowRect;

    procedure ReadRegSettings;
    procedure WriteRegSettings;
  public
    { Public declarations }
    procedure SetLanguage(LanguageInfo: TLanguageInfo;
      LanguageOptions: TLanguageOptions; LangInstance: THandle);
  end;

var
  FullScreenForm: TFullScreenForm;

implementation

uses SpecialProcsUnit, ProcsUnit;

var
  FULL_SCREEN_VIEW_CAPTION_SUFFIX: WideString = '';  //Nothing is added to the caption

{$R *.dfm}

procedure TFullScreenForm.SwitchFullScreenModeBtnClick(Sender: TObject);
begin
  if Self.BorderStyle = bsSizeable then
  begin
    SaveWindowRect;
    Self.BorderStyle := bsNone;  //No OnShow event will occur, because the OnShow event handler in set to nil
    Self.WindowState := wsMaximized;
    SwitchFullScreenModeBtn.ImageIndex := 25;
  end
  else
  begin
    Self.WindowState := wsNormal;
    Self.BorderStyle := bsSizeable;  //No OnShow event will occur, because the OnShow event handler in set to nil
    RestoreWindowRect;
    SwitchFullScreenModeBtn.ImageIndex := 26;
  end;
end;

procedure TFullScreenForm.FormShow(Sender: TObject);
begin
  //Read any settings for appearance from the registry such as toolbars
  ReadRegSettings;
  //Multilanguage
  SetLanguage(ActiveLanguage, ActiveLanguageOptions, ActiveLangInstance);
  //SetToolbarHints is called from the SetLanguage procedure
  SetToolbarCaptions;
  ///////////////
  Self.Caption := Application.Title + FULL_SCREEN_VIEW_CAPTION_SUFFIX;
  Self.WindowState := wsMaximized;
  SwitchFullScreenModeBtn.ImageIndex := 25;
  Application.MainForm.Visible := False;
  //----------------------- Preparation
  MainForm.StandardSystemMenu1.OnlyDelphiMenu := True;
  MainForm.SaveToolBarsState(True);
  MainForm.LCDPanel.Hide;
  MainForm.LCDPanel.Parent := Self;
  MainForm.LCDPanel.Show;
  MainForm.LeftToolSizePanel.Visible := False;
  MainForm.RightToolSizePanel.Visible := False;
  //-----------------------
  PasteToolBtn.Enabled := MainForm.PasteToolBtn.Enabled;
  UndoToolBtn.Enabled := MainForm.UndoToolBtn.Enabled;  //Prevent potential software bugs
  RedoToolBtn.Enabled := MainForm.RedoToolBtn.Enabled;

  //*******************************
  //Set the OnShow event handle to nil, because when the BorderStyle of the form
  // is changed, this event is occurres, because the form is recreated and so,
  // is shown to the user again.
  Self.OnShow := nil;
  //*******************************
end;

procedure TFullScreenForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //Write settings for appearance to the registry such as toolbars
  WriteRegSettings;
  //Hide toolbars because floating toolbars remain on the screen
  SaveAndEditToolBar.Visible := False;
  FullScreenDesignToolBar.Visible := False;
  FullScreenToolBar.Visible := False;
  //----------------------- Preparation
  MainForm.StandardSystemMenu1.OnlyDelphiMenu := False;
  MainForm.RestoreToolBarsState;
  MainForm.LeftToolSizePanel.Visible := True;
  MainForm.RightToolSizePanel.Visible := True;
  MainForm.LCDPanel.Hide;
  MainForm.LCDPanel.Parent := MainForm;
  MainForm.LCDPanel.Show;
  MainForm.LCDPanel.SendToBack;
  //-----------------------
  Application.MainForm.Visible := True;

  //*******************************
  //Restore OnShow event to occur next time the form is shown by a call from the main form
  Self.OnShow := FormShow;
  //*******************************
end;

procedure TFullScreenForm.FormCreate(Sender: TObject);
begin
  if (Win32Platform = VER_PLATFORM_WIN32s) or
     (Win32Platform = VER_PLATFORM_WIN32_WINDOWS) then
  begin
    //This windows version is a windows older than NT (and maybe not unicode)
  end;

  //Set class type of the floating windows of the toolbars to a windows class that supports unicode
  SaveAndEditToolBar.FloatingDockSiteClass := TTntToolDockForm;
  FullScreenDesignToolBar.FloatingDockSiteClass := TTntToolDockForm;
  FullScreenToolBar.FloatingDockSiteClass := TTntToolDockForm;
  //////////////////

  //Position window at screen center and save its position
  Procs.SetWindowPosition(Self, poScreenCenter, True);
  SaveWindowRect;
end;

procedure TFullScreenForm.SaveWindowRect;
begin
  with LastWindowRect do
  begin
    Left := Self.Left;
    Top := Self.Top;
    Width := Self.Width;
    Height := Self.Height;
  end;
end;

procedure TFullScreenForm.RestoreWindowRect;
begin
  with LastWindowRect do
    Self.SetBounds(Left, Top, Width, Height);
  Self.WindowState := wsNormal;
end;

procedure TFullScreenForm.CloseFullScreenToolBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFullScreenForm.SaveToolBtnClick(Sender: TObject);
begin
  MainForm.SaveToolBtn.Click;
end;

procedure TFullScreenForm.CutToolBtnClick(Sender: TObject);
begin
  MainForm.CutToolBtn.Click;
end;

procedure TFullScreenForm.CopyToolBtnClick(Sender: TObject);
begin
  MainForm.CopyToolBtn.Click;
end;

procedure TFullScreenForm.PasteToolBtnClick(Sender: TObject);
begin
  MainForm.PasteToolBtn.Click;
end;

procedure TFullScreenForm.ClearLCDToolBtnClick(Sender: TObject);
begin
  MainForm.ClearLCDToolBtn.Click;
end;

procedure TFullScreenForm.ClearAllToolBtnClick(Sender: TObject);
begin
  MainForm.ClearAllToolBtn.Click;
end;

procedure TFullScreenForm.ShiftLeftToolBtnClick(Sender: TObject);
begin
  MainForm.ShiftLeftToolBtn.Click;
end;

procedure TFullScreenForm.ShiftRightToolBtnClick(Sender: TObject);
begin
  MainForm.ShiftRightToolBtn.Click;
end;

procedure TFullScreenForm.RotateLToolBtnClick(Sender: TObject);
begin
  MainForm.RotateLToolBtn.Click;
end;

procedure TFullScreenForm.RotateRToolBtnClick(Sender: TObject);
begin
  MainForm.RotateRToolBtn.Click;
end;

procedure TFullScreenForm.RotateUToolBtnClick(Sender: TObject);
begin
  MainForm.RotateUToolBtn.Click;
end;

procedure TFullScreenForm.RotateDToolBtnClick(Sender: TObject);
begin
  MainForm.RotateDToolBtn.Click;
end;

procedure TFullScreenForm.FlipHorizontalToolBtnClick(Sender: TObject);
begin
  MainForm.FlipHorizontalToolBtn.Click;
end;

procedure TFullScreenForm.FlipVerticalToolBtnClick(Sender: TObject);
begin
  MainForm.FlipVerticalToolBtn.Click;
end;

procedure TFullScreenForm.RotatePage90CWToolBtnClick(Sender: TObject);
begin
  MainForm.RotatePage90CWToolBtn.Click;
end;

procedure TFullScreenForm.RotatePage90CCWToolBtnClick(Sender: TObject);
begin
  MainForm.RotatePage90CCWToolBtn.Click;
end;

procedure TFullScreenForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TFullScreenForm.ToggleSaveAndEditToolBarMenuItemClick(
  Sender: TObject);
begin
  SaveAndEditToolBar.Visible := (Sender as TMenuItem).Checked;
end;

procedure TFullScreenForm.CustomizeToolBarPopupMenuPopup(Sender: TObject);
begin
  ToggleSaveAndEditToolBarMenuItem.Checked := SaveAndEditToolBar.Visible;
  ToggleDesignToolBarMenuItem.Checked := FullScreenDesignToolBar.Visible;
  ToggleFullScreenToolBarMenuItem.Checked := FullScreenToolBar.Visible;
end;

procedure TFullScreenForm.ToggleDesignToolBarMenuItemClick(
  Sender: TObject);
begin
  FullScreenDesignToolBar.Visible := (Sender as TMenuItem).Checked;
end;

procedure TFullScreenForm.ToggleFullScreenToolBarMenuItemClick(
  Sender: TObject);
begin
  FullScreenToolBar.Visible := (Sender as TMenuItem).Checked;
end;

procedure TFullScreenForm.FullScreenToolBarEndDock(Sender, Target: TObject;
  X, Y: Integer);
begin
  //Don't allow the user to hide the Design toolbar directly from the toolbar
  //Applied only to Full Screen toolbar and Full Screen Design toolbar
  if Sender is TToolBar then
    if (Sender as TToolBar).Floating then
      ((Sender as TControl).Parent as TForm).BorderIcons := [];
end;

procedure TFullScreenForm.ReadRegSettings;
begin
  try
    SpecialProcs.ReadToolbarSettings(SaveAndEditToolBar, REG_TOOLBAR_SETTINGS_PATH, REG_TOOLBAR_VALUE_SAVEANDEDIT);
    SpecialProcs.ReadToolbarSettings(FullScreenDesignToolBar, REG_TOOLBAR_SETTINGS_PATH, REG_TOOLBAR_VALUE_FULLSCREENDESIGN);
    SpecialProcs.ReadToolbarSettings(FullScreenToolBar, REG_TOOLBAR_SETTINGS_PATH, REG_TOOLBAR_VALUE_FULLSCREEN);

    //Don't allow the user to hide the Design toolbar directly from the toolbar
    if FullScreenDesignToolBar.Floating then
      (FullScreenDesignToolBar.Parent as TForm).BorderIcons := [];
    //Don't allow the user to hide the Full Screen toolbar at all
    if FullScreenToolBar.Floating then
      (FullScreenToolBar.Parent as TForm).BorderIcons := [];
  except
  end;
end;

procedure TFullScreenForm.WriteRegSettings;
begin
  try
    SpecialProcs.WriteToolbarSettings(SaveAndEditToolBar, REG_TOOLBAR_SETTINGS_PATH, REG_TOOLBAR_VALUE_SAVEANDEDIT);
    SpecialProcs.WriteToolbarSettings(FullScreenDesignToolBar, REG_TOOLBAR_SETTINGS_PATH, REG_TOOLBAR_VALUE_FULLSCREENDESIGN);
    SpecialProcs.WriteToolbarSettings(FullScreenToolBar, REG_TOOLBAR_SETTINGS_PATH, REG_TOOLBAR_VALUE_FULLSCREEN);
  except
  end;
end;

procedure TFullScreenForm.UndoToolBtnClick(Sender: TObject);
begin
  MainForm.UndoToolBtn.Click;
end;

procedure TFullScreenForm.RedoToolBtnClick(Sender: TObject);
begin
  MainForm.RedoToolBtn.Click;
end;

//===========================================================================
//***************************************************************************
//Multilanguage
//***************************************************************************
//===========================================================================
procedure TFullScreenForm.SetLanguage(LanguageInfo: TLanguageInfo;
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
//  FormVisible: Boolean;
  FlipOperation: Boolean;
begin
  //////////////////////////////
  SetDynamicTexts(LangInstance);

  SetToolBarHints;

{  FormVisible := Self.Visible;
  try
    if (LangInstance <> 0) or LanguageOptions.LanguageOptionsChanged then
      if FormVisible then
        Self.Visible := False;
  except
  end;}

  MainForm.ApplyLanguageOptions(Self, LanguageInfo, LanguageOptions);
  //Exceptions
  //Form caption
  Self.BiDiMode := bdLeftToRight;

  if LanguageInfo.RightToLeft and LanguageInfo.FlipControls and
    LanguageOptions.ApplyRTLToAppearance then
  begin
    SaveAndEditToolBar.BiDiMode := bdRightToLeft;
    FullScreenDesignToolBar.BiDiMode := bdRightToLeft;
    FullScreenToolBar.BiDiMode := bdRightToLeft;
  end
  else
  begin
    SaveAndEditToolBar.BiDiMode := bdLeftToRight;
    FullScreenDesignToolBar.BiDiMode := bdLeftToRight;
    FullScreenToolBar.BiDiMode := bdLeftToRight;
  end;
  //The BiDiMode of floating windows will be set in the SetToolbarCaptions
  //Flip selected controls
  FlipOperation := False;
  if LanguageInfo.RightToLeft and LanguageInfo.FlipControls and
    LanguageOptions.ApplyRTLToAppearance then
  begin
    if not ControlsFlipped then
    begin
      //SpecialProcs.FlipChildrenExcept(, FlipExcludedControlsList, True);
      //SpecialProcs.FlipControls([]);
    FlipOperation := True;
    end;
    ControlsFlipped := True;
  end
  else if ControlsFlipped then
  begin
    //SpecialProcs.FlipChildrenExcept(, FlipExcludedControlsList, True);
    //SpecialProcs.FlipControls();
    ControlsFlipped := False;
    FlipOperation := True;
  end;
  if FlipOperation then
  begin
    SpecialProcs.FlipControls([]);
  end;
  //////////////////////////////
  if LangInstance = 0 then
  begin
//    MainForm.ShowForm(Self, FormVisible);
    //Toolbars and their floating window caption (default values for internal English (Default) language)
    ToolbarCaptions[1] := 'Save and Edit';  //SaveAndEditToolBar
    ToolbarCaptions[2] := 'Design';  //FullScreenDesignToolBar
    ToolbarCaptions[3] := 'Full Screen';  //FullScreenToolBar
    //if not(asLoading in ApplicationState) then
    //  SetToolbarCaptions;  --> Not necessary
    //If a floating toolbar, the caption of the floating window will be updated in
    // the SetToolbarCaptions procedure.
    Exit;
  end;


  //Items to change:
  //  Captions
  //  Hints
  CloseFullScreenToolBtn.Caption := GetStaticText(1);

  SwitchFullScreenModeBtn.Hint := GetStaticText(2);
  CloseFullScreenToolBtn.Hint := GetStaticText(3);

  FULL_SCREEN_VIEW_CAPTION_SUFFIX := GetStaticText(4);

  //Toolbar captions
  ToolBarCaptions[1] := GetStaticText(5);  //SaveAndEditToolBar
    ToggleSaveAndEditToolBarMenuItem.Caption := ToolBarCaptions[1];
  ToolBarCaptions[2] := GetStaticText(6);  //FullScreenDesignToolBar
    ToggleDesignToolBarMenuItem.Caption := ToolBarCaptions[2];
  ToolBarCaptions[3] := GetStaticText(7);  //FullScreenToolBar
    ToggleFullScreenToolBarMenuItem.Caption := ToolBarCaptions[3];
end;

procedure TFullScreenForm.SetDynamicTexts(LangInstance: THandle);

  procedure SetDefaultDynamicTexts;
  begin
    Dyn_Texts[1] := '';  //***A dummy value because the array cannot be zero lenghted
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

procedure TFullScreenForm.SetToolBarHints;
begin
  //Save and Edit Toolbar
  SaveToolBtn.Hint := MainForm.SaveToolBtn.Hint;

  CutToolBtn.Hint := MainForm.CutToolBtn.Hint;
  CopyToolBtn.Hint := MainForm.CopyToolBtn.Hint;
  PasteToolBtn.Hint := MainForm.PasteToolBtn.Hint;
  ClearLCDToolBtn.Hint := MainForm.ClearLCDToolBtn.Hint;

  UndoToolBtn.Hint := MainForm.UndoToolBtn.Hint;
  RedoToolBtn.Hint := MainForm.RedoToolBtn.Hint;

  //Design Toolbar
  ClearAllToolBtn.Hint := MainForm.ClearAllToolBtn.Hint;

  ShiftLeftToolBtn.Hint := MainForm.ShiftLeftToolBtn.Hint;
  ShiftRightToolBtn.Hint := MainForm.ShiftRightToolBtn.Hint;

  RotateLToolBtn.Hint := MainForm.RotateLToolBtn.Hint;
  RotateRToolBtn.Hint := MainForm.RotateRToolBtn.Hint;
  RotateUToolBtn.Hint := MainForm.RotateUToolBtn.Hint;
  RotateDToolBtn.Hint := MainForm.RotateDToolBtn.Hint;

  FlipHorizontalToolBtn.Hint := MainForm.FlipHorizontalToolBtn.Hint;
  FlipVerticalToolBtn.Hint := MainForm.FlipVerticalToolBtn.Hint;
  RotatePage90CWToolBtn.Hint := MainForm.RotatePage90CWToolBtn.Hint;
  RotatePage90CCWToolBtn.Hint := MainForm.RotatePage90CCWToolBtn.Hint;
end;

procedure TFullScreenForm.SetToolbarCaptions;
var
  Visibles: array[1..2] of Boolean;
begin
  Visibles[1] := SaveAndEditToolBar.Visible;
  Visibles[2] := FullScreenDesignToolBar.Visible;
  SaveAndEditToolBar.Visible := True;
  FullScreenDesignToolBar.Visible := True;

  //Causes an error in TNT units if the toolbar is invisible

  SaveAndEditToolBar.Caption := ToolBarCaptions[1];
  FullScreenDesignToolBar.Caption := ToolBarCaptions[2];
  FullScreenToolBar.Caption := ToolBarCaptions[3];

  SaveAndEditToolBar.Visible := Visibles[1];
  FullScreenDesignToolBar.Visible := Visibles[2];
  //If a floating toolbar, update the caption of the floating window
  if SaveAndEditToolBar.Floating then  //SaveAndEditToolBar
  begin
    (SaveAndEditToolBar.Parent as TTntForm).Caption := SaveAndEditToolBar.Caption;
    SaveAndEditToolBar.Parent.BiDiMode := SaveAndEditToolBar.BiDiMode;
  end;
  if FullScreenDesignToolBar.Floating then  //FullScreenDesignToolBar
  begin
    (FullScreenDesignToolBar.Parent as TTntForm).Caption := FullScreenDesignToolBar.Caption;
    FullScreenDesignToolBar.Parent.BiDiMode := FullScreenDesignToolBar.BiDiMode;
  end;
  if FullScreenToolBar.Floating then  //FullScreenToolBar
  begin
    (FullScreenToolBar.Parent as TTntForm).Caption := FullScreenToolBar.Caption;
    FullScreenToolBar.Parent.BiDiMode := FullScreenToolBar.BiDiMode;
  end;
end;
//===========================================================================
//***************************************************************************
//***************************************************************************
//===========================================================================

end.
