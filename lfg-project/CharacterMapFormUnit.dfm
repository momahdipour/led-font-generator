object CharacterMapForm: TCharacterMapForm
  Left = 116
  Top = 108
  BiDiMode = bdLeftToRight
  BorderStyle = bsDialog
  Caption = 'Map Characters To Character Names'
  ClientHeight = 390
  ClientWidth = 415
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DescriptionLabel: TTntLabel
    Left = 7
    Top = 5
    Width = 398
    Height = 60
    AutoSize = False
    BiDiMode = bdLeftToRight
    Caption = 
      'Write a character in the left column and enter a character name ' +
      'in the right column to use when the related character is used in' +
      ' the input text (for example, for '#39','#39' enter '#39'COMMA'#39' as character' +
      ' name in the Character Library).'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    WordWrap = True
  end
  object CancelBtn: TTntBitBtn
    Left = 333
    Top = 361
    Width = 75
    Height = 25
    BiDiMode = bdLeftToRight
    Cancel = True
    Caption = 'Cancel'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ModalResult = 2
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    OnClick = CancelBtnClick
    NumGlyphs = 2
  end
  object OKBtn: TTntBitBtn
    Left = 253
    Top = 361
    Width = 75
    Height = 25
    BiDiMode = bdLeftToRight
    Caption = 'OK'
    Default = True
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ModalResult = 1
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    OnClick = OKBtnClick
    NumGlyphs = 2
  end
  object GroupBox1: TGroupBox
    Left = 7
    Top = 281
    Width = 401
    Height = 73
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 0
    object MapLabel: TTntLabel
      Left = 98
      Top = 16
      Width = 115
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = '&Map to character name:'
      FocusControl = FilenameEdit
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object CharacterLabel: TTntLabel
      Left = 7
      Top = 15
      Width = 52
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'C&haracter:'
      FocusControl = CharacterEdit
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object AddEditBtn: TTntBitBtn
      Left = 192
      Top = 40
      Width = 99
      Height = 25
      BiDiMode = bdLeftToRight
      Caption = '&Add'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      OnClick = AddEditBtnClick
    end
    object RemoveBtn: TTntBitBtn
      Left = 296
      Top = 40
      Width = 99
      Height = 25
      BiDiMode = bdLeftToRight
      Caption = '&Remove'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 3
      OnClick = RemoveBtnClick
    end
    object CharacterEdit: TEdit
      Left = 60
      Top = 13
      Width = 26
      Height = 21
      BiDiMode = bdLeftToRight
      MaxLength = 1
      ParentBiDiMode = False
      PopupMenu = MainForm.GeneralEditPopupMenu
      TabOrder = 0
      OnChange = CharacterEditChange
      OnEnter = CharacterEditEnter
      OnExit = CharacterEditExit
      OnKeyPress = CharacterEditKeyPress
    end
    object FilenameEdit: TEdit
      Left = 216
      Top = 13
      Width = 178
      Height = 21
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      PopupMenu = MainForm.GeneralEditPopupMenu
      TabOrder = 1
      OnEnter = FilenameEditEnter
      OnExit = FilenameEditExit
      OnKeyPress = FilenameEditKeyPress
    end
  end
  object CharMapGrid: TMMAdvancedGrid
    Left = 7
    Top = 73
    Width = 401
    Height = 206
    Cursor = crDefault
    BiDiMode = bdLeftToRight
    ColCount = 2
    DefaultRowHeight = 21
    DefaultDrawing = False
    FixedCols = 0
    RowCount = 2
    FixedRows = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    GridLineWidth = 1
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goRowSelect, goThumbTracking]
    ParentBiDiMode = False
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 3
    OnSelectCell = CharMapGridSelectCell
    GridLineColor = clSilver
    ActiveCellShow = False
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ActiveCellColor = clGray
    Bands.PrimaryColor = clInfoBk
    Bands.PrimaryLength = 1
    Bands.SecondaryColor = clWindow
    Bands.SecondaryLength = 1
    Bands.Print = False
    AutoNumAlign = False
    AutoSize = False
    VAlignment = vtaTop
    EnhTextSize = False
    EnhRowColMove = True
    SizeWithForm = False
    Multilinecells = False
    DragDropSettings.OleAcceptFiles = True
    DragDropSettings.OleAcceptText = True
    SortSettings.AutoColumnMerge = False
    SortSettings.Column = 0
    SortSettings.Show = False
    SortSettings.IndexShow = False
    SortSettings.IndexColor = clYellow
    SortSettings.Full = True
    SortSettings.SingleColumn = False
    SortSettings.IgnoreBlanks = False
    SortSettings.BlankPos = blFirst
    SortSettings.AutoFormat = True
    SortSettings.Direction = sdAscending
    SortSettings.InitSortDirection = sdAscending
    SortSettings.FixedCols = False
    SortSettings.NormalCellsOnly = False
    SortSettings.Row = 0
    SortSettings.UndoSort = False
    FloatingFooter.Color = clBtnFace
    FloatingFooter.Column = 0
    FloatingFooter.FooterStyle = fsFixedLastRow
    FloatingFooter.Visible = False
    ControlLook.Color = clBlack
    ControlLook.CheckSize = 15
    ControlLook.RadioSize = 10
    ControlLook.ControlStyle = csWinXP
    ControlLook.DropDownAlwaysVisible = False
    ControlLook.FlatButton = False
    ControlLook.NoDisabledCheckRadioLook = False
    ControlLook.ProgressMarginX = 2
    ControlLook.ProgressMarginY = 2
    ControlLook.ProgressXP = False
    EnableBlink = False
    EnableHTML = True
    EnableWheel = True
    Flat = False
    Look = glXP
    HintColor = clInfoBk
    SelectionColor = 15387318
    SelectionTextColor = clBlack
    SelectionRectangle = False
    SelectionResizer = False
    SelectionRTFKeep = False
    HintShowCells = False
    HintShowLargeText = False
    HintShowSizing = False
    PrintSettings.FooterSize = 0
    PrintSettings.HeaderSize = 0
    PrintSettings.Time = ppNone
    PrintSettings.Date = ppNone
    PrintSettings.DateFormat = 'dd/mm/yyyy'
    PrintSettings.PageNr = ppNone
    PrintSettings.Title = ppNone
    PrintSettings.Font.Charset = DEFAULT_CHARSET
    PrintSettings.Font.Color = clWindowText
    PrintSettings.Font.Height = -11
    PrintSettings.Font.Name = 'MS Sans Serif'
    PrintSettings.Font.Style = []
    PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
    PrintSettings.FixedFont.Color = clWindowText
    PrintSettings.FixedFont.Height = -11
    PrintSettings.FixedFont.Name = 'MS Sans Serif'
    PrintSettings.FixedFont.Style = []
    PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
    PrintSettings.HeaderFont.Color = clWindowText
    PrintSettings.HeaderFont.Height = -11
    PrintSettings.HeaderFont.Name = 'MS Sans Serif'
    PrintSettings.HeaderFont.Style = []
    PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
    PrintSettings.FooterFont.Color = clWindowText
    PrintSettings.FooterFont.Height = -11
    PrintSettings.FooterFont.Name = 'MS Sans Serif'
    PrintSettings.FooterFont.Style = []
    PrintSettings.Borders = pbSingle
    PrintSettings.BorderStyle = psSolid
    PrintSettings.Centered = True
    PrintSettings.RepeatFixedRows = False
    PrintSettings.RepeatFixedCols = False
    PrintSettings.LeftSize = 0
    PrintSettings.RightSize = 0
    PrintSettings.ColumnSpacing = 0
    PrintSettings.RowSpacing = 0
    PrintSettings.TitleSpacing = 0
    PrintSettings.Orientation = poPortrait
    PrintSettings.PageNumberOffset = 0
    PrintSettings.MaxPagesOffset = 0
    PrintSettings.FixedWidth = 0
    PrintSettings.FixedHeight = 0
    PrintSettings.UseFixedHeight = False
    PrintSettings.UseFixedWidth = False
    PrintSettings.FitToPage = fpNever
    PrintSettings.PageNumSep = '/'
    PrintSettings.NoAutoSize = False
    PrintSettings.NoAutoSizeRow = False
    PrintSettings.PrintGraphics = False
    PrintSettings.UseDisplayFont = True
    HTMLSettings.Width = 100
    HTMLSettings.XHTML = False
    Navigation.AdvanceDirection = adLeftRight
    Navigation.InsertPosition = pInsertBefore
    Navigation.HomeEndKey = heFirstLastColumn
    Navigation.TabToNextAtEnd = False
    Navigation.TabAdvanceDirection = adLeftRight
    ColumnSize.Location = clRegistry
    CellNode.Color = clSilver
    CellNode.ExpandOne = False
    CellNode.NodeColor = clBlack
    CellNode.NodeIndent = 12
    CellNode.ShowTree = True
    CellNode.TreeColor = clSilver
    MaxEditLength = 0
    Grouping.HeaderColor = clNone
    Grouping.HeaderColorTo = clNone
    Grouping.HeaderTextColor = clNone
    Grouping.MergeHeader = False
    Grouping.MergeSummary = False
    Grouping.Summary = False
    Grouping.SummaryColor = clNone
    Grouping.SummaryColorTo = clNone
    Grouping.SummaryTextColor = clNone
    IntelliPan = ipNone
    IntelliZoom = False
    URLColor = clBlue
    URLShow = False
    URLFull = False
    URLEdit = False
    ScrollType = ssNormal
    ScrollColor = clNone
    ScrollWidth = 17
    ScrollSynch = False
    ScrollProportional = False
    ScrollHints = shNone
    OemConvert = False
    FixedFooters = 0
    FixedRightCols = 0
    FixedColWidth = 63
    FixedRowHeight = 21
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = [fsBold]
    FixedAsButtons = False
    FloatFormat = '%.2f'
    IntegralHeight = False
    WordWrap = True
    ColumnHeaders.Strings = (
      'Character'
      'Character Name')
    Lookup = False
    LookupCaseSensitive = False
    LookupHistory = False
    BackGround.Top = 0
    BackGround.Left = 0
    BackGround.Display = bdTile
    BackGround.Cells = bcNormal
    Filter = <>
    ColWidths = (
      63
      313)
  end
end
