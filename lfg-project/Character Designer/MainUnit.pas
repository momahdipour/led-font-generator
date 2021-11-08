unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, StdCtrls, Spin, XPMan, Buttons,
  ExtCtrls, ComCtrls, ToolWin, SaveCategoryDialog, Clipbrd, ProcsUnit,
  TntButtons, PopupSpinEdit, TntStdCtrls, D7ColorBox, Registry, Language,
  TntRegistry, TntSystem, TntExtCtrls, TntComCtrls, TntDialogs,
  OpenCharacterDialog, License, TntForms, Menus, ImgList, LCDTypes,
  AppEvnts, TntMenus, TntXPMenu, TntToolWin, LCDConsts, LCDHistory,
  SoundDialogs, cmpStandardSystemMenu, BiDiDialogs, BiDiSoundDialogs,
  TntSysUtils, MMAdvancedGrid;

const
  /////////////////////////////////////////////////////
  //Language
  STATIC_LANG_RESID_START_NUM = 40000;
  DYNAMIC_LANG_RESID_START_NUM = 40500;
  DYNAMIC_TEXTS_COUNT = 42;

  EXTRA_LANG_INFO_RESID_START_NUM = 10000;

  FlipExcludedControlsList: array[0..0] of TComponentClass = (
                              TSpinButton
                            );
  /////////////////////////////////////////////////////

  /////////////////////////////////////////////////////
  DIALOGS_TITLE = CD_SOFTWARE_NAME;
  /////////////////////////////////////////////////////

  //Registry paths
  REG_OPENCHAR_SETTINGS_PATH = (REG_USER_SETTINGS_PATH + REG_CHARACTER_DESIGNER_PATH + '\Open Character');
  REG_TOOLBAR_SETTINGS_PATH = REG_USER_SETTINGS_PATH + REG_CHARACTER_DESIGNER_PATH + '\Toolbars';
    REG_TOOLBAR_VALUE_EDITANDDESIGN = 'Edit and Design';
    REG_TOOLBAR_PLACE_VALUE_SUFFIX = ' (PLACE)';
  /////////////////////////////////////////////////////

  UNTITLED_DOCUMENT_NAME = 'Untitled';

  DEFAULT_UNDO_LEVELS = 30;

type
  TGlobalOptions = record
    LCDFilledColor,LCDClearedColor:TColor;
    LCDUseSolidColors: Boolean;
    LCDGridColor: TColor;
    LCDCursorColor: TColor;
    CTRLClickToggle: Boolean;
    ShowSeparatorLines:Boolean;
    CharacterWidth, CharacterHeight:Integer;
    LCDZoomValue:Integer;
    LCDCellSpace: Integer;
    ShowCursorRectangle:Boolean;
    UndoLevels: Integer;
  end;

  TMainForm = class(TTntForm)
    TopPanel: TTntPanel;
    ClearLCDBtn: TTntBitBtn;
    SaveCharBtn: TTntBitBtn;
    XPManifest1: TXPManifest;
    MiddlePanel: TTntPanel;
    LoadCharBtn: TTntBitBtn;
    LCDGridLinesCheck: TTntCheckBox;
    ShowCursorRectangleCheck: TTntCheckBox;
    CellSpaceBtn: TPopupSpinEdit;
    Bevel1: TTntBevel;
    Bevel2: TTntBevel;
    Bevel6: TTntBevel;
    TopControlBar: TTntControlBar;
    TopSettingsPanel: TTntPanel;
    HeightLabel: TTntLabel;
    HeightSpin: TSpinEdit;
    WidthLabel: TTntLabel;
    WidthSpin: TSpinEdit;
    Bevel13: TBevel;
    FilledDotColorLabel: TTntLabel;
    ClearedDotColorLabel: TTntLabel;
    GridColorLabel: TTntLabel;
    FilledColorBox: TD7ColorBox;
    ClearedColorBox: TD7ColorBox;
    GridColorBox: TD7ColorBox;
    ZoomPanel: TTntPanel;
    ZoomTrackBar: TTntTrackBar;
    ZoomLabel: TTntLabel;
    EditAndDesignToolBar: TTntToolBar;
    CutToolBtn: TTntToolButton;
    CopyToolBtn: TTntToolButton;
    PasteToolBtn: TTntToolButton;
    ClearLCDToolBtn: TTntToolButton;
    TntToolButton5: TTntToolButton;
    ShiftLeftToolBtn: TTntToolButton;
    ShiftRightToolBtn: TTntToolButton;
    TntToolButton8: TTntToolButton;
    RotateLToolBtn: TTntToolButton;
    RotateRToolBtn: TTntToolButton;
    RotateUToolBtn: TTntToolButton;
    RotateDToolBtn: TTntToolButton;
    TntToolButton13: TTntToolButton;
    FlipHorizontalToolBtn: TTntToolButton;
    FlipVerticalToolBtn: TTntToolButton;
    RotatePage90CWToolBtn: TTntToolButton;
    RotatePage90CCWToolBtn: TTntToolButton;
    ToolBarImages: TImageList;
    ApplicationEvents1: TApplicationEvents;
    CustomizeToolBarPopupMenu: TTntPopupMenu;
    ToggleEditAndDesignToolBarMenuItem: TTntMenuItem;
    TntXPMenu1: TTntXPMenu;
    RightControlBar: TTntControlBar;
    LeftControlBar: TTntControlBar;
    RedoToolBtn: TTntToolButton;
    UndoToolBtn: TTntToolButton;
    TntToolButton3: TTntToolButton;
    StandardSystemMenu1: TStandardSystemMenu;
    ApplyAfterShowConfigTimer: TTimer;
    GeneralEditPopupMenu: TTntPopupMenu;
    GECutPopupMenuItem: TTntMenuItem;
    GECopyPopupMenuItem: TTntMenuItem;
    GEPastePopupMenuItem: TTntMenuItem;
    LicenseTimer: TTimer;
    LCDGrid: TMMAdvancedGrid;
    OldLCDGrid: TMMAdvancedGrid;
    procedure WidthSpinChange(Sender: TObject);
    procedure LCDGridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure LCDGridClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure LCDGridKeyPress(Sender: TObject; var Key: Char);
    procedure LCDGridSelectionChanged(Sender: TObject; ALeft, ATop, ARight,
      ABottom: Integer);
    procedure ClearLCDBtnClick(Sender: TObject);
    procedure FilledColorBoxChange(Sender: TObject);
    procedure ClearedColorBoxChange(Sender: TObject);
    procedure SaveCharBtnClick(Sender: TObject);
    procedure LoadCharBtnClick(Sender: TObject);
    procedure LCDGridLinesCheckClick(Sender: TObject);
    procedure ShowCursorRectangleCheckClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CutToolBtnClick(Sender: TObject);
    procedure CopyToolBtnClick(Sender: TObject);
    procedure PasteToolBtnClick(Sender: TObject);
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
    procedure ZoomTrackBarChange(Sender: TObject);
    procedure LCDGridMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ClearLCDToolBtnClick(Sender: TObject);
    procedure CellSpaceBtnChange(Sender: TObject);
    procedure GridColorBoxChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EditAndDesignToolBarEndDock(Sender, Target: TObject; X,
      Y: Integer);
    procedure ApplicationEvents1ShortCut(var Msg: TWMKey;
      var Handled: Boolean);
    procedure CustomizeToolBarPopupMenuPopup(Sender: TObject);
    procedure ToggleEditAndDesignToolBarMenuItemClick(Sender: TObject);
    procedure UndoToolBtnClick(Sender: TObject);
    procedure RedoToolBtnClick(Sender: TObject);
    procedure LCDGridMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ApplyAfterShowConfigTimerTimer(Sender: TObject);
    procedure LCDGridMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure WidthSpinKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LCDGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GeneralEditPopupMenuPopup(Sender: TObject);
    procedure GECutPopupMenuItemClick(Sender: TObject);
    procedure GECopyPopupMenuItemClick(Sender: TObject);
    procedure GEPastePopupMenuItemClick(Sender: TObject);
    procedure LicenseTimerTimer(Sender: TObject);
  private
    { Private declarations }
    SpaceFill: Boolean;
    OldFilledColor, OldClearedColor: TColor;
    SaveCategoryDialog: TSaveCategoryDialog;
    AdjustingLCDCellSpace: Boolean;
    MaxSetLCDWidth, MaxSetLCDHeight: Integer;

    OpenCharacterDialog: TOpenCharacterDialog;
    WorkingDesignFileName: String;

    //Design history
    LCDHistory: TLCDHistory;

    IgnoreThisClick: Boolean;

    //Multilanguage
    ToolBarCaptions: array[1..1] of WideString;  //1: EditAndDesignToolBar

    Dyn_Texts: array[1..DYNAMIC_TEXTS_COUNT] of WideString;
    ControlsFlipped: Boolean;
    procedure SetDynamicTexts(LangInstance: THandle);
    procedure SetToolbarCaptions;
    ///////////////

    procedure UpdateLCDColors(ALCDGrid: TAdvStringGrid; OldFilledColor,
      NewFilledColor, OldClearedColor, NewClearedColor: TColor);
    procedure ToggleCellColor(ALCDGrid: TAdvStringGrid; ACol, ARow: Integer);
    procedure SetCellColor(ALCDGrid: TAdvStringGrid; ACol, ARow: Integer;
      Filled: Boolean; UseGlobalColors: Boolean = True;
      ALCDFilledColor: TColor = clBlue; ALCDClearedColor: TColor = clWhite);
    function SaveLCDCharToFile(ALCDGrid: TAdvStringGrid; FileName: String): Boolean;
    procedure LoadLCDCharFromFile(ALCDGrid: TAdvStringGrid;
      FilledColor, ClearColor: TColor; FileName: String);

    procedure ColorizeLCDGrid(ALCDGrid: TAdvStringGrid; FilledColor, ClearedColor: TColor;
      ClearText: Boolean = True);
    procedure InsertCharAtCursor(ACharGrid, ALCDGrid: TAdvStringGrid;
      InsertionRow, InsertionCol: Integer);
    procedure EditCopy;
    procedure EditDelete;
    procedure EditCut;
    procedure EditPaste;

    procedure ShiftLeftAtCursor;
    procedure ShiftRightAtCursor;

    procedure FlipHorizontal;
    procedure FlipVertical;

    procedure EnableSizeSpins(AEnabled: Boolean);
    procedure SetupApplicationCursors;

    procedure OnLCDOptionsChanged;

    procedure UpdateHistoryMadeChanges;
  public
    { Public declarations }
    GlobalOptions: TGlobalOptions;

    procedure ReadProgramSettings;
    procedure LoadDefaultConfig(var AGlobalOptions: TGlobalOptions);
    procedure ApplyStartupConfig;
    procedure ApplyStartupOnShowConfig;
    procedure ApplyStartupAfterShowConfig;
    procedure WriteProgramSettings;

    procedure InitiateNewCharacter;
    function WorkingCharacterChanged:Boolean;
    procedure UpdateGlobalOptions;
    function GetLibraryPath: String;
    procedure ProcessCommandLine;
    procedure UpdateMainFormCaption(const FName: String);

    procedure ClearLCDUndefinedColors(ALCDGrid: TAdvStringGrid;
      ClearedColor: TColor; const DefinedColors: array of TColor);

    procedure ApplyLanguageOptions(Form: TTntForm; LanguageInfo: TLanguageInfo;
      LanguageOptions: TLanguageOptions);
    procedure ShowForm(Form: TTntForm; Visible: Boolean);
    function ReplaceInvalidUnicodeChars(const Str: WideString): WideString;
    procedure SetLanguage(LanguageInfo: TLanguageInfo;
      LanguageOptions: TLanguageOptions; LangInstance: THandle);

    procedure ReadAndApplyLanguageSettings;

    procedure ClipboardChanged;
    procedure AddNewHistoryState;

    procedure OnLCDChanged;

    function InformForReadOnlySelectedFile(const FName: String): Boolean;

    function OpenCharacterFile(const CharFileName: String;
      PurgeHistory: Boolean): Boolean;
  end;

var
  MainForm: TMainForm;
  ApplicationPath: String;
  ApplicationState: set of TApplicationState;

  //*******************************************
  //These variables are used as temporary variables in the CheckLicenseStatus
  // function in the License.pas.
  CUID: String = '';
  ActivationCode: String = '';
  SecurityCode: String = '';
  //*******************************************

implementation

