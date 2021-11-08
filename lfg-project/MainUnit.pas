unit MainUnit;

{$WARN UNIT_PLATFORM OFF}
{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, Grids, BaseGrid, AdvGrid, XPMan, StdCtrls,
  CheckLst, Buttons, ComCtrls, MMFolderTreeView, ProcsUnit,
  ShlOBJ, NewDesignFormUnit, Spin,
  ExportLCDFormUnit, asgprev, LibraryOrganizerFormUnit, ImgList,
  SaveCategoryDialog, ErrorLogFormUnit, LCDAnimatorFormUnit,
  ImportGraphicsFormUnit, Mask, TntMenus, TntStdCtrls, TntButtons,
  TntComCtrls, TntExtCtrls, TntDelayedEdit, Graphics32, Image32,
  PopupSpinEdit, Clipbrd, TntClasses, TntDialogs,
  TntSystem, ChooseLanguageFormUnit, TntWindows, TntXPMenu, ToolWin,
  CodeToLCDFormUnit, AppEvnts, Help, Registry, ShellAPI, Language,
  TntRegistry, ChooseHelpLangFormUnit, CheckForUpdatesFormUnit,
  HowToBuyFormUnit, License, FileCtrl, TntForms, WheelListBox,
  TntDelayedComboBox, TntControls, LCDTypes, AdvancedNumEdit, TntToolWin,
  LCDConsts, LCDHistory, SoundDialogs, cmpStandardSystemMenu, TntSysUtils,
  BiDiDialogs, BiDiSoundDialogs, MMAdvancedGrid;

type
  TUserMappedChar = record
    Character: Char;
    MappedFName: String;
  end;

const
  /////////////////////////////////////////////////////
  //Language
  STATIC_LANG_RESID_START_NUM = 0;
  DYNAMIC_LANG_RESID_START_NUM = 500;
  DYNAMIC_TEXTS_COUNT = 58;

  QUICKHELP_LANG_RESID_STARTNUM = 10500;
  QUICKHELP_LANG_RESID_LINECOUNT = 1;

  EXTRA_LANG_INFO_RESID_START_NUM = 10000;

  FlipExcludedControlsList: array[0..0] of TComponentClass = (
                              TSpinButton
                            );
  /////////////////////////////////////////////////////

  DIALOGS_TITLE = SOFTWARE_NAME;

  //Registry paths
  RUFLRegPath = '\Recently Opened Designs';
  REG_TOOLBAR_SETTINGS_PATH = REG_USER_SETTINGS_PATH + '\Toolbars';
    REG_TOOLBAR_VALUE_GENERAL = 'General';
    REG_TOOLBAR_VALUE_DESIGN = 'Deisgn';
    REG_TOOLBAR_VALUE_IMPORTEXPORT = 'Import and Export';
  /////////////////////////////////////////////////////

  //Status bar panels
  SELECTION_PANEL_INDEX = 1;
  CURSOR_POS_PANEL_INDEX = 2;

//  CHARACTER_MAP_FNAME = 'CharMap.dat';  --> Not used any more. Settings are written and read to/from the registry
  TYPERS_FOLDER_NAME = 'Typers';
  HELP_FOLDER_NAME = 'Help';
  FILE_VERSION = '2.0.0.0';

  CHARLIBPANEL_COLLAPSED_HEIGHT = 31;
  CHARLIBPANEL_MAX_WIDTH        = 350;
  CHARLIBPANEL_MIN_WIDTH        = 180;
  CHARLIB_CATEGORIESPANEL_MIN_WIDTH = 65;
  CHARPREVIEWPANEL_MIN_HEIGHT   = 65;

  //Custom ModalResult constants
  mrGoToLCDOptions = 100;
  mrGoToProgramOptions = 101;
  mrFullProgramReset = 102;
  //////////////////////////////

  TEXT_TO_LCD_DEFAULT_MAX_HISTORY_COUNT = 15;  //Default max number of strings to hold in the Text to LCD text combo if the registry value is not available or is invalid

  //Default favorite fonts (will be loaded if the list is empty)
  DEFAULT_FAVORITE_FONTS: array[1..6] of String = (
      'Arial',
      'Tahoma',
      'Wingdings',
      'Wingdings 2',
      'Wingdings 3',
      'Webdings'
  );


  //Default User-Mapped Characters (will be loaded in the LoadDefaultConfig procedure)
  DEFAULT_USER_MAPPED_CHARS: array[1..11] of TUserMappedChar = (
      (Character: ' '; MappedFName: 'SPACE'),
      (Character: '/'; MappedFName: 'SLASH'),
      (Character: '\'; MappedFName: 'BACKSLASH'),
      (Character: '.'; MappedFName: 'DOT'),
      (Character: ':'; MappedFName: 'COLON'),
      (Character: '?'; MappedFName: 'QUESTION'),
      (Character: '>'; MappedFName: 'GREATER THAN'),
      (Character: '<'; MappedFName: 'LESS THAN'),
      (Character: '*'; MappedFName: 'ASTERISK'),
      (Character: '"'; MappedFName: 'QUOTATION'),
      (Character: '|'; MappedFName: 'PIPE')
  );

  AnsiDelimiters : String = ' ';  //Used in the ConvertTextToLCD procedure
  //ImageList.StateIndex=0 has some bugs, so we add one dummy image to position 0
  cFlatUnCheck = 1;
  cFlatChecked = 2;
  cFlatRadioUnCheck = 3;
  cFlatRadioChecked = 4;
  cFlatSemiChecked = 5;

type
  TIsCompatible = function (const Version: ShortString; var CompatibilityMsg: ShortString): Boolean;
  TGetVersion = function : ShortString;
  TTypeChar = function (PrevChar, MainChar, NextChar: WideChar;
    var ProperChar: WideChar; var RightToLef: Boolean): Boolean;

  TRealTimeRegistrySettingsKind =(
    rskLCDOptions, rskLCDGlobalOptions, rskCharLibOptions, rskLCDAnimator,
    rskLanguage, rskLibraryPath, rskDefaultHelpLang);

  TWindowRect = record
    Left, Top: Integer;
    Width, Height: Integer;
  end;

  TFontSettings = record
    Name: String;
    Size: Integer;
    Height: Integer;
    Pitch: TFontPitch;
    Color: TColor;
    Style: TFontStyles;
    Charset: TFontCharset;
  end;
  TCharacterSource = (csCharacterLibrary,csSystemFonts);
  TExportLCDFormSettings = record
    //---------- Export LCD window settings
    ExportLCDFormHeight: Integer;

    //Basic Output settings
    ExportOnlySelection: Boolean;
    OutputFormat: TOutputFormat;
    OutputHexFormat: THexFormat;
    ColumnByColumnOrder: Boolean;
    InverseOrder: Boolean;
    PrefixString, SuffixString: String;
    InverseValues: Boolean;
    AutomaticApply: Boolean;

    //Advanced Output settings
    AddColSep, AddColBreak, AddRowSep: Boolean;
    ColSepNumOfUnits, ColBreakNumOfUnits: Integer;
    ColSepUnitComboIndex, ColBreakUnitComboIndex: Integer;
    RowSepNumOfRows: Integer;
    ColSepText: String;

    //Quick Export settings
    QECopyToClipboard: Boolean;
    QESaveToFile: Boolean;
    QEFileName: String;
    //New Quick Export settings
    QEAppendToFile: Boolean;
    QEAdvancedFileName: String;
    QEFrameStartNum: Integer;
  end;
  TCodeToLCDFormSettings = record
    AutodetectCodeFormat: Boolean;
    CustomFormat: TOutputFormat;
    PrefixStr, SuffixStr: WideString;
    CharsToIgnore: WideString;
    ShowPreviewGridLines: Boolean;
    PreviewZoomValue: Integer;
    ColumnByColumnOrder: Boolean;
  end;
  TGlobalOptions = record
    LibraryPath: String;
    NewDesignDialog: Boolean;
    NewLCDDefaultWidth, NewLCDDefaultHeight: Integer;
    MainFormLeft, MainFormTop, MainFormWidth, MainFormHeight: Integer;
    MainFormState: TWindowState;

    CharacterLibraryPanelVisible:Boolean;
    CharLibPanelHeight: Integer;
    ZoomTrackBarValue, PreviewZoomTrackBarValue: Integer;
    ShowLCDGridLines, ShowCharPreviewLCDGridLines: Boolean;
    ShowInsertTextErrorLog: Boolean;
    //----------
    LCDFilledColor, LCDClearedColor: TColor;
    LCDCursorColor: TColor;
    LCDUseSolidColors: Boolean;
    ShowCursorRectangle: Boolean;
    CTRLClickToggle: Boolean;
    DontAdvanceCursorAutomatically: Boolean;
    DefaultCharacterSource: TCharacterSource;
    //-----------
    LCDAnimatorSettings: TLCDAnimatorSettings;
    ImportGraphicsFormSettings: TImportGraphicsFormSettings;
    //================================================================
    //======================   NEW SETTINGS   ========================
    //================================================================
    ExportLCDFormSettings: TExportLCDFormSettings;
    CodeToLCDFormSettings: TCodeToLCDFormSettings;
    NewDesignFormCheckChecked: Boolean;
    CharLibTopPanelHeight: Integer;
    CharacterLibraryPanelWidth: Integer;
    CharacterLibraryPanelCharactersPanelWidth: Integer;
    TextToLCDPanelVisible: Boolean;
    TextToLCDPanelHeight: Integer;

    SystemFontsSectionActivePageIndex: Integer;

    TextToLCDFavFont: TFontSettings;
    TextToLCDAllFont: TFontSettings;

    LCDGridColor: TColor;
    LCDCellSpace: Integer;

    CharLibPanelPlace: TAlign;
    CharLibToolPanelTop: Integer;
    CharLibPanelCollapsed: Boolean;

    LCDPicturePreviewVisible: Boolean;
    LCDPicturePreviewFormPosition: TPoint;
    LCDPicturePreviewFormFirstShow: Boolean;
    LCDPicturePreviewFormWidth: Integer;
    LCDPicturePreviewFormHeight: Integer;

    AdjustLCDWidthIfNeeded: Boolean;
    AdjustLCDHeightIfNeeded: Boolean;
    InputTextDirection: TBiDiMode;

    ShowStatusBar: Boolean;

    ActiveLanguageInfo: TLanguageInfo;
    ActiveLanguageOptionsInfo: TLanguageOptions;
    DefaultHelpLanguage: String;

    RUFLCount: Integer;

    TextToLCDMaxTextHistory: Integer;
    UndoLevels: Integer;

    {Custom version new settings start from here}
    NextFrameNo: Integer;  //--> Currently a run-time only global option (default value set in the ApplyStartupConfig procedure)
    LastDefaultQEInputString: String;  //--> Currently a run-time only global options (default value set in the ApplyStartupConfig procedure)

    FreeRotationAngle: Integer;  {0-359 degrees}
    FreeRotationCenter: TPoint;
  end;
  TLCDOptions = record
    LCDWidth,LCDHeight: Integer;
    ShowCursorRectangle: Boolean;
    LCDCursorColor: TColor;
    LCDFilledColor, LCDClearedColor: TColor;
    LCDGradientColor: TColor;  //This field is a calculated field and is not stored in the registry
    LCDUseSolidColors: Boolean;
    LCDGridColor: TColor;
    CTRLClickToggle: Boolean;
    DontAdvanceCursorAutomatically: Boolean;
  end;
  TRuntimeGlobalOptions = record
    FullScreenModeRequested: Boolean;  //This will save the request of full screen mode at aplication startup to switch to full screen mode immediately after the application is ready (i.e. after the main form has been shown)
    CharPreviewGridCleared: Boolean;
    FirstUserRun: Boolean;
  end;

  TMainForm = class(TTntForm)
    XPManifest1: TXPManifest;
    LCDPanel: TTntPanel;
    PrinterSetupDialog1: TPrinterSetupDialog;
    TopControlBar: TTntControlBar;
    MenuImages: TImageList;
    TreeViewStatesImageList: TImageList;
    FontDialog1: TFontDialog;
    MainMenu: TTntMainMenu;
    FileMenuItem: TTntMenuItem;
    NewDesignMenuItem: TTntMenuItem;
    OpenDesignMenuItem: TTntMenuItem;
    SaveDesignMenuItem: TTntMenuItem;
    SaveDesignAsMenuItem: TTntMenuItem;
    N1: TTntMenuItem;
    ImportPictureFileMenuItem: TTntMenuItem;
    N2: TTntMenuItem;
    ExportLCDMenuItem: TTntMenuItem;
    N3: TTntMenuItem;
    PrinterSetupMenuItem: TTntMenuItem;
    PrintLCDMenuItem: TTntMenuItem;
    N4: TTntMenuItem;
    ExitMenuItem: TTntMenuItem;
    EditMenuItem: TTntMenuItem;
    CutMenuItem: TTntMenuItem;
    CopyMenuItem: TTntMenuItem;
    PasteMenuItem: TTntMenuItem;
    DeleteMenuItem: TTntMenuItem;
    ViewMenuItem: TTntMenuItem;
    CharacterLibraryPaneMenuItem: TTntMenuItem;
    ToolbarsMenuItem: TTntMenuItem;
    GeneralToolBarMenuItem: TTntMenuItem;
    N5: TTntMenuItem;
    RefreshCharacterLibraryMenuItem: TTntMenuItem;
    LCDMenuItem: TTntMenuItem;
    SelectAllMenuItem: TTntMenuItem;
    ClearAllMenuItem: TTntMenuItem;
    N6: TTntMenuItem;
    ToggleSelectionMenuItem: TTntMenuItem;
    FlipHorizontalMenuItem: TTntMenuItem;
    FlipVerticalMenuItem: TTntMenuItem;
    ShiftAtCursorMenuItem: TTntMenuItem;
    ShiftRightMenuItem: TTntMenuItem;
    ShiftLeftMenuItem: TTntMenuItem;
    RotateLCDMenuItem: TTntMenuItem;
    RotateLCDRightMenuItem: TTntMenuItem;
    RotateLCDLeftMenuItem: TTntMenuItem;
    RotateLCDUpMenuItem: TTntMenuItem;
    RotateLCDDownMenuItem: TTntMenuItem;
    RotateSelectionMenuItem: TTntMenuItem;
    RotateSelRightMenuItem: TTntMenuItem;
    RotateSelLeftMenuItem: TTntMenuItem;
    RotateSelUpMenuItem: TTntMenuItem;
    RotateSelDownMenuItem: TTntMenuItem;
    N9: TTntMenuItem;
    CreateCharacterMenuItem: TTntMenuItem;
    N10: TTntMenuItem;
    ImportPictureLCDMenuItem: TTntMenuItem;
    N11: TTntMenuItem;
    LCDOptionsMenuItem: TTntMenuItem;
    ToolsMenuItem: TTntMenuItem;
    CharacterLibraryOrganizerMenuItem: TTntMenuItem;
    CharacterDesignerMenuItem: TTntMenuItem;
    N12: TTntMenuItem;
    LCDAnimatorMenuItem: TTntMenuItem;
    N13: TTntMenuItem;
    ProgramOptionsMenuItem: TTntMenuItem;
    HelpMenuItem: TTntMenuItem;
    AboutMenuItem: TTntMenuItem;
    TextToLCDPaneMenuItem: TTntMenuItem;
    CharacterLibraryPanel: TTntPanel;
    CharLibInternalSplitter2: TSplitter;
    CharacterLibraryTopPanel: TTntPanel;
    CharLibInternalSplitter1: TSplitter;
    CharactersPanel: TTntPanel;
    CharactersPanelHeader: TTntLabel;
    Panel2: TTntPanel;
    InsertCharAtCursorBtn: TTntBitBtn;
    CharactersListBox: TWheelListBox;
    CategoriesPanel: TTntPanel;
    CategoriesPanelHeader: TTntLabel;
    CategoryFolderTreeView: TMMFolderTreeView;
    CharLibPathPanel: TTntPanel;
    CharPreviewPanel: TTntPanel;
    CharPreviewToolPanel: TTntPanel;
    PreviewZoomLabel: TTntLabel;
    PreviewZoomTrackBar: TTrackBar;
    CharacterLibraryPanelLeftSplitter: TSplitter;
    TextToLCDPanel: TTntPanel;
    BottomSplitter: TSplitter;
    InsertTextAtCursorBtn: TTntBitBtn;
    InsertTextAsLCDBtn: TTntBitBtn;
    TextToLCDOptionsGroup: TTntGroupBox;
    CharacterSourceGroup: TTntGroupBox;
    TntSpeedButton1: TTntSpeedButton;
    CategoryCheckTreeView: TMMFolderTreeView;
    SystemFontsSourceRadio: TTntRadioButton;
    CharacterLibrarySourceRadio: TTntRadioButton;
    CharacterSourceSettingsBtn: TTntBitBtn;
    SystemFontsSection: TTntPageControl;
    FavoriteFontsTabSheet: TTntTabSheet;
    Panel3: TTntPanel;
    FontLabel1: TTntLabel;
    Bold1: TTntSpeedButton;
    Italic1: TTntSpeedButton;
    Underlined1: TTntSpeedButton;
    FavoriteFontsCombo: TTntComboBox;
    FontSizeCombo1: TTntComboBox;
    TntPanel1: TTntPanel;
    FavHxWPanel: TTntPanel;
    AllFontsTabSheet: TTntTabSheet;
    Panel7: TTntPanel;
    FontLabel2: TTntLabel;
    Bold2: TTntSpeedButton;
    Italic2: TTntSpeedButton;
    Underlined2: TTntSpeedButton;
    TntSpeedButton6: TTntSpeedButton;
    AddToFavoriteFontsBtn: TTntSpeedButton;
    AllFontsCombo: TTntComboBox;
    FontSizeCombo2: TTntComboBox;
    HxWPanel: TTntPanel;
    TntPanel3: TTntPanel;
    RemoveFromFavoriteFontsBtn: TTntSpeedButton;
    RightToolPanel: TTntPanel;
    CharacterLibraryGrabber: TTntPanel;
    LeftToolPanel: TTntPanel;
    CharLibPanelHeader: TTntPanel;
    CharLibExpandBtn: TTntSpeedButton;
    ButtonGlyphs: TImageList;
    LCDTopPanel: TTntPanel;
    LeftToolSizePanel: TTntPanel;
    LCDToolPanel: TTntPanel;
    TntLabel1: TTntLabel;
    CellSpaceBtn: TPopupSpinEdit;
    RightToolSizePanel: TTntPanel;
    CharacterLibraryPanelRightSplitter: TSplitter;
    LCDPicturePreviewToolBtn: TTntSpeedButton;
    N14: TTntMenuItem;
    LCDPicturePreviewMenuItem: TTntMenuItem;
    Panel18: TTntPanel;
    CharPreviewGridStatusBar: TStatusBar;
    ErrorLogCheck: TTntCheckBox;
    MainStatusBar: TTntStatusBar;
    SampleGroup1: TTntGroupBox;
    FavoriteFontSamplePanel: TTntPanel;
    SampleGroup2: TTntGroupBox;
    FontSamplePanel: TTntPanel;
    N15: TTntMenuItem;
    LanguageMenuItem: TTntMenuItem;
    CharPreviewGridLinesCheck: TTntCheckBox;
    TntXPMenu1: TTntXPMenu;
    ApplicationEvents1: TApplicationEvents;
    ImportExportToolBarMenuItem: TTntMenuItem;
    ShowDefaultHelpMenuItem: TTntMenuItem;
    N17: TTntMenuItem;
    TipofthedayMenuItem: TTntMenuItem;
    AutoextendLCDWidthCheck: TTntCheckBox;
    AutoextendLCDHeightCheck: TTntCheckBox;
    QuickExportMenuItem: TTntMenuItem;
    N18: TTntMenuItem;
    RotatePageMenuItem: TTntMenuItem;
    RotatePage90CWMenuItem: TTntMenuItem;
    RotatePage90CCWMenuItem: TTntMenuItem;
    N19: TTntMenuItem;
    UpdateCursorStatusTimer: TTimer;
    CharLibPathLabel: TTntLabel;
    Bevel10: TBevel;
    Bevel9: TBevel;
    Bevel11: TBevel;
    Bevel12: TBevel;
    Bevel13: TBevel;
    Bevel14: TBevel;
    ButtonGlyphs32: TImageList;
    SaveDesignDialog: TTntSaveDialog;
    OpenDesignDialog: TTntOpenDialog;
    QuickHelpMenuItem: TTntMenuItem;
    StatusBarMenuItem: TTntMenuItem;
    DefaultHelpLanguageMenuItem: TTntMenuItem;
    N7: TTntMenuItem;
    CheckForUpdatesMenuItem: TTntMenuItem;
    LCDDesignerHomePageMenuItem: TTntMenuItem;
    CharLibOrganizerBtn: TTntSpeedButton;
    Bevel15: TBevel;
    RegistrationPanel: TTntPanel;
    EnglishRegLangBtn: TTntBitBtn;
    FarsiRegLangBtn: TTntBitBtn;
    Far8: TBevel;
    Far2: TImage;
    Far3: TImage;
    Far4: TImage;
    CUIDWord1: TEdit;
    CUIDWord2: TEdit;
    CUIDWord3: TEdit;
    CUIDWord4: TEdit;
    ACWord1: TEdit;
    ACWord2: TEdit;
    ACWord3: TEdit;
    ACWord4: TEdit;
    Far5: TImage;
    Far6: TImage;
    Far7: TImage;
    Label2: TLabel;
    Far1: TImage;
    En4: TLabel;
    En5: TLabel;
    En1: TLabel;
    En2: TBevel;
    En3: TLabel;
    En6: TImage;
    En7: TImage;
    En8: TImage;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    EnglishBtnBorderImage: TImage;
    FarsiBtnBorderImage: TImage;
    CharLibPreviewTimer: TTimer;
    ApplyAfterShowConfigTimer: TTimer;
    RUFLMenuSplitter: TTntMenuItem;
    LCDZoomPanel: TTntPanel;
    LCDZoomLabel: TTntLabel;
    ZoomTrackBar: TTrackBar;
    LCDGridLinesCheck: TTntCheckBox;
    TextLabel: TTntLabel;
    InputText: TTntDelayedComboBox;
    InputTextLTRBtn: TTntSpeedButton;
    InputTextRTLBtn: TTntSpeedButton;
    N8: TTntMenuItem;
    FullScreenMenuItem: TTntMenuItem;
    GeneralToolbar: TTntToolBar;
    NewToolBtn: TTntToolButton;
    OpenToolBtn: TTntToolButton;
    SaveToolBtn: TTntToolButton;
    TntToolButton44: TTntToolButton;
    PrintLCDToolBtn: TTntToolButton;
    TntToolButton6: TTntToolButton;
    CutToolBtn: TTntToolButton;
    CopyToolBtn: TTntToolButton;
    PasteToolBtn: TTntToolButton;
    ClearLCDToolBtn: TTntToolButton;
    TntToolButton26: TTntToolButton;
    ToolBarImages: TImageList;
    ImportExportToolBar: TTntToolBar;
    ImportPictureToolBtn: TTntToolButton;
    TntToolButton22: TTntToolButton;
    ExportLCDToolBtn: TTntToolButton;
    QuickExportToolBtn: TTntToolButton;
    DesignToolBar: TTntToolBar;
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
    ClearAllToolBtn: TTntToolButton;
    TntToolButton222: TTntToolButton;
    DesignToolBarMenuItem: TTntMenuItem;
    LCDHeightEdit: TAdvancedNumEdit;
    LCDWidthEdit: TAdvancedNumEdit;
    CustomizeToolBarPopupMenu: TTntPopupMenu;
    ToggleGeneralToolBarMenuItem: TTntMenuItem;
    ToggleDesignToolBarMenuItem: TTntMenuItem;
    ToggleImportExportToolBarMenuItem: TTntMenuItem;
    UndoToolBtn: TTntToolButton;
    RedoToolBtn: TTntToolButton;
    TntToolButton33: TTntToolButton;
    N16: TTntMenuItem;
    UndoMenuItem: TTntMenuItem;
    RedoMenuItem: TTntMenuItem;
    StandardSystemMenu1: TStandardSystemMenu;
    Label8: TLabel;
    Bevel1: TBevel;
    CaptionedToolBar: TTntToolBar;
    CharacterLibraryToolBtn: TTntToolButton;
    TntToolButton11: TTntToolButton;
    TextToLCDToolBtn: TTntToolButton;
    CodeToLCDToolBar: TTntToolBar;
    CodeToLCDToolBtn: TTntToolButton;
    TntToolButton111: TTntToolButton;
    CharactersListPopupMenu: TTntPopupMenu;
    EditInCharDesignerPopupMenuItem: TTntMenuItem;
    GeneralEditPopupMenu: TTntPopupMenu;
    GECutPopupMenuItem: TTntMenuItem;
    GECopyPopupMenuItem: TTntMenuItem;
    GEPastePopupMenuItem: TTntMenuItem;
    LicenseTimer: TTimer;
    LCDGrid: TMMAdvancedGrid;
    OldLCDGrid: TMMAdvancedGrid;
    TextToLCDGrid: TMMAdvancedGrid;
    CharPreviewGrid: TMMAdvancedGrid;
    N20: TTntMenuItem;
    FreeRotation1: TTntMenuItem;
    FRCWMenuItem: TTntMenuItem;
    FRCCWMenuItem: TTntMenuItem;
    N21: TTntMenuItem;
    SetFRAngleMenuItem: TTntMenuItem;
    SetRotationCentertoActiveCell1: TTntMenuItem;
    TntToolButton1: TTntToolButton;
    FRCCWToolBtn: TTntToolButton;
    FRCWToolBtn: TTntToolButton;
    SetFRAngleToolBtn: TTntToolButton;
    Image1: TImage;
    procedure CharacterLibraryPaneMenuItemClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LCDGridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure LCDGridClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure LCDGridKeyPress(Sender: TObject; var Key: Char);
    procedure LCDGridSelectionChanged(Sender: TObject; ALeft, ATop, ARight,
      ABottom: Integer);
    procedure RefreshCharacterLibraryMenuItemClick(Sender: TObject);
    procedure AboutMenuItemClick(Sender: TObject);
    procedure LCDGridLinesCheckClick(Sender: TObject);
    procedure ClearAllMenuItemClick(Sender: TObject);
    procedure ToggleSelectionMenuItemClick(Sender: TObject);
    procedure CharactersListBoxClick(Sender: TObject);
    procedure ShiftRightMenuItemClick(Sender: TObject);
    procedure ShiftLeftMenuItemClick(Sender: TObject);
    procedure SelectAllMenuItemClick(Sender: TObject);
    procedure RotateLCDRightMenuItemClick(Sender: TObject);
    procedure RotateLCDLeftMenuItemClick(Sender: TObject);
    procedure RotateSelRightMenuItemClick(Sender: TObject);
    procedure RotateSelLeftMenuItemClick(Sender: TObject);
    procedure CategoryFolderTreeViewFolderChange(Sender: TObject;
      Node: TTreeNode);
    procedure CharPreviewGridLinesCheckClick(Sender: TObject);
    procedure InsertCharAtCursorBtnClick(Sender: TObject);
    procedure CharacterSourceSettingsBtnClick(Sender: TObject);
    procedure InsertTextAtCursorBtnClick(Sender: TObject);
    procedure OpenDesignMenuItemClick(Sender: TObject);
    procedure SaveDesignMenuItemClick(Sender: TObject);
    procedure SaveDesignAsMenuItemClick(Sender: TObject);
    procedure NewDesignMenuItemClick(Sender: TObject);
    procedure ExportLCDMenuItemClick(Sender: TObject);
    procedure PrinterSetupMenuItemClick(Sender: TObject);
    procedure PrintLCDMenuItemClick(Sender: TObject);
    procedure ExitMenuItemClick(Sender: TObject);
    procedure DeleteMenuItemClick(Sender: TObject);
    procedure CutMenuItemClick(Sender: TObject);
    procedure CopyMenuItemClick(Sender: TObject);
    procedure PasteMenuItemClick(Sender: TObject);
    procedure LCDOptionsMenuItemClick(Sender: TObject);
    procedure ProgramOptionsMenuItemClick(Sender: TObject);
    procedure CharacterLibraryOrganizerMenuItemClick(Sender: TObject);
    procedure CharacterDesignerMenuItemClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NewToolBtnClick(Sender: TObject);
    procedure OpenToolBtnClick(Sender: TObject);
    procedure SaveToolBtnClick(Sender: TObject);
    procedure CutToolBtnClick(Sender: TObject);
    procedure CopyToolBtnClick(Sender: TObject);
    procedure PasteToolBtnClick(Sender: TObject);
    procedure ShiftLeftToolBtnClick(Sender: TObject);
    procedure ShiftRightToolBtnClick(Sender: TObject);
    procedure RotateLToolBtnClick(Sender: TObject);
    procedure RotateRToolBtnClick(Sender: TObject);
    procedure CharacterLibraryToolBtnClick(Sender: TObject);
    procedure GeneralToolBarMenuItemClick(Sender: TObject);
    procedure ToolbarsMenuItemClick(Sender: TObject);
    procedure InputTextKeyPress(Sender: TObject; var Key: Char);
    procedure LCD1Click(Sender: TObject);
    procedure CreateCharacterMenuItemClick(Sender: TObject);
    procedure CategoryCheckTreeViewClick(Sender: TObject);
    procedure CategoryCheckTreeViewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RotateSelDownMenuItemClick(Sender: TObject);
    procedure RotateSelUpMenuItemClick(Sender: TObject);
    procedure RotateLCDUpMenuItemClick(Sender: TObject);
    procedure RotateLCDDownMenuItemClick(Sender: TObject);
    procedure RotateUToolBtnClick(Sender: TObject);
    procedure RotateDToolBtnClick(Sender: TObject);
    procedure CharactersListBoxMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure LCDGridDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure LCDGridDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure CharacterLibrarySourceRadioClick(Sender: TObject);
    procedure LCDGridMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure LCDGridMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure LCDGridMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure LCDAnimatorMenuItemClick(Sender: TObject);
    procedure ImportPictureFileMenuItemClick(Sender: TObject);
    procedure ImportPictureLCDMenuItemClick(Sender: TObject);
    procedure FlipHorizontalMenuItemClick(Sender: TObject);
    procedure FlipVerticalMenuItemClick(Sender: TObject);
    procedure FlipHorizontalToolBtnClick(Sender: TObject);
    procedure FlipVerticalToolBtnClick(Sender: TObject);
    procedure ClearLCDToolBtnClick(Sender: TObject);
    procedure LCDGridExit(Sender: TObject);
    procedure ZoomTrackBarChange(Sender: TObject);
    procedure PreviewZoomTrackBarChange(Sender: TObject);
    procedure CharLibInternalSplitter1CanResize(Sender: TObject; var NewSize: Integer;
      var Accept: Boolean);
    procedure CharLibInternalSplitter1Moved(Sender: TObject);
    procedure CharacterLibraryPanelLeftSplitterCanResize(Sender: TObject; var NewSize: Integer;
      var Accept: Boolean);
    procedure RightControlBarGetSiteInfo(Sender: TObject;
      DockClient: TControl; var InfluenceRect: TRect; MousePos: TPoint;
      var CanDock: Boolean);
    procedure LeftControlBarGetSiteInfo(Sender: TObject;
      DockClient: TControl; var InfluenceRect: TRect; MousePos: TPoint;
      var CanDock: Boolean);
    procedure BottomControlBarGetSiteInfo(Sender: TObject;
      DockClient: TControl; var InfluenceRect: TRect; MousePos: TPoint;
      var CanDock: Boolean);
    procedure SystemFontsSourceRadioClick(Sender: TObject);
    procedure TextToLCDPaneMenuItemClick(Sender: TObject);
    procedure TextToLCDToolBtnClick(Sender: TObject);
    procedure TntSpeedButton6Click(Sender: TObject);
    procedure Bold1Click(Sender: TObject);
    procedure AllFontsComboChange(Sender: TObject);
    procedure FavoriteFontsComboChange(Sender: TObject);
    procedure AddToFavoriteFontsBtnClick(Sender: TObject);
    procedure RemoveFromFavoriteFontsBtnClick(Sender: TObject);
    procedure InputTextDelayedChange(Sender: TObject);
    procedure CharactersListBoxDblClick(Sender: TObject);
    procedure CharactersListBoxKeyPress(Sender: TObject; var Key: Char);
    procedure FavoriteFontsTabSheetShow(Sender: TObject);
    procedure AllFontsTabSheetShow(Sender: TObject);
    procedure CellSpaceBtnChange(Sender: TObject);
    procedure InsertTextAsLCDBtnClick(Sender: TObject);
    procedure RightToolPanelDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure LeftToolPanelDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure CharLibExpandBtnClick(Sender: TObject);
    procedure LeftToolPanelResize(Sender: TObject);
    procedure RightToolPanelResize(Sender: TObject);
    procedure CharacterLibraryPanelRightSplitterCanResize(Sender: TObject;
      var NewSize: Integer; var Accept: Boolean);
    procedure LCDGridMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure LCDGridMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FontSizeCombo1KeyPress(Sender: TObject; var Key: Char);
    procedure EditMenuItemClick(Sender: TObject);
    procedure LCDPicturePreviewMenuItemClick(Sender: TObject);
    procedure LCDPicturePreviewToolBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BottomSplitterCanResize(Sender: TObject;
      var NewSize: Integer; var Accept: Boolean);
    procedure CharacterLibraryPanelResize(Sender: TObject);
    procedure InputTextRTLBtnClick(Sender: TObject);
    procedure InputTextLTRBtnClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure LanguageMenuItemClick(Sender: TObject);
    procedure ImportPictureToolBtnClick(Sender: TObject);
    procedure CodeToLCDToolBtnClick(Sender: TObject);
    procedure ApplicationEvents1Deactivate(Sender: TObject);
    procedure ImportExportToolBarMenuItemClick(Sender: TObject);
    procedure ExportLCDToolBtnClick(Sender: TObject);
    procedure PrintLCDToolBtnClick(Sender: TObject);
    procedure ShowDefaultHelpMenuItemClick(Sender: TObject);
    procedure QuickExportToolBtnClick(Sender: TObject);
    procedure QuickExportMenuItemClick(Sender: TObject);
    procedure RotatePage90CWMenuItemClick(Sender: TObject);
    procedure RotatePage90CCWMenuItemClick(Sender: TObject);
    procedure RotatePage90CWToolBtnClick(Sender: TObject);
    procedure RotatePage90CCWToolBtnClick(Sender: TObject);
    procedure LCDMenuItemClick(Sender: TObject);
    procedure UpdateCursorStatusTimerTimer(Sender: TObject);
    procedure TopControlBarResize(Sender: TObject);
    procedure CharLibPathLabelMouseEnter(Sender: TObject);
    procedure CharLibPathLabelMouseLeave(Sender: TObject);
    procedure CharLibPathLabelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure StatusBarMenuItemClick(Sender: TObject);
    procedure DefaultHelpLanguageMenuItemClick(Sender: TObject);
    procedure LCDDesignerHomePageMenuItemClick(Sender: TObject);
    procedure CheckForUpdatesMenuItemClick(Sender: TObject);
    procedure CharLibOrganizerBtnClick(Sender: TObject);
    procedure ACWord1KeyPress(Sender: TObject; var Key: Char);
    procedure Far7Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Far5Click(Sender: TObject);
    procedure Far6Click(Sender: TObject);
    procedure FileMenuItemClick(Sender: TObject);
    procedure ViewMenuItemClick(Sender: TObject);
    procedure ToolsMenuItemClick(Sender: TObject);
    procedure HelpMenuItemClick(Sender: TObject);
    procedure LCDGridClick(Sender: TObject);
    procedure EnglishRegLangBtnClick(Sender: TObject);
    procedure FarsiRegLangBtnClick(Sender: TObject);
    procedure ApplicationEvents1ShortCut(var Msg: TWMKey;
      var Handled: Boolean);
    procedure ACWord1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ACWord1Enter(Sender: TObject);
    procedure CharactersListBoxMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure CharLibPreviewTimerTimer(Sender: TObject);
    procedure ApplyAfterShowConfigTimerTimer(Sender: TObject);
    procedure CharLibPathPanelResize(Sender: TObject);
    procedure LCDToolPanelResize(Sender: TObject);
    procedure CharactersListBoxMouseWheel(Sender: TObject;
      Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
      var Handled: Boolean);
    procedure CharPreviewPanelResize(Sender: TObject);
    procedure ClearAllToolBtnClick(Sender: TObject);
    procedure LCDGridDblClick(Sender: TObject);
    procedure FullScreenMenuItemClick(Sender: TObject);
    procedure DesignToolBarMenuItemClick(Sender: TObject);
    procedure LCDHeightEditMaskedChange(Sender: TObject);
    procedure DesignToolBarEndDock(Sender, Target: TObject; X, Y: Integer);
    procedure TopControlBarDockOver(Sender: TObject;
      Source: TDragDockObject; X, Y: Integer; State: TDragState;
      var Accept: Boolean);
    procedure ToggleGeneralToolBarMenuItemClick(Sender: TObject);
    procedure ToggleDesignToolBarMenuItemClick(Sender: TObject);
    procedure ToggleImportExportToolBarMenuItemClick(Sender: TObject);
    procedure CustomizeToolBarPopupMenuPopup(Sender: TObject);
    procedure UndoMenuItemClick(Sender: TObject);
    procedure RedoMenuItemClick(Sender: TObject);
    procedure UndoToolBtnClick(Sender: TObject);
    procedure RedoToolBtnClick(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure EditInCharDesignerPopupMenuItemClick(Sender: TObject);
    procedure CharactersListPopupMenuPopup(Sender: TObject);
    procedure SaveDesignDialogCanClose(Sender: TObject;
      var CanClose: Boolean);
    procedure GeneralEditPopupMenuPopup(Sender: TObject);
    procedure GECutPopupMenuItemClick(Sender: TObject);
    procedure GECopyPopupMenuItemClick(Sender: TObject);
    procedure GEPastePopupMenuItemClick(Sender: TObject);
    procedure CategoryFolderTreeViewKeyPress(Sender: TObject;
      var Key: Char);
    procedure LicenseTimerTimer(Sender: TObject);
    procedure RegistrationPanelMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure TntFormResize(Sender: TObject);
    procedure SetRotationCentertoActiveCell1Click(Sender: TObject);
    procedure SetFRAngleMenuItemClick(Sender: TObject);
    procedure FRCWMenuItemClick(Sender: TObject);
    procedure SetFRAngleToolBtnClick(Sender: TObject);
    procedure FRCCWToolBtnClick(Sender: TObject);
    procedure FRCWToolBtnClick(Sender: TObject);
  private
    { Private declarations }
    LastCategoryFolder: String;
    OldCharLibPanelSize: TPoint;
    InsertTextAsWholeLCD: Boolean;
    SpaceFill: Boolean;
    BeforeDragSelection: TGridRect;
    DropCell: TPoint;

    //The OldLCDSelection variable is updated in the
    // UpdateLCDSelectionStatusPanel procedure and is used to prevent changing
    // the Selection property when the user zooms in and out using
    // Ctrl + MouseWheelUp/Down.
    OldLCDSelection: TGridRect;

//    RightButtonSelection:TGridRect;
//    RightButtonSelectionActive:Boolean;
    AdjustingLCDCellSpace: Boolean;
    OldWindowRect: TWindowRect;
    LoadingConfig: Boolean;
    TyperModules: array of HMODULE;
    SaveCategoryDialog1: TSaveCategoryDialog;

    HaltIfInvalidState: Boolean;
    ISPrevSNEdit: Boolean;

    CategoryListRefreshedAtStartup: Boolean;
    ///////////////////////////////////////////////////////////
    IsCompatible: TIsCompatible;
    GetVersion: TGetVersion;
    TypeChar: TTypeChar;
    ///////////////////////////////////////////////////////////

    MainFormActualSizeConstraints: TRect;

    LastPreviewFile: String;
    CharLibCharListWheelEvent: Boolean;  //Used to preview the character under the mouse when user scrolls the list by using mouse wheel button

    //Recently used file list
    RUFL: TStringList;
    RUFLLastOpenedFile: String;

    //Design history
    LCDHistory: TLCDHistory;

    //License
    LicenseWasValid: Boolean;

    //The IgnoreThisClick variable is used in the MouseMove event of the LCDGrid
    // to prevent setting the cell color under the mouse after opening a deign
    // using open dialog, because if the mouse is on a cell of the LCD grid, and
    // the user selects the file by dblclicking on it, this unwanted action will
    // occur. This variable is automaticaly set to False when an OnMouseMove
    // event of the LCD grid occurs which won't cause any undesirable action.
    IgnoreThisClick: Boolean;

    //Toolbars state
    ToolbarsState: array[1..3] of Boolean;       //1: GeneralToolBar
                                                 //2: DesignToolBar
                                                 //3: ImportExportToolBar
    //Multilanguage
    ToolBarCaptions: array[1..3] of WideString;  //1: GeneralToolBar
                                                 //2: DesignToolBar
                                                 //3: ImportExportToolBar

    procedure SetDynamicTexts(LangInstance: THandle);
    procedure SetMessageDlgCaptions;
    procedure SetToolbarCaptions;
    ///////////////

    procedure OnCaptionChanged;

    procedure RefreshCategoryList;
    procedure RestoreTreeViewPath(AFolderTreeView: TMMFolderTreeView; const TreePath: String);

    procedure WindowMove(var msg: TWMMove); message WM_MOVE;
    procedure WindowSize(var msg: TWMSize); message WM_SIZE;

    procedure LCDTrim(LCD: TAdvStringGrid; DrawingCanvas: TCanvas; DrawingText: String); overload;
    procedure LCDTrim(LCD: TAdvStringGrid; Birmap: TBitmap32; DrawingText: String); overload;
    {$HINTS OFF}
    function NormalizeGridRect(GridRect: TGridRect):TGridRect;
    {$HINTS ON}

    procedure PrepareFontSectionControls;
    procedure ApplyFontSectionSettings;

    procedure InitializeTyperModules;
    procedure PrepareInsertTextButtons(NewActivePage: TTabSheet);

    function ValidateConfiguration(AGlobalOptions: TGlobalOptions; FixProblems: Boolean): Boolean;

    procedure SetCharLibBtnExpandGlyph;
    procedure SetCharLibBtnCollapseGlyph;

    procedure ProcessExtraKeyboardShortcuts(var Key: Word; Shift: TShiftState);

    procedure LoadRuntimeDefaultConfig(var ARuntimeGlobalOptions: TRuntimeGlobalOptions);

    procedure SetInsertBtnRightGlyph;
    procedure SetInsertBtnLeftGlyph;

    procedure RepaintCell(ACol, ARow: Integer);

    procedure RUFLMenuItemClicked(Sender: TObject);

    procedure PrepareRegistrationPanelView;
    procedure ApplyLicenseStatus(Enabled: Boolean);

    procedure UpdateCharLibPathLabel;

    procedure WriteInstallDirRegistryEntry(WriteValues: Boolean);

    procedure CharLibPanelPlaceChanged;

    procedure DoLCDClearCell(ForceClear: Boolean);

    procedure RestoreDefaultToolbarPositions; 
  public
    { Public declarations }
    GlobalOptions: TGlobalOptions;
//    StartupGlobalOptions: TGlobalOptions;
    RuntimeGlobalOptions: TRuntimeGlobalOptions;
    LCDOptions: TLCDOptions;
    WorkingDesignFileName: String;
    WorkingDesignIsReadOnly: Boolean;
    WorkingDesignUntitledCount: Integer;
//    WorkingDesignChanged: Boolean;
    UntitledDesignFile: Boolean;

    //Multilanguage
    //Dyn_Texts of the MainForm is public and may be used by other units of the
    // project for global strings.
    Dyn_Texts: array[1..DYNAMIC_TEXTS_COUNT] of WideString;
    ControlsFlipped: Boolean;
    ///////////////

    procedure GetCategoryCharacters(const CategoryPath: String;
      CharacterList: TStringList; const CharacterExtension: String = '.chr');
    procedure GetAllCategoriesCharacters(CharacterList: TStringList);  //Not used in this version
    procedure ToggleCellColor(ALCDGrid: TAdvStringGrid; ACol, ARow: Integer);
    procedure SetCellColor(ALCDGrid: TAdvStringGrid; ACol, ARow: Integer;
      Filled: Boolean; UseGlobalColors: Boolean = True; ALCDFilledColor: TColor = clBlue;
      ALCDClearedColor: TColor = clWhite);

    function ReadCategoryCharacter(ALCDGrid: TAdvStringGrid;
      const CategoryName, CharacterName: String):Boolean;
    procedure ColorizeLCDGrid(ALCDGrid: TAdvStringGrid; FilledColor,
      ClearedColor: TColor; ClearText: Boolean = True);
    procedure InsertCharAtCursor(ACharGrid: TAdvStringGrid;
      ALCDGrid: TAdvStringGrid; InsertionRow, InsertionCol: Integer;
      OnlySelection: Boolean = False);
    function GetFullCharacterFileList(const RootFolder: String;
      FullList: TStringList):Boolean;
    function ConvertTextToLCD(const Text: WideString; AGrid: TStringGrid;
      ErrorLogList: TTntStrings):Boolean;
    function SaveLCDDesignToFile(ALCDGrid: TAdvStringGrid;
      const FName: String): Boolean;
    function LoadLCDDesignFromFile(ALCDGrid: TAdvStringGrid;
      const FName: String): Boolean;
    procedure UpdateLCDColors(ALCDGrid: TAdvStringGrid;
      OldFilledColor, NewFilledColor, OldClearedColor, NewClearedColor: TColor);
    procedure ApplyLCDOptions(const OldLCDOptions: TLCDOptions);
    procedure ApplyProgramOptions(OldProgramOptions,
      NewProgramOptions: TGlobalOptions);
    function GetCharacterLibraryFullPath:String;

    procedure ReadProgramSettings;
    procedure LoadDefaultConfig(var AGlobalOptions: TGlobalOptions);
    procedure ApplyStartupConfig;
    procedure ApplyStartupOnShowConfig;
    procedure ApplyStartupAfterShowConfig;
    procedure WriteProgramSettings(WriteIfChanged: Boolean = True);
    function WriteLanguageSettings(const LanguageInfo: TLanguageInfo;
      const LanguageOptions: TLanguageOptions; CreateRegKeys: Boolean): Boolean;
    procedure UpdateRealTimeRegistrySettings(
      RegistrySettingsKind: TRealTimeRegistrySettingsKind);

    procedure InitiateNewWorkingDesign(PurgeHistory: Boolean);
    function WorkingDesignChanged: Boolean;
    procedure UpdateLCDOptions;

    function CreateCharacterFromSelection(ALCDGrid: TAdvStringGrid): Boolean;
    procedure SaveLCDCharToFile(ALCDGrid: TAdvStringGrid; const FileName: String);

    procedure CheckAllSubNodes(Node: TTreeNode; Checked: Boolean);
    procedure UpdateParentNodes(TreeNodes: TTreeNodes);
    function IsTreeViewItemChecked(Item: TTreeNode): Boolean;
    function GetTreeViewNodeFullPath(Node: TTreeNode): String;
    procedure ToggleTreeViewCheckBoxes(Node: TTreeNode; cUnChecked, cChecked,
      cSemiChecked, cRadioUnchecked, cRadioChecked: Integer);

    procedure EnableEditShortcuts(ShortcutsEnabled: Boolean);
    procedure ClearLCDUndefinedColors(ALCDGrid: TAdvStringGrid;
      ClearedColor: TColor; const DefinedColors: array of TColor);

    procedure ProcessCommandLine;
    procedure UpdateMainFormCaption;

    procedure GetSelectedCategoriesList(ASelectedCatList: TStringList);
    procedure ApplySelectedCatList(ASelectedCatList: TStringList);

    function FindTreeViewNode(TreeNodes: TTreeNodes;
      const NodeFullPath: String): TTreeNode;

    function PerformTextToLCDFromCharacterLibrary(
      InsertTextAsWholeLCD: Boolean): Boolean;
    function PerformTextToLCDFromSystemFonts(
      InsertTextAsWholeLCD: Boolean): Boolean;
    procedure TextToLCD(const LCDText: WideString; LCDFont: TFont;
      LCD: TAdvStringGrid; OnlyGetSize: Boolean = False);
    procedure UpdateHxW(Font: TFont; HxWPanel: TTntPanel; Text: WideString);

    procedure OnLCDOptionsChanged;
    procedure ChangeLCDSize(NewWidth, NewHeight: Integer);

    procedure UpdateLCDSelectionStatusPanel;
    procedure UpdateLCDCursorPosStatusPanel(ACol, ARow: Integer);

    procedure InvertLCD(ALCD: TAdvStringGrid; OnlySelection: Boolean = False);
    procedure GetFontSettings(Font: TFont; var AFontSettings: TFontSettings);
    procedure SetFontSettings(Font: TFont; const AFontSettings: TFontSettings);
    procedure ApplyStaticStartupConfig;

    procedure LCDToBitmap(ALCD: TAdvStringGrid; ABitmap: TBitmap;
      OnlySelection: Boolean = False);
    procedure UpdateLCDPicturePreview;

    function TypeCharacter(PrevChar, MainChar, NextChar: WideChar;
      var RightToLeft: Boolean): WideChar;
    function MapCharacterToFilename(Character: WideChar;
      CharMapGrid: TAdvStringGrid; ReturnOnlyUserMappedName: Boolean): String;

    procedure ApplyLanguageOptions(Form: TTntForm; LanguageInfo: TLanguageInfo;
      LanguageOptions: TLanguageOptions);
    procedure ShowForm(Form: TTntForm; Visible: Boolean);
    procedure FlipSpinButtons(ParentControl: TWinControl;
      SpinEditClass: TComponentClass);
    function ReplaceInvalidUnicodeChars(const Str: WideString): WideString;
    procedure SetLanguage(LanguageInfo: TLanguageInfo;
      LanguageOptions: TLanguageOptions; LangInstance: THandle);

    function CheckLCDDesignFileFormat(const FName: String): Boolean;

    procedure PrintLCD(ShowPrintDialog: Boolean);
    procedure PrintGrid(AGrid: TAdvStringGrid; const PrintTitle: String);

    procedure AdvanceLCDCursor(ALCDGrid: TAdvStringGrid;
      AWidth, AHeight: Integer);

    procedure OnLCDChanged;

    procedure SetDefaultHelpLanguage(const HelpLanguage: String);

    procedure SetupApplicationCursors;

    procedure DisableAllMenuChanges(Disabled: Boolean);

    procedure RUFLAdd(const FullFileName: String);
    procedure RUFLRemove(const FullFileName: String;
      RebuildMenuItems: Boolean = True);
    procedure RUFLReadEntries;
    procedure RUFLWriteEntries;
    procedure RUFLBuildMenuItems;

    function CanProceedToOpenDesign(const DesignFileName: String): Boolean;
    function OpenDesignFile(const DesignFileName: String): Boolean;
    procedure WorkingOnNewDesignStarted(const OldFullFName,
      NewFullFName: String);

    function FitSelectionToLCD(ALCDGrid: TAdvStringGrid;
      const Selection: TGridRect): TGridRect;

    procedure AddToTextToLCDHisory(const AText: WideString);

    function OperationOnLCDAllowed: Boolean;

    procedure ClipboardChanged;

    procedure SaveToolBarsState(HideToolbars: Boolean);
    procedure RestoreToolBarsState;

    procedure AddNewHistoryState;
    procedure UndoLCD;
    procedure RedoLCD;
    procedure UpdateHistoryMadeChanges;

    function IsRegistryDataInitial: Boolean;

    function InformForReadOnlySelectedFile(const FName: String): Boolean;
    function PromptForFileReplace(const FileName,
      Extension {Format: .xxxx (is not case sensitive)}: WideString;
      ForceExtension: Boolean = False): Boolean;
    function DisplayFileSaveError(const FileName: String): Boolean;

    function GetDefaultFileName: String;

    procedure BitmapToLCD(Bitmap: TBitmap; ALCD: TAdvStringGrid; ACol, ARow: Integer);
  end;

function MapCharToFile(CharCode: WideChar;
  var CanBeMappedByUser: Boolean): ShortString; external 'CharMap.dll';

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

uses AboutFormUnit, StrUtils, LCDOptionsUnit, ProgramOptionsFormUnit,
  CharacterMapFormUnit, Math, GIFImage, Types, SpecialProcsUnit,
  LCDProcsUnit, FullScreenFormUnit, LCDPicturePreviewFormUnit, License2,
  License3, License4, License5, License6;

{$R *.dfm}

procedure TMainForm.CharacterLibraryPaneMenuItemClick(Sender: TObject);
begin
  if not (Sender as TMenuItem).Checked then
  begin
    CharacterLibraryPanel.Visible := False;
    LeftToolPanel.Align := alLeft;
    LeftToolPanel.Width := LeftToolPanel.Tag;
    RightToolPanel.Align := alRight;
    RightToolPanel.Width := RightToolPanel.Tag;
  end
  else
  begin
    CharacterLibraryPanel.Parent.Width := CharacterLibraryPanel.Width;
    if GlobalOptions.CharLibPanelCollapsed and (CharacterLibraryPanel.Parent.Align <> alNone) then
    begin
//      CharacterLibraryPanel.Parent.Hide;
      CharacterLibraryPanel.Parent.Align := alNone;
      CharacterLibraryPanel.Visible := True;
      CharLibExpandBtn.Click;
//      CharacterLibraryPanel.Parent.Show;
    end
    else
    begin
      CharacterLibraryPanel.Visible := True;
    end;
  end;
  CharacterLibraryToolBtn.Down := (Sender as TMenuItem).Checked;
  CharacterLibraryPanel.Visible := (Sender as TMenuItem).Checked;

  UpdateRealTimeRegistrySettings(rskCharLibOptions);
end;

procedure TMainForm.FormCreate(Sender: TObject);

  function GetEncryptedExeName: String;
  var
    i: Integer;
    S: String;
  begin
    Result := 'dd';
    for i:=1 to Length(Result) do
      Result[i] := Result[i];
    Result := 'lcd      ';
    S := 'design';
    for i := 1 to Length(S) do
      Result[i + 3] := S[i];
    Result := Result + 'er.exe';
    Result[2] := 'f';
    Result[3] := 'g';
    Insert(Copy(Result, 12, 4), Result, 4);
    Delete(Result, 8, Length(Result) - 7);
  end;

var
  BoolTemp: Boolean;
  Word1, Word2, Word3, Word4: String;
begin
  //License
  LicenseWasValid := False;

  RuntimeGlobalOptions.FirstUserRun := False;

  if (Win32Platform = VER_PLATFORM_WIN32s) or
     (Win32Platform = VER_PLATFORM_WIN32_WINDOWS) then
  begin
    //This windows version is a windows older than NT (and maybe not unicode)
  end;

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

  with MainFormActualSizeConstraints do
  begin
    Left := Self.Constraints.MinWidth;
    Right := Self.Constraints.MaxWidth;
    Top := Self.Constraints.MinHeight;
    Bottom := Self.Constraints.MaxHeight;
  end;

  CategoryListRefreshedAtStartup := False;

  HaltIfInvalidState := False;
  En3.Caption := 'Dear customer,' + Chr(13) + Chr(13) + 'We appreciate your choice of the ' +
    'best LED and LCD font designer software available on the market and we ensure you that ' +
    'the ' + SOFTWARE_NAME + ' with its powerful features will satisfy your LED and LCD font ' +
    'designing needs.' + Chr(13) + Chr(13) + 'The license of this product is multi users/single ' +
    'computer. To register the product and get the Activation Code for a multi users/single ' +
    'computer license, contact us.' + #13#13 + 'Please note that the Activation Code only is ' +
    'valid for one computer system and you can''t reinstall the software on another computer.';

  //Set class type of the floating windows of the toolbars to a windows class that supports unicode
  GeneralToolbar.FloatingDockSiteClass := TTntToolDockForm;
  DesignToolBar.FloatingDockSiteClass := TTntToolDockForm;
  ImportExportToolBar.FloatingDockSiteClass := TTntToolDockForm;
  //////////////////

  SaveCategoryDialog1 := TSaveCategoryDialog.Create(Self);
  with SaveCategoryDialog1 do
  begin
    DefaultIsCharacterLibrary := True;
    AllowCharacterLibrary := True;
    OverwritePrompt := True;
    CharacterFileExtension := '.chr';
  end;

  //LCD history
  LCDHistory := TLCDHistory.Create(0);
  LCDHistory.Grid := LCDGrid;

  CharLibPathLabel.Caption := '';
  OldCharLibPanelSize.X := 0;  //Not initialized
  OldCharLibPanelSize.Y := 0;

  InsertTextAsWholeLCD := False;

//  RightButtonSelectionActive:=False;
  ApplicationPath := ExtractFilePath(Application.ExeName);
  if LowerCase(ExtractFileName(Application.ExeName)) <> GetEncryptedExeName then
  begin
    {Silent}
    Halt;
    Exit;
  end;

  CategoryFolderTreeView.CancelTitle := '';
  CategoryFolderTreeView.CancelDescription := 'Loading Character Library...' + #13 + 'Press Cancel to cancel the operation.';
  CategoryFolderTreeView.CancelDialog.CancelCaption := 'Cancel';
  {-------------------------------------------------}

  SetupApplicationCursors;

  LoadRuntimeDefaultConfig(RuntimeGlobalOptions);
  ApplyStaticStartupConfig;
  try
    ReadProgramSettings;
  except
    WideMessageDlgSoundTop(Dyn_Texts[4], mtError, [mbOK], 0);
    LoadDefaultConfig(GlobalOptions);
    ApplyStartupConfig;
  end;

  WriteInstallDirRegistryEntry(False);  //Only check if this is the first time the user runs the program (don't write any values)

//  StartupGlobalOptions:=GlobalOptions;

  if not CategoryListRefreshedAtStartup then
    RefreshCategoryList;
  CharacterLibraryTopPanel.Height := GlobalOptions.CharLibTopPanelHeight;
//  RestoreTreeViewPath(CategoryFolderTreeView, LastCategoryFolder);
//  ClearLCD(CharPreviewGrid);

  BoolTemp := GlobalOptions.NewDesignDialog;
  GlobalOptions.NewDesignDialog := False;
  InitiateNewWorkingDesign(True);
  WorkingDesignUntitledCount := 0;
  NewDesignMenuItem.Click;
  GlobalOptions.NewDesignDialog := BoolTemp;

  CharPreviewGrid.RowHeights[CharPreviewGrid.RowCount - 1] := 0;

{  TextToLCDPanel.Align := alNone;
  BottomSplitter.Align := alNone;
  TextToLCDPanel.Align := alBottom;
  BottomSplitter.Align := alBottom;}

  InitializeTyperModules;

  CharPreviewGridStatusBar.SimpleText := '';
  //Update status bar here, after all language dynamic texts are set
  UpdateLCDSelectionStatusPanel;

  //License
  RegistrationPanel.Top := 0;
  LicenseWasValid := License3.CheckLicenseStatus;
  if not License2.CheckLicenseStatus then
  begin
    Self.Width := 800;
    Self.Height := 620;
    Procs.SetWindowPosition(Self, poDesktopCenter, True);

    License.GenerateCUID(Word1, Word2, Word3, Word4);
    CUIDWord1.Text := Word1;
    CUIDWord2.Text := Word2;
    CUIDWord3.Text := Word3;
    CUIDWord4.Text := Word4;

    PrepareRegistrationPanelView;
    RegistrationPanel.Visible := True;
    HaltIfInvalidState := True;
    FarsiRegLangBtn.Click;
    ApplyLicenseStatus(False);
  end
  else
    ProcessCommandLine;
end;

procedure TMainForm.LCDGridSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  if (LCDGrid.Col + 1) < LCDGrid.ColCount then
    LCDGrid.RepaintCell(LCDGrid.Col + 1, LCDGrid.Row);  //TAdvStringGrid has a painting problem when GridLineWidth is bigger than 6

  CanSelect := not(ARow = LCDGrid.RowCount - 1);  //Because of TAdvStringGrid
  if CanSelect then
    UpdateLCDSelectionStatusPanel;
  UpdateLCDCursorPosStatusPanel(ACol, ARow);
end;

procedure TMainForm.ToggleCellColor(ALCDGrid: TAdvStringGrid; ACol,
  ARow: Integer);
begin
  if ALCDGrid.Colors[ACol, ARow] = LCDOptions.LCDFilledColor then
    SetCellColor(ALCDGrid, ACol, ARow, False)
  else
    SetCellColor(ALCDGrid, ACol, ARow, True);
end;

procedure TMainForm.SetCellColor(ALCDGrid: TAdvStringGrid; ACol, ARow: Integer;
  Filled: Boolean; UseGlobalColors: Boolean = True;
  ALCDFilledColor: TColor = clBlue; ALCDClearedColor: TColor = clWhite);
var
  FilledColor, ClearedColor, GradientColor: TColor;
  FilledCTValue: TColor;
begin
  if UseGlobalColors then
  begin
    //Don't use LCDProcs.SetCellColor because of performance issues when operating on big LCD grids
    //LCDProcs.SetCellColor(ALCDGrid, ACol, ARow, Filled, LCDOptions.LCDFilledColor,
    //                      LCDOptions.LCDClearedColor, LCDOptions.LCDUseSolidColors);
    FilledColor := LCDOptions.LCDFilledColor;
    ClearedColor := LCDOptions.LCDClearedColor;
    GradientColor := LCDOptions.LCDGradientColor;
  end
  else
  begin
    //Don't use LCDProcs.SetCellColor to be same as above (no performance issue is applicable here because we calculate the gradient color every time)
    //LCDProcs.SetCellColor(ALCDGrid, ACol, ARow, Filled, ALCDFilledColor,
    //                      ALCDClearedColor, LCDOptions.LCDUseSolidColors);
    FilledColor := ALCDFilledColor;
    ClearedColor := ALCDClearedColor;
    GradientColor := LCDProcs.CalculateLCDGradientColor(FilledColor, ClearedColor);
  end;
  if LCDOptions.LCDUseSolidColors then
    FilledCTValue := FilledColor
  else
    FilledCTValue := GradientColor;

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

  if (ALCDGrid = LCDGrid) and Assigned(LCDPicturePreviewForm) then
    LCDPicturePreviewForm.Tag := 1;  //Dirty
end;

procedure TMainForm.LCDGridClickCell(Sender: TObject; ARow, ACol: Integer);
begin
  IgnoreThisClick := True;
  if Procs.KeyDown(VK_SHIFT) then
    Exit
  else if LCDOptions.CTRLClickToggle then
  begin
    if Procs.KeyDown(VK_CONTROL) then
      ToggleCellColor(LCDGrid, ACol, ARow);
  end
  else if Procs.KeyDown(VK_MENU) then  //Shift and Ctrl keys are not hold down
    GlobalOptions.FreeRotationCenter := Point(ACol, ARow)
  else if not Procs.KeyDown(VK_CONTROL) then
    ToggleCellColor(LCDGrid, ACol, ARow);
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
        if LCDGrid.Colors[Col, Row] = LCDOptions.LCDFilledColor then
          Inc(FilledCount)
        else
          Inc(UnFilledCount);
    if FilledCount <> UnFilledCount then
      SpaceFill := UnFilledCount > FilledCount;
  end;
  if Key = ' ' then
  begin
    LCDGrid.BeginUpdate;
    try
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

procedure TMainForm.RefreshCategoryList;
var
  i: Integer;
  SelectedCatList: TStringList;
  OldSelectedNodePath1, OldselectedNodePath2: String;
begin
  CharLibPathLabel.Caption := '';
  try

  Enabled := False;

  OldSelectedNodePath1 := LastCategoryFolder;
  OldselectedNodePath2 := CategoryCheckTreeView.SelectedFolderFullPath;

  SelectedCatList := TStringList.Create;
  if not(asLoading in ApplicationState) then  //If in loading stage, don't apply the list because it is applied form the program settings while creating the form in the ReadProgramSettings procedure
    GetSelectedCategoriesList(SelectedCatList);

  CategoryFolderTreeView.Items.Clear;
  CategoryCheckTreeView.Items.Clear;

  CharactersListBox.Items.Clear;

  CategoryFolderTreeView.Root := GetCharacterLibraryFullPath;
  CategoryFolderTreeView.RefreshFolderTree;

  CategoryCheckTreeView.Root := GetCharacterLibraryFullPath;
  CategoryCheckTreeView.Items.Assign(CategoryFolderTreeView.Items);

  CategoryListRefreshedAtStartup := True;

  for i := 0 to CategoryCheckTreeView.Items.Count-1 do
//    if CategoryCheckTreeView.Items[i].getFirstChild = nil then
      CategoryCheckTreeView.Items[i].StateIndex := cFlatUnCheck;

  if not(asLoading in ApplicationState) then  //If in loading stage, don't apply the list because it is applied form the program settings while creating the form in the ReadProgramSettings procedure
    ApplySelectedCatList(SelectedCatList);
  SelectedCatList.Free;
//  CategoryCheckTreeView.FullExpand;
  if CategoryFolderTreeView.Items.Count > 0 then
  begin
    RestoreTreeViewPath(CategoryFolderTreeView, OldSelectedNodePath1);
    RestoreTreeViewPath(CategoryCheckTreeView, OldSelectedNodePath2);
  end;

  Enabled := True;

  except

    Enabled := True;

    CategoryFolderTreeView.Items.Clear;
    CategoryCheckTreeView.Items.Clear;
  end;
end;

procedure TMainForm.RefreshCharacterLibraryMenuItemClick(Sender: TObject);
begin
  if not CharacterLibraryPaneMenuItem.Checked then
  begin
    CharacterLibraryPaneMenuItem.Checked := True;
    CharacterLibraryPaneMenuItem.OnClick(CharacterLibraryPaneMenuItem);
  end;
  RefreshCategoryList;
end;

procedure TMainForm.GetCategoryCharacters(const CategoryPath: String;
  CharacterList: TStringList; const CharacterExtension: String);
var
  FSR: TSearchRec;
begin
  //CharacterExtension = '.x'
  //e.g. '.chr'
  CharacterList.Clear;
  if FindFirst(CategoryPath + '\*' + CharacterExtension, faAnyFile,FSR) = 0 then
  begin
    repeat
      if ((FSR.Attr and faDirectory) = 0) and
         ((FSR.Attr and faSysFile) = 0) and
         ((FSR.Attr and faVolumeID) = 0) and
         ((FSR.Attr and faSymLink) = 0) then
        CharacterList.Append(Copy(FSR.Name, 1, Length(FSR.Name) - 4));
    until FindNext(FSR) <> 0;
  end;
  FindClose(FSR);
end;

procedure TMainForm.GetAllCategoriesCharacters(CharacterList: TStringList);
begin
//Not used in this version
end;

procedure TMainForm.AboutMenuItemClick(Sender: TObject);
begin
  if asLoading in ApplicationState then
    Exit;

  AboutForm.ShowModal;
end;

procedure TMainForm.LCDGridLinesCheckClick(Sender: TObject);
begin
  GlobalOptions.ShowLCDGridLines := (Sender as TTntCheckBox).Checked;
  if (Sender as TTntCheckBox).Checked then
    //LCDGrid.Options := LCDGrid.Options + [goVertLine, goHorzLine]
    LCDGrid.GridLineColor := LCDOptions.LCDGridColor
  else
    //LCDGrid.Options := LCDGrid.Options - [goVertLine, goHorzLine];
    LCDGrid.GridLineColor := LCDGrid.Color;

  UpdateRealTimeRegistrySettings(rskLCDGlobalOptions);
end;

procedure TMainForm.ClearAllMenuItemClick(Sender: TObject);
begin
  if OperationOnLCDAllowed then
  begin
    LCDProcs.ClearLCD(LCDGrid, LCDOptions.LCDClearedColor);
    OnLCDChanged;
  end;
end;

procedure TMainForm.ToggleSelectionMenuItemClick(Sender: TObject);
begin
{  if (Screen.ActiveControl is TCustomEdit) or
     (Screen.ActiveControl is TCustomCombo) or
     (Screen.ActiveControl is TCustomMultiSelectListControl) then
    Screen.ActiveControl.Perform(WM_CHAR, VK_SPACE, 0)}
  if OperationOnLCDAllowed then
  begin
    InvertLCD(LCDGrid, True);
    OnLCDChanged;
  end;
end;

function TMainForm.ReadCategoryCharacter(ALCDGrid: TAdvStringGrid;
  const CategoryName, CharacterName: String): Boolean;
var
  FName: String;
begin
  FName := GlobalOptions.LibraryPath + '\' + CategoryName + '\' + CharacterName + '.chr';
  if FileExists(FName) then
  begin
    ALCDGrid.RowCount := 2;
    ALCDGrid.ColCount := 1;
    ALCDGrid.RowHeights[1] := 0;
    Result := True;
    try
      ALCDGrid.LoadFromCSV(FName);
    except
      Result := False;
    end;
    ALCDGrid.DefaultRowHeight := ALCDGrid.DefaultRowHeight;
    ALCDGrid.RowHeights[ALCDGrid.RowCount - 1] := 0;
    ColorizeLCDGrid(ALCDGrid, LCDOptions.LCDFilledColor, LCDOptions.LCDClearedColor);
    LCDProcs.CheckLCDScrollBars(ALCDGrid);
  end
  else
    Result := False;
end;

procedure TMainForm.CharactersListBoxClick(Sender: TObject);
begin
  InsertCharAtCursorBtn.Enabled := CharactersListBox.ItemIndex >= 0;
  if CharactersListBox.ItemIndex >= 0 then
  begin
    RuntimeGlobalOptions.CharPreviewGridCleared := False;
    if not ReadCategoryCharacter(CharPreviewGrid, CategoryFolderTreeView.SelectedFolderFullPath, CharactersListBox.Items.Strings[CharactersListBox.ItemIndex]) then
      //WideShowMessageSoundTop('Error in reading the character file ''' + CharactersListBox.Items.Strings[CharactersListBox.ItemIndex] + '''.')
      CharactersListBox.Items.Delete(CharactersListBox.ItemIndex)
    else
    begin
      LCDProcs.CheckLCDScrollBars(CharPreviewGrid);
      CharPreviewGridStatusBar.SimpleText := WideFormat('%s : %d x %d', [CharactersListBox.Items.Strings[CharactersListBox.ItemIndex], CharPreviewGrid.RowCount - 1, CharPreviewGrid.ColCount]);
    end;
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
        SetCellColor(ALCDGrid, Col, Row, True)
      else
        SetCellColor(ALCDGrid, Col, Row, False);
      if ClearText then
        ALCDGrid.Cells[Col, Row] := '';
    end;
end;

procedure TMainForm.ShiftRightMenuItemClick(Sender: TObject);
var
  CursorCol: Integer;
begin
  if OperationOnLCDAllowed then
  begin
    CursorCol := LCDGrid.Selection.Left;
    if CursorCol = (LCDGrid.ColCount - 1) then
    begin
      WideShowMessageSoundTop(Dyn_Texts[5] {'Cannot shift right at the right side of the design.'});
      Exit;
    end;
    LCDProcs.ShiftAtCursorRight(LCDGrid, LCDOptions.LCDClearedColor);

    OnLCDChanged;
  end;
end;

procedure TMainForm.ShiftLeftMenuItemClick(Sender: TObject);
var
  CursorCol: Integer;
begin
  if OperationOnLCDAllowed then
  begin
    CursorCol := LCDGrid.Selection.Left;
    if CursorCol = 0 then
    begin
      WideShowMessageSoundTop(Dyn_Texts[6] {'Cannot shift left at the left side of the design.'});
      Exit;
    end;
    LCDProcs.ShiftAtCursorLeft(LCDGrid, LCDOptions.LCDClearedColor);

    OnLCDChanged;
  end;
end;

procedure TMainForm.SelectAllMenuItemClick(Sender: TObject);
begin
  if (Screen.ActiveControl is TCustomEdit) or
     (Screen.ActiveControl is TCustomCombo) then
    SendMessage(Screen.ActiveControl.Handle, EM_SETSEL, 0, -1)  //Select all the text
  else if OperationOnLCDAllowed then
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

    UpdateLCDSelectionStatusPanel;
  end;
end;

procedure TMainForm.RotateLCDRightMenuItemClick(Sender: TObject);
var
  OldSelection: TGridRect;
begin
  OldSelection := LCDGrid.Selection;
  LCDGrid.SelectRows(0, LCDGrid.RowCount - 1);
  LCDProcs.RotateSelectionRight(LCDGrid);
  LCDGrid.Selection := OldSelection;
  OnLCDChanged;
end;

procedure TMainForm.RotateLCDLeftMenuItemClick(Sender: TObject);
var
  OldSelection: TGridRect;
begin
  OldSelection := LCDGrid.Selection;
  LCDGrid.SelectRows(0, LCDGrid.RowCount - 1);
  LCDProcs.RotateSelectionLeft(LCDGrid);
  LCDGrid.Selection := OldSelection;
  OnLCDChanged;
end;

procedure TMainForm.RotateSelRightMenuItemClick(Sender: TObject);
begin
  if OperationOnLCDAllowed then
  begin
    LCDProcs.RotateSelectionRight(LCDGrid);
    OnLCDChanged;
  end;
end;

procedure TMainForm.RotateSelLeftMenuItemClick(Sender: TObject);
begin
  if OperationOnLCDAllowed then
  begin
    LCDProcs.RotateSelectionLeft(LCDGrid);
    OnLCDChanged;
  end;
end;

procedure TMainForm.CategoryFolderTreeViewFolderChange(Sender: TObject;
  Node: TTreeNode);
var
  List: TStringList;
  CategoryPath: String;
  LastSelectedChar: String;
begin
  //************************************
  if not License3.CheckLicenseStatus then
    Exit;
  //************************************

  if LastCategoryFolder = CategoryFolderTreeView.SelectedFolderFullPath then
  begin
    if CharactersListBox.ItemIndex >= 0 then
      LastSelectedChar := CharactersListBox.Items.Strings[CharactersListBox.ItemIndex]
    else
      LastSelectedChar := '';
  end
  else
  begin
    LastSelectedChar := '';
    LastCategoryFolder := CategoryFolderTreeView.SelectedFolderFullPath;
  end;

  CategoryPath := CategoryFolderTreeView.Root + '\' + CategoryFolderTreeView.SelectedFolderFullPath;
  if DirectoryExists(CategoryPath) then
  begin
    List := TStringList.Create;
    GetCategoryCharacters(CategoryPath, List);
    CharactersListBox.Items.Assign(List);
    List.Free;
    if CharactersListBox.Items.Count > 0 then
    begin
      if CharactersListBox.Items.IndexOf(LastSelectedChar) >= 0 then
        CharactersListBox.ItemIndex := CharactersListBox.Items.IndexOf(LastSelectedChar)
      else
        CharactersListBox.ItemIndex := 0;
      if Assigned(CharactersListBox.OnClick) then
        CharactersListBox.OnClick(CharactersListBox);
    end;
    UpdateCharLibPathLabel;
  end;
  InsertCharAtCursorBtn.Enabled := CharactersListBox.ItemIndex >= 0;
end;

procedure TMainForm.CharPreviewGridLinesCheckClick(Sender: TObject);
begin
  if (Sender as TTntCheckBox).Checked then
    CharPreviewGrid.Options := CharPreviewGrid.Options + [goVertLine, goHorzLine]
  else
    CharPreviewGrid.Options := CharPreviewGrid.Options - [goVertLine, goHorzLine];

  UpdateRealTimeRegistrySettings(rskCharLibOptions);
end;

procedure TMainForm.InsertCharAtCursor(ACharGrid, ALCDGrid: TAdvStringGrid;
  InsertionRow, InsertionCol: Integer; OnlySelection: Boolean);
var
  Row, Col: Integer;
  RowLength, ColLength: Integer;
  CharArea: TGridRect;
  CharWidth, CharHeight: Integer;
begin
  if OnlySelection then
    CharArea := ACharGrid.Selection
  else
  begin
    CharArea.Left := 0;
    CharArea.Top := 0;
    CharArea.Right := ACharGrid.ColCount - 1;
    CharArea.Bottom := ACharGrid.RowCount - 2;  //Minus 2 because of TAdvStringGrid
  end;

  CharWidth := CharArea.Right - CharArea.Left + 1;
  CharHeight := CharArea.Bottom - CharArea.Top + 1;

  RowLength := ALCDGrid.ColCount - InsertionCol;
  if RowLength > CharWidth then
    RowLength := CharWidth;

  ColLength := ALCDGrid.RowCount - 1 - InsertionRow;
  if ColLength > CharHeight then
    ColLength := CharHeight;

  for Row := InsertionRow to InsertionRow + ColLength - 1 do
    for Col := InsertionCol to InsertionCol + RowLength - 1 do
    begin
      ALCDGrid.Colors[Col, Row] := ACharGrid.Colors[Col - InsertionCol + CharArea.Left, Row - InsertionRow + CharArea.Top];
      ALCDGrid.ColorsTo[Col, Row] := ACharGrid.ColorsTo[Col - InsertionCol + CharArea.Left, Row - InsertionRow + CharArea.Top];
    end;

  //----------------------
  if ALCDGrid = LCDGrid then
  begin
    AddNewHistoryState;
    UpdateLCDPicturePreview;
  end;
  //----------------------
end;

procedure TMainForm.InsertCharAtCursorBtnClick(Sender: TObject);
begin
  if CharactersListBox.ItemIndex >= 0 then
  begin
    if ( (LCDGrid.Col + CharPreviewGrid.ColCount) > LCDGrid.ColCount) and
       not LCDOptions.DontAdvanceCursorAutomatically then
      AdvanceLCDCursor(LCDGrid, CharPreviewGrid.ColCount, CharPreviewGrid.RowCount - 1);
    InsertCharAtCursor(CharPreviewGrid, LCDGrid, LCDGrid.Row, LCDGrid.Col);
    if not LCDOptions.DontAdvanceCursorAutomatically then
      AdvanceLCDCursor(LCDGrid, CharPreviewGrid.ColCount, CharPreviewGrid.RowCount - 1);
  end;
end;

function TMainForm.GetFullCharacterFileList(const RootFolder: String;
  FullList: TStringList): Boolean;
  procedure GetFullList(const Path: String);
  var
    List: TStringList;
    FSR: TSearchRec;
    i: Integer;
  begin
    List := TStringList.Create;
    List.Clear;
    if FindFirst(Path + '\*.*', faAnyFile, FSR) = 0 then
    begin
      repeat
        if ((FSR.Attr and faSysFile) = 0) and
           ((FSR.Attr and faSymLink) = 0) and
           ((FSR.Attr and faVolumeID) = 0) then
        begin
          if (FSR.Attr and faDirectory) = 0 then
          begin
            if LowerCase(ExtractFileExt(FSR.Name)) = '.chr' then
              List.Append(Path + '\' + FSR.Name);
          end
          else if FSR.Name[1] <> '.' then
            List.Append(Path + '\' + FSR.Name);
        end;
      until FindNext(FSR) <> 0;
    end;
    FindClose(FSR);
    for i := 0 to List.Count-1 do
    begin
      if DirectoryExists(List.Strings[i]) then
        GetFullList(List.Strings[i])
      else
        FullList.Append(List.Strings[i]);
    end;
  end;
begin
  Result := False;
  if not DirectoryExists(RootFolder) then
    Exit;
  FullList.Clear;
  GetFullList(RootFolder);
  Result := True;
end;

procedure TMainForm.CharacterSourceSettingsBtnClick(Sender: TObject);
begin
  CharacterMapForm := TCharacterMapForm.Create(nil);
  try
    ActiveLanguageOptions.LanguageOptionsChanged := True;
    CharacterMapForm.SetLanguage(ActiveLanguage, ActiveLanguageOptions, ActiveLangInstance);
    CharacterMapForm.ShowModal;
  finally
    CharacterMapForm.Free;
  end;
end;

{$HINTS OFF}
function TMainForm.ConvertTextToLCD(const Text: WideString;
  AGrid: TStringGrid; ErrorLogList: TTntStrings): Boolean;

  function FindFullCharacterFName(FullFileList: TStringList;
    const CharFName: String): String;
  var
    i: Integer;
  begin
    //First search for exact name matching (case sensitive)
    for i := 0 to FullFileList.Count - 1 do
      if ExtractFileName(FullFileList.Strings[i]) = CharFName then
      begin
        Result := FullFileList.Strings[i];
        Exit;
      end;
    //Search is not case sensitive
    for i := 0 to FullFileList.Count - 1 do
      if LowerCase(ExtractFileName(FullFileList.Strings[i])) = LowerCase(CharFName) then
      begin
        Result := FullFileList.Strings[i];
        Exit;
      end;
    //Filename not in list
    Result := '';
  end;

var
  FullList, List: TStringList;
  CharMapGrid: TAdvStringGrid;
  i, Row, Col: Integer;
  NoCategory: Boolean;
  FName: String;
  NextCol: Integer;
  ColCount: Integer;
  TempGrid: TAdvStringGrid;
  PrevChar, NextChar: WideChar;
  ProperChar: WideChar;
  RightToLeftChar: Boolean;
  RightToLeftStartCol: Integer;
  LeftToRightStartCol: Integer;
  MainNextCol: Integer;
  TextDirection: TBiDiMode;
begin
  if InputTextRTLBtn.Down then
    TextDirection := bdRightToLeft
  else
    TextDirection := bdLeftToRight;

  Result := True;

  FullList := TStringList.Create;
  List := TStringList.Create;

try

  FullList.Clear;
  NoCategory := True;
  for i := 0 to CategoryCheckTreeView.Items.Count - 1 do
    if IsTreeViewItemChecked(CategoryCheckTreeView.Items[i]) then
    begin
      NoCategory := False;
      GetFullCharacterFileList(CategoryFolderTreeView.Root + '\' + GetTreeViewNodeFullPath(CategoryCheckTreeView.Items[i]), List);
      FullList.AddStrings(List);
    end;
  if NoCategory then
  begin
    WideShowMessageSoundTop(Dyn_Texts[7] {'No category is selected.'});
    Result := False;
    Exit;
  end;
  if FullList.Count = 0 then
  begin
    WideShowMessageSoundTop(Dyn_Texts[8] {'No characters found in the selected categories.'});
    Result := False;
    Exit;
  end;

  CharMapGrid := TAdvStringGrid.Create(nil);
  CharMapGrid.RowCount := 2;
  CharMapGrid.ColCount := 2;
  LCDProcs.ReadUserMappedChars(CharMapGrid);

  TempGrid := TAdvStringGrid.Create(nil);
  NextCol := 0;
  AGrid.ColCount := 1;
  AGrid.RowCount := 1;
  ColCount := 0;
  RightToLeftStartCol := -1;
  LeftToRightStartCol := -1;
  for i := 1 to Length(Text) do
  begin
    if i = 1 then
      PrevChar := #$0000
    else
      PrevChar := Text[i - 1];
    if i = Length(Text) then
      NextChar := #$0000
    else
      NextChar := Text[i + 1];

    ProperChar := TypeCharacter(PrevChar, Text[i], NextChar, RightToLeftChar);
    //WideShowMessageSoundTop(MapCharacterToFilename(ProperChar, CharMapGrid));
    FName := FindFullCharacterFName(FullList, MapCharacterToFilename(ProperChar, CharMapGrid, False));
    if not FileExists(FName) then
      FName := FindFullCharacterFName(FullList, MapCharacterToFilename(ProperChar, CharMapGrid, True));
    if Pos(ProperChar, AnsiDelimiters) > 0 then
      RightToLeftChar := TextDirection = bdRightToLeft;

    if FileExists(FName) then
    begin
      TempGrid.RowCount := 2;
      TempGrid.ColCount := 2;
      TempGrid.LoadFromCSV(FName);

      if (TempGrid.RowCount - 1) > AGrid.RowCount then
        AGrid.RowCount := TempGrid.RowCount - 1;
      ColCount := ColCount + TempGrid.ColCount;
      if ColCount > 0 then
        AGrid.ColCount := ColCount;

      MainNextCol := NextCol;
      if TextDirection = bdLeftToRight then
      begin
        if RightToLeftChar and (RightToLeftStartCol >= 0) then
        begin
          LCDProcs.ShiftLCDValuesRight(AGrid, RightToLeftStartcol, TempGrid.ColCount);
          NextCol := RightToLeftStartCol;
        end;
      end
      else if TextDirection = bdRightToLeft then
      begin
        if RightToLeftChar then
        begin
          LCDProcs.ShiftLCDValuesRight(AGrid, 0, TempGrid.ColCount);
          NextCol := 0;
        end
        else if LeftToRightStartCol >= 0 then
        begin
          LCDProcs.ShiftLCDValuesRight(AGrid, LeftToRightStartCol, TempGrid.ColCount);
          NextCol := LeftToRightStartCol;
        end
        else if not RightToLeftChar and (LeftToRightStartCol < 0) then
        begin
          LCDProcs.ShiftLCDValuesRight(AGrid, 0, TempGrid.ColCount);
          NextCol := 0;
          LeftToRightStartCol := 0;
        end;
      end;

      for Col := 0 to TempGrid.ColCount - 1 do
        for Row := 0 to TempGrid.RowCount - 2 do
          AGrid.Cells[Col + NextCol, Row] := TempGrid.Cells[Col, Row];

      NextCol := MainNextCol;
      if TextDirection = bdLeftToRight then
      begin
        if RightToLeftChar then
        begin
          if RightToLeftStartCol < 0 then
            RightToLeftStartCol := NextCol;
        end
        else
          RightToLeftStartCol := -1;
      end
      else if TextDirection = bdRightToLeft then
      begin
        if RightToLeftChar then
          LeftToRightStartCol := -1
        else if LeftToRightStartCol < 0 then
          LeftToRightStartCol := NextCol
        else
          LeftToRightStartCol := LeftToRightStartCol + TempGrid.ColCount;
      end;

      NextCol := NextCol + TempGrid.ColCount;
    end
    else
      ErrorLogList.Append(WideFormat(Dyn_Texts[9], [ProperChar]));  //'The characer file of the character ''' + ProperChar + ''' was not found in the selected categories.';
  end;

  Result := not(ColCount = 0);
  AGrid.RowCount := AGrid.RowCount + 1;

  FullList.Free;
  List.Free;

except
  Result := False;
  FullList.Free;
  List.Free;
  
  //*******************
  raise;  //Re-raise the exception
  //*******************
end;

end;
{$HINTS ON}

function TMainForm.PerformTextToLCDFromCharacterLibrary(
  InsertTextAsWholeLCD: Boolean): Boolean;
var
  Row, Col: Integer;
  RGrid: TStringGrid;  //Result Grid
  RGrid1: TAdvStringGrid;  //Result Grid
begin
  Result := False;

  RGrid := TStringGrid.Create(nil);
  RGrid1 := TAdvStringGrid.Create(nil);
  RGrid.Visible := False;
  RGrid1.Visible := False;

  try
    ErrorLogForm.ErrorLogListBox.Items.Clear;

    if not ConvertTextToLCD(InputText.Text, RGrid, ErrorLogForm.ErrorLogListBox.Items) then
    begin
      if (ErrorLogForm.ErrorLogListBox.Items.Count > 0) and ErrorLogCheck.Checked then
        ErrorLogForm.Show;
      Exit;
    end;
    if (ErrorLogForm.ErrorLogListBox.Items.Count > 0) and ErrorLogCheck.Checked then
      ErrorLogForm.Show;


    RGrid.RowCount := RGrid.RowCount - 1;

    if AutoextendLCDWidthCheck.Checked or AutoextendLCDHeightCheck.Checked then
    begin
      if AutoextendLCDWidthCheck.Checked then
      begin
        if InsertTextAsWholeLCD then
          LCDGrid.ColCount := RGrid.ColCount
        else if (LCDGrid.ColCount - LCDGrid.Col) < RGrid.ColCount then
          LCDGrid.ColCount := LCDGrid.ColCount + RGrid.ColCount - (LCDGrid.ColCount - LCDGrid.Col);

        if AutoextendLCDHeightCheck.Checked then
        begin
          if InsertTextAsWholeLCD then
            LCDGrid.RowCount := RGrid.RowCount + 1
          else if (LCDGrid.RowCount - 1 - LCDGrid.Row) < RGrid.RowCount then
            LCDGrid.RowCount := LCDGrid.RowCount + RGrid.RowCount - (LCDGrid.RowCount - 1 - LCDGrid.Row);
        end;
        LCDGrid.DefaultRowHeight := LCDGrid.DefaultRowHeight;
        LCDGrid.RowHeights[LCDGrid.RowCount - 1] := 0;
      end;
      UpdateLCDOptions;
    end;

    if InsertTextAsWholeLCD then
      LCDProcs.ClearLCD(LCDGrid, LCDOptions.LCDClearedColor);

    RGrid1.RowCount := RGrid.RowCount + 1;
    RGrid1.ColCount := RGrid.ColCount;
    for Row := 0 to RGrid.RowCount - 1 do
      for Col := 0 to RGrid.ColCount - 1 do
        RGrid1.Cells[Col, Row] := RGrid.Cells[Col, Row];


    //RGrid1.Visible := False;  --> Visible is already set to False
    RGrid1.Parent := Self;
    ColorizeLCDGrid(RGrid1, LCDOptions.LCDFilledColor, LCDOptions.LCDClearedColor);
    InsertCharAtCursor(RGrid1, LCDGrid, LCDGrid.Row, LCDGrid.Col);
  finally
    RGrid.Free;
    RGrid1.Free;
  end;

  Result := True;

  UpdateLCDOptions;
end;

{$HINTS OFF}
function TMainForm.PerformTextToLCDFromSystemFonts(
  InsertTextAsWholeLCD: Boolean): Boolean;
var
  Row, Col: Integer;
begin
  Result := False;

  if SystemFontsSection.ActivePage.PageIndex = FavoriteFontsTabSheet.PageIndex then
    TextToLCD(InputText.Text, FavoriteFontSamplePanel.Font, TextToLCDGrid)
  else
    TextToLCD(InputText.Text, FontSamplePanel.Font, TextToLCDGrid);

  if InsertTextAsWholeLCD then
    LCDProcs.ClearLCD(LCDGrid, LCDOptions.LCDClearedColor);
  if AutoextendLCDWidthCheck.Checked or AutoextendLCDHeightCheck.Checked then
  begin
    if AutoextendLCDWidthCheck.Checked then
    begin
      if InsertTextAsWholeLCD then
        LCDGrid.ColCount := TextToLCDGrid.ColCount
      else if (LCDGrid.ColCount - LCDGrid.Col) < TextToLCDGrid.ColCount then
        LCDGrid.ColCount := LCDGrid.ColCount + TextToLCDGrid.ColCount - (LCDGrid.ColCount - LCDGrid.Col);
    end;

    if AutoextendLCDHeightCheck.Checked then
    begin
      if InsertTextAsWholeLCD then
        LCDGrid.RowCount := TextToLCDGrid.RowCount + 1
      else if (LCDGrid.RowCount - 1 - LCDGrid.Row) < TextToLCDGrid.RowCount then
        LCDGrid.RowCount := LCDGrid.RowCount + TextToLCDGrid.RowCount - (LCDGrid.RowCount - 1 - LCDGrid.Row);
      LCDGrid.DefaultRowHeight := LCDGrid.DefaultRowHeight;
      LCDGrid.RowHeights[LCDGrid.RowCount - 1] := 0;
    end;
    UpdateLCDOptions;
  end;

  if LCDGrid.BiDiMode = bdRightToLeft then
  begin
    TextToLCDGrid.SelectRows(0, TextToLCDGrid.RowCount);
    LCDProcs.FlipSelectionHorizontally(TextToLCDGrid);
  end;

  for Row := LCDGrid.Row to LCDGrid.Row + TextToLCDGrid.RowCount - 1 do
    for Col := LCDGrid.Col to LCDGrid.Col + TextToLCDGrid.ColCount - 1 do
    begin
      LCDGrid.Colors[Col, Row] := TextToLCDGrid.Colors[Col - LCDGrid.Col, Row - LCDGrid.Row];
      LCDGrid.ColorsTo[Col, Row] := TextToLCDGrid.ColorsTo[Col - LCDGrid.Col, Row - LCDGrid.Row];
    end;

  Result := True;
end;
{$HINTS ON}

procedure TMainForm.InsertTextAtCursorBtnClick(Sender: TObject);
var
  LCDSelection: TGridRect;
begin
  //************************************
  if not License4.CheckLicenseStatus and
     not(asLoading in ApplicationState) and
     not(fsShowing in FormState) then
    Halt;
  //************************************

  if Length(InputText.Text) = 0 then
  begin
    WideShowMessageSoundTop(Dyn_Texts[10] {'Please enter some text.'});
    InputText.SetFocus;
    Exit;
  end;

  try
    LCDSelection := LCDGrid.Selection;
    if SystemFontsSourceRadio.Checked then  //Source is system fonts
    begin
      if not PerformTextToLCDFromSystemFonts(InsertTextAsWholeLCD) then
        Exit;
    end
    //--------------------------------------------------
    else  //Source is Character Library
    begin
      if not PerformTextToLCDFromCharacterLibrary(InsertTextAsWholeLCD) then
        Exit;
    end;

    AddToTextToLCDHisory(InputText.Text);  //Add the input text to the input text history
  finally
    LCDGrid.Selection := FitSelectionToLCD(LCDGrid, LCDSelection);

    ////////////////////////
    AddNewHistoryState;
    UpdateLCDPicturePreview;
    ////////////////////////
  end;
end;

procedure TMainForm.OpenDesignMenuItemClick(Sender: TObject);
begin
  if OpenDesignDialog.Execute then
  begin
    IgnoreThisClick := True;
    if CanProceedToOpenDesign(OpenDesignDialog.FileName) then
      OpenDesignFile(OpenDesignDialog.FileName);  //Not necessary to check the function result
  end;
end;

procedure TMainForm.SaveDesignMenuItemClick(Sender: TObject);
var
  RetrySave: Boolean;
begin
  if UntitledDesignFile or WorkingDesignIsReadOnly then
    SaveDesignAsMenuItem.Click
  else if WorkingDesignChanged then
  begin
    if InformForReadOnlySelectedFile(WorkingDesignFileName) then
      SaveDesignAsMenuItem.Click
    else
    begin
      RetrySave := False;
      repeat
        try
          SaveLCDDesignToFile(LCDGrid, WorkingDesignFileName);
          InitiateNewWorkingDesign(False);
        except
          RetrySave := WideMessageDlgSoundTop(WideFormat(Dyn_Texts[53] {'Unable to save the design to the file:%s'}, [#13 + WorkingDesignFileName]), mtError, [mbCancel, mbRetry], 0) = mrRetry;
        end;
      until not RetrySave;
    end;
  end;
end;

procedure TMainForm.SaveDesignAsMenuItemClick(Sender: TObject);
var
  FName: String;
  OldWorkingDesignFileName: String;
  RetrySave, SaveError: Boolean;
begin
  OldWorkingDesignFileName := WorkingDesignFileName;
  SaveDesignDialog.InitialDir := '';
  if UntitledDesignFile then
    SaveDesignDialog.FileName := UNTITLED_DOCUMENT_NAME + IntToStr(WorkingDesignUntitledCount)
  else if DirectoryExists(ExtractFilePath(WorkingDesignFileName)) then
  begin
    SaveDesignDialog.InitialDir := ExtractFilePath(WorkingDesignFileName);
    SaveDesignDialog.FileName := ExtractFileName(WorkingDesignFileName);
  end;
  RetrySave := True;
  while RetrySave do
  begin
    if SaveDesignDialog.Execute then
    begin
      FName := Procs.ApplyFileNameExtension(SaveDesignDialog.FileName,
                 ExtractFileExt(Procs.ExtractFilterString(SaveDesignDialog.Filter, SaveDesignDialog.FilterIndex)),
                 True);  //Force file extension
      if InformForReadOnlySelectedFile(FName) then
        Continue;
      SaveError := False;
      try
        SaveLCDDesignToFile(LCDGrid, FName);
      except
        SaveError := True;
        if not(WideMessageDlgSoundTop(WideFormat(Dyn_Texts[53] {'Unable to save the design to the file:%s'}, [#13 + WorkingDesignFileName]), mtError, [mbCancel, mbRetry], 0) = mrRetry) then
          Exit;
      end;
      if SaveError then
        Continue;
      WorkingDesignFileName := FName;
      WorkingDesignIsReadOnly := False;
      InitiateNewWorkingDesign(False);
      UntitledDesignFile := False;
      UpdateMainFormCaption;
      WorkingOnNewDesignStarted(OldWorkingDesignFileName, WorkingDesignFileName);
      RetrySave := False;
    end
    else
      RetrySave := False;
  end;
end;

procedure TMainForm.NewDesignMenuItemClick(Sender: TObject);
var
  Response: Integer;
  OldWorkingDesignFileName: String;
begin
  if WorkingDesignChanged then
  begin
    Response := WideMessageDlgSoundTop(Dyn_Texts[14] {'Do you want to save the changes to the current design?'}, mtWarning, [mbYes, mbNo, mbCancel], 0);
    if Response = mrCancel then
      Exit
    else if Response = mrYes then
    begin
      SaveDesignMenuItem.Click;
      if WorkingDesignChanged then
        Exit;
    end;
  end;
  if GlobalOptions.NewDesignDialog then
  begin
    NewDesignForm := TNewDesignForm.Create(nil);
    try
      ActiveLanguageOptions.LanguageOptionsChanged := True;
      NewDesignForm.SetLanguage(ActiveLanguage, ActiveLanguageOptions, ActiveLangInstance);
      NewDesignForm.LCDWidthEdit.Text := IntToStr(GlobalOptions.NewLCDDefaultWidth);
      NewDesignForm.LCDHeightEdit.Text := IntToStr(GlobalOptions.NewLCDDefaultHeight);
      if NewDesignForm.ShowModal = mrCancel then
        Exit;
      LCDGrid.ColCount := StrToInt(NewDesignForm.LCDWidthEdit.Text);
      LCDGrid.RowCount := StrToInt(NewDesignForm.LCDHeightEdit.Text) + 1;
    finally
      NewDesignForm.Free;
    end;
    LCDGrid.DefaultRowHeight := LCDGrid.DefaultRowHeight;
    LCDGrid.RowHeights[LCDGrid.RowCount - 1] := 0;
    LCDProcs.ClearLCD(LCDGrid, LCDOptions.LCDClearedColor);
  end
  else
  begin
    LCDGrid.ColCount := GlobalOptions.NewLCDDefaultWidth;
    LCDGrid.RowCount := GlobalOptions.NewLCDDefaultHeight + 1;
    LCDGrid.DefaultRowHeight := LCDGrid.DefaultRowHeight;
    LCDGrid.RowHeights[LCDGrid.RowCount - 1] := 0;
    LCDProcs.ClearLCD(LCDGrid, LCDOptions.LCDClearedColor);
  end;

  OldWorkingDesignFileName := WorkingDesignFileName;
  WorkingDesignIsReadOnly := False;
  UntitledDesignFile := True;
  Inc(WorkingDesignUntitledCount);
  UpdateMainFormCaption;
  WorkingDesignFileName := '';
  InitiateNewWorkingDesign(True);
  LCDOptions.LCDWidth := LCDGrid.ColCount;
  LCDOptions.LCDHeight := LCDGrid.RowCount - 1;
  OnLCDOptionsChanged;
  LCDGrid.Row := 0;
  LCDGrid.Col := 0;
  WorkingOnNewDesignStarted(OldWorkingDesignFileName, '');
end;

function TMainForm.SaveLCDDesignToFile(ALCDGrid: TAdvStringGrid;
  const FName: String): Boolean;
var
  Row, Col: Integer;
  TempGrid: TAdvStringGrid;
begin
  Result := True;

  TempGrid := TAdvStringGrid.Create(nil);
  TempGrid.Hide;
  TempGrid.Parent := Self;

  TempGrid.RowCount := ALCDGrid.RowCount;
  TempGrid.ColCount := ALCDGrid.ColCount;
  for Row := 0 to ALCDGrid.RowCount - 2 do  //Minus 2 because of TAdvStringGrid
    for Col := 0 to ALCDGrid.ColCount - 1 do
      if ALCDGrid.Colors[Col, Row] = LCDOptions.LCDFilledColor then
        TempGrid.Cells[Col, Row] := '1'
      else
        TempGrid.Cells[Col, Row] := '0';
  for Col := 0 to ALCDGrid.ColCount - 1 do
    TempGrid.Cells[Col, ALCDGrid.RowCount - 1] := DESIGN_FILE_END_ROW_SPECIFIER;
  try
    TempGrid.SaveToCSV(FName);
  finally
    TempGrid.Free;
  end;
end;

function TMainForm.LoadLCDDesignFromFile(ALCDGrid: TAdvStringGrid;
  const FName: String): Boolean;
var
  Row, Col: Integer;
begin
  Result := True;
  ALCDGrid.ColCount := 1;
  ALCDGrid.RowCount := 1;
  ALCDGrid.RowHeights[ALCDGrid.RowCount - 1] := 0;
  try
    ALCDGrid.LoadFromCSV(FName);
  finally
    //Don't allow zero-lengthed LCD
    if (ALCDGrid.ColCount = 0) or
       ( (ALCDGrid.ColCount = 1) and (Procs.FileSize(FName) = 0) ) then
      ALCDGrid.ColCount := GlobalOptions.NewLCDDefaultWidth;
    if ALCDGrid.RowCount <= 1 then
      ALCDGrid.RowCount := GlobalOptions.NewLCDDefaultHeight + 1;

    ALCDGrid.DefaultRowHeight := ALCDGrid.DefaultRowHeight;
    ALCDGrid.RowHeights[ALCDGrid.RowCount - 1] := 0;
    ColorizeLCDGrid(ALCDGrid, LCDOptions.LCDFilledColor, LCDOptions.LCDClearedColor);
    for Row := 0 to ALCDGrid.RowCount - 1 do
      for Col := 0 to ALCDGrid.ColCount - 1 do
        ALCDGrid.Cells[Col, Row] := '';

    if ALCDGrid = LCDGrid then
    begin
      LCDHeightEdit.Value := LCDGrid.RowCount - 1;
      LCDWidthEdit.Value := LCDGrid.ColCount;
    end;
  end;
end;

procedure TMainForm.ExportLCDMenuItemClick(Sender: TObject);
begin
  if asLoading in ApplicationState then
    Exit;
  try
    //ExportLCDForm := TExportLCDForm.Create(nil);
    ExportLCDForm.LoadConfig;
    ExportLCDForm.LCDGrid := LCDGrid;
    ExportLCDForm.LCDFilledColor := LCDOptions.LCDFilledColor;
    ExportLCDForm.LCDClearedColor := LCDOptions.LCDClearedColor;
    ExportLCDForm.ShowModal;
  finally
    //ExportLCDForm.Free;
  end;
end;

procedure TMainForm.PrinterSetupMenuItemClick(Sender: TObject);
begin
  if asLoading in ApplicationState then
    Exit;

  PrinterSetupDialog1.Execute;
end;

procedure TMainForm.PrintLCDMenuItemClick(Sender: TObject);
begin
  if asLoading in ApplicationState then
    Exit;

  PrintLCD(True);  //Print with print dialog
end;

procedure TMainForm.ExitMenuItemClick(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.DeleteMenuItemClick(Sender: TObject);
begin
  DoLCDClearCell(False);  //Clear only if operation on the LCD is allowed
end;

procedure TMainForm.CutMenuItemClick(Sender: TObject);
begin
  if (Screen.ActiveControl is TCustomEdit) or
     (Screen.ActiveControl is TCustomCombo) then
     SendMessage(Screen.ActiveControl.Handle, WM_CUT, 0, 0)
  else if OperationOnLCDAllowed then
  begin
    CopyMenuItem.Click;
    DeleteMenuItem.Click;
  end;
end;

procedure TMainForm.CopyMenuItemClick(Sender: TObject);
begin
  if (Screen.ActiveControl is TCustomEdit) or
     (Screen.ActiveControl is TCustomCombo) then
     SendMessage(Screen.ActiveControl.Handle, WM_COPY, 0, 0)
  else if OperationOnLCDAllowed then
  begin
    LCDProcs.CopyLCDToClipboard(LCDGrid, LCDOptions.LCDFilledColor);
  {  CopyPasteGrid.RowCount := LCDGrid.Selection.Bottom - LCDGrid.Selection.Top + 1 + 1;
    CopyPasteGrid.ColCount := LCDGrid.Selection.Right - LCDGrid.Selection.Left + 1;
    for Row := LCDGrid.Selection.Top to LCDGrid.Selection.Bottom do
      for Col := LCDGrid.Selection.Left to LCDGrid.Selection.Right do
        if LCDGrid.Colors[Col, Row] = LCDOptions.LCDFilledColor then
          CopyPasteGrid.Cells[Col - LCDGrid.Selection.Left, Row - LCDGrid.Selection.Top] := '1'
        else
          CopyPasteGrid.Cells[Col - LCDGrid.Selection.Left, Row - LCDGrid.Selection.Top] := '0';}
    PasteMenuItem.Enabled := True;
    PasteToolBtn.Enabled := True;
  end;
end;

procedure TMainForm.PasteMenuItemClick(Sender: TObject);
var
  CopyPasteGrid: TAdvStringGrid;
begin
  if (Screen.ActiveControl is TCustomEdit) or
     (Screen.ActiveControl is TCustomCombo) then
     SendMessage(Screen.ActiveControl.Handle, WM_PASTE, 0, 0)
  else if OperationOnLCDAllowed then
  begin
    CopyPasteGrid := TAdvStringGrid.Create(nil);
    try
      CopyPasteGrid.Visible := False;
      CopyPasteGrid.Parent := Self;
      if LCDProcs.PasteLCDFromClipboard(CopyPasteGrid) then
      begin
        ColorizeLCDGrid(CopyPasteGrid, LCDOptions.LCDFilledColor, LCDOptions.LCDClearedColor, False);
        InsertCharAtCursor(CopyPasteGrid, LCDGrid, LCDGrid.Row, LCDGrid.Col);
      end;
      EditMenuItem.Click;
      OnLCDChanged;
    finally
      CopyPasteGrid.Free;
    end;
  end;
end;

procedure TMainForm.LCDOptionsMenuItemClick(Sender: TObject);
var
  OldLCDOptions: TLCDOptions;
  MResult: Integer;
begin
  if asLoading in ApplicationState then
    Exit;

  UpdateLCDOptions;
  LCDOptionsForm.ReadSettings(LCDOptions);
  MResult := LCDOptionsForm.ShowModal;
  if MResult = mrOk then
  begin
    OldLCDOptions := LCDOptions;
    LCDOptionsForm.WriteSettings(LCDOptions);
    ApplyLCDOptions(OldLCDOptions);
    OnLCDOptionsChanged;
  end
  else if MResult = mrGoToProgramOptions then
    ProgramOptionsMenuItem.Click;
end;

procedure TMainForm.UpdateLCDColors(ALCDGrid: TAdvStringGrid; OldFilledColor,
  NewFilledColor, OldClearedColor, NewClearedColor: TColor);
var
  Row, Col: Integer;
begin
  for Row := 0 to ALCDGrid.RowCount - 1 do
    for Col := 0 to ALCDGrid.ColCount - 1 do
      if ALCDGrid.Colors[Col,Row] = OldFilledColor then
        SetCellColor(ALCDGrid, Col, Row, True)
      else  // if ALCDGrid.Colors[Col, Row] = OldClearedColor then  --> Prevent potential software bugs by removing this condition
        SetCellColor(ALCDGrid, Col, Row, False);
end;

procedure TMainForm.ApplyLCDOptions(const OldLCDOptions: TLCDOptions);
var
  Row, Col: Integer;
begin
  LCDOptions.LCDGradientColor := LCDProcs.CalculateLCDGradientColor(LCDOptions.LCDFilledColor, LCDOptions.LCDClearedColor);
  //Update LCD history colors
  with LCDHistory do
  begin
    LCDFilledColor := LCDOptions.LCDFilledColor;
    LCDClearedColor := LCDOptions.LCDClearedColor;
    if LCDOptions.LCDUseSolidColors then
      LCDGradientColor := LCDOptions.LCDFilledColor
    else
      LCDGradientColor := LCDOptions.LCDGradientColor;
  end;

  if (OldLCDOptions.LCDFilledColor <> LCDOptions.LCDFilledColor) or
     (OldLCDOptions.LCDClearedColor <> LCDOptions.LCDClearedColor) or
     (OldLCDOptions.LCDUseSolidColors <> LCDOptions.LCDUseSolidColors) then
  begin
    UpdateLCDColors(LCDGrid, OldLCDOptions.LCDFilledColor, LCDOptions.LCDFilledColor,
                    OldLCDOptions.LCDClearedColor, LCDOptions.LCDClearedColor);
    UpdateLCDColors(CharPreviewGrid, OldLCDOptions.LCDFilledColor, LCDOptions.LCDFilledColor,
                    OldLCDOptions.LCDClearedColor, LCDOptions.LCDClearedColor);
    UpdateLCDColors(ImportGraphicsForm.PreviewGrid, OldLCDOptions.LCDFilledColor, LCDOptions.LCDFilledColor,
                    OldLCDOptions.LCDClearedColor, LCDOptions.LCDClearedColor);
    UpdateLCDColors(CodeToLCDForm.PreviewGrid, OldLCDOptions.LCDFilledColor, LCDOptions.LCDFilledColor,
                    OldLCDOptions.LCDClearedColor, LCDOptions.LCDClearedColor);
    UpdateLCDColors(OldLCDGrid, OldLCDOptions.LCDFilledColor, LCDOptions.LCDFilledColor,
                    OldLCDOptions.LCDClearedColor, LCDOptions.LCDClearedColor);
  end;

  LCDGrid.SelectionRectangle := LCDOptions.ShowCursorRectangle;
  LCDGrid.SelectionRectangleColor := LCDOptions.LCDCursorColor;

  for Row := LCDOptions.LCDHeight to LCDGrid.RowCount - 1 do
    for Col := 0 to LCDGrid.ColCount - 1 do
      SetCellColor(LCDGrid, Col, Row, False);
  for Col := LCDOptions.LCDWidth to LCDGrid.ColCount - 1 do
    for Row := 0 to LCDGrid.RowCount - 1 do
      SetCellColor(LCDGrid, Col, Row, False);

  LCDGrid.ColCount := LCDOptions.LCDWidth;
  LCDGrid.RowCount := LCDOptions.LCDHeight + 1;  //To clear the last row and also to correct the cursor position if it is on the last row
  if LCDGrid.Row = LCDGrid.RowCount - 1 then
    LCDGrid.Row := LCDGrid.RowCount - 2;

  LCDGrid.DefaultRowHeight := LCDGrid.DefaultRowHeight;
  LCDGrid.RowHeights[LCDGrid.RowCount - 1] := 0;
  ClearLCDUndefinedColors(LCDGrid, LCDOptions.LCDClearedColor, [LCDOptions.LCDFilledColor, LCDOptions.LCDClearedColor]);

  if GlobalOptions.ShowLCDGridLines then
    LCDGrid.GridLineColor := LCDOptions.LCDGridColor
  else
    LCDGrid.GridLineColor := LCDGrid.Color;
end;

procedure TMainForm.ProgramOptionsMenuItemClick(Sender: TObject);
var
  Temp: TGlobalOptions;
  NewGlobalOptions: TGlobalOptions;
  MResult: Integer;
  OldLCDOptions: TLCDOptions;
begin
  if asLoading in ApplicationState then
    Exit;

  ProgramOptionsForm.ReadSettings(GlobalOptions);
  MResult := ProgramOptionsForm.ShowModal;
  if MResult = mrOk then
  begin
    NewGlobalOptions := GlobalOptions;
    ProgramOptionsForm.WriteSettings(NewGlobalOptions);
    Temp := GlobalOptions;
    GlobalOptions := NewGlobalOptions;
    ApplyProgramOptions(Temp, NewGlobalOptions);

    UpdateRealTimeRegistrySettings(rskLCDGlobalOptions);
    UpdateRealTimeRegistrySettings(rskLibraryPath);
  end
  else if MResult = mrGoToLCDOptions then
    LCDOptionsMenuItem.Click
  else if MResult = mrFullProgramReset then
  begin
    OldLCDOptions := LCDOptions;
    LoadDefaultConfig(GlobalOptions);
    ApplyStartupConfig;
    ApplyStartupOnShowConfig;
    ApplyLCDOptions(OldLCDOptions);
    OnLCDOptionsChanged;
    RefreshCategoryList;
  end;
end;

procedure TMainForm.ApplyProgramOptions(OldProgramOptions,
  NewProgramOptions: TGlobalOptions);
begin
  try

  if NewProgramOptions.RUFLCount < OldProgramOptions.RUFLCount then
    RUFLBuildMenuItems;

  finally

  //Undo levels
  if NewProgramOptions.UndoLevels <> OldProgramOptions.UndoLevels then
  begin
    if NewProgramOptions.UndoLevels >= 1 then
    begin
      LCDHistory.Size := NewProgramOptions.UndoLevels + 1;
      AddNewHistoryState;
    end
    else
    begin
      NewProgramOptions.UndoLevels := 0;
      LCDHistory.Size := 0;
    end;
    UpdateHistoryMadeChanges;
  end;

  //This operation must be done, but the exception of the previous operation should be raised.
  if NewProgramOptions.LibraryPath <> OldProgramOptions.LibraryPath then
    RefreshCharacterLibraryMenuItem.Click;

  end;
end;

function TMainForm.GetCharacterLibraryFullPath: String;
begin
  with GlobalOptions do
    if LibraryPath[2] = ':' then
      Result := LibraryPath
    else
      Result := ApplicationPath + LibraryPath;
end;

procedure TMainForm.CharacterLibraryOrganizerMenuItemClick(Sender: TObject);
var
  LibraryChanged: Boolean;
begin
  if asLoading in ApplicationState then
    Exit;

  if Active then  //Don't use OperationOnLCDAllowed because we want to do this command only in MainForm (where the Character Library is displayed)
  begin
    //Prepare LibraryOrganizerForm to show
    LibraryOrganizerForm := TLibraryOrganizerForm.Create(nil);
    try
      ActiveLanguageOptions.LanguageOptionsChanged := True;
      LibraryOrganizerForm.SetLanguage(ActiveLanguage, ActiveLanguageOptions, ActiveLangInstance);
      LCDProcs.ClearLCD(LibraryOrganizerForm.CharPreviewGrid, LCDOptions.LCDClearedColor);
      LibraryOrganizerForm.CharacterLibraryPath := CategoryFolderTreeView.Root;
      LibraryOrganizerForm.ShowModal;
      LibraryChanged := LibraryOrganizerForm.LibraryChanged;
    finally
      LibraryOrganizerForm.Free;
    end;
    if LibraryChanged then
    begin
      RefreshCharacterLibraryMenuItem.Click;
    end;
  end;
end;

procedure TMainForm.CharacterDesignerMenuItemClick(Sender: TObject);
begin
  if FileExists(ApplicationPath + CD_APPLICATION_EXE_FILE_NAME) then
    WinExec(PChar(ApplicationPath + CD_APPLICATION_EXE_FILE_NAME), SW_SHOWNORMAL)
  else
    WideShowMessageSoundTop(WideFormat(Dyn_Texts[15], [CD_APPLICATION_EXE_FILE_NAME]));  {'The character designer module, ''%s'', cannot be found.'}
end;

procedure TMainForm.ReadProgramSettings;
var
  SomeValuesExist: Boolean;

  function ReadRegistrySettings: Boolean;

    function ReadRegRecord(var LCDAnimatorSettings: TLCDAnimatorSettings): Boolean; overload;
    var
      Reg: TRegistry;
    begin
      Result := False;
      Reg := TRegistry.Create(KEY_READ);
      try

      Reg.RootKey := HKEY_CURRENT_USER;
      with LCDAnimatorSettings do
      begin
        if not Reg.OpenKeyReadOnly(REG_USER_SETTINGS_PATH + '\Design Animator') then
          Exit;
        SomeValuesExist := True;
        /////////////////////////////
        LCDZoomValue := Reg.ReadInteger('Zoom');
        LCDGridVisible := Reg.ReadBool('Gridlines');
        AnimDirection := TDirection(Reg.ReadInteger('Animation Direction'));
        AnimSpeed := Reg.ReadInteger('Animation Speed');
        AdvancedOptionsVisible := Reg.ReadBool('Advanced Options');
        OutputCheckValue := Reg.ReadBool('Output Frames to File');
        RunExternalCheckValue := Reg.ReadBool('Run External Program');
        if not Reg.ValueExists('Output File') then
          Exit;
        OutFile := Reg.ReadString('Output File');
        if not Reg.ValueExists('External Program') then
          Exit;
        ExternalProgram := Reg.ReadString('External Program');
        FormLeft := Reg.ReadInteger('Left');
        FormTop := Reg.ReadInteger('Top');
        FormWidth := Reg.ReadInteger('Width');
        FormHeight := Reg.ReadInteger('Height');
        FormState := TWindowState(Reg.ReadInteger('State'));
        /////////////////////////////
      end;
      Result := True;

      finally
      Reg.Free;
      end;
    end;

    function ReadRegRecord(var ImportGraphicsFormSettings: TImportGraphicsFormSettings): Boolean; overload;
    var
      Reg: TRegistry;
    begin
      Result := False;
      Reg := TRegistry.Create(KEY_READ);
      try

      Reg.RootKey := HKEY_CURRENT_USER;
      with ImportGraphicsFormSettings do
      begin
        if not Reg.OpenKeyReadOnly(REG_USER_SETTINGS_PATH + '\Import Picture') then
          Exit;
        SomeValuesExist := True;
        /////////////////////////////
        PreviewZoomValue := Reg.ReadInteger('Zoom');
        ShowPreviewGridLines := Reg.ReadBool('Gridlines');
        FormWidth := Reg.ReadInteger('Width');
        FormHeight := Reg.ReadInteger('Height');
        SourceSectionWidth := Reg.ReadInteger('Source Section Width');
        ScaleFactor := Reg.ReadInteger('Scale Factor');
        ColorTolerance := Reg.ReadInteger('Color Tolerance');
        ImportOnlySelection := Reg.ReadBool('Import Only Selection');
        /////////////////////////////
      end;
      Result := True;

      finally
      Reg.Free;
      end;
    end;

    function ReadRegRecord(var ExportLCDFormSettings: TExportLCDFormSettings): Boolean; overload;
    var
      Reg: TRegistry;
    begin
      Result := False;
      Reg := TRegistry.Create(KEY_READ);
      try

      Reg.RootKey := HKEY_CURRENT_USER;
      with ExportLCDFormSettings do
      begin
        if not Reg.OpenKeyReadOnly(REG_USER_SETTINGS_PATH + '\Export Design') then
          Exit;
        SomeValuesExist := True;
        /////////////////////////////
        ExportLCDFormHeight := Reg.ReadInteger('Height');
        AutomaticApply := Reg.ReadBool('Automatic Apply');
        Reg.CloseKey;

        if not Reg.OpenKeyReadOnly(REG_USER_SETTINGS_PATH + '\Export Design\Basic Output') then
          Exit;
        ExportOnlySelection := Reg.ReadBool('Only Selection');
        OutputFormat := TOutputFormat(Reg.ReadInteger('Output Format'));
        OutputHexFormat := THexFormat(Reg.ReadInteger('Hex Format'));
        ColumnByColumnOrder := Reg.ReadBool('Order');
        InverseOrder := Reg.ReadBool('Inverse Order');
        if not Reg.ValueExists('Prefix') then
          Exit;
        PrefixString := Reg.ReadString('Prefix');
        if not Reg.ValueExists('Suffix') then
          Exit;
        SuffixString := Reg.ReadString('Suffix');
        InverseValues := Reg.ReadBool('Inverse Values');
        Reg.CloseKey;

        if not Reg.OpenKeyReadOnly(REG_USER_SETTINGS_PATH + '\Export Design\Advanced Output') then
          Exit;
        AddColSep := Reg.ReadBool('AddColSep');
        AddColBreak := Reg.ReadBool('AddColBreak');
        AddRowSep := Reg.ReadBool('AddRowSep');
        ColSepNumOfUnits := Reg.ReadInteger('ColSepNum');
        ColBreakNumOfUnits := Reg.ReadInteger('ColBreakNum');
        ColSepUnitComboIndex := Reg.ReadInteger('ColSepUnit');
        ColBreakUnitComboIndex := Reg.ReadInteger('ColBreakUnit');
        RowSepNumOfRows := Reg.ReadInteger('RowSepNum');
        if not Reg.ValueExists('Column Separator') then
          Exit;
        ColSepText := Reg.ReadString('Column Separator');
        Reg.CloseKey;

        if not Reg.OpenKeyReadOnly(REG_USER_SETTINGS_PATH + '\Export Design\Quick Export') then
          Exit;
        QECopyToClipboard := Reg.ReadBool('Copy To Clipboard');
        QESaveToFile := Reg.ReadBool('Save To File');
        if not Reg.ValueExists('Output File') then
          Exit;
        QEFileName := Reg.ReadString('Output File');
        //Quick Export advanced settings
        QEAppendToFile := Reg.ReadBool('Append To File');
        if not Reg.ValueExists('Advanced Output File') then
          Exit;
        QEAdvancedFileName := Reg.ReadString('Advanced Output File');
        QEFrameStartNum := Reg.ReadInteger('Frame Start Number');
        Reg.CloseKey;
        /////////////////////////////
      end;
      Result := True;

      finally
      Reg.Free;
      end;
    end;

    function ReadRegRecord(var CodeToLCDFormSettings: TCodeToLCDFormSettings): Boolean; overload;
    var
      Reg: TTntRegistry;
    begin
      Result := False;
      Reg := TTntRegistry.Create(KEY_READ);
      try

      Reg.RootKey := HKEY_CURRENT_USER;
      with CodeToLCDFormSettings do
      begin
        if not Reg.OpenKeyReadOnly(REG_USER_SETTINGS_PATH + '\Code To LCD') then
          Exit;
        SomeValuesExist := True;
        /////////////////////////////
        AutodetectCodeFormat := Reg.ReadBool('Autodetect Code Format');
        CustomFormat := TOutputFormat(Reg.ReadInteger('Custom Format'));

        if not Reg.ValueExists('Prefix') or
           not Reg.ValueExists('Suffix') or
           not Reg.ValueExists('Chars To Ignore') then
          Exit;
        PrefixStr := Reg.ReadString('Prefix');
        SuffixStr := Reg.ReadString('Suffix');
        CharsToIgnore := Reg.ReadString('Chars To Ignore');

        ShowPreviewGridLines := Reg.ReadBool('Gridlines');
        PreviewZoomValue := Reg.ReadInteger('Zoom');
        ColumnByColumnOrder := Reg.ReadBool('Order');
        Reg.CloseKey;
        /////////////////////////////
      end;
      Result := True;

      finally
      Reg.Free;
      end;
    end;

    function ReadRegRecord(var FontSettings: TFontSettings; const RegPath: String): Boolean; overload;
    var
      Reg: TRegistry;
    begin
      Result := False;
      Reg := TRegistry.Create(KEY_READ);
      try

      Reg.RootKey := HKEY_CURRENT_USER;
      with FontSettings do
      begin
        if not Reg.OpenKeyReadOnly(REG_USER_SETTINGS_PATH + RegPath) then
          Exit;
        SomeValuesExist := True;
        /////////////////////////////
        if not( Reg.ValueExists('Name') ) then
          Exit;
        Name := Reg.ReadString('Name');
        Size := Reg.ReadInteger('Size');
        Height := Reg.ReadInteger('Height');
        Pitch := TFontPitch(Reg.ReadInteger('Pitch'));
        Color := Reg.ReadInteger('Color');
        Style := [];
        if Reg.ReadBool('Bold') then
          Style := Style + [fsBold];
        if Reg.ReadBool('Italic') then
          Style := Style + [fsItalic];
        if Reg.ReadBool('Underlined') then
          Style := Style + [fsUnderline];
        if Reg.ReadBool('StrikedOut') then
          Style := Style + [fsStrikeOut];
        Charset := Reg.ReadInteger('Charset');
        /////////////////////////////
      end;
      Result := True;

      finally
      Reg.Free;
      end;
    end;

    function ReadRegRecord(var LanguageInfo: TLanguageInfo): Boolean; overload;
    var
      Reg: TTntRegistry;
    begin
      Result := False;
      Reg := TTntRegistry.Create(KEY_READ);
      try

      Reg.RootKey := HKEY_CURRENT_USER;
      with LanguageInfo do
      begin
        if not Reg.OpenKeyReadOnly(REG_USER_SETTINGS_PATH + '\Language') then
          Exit;
        SomeValuesExist := True;
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
        SomeValuesExist := True;
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
    Reg: TRegistry;
  begin
    Result := False;

    Reg := TRegistry.Create(KEY_READ);

    try

    Reg.RootKey := HKEY_CURRENT_USER;

    with GlobalOptions do
    begin
      if Reg.OpenKeyReadOnly(REG_USER_SETTINGS_PATH) and not IsRegistryDataInitial then
      begin
        SomeValuesExist := True;
        Reg.CloseKey;
      end
      else Exit;
      if not ReadRegRecord(LCDAnimatorSettings) then
        Exit;
      if not ReadRegRecord(ImportGraphicsFormSettings) then
        Exit;
      if not ReadRegRecord(ExportLCDFormSettings) then
        Exit;
      if not ReadRegRecord(CodeToLCDFormSettings) then
        Exit;
      if not ReadRegRecord(ActiveLanguageInfo) then
        Exit;
      if not ReadRegRecord(ActiveLanguageOptionsInfo) then
        Exit;
      if not ReadRegRecord(TextToLCDFavFont, '\Panes\Text to LCD\Font 1') then
        Exit;
      if not ReadRegRecord(TextToLCDAllFont, '\Panes\Text to LCD\Font 2') then
        Exit;

      if Reg.OpenKeyReadOnly(REG_USER_SETTINGS_PATH) then
      begin
        if not( Reg.ValueExists('Library Path') and
                Reg.ValueExists('Default Help Language') ) then
          Exit;
        LibraryPath := Reg.ReadString('Library Path');
        DefaultHelpLanguage := Reg.ReadString('Default Help Language');
        Reg.CloseKey;
      end
      else Exit;

      if Reg.OpenKeyReadOnly(REG_USER_SETTINGS_PATH + '\Main Window') then
      begin
        ShowStatusBar := Reg.ReadBool('Status Bar');
        MainFormLeft := Reg.ReadInteger('Left');
        MainFormTop := Reg.ReadInteger('Top');
        MainFormWidth := Reg.ReadInteger('Width');
        MainFormHeight := Reg.ReadInteger('Height');
        MainFormState := TWindowState(Reg.ReadInteger('State'));
        Reg.CloseKey;
      end
      else Exit;

      if Reg.OpenKeyReadOnly(REG_USER_SETTINGS_PATH + '\Panes\Character Library') then
      begin
        CharacterLibraryPanelVisible := Reg.ReadBool('Character Library');
        CharLibPanelHeight := Reg.ReadInteger('Height');
        CharLibTopPanelHeight := Reg.ReadInteger('TopPanelHeight');
        CharacterLibraryPanelWidth := Reg.ReadInteger('Width');
        CharacterLibraryPanelCharactersPanelWidth := Reg.ReadInteger('CharWidth');
        CharLibPanelPlace := TAlign(Reg.ReadInteger('Place'));
        CharLibToolPanelTop := Reg.ReadInteger('ToolTop');
        CharLibPanelCollapsed := Reg.ReadBool('Collapsed');

        PreviewZoomTrackBarValue := Reg.ReadInteger('Zoom');
        ShowCharPreviewLCDGridLines := Reg.ReadBool('Gridlines');
        Reg.CloseKey;
      end
      else Exit;

      if Reg.OpenKeyReadOnly(REG_USER_SETTINGS_PATH + '\Panes\Text to LCD') then
      begin
        TextToLCDPanelVisible := Reg.ReadBool('Text to LCD');
        TextToLCDPanelHeight := Reg.ReadInteger('Height');

        DefaultCharacterSource := TCharacterSource(Reg.ReadInteger('Default Character Source'));
        SystemFontsSectionActivePageIndex := Reg.ReadInteger('Active Font Section');

        ShowInsertTextErrorLog := Reg.ReadBool('Show Error Log');
        AdjustLCDWidthIfNeeded := Reg.ReadBool('Adjust LCD Width');
        AdjustLCDHeightIfNeeded := Reg.ReadBool('Adjust LCD Height');
        InputTextDirection := TBiDiMode(Reg.ReadInteger('Text Direction'));

        //It is not necessary to 'Max Text History' value exist in the registry
        if Reg.ValueExists('Max Text History') then
          TextToLCDMaxTextHistory := Reg.ReadInteger('Max Text History')
        else
          TextToLCDMaxTextHistory := TEXT_TO_LCD_DEFAULT_MAX_HISTORY_COUNT;

        Reg.CloseKey;
      end
      else Exit;

      if Reg.OpenKeyReadOnly(REG_USER_SETTINGS_PATH + '\Design') then
      begin
        LCDFilledColor := Reg.ReadInteger('Filled Cell Color');
        LCDClearedColor := Reg.ReadInteger('Cleared Cell Color');
        LCDUseSolidColors := Reg.ReadBool('Use Solid Colors');
        LCDGridColor := Reg.ReadInteger('Grid Color');
        LCDCellSpace := Reg.ReadInteger('Cell Space');
        ShowCursorRectangle := Reg.ReadBool('Cursor Rectangle');
        LCDCursorColor := Reg.ReadInteger('Cursor Color');

        NewLCDDefaultWidth := Reg.ReadInteger('Design Default Width');
        NewLCDDefaultHeight := Reg.ReadInteger('Design Default Height');

        ZoomTrackBarValue := Reg.ReadInteger('Zoom');
        ShowLCDGridLines := Reg.ReadBool('Gridlines');
        Reg.CloseKey;
      end
      else Exit;

      if Reg.OpenKeyReadOnly(REG_USER_SETTINGS_PATH + '\Design Picture Preview') then
      begin
        LCDPicturePreviewVisible := Reg.ReadBool('Design Picture Preview');
        LCDPicturePreviewFormPosition.X := Reg.ReadInteger('Left');
        LCDPicturePreviewFormPosition.Y := Reg.ReadInteger('Top');
        LCDPicturePreviewFormWidth := Reg.ReadInteger('Width');
        LCDPicturePreviewFormHeight := Reg.ReadInteger('Height');
        LCDPicturePreviewFormFirstShow := Reg.ReadBool('First Show');
        Reg.CloseKey;
      end
      else Exit;

      if Reg.OpenKeyReadOnly(REG_USER_SETTINGS_PATH + '\Globals') then
      begin
        NewDesignDialog := Reg.ReadBool('NewDesignDialog');
        NewDesignFormCheckChecked := Reg.ReadBool('NewDesignChecked');
        if not Reg.ValueExists('Last Category Folder') then
          Exit;
        LastCategoryFolder := Reg.ReadString('Last Category Folder');
        CTRLClickToggle := Reg.ReadBool('CTRLClickToggle');
        DontAdvanceCursorAutomatically := Reg.ReadBool('DontAdvanceCursorAutomatically');
        RUFLCount := Reg.ReadInteger('RUFL Count');
        UndoLevels := Reg.ReadInteger('Undo Levels');
        Reg.CloseKey;
      end
      else Exit;

    end;

    Result := True;

    finally
      Reg.Free;
    end;
  end;

  function RegAccessError: Boolean;
  var
    Reg: TRegistry;
  begin
    Result := False;  //No registry access error
    Reg := TRegistry.Create;
    try
      if Reg.KeyExists(REG_USER_SETTINGS_PATH) then
        Result := not Reg.OpenKey(REG_USER_SETTINGS_PATH, False);
      Reg.CloseKey;
      Reg.Free;
    except
      Result := True;  //Registry access error
      Reg.Free;
    end;
  end;

  procedure ReadFavoriteFontsList(List: TTntStrings);
  var
    Reg: TTntRegistry;
    FList: TTntStringList;
    i: Integer;
    S: WideString;
  begin
    Reg := TTntRegistry.Create(KEY_READ);
    FList := TTntStringList.Create;

    try
      Reg.RootKey := HKEY_CURRENT_USER;
      if Reg.OpenKeyReadOnly(REG_USER_SETTINGS_PATH + '\Panes\Text to LCD\Favorite Fonts') then
      begin
        Reg.GetValueNames(FList);
        FList.Sort;  //Sort the list so that the list is ordered correctly.
        for i := 0 to FList.Count - 1 do
          if Reg.GetDataType(FList.Strings[i]) = rdString then
          begin
            S := Reg.ReadString(FList.Strings[i]);
            //Blank and duplicated items are not allowed
            if (Length(Trim(S)) > 0) and
               (List.IndexOf(S) < 0) then
              List.Add(S);
          end;
        Reg.CloseKey;
      end;
    finally
      FList.Free;
      Reg.Free;
    end;
    if List.Count = 0 then
      for i := 1 to Length(DEFAULT_FAVORITE_FONTS) do
        List.Add(DEFAULT_FAVORITE_FONTS[i]);
  end;

  procedure ReadAndApplyActiveCategories;
  var
    Reg: TRegistry;
    SelectedCatList, ValueNamesList: TStringList;
    i: Integer;
    S: String;
  begin
    Reg := TRegistry.Create(KEY_READ);
    ValueNamesList := TStringList.Create;
    SelectedCatList := TStringList.Create;
    SelectedCatList.Clear;

    try
      Reg.RootKey := HKEY_CURRENT_USER;
      if Reg.OpenKeyReadOnly(REG_USER_SETTINGS_PATH + '\Panes\Text to LCD\Active Categories') then
      begin
        Reg.GetValueNames(ValueNamesList);
        for i := 0 to ValueNamesList.Count - 1 do
          if Reg.GetDataType(ValueNamesList.Strings[i]) = rdString then
          begin
            S := Reg.ReadString(ValueNamesList.Strings[i]);
            //Skip blank and duplicated items
            if (Length(Trim(S)) > 0) and
               (SelectedCatList.IndexOf(S) < 0) then
              SelectedCatList.Add(S);
          end;
        Reg.CloseKey;
        RefreshCategoryList;
        ApplySelectedCatList(SelectedCatList);
      end;
    finally
      SelectedCatList.Free;
      ValueNamesList.Free;
      Reg.Free;
    end;
  end;

var
  RegRead: Boolean;
  ApplyError: Boolean;
//  F:File of TGlobalOptions;
//  ByteFile,F2:File of Byte;
//  TextF:TextFile;
//  i:Integer;
//  tmpS:String;
//  Buf:array[0..100] of Char;
//  NumRead,NumWritten:Integer;
//  ReadItems:Boolean;
begin
  //Read Favorite Fonts list
{  try
    if FileExists(ApplicationPath + FAVORITE_FONTS_FNAME) then
      FavoriteFontsCombo.Items.LoadFromFile(ApplicationPath + FAVORITE_FONTS_FNAME);
  except
  end;}
  try
    FavoriteFontsCombo.Clear;
    ReadFavoriteFontsList(FavoriteFontsCombo.Items);
  except
  end;

  try
    RUFLReadEntries;
  except
  end;

  SomeValuesExist := False;
  try
    RegRead := ReadRegistrySettings;
  except
    RegRead := False;
  end;

  if not RegRead then
  begin
    if SomeValuesExist then
      //-- Show always in English --
      WideMessageDlgSoundTop('Program registry settings are corrupted. Default settings loaded.', mtError, [mbOK], 0)
    else
    begin
      //-- Show always in English --
      if RegAccessError then
        WideMessageDlgSoundTop('Unable to read the program registry settings. Default settings loaded.', mtError, [mbOK], 0);
    end;
    LoadDefaultConfig(GlobalOptions);
    ApplyStartupConfig;
    Exit;
  end;

  ApplyError := True;
  if ValidateConfiguration(GlobalOptions, True) then
  begin
    try
      ApplyStartupConfig;
      ApplyError := False;
    except
    end;
  end;

  if ApplyError then
  begin
    //-- Show always in English --
    WideMessageDlgSoundTop('Program registry settings are corrupted. Default settings loaded.', mtError, [mbOK], 0);
    LoadDefaultConfig(GlobalOptions);
    ApplyStartupConfig;
    Exit;
  end;

  //Read and select active categories
  try
    ReadAndApplyActiveCategories;
  except
  end;
(*  if FileExists(ApplicationPath + SELECTED_CATEGORIES_FNAME) then
  begin
    SelectedCatList := TStringList.Create;
    SelectedCatList.Clear;
    try
      SelectedCatList.LoadFromFile(ApplicationPath + SELECTED_CATEGORIES_FNAME);
    except
      SelectedCatList.Free;
      SelectedCatList := nil;
    end;

    try
      if Assigned(SelectedCatList) then
      begin
        RefreshCategoryList;
        ApplySelectedCatList(SelectedCatList);
        SelectedCatList.Free;
      end;
    except
      SelectedCatList.Free;
    end;
  end;
*)

(*
  if not FileExists(ApplicationPath + LCD_DESIGNER_CONFIG_FILE) then
  begin
    LoadDefaultConfig(GlobalOptions);
    ApplyStartupConfig;
    Exit;
  end;
  AssignFile(F, ApplicationPath + LCD_DESIGNER_CONFIG_FILE);
  {$I-}
  Reset(F);
  {$I+}
  if IOResult <> 0 then
  begin
    WideShowMessageSoundTop(WideFormat(Dyn_Texts[16], [LCD_DESIGNER_CONFIG_FILE]));
    {$I-}
    CloseFile(F);
    {$I+}
    IOResult;
    LoadDefaultConfig(GlobalOptions);
    ApplyStartupConfig;
    Exit;
  end;
  Read(F, GlobalOptions);
  CloseFile(F);}

  if GlobalOptions.SelectedCatListCount > 0 then
  begin
    ReadItems := True;
    AssignFile(ByteFile, ApplicationPath + LCD_DESIGNER_CONFIG_FILE);
    Reset(ByteFile);
    Seek(ByteFile,SizeOf(TGlobalOptions));
    AssignFile(F2, ApplicationPath + 'items.tmp');
//    {$I-}
    Rewrite(F2);
    {$I+}
    if IOResult = 0 then
    begin
      repeat
        BlockRead(ByteFile, Buf, Length(Buf), NumRead);
        BlockWrite(F2, Buf, NumRead, NumWritten);
      until NumRead = 0;
      {$I-}
      CloseFile(F2);
      CloseFile(ByteFile);
      {$I+}
      IOResult;
    end
    else
    begin
      CloseFile(ByteFile);
      CloseFile(F2);
      ReadItems := False;
    end;
  end;
  //Read selected category items and apply selection
  if ReadItems and (GlobalOptions.SelectedCatListCount > 0) then
  begin
    SelectedCatList := TStringList.Create;
    SelectedCatList.Clear;
    AssignFile(TextF, ApplicationPath + 'items.tmp');
    IOResult;
    {$I-}
    Reset(TextF);
    {$I+}
    if IOResult = 0 then
    begin
      for i := 1 to GlobalOptions.SelectedCatListCount do
      begin
        {$I-}
        ReadLn(TextF, tmpS);
        {$I+}
        if IOResult = 0 then
          SelectedCatList.Append(tmpS)
        else
          Break;
      end;
      {$I-}
      CloseFile(TextF);
      {$I+}
      IOResult;
      Sleep(100);
      DeleteFile(ApplicationPath + 'items.tmp');
      try
        RefreshCategoryList;
        ApplySelectedCatList(SelectedCatList);
      except
      end;
    end
    else
    begin
      {$I-}
      CloseFile(TextF);
      {$I+}
      IOResult
    end;
  end;
*)
end;

procedure TMainForm.LoadDefaultConfig(var AGlobalOptions: TGlobalOptions);

  procedure LoadDefaultUserMappedChars;
    procedure AppendCharToList(MapGrid: TAdvStringGrid;
      const UserMappedChar: TUserMappedChar);
    var
      Row: Integer;
    begin
      for Row := 1 to MapGrid.RowCount - 2 do
        if MapGrid.Cells[0, Row] = UserMappedChar.Character then
          Exit;
      MapGrid.RowCount := MapGrid.RowCount + 1;
      MapGrid.Cells[0, MapGrid.RowCount - 2] := UserMappedChar.Character;
      MapGrid.Cells[1, MapGrid.RowCount - 2] := UserMappedChar.MappedFName;
    end;

  var
    MapGrid: TAdvStringGrid;
    TempParent: TForm;
    i: Integer;
  begin
    //****************************
    //Don't write anything if license information is not valid
    if not License5.CheckLicenseStatus then
      Exit;
    //****************************

    //This procedure appends the predefined characters to the list, not
    // replacing the old list (if any).
    TempParent := TForm.Create(nil);
    TempParent.Visible := False;
    MapGrid := TAdvStringGrid.Create(TempParent);
    MapGrid.Parent := TempParent;
    MapGrid.Visible := False;  //--> Prevent potential software bugs

    try
      LCDProcs.ReadUserMappedChars(MapGrid);

      for i := 1 to Length(DEFAULT_USER_MAPPED_CHARS) do
        AppendCharToList(MapGrid, DEFAULT_USER_MAPPED_CHARS[i]);

      LCDProcs.WriteUserMappedChars(MapGrid);
    finally
      MapGrid.Free;
      TempParent.Free;
    end;
  end;

begin
  try
    //User-Mapped Characters
    LoadDefaultUserMappedChars;
  except
  end;

  with AGlobalOptions do
  begin
    LibraryPath := ApplicationPath + 'Character Library';
    NewLCDDefaultWidth := 24;
    NewLCDDefaultHeight := 8;
    NewDesignDialog := True;
    LCDFilledColor := DEFAULT_LCD_FILLED_COLOR;
    LCDClearedColor := DEFAULT_LCD_CLEARED_COLOR;
    LCDUseSolidColors := False;
    ShowCursorRectangle := True;
    LCDCursorColor := DEFAULT_LCD_CURSOR_COLOR;
    CTRLClickToggle := False;
    DontAdvanceCursorAutomatically := True;

    MainFormLeft := 10;
    MainFormTop := 10;
    MainFormWidth := Width;
    MainFormHeight := Height;
    MainFormState := wsNormal;
    Position := poDesktopCenter;

    CharacterLibraryPanelVisible := True;
    CharLibPanelHeight := CharacterLibraryPanel.Height;
    ZoomTrackBarValue := ZoomTrackBar.Position;
    PreviewZoomTrackBarValue := PreviewZoomTrackBar.Position;
    ShowLCDGridLines := True;
    ShowCharPreviewLCDGridLines := True;
    ShowInsertTextErrorLog := ErrorLogCheck.Checked;
    DefaultCharacterSource := csSystemFonts;

    GetFontSettings(FavoriteFontSamplePanel.Font, TextToLCDFavFont);
    GetFontSettings(FontSamplePanel.Font, TextToLCDAllFont);

    with LCDAnimatorSettings do
    begin
      LCDZoomValue := 10;
      LCDGridVisible := True;
      AnimDirection := drLeft;
      AnimSpeed := 12;
      AdvancedOptionsVisible := False;
      OutputCheckValue := False;
      RunExternalCheckValue := False;
      OutFile := '';
      ExternalProgram := '';
      FormWidth := 0;
    end;

    with ImportGraphicsFormSettings do
    begin
      PreviewZoomValue := 5;
      ShowPreviewGridLines := False;
      FormWidth := 612;
      FormHeight := 400;
      SourceSectionWidth := Trunc(FormWidth / 2);

    //==========================================================================
    //============================   NEW SETTINGS   ============================
    //==========================================================================

      ScaleFactor := 100;
      ColorTolerance := 0;
      ImportOnlySelection := False;
    end;

    NewDesignFormCheckChecked := True;
    CharacterLibraryPanelWidth := CharacterLibraryPanel.Width;
    CharLibTopPanelHeight := CharacterLibraryTopPanel.Height;
    CharacterLibraryPanelCharactersPanelWidth := CharactersPanel.Width;
    TextToLCDPanelVisible := TextToLCDPanel.Visible;
    TextToLCDPanelHeight := TextToLCDPanel.Height;
    SystemFontsSectionActivePageIndex := 0;  //Favorite Fonts

    LCDGridColor := DEFAULT_LCD_GRIDLINES_COLOR;
    LCDCellSpace := LCDGrid.GridLineWidth;

    CharLibPanelPlace := alLeft;
    CharLibToolPanelTop := 0;  //Is not important here because CharLibPanelCollapsed by defaukt is False.
    CharLibPanelCollapsed := False;

    LCDPicturePreviewVisible := False;
    LCDPicturePreviewFormWidth := 260;
    LCDPicturePreviewFormHeight := 160;
    LCDPicturePreviewFormFirstShow := True;
    LCDPicturePreviewFormPosition.X := 0;
    LCDPicturePreviewFormPosition.Y := 0;

    AdjustLCDWidthIfNeeded  :=  AutoextendLCDWidthCheck.Checked;
    AdjustLCDHeightIfNeeded := AutoextendLCDHeightCheck.Checked;
    InputTextDirection := bdRightToLeft;

    ShowStatusBar := StatusBarMenuItem.Checked;

    //ExportLCDForm
    with ExportLCDFormSettings do
    begin
      //Basic Output settings
      ExportOnlySelection := False;
      OutputFormat := ofBinary;
      OutputHexFormat := hfHFormat;
      ColumnByColumnOrder := False;
      InverseOrder := False;
      PrefixString := '';
      SuffixString := '';
      InverseValues := False;
      ExportLCDFormHeight := 485;
      AutomaticApply := True;
      //Advanced Output settings
      AddColSep := False;
      AddColBreak := False;
      AddRowSep := False;
      ColSepNumOfUnits := 1;
      ColBreakNumOfUnits := 2;
      ColSepUnitComboIndex := 0;
      ColBreakUnitComboIndex := 0;
      RowSepNumOfRows := 1;
      ColSepText := ',';
      //Quick Export settings
      QECopyToClipboard := False;
      QESaveToFile := False;
      QEFileName := '';
      //Quick Export advanced settings
      QEAppendToFile := False;
      QEAdvancedFileName := '';
      QEFrameStartNum := 1;
    end;

    with CodeToLCDFormSettings do
    begin
      AutodetectCodeFormat := True;
      CustomFormat := ofHexadecimal;
      PrefixStr := '';
      SuffixStr := '';
      CharsToIgnore := '&h*.,;_-';
      ShowPreviewGridLines := True;
      PreviewZoomValue := 10;
      ColumnByColumnOrder := False;
    end;

    ActiveLanguageInfo := ActiveLanguage;  //ActiveLanguage is initialized in the Language.pas unit.
    ActiveLanguageOptionsInfo := ActiveLanguageOptions;  //ActiveLanguageOptions is initialized in the Language.pas unit.
    DefaultHelpLanguage := 'Farsi';

    RUFLCount := 5;

    TextToLCDMaxTextHistory := TEXT_TO_LCD_DEFAULT_MAX_HISTORY_COUNT;
    UndoLevels := 15;
  end;
end;

//==============================================================================
//======================== SYNTAX IS CHECKED TO THIS LINE ======================
//==============================================================================

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  Response:Integer;
begin
  if FullScreenForm.Visible and not Self.Visible then
  begin
    CanClose := False;
    FullScreenForm.Close;
  end
  else if WorkingDesignChanged then
  begin
    Response := WideMessageDlgSoundTop(Dyn_Texts[18] {'Do you want to save the changes to the current design?'}, mtWarning, mbYesNoCancel, 0);
    if Response = mrCancel then
      CanClose := False
    else if Response = mrNo then
      CanClose := True
    else
    begin
      SaveDesignMenuItem.Click;
      CanClose := not WorkingDesignChanged;
    end;
  end;
end;

procedure TMainForm.InitiateNewWorkingDesign(PurgeHistory: Boolean);
var
  Row,Col:Integer;
begin
  OldLCDGrid.RowCount:=LCDGrid.RowCount;
  OldLCDGrid.ColCount:=LCDGrid.ColCount;
  for Row:=0 to LCDGrid.RowCount-1 do
    for Col:=0 to LCDGrid.ColCount-1 do
    begin
      OldLCDGrid.Colors[Col, Row] := LCDGrid.Colors[Col, Row];
      //***It is not necessary to store ColorsTo values
      //***OldLCDGrid.ColorsTo[Col, Row] := LCDGrid.ColorsTo[Col, Row];
    end;

  //LCD history
  if PurgeHistory then
  begin
    LCDHistory.ClearHistory;
    AddNewHistoryState;
  end;
end;

function TMainForm.WorkingDesignChanged: Boolean;
var
  Row, Col: Integer;
begin
  Result := (OldLCDGrid.RowCount <> LCDGrid.RowCount) or
            (OldLCDGrid.ColCount <> LCDGrid.ColCount);

  if not Result then
    for Row := 0 to OldLCDGrid.RowCount - 2 do  //Minus 2 because of TAdvStringGrid
      for Col := 0 to OldLCDGrid.ColCount - 1 do
        //***Comparing only Colors values is sufficient (ColorsTo is not needed)
        if LCDGrid.Colors[Col, Row] <> OldLCDGrid.Colors[Col, Row] then
        begin
          Result := True;
          Exit;
        end;
end;

procedure TMainForm.ApplyStartupConfig;
var
  WindowRect: TWindowRect;
  iTemp: Integer;
begin
  //////////////////////
  LoadingConfig := True;
  //////////////////////

  with LCDOptions do
  begin
    LCDFilledColor := GlobalOptions.LCDFilledColor;
    LCDClearedColor := GlobalOptions.LCDClearedColor;
    LCDUseSolidColors := GlobalOptions.LCDUseSolidColors;
    ShowCursorRectangle := GlobalOptions.ShowCursorRectangle;
    LCDCursorColor := GlobalOptions.LCDCursorColor;
    CTRLClickToggle := GlobalOptions.CTRLClickToggle;
    DontAdvanceCursorAutomatically := GlobalOptions.DontAdvanceCursorAutomatically;

    ClearLCDUndefinedColors(CharPreviewGrid, LCDClearedColor, [LCDFilledColor, LCDClearedColor]);

    LCDGrid.SelectionRectangle := ShowCursorRectangle;
    LCDGrid.SelectionRectangleColor := LCDCursorColor;
    LCDGridColor := GlobalOptions.LCDGridColor;

    OnLCDOptionsChanged;
  end;

  with GlobalOptions do
  begin
    CharacterLibraryPanel.Height:=CharLibPanelHeight;

//    CharacterLibraryPaneMenuItem.Checked:=CharacterLibraryPanelVisible;
//    CharacterLibraryPaneMenuItem.OnClick(CharacterLibraryPaneMenuItem);

    PreviewZoomTrackBar.Position:=PreviewZoomTrackBarValue+1;  //Force update
    PreviewZoomTrackBar.Position:=PreviewZoomTrackBarValue;

    LCDGridLinesCheck.Checked:=ShowLCDGridLines;
    CharPreviewGridLinesCheck.Checked:=ShowCharPreviewLCDGridLines;
    ErrorLogCheck.Checked:=ShowInsertTextErrorLog;
    case DefaultCharacterSource of
      csCharacterLibrary: CharacterLibrarySourceRadio.Checked:=True;
      csSystemFonts:      SystemFontsSourceRadio.Checked:=True;
    end;

    SetFontSettings(FavoriteFontSamplePanel.Font, TextToLCDFavFont);
    SetFontSettings(FontSamplePanel.Font, TextToLCDAllFont);
    PrepareFontSectionControls;

    //==========================================================================
    //=============================   NEW SETTINGS   ===========================
    //==========================================================================
    TextToLCDPaneMenuItem.Checked := TextToLCDPanelVisible;
    TextToLCDPaneMenuItem.OnClick(TextToLCDPaneMenuItem);
    TextToLCDPanel.Height := TextToLCDPanelHeight;
    SystemFontsSection.ActivePageIndex := SystemFontsSectionActivePageIndex;

    ZoomTrackBar.Position := ZoomTrackBarValue + 1;  //Force update
    ZoomTrackBar.Position := ZoomTrackBarValue;

    CharacterLibraryTopPanel.Height := CharLibTopPanelHeight;
    CharacterLibraryPanel.Width := CharacterLibraryPanelWidth;
    CharactersPanel.Width := CharacterLibraryPanelCharactersPanelWidth;

    TextToLCDPanel.Align := alBottom;

    case CharLibPanelPlace of
      alLeft:
        begin
          LeftToolPanel.Width := CharacterLibraryPanel.Width;
          CharacterLibraryPanel.Parent := LeftToolPanel;
          SetInsertBtnRightGlyph;
        end;
      alRight:
        begin
          RightToolPanel.Width := CharacterLibraryPanel.Width;
          CharacterLibraryPanel.Parent := RightToolPanel;
          SetInsertBtnLeftGlyph;
        end;
    end;

    SetCharLibBtnCollapseGlyph;
    if CharLibPanelCollapsed then
    begin
      CharLibExpandBtn.Click;
      CharacterLibraryPanel.Parent.Top := CharLibToolPanelTop;
    end;
    CharacterLibraryPanel.Align := alClient;
    CharacterLibraryPaneMenuItem.Checked:=CharacterLibraryPanelVisible;
    CharacterLibraryPaneMenuItem.OnClick(CharacterLibraryPaneMenuItem);

    AutoextendLCDWidthCheck.Checked := AdjustLCDWidthIfNeeded;
    AutoextendLCDHeightCheck.Checked := AdjustLCDHeightIfNeeded;

    InputText.BiDiMode := InputTextDirection;
    InputTextLTRBtn.Down := InputTextDirection = bdLeftToRight;
    InputTextRTLBtn.Down := InputTextDirection = bdRightToLeft;

    //MainForm size and position
    WindowRect.Top := MainFormTop;
    WindowRect.Width := MainFormWidth;
    WindowRect.Height := MainFormHeight;
    iTemp := Integer(MainFormState);
    Left := MainFormLeft;
    Top := WindowRect.Top;
    Width := WindowRect.Width;
    Height := WindowRect.Height;
    WindowState := TWindowState(iTemp);

    //Status Bar
    StatusBarMenuItem.Checked := ShowStatusBar;
    StatusBarMenuItem.OnClick(StatusBarMenuItem);

    //Undo levels
    if UndoLevels > 0 then
      LCDHistory.Size := UndoLevels + 1
    else
    begin
      UndoLevels := 0;
      LCDHistory.Size := 0;
    end;

    //Language
    if not SwitchLanguageInfo(ActiveLanguageInfo, ActiveLanguageOptionsInfo) then
    begin
      WideShowMessageSoundTop('Language file was not found. Default language will be used.');
      ActiveLanguageInfo := ActiveLanguage;  //ActiiveLanguage is initilized to internal language in Language.pas.
      ActiveLanguageOptionsInfo := ActiveLanguageOptions;
      SwitchLanguageInfo(ActiveLanguageInfo, ActiveLanguageOptionsInfo);
    end;
    SetLanguage(ActiveLanguage, ActiveLanguageOptions, ActiveLangInstance);
    //--> Language of other forms will be changed in ApplyStartupOnShowConfig.
    //SetDefaultHelpLanguage(DefaultHelpLanguage);  --> This is done in the SetLanguage procedure.

    //Quick Export advanced export related variables
    NextFrameNo := ExportLCDFormSettings.QEFrameStartNum;
    LastDefaultQEInputString := '';
  end;
  ///////////////////////
  LoadingConfig := False;
  ///////////////////////

  //Recently used file list
  RUFLBuildMenuItems;

  InputText.Clear;  //Clear all the items in the Text to LCD input text history
end;

procedure TMainForm.WriteProgramSettings(WriteIfChanged: Boolean = True {Not supported in this version});

  function WriteRegistrySettings: Boolean;

    function WriteRegRecord(const LCDAnimatorSettings: TLCDAnimatorSettings): Boolean; overload;
    var
      Reg: TRegistry;
    begin
      Result := False;
      Reg := TRegistry.Create;
      try

      Reg.RootKey := HKEY_CURRENT_USER;
      with LCDAnimatorSettings do
      begin
        if not Reg.OpenKey(REG_USER_SETTINGS_PATH + '\Design Animator', True) then
          Exit;
        /////////////////////////////
        Reg.WriteInteger('Zoom', LCDZoomValue);
        Reg.WriteBool('Gridlines', LCDGridVisible);
        Reg.WriteInteger('Animation Direction', Integer(AnimDirection));
        Reg.WriteInteger('Animation Speed', AnimSpeed);
        Reg.WriteBool('Advanced Options', AdvancedOptionsVisible);
        Reg.WriteBool('Output Frames to File', OutputCheckValue);
        Reg.WriteBool('Run External Program', RunExternalCheckValue);
        Reg.WriteString('Output File', OutFile);
        Reg.WriteString('External Program', ExternalProgram);
        Reg.WriteInteger('Left', FormLeft);
        Reg.WriteInteger('Top', FormTop);
        Reg.WriteInteger('Width', FormWidth);
        Reg.WriteInteger('Height', FormHeight);
        Reg.WriteInteger('State', Integer(FormState));
        /////////////////////////////
      end;
      Result := True;

      finally
      Reg.Free;
      end;
    end;

    function WriteRegRecord(const ImportGraphicsFormSettings: TImportGraphicsFormSettings): Boolean; overload;
    var
      Reg: TRegistry;
    begin
      Result := False;
      Reg := TRegistry.Create;
      try

      Reg.RootKey := HKEY_CURRENT_USER;
      with ImportGraphicsFormSettings do
      begin
        if not Reg.OpenKey(REG_USER_SETTINGS_PATH + '\Import Picture', True) then
          Exit;
        /////////////////////////////
        Reg.WriteInteger('Zoom', PreviewZoomValue);
        Reg.WriteBool('Gridlines', ShowPreviewGridLines);
        Reg.WriteInteger('Width', FormWidth);
        Reg.WriteInteger('Height', FormHeight);
        Reg.WriteInteger('Source Section Width', SourceSectionWidth);
        Reg.WriteInteger('Scale Factor', ScaleFactor);
        Reg.WriteInteger('Color Tolerance', ColorTolerance);
        Reg.WriteBool('Import Only Selection', ImportOnlySelection);
        /////////////////////////////
      end;
      Result := True;

      finally
      Reg.Free;
      end;
    end;

    function WriteRegRecord(const ExportLCDFormSettings: TExportLCDFormSettings): Boolean; overload;
    var
      Reg: TRegistry;
    begin
      Result := False;
      Reg := TRegistry.Create;
      try

      Reg.RootKey := HKEY_CURRENT_USER;
      with ExportLCDFormSettings do
      begin
        if not Reg.OpenKey(REG_USER_SETTINGS_PATH + '\Export Design', True) then
          Exit;
        /////////////////////////////
        Reg.WriteInteger('Height', ExportLCDFormHeight);
        Reg.WriteBool('Automatic Apply', AutomaticApply);
        Reg.CloseKey;

        if not Reg.OpenKey(REG_USER_SETTINGS_PATH + '\Export Design\Basic Output', True) then
          Exit;
        Reg.WriteBool('Only Selection', ExportOnlySelection);
        Reg.WriteInteger('Output Format', Integer(OutputFormat));
        Reg.WriteInteger('Hex Format', Integer(OutputHexFormat));
        Reg.WriteBool('Order', ColumnByColumnOrder);
        Reg.WriteBool('Inverse Order', InverseOrder);
        Reg.WriteString('Prefix', PrefixString);
        Reg.WriteString('Suffix', SuffixString);
        Reg.WriteBool('Inverse Values', InverseValues);
        Reg.CloseKey;

        if not Reg.OpenKey(REG_USER_SETTINGS_PATH + '\Export Design\Advanced Output', True) then
          Exit;
        Reg.WriteBool('AddColSep', AddColSep);
        Reg.WriteBool('AddColBreak', AddColBreak);
        Reg.WriteBool('AddRowSep', AddRowSep);
        Reg.WriteInteger('ColSepNum', ColSepNumOfUnits);
        Reg.WriteInteger('ColBreakNum', ColBreakNumOfUnits);
        Reg.WriteInteger('ColSepUnit', ColSepUnitComboIndex);
        Reg.WriteInteger('ColBreakUnit', ColBreakUnitComboIndex);
        Reg.WriteInteger('RowSepNum', RowSepNumOfRows);
        Reg.WriteString('Column Separator', ColSepText);
        Reg.CloseKey;

        if not Reg.OpenKey(REG_USER_SETTINGS_PATH + '\Export Design\Quick Export', True) then
          Exit;
        Reg.WriteBool('Copy To Clipboard', QECopyToClipboard);
        Reg.WriteBool('Save To File', QESaveToFile);
        Reg.WriteString('Output File', QEFileName);

        Reg.WriteBool('Append To File', QEAppendToFile);
        Reg.WriteString('Advanced Output File', QEAdvancedFileName);
        Reg.WriteInteger('Frame Start Number', QEFrameStartNum);

        Reg.CloseKey;
        /////////////////////////////
      end;
      Result := True;

      finally
      Reg.Free;
      end;
    end;

    function WriteRegRecord(const CodeToLCDFormSettings: TCodeToLCDFormSettings): Boolean; overload;
    var
      Reg: TTntRegistry;
    begin
      Result := False;
      Reg := TTntRegistry.Create;
      try

      Reg.RootKey := HKEY_CURRENT_USER;
      with CodeToLCDFormSettings do
      begin
        if not Reg.OpenKey(REG_USER_SETTINGS_PATH + '\Code To LCD', True) then
          Exit;
        /////////////////////////////
        Reg.WriteBool('Autodetect Code Format', AutodetectCodeFormat);
        Reg.WriteInteger('Custom Format', Integer(CustomFormat));

        Reg.WriteString('Prefix', PrefixStr);
        Reg.WriteString('Suffix', SuffixStr);
        Reg.WriteString('Chars To Ignore', CharsToIgnore);

        Reg.WriteBool('Gridlines', ShowPreviewGridLines);
        Reg.WriteInteger('Zoom', PreviewZoomValue);
        Reg.WriteBool('Order', ColumnByColumnOrder);
        Reg.CloseKey;
       /////////////////////////////
      end;
      Result := True;

      finally
      Reg.Free;
      end;
    end;

    function WriteRegRecord(const FontSettings: TFontSettings; const RegPath: String): Boolean; overload;
    var
      Reg: TRegistry;
    begin
      Result := False;
      Reg := TRegistry.Create;
      try

      Reg.RootKey := HKEY_CURRENT_USER;
      with FontSettings do
      begin
        if not Reg.OpenKey(REG_USER_SETTINGS_PATH + RegPath, True) then
          Exit;
        /////////////////////////////
        Reg.WriteString('Name', Name);
        Reg.WriteInteger('Size', Size);
        Reg.WriteInteger('Height', Height);
        Reg.WriteInteger('Pitch', Integer(Pitch));
        Reg.WriteInteger('Color', Color);

        Reg.WriteBool('Bold', fsBold in Style);
        Reg.WriteBool('Italic', fsItalic in Style);
        Reg.WriteBool('Underlined', fsUnderline in Style);
        Reg.WriteBool('StrikedOut', fsStrikeOut in Style);

        Reg.WriteInteger('Charset', Charset);
        /////////////////////////////
      end;
      Result := True;

      finally
      Reg.Free;
      end;
    end;

    function WriteRegRecord(const LanguageInfo: TLanguageInfo;
      const LanguageOptions: TLanguageOptions): Boolean; overload;
    begin
      Result := WriteLanguageSettings(LanguageInfo, LanguageOptions, True);
    end;

  var
    Reg: TRegistry;
  begin
    Result := False;
    Reg := TRegistry.Create;
    try

    Reg.RootKey := HKEY_CURRENT_USER;

    with GlobalOptions do
    begin
      if not WriteRegRecord(LCDAnimatorSettings) then
        Exit;
      if not WriteRegRecord(ImportGraphicsFormSettings) then
        Exit;
      if not WriteRegRecord(ExportLCDFormSettings) then
        Exit;
      if not WriteRegRecord(CodeToLCDFormSettings) then
        Exit;
      if not WriteRegRecord(ActiveLanguageInfo, ActiveLanguageOptionsInfo) then
        Exit;
      if not WriteRegRecord(TextToLCDFavFont, '\Panes\Text to LCD\Font 1') then
        Exit;
      if not WriteRegRecord(TextToLCDAllFont, '\Panes\Text to LCD\Font 2') then
        Exit;

      if Reg.OpenKey(REG_USER_SETTINGS_PATH, True) then
      begin
        Reg.WriteString('Library Path', LibraryPath);
        Reg.WriteString('Default Help Language', DefaultHelpLanguage);
        Reg.CloseKey;
      end
      else Exit;

      if Reg.OpenKey(REG_USER_SETTINGS_PATH + '\Main Window', True) then
      begin
        Reg.WriteBool('Status Bar', ShowStatusBar);
        Reg.WriteInteger('Left', MainFormLeft);
        Reg.WriteInteger('Top', MainFormTop);
        Reg.WriteInteger('Width', MainFormWidth);
        Reg.WriteInteger('Height', MainFormHeight);
        Reg.WriteInteger('State', Integer(MainFormState));
        Reg.CloseKey;
      end
      else Exit;

      if Reg.OpenKey(REG_USER_SETTINGS_PATH + '\Panes\Character Library', True) then
      begin
        Reg.WriteBool('Character Library', CharacterLibraryPanelVisible);
        Reg.WriteInteger('Height', CharLibPanelHeight);
        Reg.WriteInteger('TopPanelHeight', CharLibTopPanelHeight);
        Reg.WriteInteger('Width', CharacterLibraryPanelWidth);
        Reg.WriteInteger('CharWidth', CharacterLibraryPanelCharactersPanelWidth);
        Reg.WriteInteger('Place', Integer(CharLibPanelPlace));
        Reg.WriteInteger('ToolTop', CharLibToolPanelTop);
        Reg.WriteBool('Collapsed', CharLibPanelCollapsed);

        Reg.WriteInteger('Zoom', PreviewZoomTrackBarValue);
        Reg.WriteBool('Gridlines', ShowCharPreviewLCDGridLines);
        Reg.CloseKey;
      end
      else Exit;

      if Reg.OpenKey(REG_USER_SETTINGS_PATH + '\Panes\Text to LCD', True) then
      begin
        Reg.WriteBool('Text to LCD', TextToLCDPanelVisible);
        Reg.WriteInteger('Height', TextToLCDPanelHeight);

        Reg.WriteInteger('Default Character Source', Integer(DefaultCharacterSource));
        Reg.WriteInteger('Active Font Section', SystemFontsSectionActivePageIndex);

        Reg.WriteBool('Show Error Log', ShowInsertTextErrorLog);
        Reg.WriteBool('Adjust LCD Width', AdjustLCDWidthIfNeeded);
        Reg.WriteBool('Adjust LCD Height', AdjustLCDHeightIfNeeded);
        Reg.WriteInteger('Text Direction', Integer(InputTextDirection));
        //***The 'Max Text History' value from the TextToLCDMaxTextHistory field
        //    will not be written back to the registry
        Reg.CloseKey;
      end
      else Exit;

      if Reg.OpenKey(REG_USER_SETTINGS_PATH + '\Design', True) then
      begin
        Reg.WriteInteger('Filled Cell Color', LCDFilledColor);
        Reg.WriteInteger('Cleared Cell Color', LCDClearedColor);
        Reg.WriteBool('Use Solid Colors', LCDUseSolidColors);
        Reg.WriteInteger('Grid Color', LCDGridColor);
        Reg.WriteInteger('Cell Space', LCDCellSpace);
        Reg.WriteBool('Cursor Rectangle', ShowCursorRectangle);
        Reg.WriteInteger('Cursor Color', LCDCursorColor);

        Reg.WriteInteger('Design Default Width', NewLCDDefaultWidth);
        Reg.WriteInteger('Design Default Height', NewLCDDefaultHeight);

        Reg.WriteInteger('Zoom', ZoomTrackBarValue);
        Reg.WriteBool('Gridlines', ShowLCDGridLines);
        Reg.CloseKey;
      end
      else Exit;

      if Reg.OpenKey(REG_USER_SETTINGS_PATH + '\Design Picture Preview', True) then
      begin
        Reg.WriteBool('Design Picture Preview', LCDPicturePreviewVisible);
        Reg.WriteInteger('Left', LCDPicturePreviewFormPosition.X);
        Reg.WriteInteger('Top', LCDPicturePreviewFormPosition.Y);
        Reg.WriteInteger('Width', LCDPicturePreviewFormWidth);
        Reg.WriteInteger('Height', LCDPicturePreviewFormHeight);
        Reg.WriteBool('First Show', LCDPicturePreviewFormFirstShow);
        Reg.CloseKey;
      end
      else Exit;

      if Reg.OpenKey(REG_USER_SETTINGS_PATH + '\Globals', True) then
      begin
        Reg.WriteBool('NewDesignDialog', NewDesignDialog);
        Reg.WriteBool('NewDesignChecked', NewDesignFormCheckChecked);
        Reg.WriteString('Last Category Folder', CategoryFolderTreeView.SelectedFolderFullPath);  //LastCategoryFolder
        Reg.WriteBool('CTRLClickToggle', CTRLClickToggle);
        Reg.WriteBool('DontAdvanceCursorAutomatically', DontAdvanceCursorAutomatically);
        Reg.WriteInteger('RUFL Count', RUFLCount);
        Reg.WriteInteger('Undo Levels', UndoLevels);
        Reg.CloseKey;
      end
      else Exit;

    end;  //with GlobalOptions do
    Result := True;

    finally
    Reg.Free;
    end;
  end;

  procedure WriteFavoriteFontsList(List: TTntStrings);
  var
    Reg: TTntRegistry;
    FList: TTntStringList;
    i: Integer;
  begin
    Reg := TTntRegistry.Create;
    FList := TTntStringList.Create;

    try
      Reg.RootKey := HKEY_CURRENT_USER;
      if Reg.OpenKey(REG_USER_SETTINGS_PATH + '\Panes\Text to LCD\Favorite Fonts', True) then
      begin
        Reg.GetValueNames(FList);
        for i := 0 to FList.Count - 1 do
          Reg.DeleteValue(FList.Strings[i]);
        for i := 0 to List.Count - 1 do
          Reg.WriteString(IntToStr(i), List.Strings[i]);
        Reg.CloseKey;
      end;
    finally
      FList.Free;
      Reg.Free;
    end;
  end;

  procedure WriteActiveCategories;
  var
    Reg: TRegistry;
    SelectedCatList: TStringList;
    i: Integer;
  begin
    Reg := TRegistry.Create;
    SelectedCatList := TStringList.Create;

    try
      Reg.RootKey := HKEY_CURRENT_USER;
      if Reg.OpenKey(REG_USER_SETTINGS_PATH + '\Panes\Text to LCD\Active Categories', True) then
      begin
        Reg.GetValueNames(SelectedCatList);
        for i := 0 to SelectedCatList.Count - 1 do
          Reg.DeleteValue(SelectedCatList.Strings[i]);

        SelectedCatList.Clear;
        GetSelectedCategoriesList(SelectedCatList);

        for i := 0 to SelectedCatList.Count - 1 do
          Reg.WriteString(IntToStr(i), SelectedCatList.Strings[i]);

        Reg.CloseKey;
      end;
    finally
      SelectedCatList.Free;
      Reg.Free;
    end;
  end;

var
//  SelectedCatList:TStringList;
  RegWritten: Boolean;
//  F:File of TGlobalOptions;
//  TextF:TextFile;
//  i:Integer;
begin
  //Collect all program settings into GlobalOptions
  with GlobalOptions do
  begin

    ShowCursorRectangle := LCDOptions.ShowCursorRectangle;
    LCDFilledColor := LCDOptions.LCDFilledColor;
    LCDClearedColor := LCDOptions.LCDClearedColor;
    LCDUseSolidColors := LCDOptions.LCDUseSolidColors;
    LCDCursorColor := LCDOptions.LCDCursorColor;
    CTRLClickToggle := LCDOptions.CTRLClickToggle;
    DontAdvanceCursorAutomatically := LCDOptions.DontAdvanceCursorAutomatically;
    LCDGridColor := LCDOptions.LCDGridColor;

    CharacterLibraryPanelVisible := CharacterLibraryPaneMenuItem.Checked;
    CharLibPanelHeight := CharacterLibraryPanel.Height;
    ZoomTrackBarValue := ZoomTrackBar.Position;
    PreviewZoomTrackBarValue := PreviewZoomTrackBar.Position;
    ShowLCDGridLines := LCDGridLinesCheck.Checked;
    ShowCharPreviewLCDGridLines := CharPreviewGridLinesCheck.Checked;
    ShowInsertTextErrorLog := ErrorLogCheck.Checked;
    if CharacterLibrarySourceRadio.Checked then
      DefaultCharacterSource := csCharacterLibrary
    else if SystemFontsSourceRadio.Checked then
      DefaultCharacterSource := csSystemFonts;

    GetFontSettings(FavoriteFontSamplePanel.Font, TextToLCDFavFont);
    GetFontSettings(FontSamplePanel.Font, TextToLCDAllFont);

    //==========================================================================
    //=============================   NEW SETTINGS   ===========================
    //==========================================================================
    with CodeToLCDFormSettings do
    begin
      AutodetectCodeFormat := CodeToLCDForm.AutodetectCodeFormatCheck.Checked;
      PrefixStr := CodeToLCDForm.PrefixEdit.Text;
      SuffixStr := CodeToLCDForm.SuffixEdit.Text;
      CharsToIgnore := CodeToLCDForm.IgnoreCharsEdit.Text;
      ShowPreviewGridLines := CodeToLCDForm.LCDGridLinesCheck.Checked;
      PreviewZoomValue := CodeToLCDForm.ZoomTrackBar.Position;
      ColumnByColumnOrder := CodeToLCDForm.ColByColOrderCheck.Checked;
    end;

    CharacterLibraryPanelWidth := CharacterLibraryPanel.Width;
    CharLibTopPanelHeight := CharacterLibraryTopPanel.Height;
    CharacterLibraryPanelCharactersPanelWidth := CharactersPanel.Width;
    TextToLCDPanelVisible := TextToLCDPanel.Visible;
    TextToLCDPanelHeight := TextToLCDPanel.Height;
    SystemFontsSectionActivePageIndex := SystemFontsSection.ActivePageIndex;

    if CharacterLibraryPanel.Parent = LeftToolPanel then
      CharLibPanelPlace := alLeft
    else if CharacterLibraryPanel.Parent = RightToolPanel then
      CharLibPanelPlace := alRight;
    CharLibToolPanelTop := CharacterLibraryPanel.Parent.Top;

    CharLibPanelCollapsed := CharacterLibraryPanel.Height <= CHARLIBPANEL_COLLAPSED_HEIGHT;

    //LCDPicturePreviewForm settings
    //Do not change LCDPicturePreviewFormFirstShow here
    LCDPicturePreviewVisible := LCDPicturePreviewMenuItem.Checked;
    LCDPicturePreviewFormWidth := LCDPicturePreviewForm.Width;
    LCDPicturePreviewFormHeight := LCDPicturePreviewForm.Height;
    LCDPicturePreviewFormPosition.X := LCDPicturePreviewForm.Left;
    LCDPicturePreviewFormPosition.Y := LCDPicturePreviewForm.Top;

    AdjustLCDWidthIfNeeded := AutoextendLCDWidthCheck.Checked;
    AdjustLCDHeightIfNeeded := AutoextendLCDHeightCheck.Checked;
    InputTextDirection := InputText.BiDiMode;

    ShowStatusBar := StatusBarMenuItem.Checked;

    //Language settings
    ActiveLanguageInfo := ActiveLanguage;
    ActiveLanguageOptionsInfo := ActiveLanguageOptions;

    //Favorite Fonts list
{    try
      FavoriteFontsCombo.Items.SaveToFile(ApplicationPath + FAVORITE_FONTS_FNAME);
    except
    end;}
    try
      WriteFavoriteFontsList(FavoriteFontsCombo.Items);
    except
    end;
  end;

  //Write selected categories list
  WriteActiveCategories;

{  SelectedCatList:=TStringList.Create;
  try
    GetSelectedCategoriesList(SelectedCatList);
  except
  end;
  try
    SelectedCatList.SaveToFile(ApplicationPath + SELECTED_CATEGORIES_FNAME);
  except
  end;
  try
  SelectedCatList.Free;
  except
  end;}

  try
    RUFLAdd(RUFLLastOpenedFile);
    RUFLWriteEntries;
  except
  end;

  try
    SpecialProcs.WriteToolbarSettings(GeneralToolbar, REG_TOOLBAR_SETTINGS_PATH, REG_TOOLBAR_VALUE_GENERAL);
    SpecialProcs.WriteToolbarSettings(DesignToolBar, REG_TOOLBAR_SETTINGS_PATH, REG_TOOLBAR_VALUE_DESIGN);
    SpecialProcs.WriteToolbarSettings(ImportExportToolBar, REG_TOOLBAR_SETTINGS_PATH, REG_TOOLBAR_VALUE_IMPORTEXPORT);
  except
  end;

  RegWritten := False;
  repeat
    try
      WriteRegistrySettings;
      RegWritten := True;
    except
    end;
    if not RegWritten then
      RegWritten := WideMessageDlgSoundTop(Dyn_Texts[19] {'Unable to save the program settings to the registry.'}, mtError, [mbRetry, mbCancel], 0) = mrCancel;
  until RegWritten;



{  //Write settings to the file
  AssignFile(F,ApplicationPath+LCD_DESIGNER_CONFIG_FILE);
  IOResult;
  while True do
  begin
    {$I-}
{    Rewrite(F);
    {$I+}
{    if IOResult=0 then
      Break;}
//    if WideMessageDlgSoundTop(Dyn_Texts[19] {'Unable to save the configuration.'}, mtError, [mbRetry,mbCancel], 0) = mrCancel then
{    begin
      SelectedCatList.Free;
      Exit;
    end;
  end;}
{  //Write settings
  Write(F,GlobalOptions);
  //Close file
  CloseFile(F);
  //Write selected categories to the settings file
  if SelectedCatList.Count>0 then
  begin
    //Reopen file as text for appending
    AssignFile(TextF,ApplicationPath+LCD_DESIGNER_CONFIG_FILE);
    Append(TextF);
    //Write items
    for i:=0 to SelectedCatList.Count-1 do
      WriteLn(TextF, SelectedCatList.Strings[i]);
    //Close the file
    CloseFile(TextF);
  end;
  SelectedCatList.Free;}
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ApplicationState := [asTerminating];
  
  //************************************
  if RegistrationPanel.Visible then
    Halt;
  //************************************

  WriteProgramSettings;

  try
    WriteInstallDirRegistryEntry(True);
  except
  end;

  Action := caFree;
end;

procedure TMainForm.NewToolBtnClick(Sender: TObject);
begin
  NewDesignMenuItem.Click;
end;

procedure TMainForm.OpenToolBtnClick(Sender: TObject);
begin
  OpenDesignMenuItem.Click;
end;

procedure TMainForm.SaveToolBtnClick(Sender: TObject);
begin
  SaveDesignMenuItem.Click;
end;

procedure TMainForm.CutToolBtnClick(Sender: TObject);
begin
  CutMenuItem.Click;
end;

procedure TMainForm.CopyToolBtnClick(Sender: TObject);
begin
  CopyMenuItem.Click;
end;

procedure TMainForm.PasteToolBtnClick(Sender: TObject);
begin
  PasteMenuItemClick(PasteMenuItem);  //Don't use PasteMenuItem.Click because it may be disabled
end;

procedure TMainForm.ShiftLeftToolBtnClick(Sender: TObject);
begin
  ShiftLeftMenuItem.Click;
end;

procedure TMainForm.ShiftRightToolBtnClick(Sender: TObject);
begin
  ShiftRightMenuItem.Click;
end;

procedure TMainForm.RotateLToolBtnClick(Sender: TObject);
begin
  if (LCDGrid.Selection.Right-LCDGrid.Selection.Left)>0 then
    RotateSelLeftMenuItem.Click
  else
    RotateLCDLeftMenuItem.Click;
end;

procedure TMainForm.RotateRToolBtnClick(Sender: TObject);
begin
  if (LCDGrid.Selection.Right-LCDGrid.Selection.Left)>0 then
    RotateSelRightMenuItem.Click
  else
    RotateLCDRightMenuItem.Click;
end;

procedure TMainForm.CharacterLibraryToolBtnClick(Sender: TObject);
begin
  //************************************
  if not License6.CheckLicenseStatus and
     not(asLoading in ApplicationState) and
     not(fsShowing in FormState) then
    Halt;
  //************************************

  CharacterLibraryPaneMenuItem.Checked := CharacterLibraryToolBtn.Down;
  CharacterLibraryPaneMenuItem.OnClick(CharacterLibraryPaneMenuItem);
end;

procedure TMainForm.UpdateLCDOptions;
begin
  with LCDOptions do
  begin
    LCDWidth := LCDGrid.ColCount;
    LCDHeight := LCDGrid.RowCount - 1;
    ShowCursorRectangle := LCDGrid.SelectionRectangle;
    OnLCDOptionsChanged;
  end;
end;

procedure TMainForm.GeneralToolBarMenuItemClick(Sender: TObject);
begin
  GeneralToolbar.Visible := (Sender as TMenuItem).Checked;
end;

procedure TMainForm.ToolbarsMenuItemClick(Sender: TObject);
begin
  GeneralToolbarMenuItem.Checked := GeneralToolbar.Visible;
  DesignToolBarMenuItem.Checked := DesignToolBar.Visible;
  ImportExportToolBarMenuItem.Checked := ImportExportToolBar.Visible;
end;

procedure TMainForm.InputTextKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    InsertTextAsLCDBtn.Click;
    InputText.SelectAll;
  end
  else if (Ord(Key) = VK_ESCAPE) and not InputText.DroppedDown then
    Key := Chr(0);
end;

function TMainForm.CreateCharacterFromSelection(ALCDGrid: TAdvStringGrid): Boolean;
var
  FName:String;
  CharGrid:TAdvStringGrid;
  Row,Col:Integer;
  RetrySave: Boolean;
begin
  Result := False;

  if DirectoryExists(CategoryFolderTreeView.Root) then
    SaveCategoryDialog1.LibraryPath:=CategoryFolderTreeView.Root
  else
    SaveCategoryDialog1.LibraryPath:='';
  with SaveCategoryDialog1 do
  begin
    // If you change these code lines or add new properties to the dialog, also
    //   you must modify the code in the LibraryOrganizerFormUnit that uses these
    //   settings.
    Title := Dyn_Texts[34];  //'Save Character';
    SaveBtnCaption := Dyn_Texts[1];  //'Save';
    CancelBtnCaption := Dyn_Texts[2];  //'Cancel';
    SpecialNamesBtnCaption := Dyn_Texts[26];  //'Special &Names...';
    OKBtnCaption := Dyn_Texts[27]; {'&OK';}
    CharacterGroupsWord := Dyn_Texts[28];  {'Character Groups';}
    CharactersInTheGroupWord := Dyn_Texts[29];  {'Characters In the Group';}
    UserMappedCharsBtnCaption := Dyn_Texts[31];  {'&User-Mapped Chars...'}
    SpecialCharNamesDialogCaption := Dyn_Texts[35];  //'Select Character';
    UserMappedCharsFormCaption := Dyn_Texts[36];  //'User-Mapped Character Names';
    MessageStrings[1] := Dyn_Texts[50];  {'%s already exists.%sDo you want to replace it?'}
    MessageStrings[2] := Dyn_Texts[51];  {'Please enter a character name.'}
    MessageStrings[3] := Dyn_Texts[52];  {'Please specify a location.'}
  end;


  RetrySave := True;
  while RetrySave do
  begin
    if SaveCategoryDialog1.Execute('CharacterName') then
    begin
      FName:=SaveCategoryDialog1.FileName;
      if LowerCase(ExtractFileExt(FName))<>'.chr' then
        FName:=FName+'.chr';
      if InformForReadOnlySelectedFile(FName) then
        Continue;

      CharGrid:=TAdvStringGrid.Create(nil);
      CharGrid.Parent:=Self;
      CharGrid.Hide;
      CharGrid.RowCount:=LCDGrid.Selection.Bottom-ALCDGrid.Selection.Top+2;
      CharGrid.ColCount:=LCDGrid.Selection.Right-LCDGrid.Selection.Left+1;

      for Row:=0 to CharGrid.RowCount-2 do
        for Col:=0 to CharGrid.ColCount-1 do
        begin
          CharGrid.Colors[Col,Row]:=LCDGrid.Colors[Col+LCDGrid.Selection.Left,Row+LCDGrid.Selection.Top];
          CharGrid.ColorsTo[Col,Row]:=LCDGrid.ColorsTo[Col+LCDGrid.Selection.Left,Row+LCDGrid.Selection.Top];  //Prevent potential software bugs
        end;
      for Col:=0 to CharGrid.ColCount-1 do
        SetCellColor(CharGrid, Col, CharGrid.RowCount-1, False);

      try
        SaveLCDCharToFile(CharGrid,FName);
        CharGrid.Free;
      except
        CharGrid.Free;
        if WideMessageDlgSound(Dyn_Texts[58] {'Unable to save the character.'}, mtError, [mbCancel, mbRetry], 0) = mrRetry then
          Continue;
      end;
      RetrySave := False;
    end
    else
      RetrySave := False;
  end;
end;

procedure TMainForm.SaveLCDCharToFile(ALCDGrid: TAdvStringGrid;
  const FileName: String);
var
  Row,Col:Integer;
begin
  for Row:=0 to ALCDGrid.RowCount - 2 do
    for Col:=0 to ALCDGrid.ColCount - 1 do
      if ALCDGrid.Colors[Col,Row]=LCDOptions.LCDFilledColor then
        ALCDGrid.Cells[Col,Row]:='1'
      else
        ALCDGrid.Cells[Col,Row]:='0';
  for Col:=0 to ALCDGrid.ColCount-1 do
    ALCDGrid.Cells[Col,ALCDGrid.RowCount-1]:=CHAR_FILE_END_ROW_SPECIFIER;

  ALCDGrid.SaveToCSV(FileName);

  for Row:=0 to ALCDGrid.RowCount-1 do
    for Col:=0 to ALCDGrid.ColCount-1 do
      ALCDGrid.Cells[Col,Row]:='';
end;

procedure TMainForm.LCD1Click(Sender: TObject);
var
  SelWidth,SelHeight:Integer;
begin
  SelWidth:=LCDGrid.Selection.Right-LCDGrid.Selection.Left+1;
  SelHeight:=LCDGrid.Selection.Bottom-LCDGrid.Selection.Top+1;
  CreateCharacterMenuItem.Enabled:=(SelWidth>1) and (SelHeight>1);
end;

procedure TMainForm.CreateCharacterMenuItemClick(Sender: TObject);
begin
  if OperationOnLCDAllowed then
  begin
    if CreateCharacterFromSelection(LCDGrid) then
      CategoryFolderTreeView.OnFolderChange(CategoryFolderTreeView, nil);
  end;
{  else
    Screen.ActiveControl.Perform(WM_CHAR, 8, $230001);  //Ctrl+H}
end;

function TMainForm.IsTreeViewItemChecked(Item: TTreeNode): Boolean;
begin
  Result:=Item.StateIndex in [cFlatChecked,cFlatRadioChecked];
end;

function TMainForm.GetTreeViewNodeFullPath(Node:TTreeNode):String;
var
  FullPath:String;
  Node1:TTreeNode;
begin
  Result:='';
  FullPath:=Node.Text;
  Node1:=Node;
  while Node1.Parent<>nil do
  begin
    Node1:=Node1.Parent;
    Insert(Node1.Text+'\',FullPath,1);
  end;
  Result:=FullPath;
end;

procedure TMainForm.CategoryCheckTreeViewClick(Sender: TObject);
var
  P:TPoint;
begin
  GetCursorPos(P);
  P := CategoryCheckTreeView.ScreenToClient(P);
  if (htOnStateIcon in CategoryCheckTreeView.GetHitTestInfoAt(P.X,P.Y)) then
    ToggleTreeViewCheckBoxes(
       CategoryCheckTreeView.Selected,
       cFlatUnCheck,
       cFlatChecked,
       cFlatSemiChecked,
       cFlatRadioUnCheck,
       cFlatRadioChecked);
end;

procedure TMainForm.CategoryCheckTreeViewKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_SPACE) and Assigned(CategoryCheckTreeView.Selected) then
    ToggleTreeViewCheckBoxes(CategoryCheckTreeView.Selected,cFlatUnCheck,cFlatChecked, cFlatSemiChecked, cFlatRadioUnCheck,cFlatRadioChecked);
end;

procedure TMainForm.ToggleTreeViewCheckBoxes(Node: TTreeNode; cUnChecked,
  cChecked, cSemiChecked, cRadioUnchecked, cRadioChecked: integer);
var
  tmp:TTreeNode;
begin
  if Assigned(Node) then
  begin
    if Node.getFirstChild = nil then
    begin
      if Node.StateIndex = cUnChecked then
        Node.StateIndex := cChecked
      else if Node.StateIndex = cChecked then
        Node.StateIndex := cUnChecked
      else if Node.StateIndex = cRadioUnChecked then
      begin
        tmp := Node.Parent;
        if not Assigned(tmp) then
          tmp := TTreeView(Node.TreeView).Items.GetFirstNode
        else
          tmp := tmp.getFirstChild;
        while Assigned(tmp) do
        begin
          if (tmp.StateIndex in [cRadioUnChecked,cRadioChecked]) then
            tmp.StateIndex := cRadioUnChecked;
          tmp := tmp.getNextSibling;
        end;
        Node.StateIndex := cRadioChecked;
      end; // if StateIndex = cRadioUnChecked

      UpdateParentNodes(CategoryCheckTreeView.Items);
    end
    else
    begin
      CheckAllSubNodes(Node, Node.StateIndex <> cChecked);
      UpdateParentNodes(CategoryCheckTreeView.Items);
    end;
  end; // if Assigned(Node)
end;

procedure TMainForm.EnableEditShortcuts(ShortcutsEnabled: Boolean);
begin
  if ShortcutsEnabled then
  begin
    CutMenuItem.ShortCut:=TextToShortCut('Ctrl+X');
    CopyMenuItem.ShortCut:=TextToShortCut('Ctrl+C');
    PasteMenuItem.ShortCut:=TextToShortCut('Ctrl+V');
    DeleteMenuItem.ShortCut:=TextToShortCut('Del');
  end
  else
  begin
    CutMenuItem.ShortCut:=0;
    CopyMenuItem.ShortCut:=0;
    PasteMenuItem.ShortCut:=0;
    DeleteMenuItem.ShortCut:=0;
  end;
end;

procedure TMainForm.ClearLCDUndefinedColors(ALCDGrid: TAdvStringGrid;
  ClearedColor: TColor; const DefinedColors: array of TColor);
var
  Row, Col, i: Integer;
begin
  for Row := 0 to ALCDGrid.RowCount - 1 do
    for Col := 0 to ALCDGrid.ColCount - 1 do
    begin
      for i := 0 to High(DefinedColors) do
        if ALCDGrid.Colors[Col, Row] = DefinedColors[i] then  //*** Only compare Colors values
          Break;
      if i > High(DefinedColors) then
        SetCellColor(ALCDGrid, Col, Row, False, False, clNone, ClearedColor);
    end;
end;

procedure TMainForm.WindowMove(var msg: TWMMove);
begin
  inherited;
  if LoadingConfig then
    Exit;
  with GlobalOptions do
  begin
    OldWindowRect.Left := MainFormLeft;
    OldWindowRect.Top := MainFormTop;
    OldWindowRect.Width := MainFormWidth;
    OldWindowRect.Height := MainFormHeight;
    MainFormLeft:=Left;
    MainFormTop:=Top;
    MainFormWidth:=Width;
    MainFormHeight:=Height;
    msg.Result:=0;
  end;
end;

procedure TMainForm.ProcessCommandLine;
begin
  if ParamCount = 1 then
  begin
    if FileExists(ParamStr(1)) then
    begin
      WorkingDesignFileName := '';  //This is already set to '' in NewDesignMenuItem.Click at application startup
      if CanProceedToOpenDesign(ParamStr(1)) then
        if OpenDesignFile(ParamStr(1)) then
          WorkingDesignUntitledCount := 0;
    end
    else
    begin
      WideMessageDlgSoundTop(Wideformat(Dyn_Texts[30] {'The design file %sdoesn''t exist.'}, [#13 + ParamStr(1) + #13]) , mtError, [mbOK],0);
      Application.ProcessMessages;
    end;
  end;

  LicenseTimer.Enabled := License.CheckLicenseStatus;
end;

procedure TMainForm.UpdateMainFormCaption;
begin
  if UntitledDesignFile then
    Caption := UNTITLED_DOCUMENT_NAME + IntToStr(WorkingDesignUntitledCount) + '.LCD - ' + APPLICATION_STATIC_CAPTION
  else
    Caption := ExtractFileName(WorkingDesignFileName) +
               IfThen(WorkingDesignIsReadOnly, ' (Read-Only)', '') +
               ' - ' + APPLICATION_STATIC_CAPTION;
  OnCaptionChanged;
end;

procedure TMainForm.GetSelectedCategoriesList(ASelectedCatList: TStringList);
var
  i:Integer;
begin
  ASelectedCatList.Clear;
  for i:=0 to CategoryCheckTreeView.Items.Count-1 do
    if IsTreeViewItemChecked(CategoryCheckTreeView.Items[i]) then
      ASelectedCatList.Append(GetTreeViewNodeFullPath(CategoryCheckTreeView.Items[i]));
end;

procedure TMainForm.ApplySelectedCatList(ASelectedCatList: TStringList);
  function GetFirstNode(var NodePath:String):String;
  var
    EndPos:Integer;
  begin
    Result:='';
    if Length(NodePath)=0 then
      Exit;
    EndPos := 1;
    while (EndPos<=Length(NodePath)) and (NodePath[EndPos]<>'\') do
      Inc(EndPos);
    Result:=LeftStr(NodePath,EndPos-1);
    NodePath:=Copy(NodePath,EndPos+1,Length(NodePath)-EndPos);
  end;

  function FindNode(NodeText:String;NodeParent:TTreeNode;TreeView:TTreeView):TTreeNode;
  var
    tmp: TTreeNode;
  begin
    Result := nil;
    if Assigned(NodeParent) then
      tmp := NodeParent.getFirstChild
    else
      tmp := TreeView.Items.GetFirstNode;
    while Assigned(tmp) do
    begin
      if LowerCase(NodeText) = LowerCase(tmp.Text) then
      begin
        Result := tmp;
        Break;
      end;
      tmp := tmp.getNextSibling;
    end;
  end;

  function FindTreeViewNode(TreeView:TTreeView;const NodeFullPath:String):TTreeNode;
  var
    tmpNodeFullPath:String;
  begin
    tmpNodeFullPath:=NodeFullPath;
    Result:=nil;
    Result:=FindNode(GetFirstNode(tmpNodeFullPath),Result,TreeView);
    while (Length(tmpNodeFullPath) > 0) and Assigned(Result) do
      Result:=FindNode(GetFirstNode(tmpNodeFullPath),Result,TreeView);
  end;

var
  i:Integer;
  Node:TTreeNode;
begin
  for i:=0 to ASelectedCatList.Count-1 do
  begin
    Node:=FindTreeViewNode(CategoryCheckTreeView,ASelectedCatList.Strings[i]);
    if Assigned(Node) then
      Node.StateIndex:=cFlatChecked;
  end;

  UpdateParentNodes(CategoryCheckTreeView.Items);
end;

function TMainForm.FindTreeViewNode(TreeNodes: TTreeNodes;
  const NodeFullPath: String): TTreeNode;

  function GetFirstNode(var NodePath:String):String;
  var
    EndPos:Integer;
  begin
    Result:='';
    if Length(NodePath)=0 then
      Exit;
    EndPos := 1;
    while (EndPos<=Length(NodePath)) and (NodePath[EndPos]<>'\') do
      Inc(EndPos);
    Result:=LeftStr(NodePath,EndPos-1);
    NodePath:=Copy(NodePath,EndPos+1,Length(NodePath)-EndPos);
  end;

  function FindNode(NodeText:String;NodeParent:TTreeNode;TreeNodes:TTreeNodes):TTreeNode;
  var
    i:Integer;
  begin
    Result:=nil;
    for i:=0 to TreeNodes.Count-1 do
      if TreeNodes[i].Parent=NodeParent then
        if LowerCase(NodeText)=LowerCase(TreeNodes[i].Text) then
        begin
          Result:=TreeNodes[i];
          Break;
        end;
  end;

var
  ParentNode: TTreeNode;
  tmpNodeFullPath:String;
begin
  tmpNodeFullPath:=NodeFullPath;
  ParentNode:=nil;
  ParentNode:=FindNode(GetFirstNode(tmpNodeFullPath),ParentNode,TreeNodes);
  while Length(tmpNodeFullPath)>0 do
    ParentNode:=FindNode(GetFirstNode(tmpNodeFullPath),ParentNode,TreeNodes);
  Result:=ParentNode;
end;

procedure TMainForm.RotateSelDownMenuItemClick(Sender: TObject);
begin
  if OperationOnLCDAllowed then
  begin
    LCDProcs.RotateSelectionDown(LCDGrid);
    OnLCDChanged;
  end;
end;

procedure TMainForm.RotateSelUpMenuItemClick(Sender: TObject);
begin
  if OperationOnLCDAllowed then
  begin
    LCDProcs.RotateSelectionUp(LCDGrid);
    OnLCDChanged;
  end;
end;

procedure TMainForm.RotateLCDUpMenuItemClick(Sender: TObject);
var
  OldSelection:TGridRect;
begin
  OldSelection:=LCDGrid.Selection;
  LCDGrid.SelectRows(0,LCDGrid.RowCount-1);
  LCDProcs.RotateSelectionUp(LCDGrid);
  LCDGrid.Selection:=OldSelection;
  OnLCDChanged;
end;

procedure TMainForm.RotateLCDDownMenuItemClick(Sender: TObject);
var
  OldSelection:TGridRect;
begin
  OldSelection:=LCDGrid.Selection;
  LCDGrid.SelectRows(0,LCDGrid.RowCount-1);
  LCDProcs.RotateSelectionDown(LCDGrid);
  LCDGrid.Selection:=OldSelection;
  OnLCDChanged;
end;

procedure TMainForm.RotateUToolBtnClick(Sender: TObject);
begin
  if (LCDGrid.Selection.Bottom-LCDGrid.Selection.Top)>0 then
    RotateSelUpMenuItem.Click
  else
    RotateLCDUpMenuItem.Click;
end;

procedure TMainForm.RotateDToolBtnClick(Sender: TObject);
begin
  if (LCDGrid.Selection.Bottom-LCDGrid.Selection.Top)>0 then
    RotateSelDownMenuItem.Click
  else
    RotateLCDDownMenuItem.Click;
end;

procedure TMainForm.CharactersListBoxMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
  begin
    if CharactersListBox.ItemAtPos(Point(X, Y), True) >= 0 then
      CharactersListBox.BeginDrag(False);
  end
  else if Button = mbRight then
  begin
    if CharactersListBox.ItemAtPos(Point(X, Y), True) >= 0 then
      CharactersListBox.ItemIndex := CharactersListBox.ItemAtPos(Point(X, Y), True);
  end;
end;

procedure TMainForm.LCDGridDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
var
  NewRow,NewCol:Integer;
begin
  Accept:=Source is TListBox;
  if not Accept then
    Exit;
  if State=dsDragEnter then
  begin
    BeforeDragSelection:=LCDGrid.Selection;
    DropCell.X:=LCDGrid.Row;
    DropCell.Y:=LCDGrid.Col;
  end  
  else if State=dsDragLeave then
    LCDGrid.Selection:=BeforeDragSelection
  else if State=dsDragMove then
  begin
    LCDGrid.MouseToCell(X,Y,NewCol,NewRow);
    if (NewCol>=0) and (NewRow>=0) then
    begin
      LCDGrid.Row:=NewRow;
      LCDGrid.Col:=NewCol;
      DropCell.X:=NewRow;
      DropCell.Y:=NewCol;
    end
    else
    begin
      LCDGrid.Selection := BeforeDragSelection;
      DropCell.X := -1;
      DropCell.Y := -1;
    end;
  end;
end;

procedure TMainForm.LCDGridDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  OldSelection:TGridRect;
begin
  if (Source is TListBox) and
     (DropCell.X >= 0) and
     (DropCell.Y >= 0) then
  begin
    OldSelection:=LCDGrid.Selection;
    LCDGrid.Row:=DropCell.X;
    LCDGrid.Col:=DropCell.Y;
    InsertCharAtCursorBtn.Click;
    LCDGrid.Selection:=OldSelection;
  end;
end;

procedure TMainForm.TextToLCD(const LCDText: WideString; LCDFont: TFont;
  LCD: TAdvStringGrid; OnlyGetSize: Boolean = False {Not used in this version});
var
  Image:TImage32;
  Row,Col:Integer;
  FontColor: TColor;
begin
  Image := TImage32.Create(nil);
  try
    Image.SetupBitmap(True, Color32(LCDOptions.LCDClearedColor));

    Image.Bitmap.Font.Assign(LCDFont);

    FontColor := clBlue;
    Image.Bitmap.Font.Color := FontColor;

    Image.Bitmap.Width := Image.Bitmap.TextWidth(LCDText);
    Image.Bitmap.Height := Image.Bitmap.TextHeight(LCDText);
    Image.Bitmap.TextOut(0,0,LCDText);

    LCD.ColCount := Image.Bitmap.Width;
    LCD.RowCount := Image.Bitmap.Height;

    for Col:=0 to LCD.ColCount-1 do
      for Row:=0 to LCD.RowCount-1 do
        if WinColor(Image.Bitmap.PixelS[Col,Row]) = FontColor then
          SetCellColor(LCD, Col, Row, True)
        else
          SetCellColor(LCD, Col, Row, False);

    LCDTrim(LCD, Image.Bitmap, LCDText);

    Image.Free;
  except
    Image.Free;
  end;
end;

procedure TMainForm.LCDTrim(LCD: TAdvStringGrid; DrawingCanvas: TCanvas; DrawingText: String);

  function IsEmpty(L, T, R, B: Integer; ClearedColor: TColor): Boolean;
  var
    Col, Row: Integer;
  begin
    Result := False;
    for Col := L to R do
      for Row := T to B do
        if LCD.Colors[Col, Row] <> ClearedColor then  //*** It is not necessary to compare ColorsTo values
          Exit;
    Result := True;
  end;

var
  L, R, T, B: Integer;
  Row, Col: Integer;
begin
  //Top
  T := 0;
  while IsEmpty(0, T, LCD.ColCount - 1, T, clWhite) do
    Inc(T);
  //Bottom
  B := LCD.RowCount - 1;
  while IsEmpty(0, B, LCD.ColCount - 1, B, clWhite) do
    Dec(B);
  //Left
  L := 0;
  while IsEmpty(L, 0, L, LCD.RowCount - 1, clWhite) do
    Inc(L);
  if (Length(DrawingText) - Length(TrimLeft(DrawingText))) > 0 then
    L := L - DrawingCanvas.TextWidth(StringOfChar(' ', Length(DrawingText) - Length(TrimLeft(DrawingText))));
  //Right
  R := LCD.ColCount - 1;
  while IsEmpty(R, 0, R, LCD.RowCount - 1, clWhite) do
    Dec(R);
  if (Length(DrawingText) - Length(TrimRight(DrawingText))) > 0 then
    R := R + DrawingCanvas.TextWidth(StringOfChar(' ', Length(DrawingText) - Length(TrimRight(DrawingText))));

  if T > 0 then
  begin
    for Row := T to B do
      for Col := L to R do
      begin
        LCD.Colors[Col, Row - T] := LCD.Colors[Col, Row];
        LCD.ColorsTo[Col, Row - T] := LCD.ColorsTo[Col, Row];
      end;
  end;
  LCD.RowCount := B - T + 1;
  if L > 0 then
  begin
    for Col := L to R do
      for Row := 0 to LCD.RowCount - 1 do
      begin
        LCD.Colors[Col - L, Row] := LCD.Colors[Col, Row];
        LCD.ColorsTo[Col - L, Row] := LCD.ColorsTo[Col, Row];
      end;
  end;
  LCD.ColCount := R - L + 1;
end;

procedure TMainForm.UpdateHxW(Font: TFont; HxWPanel: TTntPanel; Text: WideString);
begin
  if Length(Text) > 0 then
  begin
    TextToLCD(Text, Font,TextToLCDGrid);
    HxWPanel.Caption:=IntToStr(TextToLCDGrid.RowCount)+' x '+IntToStr(TextToLCDGrid.ColCount);
  end
  else
    HxWPanel.Caption:='H x W';
end;

procedure TMainForm.CharacterLibrarySourceRadioClick(Sender: TObject);
begin
  //************************************
  if not License2.CheckLicenseStatus then
    Exit;
  //************************************

  SystemFontsSection.Visible:=SystemFontsSourceRadio.Checked;
  CategoryCheckTreeView.Visible:=CharacterLibrarySourceRadio.Checked;
  CharacterSourceSettingsBtn.Enabled := CharacterLibrarySourceRadio.Checked;
  PrepareInsertTextButtons(nil);
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
  UpdateLCDSelectionStatusPanel;

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

procedure TMainForm.LCDGridMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  UpdateLCDSelectionStatusPanel;
  AddNewHistoryState;
  if Assigned(LCDPicturePreviewForm) then
    if LCDPicturePreviewForm.Tag = 1 then  //Dirty
    begin
      UpdateLCDPicturePreview;
    end;
{  if (Button=mbRight) and RightButtonSelectionActive then
  begin
    RightButtonSelectionActive:=False;
    LCDGrid.Selection:=NormalizeGridRect(RightButtonSelection);
  end;}
end;

function TMainForm.NormalizeGridRect(GridRect: TGridRect):TGridRect;
begin
  Result:=GridRect;
  if Result.Left>Result.Right then
  begin
    Result.Left:=GridRect.Right;
    Result.Right:=GridRect.Left;
  end;
  if Result.Top>Result.Bottom then
  begin
    Result.Top:=GridRect.Bottom;
    Result.Bottom:=GridRect.Top;
  end;
end;

procedure TMainForm.LCDGridMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var
  NewCol,NewRow:Integer;
begin
  UpdateCursorStatusTimer.Enabled := True;
  UpdateLCDSelectionStatusPanel;

  LCDGrid.MouseToCell(X, Y, NewCol, NewRow);
  UpdateLCDCursorPosStatusPanel(NewCol, NewRow);

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
      if (NewCol>=0) and (NewRow>=0) then
      begin
        LCDGrid.Row:=NewRow;
        LCDGrid.Col:=NewCol;
        SetCellColor(LCDGrid, NewCol, NewRow, False);
      end;
    end
    else if (LCDOptions.CTRLClickToggle and Procs.KeyDown(VK_CONTROL)) or
       ((not LCDOptions.CTRLClickToggle) and (not Procs.KeyDown(VK_CONTROL))) then
    begin
      if (NewCol>=0) and (NewRow>=0) then
      begin
        if (LCDGrid.Col <> NewCol) or (LCDGrid.Row <> NewRow) then
          RepaintCell(LCDGrid.Col, LCDGrid.Row);

        LCDGrid.Row:=NewRow;
        LCDGrid.Col:=NewCol;
        SetCellColor(LCDGrid, NewCol, NewRow, True);
      end;
    end;
  end
  else if LCDPicturePreviewForm.Tag = 1 then  //Dirty
  begin
    UpdateLCDPicturePreview;
  end;

{  if RightButtonSelectionActive then
  begin
    LCDGrid.MouseToCell(X,Y,NewCol,NewRow);
    if (NewCol<0) or (NewRow<0) then Exit;
    if NewCol<RightButtonSelection.Left then
    begin
      RightButtonSelection.Right:=RightButtonSelection.Left;
      RightButtonSelection.Left:=NewCol;
    end
    else
      RightButtonSelection.Right:=NewCol;
    if NewRow<RightButtonSelection.Top then
    begin
      RightButtonSelection.Bottom:=RightButtonSelection.Top;
      RightButtonSelection.Top:=NewRow;
    end
    else
      RightButtonSelection.Bottom:=NewRow;
    LCDGrid.Selection:=RightButtonSelection;
    LCDGrid.Refresh;
  end;}
end;

procedure TMainForm.LCDAnimatorMenuItemClick(Sender: TObject);
begin
  if asLoading in ApplicationState then
    Exit;

  LCDAnimatorForm := TLCDAnimatorForm.Create(nil);
  try
    ActiveLanguageOptions.LanguageOptionsChanged := True;
    LCDAnimatorForm.SetLanguage(ActiveLanguage, ActiveLanguageOptions, ActiveLangInstance);
    LCDAnimatorForm.ShowModal;

    UpdateRealTimeRegistrySettings(rskLCDAnimator);
  finally
    LCDAnimatorForm.Free;
  end;
end;

procedure TMainForm.ImportPictureFileMenuItemClick(Sender: TObject);
begin
  if asLoading in ApplicationState then
    Exit;

  ImportGraphicsForm.Show;
end;

procedure TMainForm.ImportPictureLCDMenuItemClick(Sender: TObject);
begin
  ImportPictureFileMenuItem.Click;
end;

procedure TMainForm.FlipHorizontalMenuItemClick(Sender: TObject);
var
  OldSel:TGridRect;
begin
{  if (Screen.ActiveControl is TCustomEdit) or
     (Screen.ActiveControl is TCustomCombo) then
    Screen.ActiveControl.Perform(WM_CHAR, VK_BACK, 0)}
  if OperationOnLCDAllowed then
  begin
    if (LCDGrid.Selection.Right-LCDGrid.Selection.Left)>0 then
      LCDProcs.FlipSelectionHorizontally(LCDGrid)
    else
    begin
      OldSel:=LCDGrid.Selection;
      LCDGrid.SelectRows(0,LCDGrid.RowCount-1);
      LCDProcs.FlipSelectionHorizontally(LCDGrid);
      LCDGrid.Selection:=OldSel;
    end;
    OnLCDChanged;
  end;
end;

procedure TMainForm.FlipVerticalMenuItemClick(Sender: TObject);
var
  OldSel:TGridRect;
begin
{  if (Screen.ActiveControl is TCustomEdit) or
     (Screen.ActiveControl is TCustomCombo) then
    Screen.ActiveControl.Perform(WM_CHAR, 22, $2F0001)  //Ctrl+Shift+V}
  if OperationOnLCDAllowed then
  begin
    if (LCDGrid.Selection.Bottom-LCDGrid.Selection.Top)>0 then
      LCDProcs.FlipSelectionVertically(LCDGrid)
    else
    begin
      OldSel:=LCDGrid.Selection;
      LCDGrid.SelectRows(0,LCDGrid.RowCount-1);
      LCDProcs.FlipSelectionVertically(LCDGrid);
      LCDGrid.Selection:=OldSel;
    end;
    OnLCDChanged;
  end;
end;

procedure TMainForm.FlipHorizontalToolBtnClick(Sender: TObject);
begin
  FlipHorizontalMenuItem.Click;
end;

procedure TMainForm.FlipVerticalToolBtnClick(Sender: TObject);
begin
  FlipVerticalMenuItem.Click;
end;

procedure TMainForm.ClearLCDToolBtnClick(Sender: TObject);
begin
  //DeleteMenuItem.Click;  --> Don;t call this procedure
  DoLCDClearCell(True);  //Clear the LCD selected cells even if the active control is an edit or a list control
end;

procedure TMainForm.OnLCDOptionsChanged;
begin
  LCDOptions.LCDGradientColor := LCDProcs.CalculateLCDGradientColor(LCDOptions.LCDFilledColor, LCDOptions.LCDClearedColor);
  //Update LCD history colors
  with LCDHistory do
  begin
    LCDFilledColor := LCDOptions.LCDFilledColor;
    LCDClearedColor := LCDOptions.LCDClearedColor;
    if LCDOptions.LCDUseSolidColors then
      LCDGradientColor := LCDOptions.LCDFilledColor
    else
      LCDGradientColor := LCDOptions.LCDGradientColor;
  end;

  LCDHeightEdit.Value := LCDOptions.LCDHeight;
  LCDWidthEdit.Value := LCDOptions.LCDWidth;
  
  if GlobalOptions.ShowLCDGridLines then
    LCDGrid.GridLineColor := LCDOptions.LCDGridColor;

  if Assigned(ImportGraphicsForm) then
    ImportGraphicsForm.PreviewGrid.SelectionRectangleColor := LCDOptions.LCDCursorColor;

  UpdateRealTimeRegistrySettings(rskLCDOptions);
  OnLCDChanged;
end;

procedure TMainForm.ChangeLCDSize(NewWidth, NewHeight: Integer);
var
  OldLCDOptions: TLCDOptions;
begin
  OldLCDOptions := LCDOptions;
  LCDOptions.LCDWidth := NewWidth;
  LCDOptions.LCDHeight := NewHeight;
  ApplyLCDOptions(OldLCDOptions);
  OnLCDOptionsChanged;
end;

procedure TMainForm.UpdateLCDSelectionStatusPanel;
var
  SelHeight, SelWidth: Integer;
  GRect: TGridRect;
begin
  if LCDGrid.Selection.Bottom = (LCDGrid.RowCount - 1) then
  begin
    GRect := LCDGrid.Selection;
    GRect.Bottom := LCDGrid.RowCount - 2;
    LCDGrid.Selection := GRect;
  end;
  SelHeight := LCDGrid.Selection.Bottom - LCDGrid.Selection.Top;
  SelWidth := LCDGrid.Selection.Right - LCDGrid.Selection.Left;
  if (SelHeight > 0) or (SelWidth > 0) then
    MainStatusBar.Panels[SELECTION_PANEL_INDEX].Text := WideFormat(Dyn_Texts[20], [SelHeight + 1, SelWidth + 1])
  else
    MainStatusBar.Panels[SELECTION_PANEL_INDEX].Text := Dyn_Texts[21];  //'No selection';
  OldLCDSelection := LCDGrid.Selection;  //Update this variable to prebent changing the selection when the user zooms in and out using Ctrl + MouseWheelUp/Down.
end;

procedure TMainForm.UpdateLCDCursorPosStatusPanel(ACol, ARow: Integer);
begin
  if (ACol>=0) and (ARow>=0) then
    MainStatusBar.Panels[CURSOR_POS_PANEL_INDEX].Text := '(' + IntToStr(ARow + 1) + ',' + IntToStr(ACol + 1) + ')'
  else
    MainStatusBar.Panels[CURSOR_POS_PANEL_INDEX].Text := '(' + IntToStr(LCDGrid.Row + 1) + ',' + IntToStr(LCDGrid.Col + 1) + ')';
end;

procedure TMainForm.LCDGridExit(Sender: TObject);
begin
  UpdateLCDCursorPosStatusPanel(LCDGrid.Col, LCDGrid.Row);
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
  GlobalOptions.ZoomTrackBarValue := ZoomTrackBar.Position;
end;

procedure TMainForm.PreviewZoomTrackBarChange(Sender: TObject);
begin
  CharPreviewGrid.DefaultRowHeight := PreviewZoomTrackBar.Position;
  CharPreviewGrid.DefaultColWidth := PreviewZoomTrackBar.Position;
  CharPreviewGrid.RowHeights[CharPreviewGrid.RowCount-1] := 0;

  UpdateRealTimeRegistrySettings(rskCharLibOptions);
end;

procedure TMainForm.InvertLCD(ALCD: TAdvStringGrid;
  OnlySelection: Boolean);
var
  Row, Col: Integer;
  FromRow, ToRow, FromCol, ToCol: Integer;
begin
  if OnlySelection then
  begin
    FromRow := ALCD.Selection.Top;
    ToRow := ALCD.Selection.Bottom;
    FromCol := ALCD.Selection.Left;
    ToCol := ALCD.Selection.Right;
  end
  else
  begin
    FromRow := 0;
    ToRow := ALCD.RowCount - 2;
    FromCol := 0;
    ToCol := ALCD.ColCount - 1;
  end;

  try
    ALCD.BeginUpdate;

    for Row:=FromRow to ToRow do
      for Col:=FromCol to ToCol do
        ToggleCellColor(ALCD, Col, Row);
  finally
    ALCD.EndUpdate;
  end;
end;

procedure TMainForm.CharLibInternalSplitter1CanResize(Sender: TObject;
  var NewSize: Integer; var Accept: Boolean);
begin
  Accept := (NewSize >= 65) and
            ( (CharacterLibraryPanel.Width - NewSize) >= CHARLIB_CATEGORIESPANEL_MIN_WIDTH);
end;

procedure TMainForm.CharLibInternalSplitter1Moved(Sender: TObject);
begin
  if CharactersListBox.Width < 180 then
    CharactersListBox.Columns := 0
  else if CharactersListBox.Width < 240 then
    CharactersListBox.Columns := 2
  else
    CharactersListBox.Columns := 3;
end;

procedure TMainForm.CharacterLibraryPanelLeftSplitterCanResize(Sender: TObject;
  var NewSize: Integer; var Accept: Boolean);
begin
  Accept := (NewSize >= CHARLIBPANEL_MIN_WIDTH) and
            (NewSize <= CHARLIBPANEL_MAX_WIDTH) and
            ( (NewSize - CharactersPanel.Width) >= CHARLIB_CATEGORIESPANEL_MIN_WIDTH);
end;

procedure TMainForm.RightControlBarGetSiteInfo(Sender: TObject;
  DockClient: TControl; var InfluenceRect: TRect; MousePos: TPoint;
  var CanDock: Boolean);
begin
  CanDock := DockClient = CharacterLibraryPanel;
end;

procedure TMainForm.LeftControlBarGetSiteInfo(Sender: TObject;
  DockClient: TControl; var InfluenceRect: TRect; MousePos: TPoint;
  var CanDock: Boolean);
begin
  CanDock := DockClient = CharacterLibraryPanel;
end;

procedure TMainForm.BottomControlBarGetSiteInfo(Sender: TObject;
  DockClient: TControl; var InfluenceRect: TRect; MousePos: TPoint;
  var CanDock: Boolean);
begin
  CanDock := DockClient = TextToLCDPanel;
end;

procedure TMainForm.SystemFontsSourceRadioClick(Sender: TObject);
begin
  //************************************
  if not License3.CheckLicenseStatus then
    Exit;
  //************************************

  SystemFontsSection.Visible:=SystemFontsSourceRadio.Checked;
  CategoryCheckTreeView.Visible:=CharacterLibrarySourceRadio.Checked;
  CharacterSourceSettingsBtn.Enabled := CharacterLibrarySourceRadio.Checked;
  PrepareInsertTextButtons(SystemFontsSection.ActivePage);
  if SystemFontsSection.ActivePageIndex = FavoriteFontsTabSheet.PageIndex then
  begin
    //FavoriteFontsTabSheet.Tag := 1;
    FavoriteFontsTabSheet.OnShow(FavoriteFontsTabSheet);  //Force the OnShow event
  end
  else if SystemFontsSection.ActivePageIndex = AllFontsTabSheet.PageIndex then
  begin
    //AllFontsTabSheet.Tag := 1;
    AllFontsTabSheet.OnShow(AllFontsTabSheet);  //Force the OnShow event
  end;
end;

procedure TMainForm.TextToLCDPaneMenuItemClick(Sender: TObject);
begin
  TextToLCDToolBtn.Down := (Sender as TMenuItem).Checked;

  TextToLCDPanel.Visible := (Sender as TMenuItem).Checked;
  BottomSplitter.Visible := (Sender as TMenuItem).Checked;
  BottomSplitter.Top := TextToLCDPanel.Top;

  if MainStatusBar.Visible and (MainStatusBar.Top < TextToLCDPanel.Top) then
    MainStatusBar.Top := TextToLCDPanel.Top + TextToLCDPanel.Height + 5;
end;

procedure TMainForm.TextToLCDToolBtnClick(Sender: TObject);
begin
  //************************************
  if not License4.CheckLicenseStatus and
     not(asLoading in ApplicationState) and
     not(fsShowing in FormState) then
    Halt;
  //************************************

  TextToLCDPaneMenuItem.Checked:=TextToLCDToolBtn.Down;
  TextToLCDPaneMenuItem.OnClick(TextToLCDPaneMenuItem);
end;

procedure TMainForm.ApplyFontSectionSettings;
  function GetStyle(Button: TSpeedButton; Style: TFontStyle): TFontStyles;
  begin
    if Button.Down then
      Result := [Style]
    else
      Result := [];
  end;
begin
  with FavoriteFontSamplePanel.Font do
  begin
    Style := GetStyle(Bold1, fsBold) + GetStyle(Italic1, fsItalic) + GetStyle(Underlined1, fsUnderline);
    try
      Size := StrToInt(FontSizeCombo1.Text);
    except
      FontSizeCombo1.Text := IntToStr(Size);
    end;
    if Size < 0 then
    begin
      Size := - Size;
      FontSizeCombo1.Text := IntToStr(Size);
    end;

    Name := FavoriteFontsCombo.Items.Strings[FavoriteFontsCombo.ItemIndex];
  end;

  with FontSamplePanel.Font do
  begin
    Style := GetStyle(Bold2, fsBold) + GetStyle(Italic2, fsItalic) + GetStyle(Underlined2, fsUnderline);
    try
      Size := StrToInt(FontSizeCombo2.Text);
    except
      FontSizeCombo2.Text := IntToStr(Size);
    end;
    if Size < 0 then
    begin
      Size := - Size;
      FontSizeCombo2.Text := IntToStr(Size);
    end;

    Name := AllFontsCombo.Items.Strings[AllFontsCombo.ItemIndex];
  end;

  Application.ProcessMessages;
  InputText.OnDelayedChange(InputText);
end;

procedure TMainForm.PrepareFontSectionControls;
begin
  with FavoriteFontSamplePanel.Font do
  begin
    Bold1.Down := fsBold in Style;
    Italic1.Down := fsItalic in Style;
    Underlined1.Down := fsUnderline in Style;
    FontSizeCombo1.Text := IntToStr(Size);

    if FavoriteFontsCombo.Items.Count > 0 then
    begin
      if FavoriteFontsCombo.Items.IndexOf(Name) >= 0 then
        FavoriteFontsCombo.ItemIndex := FavoriteFontsCombo.Items.IndexOf(Name)
      else
      begin
        FavoriteFontsCombo.ItemIndex := 0;
        FavoriteFontSamplePanel.Font.Name := FavoriteFontsCombo.Items.Strings[FavoriteFontsCombo.ItemIndex];
      end;
      RemoveFromFavoriteFontsBtn.Enabled := True;
    end
    else
      RemoveFromFavoriteFontsBtn.Enabled := False;
  end;

  with FontSamplePanel.Font do
  begin
    Bold2.Down := fsBold in Style;
    Italic2.Down := fsItalic in Style;
    Underlined2.Down := fsUnderline in Style;
    FontSizeCombo2.Text := IntToStr(Size);

    if AllFontsCombo.Items.Count > 0 then
    begin
      if AllFontsCombo.Items.IndexOf(Name) >= 0 then
        AllFontsCombo.ItemIndex := AllFontsCombo.Items.IndexOf(Name)
      else
      begin
        AllFontsCombo.ItemIndex := 0;
        FavoriteFontSamplePanel.Font.Name := AllFontsCombo.Items.Strings[AllFontsCombo.ItemIndex];
      end;
    end;
    AddToFavoriteFontsBtn.Enabled := not(FavoriteFontsCombo.Items.IndexOf(AllFontsCombo.Items.Strings[AllFontsCombo.ItemIndex]) >=0);
  end;
end;

procedure TMainForm.GetFontSettings(Font: TFont;
  var AFontSettings: TFontSettings);
begin
  with AFontSettings do
  begin
    Name := Font.Name;
    Size := Font.Size;
    Height := Font.Height;
    Pitch := Font.Pitch;
    Color := Font.Color;
    Style := Font.Style;
    Charset := Font.Charset;
  end;
end;

procedure TMainForm.SetFontSettings(Font: TFont;
  const AFontSettings: TFontSettings);
begin
  with AFontSettings do
  begin
    Font.Name := Name;
    Font.Size := Size;
    Font.Height := Height;
    Font.Pitch := Pitch;
    Font.Color := Color;
    Font.Style := Style;
    Font.Charset := Charset;
  end;
end;

procedure TMainForm.TntSpeedButton6Click(Sender: TObject);
begin
  FontDialog1.Font.Assign(FontSamplePanel.Font);
  if FontDialog1.Execute then
  begin
    FontSamplePanel.Font.Assign(FontDialog1.Font);
    FavoriteFontSamplePanel.Font.Color := FontDialog1.Font.Color;
    PrepareFontSectionControls;
  end;
end;

procedure TMainForm.Bold1Click(Sender: TObject);
begin
  ApplyFontSectionSettings;
end;

procedure TMainForm.ApplyStaticStartupConfig;
begin
  AllFontsCombo.Items.Assign(Screen.Fonts);
end;

procedure TMainForm.AllFontsComboChange(Sender: TObject);
begin
  ApplyFontSectionSettings;
  AddToFavoriteFontsBtn.Enabled := not(FavoriteFontsCombo.Items.IndexOf(AllFontsCombo.Items.Strings[AllFontsCombo.ItemIndex]) >= 0);
end;

procedure TMainForm.FavoriteFontsComboChange(Sender: TObject);
begin
  ApplyFontSectionSettings;
  RemoveFromFavoriteFontsBtn.Enabled := FavoriteFontsCombo.ItemIndex >= 0;
end;

procedure TMainForm.AddToFavoriteFontsBtnClick(Sender: TObject);
begin
  if FavoriteFontsCombo.Items.IndexOf(AllFontsCombo.Items.Strings[AllFontsCombo.ItemIndex]) < 0 then
  begin
    FavoriteFontsCombo.ItemIndex := FavoriteFontsCombo.Items.Add(AllFontsCombo.Items.Strings[AllFontsCombo.ItemIndex]);
    AddToFavoriteFontsBtn.Enabled := False;
    FavoriteFontsCombo.OnChange(FavoriteFontsCombo);  //Force an OnChange event
    RemoveFromFavoriteFontsBtn.Enabled := True;
    FavoriteFontsTabSheet.Tag := 1;
  end;
end;

procedure TMainForm.RemoveFromFavoriteFontsBtnClick(Sender: TObject);
var
  DelIndex: Integer;
begin
  if FavoriteFontsCombo.ItemIndex >= 0 then
  begin
    DelIndex := FavoriteFontsCombo.ItemIndex;
    FavoriteFontsCombo.Items.Delete(FavoriteFontsCombo.ItemIndex);
    if FavoriteFontsCombo.Items.Count > 0 then
    begin
      if DelIndex >= FavoriteFontsCombo.Items.Count then
        DelIndex := FavoriteFontsCombo.Items.Count - 1;
      FavoriteFontsCombo.ItemIndex := DelIndex;
      FavoriteFontsCombo.OnChange(FavoriteFontsCombo);  //Force an OnChange event
    end;
    RemoveFromFavoriteFontsBtn.Enabled := FavoriteFontsCombo.ItemIndex >= 0;
    AddToFavoriteFontsBtn.Enabled := not(FavoriteFontsCombo.Items.IndexOf(AllFontsCombo.Items.Strings[AllFontsCombo.ItemIndex]) >= 0);
  end;
  if FavoriteFontsCombo.Items.Count = 0 then
  begin
    FavoriteFontSamplePanel.Caption := '';
    UpdateHxW(FavoriteFontSamplePanel.Font, FavHxWPanel, FavoriteFontSamplePanel.Caption);
  end;
  FavoriteFontsCombo.Refresh;
  PrepareInsertTextButtons(SystemFontsSection.ActivePage);
end;

procedure TMainForm.InputTextDelayedChange(Sender: TObject);
begin
  if FavoriteFontsCombo.ItemIndex >= 0 then
    FavoriteFontSamplePanel.Caption := InputText.Text;
  if AllFontsCombo.ItemIndex >= 0 then
    FontSamplePanel.Caption := InputText.Text;
  if SystemFontsSourceRadio.Checked then  //Update the size only if the System Fonts is selected as source because it is a time-consuming process
  begin
    if SystemFontsSection.ActivePageIndex = FavoriteFontsTabSheet.PageIndex then
    begin
      if InsertTextAtCursorBtn.Enabled then
        UpdateHxW(FavoriteFontSamplePanel.Font, FavHxWPanel, InputText.Text)
      else
        UpdateHxW(FavoriteFontSamplePanel.Font, FavHxWPanel, '');
      AllFontsTabSheet.Tag := 1;
    end
    else
    begin
      if InsertTextAtCursorBtn.Enabled then
        UpdateHxW(FontSamplePanel.Font, HxWPanel, InputText.Text)
      else
        UpdateHxW(FontSamplePanel.Font, HxWPanel, '');
      FavoriteFontsTabSheet.Tag := 1;
    end;
  end
  else
  begin
    FavoriteFontsTabSheet.Tag := 1;
    AllFontsTabSheet.Tag := 1;
  end;
end;

procedure TMainForm.CharactersListBoxDblClick(Sender: TObject);
begin
  InsertCharAtCursorBtn.Click;
end;

procedure TMainForm.CharactersListBoxKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Ord(Key) = VK_RETURN) and (CharactersListBox.ItemIndex >= 0) then
    InsertCharAtCursorBtn.Click
  else if Ord(Key) = VK_ESCAPE then
    Key := Chr(0);
end;

procedure TMainForm.FavoriteFontsTabSheetShow(Sender: TObject);
begin
  //************************************
  if not License5.CheckLicenseStatus then
    Exit;
  //************************************

  PrepareInsertTextButtons(FavoriteFontsTabSheet);
  if not InsertTextAtCursorBtn.Enabled then
    FavoriteFontSamplePanel.Caption := '';
  Application.ProcessMessages;
  if ((Sender as TTabSheet).Tag > 0) and InsertTextAtCursorBtn.Enabled then
  begin
    (Sender as TTabSheet).Tag := 0;
    FavoriteFontSamplePanel.Caption := InputText.Text;
    UpdateHxW(FavoriteFontSamplePanel.Font, FavHxWPanel, FavoriteFontSamplePanel.Caption);
  end;
end;

procedure TMainForm.AllFontsTabSheetShow(Sender: TObject);
begin
  //************************************
  if not License6.CheckLicenseStatus then
    Exit;
  //************************************

  PrepareInsertTextButtons(AllFontsTabSheet);
  if not InsertTextAtCursorBtn.Enabled then
    FontSamplePanel.Caption := '';
  Application.ProcessMessages;
  if ((Sender as TTabSheet).Tag > 0) and InsertTextAtCursorBtn.Enabled then
  begin
    (Sender as TTabSheet).Tag := 0;
    FontSamplePanel.Caption := InputText.Text;
    UpdateHxW(FontSamplePanel.Font, HxWPanel, FontSamplePanel.Caption);
  end;
end;

procedure TMainForm.LCDTrim(LCD: TAdvStringGrid; Birmap: TBitmap32;
  DrawingText: String);

  function IsEmpty(L, T, R, B: Integer; ClearedColor: TColor): Boolean;
  var
    Col, Row: Integer;
  begin
    Result := False;
    for Col := L to R do
      for Row := T to B do
        if LCD.Colors[Col, Row] <> ClearedColor then  //*** It is not necessary to compare the ColorsTo values
          Exit;
    Result := True;
  end;

var
  L, R, T, B: Integer;
  Row, Col: Integer;
begin
  //Top
  T := 0;
  while IsEmpty(0, T, LCD.ColCount - 1, T, clWhite) do
    Inc(T);
  //Bottom
  B := LCD.RowCount - 1;
  while IsEmpty(0, B, LCD.ColCount - 1, B, clWhite) do
    Dec(B);
  //Left
  L := 0;
  while IsEmpty(L, 0, L, LCD.RowCount - 1, clWhite) do
    Inc(L);
  if (Length(DrawingText) - Length(TrimLeft(DrawingText))) > 0 then
    L := L - Birmap.TextWidth(StringOfChar(' ', Length(DrawingText) - Length(TrimLeft(DrawingText))));
  //Right
  R := LCD.ColCount - 1;
  while IsEmpty(R, 0, R, LCD.RowCount - 1, clWhite) do
    Dec(R);
  if (Length(DrawingText) - Length(TrimRight(DrawingText))) > 0 then
    R := R + Birmap.TextWidth(StringOfChar(' ', Length(DrawingText) - Length(TrimRight(DrawingText))));

  if T > 0 then
  begin
    for Row := T to B do
      for Col := L to R do
      begin
        LCD.Colors[Col, Row - T] := LCD.Colors[Col, Row];
        LCD.ColorsTo[Col, Row - T] := LCD.ColorsTo[Col, Row];
      end;
  end;
  LCD.RowCount := B - T + 1;
  if L > 0 then
  begin
    for Col := L to R do
      for Row := 0 to LCD.RowCount - 1 do
      begin
        LCD.Colors[Col - L, Row] := LCD.Colors[Col, Row];
        LCD.ColorsTo[Col - L, Row] := LCD.ColorsTo[Col, Row];
      end;
  end;
  LCD.ColCount := R - L + 1;
end;

procedure TMainForm.CellSpaceBtnChange(Sender: TObject);
begin
  LCDGrid.GridLineWidth := CellSpaceBtn.Position;
  if not AdjustingLCDCellSpace then
  begin
    GlobalOptions.LCDCellSpace := CellSpaceBtn.Position;
    UpdateRealTimeRegistrySettings(rskLCDGlobalOptions);
  end;
end;

procedure TMainForm.InsertTextAsLCDBtnClick(Sender: TObject);
var
  LCDSelection: TGridRect;
begin
  //************************************
  if not License.CheckLicenseStatus and
     not(asLoading in ApplicationState) and
     not(fsShowing in FormState) then
    Halt;
  //************************************

  if Length(InputText.Text)=0 then
  begin
    WideShowMessageSoundTop(Dyn_Texts[10] {'Please enter some text.'});
    InputText.SetFocus;
    Exit;
  end;

  try
    LCDSelection := LCDGrid.Selection;
    InsertTextAsWholeLCD := True;

//    SmallWidth := IfThen(AutoextendLCDWidthCheck.Checked, 1, LCDGrid.ColCount);
//    SmallHeight := IfThen(AutoextendLCDHeightCheck.Checked, 1, LCDGrid.RowCount - 1);  //Minus 1 because of TAdvStringGrid

//    ChangeLCDSize(SmallWidth, SmallHeight);
//    ClearLCD(LCDGrid);
    LCDGrid.Row := 0;
    LCDGrid.Col := 0;
    InsertTextAtCursorBtn.Click;
    LCDGrid.Selection := FitSelectionToLCD(LCDGrid, LCDSelection);
    InsertTextAsWholeLCD := False;
  except
    InsertTextAsWholeLCD := False;
  end;
end;

procedure TMainForm.RightToolPanelDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Source = CharacterLibraryGrabber) and
            (CharacterLibraryPanel.Parent <> RightToolPanel);
  if not Accept then
    Exit;

  SetInsertBtnLeftGlyph;

  if State = dsDragEnter then
  begin
    CharacterLibraryPanel.Visible := False;
    if LeftToolPanel.Align = alNone then
    begin
      RightToolPanel.Align := alRight;
      RightToolPanel.Width := LeftToolPanel.Width;
      RightToolSizePanel.Width := RightToolPanel.Width;
      CharacterLibraryPanelRightSplitter.Visible := False;
      RightToolPanel.Align := alNone;
      RightToolPanel.Anchors := [akRight, akTop];
      RightToolPanel.Height := CHARLIBPANEL_COLLAPSED_HEIGHT;
    end
    else
    begin
      RightToolPanel.Align := alRight;
      RightToolPanel.Width := CharacterLibraryPanel.Width;
    end;
    LeftToolPanel.Width := LeftToolPanel.Tag;
    LeftToolPanel.Align := alLeft;

    CharacterLibraryPanel.Align := alClient;
    CharacterLibraryPanel.Parent := RightToolPanel;
    CharacterLibraryPanel.Visible := True;
    CharacterLibraryGrabber.EndDrag(True);
    CharLibPanelPlaceChanged;
  end
  else if State = dsDragLeave then
  begin
  end
  else if State = dsDragMove then
  begin
  end;
end;

procedure TMainForm.LeftToolPanelDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Source = CharacterLibraryGrabber) and
            (CharacterLibraryPanel.Parent <> LeftToolPanel);
  if not Accept then
    Exit;

  SetInsertBtnRightGlyph;

  if State = dsDragEnter then
  begin
    CharacterLibraryPanel.Visible := False;
    if RightToolPanel.Align = alNone then
    begin
      LeftToolPanel.Width := RightToolPanel.Width;
      LeftToolSizePanel.Width := LeftToolPanel.Width;
      LeftToolPanel.Align := alNone;
      LeftToolPanel.Anchors := [akLeft, akTop];
      LeftToolPanel.Height := CHARLIBPANEL_COLLAPSED_HEIGHT;
    end
    else
    begin
      LeftToolPanel.Align := alLeft;
      LeftToolPanel.Width := CharacterLibraryPanel.Width;
      CharacterLibraryPanelLeftSplitter.Left := LeftToolPanel.Width + 50;
    end;
    RightToolPanel.Width := RightToolPanel.Tag;
    RightToolPanel.Align := alRight;

    CharacterLibraryPanel.Align := alClient;
    CharacterLibraryPanel.Parent := LeftToolPanel;
    CharacterLibraryPanel.Visible := True;
    CharacterLibraryGrabber.EndDrag(True);
    CharLibPanelPlaceChanged;
  end
  else if State = dsDragLeave then
  begin
  end
  else if State = dsDragMove then
  begin
  end;
end;

procedure TMainForm.SetCharLibBtnExpandGlyph;
var
  b: TBitmap;
begin
  b := TBitmap.Create;
  b.Assign(CharLibExpandBtn.Glyph);
  ButtonGlyphs.GetBitmap(0, b);
  CharLibExpandBtn.Glyph.Assign(b);
  CharLibExpandBtn.Layout := blGlyphTop;
  b.Free;
end;

procedure TMainForm.SetCharLibBtnCollapseGlyph;
var
  b: TBitmap;
begin
  b := TBitmap.Create;
  b.Assign(CharLibExpandBtn.Glyph);
  ButtonGlyphs.GetBitmap(1, b);
  CharLibExpandBtn.Glyph.Assign(b);
  CharLibExpandBtn.Layout := blGlyphTop;
  b.Free;
end;

procedure TMainForm.CharLibExpandBtnClick(Sender: TObject);
begin
  if CharacterLibraryPanel.Parent = LeftToolPanel then
  begin
    if LeftToolPanel.Align = alLeft then
    begin
      LeftToolPanel.Align := alNone;
      LeftToolPanel.Anchors := [akLeft, akTop];

      SetCharLibBtnExpandGlyph;
      LeftToolSizePanel.Width := LeftToolPanel.Width;
      LeftToolPanel.Height := CHARLIBPANEL_COLLAPSED_HEIGHT;
      GlobalOptions.CharLibPanelCollapsed := True;
    end
    else if LeftToolPanel.Align = alNone then
    begin
      LeftToolPanel.Align := alLeft;
      SetCharLibBtnCollapseGlyph;
      GlobalOptions.CharLibPanelCollapsed := False;
    end;
  end
  else if CharacterLibraryPanel.Parent = RightToolPanel then
  begin
    if RightToolPanel.Align = alRight then
    begin
      CharacterLibraryPanelRightSplitter.Visible := False;
      RightToolPanel.Align := alNone;
      RightToolPanel.Anchors := [akRight, akTop];

      SetCharLibBtnExpandGlyph;
      RightToolSizePanel.Width := RightToolPanel.Width;
      RightToolPanel.Height := CHARLIBPANEL_COLLAPSED_HEIGHT;
      GlobalOptions.CharLibPanelCollapsed := True;
    end
    else if RightToolPanel.Align = alNone then
    begin
      RightToolPanel.Align := alRight;
      CharacterLibraryPanelRightSplitter.Hide;
      CharacterLibraryPanelRightSplitter.Show;
      SetCharLibBtnCollapseGlyph;
      GlobalOptions.CharLibPanelCollapsed := False;
    end;
  end;

  UpdateRealTimeRegistrySettings(rskCharLibOptions);
end;

procedure TMainForm.LeftToolPanelResize(Sender: TObject);
begin
  if LeftToolPanel.Align = alNone then
    LeftToolSizePanel.Width := LeftToolPanel.Width
  else
    LeftToolSizePanel.Width := 0;

  CharacterLibraryPanelLeftSplitter.Visible := (LeftToolPanel.Width > LeftToolPanel.Tag) and
      (LeftToolPanel.Align = alLeft);
end;

procedure TMainForm.RightToolPanelResize(Sender: TObject);
begin
  if RightToolPanel.Align = alNone then
    RightToolSizePanel.Width := RightToolPanel.Width
  else
    RightToolSizePanel.Width := 0;

  CharacterLibraryPanelRightSplitter.Visible := (RightToolPanel.Width > RightToolPanel.Tag) and
      (RightToolPanel.Align = alRight);
end;

procedure TMainForm.CharacterLibraryPanelRightSplitterCanResize(
  Sender: TObject; var NewSize: Integer; var Accept: Boolean);
begin
  Accept := (NewSize >= CHARLIBPANEL_MIN_WIDTH) and
            (NewSize <= CHARLIBPANEL_MAX_WIDTH) and
            ( (NewSize - CharactersPanel.Width) >= CHARLIB_CATEGORIESPANEL_MIN_WIDTH);
end;

procedure TMainForm.LCDGridMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  if Shift = [ssCtrl] then
  begin
    ZoomTrackBar.Position := ZoomTrackBar.Position + 2;
    LCDGrid.Selection := OldLCDSelection;  //Restore the LCDGrid selection because the selection is changed when the user wheels the mouse middle button
    Handled := True;
  end;
end;

procedure TMainForm.LCDGridMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  if Shift = [ssCtrl] then
  begin
    ZoomTrackBar.Position := ZoomTrackBar.Position - 2;
    LCDGrid.Selection := OldLCDSelection;  //Restore the LCDGrid selection because the selection is changed when the user wheels the mouse middle button
    Handled := True;
  end;
end;

procedure TMainForm.FontSizeCombo1KeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
  begin
    Key := Chr(0);
    ApplyFontSectionSettings;
  end;
end;

procedure TMainForm.EditMenuItemClick(Sender: TObject);
begin
  //************************************
  ApplyLicenseStatus(License2.CheckLicenseStatus);
  if not License3.CheckLicenseStatus then
    Exit;
  //************************************
  
  //LCD history
  UpdateHistoryMadeChanges;
  try
    DisableAllMenuChanges(True);  //--> Prevent redrawing of the menu bar (because when the menu bar is Right-to-Left aligned, this repainting has a bad appearance effect)

    //LCD history
    UndoMenuItem.Enabled := UndoToolBtn.Enabled;
    RedoMenuItem.Enabled := RedoToolBtn.Enabled;

    //PasteToolBtn.Enabled is automatically updated when the content of the clipboard changes
    PasteMenuItem.Enabled := PasteToolBtn.Enabled;
  finally
    DisableAllMenuChanges(False);  //--> Reenable drawing of menu bar upon a menu item change
  end;
end;

procedure TMainForm.LCDToBitmap(ALCD: TAdvStringGrid; ABitmap: TBitmap;
  OnlySelection: Boolean = False);
var
  Row, Col: Integer;
begin
  if OnlySelection then
  begin
    ABitmap.Width := ALCD.Selection.Right - ALCD.Selection.Left + 1;
    ABitmap.Height := ALCD.Selection.Bottom - ALCD.Selection.Top + 1;
  end
  else
  begin
    ABitmap.Width := ALCD.ColCount;
    ABitmap.Height := ALCD.RowCount - 1;
  end;

  if OnlySelection then
  begin
    for Row := ALCD.Selection.Top to ALCD.Selection.Bottom do
      for Col := ALCD.Selection.Left to ALCD.Selection.Right do
        if ALCD.Colors[Col, Row] = LCDOptions.LCDFilledColor then  //*** Only use Colors values
          ABitmap.Canvas.Pixels[Col - ALCD.Selection.Left, Row - ALCD.Selection.Top] := LCDOptions.LCDFilledColor
        else
          ABitmap.Canvas.Pixels[Col - ALCD.Selection.Left, Row - ALCD.Selection.Top] := LCDOptions.LCDClearedColor;
  end
  else
  for Row := 0 to ALCD.RowCount - 2 do
    for Col := 0 to ALCD.ColCount - 1 do
      if ALCD.Colors[Col, Row] = LCDOptions.LCDFilledColor then  //*** Only use Colors values
        ABitmap.Canvas.Pixels[Col, Row] := LCDOptions.LCDFilledColor
      else
        ABitmap.Canvas.Pixels[Col, Row] := LCDOptions.LCDClearedColor;
end;

procedure TMainForm.UpdateLCDPicturePreview;
var
  b: TBitmap;
begin
  if not Assigned(LCDPicturePreviewForm) then
    Exit;
  if not LCDPicturePreviewForm.Visible then
    Exit;

  LCDPicturePreviewForm.Tag := 0;  //Up-to-date

//  if (LCDPicturePreviewForm.PreviewImage.Picture.Bitmap.Width <> LCDGrid.ColCount) or
//     (LCDPicturePreviewForm.PreviewImage.Picture.Bitmap.Height <> (LCDGrid.RowCount - 1)) then
//  begin
    b := TBitmap.Create;
    try
      LCDToBitmap(LCDGrid, b);
      LCDPicturePreviewForm.PreviewImage.Picture.Bitmap.Assign(b);
    finally
      b.Free;
    end;
//  end;
end;

procedure TMainForm.LCDPicturePreviewMenuItemClick(Sender: TObject);
begin
  if GlobalOptions.LCDPicturePreviewFormFirstShow then
  begin
    LCDPicturePreviewForm.Left := Mouse.CursorPos.X - 15;
    LCDPicturePreviewForm.Top := LCDToolPanel.ClientToScreen(Point(0, LCDToolPanel.Height)).Y;
    Procs.MoveFormIntoScreen(LCDPicturePreviewForm);
  end;
  LCDPicturePreviewForm.Visible := (Sender as TMenuItem).Checked;
  LCDPicturePreviewToolBtn.Down := (Sender as TMenuItem).Checked;
  if (Sender as TMenuItem).Checked then
    UpdateLCDPicturePreview;
end;

procedure TMainForm.LCDPicturePreviewToolBtnClick(Sender: TObject);
begin
  LCDPicturePreviewMenuItem.Click;
end;

procedure TMainForm.ApplyStartupOnShowConfig;
begin
  with GlobalOptions do
  begin
    //***First set the language, if not, while applying the other settings, the
    // user may see some forms (for example LCDPicturePreviewForm) in a language
    // other than the selected language.
    //Language
    SwitchLanguage(ActiveLanguage, ActiveLanguageOptions, False, True);

    LCDPicturePreviewForm.Left := LCDPicturePreviewFormPosition.X;
    LCDPicturePreviewForm.Top := LCDPicturePreviewFormPosition.Y;
    LCDPicturePreviewForm.Width := LCDPicturePreviewFormWidth;
    LCDPicturePreviewForm.Height := LCDPicturePreviewFormHeight;
    LCDPicturePreviewMenuItem.Checked := LCDPicturePreviewVisible;
    LCDPicturePreviewMenuItem.OnClick(LCDPicturePreviewMenuItem);

    ClearLCDUndefinedColors(CodeToLCDForm.PreviewGrid, LCDClearedColor, [LCDFilledColor, LCDClearedColor]);
    ClearLCDUndefinedColors(ImportGraphicsForm.PreviewGrid, LCDClearedColor, [LCDFilledColor, LCDClearedColor]);

    //Toolbars
    SetToolbarCaptions;  //Set captions before reading toolbar settings
    try
      if not Procs.RegKeyExists(REG_TOOLBAR_SETTINGS_PATH) then
        RestoreDefaultToolbarPositions
      else
      begin
        SpecialProcs.ReadToolbarSettings(GeneralToolbar, REG_TOOLBAR_SETTINGS_PATH, REG_TOOLBAR_VALUE_GENERAL);
        SpecialProcs.ReadToolbarSettings(DesignToolBar, REG_TOOLBAR_SETTINGS_PATH, REG_TOOLBAR_VALUE_DESIGN);
        SpecialProcs.ReadToolbarSettings(ImportExportToolBar, REG_TOOLBAR_SETTINGS_PATH, REG_TOOLBAR_VALUE_IMPORTEXPORT);
      end;

      //Don't allow the user to hide the Design toolbar directly from the toolbar
      if DesignToolBar.Floating then
        (DesignToolBar.Parent as TForm).BorderIcons := [];
    except
    end;
  end;

  GeneralToolbar.RemoveControl(CaptionedToolBar);  //Correct drawing bug
  GeneralToolbar.InsertControl(CaptionedToolBar);
  ImportExportToolBar.RemoveControl(CodeToLCDToolBar);  //Correct DropDown style bug (to work correctly when the dropdown arrow is clicked)
  ImportExportToolBar.InsertControl(CodeToLCDToolBar);
end;

procedure TMainForm.FormShow(Sender: TObject);
var
  MainFormWindowState: TWindowState;
begin
  ApplyStartupOnShowConfig;

  //Appearance correction
  //Refresh the text of LCDWidthEdit and LCDHeightEdit to reflect the suffix string
  // and update the value string
  LCDWidthEdit.Value := LCDOptions.LCDWidth;
  LCDHeightEdit.Value := LCDOptions.LCDHeight;

  CharLibInternalSplitter2.Top := CharacterLibraryTopPanel.Height + 5;
  MainFormWindowState := WindowState;
  TextToLCDPanel.Align := alBottom;
  WindowState := MainFormWindowState;
  CharacterLibraryTopPanel.Height := GlobalOptions.CharLibTopPanelHeight;
  BottomSplitter.Top := TextToLCDPanel.Top;

  ApplyAfterShowConfigTimer.Enabled := True;

  //*****************************************
  //Set the OnShow event handler to nil to prevent triggering this event during
  // the application execution by mistake, because we don't want this event to
  // be triggered again at all.
  MainForm.OnShow := nil;
  //*****************************************
end;

procedure TMainForm.WindowSize(var msg: TWMSize);
begin
  inherited;
  if LoadingConfig then
    Exit;
  if msg.SizeType = SIZE_MAXIMIZED then
  begin
    with GlobalOptions do
    begin
      MainFormState := wsMaximized;
      MainFormLeft := OldWindowRect.Left;
      MainFormTop := OldWindowRect.Top;
      MainFormWidth := OldWindowRect.Width;
      MainFormHeight := OldWindowRect.Height;
    end;
  end
  else if msg.SizeType = SIZE_RESTORED then
  begin
    with GlobalOptions do
    begin
      MainFormState := wsNormal;
      MainFormLeft := Left;
      MainFormTop := Top;
      MainFormWidth := Width;
      MainFormHeight := Height;
    end;
  end;
  msg.Result := 0;
end;

procedure TMainForm.BottomSplitterCanResize(Sender: TObject;
  var NewSize: Integer; var Accept: Boolean);
begin
  Accept := NewSize <= 285;
end;

procedure TMainForm.CharacterLibraryPanelResize(Sender: TObject);
begin
  CharLibInternalSplitter1Moved(CharLibInternalSplitter1);
  if (OldCharLibPanelSize.X > 0) and (OldCharLibPanelSize.Y > 0) then
  begin
    if CharacterLibraryPanel.Height > OldCharLibPanelSize.Y then
      CharacterLibraryTopPanel.Height := CharacterLibraryTopPanel.Height + (CharacterLibraryPanel.Height - OldCharLibPanelSize.Y)
    else
      CharacterLibraryTopPanel.Height := CharacterLibraryTopPanel.Height - (OldCharLibPanelSize.Y - CharacterLibraryPanel.Height);
  end;
  if ( CharacterLibraryTopPanel.Height >= (CharacterLibraryPanel.Height - 45) ) and
     ( CharacterLibraryPanel.Height > CHARPREVIEWPANEL_MIN_HEIGHT ) then
    CharacterLibraryTopPanel.Height := CharacterLibraryPanel.Height - CHARPREVIEWPANEL_MIN_HEIGHT - 45;
  OldCharLibPanelSize := Point(CharacterLibraryPanel.Width, CharacterLibraryPanel.Height);
  CharLibInternalSplitter2.Top := CharacterLibraryTopPanel.Height + 5;
end;

function TMainForm.TypeCharacter(PrevChar, MainChar,
  NextChar: WideChar; var RightToLeft: Boolean): WideChar;
var
  i: Integer;
  S: ShortString;
  Handle: THandle;
begin
  for i:=0 to Length(TyperModules) - 1 do
  begin
    Handle := TyperModules[i];
    try
      @IsCompatible := Windows.GetProcAddress(Handle, 'IsCompatible');
      @GetVersion := Windows.GetProcAddress(Handle, 'GetVersion');
      @TypeChar := Windows.GetProcAddress(Handle, 'TypeChar');
      if (@IsCompatible <> nil) and
         (@GetVersion <> nil) and
         (@TypeChar <> nil) then
      begin
        if IsCompatible(FILE_VERSION, S) then
        begin
          if TypeChar(PrevChar, MainChar, NextChar, Result, RightToLeft) then
            Exit;
        end;
      end;
      except
      end;
  end;
  Result := MainChar;
end;

function TMainForm.MapCharacterToFilename(Character: WideChar;
  CharMapGrid:TAdvStringGrid; ReturnOnlyUserMappedName: Boolean): String;

  function IsMultiByteChar(CharCode: WideChar): Boolean;
  var
    S: String;
  begin
    S := WideChar(CharCode);
    Result := Integer(S[1]) <> Integer(CharCode);
  end;

var
  Row:Integer;
  SearchUserMapTable: Boolean;
  FName: ShortString;
begin
  FName := MapCharToFile(Character, SearchUserMapTable);
  Result := FName;
  if (Length(FName) > 0) and SearchUserMapTable then
  begin
    for Row:=1 to CharMapGrid.RowCount - 2 do
      if CharMapGrid.Cells[0, Row]=Character then
      begin
        Result:=CharMapGrid.Cells[1,Row]+'.chr';
        Exit;
      end;
  end;

  if ReturnOnlyUserMappedName then  //Do not return the MapCharToFile function result?
  begin
    if IsMultiByteChar(Character) then
      Result := ''  //Don't serach the user-mapped chars because the character is a multibyte character while the user-mapped chars do not support multibyte characters in this version
    else
      Result := Character + '.chr';
  end
  else
  begin
    if Length(FName) > 0 then
      Result := FName + '.chr'
    else
      Result:=Character + '.chr';
  end;
end;

procedure TMainForm.InitializeTyperModules;

  procedure GetFullList(const Path:String; FileList: TStringList);
  var
    List:TStringList;
    FSR:TSearchRec;
    i:Integer;
  begin
    List:=TStringList.Create;
    List.Clear;
    if FindFirst(Path+'\*.*', faAnyFile, FSR)=0 then
    begin
      repeat
        if ((FSR.Attr and faSysFile)=0) and
           ((FSR.Attr and faSymLink)=0) and
           ((FSR.Attr and faVolumeID)=0) then
        begin
          if (FSR.Attr and faDirectory)=0 then
          begin
            if LowerCase(ExtractFileExt(FSR.Name))='.dll' then
              List.Append(Path+'\'+FSR.Name);
          end
          else if FSR.Name[1]<>'.' then
            List.Append(Path+'\'+FSR.Name);
        end;
      until FindNext(FSR)<>0;
    end;
    FindClose(FSR);
    for i:=0 to List.Count-1 do
    begin
      if DirectoryExists(List.Strings[i]) then
        GetFullList(List.Strings[i], FileList)
      else
        FileList.Append(List.Strings[i]);
    end;
  end;

var
  ModuleList: TStringList;
  Handle: THandle;
  i: Integer;
begin
  ModuleList := TStringList.Create;
  ModuleList.Clear;
  GetFullList(ApplicationPath + TYPERS_FOLDER_NAME, ModuleList);

  SetLength(TyperModules, 0);
  for i:=0 to ModuleList.Count - 1 do
  begin
    Handle := LoadLibrary(PChar(ModuleList.Strings[i]));
    if Handle <> 0 then
    begin
      try
        @IsCompatible := Windows.GetProcAddress(Handle, 'IsCompatible');
        @GetVersion := Windows.GetProcAddress(Handle, 'GetVersion');
        @TypeChar := Windows.GetProcAddress(Handle, 'TypeChar');
        if (@IsCompatible <> nil) and
           (@GetVersion <> nil) and
           (@TypeChar <> nil) then
        begin
          SetLength(TyperModules, Length(TyperModules) + 1);
          TyperModules[Length(TyperModules) - 1] := Handle;
        end;
      except
        FreeLibrary(Handle);
      end;
    end;
  end;
  ModuleList.Free;
end;

procedure TMainForm.InputTextRTLBtnClick(Sender: TObject);
begin
  //************************************
  if not License4.CheckLicenseStatus and
     not(asLoading in ApplicationState) and
     not(fsShowing in FormState) then
    Halt;
  //************************************

  InputText.BiDiMode := bdRightToLeft;
end;

procedure TMainForm.InputTextLTRBtnClick(Sender: TObject);
begin
  //************************************
  if not License5.CheckLicenseStatus and
     not(asLoading in ApplicationState) and
     not(fsShowing in FormState) then
    Halt;
  //************************************

  InputText.BiDiMode := bdLeftToRight;
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  LCDHistory.Free;
//  SaveCategoryDialog1.Free;
end;

procedure TMainForm.PrepareInsertTextButtons(NewActivePage: TTabSheet);
begin
  if SystemFontsSourceRadio.Checked then
  begin
    if NewActivePage = FavoriteFontsTabSheet then
    begin
      InsertTextAtCursorBtn.Enabled := FavoriteFontsCombo.Items.Count > 0;
      InsertTextAsLCDBtn.Enabled := InsertTextAtCursorBtn.Enabled;
    end
    else if NewActivePage = AllFontsTabSheet then
    begin
      InsertTextAtCursorBtn.Enabled := AllFontsCombo.Items.Count > 0;
      InsertTextAsLCDBtn.Enabled := InsertTextAtCursorBtn.Enabled;
    end;
  end
  else if CharacterLibrarySourceRadio.Checked then
  begin
    InsertTextAtCursorBtn.Enabled := True;
    InsertTextAsLCDBtn.Enabled := True;
  end;
end;

procedure TMainForm.LanguageMenuItemClick(Sender: TObject);
begin
  ChooseLanguageForm := TChooseLanguageForm.Create(Self);
  try
    if ChooseLanguageForm.ShowModal = mrOk then
      UpdateRealTimeRegistrySettings(rskLanguage);
  finally
    ChooseLanguageForm.Free;
    //Rehook the proc if it was unhooked
    StandardSystemMenu1.ReHook;
  end;
end;

procedure TMainForm.ImportPictureToolBtnClick(Sender: TObject);
begin
  ImportPictureFileMenuItem.Click;
end;

procedure TMainForm.CodeToLCDToolBtnClick(Sender: TObject);
  procedure SetFormPosition;
  var
    P: TPoint;
  begin
    P := CodeToLCDToolBtn.Parent.ClientToScreen(Point(CodeToLCDToolBtn.Left, CodeToLCDToolBtn.Top));

    if (P.X + CodeToLCDForm.Width) > Screen.Width then
      P.X := P.X - CodeToLCDForm.Width + CodeToLCDToolBtn.Width;

    if (P.Y + CodeToLCDToolBtn.Height + CodeToLCDForm.Height) > Screen.Height then
      P.Y := P.Y - CodeToLCDForm.Height
    else
      P.Y := P.Y + CodeToLCDToolBtn.Height;

    CodeToLCDForm.Left := P.X;
    CodeToLCDForm.Top := P.Y;
  end;
begin
  //************************************
  if not License6.CheckLicenseStatus then
    Halt;
  //************************************

  if CodeToLCDToolBtn.Down then
  begin
    if CodeToLCDForm.WindowState = wsMinimized then
      CodeToLCDForm.WindowState := wsNormal;
    CodeToLCDForm.BorderStyle := bsNone;
    SetFormPosition;
    CodeToLCDForm.Show;
  end
  else
  begin
    if CodeToLCDForm.WindowState = wsMinimized then
    begin
      CodeToLCDForm.Close;
      CodeToLCDForm.WindowState := wsNormal;
      CodeToLCDToolBtn.Down := True;
      CodeToLCDForm.BorderStyle := bsNone;
      SetFormPosition;
      CodeToLCDForm.Show;
    end
    else
      CodeToLCDForm.Close;
  end;
end;

procedure TMainForm.ApplicationEvents1Deactivate(Sender: TObject);
begin
  if Assigned(CodeToLCDForm) then
    if CodeToLCDForm.Visible and
       (CodeToLCDForm.BorderStyle = bsNone) then
      CodeToLCDForm.Close;
end;

procedure TMainForm.ImportExportToolBarMenuItemClick(Sender: TObject);
begin
  ImportExportToolBar.Visible := (Sender as TMenuItem).Checked;
end;

procedure TMainForm.ExportLCDToolBtnClick(Sender: TObject);
begin
  ExportLCDMenuItem.Click;
end;

function TMainForm.CheckLCDDesignFileFormat(const FName: String): Boolean;
type
  TCharSet = set of Char;

  function IsValidLine(const Line: String; ValidChars: TCharSet): Boolean;
  var
    i: Integer;
    CommaExpected: Boolean;
  begin
    Result := False;
    CommaExpected := False;
    for i:=1 to Length(Line) do
    begin
      if CommaExpected then
      begin
        if Line[i] <> ',' then
          Exit;
      end
      else if not(Line[i] in ValidChars) then
        Exit;
      CommaExpected := not CommaExpected;
    end;
    Result := True;
  end;
var
  LineList: TStringList;
  i, Len: Integer;
begin
  //Allow zero-lengthed files to be opened
  if Procs.FileSize(FName) = 0 then
  begin
    Result := True;
    Exit;
  end;
  //////////////////////////////////////

  Result := False;
  LineList := TStringList.Create;
  try
    try
      LineList.LoadFromFile(FName);
      if LineList.Count = 0 then
        Exit;
      Len := Length(LineList.Strings[0]);
      for i:=1 to LineList.Count - 2 do  //Last row is Desig file specifier and will be checked afterwards (in the next for-loop)
        if (Length(LineList.Strings[i]) <> Len) or not IsValidLine(LineList.Strings[i], ['0', '1']) then
          Exit;
      if (Length(LineList.Strings[LineList.Count - 1]) <> Len) or
         not IsValidLine(LineList.Strings[LineList.Count - 1], [DESIGN_FILE_END_ROW_SPECIFIER]) then
        Exit;
    finally
      LineList.Free;
    end;
  except
    Exit;
  end;
  Result := True;
end;

procedure TMainForm.PrintLCDToolBtnClick(Sender: TObject);
begin
  if PrintLCDMenuItem.Enabled then
    PrintLCD(False);  //Immediate print
end;

procedure TMainForm.PrintGrid(AGrid: TAdvStringGrid; const PrintTitle: String);
var
  Preview: TBitmap;
begin
  Preview := TBitmap.Create;
  try
    Preview.Width := LCDGrid.ColCount * (20 + 1);
    Preview.Height := LCDGrid.RowCount * (20 + 1);
    AGrid.PrintPreview(Preview.Canvas, Rect(0, 0, Preview.Width- 1, Preview.Height - 1));

    Application.NormalizeAllTopMosts;
    Procs.PrintBitmap(Preview, True, PrintTitle);
  finally
    Preview.Free;
    Application.RestoreTopMosts;
  end;
end;

function TMainForm.ValidateConfiguration(AGlobalOptions: TGlobalOptions;
  FixProblems: Boolean): Boolean;
begin
  //FixProblems is not supported in this version.
  Result := True;
  Exit;  //Does not work correctly (Has some bugs).

  with AGlobalOptions do
  begin
    Result := ( MainFormWidth <= 0 ) or
              ( MainFormHeight <= 0 ) or
              ( (MainFormLeft + MainFormWidth) < 0 ) or
              ( (MainFormTop + MainFormHeight) < 0 ) or
              ( CharLibPanelHeight >= MainFormHeight ) or
              ( ZoomTrackBarValue < ZoomTrackBar.Min ) or
              ( ZoomTrackBarValue > ZoomTrackBar.Max ) or
              ( PreviewZoomTrackBarValue < PreviewZoomTrackBar.Min ) or
              ( PreviewZoomTrackBarValue > PreviewZoomTrackBar.Max ) or
              ( LCDFilledColor = LCDClearedColor ) or
              ( CharacterLibraryPanelWidth <= 0) or
              ( CharLibTopPanelHeight <= 0 ) or
              ( CharLibPanelHeight > CharLibPanelHeight ) or
              ( CharacterLibraryPanelWidth >= MainFormWidth ) or
              ( TextToLCDPanelHeight <= 0 ) or
              ( TextToLCDPanelHeight > MainFormHeight ) or
              ( SystemFontsSectionActivePageIndex < 0 ) or
              ( SystemFontsSectionActivePageIndex > (SystemFontsSection.PageCount - 1) ) or
              ( LCDCellSpace < 0 ) or
              ( LCDPicturePreviewFormWidth < 0 ) or
              ( LCDPicturePreviewFormHeight < 0 ) or
              ( (LCDPicturePreviewFormPosition.X + LCDPicturePreviewFormWidth) < 0 ) or
              ( (LCDPicturePreviewFormPosition.Y + LCDPicturePreviewFormHeight) < 0 );

    with LCDAnimatorSettings do
    begin
      Result := Result or
                ( LCDZoomValue < 0) or
                ( AnimSpeed < 0) or
                ( (LCDAnimatorSettings.FormLeft + LCDAnimatorSettings.FormWidth) < 0 ) or
                ( (LCDAnimatorSettings.FormTop + LCDAnimatorSettings.FormHeight) < 0 );
    end;

    with ImportGraphicsFormSettings do
    begin
      Result := Result or
                ( PreviewZoomValue < 0 ) or
                ( FormWidth <= 0 ) or
                ( FormHeight <= 0 ) or
                ( SourceSectionWidth < 0 ) or
                ( ScaleFactor < 1 ) or
                ( ColorTolerance < 0 ) or
                ( ColorTolerance > 255 );
    end;

    with ExportLCDFormSettings do
    begin
      Result := Result or
                ( ExportLCDFormHeight <= 0 ) or
                ( ColSepUnitComboIndex < 0 ) or
                ( ColBreakUnitComboIndex < 0 ) or
                ( RowSepNumOfRows < 0 );
    end;

    Result := not Result;
  end;
end;

procedure TMainForm.ShowDefaultHelpMenuItemClick(Sender: TObject);
begin
  ShowHelpFile(GlobalOptions.DefaultHelpLanguage);
end;

procedure TMainForm.AdvanceLCDCursor(ALCDGrid: TAdvStringGrid; AWidth,
  AHeight: Integer);
begin
  if ( (ALCDGrid.Col + AWidth) < ALCDGrid.ColCount) and
       ((ALCDGrid.ColCount - ALCDGrid.Col - AWidth) >= AWidth) then
    ALCDGrid.Col := ALCDGrid.Col + AWidth
  else if ((ALCDGrid.Row + AHeight) < (ALCDGrid.RowCount - 1)) and
          ((ALCDGrid.RowCount - 1 - ALCDGrid.Row - AHeight) >= AHeight) then  //There should exists enough space for the character
  begin
    ALCDGrid.Row := ALCDGrid.Row + AHeight;
    ALCDGrid.Col := 0;
  end;
end;

procedure TMainForm.QuickExportToolBtnClick(Sender: TObject);
begin
  QuickExportMenuItem.Click;
end;

procedure TMainForm.QuickExportMenuItemClick(Sender: TObject);
var
  QEF: TextFile;
  LineNo: Integer;
begin
  if asLoading in ApplicationState then
    Exit;

  if GlobalOptions.ExportLCDFormSettings.QECopyToClipboard or
     GlobalOptions.ExportLCDFormSettings.QESaveToFile or
     GlobalOptions.ExportLCDFormSettings.QEAppendToFile then
  begin
    ExportLCDForm.LoadConfig;
    ExportLCDForm.LCDGrid:=LCDGrid;
    ExportLCDForm.LCDFilledColor:=LCDOptions.LCDFilledColor;
    ExportLCDForm.LCDClearedColor:=LCDOptions.LCDClearedColor;
    ExportLCDForm.ApplyBtn.Click;
    if GlobalOptions.ExportLCDFormSettings.QECopyToClipboard then
      ExportLCDForm.CopyBtn.Click;
    if GlobalOptions.ExportLCDFormSettings.QESaveToFile then
    begin
      try
        if not InformForReadOnlySelectedFile(GlobalOptions.ExportLCDFormSettings.QEFileName) then
          ExportLCDForm.ExportMemo.Lines.SaveToFile(GlobalOptions.ExportLCDFormSettings.QEFileName);
      except
        WideMessageDlgSoundTop(WideFormat(Dyn_Texts[23] {'Unable to Quick Export to the file:%s'}, [Chr(13) + GlobalOptions.ExportLCDFormSettings.QEFileName]), mtError, [mbOK], 0);
      end;
    end;
    if GlobalOptions.ExportLCDFormSettings.QEAppendToFile then
    begin
      AssignFile(QEF, GlobalOptions.ExportLCDFormSettings.QEAdvancedFileName);
      {$I-}
      if not FileExists(GlobalOptions.ExportLCDFormSettings.QEAdvancedFileName) then
        Rewrite(QEF)
      else
        Append(QEF);
      {$I+}
      if IOResult <> 0 then
      begin
        WideMessageDlgSoundTop(WideFormat('Unable to append to the file:%s', [Chr(13) + GlobalOptions.ExportLCDFormSettings.QEAdvancedFileName]), mtError, [mbOK], 0);
      end
      else
      begin
        try
          WriteLn(QEF, ExportLCDForm.FillInFields(ExportLCDForm.FramePrefixMemo.Text));
          for LineNo := 0 to ExportLCDForm.ExportMemo.Lines.Count - 1 do
            WriteLn(QEF, ExportLCDForm.ExportMemo.Lines.Strings[LineNo]);
          WriteLn(QEF, ExportLCDForm.FillInFields(ExportLCDForm.FrameSuffixMemo.Text));
          CloseFile(QEF);
          Inc(GlobalOptions.NextFrameNo);
        except
          MessageDlgSoundTop(WideFormat('Occured an error while writing to the output file:%s', [Chr(13) + GlobalOptions.ExportLCDFormSettings.QEAdvancedFileName]), mtError, [mbOK], 0);
          CloseFile(QEF);
        end;
      end;
    end;
  end
  else
  begin
    WideMessageDlgSoundTop(Dyn_Texts[24], mtInformation, [mbOK], 0);  {'No settings are defined for Quick Export. You can define Quick Export settings in the Export Design window.'}
    ExportLCDMenuItem.Click;
  end;
end;

procedure TMainForm.RestoreTreeViewPath(AFolderTreeView: TMMFolderTreeView;
  const TreePath: String);
var
  tmpTreeNode: TTreeNode;
begin
  if AFolderTreeView.Items.Count = 0 then
    Exit;
  tmpTreeNode := FindTreeViewNode(AFolderTreeView.Items, TreePath);
  if Assigned(tmpTreeNode) then
    AFolderTreeView.Selected := tmpTreeNode
  else
    AFolderTreeView.Selected := AFolderTreeView.Items[0];
end;

procedure TMainForm.RotatePage90CWMenuItemClick(Sender: TObject);
begin
  LCDProcs.RotateLCDPageCW(LCDGrid);
  ChangeLCDSize(LCDGrid.ColCount, LCDGrid.RowCount - 1);
end;

procedure TMainForm.RotatePage90CCWMenuItemClick(Sender: TObject);
begin
  LCDProcs.RotateLCDPageCCW(LCDGrid);
  ChangeLCDSize(LCDGrid.ColCount, LCDGrid.RowCount - 1);
end;

procedure TMainForm.RotatePage90CWToolBtnClick(Sender: TObject);
begin
  RotatePage90CWMenuItem.Click;
end;

procedure TMainForm.RotatePage90CCWToolBtnClick(Sender: TObject);
begin
  RotatePage90CCWMenuItem.Click;
end;

procedure TMainForm.LCDMenuItemClick(Sender: TObject);
begin
  //************************************
  ApplyLicenseStatus(License.CheckLicenseStatus);
  if not License2.CheckLicenseStatus then
    Exit;
  //************************************

  try
    DisableAllMenuChanges(True);  //--> Prevent redrawing of the menu bar (because when the menu bar is Right-to-Left aligned, this repainting has a bad appearance effect)
    CreateCharacterMenuItem.Enabled := (LCDGrid.Selection.Right > LCDGrid.Selection.Left) or
                 (LCDGrid.Selection.Bottom > LCDGrid.Selection.Top);
  finally
    DisableAllMenuChanges(False);  //--> Reenable drawing of menu bar upon a menu item change
  end;
end;

procedure TMainForm.UpdateCursorStatusTimerTimer(Sender: TObject);
var
  R: TRect;
begin
  R.TopLeft := LCDGrid.Parent.ClientToScreen(LCDGrid.BoundsRect.TopLeft);
  R.BottomRight := LCDGrid.Parent.ClientToScreen(LCDGrid.BoundsRect.BottomRight);
  if (Mouse.CursorPos.X < R.Left) or (Mouse.CursorPos.X > R.Right) or
     (Mouse.CursorPos.Y < R.Top) or (Mouse.CursorPos.Y > R.Bottom) then
  begin
    UpdateLCDCursorPosStatusPanel(LCDGrid.Col, LCDGrid.Row);
    UpdateCursorStatusTimer.Enabled := False;
  end;
end;

procedure TMainForm.TopControlBarResize(Sender: TObject);
begin
  LeftToolPanel.Top := TopControlBar.Top + TopControlBar.Height;
  RightToolPanel.Top := TopControlBar.Top + TopControlBar.Height;
end;

procedure TMainForm.CharLibPathLabelMouseEnter(Sender: TObject);
begin
  CharLibPathLabel.Font.Color := clHotLight;
end;

procedure TMainForm.CharLibPathLabelMouseLeave(Sender: TObject);
begin
  CharLibPathLabel.Font.Color := clWindowText;
end;

procedure TMainForm.CharLibPathLabelClick(Sender: TObject);
var
  Path: String;
begin
  if Length(CharLibPathLabel.Caption) > 0 then
  begin
    Path := CategoryFolderTreeView.Root + '\' + CategoryFolderTreeView.SelectedFolderFullPath;
    ShellExecute(Handle, 'explore', PChar(Path), nil, nil, SW_SHOWMAXIMIZED);
  end;
end;

procedure TMainForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ProcessExtraKeyboardShortcuts(Key, Shift);
end;

procedure TMainForm.ProcessExtraKeyboardShortcuts(var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F12:
      begin
        if Shift = [] then
        begin
          Key := 0;
          SaveDesignAsMenuItem.Click;
        end;
      end;
  end;
end;

procedure TMainForm.LoadRuntimeDefaultConfig(
  var ARuntimeGlobalOptions: TRuntimeGlobalOptions);
begin
  //Recently used file list
  RUFL := TStringList.Create;  //Always create RUFL regardless of GlobalOptions.RUFLCount to prevent potential software bugs
  RUFL.Clear;
  RUFL.Sorted := False;
  RUFLLastOpenedFile := '';

  IgnoreThisClick := False;
  with ARuntimeGlobalOptions do
  begin
    FullScreenModeRequested := False;
    CharPreviewGridCleared := False;
  end;
end;

procedure TMainForm.SetInsertBtnLeftGlyph;
begin
  InsertCharAtCursorBtn.Glyph.Width := 0;
  InsertCharAtCursorBtn.Glyph.Height := 0;
  ButtonGlyphs32.GetBitmap(1, InsertCharAtCursorBtn.Glyph);
  InsertCharAtCursorBtn.Layout := blGlyphLeft;
end;

procedure TMainForm.SetInsertBtnRightGlyph;
begin
  InsertCharAtCursorBtn.Glyph.Width := 0;
  InsertCharAtCursorBtn.Glyph.Height := 0;
  ButtonGlyphs32.GetBitmap(0, InsertCharAtCursorBtn.Glyph);
  InsertCharAtCursorBtn.Layout := blGlyphRight;
end;

procedure TMainForm.OnLCDChanged;
begin
  AddNewHistoryState;
  UpdateLCDPicturePreview;
end;

procedure TMainForm.RepaintCell(ACol, ARow: Integer);
begin
  try

  //*** It is not necessary to copmare ColorsTo values here
  if LCDGrid.Colors[ACol + 1, ARow + 1] <> LCDOptions.LCDFilledColor then
    LCDGrid.RepaintCell(ACol + 1, ARow + 1)
  else if LCDGrid.Colors[ACol - 1, ARow + 1] <> LCDOptions.LCDFilledColor then
    LCDGrid.RepaintCell(ACol - 1, ARow + 1)
  else if LCDGrid.Colors[ACol, ARow + 1] <> LCDOptions.LCDFilledColor then
    LCDGrid.RepaintCell(ACol, ARow + 1)
  else if LCDGrid.Colors[ACol + 1, ARow] <> LCDOptions.LCDFilledColor then
    LCDGrid.RepaintCell(ACol + 1, ARow)
  else if LCDGrid.Colors[ACol - 1, ARow] <> LCDOptions.LCDFilledColor then
    LCDGrid.RepaintCell(ACol - 1, ARow)
  else if LCDGrid.Colors[ACol - 1, ARow - 1] <> LCDOptions.LCDFilledColor then
    LCDGrid.RepaintCell(ACol - 1, ARow - 1)
  else if LCDGrid.Colors[ACol + 1, ARow - 1] <> LCDOptions.LCDFilledColor then
    LCDGrid.RepaintCell(ACol + 1, ARow - 1)
  else if LCDGrid.Colors[ACol, ARow - 1] <> LCDOptions.LCDFilledColor then
    LCDGrid.RepaintCell(ACol, ARow - 1);

  except

  end;
end;

procedure TMainForm.StatusBarMenuItemClick(Sender: TObject);
begin
  MainStatusBar.Visible := (Sender as TMenuItem).Checked;
  if MainStatusBar.Visible and TextToLCDPanel.Visible and
     (MainStatusBar.Top < TextToLCDPanel.Top) then
  begin
    MainStatusBar.Top := TextToLCDPanel.Top + TextToLCDPanel.Height + 5;
  end;
end;

procedure TMainForm.DefaultHelpLanguageMenuItemClick(Sender: TObject);
begin
  if asLoading in ApplicationState then
    Exit;

  ChooseHelpLangForm := TChooseHelpLangForm.Create(nil);
  try
    ActiveLanguageOptions.LanguageOptionsChanged := True;
    ChooseHelpLangForm.SetLanguage(ActiveLanguage, ActiveLanguageOptions, ActiveLangInstance);
    ChooseHelpLangForm.ShowModal;  //This automatically calls the SetDefaultHelpLanguage procedure
    UpdateRealTimeRegistrySettings(rskDefaultHelpLang);
  finally
    IgnoreThisClick := True;
    ChooseHelpLangForm.Free;
  end;
end;

procedure TMainForm.SetDefaultHelpLanguage(const HelpLanguage: String);
begin
  ShowDefaultHelpMenuItem.Enabled := HelpExists(HelpLanguage);
  if ShowDefaultHelpMenuItem.Enabled then
    ShowDefaultHelpMenuItem.Caption := TranslateWord(HelpLanguage + ' Help') + '...'
  else
    ShowDefaultHelpMenuItem.Caption := Dyn_Texts[25];  //'{no help is available}';
end;

procedure TMainForm.LCDDesignerHomePageMenuItemClick(Sender: TObject);
begin
  Procs.OpenUrlInDefaultBrowser(SOFTWARE_HOME_PAGE);
end;

procedure TMainForm.CheckForUpdatesMenuItemClick(Sender: TObject);
begin
  CheckForUpdatesForm := TCheckForUpdatesForm.Create(nil);
  try
    CheckForUpdatesForm.ShowModal;
  finally
    CheckForUpdatesForm.Free;
  end;
end;

procedure TMainForm.CharLibOrganizerBtnClick(Sender: TObject);
begin
  CharacterLibraryOrganizerMenuItem.Click;
end;

procedure TMainForm.ACWord1KeyPress(Sender: TObject; var Key: Char);
var
  CurPos: Integer;
  S: String;
begin
  if Ord(Key) = VK_RETURN then
    Key := Chr(0)
  else if (Ord(Key) >= 97) and
          (Ord(Key) <= 122) then
    Key := Chr(Ord(Key) - 32);  //Convert char to uppercase
  if (Length((Sender as TEdit).Text) = (Sender as TEdit).MaxLength) and
    (Ord(Key) >= 32) and (Ord(Key) <= 127) and
    ((Sender as TEdit).SelLength = 0) then
  begin
    CurPos := (Sender as TEdit).SelStart + 1;
    S := (Sender as TEdit).Text;
    S[CurPos] := Key;
    (Sender as TEdit).Text := S;
    (Sender as TEdit).SelStart := CurPos;
    Key := Chr(0);  //Prevent beep
  end;

end;

procedure TMainForm.Far7Click(Sender: TObject);
begin
  HowToBuyForm := THowToBuyForm.Create(nil);
  try
    if FarsiRegLangBtn.Visible then
      HowToBuyForm.ChangeLangLabel.OnClick(HowToBuyForm.ChangeLangLabel);
    HowToBuyForm.ShowModal;
  finally
    HowToBuyForm.Free;
  end;
end;

procedure TMainForm.Label2Click(Sender: TObject);
begin
  Procs.OpenUrlInDefaultBrowser(SOFTWARE_REGISTRATION_PAGE)
end;

procedure TMainForm.Far5Click(Sender: TObject);
var
  RegResult: Boolean;
begin
  RegResult := False;
  case (Random(6) + 1) {The number is in the range 1 to 6} of
    1: RegResult := License.RegisterSoftware(ACWord1.Text + ACWord2.Text + ACWord3.Text + ACWord4.Text);
    2: RegResult := License2.RegisterSoftware(ACWord1.Text + ACWord2.Text + ACWord3.Text + ACWord4.Text);
    3: RegResult := License3.RegisterSoftware(ACWord1.Text + ACWord2.Text + ACWord3.Text + ACWord4.Text);
    4: RegResult := License4.RegisterSoftware(ACWord1.Text + ACWord2.Text + ACWord3.Text + ACWord4.Text);
    5: RegResult := License5.RegisterSoftware(ACWord1.Text + ACWord2.Text + ACWord3.Text + ACWord4.Text);
    6: RegResult := License6.RegisterSoftware(ACWord1.Text + ACWord2.Text + ACWord3.Text + ACWord4.Text);
  end;

  if RegResult then
  begin
    LicenseWasValid := License6.CheckLicenseStatus;

    MessageDlgBiDiSoundTop('Thank you for the registration.' + Chr(13) +
      'Please restart the application to apply license information.', mtCustom,
      [MBok], 0, bdLeftToRight);
    Halt;

  {
    RegistrationPanel.Visible := False;
    ApplyLicenseStatus(True);}
  end;
end;

procedure TMainForm.Far6Click(Sender: TObject);
begin
  Halt;
end;

procedure TMainForm.ApplyLicenseStatus(Enabled: Boolean);
begin
  if (LicenseWasValid and not Enabled) or
     (not LicenseWasValid and Enabled) then
    Halt;

  LCDPanel.Enabled := Enabled;
  FullScreenMenuItem.Enabled := Enabled;
  RefreshCharacterLibraryMenuItem.Enabled := Enabled;
  LCDPicturePreviewMenuItem.Enabled := Enabled;
  GeneralToolbar.Enabled := Enabled;
  DesignToolBar.Enabled := Enabled;
  ImportExportToolBar.Enabled := Enabled;
  FileMenuItem.Enabled := Enabled;
  EditMenuItem.Enabled := Enabled;
  ViewMenuItem.Enabled := Enabled;
  LCDMenuItem.Enabled := Enabled;
  ToolsMenuItem.Enabled := Enabled;
  CharacterLibraryPanel.Enabled := Enabled;
  LCDGrid.Enabled := Enabled;
  TextToLCDPanel.Enabled := Enabled;
  if Assigned(CodeToLCDForm) then
    CodeToLCDForm.Enabled := Enabled;
  EnableEditShortcuts(Enabled);

  if Enabled then
  begin
    with Constraints do
    begin
      MinWidth := MainFormActualSizeConstraints.Left;
      MaxWidth := MainFormActualSizeConstraints.Right;
      MinHeight := MainFormActualSizeConstraints.Top;
      MaxHeight := MainFormActualSizeConstraints.Bottom;
    end;
    MainForm.BorderIcons := [biSystemMenu, biMinimize, biMaximize];
    EnglishBtnBorderImage.Hide;
    FarsiBtnBorderImage.Hide;

    if not FullScreenForm.Visible and StandardSystemMenu1.OnlyDelphiMenu then
      StandardSystemMenu1.OnlyDelphiMenu := False;
  end
  else
  begin
    with Constraints do
    begin
      MinWidth := Width;
      MaxWidth := MinWidth;
      MinHeight := Height;
      MaxHeight := MinHeight;
    end;
    MainForm.BorderIcons := [biSystemMenu, biMinimize];
    EnglishBtnBorderImage.Visible := EnglishRegLangBtn.Visible;
    FarsiBtnBorderImage.Visible := FarsiRegLangBtn.Visible;

    StandardSystemMenu1.OnlyDelphiMenu := True;
  end;

  RegistrationPanel.Visible := not Enabled;

  if not RegistrationPanel.Visible and
     HaltIfInvalidState and
     not Enabled {Enabled is a parameter} then
    Halt;
end;

procedure TMainForm.FileMenuItemClick(Sender: TObject);
begin
  //************************************
  ApplyLicenseStatus(License3.CheckLicenseStatus);
  if not License3.CheckLicenseStatus then
    Exit;
  //************************************
end;

procedure TMainForm.ViewMenuItemClick(Sender: TObject);
begin
  //************************************
  ApplyLicenseStatus(License4.CheckLicenseStatus);
  if not License4.CheckLicenseStatus then
    Exit;
  //************************************
end;

procedure TMainForm.ToolsMenuItemClick(Sender: TObject);
begin
  //************************************
  ApplyLicenseStatus(License5.CheckLicenseStatus);
  if not License5.CheckLicenseStatus then
    Exit;
  //************************************
end;

procedure TMainForm.HelpMenuItemClick(Sender: TObject);
begin
  //************************************
  ApplyLicenseStatus(License6.CheckLicenseStatus);
  if not License6.CheckLicenseStatus then
    Exit;
  //************************************
end;

procedure TMainForm.LCDGridClick(Sender: TObject);
begin
  //************************************
  if not License.CheckLicenseStatus then
    Halt;
  if not LicenseTimer.Enabled then
    LicenseTimer.Enabled := True;
  //************************************
end;

procedure TMainForm.EnglishRegLangBtnClick(Sender: TObject);
begin
  RegistrationPanel.BiDiMode := bdLeftToRight;
  EnglishRegLangBtn.Hide;
  EnglishBtnBorderImage.Hide;
  FarsiRegLangBtn.Show;
  FarsiBtnBorderImage.Show;

  Far1.Hide;
  Far2.Hide;
  Far3.Hide;
  Far4.Hide;
  Far5.Hide;
  Far6.Hide;
  Far7.Hide;
  Far8.Hide;

  En1.BiDiMode := bdLeftToRight;
  En1.Show;
  En2.BiDiMode := bdLeftToRight;
  En2.Show;
  En3.BiDiMode := bdLeftToRight;
  En3.Show;
  En4.BiDiMode := bdLeftToRight;
  En4.Show;
  En5.BiDiMode := bdLeftToRight;
  En5.Show;
  En6.BiDiMode := bdLeftToRight;
  En6.Show;
  En7.BiDiMode := bdLeftToRight;
  En7.Show;
  En8.BiDiMode := bdLeftToRight;
  En8.Show;
end;

procedure TMainForm.FarsiRegLangBtnClick(Sender: TObject);
begin
  if ActiveLanguage.RightToLeft and ActiveLanguage.FlipControls and ActiveLanguageOptions.ApplyRTLToAppearance then
    RegistrationPanel.BiDiMode := bdRightToLeft;
  FarsiRegLangBtn.Hide;
  FarsiBtnBorderImage.Hide;
  EnglishRegLangBtn.Show;
  EnglishBtnBorderImage.Show;

  En1.Hide;
  En2.Hide;
  En3.Hide;
  En4.Hide;
  En5.Hide;
  En6.Hide;
  En7.Hide;
  En8.Hide;

  Far1.Show;
  Far2.Show;
  Far3.Show;
  Far4.Show;
  Far5.Show;
  Far6.Show;
  Far7.Show;
  Far8.Show;
end;

procedure TMainForm.CheckAllSubNodes(Node: TTreeNode; Checked: Boolean);
var
  tmp: TTreeNode;
  State: Integer;
begin
  State := IfThen(Checked, cFlatChecked, cFlatUnCheck);

  if Node.getFirstChild = nil then
    Node.StateIndex := State
  else
  begin
    Node.StateIndex := State;

    tmp := Node.getFirstChild;
    while Assigned(tmp) do
    begin
      CheckAllSubNodes(tmp, Checked);
      tmp := tmp.getNextSibling;
    end;
  end;
end;

procedure TMainForm.UpdateParentNodes(TreeNodes: TTreeNodes);

  function AllSubNodesChecked(Node: TTreeNode): Integer;
  //Output: -1: No subnode is checked
  //         0: Some subnodes are checked
  //         1: All subnodes are checked
  var
    tmp: TTreeNode;
    SomeChecked, AllChecked: Boolean;
  begin
    tmp := Node.getFirstChild;
    if not Assigned(tmp) then
    begin
      //Node is only a subnode and has no subnodes.
      if Node.StateIndex = cFlatChecked then
        Result := 1
      else
        Result := -1;
      Exit;
    end;

    SomeChecked := False;
    AllChecked := True;

    while Assigned(tmp) do
    begin
      if not(tmp.getFirstChild = nil) then
      begin
        case AllSubNodesChecked(tmp) of
          -1: tmp.StateIndex := cFlatUnCheck;
           0: tmp.StateIndex := cFlatSemiChecked;
           1: tmp.StateIndex := cFlatChecked;
        end;
      end;

      AllChecked := AllChecked and (tmp.StateIndex = cFlatChecked);
      SomeChecked := SomeChecked or ( (tmp.StateIndex = cFlatChecked) or (tmp.StateIndex = cFlatSemiChecked) );

      tmp := tmp.getNextSibling;
    end;

    Result := IfThen(AllChecked, 1, IfThen(SomeChecked, 0, -1));
  end;

var
  tmp: TTreeNode;
begin
  tmp := TreeNodes.GetFirstNode;

  while Assigned(tmp) do
  begin
    case AllSubNodesChecked(tmp) of
      -1: tmp.StateIndex := cFlatUnCheck;  //No subnode
       0: tmp.StateIndex := cFlatSemiChecked;  //Some subnodes
       1: tmp.StateIndex := cFlatChecked;  //All subnodes
    end;
    tmp := tmp.getNextSibling;
  end;
end;

procedure TMainForm.ApplicationEvents1ShortCut(var Msg: TWMKey;
  var Handled: Boolean);
var
  ShiftState: TShiftState;
begin
  ShiftState := KeyDataToShiftState(Msg.KeyData);
  Handled := False;
  //----------------------------------------
  //Ctrl+A shortcut
  if (ShiftState = [ssCtrl]) and (Msg.CharCode = Ord('A')) then
  begin
    //Implement Ctrl+A shortcut on the ImportGraphicsForm form  to select all the cells of the PreviewGrid
    if ImportGraphicsForm.Active and ImportGraphicsForm.PreviewGrid.SelectionRectangle then
    begin
      ImportGraphicsForm.PreviewGrid.SelectRows(0, ImportGraphicsForm.PreviewGrid.RowCount - 1);
      Handled := True;
    end;
  end;
  //----------------------------------------

  //----------------------------------------
  //Ctrl+Insert(Copy), Shift+Del(Cut), Shift+Insert(Paste)
  if (ShiftState = [ssCtrl]) and (Msg.CharCode = VK_INSERT) then
  begin
    CopyMenuItem.Click;
    Handled := True;
  end
  else if (ShiftState = [ssShift]) and (Msg.CharCode = VK_DELETE) then
  begin
    CutMenuItem.Click;
    Handled := True;
  end
  else if (ShiftState = [ssShift]) and (Msg.CharCode = VK_INSERT) then
  begin
    PasteToolBtn.Click;  //Don't use PasteMenuItem.Click because it may be disabled but the toolbar button is always in an up-to-date state
    Handled := True;
  end;
  //----------------------------------------

end;

procedure TMainForm.PrepareRegistrationPanelView;
var
  GIFImage: TGIFImage;
  rs: TResourceStream;
const
  GIFResourceName ='BUTTON_BORDER_GIF';
begin
  //There is no need to clear the Picture of these images controls, because
  //  after registration, these images will not load in the next application runs.
  try
    //Load GIF Image from the resources
    GIFImage := TGIFImage.Create;
    rs := TResourceStream.Create(HInstance, GIFResourceName, 'GIF');
    GIFImage.LoadFromStream(rs);
    EnglishBtnBorderImage.Picture.Graphic := GIFImage;
    FarsiBtnBorderImage.Picture.Graphic := GIFImage;
    rs.Free;
    GIFImage.Free;
  except
  end;
end;

procedure TMainForm.ACWord1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

  procedure FocusNext;
  begin
    ISPrevSNEdit := False;
    SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;

  procedure FocusPrev;
  begin
    ISPrevSNEdit := True;
    SendMessage(Handle, WM_NEXTDLGCTL, 1, 0);
  end;

begin
  if ( (Key = VK_LEFT) or (Key = VK_UP) ) and ((Sender as TEdit).SelStart = 0) and
    (Sender <> ACWord1) then
    FocusPrev
  else if ( (Key = VK_RIGHT) or (Key = VK_DOWN) ) and ((Sender as TEdit).SelStart = Length((Sender as TEdit).Text)) and
    (Sender <> ACWord4) then
    FocusNext
  else if ( ((Sender as TEdit).SelStart = ((Sender as TEdit).MaxLength - 1) ) or  ((Sender as TEdit).SelStart = (Sender as TEdit).MaxLength) ) and
    (Sender <> ACWord4) and
    ( Procs.IsVKCodeALphaNumberic(Key) or (Key = VK_RIGHT) ) then
    FocusNext
  else if (Key = VK_BACK) and ((Sender as TEdit).SelStart = 0) and
    (Sender <> ACWord1) then
    FocusPrev;
end;

procedure TMainForm.ACWord1Enter(Sender: TObject);
begin
  (Sender as TEdit).SelLength := 0;
  if ISPrevSNEdit then
    (Sender as TEdit).SelStart := Length((Sender as TEdit).Text);
end;

procedure TMainForm.UpdateRealTimeRegistrySettings(
  RegistrySettingsKind: TRealTimeRegistrySettingsKind);

  function WriteLCDOptions: Boolean;
  var
    Reg: TRegistry;
  begin
    Result := False;
    Reg := TRegistry.Create;
    try
      Reg.RootKey := HKEY_CURRENT_USER;

      //LCDOptions holds the current settings of the LCD, but in the
      // WriteProgramSettings procedure, it is copied into the GlobalOptions
      // variable before storing it in the registry.
      with LCDOptions do
        if Reg.OpenKey(REG_USER_SETTINGS_PATH + '\Design', False) then
        begin
          /////////////////////////////
          Reg.WriteInteger('Filled Cell Color', LCDFilledColor);
          Reg.WriteInteger('Cleared Cell Color', LCDClearedColor);
          Reg.WriteBool('Use Solid Colors', LCDUseSolidColors);
          Reg.WriteInteger('Grid Color', LCDGridColor);
          Reg.WriteBool('Cursor Rectangle', ShowCursorRectangle);
          Reg.WriteInteger('Cursor Color', LCDCursorColor);
          /////////////////////////////
          Reg.CloseKey;
          Result := True;
        end;

    finally
      Reg.Free;
    end;
  end;

  function WriteLCDGlobalOptions: Boolean;
  var
    Reg: TRegistry;
  begin
    Result := False;
    Reg := TRegistry.Create;
    try
      Reg.RootKey := HKEY_CURRENT_USER;

      with GlobalOptions do
        if Reg.OpenKey(REG_USER_SETTINGS_PATH + '\Design', False) then
        begin
          /////////////////////////////
          Reg.WriteInteger('Zoom', GlobalOptions.ZoomTrackBarValue);
          Reg.WriteBool('Gridlines', GlobalOptions.ShowLCDGridLines);
          Reg.WriteInteger('Cell Space', GlobalOptions.LCDCellSpace);
          Reg.WriteInteger('Design Default Width', GlobalOptions.NewLCDDefaultWidth);
          Reg.WriteInteger('Design Default Height', GlobalOptions.NewLCDDefaultHeight);
          /////////////////////////////
          Reg.CloseKey;
          Result := True;
        end;

    finally
      Reg.Free;
    end;
  end;

  function WriteCharLibOptions: Boolean;
  var
    Reg: TRegistry;
  begin
    Result := False;
    Reg := TRegistry.Create;
    try
      Reg.RootKey := HKEY_CURRENT_USER;

      with GlobalOptions do
        if Reg.OpenKey(REG_USER_SETTINGS_PATH + '\Panes\Character Library', False) then
        begin
          /////////////////////////////
          Reg.WriteBool('Character Library', CharacterLibraryPanelVisible);
          Reg.WriteInteger('Height', CharLibPanelHeight);
          Reg.WriteInteger('TopPanelHeight', CharLibTopPanelHeight);
          Reg.WriteInteger('Width', CharacterLibraryPanelWidth);
          Reg.WriteInteger('CharWidth', CharacterLibraryPanelCharactersPanelWidth);
          Reg.WriteInteger('Place', Integer(CharLibPanelPlace));
          Reg.WriteInteger('ToolTop', CharLibToolPanelTop);
          Reg.WriteBool('Collapsed', CharLibPanelCollapsed);

          Reg.WriteInteger('Zoom', PreviewZoomTrackBarValue);
          Reg.WriteBool('Gridlines', ShowCharPreviewLCDGridLines);
          /////////////////////////////
          Reg.CloseKey;
          Result := True;
        end

    finally
      Reg.Free;
    end;
  end;

  function WriteLCDAnimatorSettings: Boolean;
  var
    Reg: TRegistry;
  begin
    Result := False;
    Reg := TRegistry.Create;
    try
      Reg.RootKey := HKEY_CURRENT_USER;

      with GlobalOptions.LCDAnimatorSettings do
        if Reg.OpenKey(REG_USER_SETTINGS_PATH + '\Design Animator', False) then
        begin
          /////////////////////////////
          Reg.WriteInteger('Zoom', LCDZoomValue);
          Reg.WriteBool('Gridlines', LCDGridVisible);
          Reg.WriteInteger('Animation Direction', Integer(AnimDirection));
          Reg.WriteInteger('Animation Speed', AnimSpeed);
          Reg.WriteBool('Advanced Options', AdvancedOptionsVisible);
          Reg.WriteBool('Output Frames to File', OutputCheckValue);
          Reg.WriteBool('Run External Program', RunExternalCheckValue);
          Reg.WriteString('Output File', OutFile);
          Reg.WriteString('External Program', ExternalProgram);
          Reg.WriteInteger('Left', FormLeft);
          Reg.WriteInteger('Top', FormTop);
          Reg.WriteInteger('Width', FormWidth);
          Reg.WriteInteger('Height', FormHeight);
          Reg.WriteInteger('State', Integer(FormState));
          /////////////////////////////
          Reg.CloseKey;
          Result := True;
        end;

    finally
      Reg.Free;
    end;
  end;

  function WriteLibraryPath: Boolean;
  var
    Reg: TRegistry;
  begin
    Result := False;
    Reg := TRegistry.Create;
    try
      Reg.RootKey := HKEY_CURRENT_USER;

      with GlobalOptions do
        if Reg.OpenKey(REG_USER_SETTINGS_PATH, False) then
        begin
          /////////////////////////////
          Reg.WriteString('Library Path', LibraryPath);
          /////////////////////////////
          Reg.CloseKey;
          Result := True;
        end;

    finally
      Reg.Free;
    end;
  end;

  function WriteDefaultHelpLang: Boolean;
  var
    Reg: TRegistry;
  begin
    Result := False;
    Reg := TRegistry.Create;
    try
      Reg.RootKey := HKEY_CURRENT_USER;

      with GlobalOptions do
        if Reg.OpenKey(REG_USER_SETTINGS_PATH, False) then
        begin
          /////////////////////////////
          Reg.WriteString('Default Help Language', DefaultHelpLanguage);
          /////////////////////////////
          Reg.CloseKey;
          Result := True;
        end;

    finally
      Reg.Free;
    end;
  end;

begin
  //Update language settings
  try
    case RegistrySettingsKind of
      rskLCDOptions: WriteLCDOptions;
      rskLCDGlobalOptions: WriteLCDGlobalOptions;
      rskCharLibOptions: WriteCharLibOptions;
      rskLCDAnimator: WriteLCDAnimatorSettings;
      rskLanguage: WriteLanguageSettings(ActiveLanguage, ActiveLanguageOptions, True);
      rskLibraryPath: WriteLibraryPath;
      rskDefaultHelpLang: WriteDefaultHelpLang;
    end;
  except
  end;
end;

function TMainForm.WriteLanguageSettings(
  const LanguageInfo: TLanguageInfo;
  const LanguageOptions: TLanguageOptions; CreateRegKeys: Boolean): Boolean;
var
  Reg: TTntRegistry;
begin
  Result := False;
  Reg := TTntRegistry.Create;
  try

    Reg.RootKey := HKEY_CURRENT_USER;
    with LanguageInfo do
    begin
      if not Reg.OpenKey(REG_USER_SETTINGS_PATH + '\Language', CreateRegKeys) then
        Exit;
      /////////////////////////////
      Reg.WriteString('Name', LanguageName);
      Reg.WriteString('International Name', InternationalName);
      Reg.WriteString('Revision', Revision);
      Reg.WriteString('Author', Author);
      Reg.WriteString('Description', Description);
      Reg.WriteString('File Version', FileVersion);
      Reg.WriteBool('Right-to-Left', RightToLeft);
      Reg.WriteBool('Flip Controls', FlipControls);
      /////////////////////////////
    end;
    Reg.CloseKey;

    with LanguageOptions do
    begin
      if not Reg.OpenKey(REG_USER_SETTINGS_PATH + '\Language\Options', CreateRegKeys) then
        Exit;
      /////////////////////////////
      Reg.WriteBool('RTL Appearance', ApplyRTLToAppearance);
    end;

    Result := True;

  finally
    Reg.Free;
  end;
end;

procedure TMainForm.CharactersListBoxMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);

  procedure PreviewCharacter(
    ItemIndex: Integer; ShowErrorMessage: Boolean);
  var
    NewCharFName: String;
  begin
    NewCharFName := CategoryFolderTreeView.SelectedFolderFullPath + '\' + CharactersListBox.Items.Strings[ItemIndex];
    if NewCharFName = LastPreviewFile then
      Exit;

    LastPreviewFile := NewCharFName;
    try
      ReadCategoryCharacter(CharPreviewGrid, CategoryFolderTreeView.SelectedFolderFullPath, CharactersListBox.Items.Strings[ItemIndex]);
    except
    end;

    CharPreviewGridStatusBar.SimpleText := WideFormat('%s : %d x %d', [CharactersListBox.Items.Strings[ItemIndex], CharPreviewGrid.RowCount - 1, CharPreviewGrid.ColCount]);
//    LCDProcs.CheckLCDScrollBars(CharPreviewGrid);  --> ReadCategortCharacter calls LCDProcs.CheckLCDScrollBars
  end;

var
  ItemAtPosIndex: Integer;
begin
  //Use Mouse.CursorPos instead of X and Y paarmeters because this procedure also is invoked with dummy parameter values
  ItemAtPosIndex := CharactersListBox.ItemAtPos(CharactersListBox.ScreenToClient(Mouse.CursorPos), True);
  if ItemAtPosIndex >= 0 then
  begin
    //CharactersListBox.Cursor := crHandPoint;  --> Don't change the cursor
    PreviewCharacter(ItemAtPosIndex, False);
    RuntimeGlobalOptions.CharPreviewGridCleared := False;
    CharLibPreviewTimer.Enabled := True;
  end
  else
  begin
    //CharactersListBox.Cursor := crDefault;  --> Cursor is not changed
    if CharactersListBox.ItemIndex >= 0 then
    begin
      PreviewCharacter(CharactersListBox.ItemIndex, False);
      RuntimeGlobalOptions.CharPreviewGridCleared := False;
    end
    else if not RuntimeGlobalOptions.CharPreviewGridCleared then
    begin
      RuntimeGlobalOptions.CharPreviewGridCleared := True;
      LCDProcs.ClearLCD(CharPreviewGrid, LCDOptions.LCDClearedColor);
    end;
  end;
end;

procedure TMainForm.CharLibPreviewTimerTimer(Sender: TObject);
var
  ItemAtPosIndex: Integer;
begin
  if CharactersListBox.ItemIndex < 0 then
  begin
    CharLibPreviewTimer.Enabled := False;
    Exit;
  end;
  ItemAtPosIndex := CharactersListBox.ItemAtPos(CharactersListBox.ScreenToClient(Mouse.CursorPos), True);
  if ItemAtPosIndex < 0 then
  begin
    CharLibPreviewTimer.Enabled := False;
    if Assigned(CharactersListBox.OnCLick) then
      CharactersListBox.OnClick(CharactersListBox);
  end
  else if CharLibCharListWheelEvent then
  begin
    CharactersListBox.OnMouseMove(CharactersListBox, [], 0, 0);  //Dummy parameters
    CharLibCharListWheelEvent := False;
  end;
end;

procedure TMainForm.ApplyAfterShowConfigTimerTimer(Sender: TObject);
begin
  if fsShowing in Self.FormState then
    Exit;
  ApplyAfterShowConfigTimer.Enabled := False;
  ApplyStartupAfterShowConfig;
  if License2.CheckLicenseStatus and RuntimeGlobalOptions.FullScreenModeRequested then
  begin
    RuntimeGlobalOptions.FullScreenModeRequested := False;
    FullScreenMenuItem.Click;
  end;
end;

procedure TMainForm.SetupApplicationCursors;
var
  Cur: HICON;
begin
  Cur := LoadCursor(0, IDC_HAND);
  if Cur <> 0 then
    Screen.Cursors[crHandPoint] := Cur;
end;

procedure TMainForm.RUFLAdd(const FullFileName: String);
begin
  if Length(Trim(FullFileName)) = 0 then
  begin
    RUFLBuildMenuItems;
    Exit;
  end;

  if GlobalOptions.RUFLCount <= 0 then
  begin
    RUFL.Clear;
    Exit;
  end;
  
  if RUFL.IndexOf(FullFileName) >= 0 then
    //The item already is in RUFL. Bring it to the top of the list.
    RUFL.Move(RUFL.IndexOf(FullFileName), 0)
  else
  begin
    //Insert the new item at the top of the RUFL.
    RUFL.InsertObject(0, FullFileName, nil);
    if RUFL.Count > GlobalOptions.RUFLCount then
      RUFLRemove(RUFL.Strings[RUFL.Count - 1]);
  end;
  RUFLBuildMenuItems;
end;

procedure TMainForm.RUFLRemove(const FullFileName: String; RebuildMenuItems: Boolean);
begin
  if Length(Trim(FullFileName)) = 0 then
  begin
    RUFLBuildMenuItems;
    Exit;
  end;

  if RUFL.IndexOf(FullFileName) >= 0 then
  begin
    try
      DisableAllMenuChanges(True);
      //Remove menu item if assigned
      if Assigned(RUFL.Objects[RUFL.IndexOf(FullFileName)]) and
        (RUFL.Objects[RUFL.IndexOf(FullFileName)] is TTntMenuItem) then
        (RUFL.Objects[RUFL.IndexOf(FullFileName)] as TTntMenuItem).Free;
    finally
      DisableAllMenuChanges(False);
    end;
    RUFL.Delete(RUFL.IndexOf(FullFileName));
    if RebuildMenuItems then
      RUFLBuildMenuItems;
  end;
end;

procedure TMainForm.RUFLReadEntries;

  function IsRUFLEntry(const EntryName: String): Boolean;
  var
    Index: Integer;
  begin
    Result := Procs.StrToInteger(EntryName, Index) and
      (Index >= 0);
  end;

var
  Reg: TRegistry;
  FList: TStringList;
  S: String;
  i: Integer;
begin
  Reg := TRegistry.Create;
  FList := TStringList.Create;
  try
    RUFL.Clear;
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKeyReadOnly(REG_USER_SETTINGS_PATH + RUFLRegPath) then
    begin
      Reg.GetValueNames(FList);
      FList.Sort;  //Sort the list so that the list is ordered correctly.
      for i := 0 to FList.Count - 1 do
        if IsRUFLEntry(FList.Strings[i]) and
           (Reg.GetDataType(FList.Strings[i]) = rdString) then
        begin
          S := Reg.ReadString(FList.Strings[i]);
          //Blank and duplicated items are not allowed
          if (Length(Trim(S)) > 0) and
             (RUFL.IndexOf(S) < 0) then
            RUFL.Append(S);
        end;
    end;
    FList.Free;
    Reg.Free;
  except
    FList.Free;
    Reg.Free;
  end;
end;

procedure TMainForm.RUFLWriteEntries;
var
  Reg: TRegistry;
  FList: TStringList;
  i: Integer;
begin
  Reg := TRegistry.Create;
  FList := TStringList.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(REG_USER_SETTINGS_PATH + RUFLRegPath, True) then
    begin
      Reg.GetValueNames(FList);
      for i := 0 to FList.Count - 1 do
        Reg.DeleteValue(FList.Strings[i]);
      if GlobalOptions.RUFLCount > 0 then
        for i := 0 to RUFL.Count - 1 do
          Reg.WriteString(IntToStr(i), RUFL.Strings[i]);
    end;
    FList.Free;
    Reg.Free;
  except
    FList.Free;
    Reg.Free;
  end;
end;

procedure TMainForm.WorkingOnNewDesignStarted(const OldFullFName,
  NewFullFName: String);
begin
  //LCD history
  LCDHistory.ClearHistory;
  AddNewHistoryState;

  if OldFullFName <> NewFullFName then
  begin
    RUFLAdd(RUFLLastOpenedFile);
    RUFLLastOpenedFile := NewFullFName;
  end;
  if RUFL.IndexOf(NewFullFName) >= 0 then
    RUFLRemove(NewFullFName);
end;

procedure TMainForm.DisableAllMenuChanges(Disabled: Boolean);

  procedure DisableAllItems(MenuItem: TTntMenuItem; Disabled: Boolean);
  var
    i: Integer;
  begin
    (MenuItem as TTntMenuItem).IgnoreAllMenuChanges := Disabled;
    for i := 0 to MenuItem.Count - 1 do
      DisableAllItems(MenuItem.Items[i] as TTntMenuItem, Disabled);
  end;

var
  i: Integer;
begin
  for i := 0 to MainMenu.Items.Count - 1 do
    DisableAllItems(MainMenu.Items[i] as TTntMenuItem, Disabled);
end;

procedure TMainForm.RUFLBuildMenuItems;

  function RUFLFNameToMenuItemCaption(const FName: String): String;
  begin
    Result := MinimizeName(FName, Canvas, 300);
  end;

var
  RUFLMenuItem: TTntMenuItem;
  SaveAutoDetect: Boolean;
  i: Integer;
  OldSplitterVisible: Boolean;
  SplitterIndex: Integer;
  SplitterName: String;
begin
  if Assigned(RUFLMenuSplitter) then  //--> Prevent potential software bugs
    OldSplitterVisible := RUFLMenuSplitter.Visible
  else
    OldSplitterVisible := False;
try
  DisableAllMenuChanges(True);
  if RUFL.Count > 0 then
  begin
    for i := 0 to RUFL.Count - 1 do
      if Assigned(RUFL.Objects[i]) and
        (RUFL.Objects[i] is TTntMenuItem) then
      begin
        (RUFL.Objects[i] as TTntMenuItem).Free;  //Delete from the file menu and free its memory
        RUFL.Objects[i] := nil;  //Prevent potential software bugs
      end;
  end;

  if RUFL.Count > GlobalOptions.RUFLCount then
    for i := 1 to RUFL.Count - GlobalOptions.RUFLCount do
      RUFL.Delete(RUFL.Count - 1);

  //Don;t rebuild the menu items if the application is shutting down, because it may cause unpredictable problems
  if asTerminating in ApplicationState then
    Exit;
  ////////////////////

  //TntXPMenu1.Active := False;  -->  Causes critical problems
  //Save current AutoDetect property value
  SaveAutoDetect := TntXPMenu1.AutoDetect;
  TntXPMenu1.AutoDetect := False;

  RUFLMenuSplitter.Visible := RUFL.Count > 0;
  if RUFL.Count > 0 then
  begin
    for i := 0 to RUFL.Count - 1 do
    begin
      RUFLMenuItem := TTntMenuItem.Create(Self);
      RUFLMenuItem.Caption := RUFLFNameToMenuItemCaption(RUFL.Strings[i]);
      RUFLMenuItem.Tag := i;
      RUFLMenuItem.OnClick := RUFLMenuItemClicked;
      FileMenuItem.Insert(FileMenuItem.IndexOf(RUFLMenuSplitter), RUFLMenuItem);
      RUFL.Objects[i] := RUFLMenuItem;
    end;
  end;

  if not Assigned(RUFLMenuSplitter) or
     (RUFLMenuSplitter.Visible <> OldSplitterVisible) then
  begin
    //Recreate the menu item to apply its visible property change, because
    //  all menu changes is disabled
    RUFLMenuItem := TTntMenuItem.Create(Self);
    if Assigned(RUFLMenuSplitter) then
    begin
      RUFLMenuItem.Caption := RUFLMenuSplitter.Caption;
      RUFLMenuItem.Hint := RUFLMenuSplitter.Hint;
      RUFLMenuItem.Visible := RUFLMenuSplitter.Visible;
      SplitterName := RUFLMenuSplitter.Name;;
      SplitterIndex := FileMenuItem.IndexOf(RUFLMenuSplitter);
      RUFLMenuSplitter.Free;
      RUFLMenuSplitter := nil;  //--> Prevent potential software bugs
      RUFLMenuItem.Name := SplitterName;
    end
    else
    begin  //--> Prevent potential software bugs
      RUFLMenuItem.Caption := '-';
      RUFLMenuItem.Visible := True;
      SplitterName := 'RUFLMenuSplitter';
      SplitterIndex := FileMenuItem.IndexOf(ExitMenuItem) - 1;
    end;
    RUFLMenuSplitter := RUFLMenuItem;
    FileMenuItem.Insert(SplitterIndex, RUFLMenuItem);
  end;

  //Restore AutoDetect property value
  TntXPMenu1.AutoDetect := SaveAutoDetect;
  //TntXPMenu1.Active := True;  -->  Causes critical problems
finally
  DisableAllMenuChanges(False);
end;
end;

procedure TMainForm.RUFLMenuItemClicked(Sender: TObject);
var
  DesignFileName: String;
begin
  DesignFileName := RUFL.Strings[(Sender as TTntMenuItem).Tag];
  if FileExists(DesignFileName) then
  begin
    if CanProceedToOpenDesign(DesignFileName) then
      OpenDesignFile(DesignFileName);  //Not necessary to check the function result
  end
  else
  begin
    WideShowMessageSoundTop(WideFormat(Dyn_Texts[30] {'The design file %sdoesn''t exist.'}, [Chr(13) + DesignFileName + Chr(13)]));
    RUFLRemove(DesignFileName);
  end;
end;

function TMainForm.CanProceedToOpenDesign(const DesignFileName: String): Boolean;
var
  Response: Integer;
begin
  Result := False;

  if WorkingDesignChanged then
  begin
    Response:=WideMessageDlgSoundTop(Dyn_Texts[11] {'Do you want to save the changes to the current design?'},
        mtWarning,[mbYes,mbNo,mbCancel],0);
    Application.ProcessMessages;

    if Response=mrCancel then
      Exit
    else if Response=mrYes then
    begin
      SaveDesignMenuItem.Click;
      if WorkingDesignChanged then
        Exit;
    end;
  end;

  if not CheckLCDDesignFileFormat(DesignFileName) then
  begin
    Response := WideMessageDlgSoundTop(WideFormat(Dyn_Texts[12] {'The file %s is either in unknown format or corrupted. %s Do you want to try to open it?'},
                                       [Chr(13) + '''' + DesignFileName + '''' + Chr(13), Chr(13)]),
                                       mtWarning, [mbNo, mbYes], 0);
    Application.ProcessMessages;

    if Response = mrNo then
      Exit;
  end;

  Result := True;
end;

function TMainForm.OpenDesignFile(const DesignFileName: String): Boolean;
var
  OldWorkingDesignFileName: String;
begin
  OldWorkingDesignFileName := WorkingDesignFileName;

  Result := False;
  try
    LoadLCDDesignFromFile(LCDGrid, DesignFileName);
  except
    WideMessageDlgSoundTop(WideFormat(Dyn_Texts[3] {'Unable to open the design file ''%s''.'}, [DesignFileName]), mtError, [mbOK], 0);
    Exit;
  end;
  Result := True;

  InitiateNewWorkingDesign(True);
  WorkingDesignFileName := DesignFileName;
  WorkingDesignIsReadOnly := Procs.IsReadOnlyFile(WorkingDesignFileName);
  UntitledDesignFile := False;
  UpdateMainFormCaption;
  OnLCDChanged;
  WorkingOnNewDesignStarted(OldWorkingDesignFileName, WorkingDesignFileName);
end;

procedure TMainForm.PrintLCD(ShowPrintDialog: Boolean);
var
  Row,Col:Integer;
  PrintPreviewGrid: TAdvStringGrid;
begin
  if ShowPrintDialog then
    if not PrinterSetupDialog1.Execute then
      Exit;

  PrintPreviewGrid := TAdvStringGrid.Create(nil);
  PrintPreviewGrid.Visible := False;
  PrintPreviewGrid.Parent := Self;
  try
    PrintPreviewGrid.ColCount:=LCDGrid.ColCount;
    PrintPreviewGrid.RowCount:=LCDGrid.RowCount-1;
    for Row:=0 to PrintPreviewGrid.RowCount-1 do
      for Col:=0 to PrintPreviewGrid.ColCount-1 do
      begin
        PrintPreviewGrid.Colors[Col,Row]:=LCDGrid.Colors[Col,Row];
        PrintPreviewGrid.ColorsTo[Col,Row]:=LCDGrid.ColorsTo[Col,Row];  // --> This has no effect in the print output (in this version)
      end;

    Application.NormalizeAllTopMosts;
    MainStatusBar.SimplePanel := True;
    MainStatusBar.SimpleText := Dyn_Texts[57];  {'Printing...'}
    Application.ProcessMessages;
    PrintGrid(PrintPreviewGrid, GetDefaultFileName);
    PrintPreviewGrid.Free;
    Application.RestoreTopMosts;
    MainStatusBar.SimplePanel := False;
  except
    MainStatusBar.SimplePanel := False;
    PrintPreviewGrid.Free;
    Application.RestoreTopMosts;
    WideMessageDlgSoundTop(Dyn_Texts[56] {'Occured an error during the print operation. Please try again or use another printer.'}, mtError, [mbOK], 0);
  end;
end;

procedure TMainForm.UpdateCharLibPathLabel;
begin
  CharLibPathLabel.Caption := MinimizeName(CategoryFolderTreeView.SelectedFolderFullPath, CharLibPathLabel.Canvas, CharLibPathLabel.Width);
  CharLibPathLabel.Hint := CategoryFolderTreeView.SelectedFolderFullPath;
end;

procedure TMainForm.CharLibPathPanelResize(Sender: TObject);
begin
  UpdateCharLibPathLabel;
end;

procedure TMainForm.WriteInstallDirRegistryEntry(WriteValues: Boolean);
const
  FirstRunRegEntry = 'FirstRun';
  InstallDirRegEntry = 'InstallDir';
var
  Reg: TRegistry;
  NewUser, FirstRun: Boolean;
begin
  if not License3.CheckLicenseStatus then
    Exit;

  NewUser := False;
  FirstRun := False;

  Reg := TRegistry.Create;//(KEY_READ);
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    NewUser := not Reg.KeyExists(REG_USER_SETTINGS_PATH + '\Globals');
    if NewUser then
    begin
      //This user is a new user on this computer. Write InstallDir.
      NewUser := True;
//      Reg.Access := KEY_WRITE;
      if WriteValues then
      begin
        Reg.OpenKey('\' + REG_USER_SETTINGS_PATH + '\Globals', True);  //Absolute registry path
        Reg.WriteString(InstallDirRegEntry, ApplicationPath);
      end;
      Reg.CloseKey;
    end
    else
    begin

      if Reg.OpenKeyReadOnly(REG_USER_SETTINGS_PATH + '\Globals') then
      begin

        if Reg.ValueExists(FirstRunRegEntry) then
        begin
        //FirstRun exists. Check it and write InstallDir if FirstRun is True.
          if Reg.ReadBool(FirstRunRegEntry) then
          begin
            Reg.CloseKey;
            Reg.Access := KEY_WRITE;
            if Reg.OpenKey(REG_USER_SETTINGS_PATH + '\Globals', False) then
            begin
              if WriteValues then
              begin
                Reg.WriteBool(FirstRunRegEntry, False);
                Reg.WriteString(InstallDirRegEntry, ApplicationPath);
              end;
              Reg.CloseKey;
              FirstRun := True;
            end;
          end;
        end

        else if not Reg.ValueExists(InstallDirRegEntry) then
        begin
          //Nor FirstRun neither InstallDir exists. Write InstallDir.
          Reg.CloseKey;
          Reg.Access := KEY_WRITE;
          if Reg.OpenKey(REG_USER_SETTINGS_PATH + '\Globals', False) then
          begin
            if WriteValues then
              Reg.WriteString(InstallDirRegEntry, ApplicationPath);
            Reg.CloseKey;
          end;
        end

        else
          Reg.CloseKey;

      end;
    end;

    Reg.Free;

  except
    Reg.Free;
  end;

  RuntimeGlobalOptions.FirstUserRun := NewUser or FirstRun;
end;

procedure TMainForm.ApplyStartupAfterShowConfig;

  procedure CorrectRTLBug(Control: TControl);
  var
    Savebdm: TBiDiMode;
  begin
    if Control.BiDiMode <> bdLeftToRight then
    begin
      Savebdm := Control.BiDiMode;
      Control.BiDiMode := bdLeftToRight;
      Control.BiDiMode := Savebdm;
    end;
  end;

begin
  CharacterLibraryTopPanel.Height := GlobalOptions.CharLibTopPanelHeight;

  if RuntimeGlobalOptions.FirstUserRun then
  begin
    RuntimeGlobalOptions.FirstUserRun := False;
    if not Procs.RegKeyExists(REG_USER_SETTINGS_PATH + '\Language', HKEY_CURRENT_USER) then
      //This is the first run for this user and no language settings is available
      //Select langugae
    begin
      LanguageMenuItem.Click;
      if not Procs.RegKeyExists(REG_TOOLBAR_SETTINGS_PATH) then
        RestoreDefaultToolbarPositions;
    end;
  end;

  //Correct RTL appearance bug
  if ActiveLanguage.RightToLeft and ActiveLanguageOptions.ApplyRTLToAppearance then
  begin
    CorrectRTLBug(AutoextendLCDWidthCheck);
    CorrectRTLBug(AutoextendLCDHeightCheck);
    CorrectRTLBug(LCDGridLinesCheck);
    CorrectRTLBug(CharPreviewGridLinesCheck);
  end;

  TopControlBar.AutoSize := False;  //Force the Control Bar to resize itself
  TopControlBar.AutoSize := True;
end;

procedure TMainForm.LCDToolPanelResize(Sender: TObject);
begin
  LCDToolPanel.Invalidate;  //Correct painting bug of LCDPicturePreviewToolBtn speedbutton
end;

function TMainForm.FitSelectionToLCD(ALCDGrid: TAdvStringGrid;
  const Selection: TGridRect): TGridRect;

  procedure ResetGridRect(var GridRect: TGridRect);
  begin
    with GridRect do
    begin
      Left := 0;
      Top := 0;
      Right := 0;
      Bottom := 0;
    end;
  end;

begin
  Result := Selection;
  if Result.Left >= ALCDGrid.ColCount then
    ResetGridRect(Result);
  if Result.Top >= (ALCDGrid.RowCount - 1) then  //Because of TAdvStringGrid
    ResetGridRect(Result);
  if Result.Right >= ALCDGrid.ColCount then
    Result.Right := ALCDGrid.ColCount - 1;
  if Result.Bottom >= (ALCDGrid.RowCount - 1) then
    Result.Bottom := ALCDGrid.RowCount - 2;
end;

procedure TMainForm.CharLibPanelPlaceChanged;
begin
  UpdateRealTimeRegistrySettings(rskCharLibOptions);
end;

procedure TMainForm.CharactersListBoxMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
  CharLibCharListWheelEvent := True;  //To be used in CharLibPreviewTimer OnTimer event 
end;

procedure TMainForm.CharPreviewPanelResize(Sender: TObject);
begin
  LCDProcs.CheckLCDScrollBars(CharPreviewGrid);
end;

procedure TMainForm.DoLCDClearCell(ForceClear: Boolean);
var
  Row, Col: Integer;
begin
  if ForceClear or ( OperationOnLCDAllowed and not(
                     (Screen.ActiveControl is TCustomEdit) or
                     (Screen.ActiveControl is TCustomCombo) or
                     (Screen.ActiveControl is TCustomListControl) ) ) then
  begin
    for Row:=LCDGrid.Selection.Top to LCDGrid.Selection.Bottom do
      for Col:=LCDGrid.Selection.Left to LCDGrid.Selection.Right do
        SetCellColor(LCDGrid,Col,Row,False);
    OnLCDChanged;
  end
  else
  begin
    //Treat as the Delete key is pressed in the active control
    Screen.ActiveControl.Perform(WM_KEYDOWN, VK_DELETE, 0);
    Screen.ActiveControl.Perform(WM_KEYUP, VK_DELETE, 0);
  end;
end;

procedure TMainForm.AddToTextToLCDHisory(const AText: WideString);
begin
  if InputText.Items.IndexOf(AText) < 0 then
  begin
    InputText.Items.Insert(0, AText);
    while (InputText.Items.Count > GlobalOptions.TextToLCDMaxTextHistory) and
          (InputText.Items.Count > 0) do
      InputText.Items.Delete(InputText.Items.Count - 1);
  end
  else
  begin
    InputText.Items.Move(InputText.Items.IndexOf(AText), 0);
    InputText.Text := AText;  //Reset the Text property to AText, because the text is cleared
  end;
end;

procedure TMainForm.ClearAllToolBtnClick(Sender: TObject);
begin
  ClearAllMenuItem.Click;
end;

procedure TMainForm.LCDGridDblClick(Sender: TObject);
var
  Col, Row: Integer;
  P: TPoint;
begin
  P := LCDGrid.ScreenToClient(Mouse.CursorPos);
  LCDGrid.MouseToCell(P.X, P.Y, Col, Row);
  if (Col < 0) and (Row < 0) then
    LCDOptionsMenuItem.Click;
end;

procedure TMainForm.FullScreenMenuItemClick(Sender: TObject);
begin
  if fsShowing in Self.FormState then
  begin
    RuntimeGlobalOptions.FullScreenModeRequested := True;  //Save the request to switch to full screen mode as soon as possible at ApplyAfterShowConfigTimer OnTimer event
    Exit;
  end;

  try
//    if not Assigned(FullScreenForm) then  //FullScreenForm is set to nil at application startup
//      Application.CreateForm(TFullScreenForm, FullScreenForm);  --> It is autocreated at application startup
    if FullScreenForm.Visible then
      FullScreenForm.SwitchFullScreenModeBtn.Click
    else
    begin
      FullScreenForm.BorderStyle := bsNone;
      FullScreenForm.Show;
    end;
  except  //No exception is allowed to be raised
  end;
end;

procedure TMainForm.OnCaptionChanged;
begin
  //Update the application title
  Application.Title := Caption;
  //Update caption of the full screen view form
  if Assigned(FullScreenForm) then
    FullScreenForm.Caption := Caption;
end;

function TMainForm.OperationOnLCDAllowed: Boolean;
begin
  Result := Active or (Assigned(FullScreenForm) and FullScreenForm.Active) or
            //or floating window of the toolbars ((toolbar).Parent.Focused)
            GeneralToolbar.Parent.Focused or
            DesignToolBar.Parent.Focused or
            ImportExportToolBar.Parent.Focused or
            FullScreenForm.SaveAndEditToolBar.Parent.Focused or
            FullScreenForm.FullScreenDesignToolBar.Parent.Focused or
            FullScreenForm.FullScreenToolBar.Parent.Focused;
end;

procedure TMainForm.ClipboardChanged;
begin
  PasteToolBtn.Enabled := Clipboard.HasFormat(CF_TEXT);
  //PasteMenuItem.Enabled := PasteToolBtn.Enabled;  --> Don;t update it because causes all the menubar to be updated when the BiDiMode in bdRightToLEft on a system running on a MiddleEast locale. This will be updated when the menu item is to be shown.
  if Assigned(FullScreenForm) then
    FullScreenForm.PasteToolBtn.Enabled := PasteToolBtn.Enabled;
end;

procedure TMainForm.RestoreToolBarsState;
begin
  GeneralToolbar.Visible := ToolbarsState[1];  //GeneralToolbar
  DesignToolBar.Visible := ToolbarsState[2];  //DesignToolBar
  ImportExportToolBar.Visible := ToolbarsState[3];  //ImportExportToolBar
end;

procedure TMainForm.SaveToolBarsState(HideToolbars: Boolean);
begin
  ToolbarsState[1] := GeneralToolbar.Visible;  //GeneralToolbar
  ToolbarsState[2] := DesignToolBar.Visible;  //DesignToolBar
  ToolbarsState[3] := ImportExportToolBar.Visible;  //ImportExportToolBar

  if HideToolbars then
  begin
    GeneralToolbar.Visible := False;
    DesignToolBar.Visible := False;
    ImportExportToolBar.Visible := False;
  end;
end;

procedure TMainForm.DesignToolBarMenuItemClick(Sender: TObject);
begin
  DesignToolBar.Visible := (Sender as TMenuItem).Checked;
end;

procedure TMainForm.LCDHeightEditMaskedChange(Sender: TObject);
begin
//  if (Sender as TAdvancedNumEdit).Focused then
//  begin
    ChangeLCDSize(LCDWidthEdit.Value, LCDHeightEdit.Value);
//    LCDGrid.SetFocus;
{  end
  else
  begin
    LCDWidthEdit.Value := LCDOptions.LCDWidth;
    LCDHeightEdit.Value := LCDOptions.LCDHeight;
  end;}
end;

procedure TMainForm.DesignToolBarEndDock(Sender, Target: TObject; X,
  Y: Integer);
begin
  if DesignToolBar.Floating then
    (DesignToolBar.Parent as TForm).BorderIcons := [];
end;

procedure TMainForm.TopControlBarDockOver(Sender: TObject;
  Source: TDragDockObject; X, Y: Integer; State: TDragState;
  var Accept: Boolean);
var
  DragControl: TControl;
begin
  //The control bar's RowSnap property is set to False, because it sometimes
  // don't set the left and top of the docked controls properly when their
  // left and top are set programmatically (sometime it makes empty rows on the
  // control bar especially at first run)

  //AutoDock property of the control bar is set to False, to not allow to
  // aytomatically dock the controls, because sometimes causes an access
  // violation exception when the user drags and drops fast

  DragControl := Source.Control;
  Accept  := (DragControl = GeneralToolbar) or
             (DragControl = DesignToolBar) or
             (DragControl = ImportExportToolBar);

  if Accept then
  begin
    Accept := False;
    DragControl.EndDrag(True);
    PostMessage(TopControlBar.Handle, WM_LBUTTONDOWN, MK_LBUTTON, MakeLong(DragControl.Left,
      DragControl.Top));
    Source.Control.Dock(TopControlBar, Bounds(X, Y, DragControl.Width, DragControl.Height));
  end;
end;

procedure TMainForm.ToggleGeneralToolBarMenuItemClick(Sender: TObject);
begin
  GeneralToolBarMenuItem.Click;
end;

procedure TMainForm.ToggleDesignToolBarMenuItemClick(Sender: TObject);
begin
  DesignToolBarMenuItem.Click;
end;

procedure TMainForm.ToggleImportExportToolBarMenuItemClick(Sender: TObject);
begin
  ImportExportToolBarMenuItem.Click;
end;

procedure TMainForm.CustomizeToolBarPopupMenuPopup(Sender: TObject);
begin
  //also update the toolbar menu items of the main menu because we use the Click
  // method of those menu items to show or hid ethe toolbars
  ToggleGeneralToolBarMenuItem.Checked := GeneralToolbar.Visible;
    GeneralToolBarMenuItem.Checked := GeneralToolbar.Visible;
  ToggleDesignToolBarMenuItem.Checked := DesignToolBar.Visible;
    DesignToolBarMenuItem.Checked := DesignToolBar.Visible;
  ToggleImportExportToolBarMenuItem.Checked := ImportExportToolBar.Visible;
    ImportExportToolBarMenuItem.Checked := ImportExportToolBar.Visible;  
end;

procedure TMainForm.UndoMenuItemClick(Sender: TObject);
begin
  if (Screen.ActiveControl is TCustomEdit) or
     (Screen.ActiveControl is TCustomCombo) then
    SendMessage(Screen.ActiveControl.Handle, WM_UNDO, 0, 0)
  else if OperationOnLCDAllowed then
    UndoLCD;
end;

procedure TMainForm.RedoMenuItemClick(Sender: TObject);
begin
  if (Screen.ActiveControl is TCustomEdit) or
     (Screen.ActiveControl is TCustomCombo) then
    SendMessage(Screen.ActiveControl.Handle, WM_UNDO, 0, 0)
  else if OperationOnLCDAllowed then
    RedoLCD;
end;

procedure TMainForm.UndoToolBtnClick(Sender: TObject);
begin
  UndoLCD;
end;

procedure TMainForm.RedoToolBtnClick(Sender: TObject);
begin
  RedoLCD;
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
  //History menu items
//  UndoMenuItem.Enabled := LCDHistory.CanUndo;  --> Don't update menu items because it causes to redraw all the menu bar when the menu is Right-to-Left. They will be updated only on need.
//  RedoMenuItem.Enabled := LCDHistory.CanRedo;

  //History toolbar buttons
  UndoToolBtn.Enabled := LCDHistory.CanUndo;
    if UndoToolBtn.Enabled then
      UndoToolBtn.Hint := Dyn_Texts[46]
    else
      UndoToolBtn.Hint := Dyn_Texts[47];
  RedoToolBtn.Enabled := LCDHistory.CanRedo;
    if RedoToolBtn.Enabled then
      RedoToolBtn.Hint := Dyn_Texts[48]
    else
      RedoToolBtn.Hint := Dyn_Texts[49];

  //Full Screen form toolbar buttons
  if Assigned(FullScreenForm) then
  begin
    FullScreenForm.UndoToolBtn.Enabled := UndoToolBtn.Enabled;
      FullScreenForm.UndoToolBtn.Hint := UndoToolBtn.Hint;
    FullScreenForm.RedoToolBtn.Enabled := RedoToolBtn.Enabled;
      FullScreenForm.RedoToolBtn.Hint := RedoToolBtn.Hint;
  end;

  //Reflect LCD size changes
  LCDOptions.LCDWidth := LCDGrid.ColCount;
  LCDOptions.LCDHeight := LCDGrid.RowCount - 1;
  LCDWidthEdit.Value := LCDOptions.LCDWidth;
  LCDHeightEdit.Value := LCDOptions.LCDHeight;
end;

procedure TMainForm.UndoLCD;
begin
  LCDHistory.Undo;
  UpdateHistoryMadeChanges;
  UpdateLCDPicturePreview;
end;

procedure TMainForm.RedoLCD;
begin
  LCDHistory.Redo;
  UpdateHistoryMadeChanges;
  UpdateLCDPicturePreview;
end;

procedure TMainForm.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
  if not(E is EInvalidPointer) then  //Hide 'Invalid pointer operation' (EInvalidPointer) exceptions
    Application.ShowException(E);
end;

procedure TMainForm.EditInCharDesignerPopupMenuItemClick(Sender: TObject);
var
  FName, CategoryName, CharacterName: String;
begin
  if CharactersListBox.ItemIndex < 0 then  //--> Prevent potential software bugs
    Exit;
  CategoryName := CategoryFolderTreeView.SelectedFolderFullPath;
  CharacterName := CharactersListBox.Items.Strings[CharactersListBox.ItemIndex];
  FName := GlobalOptions.LibraryPath + '\' + CategoryName + '\' + CharacterName + '.chr';
  if FileExists(ApplicationPath + CD_APPLICATION_EXE_FILE_NAME) then  //--> Prevent potential software bugs
    WinExec(PChar(ApplicationPath + CD_APPLICATION_EXE_FILE_NAME + ' "' + FName + '"'), SW_SHOWNORMAL);
end;

procedure TMainForm.CharactersListPopupMenuPopup(Sender: TObject);
begin
  EditInCharDesignerPopupMenuItem.Enabled :=
      FileExists(ApplicationPath + CD_APPLICATION_EXE_FILE_NAME) and
      (CharactersListBox.ItemIndex >= 0);
end;

function TMainForm.IsRegistryDataInitial: Boolean;
var
  Reg: TRegistry;
  List: TStringList;
  KeyCount: Integer;
begin
  Result := False;
  Reg := TRegistry.Create(KEY_READ or KEY_QUERY_VALUE or KEY_ENUMERATE_SUB_KEYS);
  List := TStringList.Create;
  try
    if Reg.OpenKey(REG_USER_SETTINGS_PATH, False) then
    begin
      Reg.GetKeyNames(List);
      KeyCount := IfThen(List.IndexOf('User-Mapped Chars') >= 0, 1, 0) +
                  IfThen(List.IndexOf('Language') >= 0, 1, 0);
      if List.Count = KeyCount then
        Result := True;
      Reg.CloseKey;
    end;
  finally
    List.Free;
    Reg.Free;
  end;
end;

function TMainForm.InformForReadOnlySelectedFile(
  const FName: String): Boolean;
begin
  //Return value: True: FName is read-only
  //              False: FName is not read-only
  Result := FileExists(FName) and Procs.IsReadOnlyFile(FName);
  if Result then
    WideMessageDlgSoundTop(WideFormat(Dyn_Texts[54] {'The file is read-only:%s'}, [#13 + FName]), mtWarning, [mbOK], 0);
end;

procedure TMainForm.SaveDesignDialogCanClose(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := PromptForFileReplace(SaveDesignDialog.FileName,
                ExtractFileExt(Procs.ExtractFilterString(SaveDesignDialog.Filter,
                SaveDesignDialog.FilterIndex)),
                True);  //Force file extension
end;

function TMainForm.PromptForFileReplace(const FileName,
  Extension: WideString; ForceExtension: Boolean = False): Boolean;
var
  FName: WideString;
begin
  {Returns: True: File does not exist or user confirmed to replace the file
            False: File does not exist or the user cancelled file replacing}
  Result := True;
  FName := Procs.ApplyFileNameExtension(FileName, Extension, ForceExtension);
  if WideFileExists(FName) then
    Result := WideMessageDlgSoundTop(Wideformat(Dyn_Texts[13] {'%s already exists.%sDo you want to replace it?'},
                                     [FName, #13]), mtWarning, [mbYes, mbNo], 0) = mrYes;
end;

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
    else if GeneralEditPopupMenu.PopupComponent is TMemo then
    begin
      GEPastePopupMenuItem.Enabled := GEPastePopupMenuItem.Enabled and not (GeneralEditPopupMenu.PopupComponent as TMemo).ReadOnly;
      GECutPopupMenuItem.Enabled := GECutPopupMenuItem.Enabled and not (GeneralEditPopupMenu.PopupComponent as TMemo).ReadOnly;
    end
    else if GeneralEditPopupMenu.PopupComponent is TTntMemo then
    begin
      GEPastePopupMenuItem.Enabled := GEPastePopupMenuItem.Enabled and not (GeneralEditPopupMenu.PopupComponent as TTntMemo).ReadOnly;
      GECutPopupMenuItem.Enabled := GECutPopupMenuItem.Enabled and not (GeneralEditPopupMenu.PopupComponent as TTntMemo).ReadOnly;
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

function TMainForm.DisplayFileSaveError(const FileName: String): Boolean;
begin
  {Returns: True: User selected to retry the save operation
            False: User cancelled the save operation
  }
  Result := WideMessageDlgSoundTop(WideFormat(Dyn_Texts[55] {'Unable to save to the file:%s'}, [#13 + FileName]), mtError, [mbCancel, mbRetry], 0) = mrRetry;
end;

function TMainForm.GetDefaultFileName: String;
begin
  if UntitledDesignFile then
    Result := UNTITLED_DOCUMENT_NAME + IntToStr(WorkingDesignUntitledCount) + '.LCD'
  else
    Result := ExtractFileName(WorkingDesignFileName);
end;

procedure TMainForm.CategoryFolderTreeViewKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Ord(Key) = VK_ESCAPE then
    Key := Chr(0);
end;

procedure TMainForm.LicenseTimerTimer(Sender: TObject);
begin
  //************************************
  if not License4.CheckLicenseStatus then
    Halt;
  //************************************
end;

procedure TMainForm.RestoreDefaultToolbarPositions;
begin
  GeneralToolbar.Left := 0;
  ImportExportToolBar.Left := 0;
  DesignToolBar.Left := ImportExportToolBar.Left + ImportExportToolBar.Width;
end;

procedure TMainForm.RegistrationPanelMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  ApplyLicenseStatus(License.CheckLicenseStatus);
end;

procedure TMainForm.TntFormResize(Sender: TObject);
begin
  if RegistrationPanel.Visible then
    RegistrationPanel.Left := Trunc(Width / 2 - RegistrationPanel.Width / 2)
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
      ExcludeControls[3] := TMMFolderTreeView;
      ExcludeControls[4] := TControlBar;
      ExcludeControls[5] := TCustomPanel;
      ExcludeControls[6] := TCustomListBox;
      ExcludeControls[7] := TCustomComboBox;
      ExcludeControls[8] := TCustomEdit;  //Also include TCustomMemo (= class(TCustomEdit)
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

procedure TMainForm.FlipSpinButtons(ParentControl: TWinControl;
  SpinEditClass: TComponentClass);
var
  i: Integer;
begin
  for i := 0 to ParentControl.ControlCount - 1 do
  begin
    if ParentControl.Controls[i] is SpinEditClass then
      SpecialProcs.FlipChildrenExcept(TWinControl(ParentControl.Controls[i]), FlipExcludedControlsList, True)
    else if ParentControl.Controls[i] is TWinControl then
      FlipSpinButtons(TWinControl(ParentControl.Controls[i]), SpinEditClass);
  end;
end;

function TMainForm.ReplaceInvalidUnicodeChars(const Str: WideString): WideString;
{
  If you change this function, you must also change the same function (
    ReplaceInvalidUnicodeChars) in the MainUnit of the CharacterDesigner
    project. Also update the ReplaceInvalidUnicodeChars procedure in the
    CharMap.dll project.
}
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

  procedure LoadAndApplyImages;
  //This procedure is not used in this version (Only a sample for next versions)
  begin
    //***This procedure is not declared in all SetLanguage procedures. This will be done completely in the next version.
    //Load images from resources
    //In the case of any error, load default images
    try
      //XXXX.Glyph.LoadFromResourceName(LangInstance, 'RES_NAME');
    except
      //XXXX.Glyph.LoadFromResourceName(HInstance, 'RES_NAME');
    end;
    ////////
  end;

var
  FormVisible: Boolean;
  FlipOperation: Boolean;
  SaveBiDiMode: TBiDiMode;
begin
  //////////////////////////////
  SetDynamicTexts(LangInstance);

  SetMessageDlgCaptions;

  LoadAndApplyImages;  //***This procedure is not declared in all SetLanguage procedures. This will be done completely in next versions.

  FormVisible := Self.Visible;
  try
    if (LangInstance <> 0) or LanguageOptions.LanguageOptionsChanged then
      if FormVisible then
        Self.Visible := False;
  except
  end;

  SetDefaultHelpLanguage(GlobalOptions.DefaultHelpLanguage);

  try  //--> finally show the form

  ApplyLanguageOptions(Self, LanguageInfo, LanguageOptions);
  //Apply menu BiDiMode to align the menu correctly
  //Windows.DrawMenuBar(Self.Handle);  //This methos is not tested and so is not used in this version
  SaveBiDiMode := MainMenu.BiDiMode;  //This method is used internally with VCL and is more reliable
  if MainMenu.BiDiMode = bdLeftToRight then
    MainMenu.BiDiMode := bdRightToLeft
  else
    MainMenu.BiDiMode := bdLeftToRight;
  MainMenu.BiDiMode := SaveBiDiMode;
  //Exceptions

  //Main form caption
  Self.BiDiMode := bdLeftToRight;  //Must be before setting the BiDiMode of toolbars (and also other conrols) to not affect the BiDiMode of toolbars (or maybe other controls)

  //InputText
  if InputTextRTLBtn.Down then
    InputText.BiDiMode := bdRightToLeft
  else
    InputText.BiDiMode := bdLeftToRight;

  //Toolbars and statusbar
  if LanguageInfo.RightToLeft and LanguageInfo.FlipControls and
    LanguageOptions.ApplyRTLToAppearance then
  begin
    GeneralToolbar.BiDiMode := bdRightToLeft;
    DesignToolBar.BiDiMode := bdRightToLeft;
    ImportExportToolBar.BiDiMode := bdRightToLeft;
    MainStatusBar.BiDiMode := bdRightToLeft;
    MainStatusBar.Panels[0].Alignment := taRightJustify;
    MainStatusBar.Panels[1].Alignment := taRightJustify;

    CategoryFolderTreeView.CancelDialog.BiDiMode := bdRightToLeft;
  end
  else
  begin
    GeneralToolbar.BiDiMode := bdLeftToRight;
    DesignToolBar.BiDiMode := bdLeftToRight;
    ImportExportToolBar.BiDiMode := bdLeftToRight;
    MainStatusBar.BiDiMode := bdLeftToRight;
    MainStatusBar.Panels[0].Alignment := taLeftJustify;
    MainStatusBar.Panels[1].Alignment := taLeftJustify;

    CategoryFolderTreeView.CancelDialog.BiDiMode := bdLeftToRight;
  end;
  //The Caption and BiDiMode of toolbars will be set afterwards
  //Character library path label
  CharLibPathLabel.BiDiMode := bdLeftToRight;

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
    ShowForm(Self, FormVisible);
    //Toolbars and their floating window caption (default values for internal English (Default) language)
    //--> Don't use Caption property as the dafult value, because it may cause a run-time error
    ToolbarCaptions[1] := 'General';  //GeneralToolBar
    ToolbarCaptions[2] := 'Design';  //DesignToolBar
    ToolbarCaptions[3] := 'Import and Export';  //ImportExportToolBar
    if not(asLoading in ApplicationState) then
      SetToolbarCaptions;
    //If a floating toolbar, the caption of the floating window will be updated in
    // the SetToolbarCaptions procedure.
    Exit;
  end;


  //Items to change:
  //  Captions
  //  Hints

  //Top level menus
  FileMenuItem.Caption := GetStaticText(1);
  EditMenuItem.Caption := GetStaticText(2);
  ViewMenuItem.Caption := GetStaticText(3);
  LCDMenuItem.Caption := GetStaticText(4);
  ToolsMenuItem.Caption := GetStaticText(5);
  HelpMenuItem.Caption := GetStaticText(6);
  //Submenus: File
  NewDesignMenuItem.Caption := GetStaticText(7);
  OpenDesignMenuItem.Caption := GetStaticText(8);
  SaveDesignMenuItem.Caption := GetStaticText(9);
  SaveDesignAsMenuItem.Caption := GetStaticText(10);

  ImportPictureFileMenuItem.Caption := GetStaticText(11);

  ExportLCDMenuItem.Caption := GetStaticText(12);
  QuickExportMenuItem.Caption := GetStaticText(13);

  PrinterSetupMenuItem.Caption := GetStaticText(14);
  PrintLCDMenuItem.Caption := GetStaticText(15);

  ExitMenuItem.Caption := GetStaticText(16);
  //Submenus: Edit  --> These strings also are used as strings for all Cut, Copy, Paste commands (such as in GeneralEditPopupMenu)
  CutMenuItem.Caption := GetStaticText(17);
  CopyMenuItem.Caption := GetStaticText(18);
  PasteMenuItem.Caption := GetStaticText(19);
  DeleteMenuItem.Caption := GetStaticText(20);
  //Submenus: View
  CharacterLibraryPaneMenuItem.Caption := GetStaticText(21);
  TextToLCDPaneMenuItem.Caption := GetStaticText(22);
  LCDPicturePreviewMenuItem.Caption := GetStaticText(23);
  ToolbarsMenuItem.Caption := GetStaticText(24);
  RefreshCharacterLibraryMenuItem.Caption := GetStaticText(25);

  GeneralToolBarMenuItem.Caption := GetStaticText(26);
  ImportExportToolBarMenuItem.Caption := GetStaticText(27);
  //Submenus: Design
  SelectAllMenuItem.Caption := GetStaticText(28);
  ClearAllMenuItem.Caption := GetStaticText(29);

  ToggleSelectionMenuItem.Caption := GetStaticText(30);

  RotatePageMenuItem.Caption := GetStaticText(31);
  ShiftAtCursorMenuItem.Caption := GetStaticText(32);
  RotateLCDMenuItem.Caption := GetStaticText(33);
  RotateSelectionMenuItem.Caption := GetStaticText(34);

  CreateCharacterMenuItem.Caption := GetStaticText(35);

  ImportPictureLCDMenuItem.Caption := GetStaticText(36);

  LCDOptionsMenuItem.Caption := GetStaticText(37);

  //---
  RotatePage90CWMenuItem.Caption := GetStaticText(38);
  RotatePage90CCWMenuItem.Caption := GetStaticText(39);

  FlipHorizontalMenuItem.Caption := GetStaticText(40);
  FlipVerticalMenuItem.Caption := GetStaticText(41);
  //---
  ShiftRightMenuItem.Caption := GetStaticText(42);
  ShiftLeftMenuItem.Caption := GetStaticText(43);
  //---
  RotateLCDRightMenuItem.Caption := GetStaticText(44);
  RotateLCDLeftMenuItem.Caption := GetStaticText(45);
  RotateLCDUpMenuItem.Caption := GetStaticText(46);
  RotateLCDDownMenuItem.Caption := GetStaticText(47);
  //---
  RotateSelRightMenuItem.Caption := GetStaticText(48);
  RotateSelLeftMenuItem.Caption := GetStaticText(49);
  RotateSelUpMenuItem.Caption := GetStaticText(50);
  RotateSelDownMenuItem.Caption := GetStaticText(51);
  //---

  //Submenus: Tools
  CharacterLibraryOrganizerMenuItem.Caption := GetStaticText(52);
  CharacterDesignerMenuItem.Caption := GetStaticText(53);

  LCDAnimatorMenuItem.Caption := GetStaticText(54);

  LanguageMenuItem.Caption := GetStaticText(55);
  ProgramOptionsMenuItem.Caption := GetStaticText(56);
  //Submenus: Help
  TipofthedayMenuItem.Caption := GetStaticText(58);

  AboutMenuItem.Caption := GetStaticText(59);
  //--------------- MainMenu Done

  //CharacterLibraryPanel
  CharLibPanelHeader.Caption := GetStaticText(60);

  CategoriesPanelHeader.Caption := GetStaticText(61);
  CharactersPanelHeader.Caption := GetStaticText(62);

  InsertCharAtCursorBtn.Caption := GetStaticText(63);

  PreviewZoomLabel.Caption := GetStaticText(64);
  CharPreviewGridLinesCheck.Caption := GetStaticText(65);
  //--------------- CharacterLibraryPanel Done

  //LCD Top bar
  LCDZoomLabel.Caption := GetStaticText(66);
  LCDGridLinesCheck.Caption := GetStaticText(67);
  //---------------- Done

  //TextToLCDPanel
  TextLabel.Caption := GetStaticText(68);
  InsertTextAsLCDBtn.Caption := GetStaticText(69);
  InsertTextAtCursorBtn.Caption := GetStaticText(70);

  TextToLCDOptionsGroup.Caption := GetStaticText(71);
  AutoextendLCDWidthCheck.Caption := GetStaticText(72);
  AutoextendLCDHeightCheck.Caption := GetStaticText(73);
  ErrorLogCheck.Caption := GetStaticText(74);

  CharacterSourceGroup.Caption := GetStaticText(75);
  SystemFontsSourceRadio.Caption := GetStaticText(76);
  CharacterLibrarySourceRadio.Caption := GetStaticText(77);
  CharacterSourceSettingsBtn.Caption := GetStaticText(78);

  //---
  FavoriteFontsTabSheet.Caption := GetStaticText(79);
  FontLabel1.Caption := GetStaticText(80);
  SampleGroup1.Caption := GetStaticText(81);

  //---
  AllFontsTabSheet.Caption := GetStaticText(82);
  FontLabel2.Caption := GetStaticText(83);
  SampleGroup2.Caption := GetStaticText(84);

  //Dialogs
  OpenDesignDialog.Title := GetStaticText(85);
  SaveDesignDialog.Title := GetStaticText(86);
  //-----------------
  //All Captions Done
  //-----------------

  //-----------------
  //Change Hints
  //-----------------
  //MainMenu
  //Top level menus
  FileMenuItem.Hint := GetStaticText(87);
  EditMenuItem.Hint := GetStaticText(88);
  ViewMenuItem.Hint := GetStaticText(89);
  LCDMenuItem.Hint := GetStaticText(90);
  ToolsMenuItem.Hint := GetStaticText(91);
  HelpMenuItem.Hint := GetStaticText(92);
  //Submenus: File
  NewDesignMenuItem.Hint := GetStaticText(93);
  OpenDesignMenuItem.Hint := GetStaticText(94);
  SaveDesignMenuItem.Hint := GetStaticText(95);
  SaveDesignAsMenuItem.Hint := GetStaticText(96);

  ImportPictureFileMenuItem.Hint := GetStaticText(97);

  ExportLCDMenuItem.Hint := GetStaticText(98);
  QuickExportMenuItem.Hint := GetStaticText(99);

  PrinterSetupMenuItem.Hint := GetStaticText(100);
  PrintLCDMenuItem.Hint := GetStaticText(101);

  ExitMenuItem.Hint := GetStaticText(102);
  //Submenus: Edit
  CutMenuItem.Hint := GetStaticText(103);
  CopyMenuItem.Hint := GetStaticText(104);
  PasteMenuItem.Hint := GetStaticText(105);
  DeleteMenuItem.Hint := GetStaticText(106);
  //Submenus: View
  CharacterLibraryPaneMenuItem.Hint := GetStaticText(107);
  TextToLCDPaneMenuItem.Hint := GetStaticText(108);
  LCDPicturePreviewMenuItem.Hint := GetStaticText(109);
  ToolbarsMenuItem.Hint := GetStaticText(110);
  RefreshCharacterLibraryMenuItem.Hint := GetStaticText(111);

  GeneralToolBarMenuItem.Hint := GetStaticText(112);
  ImportExportToolBarMenuItem.Hint := GetStaticText(113);
  //Submenus: LCD
  SelectAllMenuItem.Hint := GetStaticText(114);
  ClearAllMenuItem.Hint := GetStaticText(115);

  ToggleSelectionMenuItem.Hint := GetStaticText(116);

  RotatePageMenuItem.Hint := GetStaticText(117);
  ShiftAtCursorMenuItem.Hint := GetStaticText(118);
  RotateLCDMenuItem.Hint := GetStaticText(119);
  RotateSelectionMenuItem.Hint := GetStaticText(120);

  CreateCharacterMenuItem.Hint := GetStaticText(121);

  ImportPictureLCDMenuItem.Hint := GetStaticText(122);

  LCDOptionsMenuItem.Hint := GetStaticText(123);

  //---
  RotatePage90CWMenuItem.Hint := GetStaticText(124);
  RotatePage90CCWMenuItem.Hint := GetStaticText(125);

  FlipHorizontalMenuItem.Hint := GetStaticText(126);
  FlipVerticalMenuItem.Hint := GetStaticText(127);
  //---
  ShiftRightMenuItem.Hint := GetStaticText(128);
  ShiftLeftMenuItem.Hint := GetStaticText(129);
  //---
  RotateLCDRightMenuItem.Hint := GetStaticText(130);
  RotateLCDLeftMenuItem.Hint := GetStaticText(131);
  RotateLCDUpMenuItem.Hint := GetStaticText(132);
  RotateLCDDownMenuItem.Hint := GetStaticText(133);
  //---
  RotateSelRightMenuItem.Hint := GetStaticText(134);
  RotateSelLeftMenuItem.Hint := GetStaticText(135);
  RotateSelUpMenuItem.Hint := GetStaticText(136);
  RotateSelDownMenuItem.Hint := GetStaticText(137);
  //---

  //Submenus: Tools
  CharacterLibraryOrganizerMenuItem.Hint := GetStaticText(138);

  LCDAnimatorMenuItem.Hint := GetStaticText(139);
  CharacterDesignerMenuItem.Hint := GetStaticText(140);

  LanguageMenuItem.Hint := GetStaticText(141);
  ProgramOptionsMenuItem.Hint := GetStaticText(142);
  //Submenus: Help
  ShowDefaultHelpMenuItem.Hint := GetStaticText(143);

  TipofthedayMenuItem.Hint := GetStaticText(144);

  AboutMenuItem.Hint := GetStaticText(145);
  //--------------- MainMenu Done

  //General Toolbar
  NewToolBtn.Hint := GetStaticText(146);
  OpenToolBtn.Hint := GetStaticText(147);
  SaveToolBtn.Hint := GetStaticText(148);

  PrintLCDToolBtn.Hint := GetStaticText(149);

  CutToolBtn.Hint := GetStaticText(150);
  CopyToolBtn.Hint := GetStaticText(151);
  PasteToolBtn.Hint := GetStaticText(152);
  ClearLCDToolBtn.Hint := GetStaticText(153);

  ShiftLeftToolBtn.Hint := GetStaticText(154);
  ShiftRightToolBtn.Hint := GetStaticText(155);

  RotateLToolBtn.Hint := GetStaticText(156);
  RotateRToolBtn.Hint := GetStaticText(157);
  RotateUToolBtn.Hint := GetStaticText(158);
  RotateDToolBtn.Hint := GetStaticText(159);

  FlipHorizontalToolBtn.Hint := GetStaticText(160);
  FlipVerticalToolBtn.Hint := GetStaticText(161);
  RotatePage90CWToolBtn.Hint := GetStaticText(162);
  RotatePage90CCWToolBtn.Hint := GetStaticText(163);

  CharacterLibraryToolBtn.Hint := GetStaticText(164);
  TextToLCDToolBtn.Hint := GetStaticText(165);

  //"Import and Export" Toolbar
  CodeToLCDToolBtn.Hint := GetStaticText(166);
  ImportPictureToolBtn.Hint := GetStaticText(167);
  ExportLCDToolBtn.Hint := GetStaticText(168);
  QuickExportToolBtn.Hint := GetStaticText(169);

  //--------------------  Toolbars Done

  //Character Library
  CharLibExpandBtn.Hint := GetStaticText(170);
  InsertCharAtCursorBtn.Hint := GetStaticText(171);
  CharactersListBox.Hint := GetStaticText(172);

  ///////////////////
  LCDHeightEdit.Hint := GetStaticText(173);
  LCDWidthEdit.Hint := GetStaticText(174);
  CellSpaceBtn.Hint := GetStaticText(175);
  LCDPicturePreviewToolBtn.Hint := GetStaticText(176);

  ///////////////////
  AddToFavoriteFontsBtn.Hint := GetStaticText(177);
  RemoveFromFavoriteFontsBtn.Hint := GetStaticText(178);

  //======================================================
  //===  OTHER  ===
  //======================================================
  CellSpaceBtn.Title := GetStaticText(179);

  QuickHelpMenuItem.Caption := GetStaticText(180);
  QuickHelpMenuItem.Hint := GetStaticText(181);

  StatusBarMenuItem.Caption := GetStaticText(182);
  StatusBarMenuItem.Hint := GetStaticText(183);

  DefaultHelpLanguageMenuItem.Caption := GetStaticText(184);
  DefaultHelpLanguageMenuItem.Hint := GetStaticText(185);

  CharLibOrganizerBtn.Hint := GetStaticText(186);

  //Toolbars and their floating window caption
  ToolbarCaptions[1] := GetStaticText(187);  //GeneralToolBar
  ToolbarCaptions[2] := GetStaticText(188);  //DesignToolBar
  ToolbarCaptions[3] := GetStaticText(189);  //ImportExportToolBar
  //If a floating toolbar, the caption of the floating window will be updated in
  // the SetToolbarCaptions procedure.

  //-- Menu item
  DesignToolBarMenuItem.Caption := GetStaticText(190);
  DesignToolBarMenuItem.Hint := GetStaticText(191);

  //Menu item
  LCDDesignerHomePageMenuItem.Caption := GetStaticText(192);
  LCDDesignerHomePageMenuItem.Hint := GetStaticText(193);

  //Clear LCD toolbar button
  ClearAllToolBtn.Hint := GetStaticText(194);

  //Full Screen menu item
  FullScreenMenuItem.Caption := GetStaticText(195);
  FullScreenMenuItem.Hint := GetStaticText(196);

  //CustomizeToolBarPopupMenu menu items
  ToggleGeneralToolBarMenuItem.Caption := GetStaticText(197);
    ToggleGeneralToolBarMenuItem.Hint := GeneralToolBarMenuItem.Hint;
  ToggleDesignToolBarMenuItem.Caption := GetStaticText(198);
    ToggleDesignToolBarMenuItem.Hint := DesignToolBarMenuItem.Hint;
  ToggleImportExportToolBarMenuItem.Caption := GetStaticText(199);
    ToggleImportExportToolBarMenuItem.Hint := ImportExportToolBarMenuItem.Hint;

  //Undo/Redo menu items
  UndoMenuItem.Caption := GetStaticText(200);
  UndoMenuItem.Hint := GetStaticText(201);
  RedoMenuItem.Caption := GetStaticText(202);
  RedoMenuItem.Hint := GetStaticText(203);

  //Toolbar buttons
  CharacterLibraryToolBtn.Caption := GetStaticText(204);
  TextToLCDToolBtn.Caption := GetStaticText(205);

  CodeToLCDToolBtn.Caption := GetStaticText(206);

  //CharactersListBox popupmenu items
  EditInCharDesignerPopupMenuItem.Caption := GetStaticText(207);
  EditInCharDesignerPopupMenuItem.Hint := GetStaticText(208);

  //CtageoryFolderTreeView refresh messages
  CategoryFolderTreeView.CancelTitle := GetStaticText(209);
  try
    CategoryFolderTreeView.CancelDescription := WideFormat(GetStaticText(210), [#13]);  //Insert the new line character if the %s parameter is supplied
  except
    CategoryFolderTreeView.CancelDescription := GetStaticText(210);
  end;
  CategoryFolderTreeView.CancelDialog.CancelCaption := Dyn_Texts[33];  //'Cancel'

  //Text to LCD LTR/RTL buttons
  InputTextLTRBtn.Hint := GetStaticText(211);
  InputTextRTLBtn.Hint := GetStaticText(212);

  //GeneralEditPopupMenu menu items
  GECutPopupMenuItem.Caption := CutMenuItem.Caption;
  GECopyPopupMenuItem.Caption := CopyMenuItem.Caption;
  GEPastePopupMenuItem.Caption := PasteMenuItem.Caption;

  finally

  ShowForm(Self, FormVisible);

  end;

  //BiDiMode of toolbars and their floating windows
  //If the form is being created, the BiDiMode of floating windows will be set in the OnApplyStartupOnShowConfig procedure
  if not(asLoading in ApplicationState) then
    SetToolbarCaptions;
end;

procedure TMainForm.SetDynamicTexts(LangInstance: THandle);

  procedure SetDefaultDynamicTexts;
  begin
    Dyn_Texts[1] := '&Save';
    Dyn_Texts[2] := 'Cancel';
    Dyn_Texts[3] := 'Unable to open the design file ''%s''.';
    Dyn_Texts[4] := 'Occured an error while reading configuration. Default configuration loaded.';
    Dyn_Texts[5] := 'Cannot shift right at the right side of the design.';
    Dyn_Texts[6] := 'Cannot shift left at the left side of the design.';
    Dyn_Texts[7] := 'No category is selected.';
    Dyn_Texts[8] := 'No characters found in the selected categories.';
    Dyn_Texts[9] := 'The characer file of the character ''%s'' was not found in the selected categories.';
    Dyn_Texts[10] := 'Please enter some text.';
    Dyn_Texts[11] := 'Do you want to save the changes to the current design?';
    Dyn_Texts[12] := 'The file %s is either in unknown format or corrupted. %s Do you want to try to open it?';
    Dyn_Texts[13] { *This string is used in other units* } := '%s already exists.%sDo you want to replace it?';
    Dyn_Texts[14] := 'Do you want to save the changes to the current design?';
    Dyn_Texts[15] := 'The character designer module, ''%s'', cannot be found.';
//    Dyn_Texts[16] := 'Unable to read the program registry settings. Default settings loaded.';
//    Dyn_Texts[17] := 'Program registry settings are corrupted. Default settings loaded.';
    Dyn_Texts[18] := 'Do you want to save the changes to the current design?';
    Dyn_Texts[19] := 'Unable to save the program settings to the registry.';
    Dyn_Texts[20] := 'Selection size: %d x %d';
    Dyn_Texts[21] := 'No selection';
//    Dyn_Texts[22] := 'Please enter some text.';
    Dyn_Texts[23] := 'Unable to Quick Export to the file:%s';
    Dyn_Texts[24] := 'No settings are defined for Quick Export. You can define Quick Export settings in the Export Design window.';
    Dyn_Texts[25] := '{no help is available}';
    Dyn_Texts[26] := 'Special &Names...';
    Dyn_Texts[27] := 'OK';
    Dyn_Texts[28] := 'Character Groups';
    Dyn_Texts[29] := 'Characters In the Group';
    Dyn_Texts[30] := 'The design file%sdoesn''t exist.';
    Dyn_Texts[31] := '&User-Mapped Chars...';
    Dyn_Texts[32] {*This string is used in other units*} := 'OK';
    Dyn_Texts[33] {*This string is used in other units*} := 'Cancel';
    Dyn_Texts[34] := 'Save Character';
    Dyn_Texts[35] := 'Select Character';
    Dyn_Texts[36] := 'User-Mapped Character Names';
    //Mesage dialog button captions
    Dyn_Texts[37] := '&Yes';
    Dyn_Texts[38] := '&No';
    Dyn_Texts[39] := '&Abort';
    Dyn_Texts[40] := '&Retry';
    Dyn_Texts[41] := '&Ignore';
    Dyn_Texts[42] := '&All';
    Dyn_Texts[43] := 'N&o to All';
    Dyn_Texts[44] := 'Yes to &All';
    Dyn_Texts[45] := '&Help';
    //Undo/Redo toolbar button hints
    Dyn_Texts[46] := 'Undo';
    Dyn_Texts[47] := 'Can''t Undo';
    Dyn_Texts[48] := 'Redo';
    Dyn_Texts[49] := 'Can''t Redo';
    Dyn_Texts[50] := '%s already exists.%sDo you want to replace it?';
    Dyn_Texts[51] := 'Please enter a character name.';
    Dyn_Texts[52] := 'Please specify a location.';
    Dyn_Texts[53] := 'Unable to save the design to the file:%s';
    Dyn_Texts[54] := 'The file is read-only:%s';
    Dyn_Texts[55] := 'Unable to save to the file:%s';
    Dyn_Texts[56] := 'Occured an error during the print operation. Please try again or use another printer.';
    Dyn_Texts[57] := 'Printing...';
    Dyn_Texts[58] := 'Unable to save the character.';
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

procedure TMainForm.SetMessageDlgCaptions;
begin
  //Change message dialog button captions
  TntDialogs.ButtonCaptions[mbYes] := Dyn_Texts[37];  //SMsgDlgYes;
  TntDialogs.ButtonCaptions[mbNo] := Dyn_Texts[38];  //SMsgDlgNo;
  TntDialogs.ButtonCaptions[mbOK] := Dyn_Texts[32];  //SMsgDlgOK;
  TntDialogs.ButtonCaptions[mbCancel] := Dyn_Texts[33];  //SMsgDlgCancel;
  TntDialogs.ButtonCaptions[mbAbort] := Dyn_Texts[39];  //SMsgDlgAbort;
  TntDialogs.ButtonCaptions[mbRetry] := Dyn_Texts[40];  //SMsgDlgRetry;
  TntDialogs.ButtonCaptions[mbIgnore] := Dyn_Texts[41];  //SMsgDlgIgnore;
  TntDialogs.ButtonCaptions[mbAll] := Dyn_Texts[42];  //SMsgDlgAll;
  TntDialogs.ButtonCaptions[mbNoToAll] := Dyn_Texts[43];  //SMsgDlgNoToAll;
  TntDialogs.ButtonCaptions[mbYesToAll] := Dyn_Texts[44];  //SMsgDlgYesToAll;
  TntDialogs.ButtonCaptions[mbHelp] := Dyn_Texts[45];  //SMsgDlgHelp;
end;

procedure TMainForm.SetToolbarCaptions;
begin
  GeneralToolbar.Caption := ToolBarCaptions[1];
  DesignToolBar.Caption := ToolBarCaptions[2];
  ImportExportToolBar.Caption := ToolBarCaptions[3];

  //If a floating toolbar, update the caption of the floating window
  if GeneralToolbar.Floating then  //GeneralToolbar
  begin
    (GeneralToolbar.Parent as TTntForm).Caption := GeneralToolbar.Caption;
    GeneralToolbar.Parent.BiDiMode := GeneralToolbar.BiDiMode;
  end;
  if ImportExportToolBar.Floating then  //ImportExportToolBar
  begin
    (ImportExportToolBar.Parent as TTntForm).Caption := ImportExportToolBar.Caption;
    ImportExportToolBar.Parent.BiDiMode := ImportExportToolBar.BiDiMode;
  end;
  if DesignToolBar.Floating then  //ImportExportToolBar
  begin
    (DesignToolBar.Parent as TTntForm).Caption := DesignToolBar.Caption;
    DesignToolBar.Parent.BiDiMode := DesignToolBar.BiDiMode;
  end;
end;
//===========================================================================
//***************************************************************************
//***************************************************************************
//===========================================================================

procedure TMainForm.SetRotationCentertoActiveCell1Click(Sender: TObject);
begin
  GlobalOptions.FreeRotationCenter := Point(LCDGrid.Col, LCDGrid.Row);
end;

procedure TMainForm.SetFRAngleMenuItemClick(Sender: TObject);
var
  NewAngleStr: WideString;
  NewAngle: Integer;
  Done: Boolean;
begin
  repeat
    NewAngleStr := IntToStr(GlobalOptions.FreeRotationAngle);
    Done := not SpecialProcs.WideInputQueryWithFont('Set Free Rotation Angle', 'Enter a new angle between 0 and 360:', Self.Font, NewAngleStr, Dyn_Texts[32], Dyn_Texts[33]);
    if not Done then
    begin
      if Procs.StrToInteger(NewAngleStr, NewAngle) then
        if (NewAngle > 0) and (NewAngle < 360) then
        begin
          GlobalOptions.FreeRotationAngle := NewAngle;
          Done := True;
        end;
      if not Done then
        WideShowMessageSoundTop('Invalid rotation angle. Please enter a value between 0 and 360.');
    end;
  until Done;
end;

procedure TMainForm.FRCWMenuItemClick(Sender: TObject);
var
  Src, Dst: TBitmap;
begin
  Src := TBitmap.Create;
  Src.PixelFormat := pf24bit;
  Dst := TBitmap.Create;

  LCDToBitmap(LCDGrid, Src, True);
  Procs.RotateBitmap(Src, Dst, LCDOptions.LCDClearedColor, GlobalOptions.FreeRotationCenter, GlobalOptions.FreeRotationAngle);
  BitmapToLCD(Dst, LCDGrid, LCDGrid.Selection.Left, LCDGrid.Selection.Top);

  Src.Free;
  Dst.Free;
end;

procedure TMainForm.BitmapToLCD(Bitmap: TBitmap; ALCD: TAdvStringGrid;
  ACol, ARow: Integer);
var
  X, Y: Integer;
begin
  for X := 0 to Bitmap.Width - 1 do
    for Y := 0 to Bitmap.Height - 1 do
      if Bitmap.Canvas.Pixels[X, Y] = LCDOptions.LCDClearedColor then
        SetCellColor(ALCD, ACol + X, ARow + Y, False)
      else
        SetCellColor(ALCD, ACol + X, ARow + Y, True);
end;

procedure TMainForm.SetFRAngleToolBtnClick(Sender: TObject);
begin
  SetFRAngleMenuItem.Click;
end;

procedure TMainForm.FRCCWToolBtnClick(Sender: TObject);
begin
  FRCCWMenuItem.Click;
end;

procedure TMainForm.FRCWToolBtnClick(Sender: TObject);
begin
  FRCWMenuItem.Click;
end;

end.

