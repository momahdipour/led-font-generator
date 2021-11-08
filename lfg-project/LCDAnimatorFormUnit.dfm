object LCDAnimatorForm: TLCDAnimatorForm
  Left = 225
  Top = 296
  Width = 547
  Height = 345
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Design Animator'
  Color = clBtnFace
  Constraints.MinHeight = 200
  Constraints.MinWidth = 485
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = TntFormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ZoomPanel: TPanel
    Left = 0
    Top = 0
    Width = 539
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 1
    DesignSize = (
      539
      35)
    object ZoomLabel: TTntLabel
      Left = 7
      Top = 9
      Width = 30
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = '&Zoom:'
      FocusControl = ZoomTrackBar
      ParentBiDiMode = False
    end
    object LCDGridLinesCheck: TTntCheckBox
      Left = 429
      Top = 7
      Width = 98
      Height = 17
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = '&Gridlines'
      Checked = True
      ParentBiDiMode = False
      State = cbChecked
      TabOrder = 1
      OnClick = LCDGridLinesCheckClick
    end
    object ZoomTrackBar: TTrackBar
      Left = 58
      Top = 4
      Width = 367
      Height = 27
      Anchors = [akLeft, akTop, akRight]
      Max = 200
      Min = 1
      Frequency = 10
      Position = 10
      TabOrder = 0
      ThumbLength = 18
      OnChange = ZoomTrackBarChange
    end
  end
  object AnimationGridPanel: TPanel
    Left = 0
    Top = 35
    Width = 539
    Height = 91
    Align = alClient
    BevelOuter = bvNone
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 2
    object AnimationGrid1: TMMAdvancedGrid
      Left = 96
      Top = 40
      Width = 320
      Height = 120
      Cursor = crDefault
      BiDiMode = bdLeftToRight
      BorderStyle = bsNone
      ColCount = 5
      Ctl3D = False
      DefaultRowHeight = 21
      DefaultDrawing = False
      FixedCols = 0
      RowCount = 5
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      GridLineWidth = 1
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goThumbTracking]
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 0
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
      Flat = True
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
      FixedColWidth = 64
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
      Lookup = False
      LookupCaseSensitive = False
      LookupHistory = False
      ShowSelection = False
      HideFocusRect = True
      BackGround.Top = 0
      BackGround.Left = 0
      BackGround.Display = bdTile
      BackGround.Cells = bcNormal
      Filter = <>
    end
    object SaveGrid: TMMAdvancedGrid
      Left = 240
      Top = 32
      Width = 320
      Height = 120
      Cursor = crDefault
      BiDiMode = bdLeftToRight
      BorderStyle = bsNone
      ColCount = 5
      Ctl3D = False
      DefaultRowHeight = 21
      DefaultDrawing = False
      FixedCols = 0
      RowCount = 5
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      GridLineWidth = 1
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goThumbTracking]
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 1
      Visible = False
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
      Flat = True
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
      FixedColWidth = 64
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
      Lookup = False
      LookupCaseSensitive = False
      LookupHistory = False
      ShowSelection = False
      HideFocusRect = True
      BackGround.Top = 0
      BackGround.Left = 0
      BackGround.Display = bdTile
      BackGround.Cells = bcNormal
      Filter = <>
    end
  end
  object OptionsPanel: TPanel
    Left = 0
    Top = 126
    Width = 539
    Height = 185
    Align = alBottom
    BevelOuter = bvNone
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 0
    DesignSize = (
      539
      185)
    object AdvancedOptionsSection: TTntGroupBox
      Left = 4
      Top = 68
      Width = 532
      Height = 114
      Anchors = [akLeft, akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = 'Advanced Options'
      ParentBiDiMode = False
      TabOrder = 2
      DesignSize = (
        532
        114)
      object ExternalProgramLabel: TTntLabel
        Left = 28
        Top = 88
        Width = 87
        Height = 13
        BiDiMode = bdLeftToRight
        Caption = '&External program:'
        FocusControl = ExternalProgramEdit
        ParentBiDiMode = False
      end
      object OutputFileLabel: TTntLabel
        Left = 28
        Top = 39
        Width = 55
        Height = 13
        BiDiMode = bdLeftToRight
        Caption = 'Output &file:'
        FocusControl = OutputFileEdit
        ParentBiDiMode = False
      end
      object ExternalProgBrowseBtn: TTntBitBtn
        Left = 493
        Top = 84
        Width = 34
        Height = 25
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Caption = '...'
        ParentBiDiMode = False
        TabOrder = 5
        OnClick = ExternalProgBrowseBtnClick
      end
      object OutputFileBrowseBtn: TTntBitBtn
        Left = 492
        Top = 35
        Width = 34
        Height = 25
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Caption = '...'
        ParentBiDiMode = False
        TabOrder = 2
        OnClick = OutputFileBrowseBtnClick
      end
      object RunExternalCheck: TTntCheckBox
        Left = 8
        Top = 64
        Width = 516
        Height = 17
        BiDiMode = bdLeftToRight
        Caption = '&Run external program after each frame and wait for it to finish'
        ParentBiDiMode = False
        TabOrder = 3
        OnClick = RunExternalCheckClick
      end
      object OutputCheck: TTntCheckBox
        Left = 8
        Top = 16
        Width = 516
        Height = 17
        BiDiMode = bdLeftToRight
        Caption = '&Output each frame to file'
        ParentBiDiMode = False
        TabOrder = 0
        OnClick = OutputCheckClick
      end
      object OutputFileEdit: TEdit
        Left = 120
        Top = 37
        Width = 370
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        PopupMenu = MainForm.GeneralEditPopupMenu
        TabOrder = 1
      end
      object ExternalProgramEdit: TEdit
        Left = 120
        Top = 86
        Width = 370
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        PopupMenu = MainForm.GeneralEditPopupMenu
        TabOrder = 4
      end
    end
    object PlayControlPanel: TPanel
      Left = 4
      Top = -1
      Width = 534
      Height = 70
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 0
      DesignSize = (
        534
        70)
      object AdvancedOptionsBtn: TTntBitBtn
        Tag = 1
        Left = 449
        Top = 37
        Width = 83
        Height = 26
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Caption = '&Advanced'
        ParentBiDiMode = False
        TabOrder = 2
        OnClick = AdvancedOptionsBtnClick
        Layout = blGlyphRight
      end
      object CloseBtn: TTntBitBtn
        Left = 448
        Top = 6
        Width = 83
        Height = 26
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Cancel = True
        Caption = '&Close'
        ParentBiDiMode = False
        TabOrder = 1
        OnClick = CloseBtnClick
      end
      object PlayOptionsPanel: TGroupBox
        Left = 1
        Top = 3
        Width = 444
        Height = 62
        Anchors = [akLeft, akRight]
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        TabOrder = 0
        DesignSize = (
          444
          62)
        object AnimationSpeedGroup: TTntGroupBox
          Left = 135
          Top = 7
          Width = 260
          Height = 50
          Anchors = [akLeft, akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = 'Animation Speed'
          ParentBiDiMode = False
          TabOrder = 2
          DesignSize = (
            260
            50)
          object FastLabel: TTntLabel
            Left = 220
            Top = 22
            Width = 33
            Height = 13
            Anchors = [akTop, akRight]
            AutoSize = False
            BiDiMode = bdLeftToRight
            Caption = 'Fast'
            ParentBiDiMode = False
          end
          object SlowLabel: TTntLabel
            Left = 5
            Top = 21
            Width = 38
            Height = 13
            AutoSize = False
            BiDiMode = bdLeftToRight
            Caption = 'Slow'
            ParentBiDiMode = False
          end
          object AnimationSpeedTrackBar: TTrackBar
            Left = 43
            Top = 18
            Width = 172
            Height = 26
            Anchors = [akLeft, akTop, akRight]
            Max = 25
            Min = 1
            Frequency = 5
            Position = 12
            TabOrder = 0
            OnChange = AnimationSpeedTrackBarChange
          end
        end
        object DirectionGroup: TTntGroupBox
          Left = 4
          Top = 7
          Width = 130
          Height = 50
          BiDiMode = bdLeftToRight
          Caption = 'Direction'
          ParentBiDiMode = False
          TabOrder = 3
          object LeftDirectionRadio: TTntRadioButton
            Left = 6
            Top = 20
            Width = 58
            Height = 17
            BiDiMode = bdLeftToRight
            Caption = '&Left'
            ParentBiDiMode = False
            TabOrder = 0
            OnClick = LeftDirectionRadioClick
          end
          object RightDirectionRadio: TTntRadioButton
            Left = 66
            Top = 20
            Width = 58
            Height = 17
            BiDiMode = bdLeftToRight
            Caption = '&Right'
            ParentBiDiMode = False
            TabOrder = 1
            OnClick = RightDirectionRadioClick
          end
        end
        object PlayPauseBtn: TBitBtn
          Left = 398
          Top = 11
          Width = 41
          Height = 23
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          TabOrder = 0
          OnClick = PlayPauseBtnClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFDEEAE0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF096314DEEAE0FF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF11681B04600FDEEAE0FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1A6F2420732C04
            600FDEEAE0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF23752E2F833D20732C04600FDEEAE0FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2E7C3750A25A2F
            833D20732C04600FDEEAE0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF3883415DB06850A25A2F833D20732C0B6618DEEAE0FF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF438A4C6BBF766B
            BF7650A25A2F7639D6EDD9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF4B90536BBF76A3DAB02F7639D6EDD9FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF52945AA3DAB02F
            7639D6EDD9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF5898602F7639D6EDD9FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF589860D6EDD9FF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFD6EDD9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        end
        object StopBtn: TBitBtn
          Left = 398
          Top = 34
          Width = 41
          Height = 23
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          TabOrder = 1
          OnClick = StopBtnClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFE39A75B66239B05C33A7532A9D4820923E1689340D822D06812C05FF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE39770F3BCA0D7A183CE8D6DC1
            7C59AF6B48A762409B5837812C05FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFE79B74F9C9AFF5B594EDA37EE6956CDA8559CE794EAC6543853009FF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFEA9E78F9D0BBF8BDA1F4B090EF
            9F79E69268DC8459B46B488B360FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFEFA37DFBD7C8F8C7ADF7B798F2AB88ED9F7AE6946DBE7755923E16FF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF3A881FBE1D3F9CEBAF8BFA5F3
            B394F2A885EB9F7AD08D6C9A461EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFF6AD86FBE5DAFBDACAF9CAB3F8C2A8F6B698F3B391DCA387A24E25FF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFAB08AFCE1D5FBE2D4FAD8C6F9
            CDB9F9CAB3F9C6ACF5BB9DAA552DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFDB38DFAB08AF6AD86F3A881EFA37DEA9E78E79B74E39770E39A75FF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        end
      end
    end
    object SplitterPanel: TPanel
      Left = 0
      Top = 65
      Width = 539
      Height = 2
      Anchors = [akLeft, akTop, akRight]
      BevelInner = bvSpace
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 1
    end
  end
  object ButtonImageList: TImageList
    DrawingStyle = dsTransparent
    Left = 412
    Top = 72
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEEFE70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000008631000DEEFE700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E79C7300842900008429000000000000E79C730084290000842900000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000700E110000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000106B180000630800DEEFE7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7947300F7BDA5008429000000000000E7947300F7BDA500842900000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000360708007C0F1200CE1A1E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EC8C8E00EB898C00E66A6D00E2515400DD333800B2161A007C0F12000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000186B21002173290000630800DEEFE70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E79C7300FFCEAD008431080000000000E79C7300FFCEAD00843108000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000360708007B0F1200D91B2000E2505400E35458000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E3545800E2505400D91B20007B0F120036070800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000021732900298439002173290000630800DEEFE700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EF9C7B00FFD6BD008C31080000000000EF9C7B00FFD6BD008C3108000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007C0F1200AB151900DB272B00E24F5300E7707300EC8B8D00EC8C
      8E00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CE1A1E007C0F12003607080000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000297B310052A55A00298439002173290000630800DEEFE7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFA57B00FFD6CE009439100000000000EFA57B00FFD6CE00943910000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000971316000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000398442005AB56B0052A55A00298439002173290008631800DEEF
      E700000000000000000000000000000000000000000000000000000000000000
      0000F7AD8400FFE7D6009C42180000000000F7AD8400FFE7D6009C4218000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009713160000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000428C4A006BBD73006BBD730052A55A0029733900D6EFDE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7AD8400FFE7DE00A54A210000000000F7AD8400FFE7DE00A54A21000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000360708007C0F1200CE1A1E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EC8C8E00EC8B8D00E7707300E24F5300DB272B00AB1519007C0F12000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004A9452006BBD7300A5DEB50029733900D6EFDE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFB58C00FFE7D600AD52290000000000FFB58C00FFE7D600AD5229000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000360708007B0F1200D91B2000E2505400E35458000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E3545800E2505400D91B20007B0F120036070800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000052945A00A5DEB50029733900D6EFDE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFB58C00FFB58C00E79C730000000000FFB58C00FFB58C00E79C73000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007C0F1200B2161A00DD333800E2515400E66A6D00EB898C00EC8C
      8E00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CE1A1E007C0F12003607080000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005A9C630029733900D6EFDE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000700E11000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005A9C6300D6EFDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6EFDE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FBFFFFFFFFFFFFFFF9FFF11FFF7FFFFFF8FFF11FFE3FF01FF87FF11FFC1FF83F
      F83FF11FF80FFC7FF81FF11FFFFFFEFFF80FF11FFF7FFFFFF81FF11FFE3FF01F
      F83FF11FFC1FF83FF87FF11FF80FFC7FF8FFFFFFFFFFFEFFF9FFFFFFFFFFFFFF
      FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object AnimationTimer: TTimer
    Enabled = False
    OnTimer = AnimationTimerTimer
    Left = 476
    Top = 72
  end
  object SaveDialog1: TTntSaveDialog
    Options = [ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    OnCanClose = SaveDialog1CanClose
    Left = 380
    Top = 71
  end
  object OpenDialog1: TTntOpenDialog
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 444
    Top = 71
  end
end