uses StrUtils, SpecialProcsUnit, LCDProcsUnit, License2, License3,
  License4, License5, License6, AboutFormUnit;

{$R *.dfm}

procedure TMainForm.WidthSpinChange(Sender: TObject);
begin
  //************* LICENSE *************
  if not License.CheckLicenseStatus then
    Application.Terminate;
  //***********************************

  LCDGrid.DefaultRowHeight := LCDGrid.DefaultRowHeight;
  LCDGrid.ColCount := WidthSpin.Value;
  LCDGrid.RowCount := HeightSpin.Value + 1;
  LCDGrid.RowHeights[LCDGrid.RowCount - 1] := 0;
  ClearLCDUndefinedColors(LCDGrid, ClearedColorBox.Selected, [ClearedColorBox.Selected, FilledColorBox.Selected]);
  OnLCDOptionsChanged;
  OnLCDChanged;

  if WidthSpin.Value > MaxSetLCDWidth then
    MaxSetLCDWidth := WidthSpin.Value;
  if HeightSpin.Value > MaxSetLCDHeight then
    MaxSetLCDHeight := HeightSpin.Value;
end;

procedure TMainForm.LCDGridSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  IgnoreThisClick := True;
  CanSelect := not(ARow = (LCDGrid.RowCount - 1));
end;

procedure TMainForm.FormCreate(Sender: TObject);

  function GetEncryptesExeName: String;
  var
    i: Integer;
    S: String;
  begin
    Result := 'fr';
    for i:=1 to Length(Result) do
      Result[i] := Result[i];
    Result := 'character      ';
    S := 'design';
    for i := 1 to Length(S) do
      Result[i + 9] := S[i];
    Result := Result + 'er.exe';
  end;

begin
  if (Win32Platform = VER_PLATFORM_WIN32s) or
     (Win32Platform = VER_PLATFORM_WIN32_WINDOWS) then
  begin
    //This windows version is a windows older than NT (and maybe not unicode)
  end;

  //Toolbars
  EditAndDesignToolBar.FloatingDockSiteClass := TTntToolDockForm;

  //Set all message dialog captions to application name
  { Standard Dialogs }
  Dialogs.MessageCaptions[mtWarning] := DIALOGS_TITLE;  //SMsgDlgWarning;
  Dialogs.MessageCaptions[mtError] := DIALOGS_TITLE;  //SMsgDlgError;
  Dialogs.MessageCaptions[mtInformation] := DIALOGS_TITLE;  //SMsgDlgInformation;
  Dialogs.MessageCaptions[mtConfirmation] := DIALOGS_TITLE;  //SMsgDlgConfirm;
  Dialogs.MessageCaptions[mtCustom] := DIALOGS_TITLE;  //Application.Title;

  { TntDialogs }
  TntDialogs.MessageCaptions[mtWarning] := DIALOGS_TITLE;  //SMsgDlgWarning;
  TntDialogs.MessageCaptions[mtError] := DIALOGS_TITLE;  //SMsgDlgError;
  TntDialogs.MessageCaptions[mtInformation] := DIALOGS_TITLE;  //SMsgDlgInformation;
  TntDialogs.MessageCaptions[mtConfirmation] := DIALOGS_TITLE;  //SMsgDlgConfirm;
  TntDialogs.MessageCaptions[mtCustom] := DIALOGS_TITLE;  //Application.Title;

  { BiDiDialogs }
  BiDiDialogs.BiDiMessageCaptions[mtWarning] := DIALOGS_TITLE;  //SMsgDlgWarning;
  BiDiDialogs.BiDiMessageCaptions[mtError] := DIALOGS_TITLE;  //SMsgDlgError;
  BiDiDialogs.BiDiMessageCaptions[mtInformation] := DIALOGS_TITLE;  //SMsgDlgInformation;
  BiDiDialogs.BiDiMessageCaptions[mtConfirmation] := DIALOGS_TITLE;  //SMsgDlgConfirm;
  BiDiDialogs.BiDiMessageCaptions[mtCustom] := DIALOGS_TITLE;  //Application.Title;

  {All captions of the message dialogs are in English, so always display the
   caption in a Left-to-Right alignment even if the active language is a
   Right-to-Left aligned language.}
  Dialogs.ForceDlgCaptionLeftToRight := True;
  TntDialogs.ForceDlgCaptionLeftToRight := True;
  /////////////////////////////////////////////////////

  ApplicationPath := ExtractFilePath(Application.ExeName);

  if not License2.CheckLicenseStatus then
  begin
    Application.ShowMainForm := False;
    Application.Terminate;
    Exit;
  end;

  if LowerCase(ExtractFileName(Application.ExeName)) <> GetEncryptesExeName then
  begin
    //Silent
    Halt;
    Exit;
  end;

  //OpenCharacterDialog
  OpenCharacterDialog := TOpenCharacterDialog.Create(Self);
  with OpenCharacterDialog do
  begin
    DefaultOtherPath := GetLibraryPath;
    DefaultIsCharacterLibrary := True;
    AllowCharacterLibrary := True;
    CharacterFileExtension := '.chr';
    RegSettingsPath := REG_OPENCHAR_SETTINGS_PATH;
    if Procs.RegKeyExists(REG_USER_SETTINGS_PATH + REG_CHARACTER_DESIGNER_PATH) then
      SaveSettings;
  end;

  //SaveCategoryDialog
  SaveCategoryDialog := TSaveCategoryDialog.Create(Self);
  with SaveCategoryDialog do
  begin
    DefaultIsCharacterLibrary := True;
    AllowCharacterLibrary := True;
    OverwritePrompt := True;
    CharacterFileExtension := '.chr';
  end;

  //LCD history
  LCDHistory := TLCDHistory.Create(0);
  LCDHistory.Grid := LCDGrid;

  MaxSetLCDWidth := WidthSpin.Value;
  MaxSetLCDHeight := HeightSpin.Value;

  SetupApplicationCursors;

  try
    ReadProgramSettings;
  except
    WideMessageDlgSound(Dyn_Texts[1], mtError, [mbOK], 0);
    LoadDefaultConfig(GlobalOptions);
    ApplyStartupConfig;
  end;

  WidthSpin.OnChange(WidthSpin);
  OldFilledColor := FilledColorBox.Selected;
  OldClearedColor := ClearedColorBox.Selected;
  WorkingDesignFileName := '';
  InitiateNewCharacter;
  ClearLCDBtn.Click;
  IgnoreThisClick := False;

  //License
  LicenseTimer.Enabled := True;

  ProcessCommandLine;
end;

procedure TMainForm.SetCellColor(ALCDGrid: TAdvStringGrid; ACol, ARow: Integer;
  Filled: Boolean; UseGlobalColors: Boolean = True;
  ALCDFilledColor: TColor = clBlue; ALCDClearedColor: TColor = clWhite);
var
  FilledColor, ClearedColor: TColor;
  FilledCTValue: TColor;
begin
  if FilledColorBox.Selected = ClearedColorBox.Selected then
  begin
    //-- Always show in English --
    Windows.MessageBox(Handle, 'Application memory is corrupted. Application halted.', 'Critical Error', MB_ICONERROR or MB_SYSTEMMODAL or MB_OK);
    //----------------------------
    Application.Terminate;
  end;

  if UseGlobalColors then
  begin
    FilledColor := FilledColorBox.Selected;
    ClearedColor := ClearedColorBox.Selected;
  end
  else
  begin
    FilledColor := ALCDFilledColor;
    ClearedColor := ALCDClearedColor;
  end;
  if GlobalOptions.LCDUseSolidColors then
    FilledCTValue := FilledColor
  else
    FilledCTValue := LCDProcs.CalculateLCDGradientColor(FilledColor, ClearedColor);

  if ( Filled and (ALCDGrid.Colors[ACol, ARow] = FilledColor) and
       (ALCDGrid.ColorsTo[ACol, ARow] = FilledCTValue) ) or
     ( not Filled and (ALCDGrid.Colors[ACol, ARow] = ClearedColor) and
       (ALCDGrid.ColorsTo[ACol, ARow] = ClearedColor) ) then
     //***It is not necessary to compare ColorsTo values
    Exit;  //No change will occur, so exit without settings the cell color to prevent repainting the cell

  if Filled then
  begin
    ALCDGrid.Colors[ACol, ARow] := FilledColor;
    ALCDGrid.ColorsTo[ACol, ARow] := FilledCTValue;
  end
  else
  begin
    ALCDGrid.Colors[ACol, ARow] := ClearedColor;
    ALCDGrid.ColorsTo[ACol, ARow] := ClearedColor;
  end;
end;

procedure TMainForm.ToggleCellColor(ALCDGrid: TAdvStringGrid; ACol,
  ARow: Integer);
begin
  if ALCDGrid.Colors[ACol, ARow] = FilledColorBox.Selected then
    SetCellColor(ALCDGrid, ACol, ARow, False)
  else
    SetCellColor(ALCDGrid, ACol, ARow, True);
end;

procedure TMainForm.LCDGridClickCell(Sender: TObject; ARow, ACol: Integer);
begin
  IgnoreThisClick := True;
  if Procs.KeyDown(VK_SHIFT) then
    Exit
  else if GlobalOptions.CTRLClickToggle then
  begin
    if Procs.KeyDown(VK_CONTROL) then
      ToggleCellColor(LCDGrid, ACol, ARow);
  end
  else if not Procs.KeyDown(VK_CONTROL) then
    ToggleCellColor(LCDGrid, ACol, ARow);

  //************* LICENSE *************
  if not License3.CheckLicenseStatus then
    Application.Terminate;
  //***********************************
end;

procedure TMainForm.LCDGridKeyPress(Sender: TObject; var Key: Char);
var
  Row, Col: Integer;
  CTRLDown: Boolean;
  FilledCount, UnFilledCount: Integer;
begin
  CTRLDown := Procs.KeyDown(VK_CONTROL);
  if not CTRLDown then
  begin
    FilledCount := 0;
    UnFilledCount := 0;
    for Row := LCDGrid.Selection.Top to LCDGrid.Selection.Bottom do
      for Col := LCDGrid.Selection.Left to LCDGrid.Selection.Right do
        if LCDGrid.Colors[Col, Row] = FilledColorBox.Selected then
          Inc(FilledCount)
        else
          Inc(UnFilledCount);
    if FilledCount <> UnFilledCount then
      SpaceFill := UnFilledCount > FilledCount;
  end;
  if Key = ' ' then
  begin
    try
      LCDGrid.BeginUpdate;
      for Row := LCDGrid.Selection.Top to LCDGrid.Selection.Bottom do
        for Col := LCDGrid.Selection.Left to LCDGrid.Selection.Right do
          if CTRLDown then
            ToggleCellColor(LCDGrid, Col, Row)
          else
            SetCellColor(LCDGrid, Col, Row, SpaceFill);
    finally
      LCDGrid.EndUpdate;
    end;
    SpaceFill := not SpaceFill;
    OnLCDChanged;
  end;
end;

procedure TMainForm.LCDGridSelectionChanged(Sender: TObject; ALeft, ATop,
  ARight, ABottom: Integer);
begin
  SpaceFill := True;
end;

procedure TMainForm.ClearLCDBtnClick(Sender: TObject);
var
  NewCharacter: Boolean;
begin
(*  if WorkingCharacterChanged then
  begin
    //--> Don't display this message anymore, because we have implemented the History feature
    //if WideMessageDlgSound(Dyn_Texts[2] {'Are you sure you want to clear the current character?'}, mtCustom, [mbYes, mbNo], 0) = mrNo then
    //  Exit;
    //Do any other things necessary here
  end;  *)

  NewCharacter := LCDProcs.IsLCDCompletelyCleared(LCDGrid, ClearedColorBox.Selected);

  LCDGrid.BeginUpdate;
  try
    LCDGrid.ColCount := MaxSetLCDWidth;
    LCDGrid.RowCount := MaxSetLCDHeight + 1;
    //LCDGrid.DefaultRowHeight := LCDGrid.DefaultRowHeight;  --> It is not needed here, DefaultRowHeight will be set some lines later
    LCDGrid.RowHeights[LCDGrid.RowCount - 1] := 0;

    LCDProcs.ClearLCD(LCDGrid, ClearedColorBox.Selected);

    LCDGrid.Row := 0;
    LCDGrid.Col := 0;
  finally
    LCDGrid.ColCount := WidthSpin.Value;
    LCDGrid.RowCount := HeightSpin.Value + 1;
    LCDGrid.DefaultRowHeight := LCDGrid.DefaultRowHeight;
    LCDGrid.RowHeights[LCDGrid.RowCount - 1] := 0;

    LCDGrid.EndUpdate;
  end;

  //************* LICENSE *************
  if not License4.CheckLicenseStatus then
    Application.Terminate;
  //***********************************

  InitiateNewCharacter;
  //Pressing the Clear Design button on a cleared design, changes the name of the current design to Untitled.chr
  if NewCharacter then
  begin
    UpdateMainFormCaption(UNTITLED_DOCUMENT_NAME + '.chr');
    WorkingDesignFileName := '';
  end;
end;

procedure TMainForm.UpdateLCDColors(ALCDGrid: TAdvStringGrid; OldFilledColor,
  NewFilledColor, OldClearedColor, NewClearedColor: TColor);
var
  Row, Col: Integer;
begin
  for Row := 0 to ALCDGrid.RowCount-1 do
    for Col := 0 to ALCDGrid.ColCount-1 do
      if ALCDGrid.Colors[Col, Row] = OldFilledColor then
        SetCellColor(ALCDGrid, Col, Row, True)
      else  // if ALCDGrid.Colors[Col, Row] = OldClearedColor then  --> Prevent potential software bugs by removing this condition
        SetCellColor(ALCDGrid, Col, Row, False);
end;

procedure TMainForm.FilledColorBoxChange(Sender: TObject);
begin
  if ClearedColorBox.Selected = FilledColorBox.Selected then
  begin
    WideShowMessageSound(Dyn_Texts[3] {'Filled cell color cannot be same as the cleared cell color.'});
    FilledColorBox.Selected := OldFilledColor;
    Exit;
  end;
  GlobalOptions.LCDFilledColor := FilledColorBox.Selected;
  UpdateLCDColors(LCDGrid, OldFilledColor, FilledColorBox.Selected,
                  OldClearedColor, ClearedColorBox.Selected);
  UpdateLCDColors(OldLCDGrid, OldFilledColor, FilledColorBox.Selected,
                  OldClearedColor, ClearedColorBox.Selected);
  OldFilledColor := FilledColorBox.Selected;
  ClearLCDUndefinedColors(LCDGrid,ClearedColorBox.Selected,[ClearedColorBox.Selected, FilledColorBox.Selected]);
  OnLCDOptionsChanged;
end;

procedure TMainForm.ClearedColorBoxChange(Sender: TObject);
begin
  if ClearedColorBox.Selected = FilledColorBox.Selected then
  begin
    WideShowMessageSound(Dyn_Texts[3] {'Filled cell color cannot be same as the cleared cell color.'});
    ClearedColorBox.Selected := OldClearedColor;
    Exit;
  end;
  GlobalOptions.LCDClearedColor := ClearedColorBox.Selected;
  UpdateLCDColors(LCDGrid, OldFilledColor, FilledColorBox.Selected,
                  OldClearedColor, ClearedColorBox.Selected);
  UpdateLCDColors(OldLCDGrid, OldFilledColor, FilledColorBox.Selected,
                  OldClearedColor, ClearedColorBox.Selected);
  OldClearedColor := ClearedColorBox.Selected;
  ClearLCDUndefinedColors(LCDGrid, ClearedColorBox.Selected, [ClearedColorBox.Selected, FilledColorBox.Selected]);
  OnLCDOptionsChanged;
end;

function TMainForm.SaveLCDCharToFile(ALCDGrid: TAdvStringGrid; FileName: String): Boolean;

  procedure ResetLCDCells;
  var
    Row, Col: Integer;
  begin
    for Row := 0 to ALCDGrid.RowCount - 1 do
    for Col := 0 to ALCDGrid.ColCount - 1 do
      ALCDGrid.Cells[Col, Row] := '';
  end;

var
  Row, Col: Integer;
begin
  Result := True;

  for Row := 0 to ALCDGrid.RowCount - 2 do
    for Col := 0 to ALCDGrid.ColCount - 1 do
      if ALCDGrid.Colors[Col, Row] = FilledColorBox.Selected then
        ALCDGrid.Cells[Col, Row] := '1'
      else
        ALCDGrid.Cells[Col, Row] := '0';
  for Col := 0 to ALCDGrid.ColCount - 1 do
    ALCDGrid.Cells[Col, ALCDGrid.RowCount - 1] := CHAR_FILE_END_ROW_SPECIFIER;

  try
    ALCDGrid.SaveToCSV(FileName);
  except
    Result := False;
    ResetLCDCells;
    WideMessageDlgSound(Dyn_Texts[4] {'Unable to save the character.'}, mtError, [mbOK], 0);
  end;
  ResetLCDCells;
end;

procedure TMainForm.LoadLCDCharFromFile(ALCDGrid: TAdvStringGrid; FilledColor,
  ClearColor: TColor; FileName: String);
var
  Row, Col: Integer;
begin
  ALCDGrid.ColCount := 1;
  ALCDGrid.RowCount := 1;
  ALCDGrid.RowHeights[ALCDGrid.RowCount - 1] := 0;
  try
    ALCDGrid.LoadFromCSV(FileName);
  finally
    //Don't allow zero-lengthed LCD
    if (ALCDGrid.ColCount = 0) or
       ( (ALCDGrid.ColCount = 1) and (Procs.FileSize(FileName) = 0) ) then
      ALCDGrid.ColCount := WidthSpin.Value;
    if ALCDGrid.RowCount <= 1 then
      ALCDGrid.RowCount := HeightSpin.Value + 1;

    ALCDGrid.DefaultRowHeight := ALCDGrid.DefaultRowHeight;
    ALCDGrid.RowHeights[ALCDGrid.RowCount - 1] := 0;
    for Row := 0 to ALCDGrid.RowCount - 2 do
      for Col := 0 to ALCDGrid.ColCount - 1 do
      begin
        if ALCDGrid.Cells[Col, Row] = '1' then
          SetCellColor(ALCDGrid, Col, Row, True, False, FilledColor, ClearColor)
        else
          SetCellColor(ALCDGrid, Col, Row, False, False, FilledColor, ClearColor);
        ALCDGrid.Cells[Col, Row] := '';
      end;
    EnableSizeSpins(False);
    WidthSpin.Value := ALCDGrid.ColCount;
    HeightSpin.Value := ALCDGrid.RowCount - 1;
    EnableSizeSpins(True);
  end;
end;

procedure TMainForm.SaveCharBtnClick(Sender: TObject);
var
  FName: String;
  RetrySave: Boolean;
begin
  //************* LICENSE *************
  if not License5.CheckLicenseStatus then
    Application.Terminate;
  //***********************************

  try
    with SaveCategoryDialog do
    begin
      Title := Dyn_Texts[20];
      SaveBtnCaption := Dyn_Texts[11];  //'&Save';
      CancelBtnCaption := Dyn_Texts[12];  //'Cancel';

      SpecialNamesBtnCaption := Dyn_Texts[14];  //'Special &Names...';
      OKBtnCaption := Dyn_Texts[15]; {'OK';}
      CharacterGroupsWord := Dyn_Texts[16];  {'Character Groups';}
      CharactersInTheGroupWord := Dyn_Texts[17];  {'Characters In the Group';}
      UserMappedCharsBtnCaption := Dyn_Texts[19];  {'&User-Mapped Chars...'}
      SpecialCharNamesDialogCaption := Dyn_Texts[22];  //'Select Character';
      UserMappedCharsFormCaption := Dyn_Texts[23];  //'User-Mapped Character Names';
      MessageStrings[1] := Dyn_Texts[37];  {'%s already exists.%s Do you want to replace it?'}
      MessageStrings[2] := Dyn_Texts[38];  {'Please enter a character name.'}
      MessageStrings[3] := Dyn_Texts[39];  {'Please specify a location.'}

      LibraryPath := GetLibraryPath;
    end;

    RetrySave := True;
    while RetrySave do
    begin
      if SaveCategoryDialog.Execute(IfThen(WorkingDesignFileName = '', 'CharacterName', WorkingDesignFileName)) then
      begin
        FName := SaveCategoryDialog.FileName;
        if LowerCase(ExtractFileExt(FName)) <> '.chr' then
          FName := FName + '.chr';
        if InformForReadOnlySelectedFile(FName) then
          Continue;
        if SaveLCDCharToFile(LCDGrid, FName) then
        begin
          InitiateNewCharacter;
          UpdateMainFormCaption(FName);
          WorkingDesignFileName := LeftStr(ExtractFileName(FName),
            Length(ExtractFileName(FName)) - Length(ExtractFileExt(FName)));
          RetrySave := False;
        end;
      end
      else
        RetrySave := False;
    end;
  except
    WideMessageDlgSound(Dyn_Texts[13]  {'Occured an error while saving the character. Please try again.'}, mtError, [mbOK], 0);
  end;
end;

procedure TMainForm.LoadCharBtnClick(Sender: TObject);
begin
  //************* LICENSE *************
  if not License6.CheckLicenseStatus then
    Application.Terminate;
  //***********************************

  try
    with OpenCharacterDialog do
    begin
      Title := Dyn_Texts[21];
      OpenBtnCaption := Dyn_Texts[9];  //'&Open Character';
      CancelBtnCaption := Dyn_Texts[10];  //'Cancel';
      MessageStrings[1] := Dyn_Texts[40];  {'Error in reading the character file ''%s''.'}

      LCDFilledColor := FilledColorBox.Selected;
      LCDClearedColor := ClearedColorBox.Selected;
      LCDUseSolidColors := GlobalOptions.LCDUseSolidColors;
      LibraryPath := GetLibraryPath;

      ReadSettings;
    end;

    if OpenCharacterDialog.Execute then
    begin
      OpenCharacterFile(OpenCharacterDialog.FileName, True);  //Don't check the function result
      OpenCharacterDialog.SaveSettings;
    end;
  finally
  end;
end;

procedure TMainForm.LCDGridLinesCheckClick(Sender: TObject);
begin
  if (Sender as TTntCheckBox).Checked then
    LCDGrid.GridLineColor := GlobalOptions.LCDGridColor
  else
    LCDGrid.GridLineColor := LCDGrid.Color;
  OnLCDOptionsChanged;
end;

procedure TMainForm.ApplyStartupConfig;
begin
  with GlobalOptions do
  begin
    LCDGridLinesCheck.Checked := ShowSeparatorLines;
    LCDGridLinesCheckClick(LCDGridLinesCheck);
    LCDGrid.SelectionRectangleColor := LCDCursorColor;
    ShowCursorRectangleCheck.Checked := ShowCursorRectangle;
    ShowCursorRectangleCheckClick(ShowCursorRectangleCheck);
    FilledColorBox.Selected := LCDFilledColor;
    ClearedColorBox.Selected := LCDClearedColor;
    GridColorBox.Selected := LCDGridColor;
    WidthSpin.Value := CharacterWidth;
    HeightSpin.Value := CharacterHeight;
    ZoomTrackBar.Position := LCDZoomValue;
    ZoomTrackBar.OnChange(ZoomTrackBar);
    LCDGrid.GridLineWidth := LCDCellSpace;
    //LCD history
    LCDHistory.Size := UndoLevels;
    if LCDUseSolidColors then
      LCDHistory.LCDGradientColor := LCDFilledColor
    else
      LCDHistory.LCDGradientColor := LCDProcs.CalculateLCDGradientColor(LCDFilledColor, LCDClearedColor);
  end;

  //Language
  ReadAndApplyLanguageSettings;
end;

procedure TMainForm.ReadProgramSettings;
var
  SomeValuesExist: Boolean;

  function ReadRegistrySettings: Boolean;
  var
    Reg: TRegistry;
  begin
    Result := False;

    Reg := TRegistry.Create(KEY_READ);
    Reg.RootKey := HKEY_CURRENT_USER;

    with GlobalOptions do
    begin
      if Reg.OpenKeyReadOnly(REG_USER_SETTINGS_PATH + '\Character Designer') then
      begin
        SomeValuesExist := True;

        CharacterWidth := Reg.ReadInteger('Character Width');
        CharacterHeight := Reg.ReadInteger('Character Height');

        if Reg.ValueExists('Undo Levels') then
          UndoLevels := Reg.ReadInteger('Undo Levels')
        else
          UndoLevels := DEFAULT_UNDO_LEVELS;

        Reg.CloseKey;
      end
      else Exit;

      if Reg.OpenKeyReadOnly(REG_USER_SETTINGS_PATH + '\Character Designer\Design') then
      begin
        LCDFilledColor := Reg.ReadInteger('Filled Cell Color');
        LCDClearedColor := Reg.ReadInteger('Cleared Cell Color');
        LCDGridColor := Reg.ReadInteger('Grid Color');
        ShowSeparatorLines := Reg.ReadBool('Gridlines');
        LCDZoomValue := Reg.ReadInteger('Zoom');
        LCDCellSpace := Reg.ReadInteger('Cell Space');
        ShowCursorRectangle := Reg.ReadBool('Cursor Rectangle');
        Reg.CloseKey;
        if Reg.OpenKey(REG_USER_SETTINGS_PATH + '\Design', False) then
        begin
          LCDUseSolidColors := Reg.ReadBool('Use Solid Colors');
          Reg.CloseKey;
        end
        else
          LCDUseSolidColors := False;
      end
      else Exit;

      if Reg.OpenKeyReadOnly(REG_USER_SETTINGS_PATH + '\Design') then
      begin
        LCDCursorColor := Reg.ReadInteger('Cursor Color');
        Reg.CloseKey;
      end
      else Exit;

      if Reg.OpenKeyReadOnly(REG_USER_SETTINGS_PATH + '\Globals') then
      begin
        CTRLClickToggle := Reg.ReadBool('CTRLClickToggle');
        Reg.CloseKey;
      end
      else Exit;
    end;

    Result := True;
  end;

var
  RegRead: Boolean;
  ApplyError: Boolean;
//  F:File of TGlobalOptions;
begin
  SomeValuesExist := False;
  try
    RegRead := ReadRegistrySettings;
  except
    //-- Show always in English --
    if not SomeValuesExist then
      WideMessageDlgSound('Unable to read the program registry settings. Default settings loaded.', mtError, [mbOK], 0);
    RegRead := False;
  end;

  if not RegRead then
  begin
    if SomeValuesExist then
      //-- Show always in English --
      MessageDlgSound('Program registry settings are corrupted. Default settings loaded.', mtError, [mbOK], 0);
    LoadDefaultConfig(GlobalOptions);
    ApplyStartupConfig;
    Exit;
  end;

  ApplyError := True;
  try
    ApplyStartupConfig;
    ApplyError := False;
  except
  end;

  if ApplyError then
  begin
    //-- Show always in English --
    MessageDlgSound('Program registry settings are corrupted. Default settings loaded.', mtError, [mbOK], 0);
    LoadDefaultConfig(GlobalOptions);
    ApplyStartupConfig;
    Exit;
  end;

  //Language settings are applied in the ApplyStartupConfig procedure.



(*
  if not FileExists(ApplicationPath + LCD_CHARACTER_DESIGNER_CONFIG_FILE) then
  begin
    LoadDefaultConfig(GlobalOptions);
    ApplyStartupConfig;
    Exit;
  end;

  AssignFile(F, ApplicationPath+LCD_CHARACTER_DESIGNER_CONFIG_FILE);
  {$I-}
  Reset(F);
  {$I+}
  if IOResult <> 0 then
  begin
    WideShowMessageSound('Unable to read the configuration file ''' + LCD_CHARACTER_DESIGNER_CONFIG_FILE + '''. Default configuration loaded.');
    LoadDefaultConfig(GlobalOptions);
    ApplyStartupConfig;
    Exit;
  end;
  Read(F, GlobalOptions);
  CloseFile(F);
  ApplyStartupConfig;
*)
end;

procedure TMainForm.LoadDefaultConfig(var AGlobalOptions: TGlobalOptions);
begin
  with AGlobalOptions do
  begin
    LCDFilledColor := DEFAULT_LCD_FILLED_COLOR;
    LCDClearedColor := DEFAULT_LCD_CLEARED_COLOR;
    LCDUseSolidColors := False;
    LCDGridColor := DEFAULT_LCD_GRIDLINES_COLOR;
    LCDCellSpace := LCDGrid.GridLineWidth;
    CTRLClickToggle := False;
    ShowSeparatorLines := LCDGridLinesCheck.Checked;
    CharacterWidth := 8;
    CharacterHeight := 8;
    LCDZoomValue := ZoomTrackBar.Position;
    ShowCursorRectangle := ShowCursorRectangleCheck.Checked;
    UndoLevels := DEFAULT_UNDO_LEVELS;
  end;
end;

procedure TMainForm.WriteProgramSettings;
  function WriteRegistrySettings: Boolean;
    var
      Reg: TRegistry;
  begin
    Result := False;

    Reg := TRegistry.Create;
    try

    Reg.RootKey := HKEY_CURRENT_USER;

    with GlobalOptions do
    begin
      if Reg.OpenKey(REG_USER_SETTINGS_PATH + '\Character Designer', True) then
      begin
        Reg.WriteInteger('Character Width', CharacterWidth);
        Reg.WriteInteger('Character Height', CharacterHeight);
        //Don't write the Undo Levels value
        Reg.CloseKey;
      end
      else Exit;

      if Reg.OpenKey(REG_USER_SETTINGS_PATH + '\Character Designer\Design', True) then
      begin
        Reg.WriteInteger('Filled Cell Color', LCDFilledColor);
        Reg.WriteInteger('Cleared Cell Color', LCDClearedColor);
        Reg.WriteInteger('Grid Color', LCDGridColor);
        Reg.WriteBool('Gridlines', ShowSeparatorLines);
        Reg.WriteInteger('Zoom', LCDZoomValue);
        Reg.WriteInteger('Cell Space', LCDCellSpace);
        Reg.WriteBool('Cursor Rectangle', ShowCursorRectangle);
        Reg.CloseKey;
      end
      else Exit;
    end;  //with GlobalOptions do

    Result := True;

    finally
    Reg.Free;
    end;
  end;

  procedure WriteToolbarsPosition;
  var
    Reg: TRegistry;
    Parent: Integer;
  begin
    Reg := TRegistry.Create;
    try
      if Reg.OpenKey(REG_TOOLBAR_SETTINGS_PATH, True) then
      begin
        if EditAndDesignToolBar.Parent = TopControlBar then
          Parent := 0
        else if EditAndDesignToolBar.Parent = LeftControlBar then
          Parent := 1
        else if EditAndDesignToolBar.Parent = RightControlBar then
          Parent := 2
        else  //Unhandled place
          Parent := -1;
        Reg.WriteInteger(REG_TOOLBAR_VALUE_EDITANDDESIGN + REG_TOOLBAR_PLACE_VALUE_SUFFIX, Parent);
        Reg.CloseKey;
      end;
      Reg.Free;
    except
      Reg.Free;
    end;

    try
      SpecialProcs.WriteToolbarSettings(EditAndDesignToolBar, REG_TOOLBAR_SETTINGS_PATH, REG_TOOLBAR_VALUE_EDITANDDESIGN);
    except
    end;
  end;

var
  RegWritten: Boolean;
  RegWritingSuccessful: Boolean;
//  F:File of TGlobalOptions;
begin
  //If the registry settings path is not already created, down't write
  // anything and exit successfully, because this key must be created in the
  // main application program (if we create it here, this will cause to
  // registry settings error in the main application program).
  if not Procs.RegKeyExists(REG_USER_SETTINGS_PATH, HKEY_CURRENT_USER) then
    Exit;

  RegWritten := False;
  RegWritingSuccessful := False;
  repeat
    try
      WriteRegistrySettings;
      RegWritingSuccessful := True;
      RegWritten := True;
    except
    end;
    if not RegWritten then
      RegWritten := WideMessageDlgSound(Dyn_Texts[18] {'Unable to save the program settings to the registry.'}, mtError, [mbRetry, mbCancel], 0) = mrCancel;
  until RegWritten;

  if RegWritingSuccessful then
    WriteToolbarsPosition;


(*
  AssignFile(F,ApplicationPath + LCD_CHARACTER_DESIGNER_CONFIG_FILE);
  while True do
  begin
    {$I-}
    Rewrite(F);
    {$I+}
    if IOResult = 0 then
      Break;
    if WideMessageDlgSound('Unable to save the configuration.', mtError, [mbRetry, mbCancel], 0) = mrCancel then
      Exit;
  end;
  {$I-}
  Write(F, GlobalOptions);
  IOResult;
  CloseFile(F);
  {$I+}
  IOResult;
*)
end;

procedure TMainForm.ShowCursorRectangleCheckClick(Sender: TObject);
begin
  LCDGrid.SelectionRectangle := ShowCursorRectangleCheck.Checked;
  OnLCDOptionsChanged;
end;

procedure TMainForm.InitiateNewCharacter;
var
  Row, Col: Integer;
begin
  OldLCDGrid.RowCount := LCDGrid.RowCount;
  OldLCDGrid.ColCount := LCDGrid.ColCount;
  for Row := 0 to LCDGrid.RowCount - 1 do
    for Col := 0 to LCDGrid.ColCount - 1 do
      //***It is not necessary to store ColorsTo values
      OldLCDGrid.Colors[Col, Row] := LCDGrid.Colors[Col, Row];
  //LCD history
  //LCDHistory.ClearHistory;  --> Don't clear the history and allow the user to undo/redo, although the character has been completely cleared
  AddNewHistoryState;
end;

function TMainForm.WorkingCharacterChanged: Boolean;
var
  Row, Col: Integer;
begin
  Result := (OldLCDGrid.RowCount <> LCDGrid.RowCount) or
            (OldLCDGrid.ColCount <> LCDGrid.ColCount);

  if not Result then
    for Row := 0 to OldLCDGrid.RowCount - 2 do  //Minus 2 because of TAdvStringGrid
      for Col := 0 to OldLCDGrid.ColCount - 1 do
        //***It is not necessary to compare ColorsTo values
        if LCDGrid.Colors[Col, Row] <> OldLCDGrid.Colors[Col, Row] then
        begin
          Result := True;
          Exit;
        end;
end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  Response: Integer;
begin
  if WorkingCharacterChanged then
  begin
    Response := WideMessageDlgSound(Dyn_Texts[5] {'Do you want to save the current character?'}, mtWarning, mbYesNoCancel, 0);
    if Response = mrNo then
      CanClose := True
    else if Response = mrCancel then
      CanClose := False
    else
    begin
      SaveCharBtn.Click;
      CanClose := not WorkingCharacterChanged;
    end;
  end;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  UpdateGlobalOptions;
  WriteProgramSettings;
end;

procedure TMainForm.UpdateGlobalOptions;
begin
  with GlobalOptions do
  begin
    LCDFilledColor := FilledColorBox.Selected;
    LCDClearedColor := ClearedColorBox.Selected;
    LCDGridColor := GridColorBox.Selected;
    ShowSeparatorLines := LCDGridLinesCheck.Checked;
    CharacterWidth := WidthSpin.Value;
    CharacterHeight := HeightSpin.Value;
    LCDZoomValue := ZoomTrackBar.Position;
    ShowCursorRectangle := ShowCursorRectangleCheck.Checked;
  end;
end;

function TMainForm.GetLibraryPath: String;
var
  Reg: TRegistry;
//  F: File of TLCDDesignerGlobalOptions;
//  Temp: TLCDDesignerGlobalOptions;
begin
  Reg := TRegistry.Create(KEY_READ);
  try
    if not Reg.OpenKey(REG_USER_SETTINGS_PATH, False) then
    begin
      Result := ApplicationPath + 'Character Library';
      if not DirectoryExists(Result) then
        Result := '';
    end
    else if Reg.ValueExists('Library Path') then
      Result := Reg.ReadString('Library Path')
    else
      Result := '';
  finally
    Reg.Free;
  end;


(*
  if not FileExists(ApplicationPath + LCD_DESIGNER_CONFIG_FILE) then
  begin
    Result := ApplicationPath + 'Character Library';
    if not DirectoryExists(Result) then
      Result := '';
    Exit;
  end;

  AssignFile(F,ApplicationPath + LCD_DESIGNER_CONFIG_FILE);
  {$I-}
  Reset(F);
  {$I+}
  if IOResult <> 0 then
    Result := ''
  else
  begin
    {$I-}
    Read(F, Temp);
    IOResult;
    CloseFile(F);
    {$I+}
    IOResult;
    Result := Temp.LibraryPath;
    if not DirectoryExists(Result) then
      Result := '';
  end;
*)
end;

procedure TMainForm.ProcessCommandLine;
var
  FName: String;
begin
  if ParamCount = 1 then
  begin
    if FileExists(ParamStr(1)) then
    begin
      FName := ParamStr(1);
      OpenCharacterFile(FName, True);  //Don't check the function result
    end
    else
      WideMessageDlgSound(WideFormat(Dyn_Texts[42] {'The character file%sdoesn''t exist.'}, [ParamStr(1)]), mtError, [mbOK], 0);
  end;
end;

procedure TMainForm.UpdateMainFormCaption(const FName: String);
begin
  Caption := CD_APPLICATION_STATIC_CAPTION + ' - ' + ExtractFileName(FName);
end;

procedure TMainForm.ClearLCDUndefinedColors(ALCDGrid: TAdvStringGrid;
  ClearedColor: TColor; const DefinedColors: array of TColor);
var
  Row, Col,i: Integer;
begin
  for Row := 0 to ALCDGrid.RowCount - 1 do
    for Col := 0 to ALCDGrid.ColCount - 1 do
    begin
      for i := 0 to High(DefinedColors) do
        if ALCDGrid.Colors[Col, Row] = DefinedColors[i] then
          Break;
      if i > High(DefinedColors) then
        SetCellColor(ALCDGrid, Col, Row, False, False, clNone, ClearedColor);
    end;
end;

procedure TMainForm.EditCopy;
begin
  LCDProcs.CopyLCDToClipboard(LCDGrid, GlobalOptions.LCDFilledColor);
  PasteToolBtn.Enabled := True;
end;

procedure TMainForm.EditCut;
begin
  EditCopy;
  EditDelete;
end;

procedure TMainForm.EditDelete;
var
  Row, Col: Integer;
begin
  for Row := LCDGrid.Selection.Top to LCDGrid.Selection.Bottom do
    for Col := LCDGrid.Selection.Left to LCDGrid.Selection.Right do
      SetCellColor(LCDGrid, Col, Row, False);
end;

procedure TMainForm.EditPaste;
var
  CopyPasteGrid: TAdvStringGrid;
  TempParent: TForm;
begin
  TempParent := TForm.Create(nil);
  CopyPasteGrid := TAdvStringGrid.Create(nil);
  try
    CopyPasteGrid.Visible := False;
    CopyPasteGrid.Parent := TempParent;  //If set the parent to Self, the form becomes invisible!!??
    if LCDProcs.PasteLCDFromClipboard(CopyPasteGrid) then
    begin
      ColorizeLCDGrid(CopyPasteGrid, GlobalOptions.LCDFilledColor, GlobalOptions.LCDClearedColor, False);
      InsertCharAtCursor(CopyPasteGrid, LCDGrid, LCDGrid.Row, LCDGrid.Col);
    end;
  finally
    CopyPasteGrid.Free;
    TempParent.Free;
  end;
end;

procedure TMainForm.CutToolBtnClick(Sender: TObject);
begin
  EditCut;
  OnLCDChanged;
end;

procedure TMainForm.CopyToolBtnClick(Sender: TObject);
begin
  EditCopy;
end;

procedure TMainForm.PasteToolBtnClick(Sender: TObject);
begin
  if (Sender as TControl).Enabled then
  begin
    EditPaste;
    OnLCDChanged;
  end;
end;

procedure TMainForm.ColorizeLCDGrid(ALCDGrid: TAdvStringGrid; FilledColor,
  ClearedColor: TColor; ClearText: Boolean = True);
var
  Col, Row: Integer;
begin
  for Row := 0 to ALCDGrid.RowCount - 1 do
    for Col := 0 to ALCDGrid.ColCount - 1 do
    begin
      if ALCDGrid.Cells[Col, Row] = '1' then
        SetCellColor(ALCDGrid, Col, Row, True, False, FilledColor, ClearedColor)
      else
        SetCellColor(ALCDGrid, Col, Row, False, False, FilledColor, ClearedColor);
      if ClearText then
        ALCDGrid.Cells[Col, Row] := '';
    end;
end;

procedure TMainForm.InsertCharAtCursor(ACharGrid, ALCDGrid: TAdvStringGrid;
  InsertionRow, InsertionCol: Integer);
var
  Row, Col: Integer;
  RowLength, ColLength: Integer;
begin
  RowLength := ALCDGrid.ColCount - InsertionCol;
  if RowLength > ACharGrid.ColCount then
    RowLength := ACharGrid.ColCount;

  ColLength := ALCDGrid.RowCount - 1 - InsertionRow;
  if ColLength > (ACharGrid.RowCount - 1) then
    ColLength := ACharGrid.RowCount - 1;

  for Row := InsertionRow to InsertionRow + ColLength - 1 do
    for Col := InsertionCol to InsertionCol + RowLength - 1 do
    begin
      ALCDGrid.Colors[Col, Row] := ACharGrid.Colors[Col - InsertionCol, Row - InsertionRow];
      ALCDGrid.ColorsTo[Col, Row] := ACharGrid.ColorsTo[Col - InsertionCol, Row - InsertionRow];
    end;
end;

procedure TMainForm.ShiftLeftAtCursor;
var
  Row, Col: Integer;
  CursorCol: Integer;
begin
  CursorCol := LCDGrid.Selection.Left;
  if CursorCol = 0 then
  begin
    WideShowMessageSound(Dyn_Texts[7] {'Cannot shift left at the left side of the design.'});
    Exit;
  end;

  for Col := 0 to CursorCol - 1 do
    for Row := 0 to LCDGrid.RowCount - 1 do
    begin
      LCDGrid.Colors[Col, Row] := LCDGrid.Colors[Col + 1, Row];
      LCDGrid.ColorsTo[Col, Row] := LCDGrid.ColorsTo[Col + 1, Row];
    end;
  for Row := 0 to LCDGrid.RowCount - 1 do
    SetCellColor(LCDGrid, CursorCol, Row, False);
end;

procedure TMainForm.ShiftRightAtCursor;
var
  Row, Col: Integer;
  CursorCol: Integer;
begin
  CursorCol := LCDGrid.Selection.Left;
  if CursorCol = LCDGrid.ColCount - 1 then
  begin
    WideShowMessageSound(Dyn_Texts[8] {'Cannot shift right at the right side of the design.'});
    Exit;
  end;

  for Col := LCDGrid.ColCount - 1 downto CursorCol + 1 do
    for Row := 0 to LCDGrid.RowCount - 1 do
    begin
      LCDGrid.Colors[Col, Row] := LCDGrid.Colors[Col - 1, Row];
      LCDGrid.ColorsTo[Col, Row] := LCDGrid.ColorsTo[Col - 1, Row];
    end;
  for Row := 0 to LCDGrid.RowCount - 1 do
    SetCellColor(LCDGrid, CursorCol, Row, False);
end;

procedure TMainForm.ShiftLeftToolBtnClick(Sender: TObject);
begin
  ShiftLeftAtCursor;
  OnLCDChanged;
end;

procedure TMainForm.ShiftRightToolBtnClick(Sender: TObject);
begin
  ShiftRightAtCursor;
  OnLCDChanged;
end;

procedure TMainForm.RotateLToolBtnClick(Sender: TObject);
begin
  if (LCDGrid.Selection.Right - LCDGrid.Selection.Left) > 0 then
    LCDProcs.RotateSelectionLeft(LCDGrid)
  else
    LCDProcs.RotateAllLCD(LCDGrid, cdToLeft);
  OnLCDChanged;
end;

procedure TMainForm.RotateRToolBtnClick(Sender: TObject);
begin
  if (LCDGrid.Selection.Right - LCDGrid.Selection.Left) > 0 then
    LCDProcs.RotateSelectionRight(LCDGrid)
  else
    LCDProcs.RotateAllLCD(LCDGrid, cdToRight);
  OnLCDChanged;
end;

procedure TMainForm.RotateUToolBtnClick(Sender: TObject);
begin
  if (LCDGrid.Selection.Bottom - LCDGrid.Selection.Top) > 0 then
    LCDProcs.RotateSelectionUp(LCDGrid)
  else
    LCDProcs.RotateAllLCD(LCDGrid, cdToTop);
  OnLCDChanged;
end;

procedure TMainForm.RotateDToolBtnClick(Sender: TObject);
begin
  if (LCDGrid.Selection.Bottom - LCDGrid.Selection.Top) > 0 then
    LCDProcs.RotateSelectionDown(LCDGrid)
  else
    LCDProcs.RotateAllLCD(LCDGrid, cdToBottom);
  OnLCDChanged;
end;

procedure TMainForm.FlipHorizontal;
var
  OldSel: TGridRect;
begin
  if (LCDGrid.Selection.Right - LCDGrid.Selection.Left) > 0 then
    LCDProcs.FlipSelectionHorizontally(LCDGrid)
  else
  begin
    OldSel := LCDGrid.Selection;
    LCDGrid.SelectRows(0, LCDGrid.RowCount - 1);
    LCDProcs.FlipSelectionHorizontally(LCDGrid);
    LCDGrid.Selection := OldSel;
  end;
end;

procedure TMainForm.FlipVertical;
var
  OldSel: TGridRect;
begin
  if (LCDGrid.Selection.Bottom - LCDGrid.Selection.Top) > 0 then
    LCDProcs.FlipSelectionVertically(LCDGrid)
  else
  begin
    OldSel := LCDGrid.Selection;
    LCDGrid.SelectRows(0, LCDGrid.RowCount - 1);
    LCDProcs.FlipSelectionVertically(LCDGrid);
    LCDGrid.Selection := OldSel;
  end;
end;

procedure TMainForm.FlipHorizontalToolBtnClick(Sender: TObject);
begin
  FlipHorizontal;
  OnLCDChanged;
end;

procedure TMainForm.FlipVerticalToolBtnClick(Sender: TObject);
begin
  FlipVertical;
  OnLCDChanged;
end;

procedure TMainForm.RotatePage90CWToolBtnClick(Sender: TObject);
begin
  LCDProcs.RotateLCDPageCW(LCDGrid);
  EnableSizeSpins(False);
  WidthSpin.Value := LCDGrid.ColCount;
  HeightSpin.Value := LCDGrid.RowCount - 1;
  EnableSizeSpins(True);
  OnLCDChanged;
end;

procedure TMainForm.RotatePage90CCWToolBtnClick(Sender: TObject);
begin
  LCDProcs.RotateLCDPageCCW(LCDGrid);
  EnableSizeSpins(False);
  WidthSpin.Value := LCDGrid.ColCount;
  HeightSpin.Value := LCDGrid.RowCount - 1;
  EnableSizeSpins(True);
  OnLCDChanged;
end;

procedure TMainForm.ZoomTrackBarChange(Sender: TObject);
begin
  LCDGrid.DefaultRowHeight := ZoomTrackBar.Position;
  LCDGrid.DefaultColWidth := ZoomTrackBar.Position;
  LCDGrid.RowHeights[LCDGrid.RowCount - 1] := 0;

  AdjustingLCDCellSpace := True;
  CellSpaceBtn.Max := LCDGrid.DefaultColWidth - 1;
  CellSpaceBtn.Position := GlobalOptions.LCDCellSpace;
  AdjustingLCDCellSpace := False;
end;

procedure TMainForm.LCDGridMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var
  NewCol, NewRow: Integer;
begin
  if IgnoreThisClick then
  begin
    IgnoreThisClick := False;
    Exit;
  end;

  if Procs.KeyDown(VK_LBUTTON) then
  begin
    LCDGrid.MouseToCell(X, Y, NewCol, NewRow);
    if Procs.KeyDown(VK_SHIFT) and not Procs.KeyDown(VK_CONTROL) then
    begin
      if (NewCol >= 0) and (NewRow >= 0) then
      begin
        LCDGrid.Row := NewRow;
        LCDGrid.Col := NewCol;
        SetCellColor(LCDGrid, NewCol, NewRow, False);
      end;
    end
    else if (GlobalOptions.CTRLClickToggle and Procs.KeyDown(VK_CONTROL)) or
       ((not GlobalOptions.CTRLClickToggle) and (not Procs.KeyDown(VK_CONTROL))) then
    begin
      if (NewCol>=0) and (NewRow>=0) then
      begin
        LCDGrid.Row:=NewRow;
        LCDGrid.Col:=NewCol;
        SetCellColor(LCDGrid, NewCol, NewRow, True);
      end;
    end;
  end;
end;

procedure TMainForm.ClearLCDToolBtnClick(Sender: TObject);
begin
  EditDelete;
  OnLCDChanged;
end;

procedure TMainForm.EnableSizeSpins(AEnabled: Boolean);
begin
  if AEnabled then
  begin
    WidthSpin.OnChange := WidthSpinChange;
    HeightSpin.OnChange := WidthSpinChange;
  end
  else
  begin
    WidthSpin.OnChange := nil;
    HeightSpin.OnChange := nil;
  end;
end;

procedure TMainForm.CellSpaceBtnChange(Sender: TObject);
begin
  LCDGrid.GridLineWidth := CellSpaceBtn.Position;
  if not AdjustingLCDCellSpace then
    GlobalOptions.LCDCellSpace := CellSpaceBtn.Position;
  OnLCDOptionsChanged;
end;

procedure TMainForm.GridColorBoxChange(Sender: TObject);
begin
  GlobalOptions.LCDGridColor := GridColorBox.Selected;
  if LCDGridLinesCheck.Checked then
    LCDGrid.GridLineColor := GlobalOptions.LCDGridColor;
  OnLCDOptionsChanged;
end;

procedure TMainForm.ApplyStartupOnShowConfig;

  procedure ReadToolbarsPosition;
  var
    Reg: TRegistry;
    Parent: Integer;
  begin
    Reg := TRegistry.Create(KEY_READ or KEY_QUERY_VALUE or KEY_ENUMERATE_SUB_KEYS);
    try
      if Reg.OpenKeyReadOnly(REG_TOOLBAR_SETTINGS_PATH) then
      begin
        if Reg.ValueExists(REG_TOOLBAR_VALUE_EDITANDDESIGN + REG_TOOLBAR_PLACE_VALUE_SUFFIX) then
        begin
          Parent := Reg.ReadInteger(REG_TOOLBAR_VALUE_EDITANDDESIGN + REG_TOOLBAR_PLACE_VALUE_SUFFIX);
          case Parent of
            0: EditAndDesignToolBar.Parent := TopControlBar;
            1: EditAndDesignToolBar.Parent := LeftControlBar;
            2: EditAndDesignToolBar.Parent := RightControlBar;
            else
          end;
        end;
        Reg.CloseKey;
      end;
      Reg.Free;
    except
      Reg.Free;
    end;

    try
      SpecialProcs.ReadToolbarSettings(EditAndDesignToolBar, REG_TOOLBAR_SETTINGS_PATH, REG_TOOLBAR_VALUE_EDITANDDESIGN);
    except
    end;
  end;

begin
  //Language
  SwitchLanguage(ActiveLanguage, ActiveLanguageOptions, False);

  //Toolbars
  SetToolbarCaptions;
  ReadToolbarsPosition;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  ApplyStartupOnShowConfig;
end;

procedure TMainForm.ReadAndApplyLanguageSettings;

  function ReadRegRecord(var LanguageInfo: TLanguageInfo): Boolean; overload;
  var
    Reg: TTntRegistry;
  begin
    Result := False;

    Reg := TTntRegistry.Create(KEY_READ);
    Reg.RootKey := HKEY_CURRENT_USER;

    try

    if Reg.KeyExists(REG_USER_SETTINGS_PATH + '\Language') then
    begin
      if Reg.OpenKeyReadOnly(REG_USER_SETTINGS_PATH + '\Language') then
      begin
        with LanguageInfo do
        begin
          /////////////////////////////
        if not( Reg.ValueExists('Name') and
                Reg.ValueExists('International Name') and
                Reg.ValueExists('Revision') and
                Reg.ValueExists('Author') and
                Reg.ValueExists('Description') and
                Reg.ValueExists('File Version') and
                Reg.ValueExists('Right-to-Left') and
                Reg.ValueExists('Flip Controls') ) then
          Exit;

          LanguageName := Reg.ReadString('Name');
          InternationalName := Reg.ReadString('International Name');
          Revision := Reg.ReadString('Revision');
          Author := Reg.ReadString('Author');
          Description := Reg.ReadString('Description');
          FileVersion := Reg.ReadString('File Version');
          RightToLeft := Reg.ReadBool('Right-to-Left');
          FlipControls := Reg.ReadBool('Flip Controls');
          /////////////////////////////
        end;
        Reg.CloseKey;
      end
      else
        Exit;
    end
    else
      LanguageInfo := ActiveLanguage;
    Result := True;

    finally
      Reg.Free;
    end;
  end;

  function ReadRegRecord(var LanguageOptions: TLanguageOptions): Boolean; overload;
  var
    Reg: TTntRegistry;
  begin
    Result := False;
    Reg := TTntRegistry.Create(KEY_READ);
    try
       Reg.RootKey := HKEY_CURRENT_USER;
    with LanguageOptions do
    begin
      if not Reg.OpenKeyReadOnly(REG_USER_SETTINGS_PATH + '\Language\Options') then
        Exit;
      /////////////////////////////
      if not( Reg.ValueExists('RTL Appearance') ) then
        Exit;
      ApplyRTLToAppearance := Reg.ReadBool('RTL Appearance');
      /////////////////////////////
    end;
    Result := True;

    finally
    Reg.Free;
    end;
  end;

var
  LanguageInfo: TLanguageInfo;
  LanguageOptions: TLanguageOptions;
begin
  try
    if not( ReadRegRecord(LanguageInfo) and ReadRegRecord(LanguageOptions) )then
    begin
      //WideShowMessageSound(ErrMsg);  --> Don't show any error messages
      LanguageInfo := ActiveLanguage;
      LanguageOptions := ActiveLanguageOptions;
    end;
  except
    //WideShowMessageSound(ErrMsg);  --> Don't show any error messages
    LanguageInfo := ActiveLanguage;
    LanguageOptions := ActiveLanguageOptions;
  end;

  if not SwitchLanguageInfo(LanguageInfo, LanguageOptions) then
  begin
    ShowMessageSound('Language file was not found. Default language will be used.');
    LanguageInfo := ActiveLanguage;  //ActiiveLanguage is initilized to internal language in Language.pas.
    LanguageOptions := ActiveLanguageOptions;
    SwitchLanguageInfo(LanguageInfo, LanguageOptions);
  end;
  SetLanguage(ActiveLanguage, ActiveLanguageOptions, ActiveLangInstance);
  //--> Language of other forms will be changed in ApplyStartupOnShowConfig.
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  LCDHistory.Free;
//  OpenCharacterDialog.Free;
//  SaveCategoryDialog.Free;
end;

procedure TMainForm.SetupApplicationCursors;
var
  Cur: HICON;
begin
  Cur := LoadCursor(0, IDC_HAND);
  if Cur <> 0 then
    Screen.Cursors[crHandPoint] := Cur;
end;

procedure TMainForm.EditAndDesignToolBarEndDock(Sender, Target: TObject; X,
  Y: Integer);
begin
  if EditAndDesignToolBar.Floating then
    (EditAndDesignToolBar.Parent as TForm).BorderIcons := [];  //Don't allow the user to hide this toolbar
end;

procedure TMainForm.ApplicationEvents1ShortCut(var Msg: TWMKey;
  var Handled: Boolean);

  function ShortcutsEnabled: Boolean;
  begin
    Result := Self.Active;
    if EditAndDesignToolBar.Floating then
      Result := Result or (EditAndDesignToolBar.Parent as TCustomForm).Active;
  end;

var
  ss: TShiftState;
begin
  //**All the following shortcuts are active only in the main form or one of the toolbars
  if not ShortcutsEnabled then
  begin
    Handled := False;
    Exit;
  end;
  //****

  ss := KeyDataToShiftState(Msg.KeyData);

  //---- F1 (About box)
  if (ss = []) and (Msg.CharCode = VK_F1) then
  begin
    Handled := True;
    AboutForm.ShowModal;
  end;
  //----

  //---- CTRL+A (Select All)
  if (ss = [ssCtrl]) and (Msg.CharCode = Ord('A')) then
  begin
    //Use BeginUpdate and EndUpdate instead of Repaint, because this prevents
    // from paiting twice (one after setting the selection, and one for calling
    // Repaint method to clear old selection rectangle)
    LCDGrid.BeginUpdate;
    try
      LCDGrid.SelectRows(0, LCDGrid.RowCount - 1);
    finally
      LCDGrid.EndUpdate;
    end;

    Handled := True;
  end;
  //----

  //---- Ctrl+Shift+A (Clear All)
  if (ss = [ssCtrl, ssShift]) and (Msg.CharCode = Ord('A')) then
  begin
    ClearLCDBtn.Click;
    Handled := True;
  end;
  //----

  //---- CTRL+S (Save), CTRL+O (Open)
  if ss = [ssCtrl] then
    case Msg.CharCode of
      Ord('S'):
        begin
          SaveCharBtn.Click;
          Handled := True;
        end;
      Ord('O'):
        begin
          LoadCharBtn.Click;
          Handled := True;
        end;
    end;
  //----

  //---- CTRL+L (Rotate Sel Left), CTRL+R (Rotate Sel Right),
  //     CTRL+U (Rotate Sel Up), CTRL+D (Rotate Sel Down)
  if ss = [ssCtrl] then
    case Msg.CharCode of
      Ord('L'):
        begin
          RotateLToolBtn.Click;
          Handled := True;
        end;
      Ord('R'):
        begin
          RotateRToolBtn.Click;
          Handled := True;
        end;
      Ord('U'):
        begin
          RotateUToolBtn.Click;
          Handled := True;
        end;
      Ord('D'):
        begin
          RotateDToolBtn.Click;
          Handled := True;
        end;
    end;
  //----

  //---- CTRL+SHIFT+L (Shift at cursor left), CTRL+SHIFT+R (Shift at cursor right)
  if ss = [ssCtrl, ssShift] then
    case Msg.CharCode of
      Ord('L'):
        begin
          ShiftLeftToolBtn.Click;
          Handled := True;
        end;
      Ord('R'):
        begin
          ShiftRightToolBtn.Click;
          Handled := True;
        end;
    end;
  //----

  //---- CTRL+SHIFT+H (Flip Horizontal), CTRL+SHIFT+V (Flip Vertical)
  if ss = [ssCtrl, ssShift] then
    case Msg.CharCode of
      Ord('H'):
        begin
          FlipHorizontalToolBtn.Click;
          Handled := True;
        end;
      Ord('V'):
        begin
          FlipVerticalToolBtn.Click;
          Handled := True;
        end;
    end;
  //----

  //---- CTRL+Z (Undo), SHIFT+CTRL+Z (Redo)
  if (ss = [ssCtrl]) and (Msg.CharCode = Ord('Z')) then
  begin
    UndoToolBtn.Click;
    Handled := True;
  end
  else if (ss = [ssCtrl, ssShift]) and (Msg.CharCode = Ord('Z')) then
  begin
    RedoToolBtn.Click;
    Handled := True;
  end;
  //----

  //---- CTRL+C (Copy), CTRL+X (Cut), CTRL+V (Paste)
  if ss = [ssCtrl] then
    case Msg.CharCode of
      Ord('C'):
        begin
          CopyToolBtn.Click;
          Handled := True;
        end;
      Ord('X'):
        begin
          CutToolBtn.Click;
          Handled := True;
        end;
      Ord('V'):
        begin
          PasteToolBtn.Click;
          Handled := True;
        end;
    end;
  //----

  //---- Ctrl+Insert(Copy), Shift+Del(Cut), Shift+Insert(Paste)
  if (ss = [ssCtrl]) and (Msg.CharCode = VK_INSERT) then
  begin
    CopyToolBtn.Click;
    Handled := True;
  end
  else if (ss = [ssShift]) and (Msg.CharCode = VK_DELETE) then
  begin
    CutToolBtn.Click;
    Handled := True;
  end
  else if (ss = [ssShift]) and (Msg.CharCode = VK_INSERT) then
  begin
    PasteToolBtn.Click;
    Handled := True;
  end;
  //----
end;

procedure TMainForm.ClipboardChanged;
begin
  PasteToolBtn.Enabled := LCDProcs.ClipboardContainsLCD;
end;

procedure TMainForm.CustomizeToolBarPopupMenuPopup(Sender: TObject);
begin
ToggleEditAndDesignToolBarMenuItem.Checked := EditAndDesignToolBar.Visible;
end;

procedure TMainForm.ToggleEditAndDesignToolBarMenuItemClick(
  Sender: TObject);
begin
  EditAndDesignToolBar.Visible := (Sender as TMenuItem).Checked;
end;

procedure TMainForm.OnLCDOptionsChanged;
begin
  //LCD history
  LCDHistory.LCDFilledColor := FilledColorBox.Selected;
  LCDHistory.LCDClearedColor := ClearedColorBox.Selected;
  if GlobalOptions.LCDUseSolidColors then
    LCDHistory.LCDGradientColor := FilledColorBox.Selected
  else
    LCDHistory.LCDGradientColor := LCDProcs.CalculateLCDGradientColor(FilledColorBox.Selected, ClearedColorBox.Selected);
end;

procedure TMainForm.AddNewHistoryState;
begin
  //LCD history
//  if not(asLoading in ApplicationState) then
//  begin
    LCDHistory.AddHistory;
    UpdateHistoryMadeChanges;
//  end;
end;

procedure TMainForm.UpdateHistoryMadeChanges;
begin
  //History toolbar buttons
  UndoToolBtn.Enabled := LCDHistory.CanUndo;
    if UndoToolBtn.Enabled then
      UndoToolBtn.Hint := Dyn_Texts[33]
    else
      UndoToolBtn.Hint := Dyn_Texts[34];
  RedoToolBtn.Enabled := LCDHistory.CanRedo;
    if RedoToolBtn.Enabled then
      RedoToolBtn.Hint := Dyn_Texts[35]
    else
      RedoToolBtn.Hint := Dyn_Texts[36];

  //Reflect LCD size changes
  EnableSizeSpins(False);
  WidthSpin.Value := LCDGrid.ColCount;
  HeightSpin.Value := LCDGrid.RowCount - 1;
  EnableSizeSpins(True);
end;

procedure TMainForm.UndoToolBtnClick(Sender: TObject);
begin
  if (Sender as TControl).Enabled then
  begin
    LCDHistory.Undo;
    UpdateHistoryMadeChanges;
  end;
end;

procedure TMainForm.RedoToolBtnClick(Sender: TObject);
begin
  if (Sender as TControl).Enabled then
  begin
    LCDHistory.Redo;
    UpdateHistoryMadeChanges;
  end;
end;

procedure TMainForm.OnLCDChanged;
begin
  //LCD history
  AddNewHistoryState;
end;

procedure TMainForm.LCDGridMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  OnLCDChanged;
end;

procedure TMainForm.ApplyStartupAfterShowConfig;
begin
  //Force the Control Bars to resize themselves
  TopControlBar.AutoSize := False;
  TopControlBar.AutoSize := True;

  LeftControlBar.AutoSize := False;
  LeftControlBar.AutoSize := True;

  RightControlBar.AutoSize := False;
  RightControlBar.AutoSize := True;
end;

procedure TMainForm.ApplyAfterShowConfigTimerTimer(Sender: TObject);
begin
  if fsShowing in Self.FormState then
    Exit;
  ApplyAfterShowConfigTimer.Enabled := False;
  ApplyStartupAfterShowConfig;
end;

procedure TMainForm.LCDGridMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  ClickCol, ClickRow: Integer;
begin
  if Button = mbRight then
  begin
    //When the right button is pressed, the grid changes the Selection property
    // to that cell after the OnMouseUp event is occured (but in the appearance
    // it moves selection to the clicked cell before triggering OnMousedown
    // event. So what the user sees is that the selection is on the clicked
    // cell but the Selection property is still pointing to the old selected
    // cell(s)). So it is necessary to set the Selection to the clicked cell to
    // update selection size on the status bar in the
    // UpdateLCDSelectionStatusPanel procedure after the OnMouseDown event even
    // if the user holds the mouse down.
    LCDGrid.MouseToCell(X, Y, ClickCol, ClickRow);
    if (ClickCol >= 0) and (ClickRow >= 0) then
    begin
      LCDGrid.Col := ClickCol;
      LCDGrid.Row := ClickRow;
    end;
  end;

  IgnoreThisClick := True;  //Make it easier for the user to clear a cell (because the OnMouseMove event is triggered in a slow move, but the user doesn't want such that behavior)

{ //To allow selecting a region on the LCDGrid by the right mouse button
  LCDGrid.MouseToCell(X, Y, ClickCol, ClickRow);
  if (Button = mbRight) and (ClickCol >= 0) and (ClickRow >= 0) then
  begin
    RightButtonSelection.Left := ClickCol;
    RightButtonSelection.Top := ClickRow;
    RightButtonSelection.BottomRight := RightButtonSelection.TopLeft;
    LCDGrid.Selection := RightButtonSelection;
    RightButtonSelectionActive := True;
  end;}
end;

procedure TMainForm.WidthSpinKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    LCDGrid.SetFocus;
    Key := 0;
  end;
end;

procedure TMainForm.LCDGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Row, Col: Integer;
begin
  if Key = VK_DELETE then
  begin
    for Row := LCDGrid.Selection.Top to LCDGrid.Selection.Bottom do
      for Col := LCDGrid.Selection.Left to LCDGrid.Selection.Right do
        SetCellColor(LCDGrid, Col, Row, False);
    OnLCDChanged;
  end;
end;

function TMainForm.InformForReadOnlySelectedFile(
  const FName: String): Boolean;
begin
  //Return value: True: FName is read-only
  //              False: FName is not read-only
  Result := FileExists(FName) and Procs.IsReadOnlyFile(FName);
  if Result then
    WideMessageDlgSoundTop(WideFormat(Dyn_Texts[41] {'The file is read-only:%s'}, [#13 + FName]), mtWarning, [mbOK], 0);
end;

function TMainForm.OpenCharacterFile(const CharFileName: String;
  PurgeHistory: Boolean): Boolean;
begin
  Result := False;
  try
    LoadLCDCharFromFile(LCDGrid, FilledColorBox.Selected, ClearedColorBox.Selected,
                        CharFileName);
  except
    WideMessageDlgSoundTop(WideFormat(Dyn_Texts[6] {'Unable to open the character file ''%s''.'}, [CharFileName]), mtError, [mbOK], 0);
    Exit;
  end;
  Result := True;
  if PurgeHistory then
    //LCD History: Clear the history to add the new opened character as the
    // first item in the undo/redo chain in the InitiateNewCharacter
    // procedure.
    LCDHistory.ClearHistory;
  InitiateNewCharacter;
  UpdateMainFormCaption(CharFileName);
  WorkingDesignFileName := Procs.ExtractFileNameWithoutExt(CharFileName);
end;

//===========================================================================
//***************************************************************************
//Multilanguage
//***************************************************************************
//===========================================================================
procedure TMainForm.ApplyLanguageOptions(Form: TTntForm;
  LanguageInfo: TLanguageInfo; LanguageOptions: TLanguageOptions);
type
  TExcludeControlsArray = array[1..8] of TComponentClass;

  //Change BiDiMode of all child controls
  procedure ApplyChilds(Control: TControl; bdm: TBiDiMode;
    const ExcludeControls: TExcludeControlsArray);
  var
    i, j: Integer;
    IncludeControl: Boolean;
  begin
    for i := 0 to (Control as TWinControl).ControlCount - 1 do
    begin
      IncludeControl := True;
      if bdm <> bdLeftToRight then
        for j := 1 to High(ExcludeControls) do
          if (Control as TWinControl).Controls[i] is ExcludeControls[j] then
          begin
            IncludeControl := False;
            break;
          end;
      if IncludeControl then
        (Control as TWinControl).Controls[i].BiDiMode := bdm;
      if (Control as TWinControl).Controls[i] is TWinControl then
        ApplyChilds((Control as TWinControl).Controls[i], bdm, ExcludeControls);
    end;
  end;
  ///////////////////////////////////////

var
  ExcludeControls: TExcludeControlsArray;  //Control classes to exclude from RTL
  bdm: TBiDiMode;
  FormVisible: Boolean;
  OnShowEventHandler: TNotifyEvent;
  i: Integer;
begin
  if not LanguageOptions.LanguageOptionsChanged then
    Exit;

  FormVisible := Form.Visible;
  try
    Form.Visible := False;
  except
  end;

  with LanguageInfo do
    with LanguageOptions do
    begin
      //Menus
      bdm := bdLeftToRight;
      if RightToLeft then
      begin
        if FlipControls and ApplyRTLToAppearance then
          bdm := bdRightToLeft;
      end;
      for i := 0 to Form.ComponentCount - 1 do
        if Form.Components[i] is TMenu then
          (Form.Components[i] as TMenu).BiDiMode := bdm;

      //Form and other controls
      bdm := bdLeftToRight;
      if RightToLeft then
      begin
        if ApplyRTLToAppearance then
          bdm := bdRightToLeft
        else
          bdm := bdRightToLeftReadingOnly;
      end;
      Form.BiDiMode := bdm;

      ////////////////////////////////
      //Exclude controls with these class types
      //Because TMenu is not a TControl, it is not included in the Form.Controls
      ExcludeControls[1] := TStringGrid;
      ExcludeControls[2] := TStatusBar;
      ExcludeControls[4] := TControlBar;
      ExcludeControls[5] := TCustomPanel;
      ExcludeControls[6] := TCustomListBox;
      ExcludeControls[7] := TCustomComboBox;
      ExcludeControls[8] := TCustomEdit;  //Also include TCustomMemo and TSpinEdit (only edit control) {= class(TCustomEdit}
      ////////////////////////////////

      //Set BiDiMode
      ApplyChilds(Form, bdm, ExcludeControls);
    end;

  OnShowEventHandler := Form.OnShow;
  Form.OnShow := nil;
  try
    Form.Visible := FormVisible;
  except
  end;
  Form.OnShow := OnShowEventHandler;
end;

procedure TMainForm.ShowForm(Form: TTntForm; Visible: Boolean);
var
  OnShowEventHandler: TNotifyEvent;
begin
  if Visible = Form.Visible then
    Exit;
  OnShowEventHandler := Form.OnShow;
  Form.OnShow := nil;
  try
    Form.Visible := Visible;
  except
  end;
  Form.OnShow := OnShowEventHandler;
end;

function TMainForm.ReplaceInvalidUnicodeChars(const Str: WideString): WideString;
const
  NUM_OF_CHARS = 2;

type
  TReplaceInvalidUnicodeChar = record
    UnicodeCharCode: Integer;
    LanguageNameCondition: String;
  end;

const
{
  Notes:
        1. In WIN98 the $ 6A9 unicode character (ARABI CLETTER KEHEH) is not displayed correctly, but the $0643 unicode character (ARABIC LETTER KAF) is displayed correctly. Always replace KEHEH with KAF.
        2. The $064A (ARABIC LETTER YEH) has 2 dots under it, but the standard farsi YEH does not have it. So if the active language is Farsi, replace the ARABIC LETTER YEH with the unicode character $06CC (ARABIC LETTER FARSI YEH).
}
  OldCharCodes: array[1..NUM_OF_CHARS] of TReplaceInvalidUnicodeChar = (
    (UnicodeCharCode: $06A9 {ARABIC LETTER KEHEH}; LanguageNameCondition: ''),
    (UnicodeCharCode: $064A {ARABIC LETTER YEH}; LanguageNameCondition: 'Farsi')
  );
  NewCharCodes: array[1..NUM_OF_CHARS] of Integer = (
    $0643 {ARABIC LETTER KAF},
    $06CC {ARABIC LETTER FARSI YEH}
  );
var
  i: Integer;
  ReplaceChar: Boolean;
begin
  //Don't check the Win32Platform variable
  Result := Str;
  for i := 1 to Length(OldCharCodes) do
  begin
    ReplaceChar := True;
    if Length(Trim(OldCharCodes[i].LanguageNameCondition)) > 0 then
      ReplaceChar := Pos(LowerCase(OldCharCodes[i].LanguageNameCondition), LowerCase(ActiveLanguage.InternationalName)) >= 1;
    if ReplaceChar then
      Result := Tnt_WideStringReplace(Result, WideChar(OldCharCodes[i].UnicodeCharCode), WideChar(NewCharCodes[i]), [rfReplaceAll, rfIgnoreCase]);
  end;
end;

procedure TMainForm.SetLanguage(LanguageInfo: TLanguageInfo;
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

  try

  ApplyLanguageOptions(Self, LanguageInfo, LanguageOptions);
  //Exceptions

  //Main form caption
  Self.BiDiMode := bdLeftToRight;  //Must be before setting the BiDiMode of toolbars (and also other conrols) to not affect the BiDiMode of toolbars (or maybe other controls)

  //Toolbars
  if LanguageInfo.RightToLeft and LanguageInfo.FlipControls and
    LanguageOptions.ApplyRTLToAppearance then
  begin
    EditAndDesignToolBar.BiDiMode := bdRightToLeft;
  end
  else
  begin
    EditAndDesignToolBar.BiDiMode := bdLeftToRight;
  end;
  //The Caption and BiDiMode of toolbars will be set afterwards

  //Flip selected controls
  FlipOperation := False;
  if LanguageInfo.RightToLeft and LanguageInfo.FlipControls and
    LanguageOptions.ApplyRTLToAppearance then
  begin
    if not ControlsFlipped then
    begin
      SpecialProcs.FlipChildrenExcept(TopSettingsPanel, FlipExcludedControlsList, True);
      SpecialProcs.FlipChildrenExcept(ZoomPanel, FlipExcludedControlsList, True);
      //SpecialProcs.FlipControls([]);
      FlipOperation := True;
    end;
    ControlsFlipped := True;
  end
  else if ControlsFlipped then
  begin
    //SpecialProcs.FlipChildren(, True);
    //SpecialProcs.FlipControls([]);
    ControlsFlipped := False;
    FlipOperation := True;
  end;
  if FlipOperation then
  begin
    //SpecialProcs.FlipControls([]);
  end;
  //////////////////////////////
  if LangInstance = 0 then
  begin
    ShowForm(Self, FormVisible);
    //Toolbars and their floating window caption (default values for internal English (Default) language)
    //--> Don't use Caption property as the dafult value, because it may cause a run-time error
    ToolbarCaptions[1] := 'Edit and Design';  //EditAndDesignToolBar
    if not(asLoading in ApplicationState) then
      SetToolbarCaptions;
    //If a floating toolbar, the caption of the floating window will be updated in
    // the SetToolbarCaptions procedure.
    Exit;
  end;

  //Items to change:
  //  Captions
  //  Hints

  //-----------------
  //Change Captions
  //-----------------
  //Top panel
  ClearLCDBtn.Caption := GetStaticText(1);
  SaveCharBtn.Caption := GetStaticText(2);
  LoadCharBtn.Caption := GetStaticText(3);

  WidthLabel.Caption := GetStaticText(4);
  HeightLabel.Caption := GetStaticText(5);

  FilledDotColorLabel.Caption := GetStaticText(6);
  ClearedDotColorLabel.Caption := GetStaticText(7);
  GridColorLabel.Caption := GetStaticText(8);

  //Middle panel
  ZoomLabel.Caption := GetStaticText(9);

  CellSpaceBtn.Title := GetStaticText(10);

  LCDGridLinesCheck.Caption := GetStaticText(11);
  ShowCursorRectangleCheck.Caption := GetStaticText(12);

  //-----------------
  //Change Hints
  //-----------------
  //Middle panel
  CellSpaceBtn.Hint := GetStaticText(13);

  //"Edit and Design" Toolbar
  CutToolBtn.Hint := GetStaticText(14);
  CopyToolBtn.Hint := GetStaticText(15);
  PasteToolBtn.Hint := GetStaticText(16);
  ClearLCDToolBtn.Hint := GetStaticText(17);

  ShiftLeftToolBtn.Hint := GetStaticText(18);
  ShiftRightToolBtn.Hint := GetStaticText(19);

  RotateLToolBtn.Hint := GetStaticText(20);
  RotateRToolBtn.Hint := GetStaticText(21);
  RotateUToolBtn.Hint := GetStaticText(22);
  RotateDToolBtn.Hint := GetStaticText(23);

  FlipHorizontalToolBtn.Hint := GetStaticText(24);
  FlipVerticalToolBtn.Hint := GetStaticText(25);
  RotatePage90CWToolBtn.Hint := GetStaticText(26);
  RotatePage90CCWToolBtn.Hint := GetStaticText(27);

  //======================================================
  //===  NEW  ===
  //======================================================
  //Toolbars and their floating window caption
  ToolBarCaptions[1] := GetStaticText(28);  //EditAndDesignToolBar
  //If a floating toolbar, the caption of the floating window will be updated in
  // the SetToolbarCaptions procedure.

  //CustomizeToolBarPopupMenu menu items
  ToggleEditAndDesignToolBarMenuItem.Caption := GetStaticText(29);

  finally

    ShowForm(Self, FormVisible);

  end;

  //BiDiMode of toolbars and their floating windows
  //If the form is being created, the BiDiMode of floating windows will be set in the OnApplyStartupOnShowConfig procedure
  if not(asLoading in ApplicationState) then
    SetToolbarCaptions;

  //Change message dialog button captions
  TntDialogs.ButtonCaptions[mbYes] := Dyn_Texts[24];  //SMsgDlgYes;
  TntDialogs.ButtonCaptions[mbNo] := Dyn_Texts[25];  //SMsgDlgNo;
  TntDialogs.ButtonCaptions[mbOK] := Dyn_Texts[15];  //SMsgDlgOK;
  TntDialogs.ButtonCaptions[mbCancel] := Dyn_Texts[10];  //SMsgDlgCancel;
  TntDialogs.ButtonCaptions[mbAbort] := Dyn_Texts[26];  //SMsgDlgAbort;
  TntDialogs.ButtonCaptions[mbRetry] := Dyn_Texts[27];  //SMsgDlgRetry;
  TntDialogs.ButtonCaptions[mbIgnore] := Dyn_Texts[28];  //SMsgDlgIgnore;
  TntDialogs.ButtonCaptions[mbAll] := Dyn_Texts[29];  //SMsgDlgAll;
  TntDialogs.ButtonCaptions[mbNoToAll] := Dyn_Texts[30];  //SMsgDlgNoToAll;
  TntDialogs.ButtonCaptions[mbYesToAll] := Dyn_Texts[31];  //SMsgDlgYesToAll;
  TntDialogs.ButtonCaptions[mbHelp] := Dyn_Texts[32];  //SMsgDlgHelp;
end;

procedure TMainForm.SetToolbarCaptions;
begin
  EditAndDesignToolBar.Caption := ToolBarCaptions[1];
  //If a floating toolbar, update the caption of the floating window
  if EditAndDesignToolBar.Floating then  //GeneralToolbar
  begin
    (EditAndDesignToolBar.Parent as TTntForm).Caption := EditAndDesignToolBar.Caption;
    EditAndDesignToolBar.Parent.BiDiMode := EditAndDesignToolBar.BiDiMode;
  end;
end;

procedure TMainForm.SetDynamicTexts(LangInstance: THandle);

  procedure SetDefaultDynamicTexts;
  begin
    Dyn_Texts[1] := 'Occured an error while reading configuration. Default configuration loaded.';
    Dyn_Texts[2] := 'Are you sure you want to clear the current character?';
    Dyn_Texts[3] := 'Filled cell color cannot be same as the cleared cell color.';
    Dyn_Texts[4] := 'Unable to save the character.';
    Dyn_Texts[5] := 'Do you want to save the current character?';
    Dyn_Texts[6] := 'Unable to open the character file ''%s''.';
    Dyn_Texts[7] := 'Cannot shift left at the left side of the design.';
    Dyn_Texts[8] := 'Cannot shift right at the right side of the design.';
    Dyn_Texts[9] := '&Open';
    Dyn_Texts[10] := 'Cancel';
    Dyn_Texts[11] := '&Save';
    Dyn_Texts[12] := 'Cancel';
    Dyn_Texts[13] := 'Occured an error while saving the character. Please try again.';
    Dyn_Texts[14] := 'Special &Names...';
    Dyn_Texts[15] := 'OK';
    Dyn_Texts[16] := 'Character Groups';
    Dyn_Texts[17] := 'Characters In the Group';
    Dyn_Texts[18] := 'Unable to save the program settings to the registry.';
    Dyn_Texts[19] := '&User-Mapped Chars...';
    Dyn_Texts[20] := 'Save Character';
    Dyn_Texts[21] := 'Open Character';
    Dyn_Texts[22] := 'Select Character';
    Dyn_Texts[23] := 'User-Mapped Character Names';
    //Mesage dialog button captions
    Dyn_Texts[24] := '&Yes';
    Dyn_Texts[25] := '&No';
    Dyn_Texts[26] := '&Abort';
    Dyn_Texts[27] := '&Retry';
    Dyn_Texts[28] := '&Ignore';
    Dyn_Texts[29] := '&All';
    Dyn_Texts[30] := 'N&o to All';
    Dyn_Texts[31] := 'Yes to &All';
    Dyn_Texts[32] := '&Help';
    //Undo/Redo toolbar button hints
    Dyn_Texts[33] := 'Undo';
    Dyn_Texts[34] := 'Can''t Undo';
    Dyn_Texts[35] := 'Redo';
    Dyn_Texts[36] := 'Can''t Redo';
    Dyn_Texts[37] := '%s already exists.%s Do you want to replace it?';
    Dyn_Texts[38] := 'Please enter a character name.';
    Dyn_Texts[39] := 'Please specify a location.';
    Dyn_Texts[40] := 'Error in reading the character file ''%s''.';
    Dyn_Texts[41] := 'The file is read-only:%s';
    Dyn_Texts[42] := 'The character file%sdoesn''t exist.';
  end;

var
  i: Integer;
  S: WideString;
  ResStringRec: TResStringRec;
begin
  if LangInstance = 0 then
  begin
    SetDefaultDynamicTexts;
    Exit;
  end;

  ResStringRec.Module := @LangInstance;
  for i := 1 to DYNAMIC_TEXTS_COUNT do
  begin
    ResStringRec.Identifier := i + DYNAMIC_LANG_RESID_START_NUM;
    S := MainForm.ReplaceInvalidUnicodeChars(WideLoadResString(@ResStringRec));
    if Length(S) > 0 then
      Dyn_Texts[i] := S;
  end;
end;
//===========================================================================
//***************************************************************************
//***************************************************************************
//===========================================================================

procedure TMainForm.GeneralEditPopupMenuPopup(Sender: TObject);
begin
  GEPastePopupMenuItem.Enabled := Clipboard.HasFormat(CF_TEXT);
  if GeneralEditPopupMenu.PopupComponent is TCustomEdit then
  begin
    GECutPopupMenuItem.Enabled := (GeneralEditPopupMenu.PopupComponent as TCustomEdit).SelLength > 0;
    GECopyPopupMenuItem.Enabled := (GeneralEditPopupMenu.PopupComponent as TCustomEdit).SelLength > 0;
    if GeneralEditPopupMenu.PopupComponent is TEdit then
    begin
      GEPastePopupMenuItem.Enabled := GEPastePopupMenuItem.Enabled and not (GeneralEditPopupMenu.PopupComponent as TEdit).ReadOnly;
      GECutPopupMenuItem.Enabled := GECutPopupMenuItem.Enabled and not (GeneralEditPopupMenu.PopupComponent as TEdit).ReadOnly;
    end
    else if GeneralEditPopupMenu.PopupComponent is TTntEdit then
    begin
      GEPastePopupMenuItem.Enabled := GEPastePopupMenuItem.Enabled and not (GeneralEditPopupMenu.PopupComponent as TTntEdit).ReadOnly;
      GECutPopupMenuItem.Enabled := GECutPopupMenuItem.Enabled and not (GeneralEditPopupMenu.PopupComponent as TTntEdit).ReadOnly;
    end;
  end
  else if GeneralEditPopupMenu.PopupComponent is TCustomCombo then
  begin
    GECutPopupMenuItem.Enabled := (GeneralEditPopupMenu.PopupComponent as TCustomCombo).SelLength > 0;
    GECopyPopupMenuItem.Enabled := (GeneralEditPopupMenu.PopupComponent as TCustomCombo).SelLength > 0;
  end;
end;

procedure TMainForm.GECutPopupMenuItemClick(Sender: TObject);
begin
  if GeneralEditPopupMenu.PopupComponent is TWinControl then
    SendMessage((GeneralEditPopupMenu.PopupComponent as TWinControl).Handle, WM_CUT, 0, 0);
end;

procedure TMainForm.GECopyPopupMenuItemClick(Sender: TObject);
begin
  if GeneralEditPopupMenu.PopupComponent is TWinControl then
    SendMessage((GeneralEditPopupMenu.PopupComponent as TWinControl).Handle, WM_COPY, 0, 0);
end;

procedure TMainForm.GEPastePopupMenuItemClick(Sender: TObject);
begin
  if GeneralEditPopupMenu.PopupComponent is TWinControl then
    SendMessage((GeneralEditPopupMenu.PopupComponent as TWinControl).Handle, WM_PASTE, 0, 0);
end;

procedure TMainForm.LicenseTimerTimer(Sender: TObject);
begin
  //************************************
  if not License4.CheckLicenseStatus then
    Halt;
  //************************************
end;

end.
