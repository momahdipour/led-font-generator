object MainForm: TMainForm
  Left = 130
  Top = 93
  Width = 868
  Height = 627
  BiDiMode = bdLeftToRight
  Caption = 'LED Font Generator'
  Color = clBtnFace
  Constraints.MinHeight = 400
  Constraints.MinWidth = 500
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu
  OldCreateOrder = False
  ParentBiDiMode = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnResize = TntFormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object CharacterLibraryPanelLeftSplitter: TSplitter
    Left = 276
    Top = 56
    Height = 495
    AutoSnap = False
    OnCanResize = CharacterLibraryPanelLeftSplitterCanResize
  end
  object BottomSplitter: TSplitter
    Left = 0
    Top = 551
    Width = 860
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    AutoSnap = False
    OnCanResize = BottomSplitterCanResize
  end
  object CharacterLibraryPanelRightSplitter: TSplitter
    Left = 852
    Top = 56
    Height = 495
    Align = alRight
    OnCanResize = CharacterLibraryPanelRightSplitterCanResize
  end
  object TTntToolButton
    Left = 0
    Top = 0
  end
  object TTntToolButton
    Left = 0
    Top = 0
  end
  object TTntToolButton
    Left = 0
    Top = 0
  end
  object TTntToolButton
    Left = 0
    Top = 0
  end
  object TTntToolButton
    Left = 0
    Top = 0
  end
  object TTntToolButton
    Left = 0
    Top = 0
  end
  object TTntToolButton
    Left = 0
    Top = 0
  end
  object TTntToolButton
    Left = 0
    Top = 0
  end
  object TTntToolButton
    Left = 0
    Top = 0
  end
  object LCDPanel: TTntPanel
    Left = 279
    Top = 56
    Width = 573
    Height = 495
    Align = alClient
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 5
    object LCDTopPanel: TTntPanel
      Left = 1
      Top = 1
      Width = 571
      Height = 29
      Align = alTop
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 1
      object LeftToolSizePanel: TTntPanel
        Left = 0
        Top = 0
        Width = 57
        Height = 29
        Align = alLeft
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        TabOrder = 0
      end
      object LCDToolPanel: TTntPanel
        Left = 57
        Top = 0
        Width = 502
        Height = 29
        Align = alClient
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        TabOrder = 1
        OnResize = LCDToolPanelResize
        DesignSize = (
          502
          29)
        object TntLabel1: TTntLabel
          Left = 354
          Top = 8
          Width = 6
          Height = 13
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = 'x'
          ParentBiDiMode = False
        end
        object LCDPicturePreviewToolBtn: TTntSpeedButton
          Left = 476
          Top = 2
          Width = 23
          Height = 25
          Hint = 'Design Picture Preview'
          AllowAllUp = True
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          GroupIndex = 10
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4D4F4F698692AFC5
            CBFF00FFFF00FFFF00FFFF00FF8D756488705E836A587F66537A614E765C4972
            58446F54404D4F4F2B97C6446574839DA7634833634833FF00FFFF00FF927A6A
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4B504E2C98C885D8EE6394A4FFFF
            FFFFFFFF634833FF00FFFF00FF988170FFFFFFC0A795A18066C8A37DBE987591
            6B4D48778C87D7EE6394A4FFFFFFFFFFFFFFFFFF634933FF00FFFF00FF9D8776
            968274B59F7BF9E5BCFEE4BCF9DEB2DEBB8F8D6C52617B82BB663CB36038FFFF
            FFFFFFFF664B37FF00FFFF00FFA38C7CC2ABA1EEDFBFFFF8DFF9F0D5F2E6CAF5
            D8B3CBA77F8D7769C56C40BC663CFFFFFFFFFFFF684E3AFF00FFFF00FFA89282
            A99786FBF7E5FFFEF9FAFDF4F8F1E0F8E1C1DAB890735B49D07244C66B40FFFF
            FFFFFFFF6C523EFF00FFFF00FFAD9788CDC3BBEAE4D9FFFEFDFFFFFBFDF6E7FD
            EBC6C7AB84998E81DB7949D07244FFFFFFFFFFFF705642FF00FFFF00FFB19C8D
            FFFFFFC7B8AFF4F8EDFFFFF1FDF6DBDEC9A38A6D58EE8753E4804DDA7949FFFF
            FFFFFFFF745A47FF00FFFF00FFB6A193FFFFFFFFFFFFC0B5ADCFBDACB5A489FF
            9863FD925DF68D58EE8653E47F4EFFFFFFFFFFFF79604CFF00FFFF00FFBBA798
            FFFFFFFFFFFFFFAE82FFA87AFFA371FF9D6AFF9863FC935EF68C58EE8653FFFF
            FFFFFFFF7D6552FF00FFFF00FFBFAB9DFFFFFFFFFFFFFFB38AFFAE82FFA979FF
            A372FF9E6AFF9863FC935DF68D58FFFFFFFFFFFF826A57FF00FFFF00FFC3AFA2
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF886F5DFF00FFFF00FFC6B2A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8D7563FF00FFFF00FFC9B6A9
            C6B3A5C3AFA2BFAB9EBCA899B9A395B49F91B09B8BAB9586A69080A18B7B9D85
            75978070927B69FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          ParentShowHint = False
          ParentBiDiMode = False
          ShowHint = True
          OnClick = LCDPicturePreviewToolBtnClick
        end
        object Bevel13: TBevel
          Left = 291
          Top = 5
          Width = 2
          Height = 21
          Anchors = [akTop, akRight]
          Shape = bsLeftLine
        end
        object Bevel14: TBevel
          Left = 423
          Top = 5
          Width = 2
          Height = 21
          Anchors = [akTop, akRight]
          Shape = bsLeftLine
        end
        object LCDWidthEdit: TAdvancedNumEdit
          Left = 363
          Top = 5
          Width = 57
          Height = 21
          Hint = 'Design Width'
          Anchors = [akTop, akRight]
          BevelInner = bvSpace
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BiDiMode = bdLeftToRight
          Color = clBtnFace
          ParentBiDiMode = False
          ParentShowHint = False
          PopupMenu = GeneralEditPopupMenu
          ShowHint = True
          TabOrder = 3
          Text = '25 Cells'
          Suffix = ' Cells'
          Min = 1
          Max = 2147483647
          Value = 25
          MaskActive = True
          OnMaskedChange = LCDHeightEditMaskedChange
        end
        object LCDHeightEdit: TAdvancedNumEdit
          Left = 295
          Top = 5
          Width = 57
          Height = 21
          Hint = 'Design Height'
          Anchors = [akTop, akRight]
          BevelInner = bvSpace
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BiDiMode = bdLeftToRight
          Color = clBtnFace
          ParentBiDiMode = False
          ParentShowHint = False
          PopupMenu = GeneralEditPopupMenu
          ShowHint = True
          TabOrder = 2
          Text = '25 Cells'
          Suffix = ' Cells'
          Min = 1
          Max = 2147483647
          Value = 25
          MaskActive = True
          OnMaskedChange = LCDHeightEditMaskedChange
        end
        object CellSpaceBtn: TPopupSpinEdit
          Left = 428
          Top = 2
          Width = 45
          Height = 25
          Hint = 'Space between cells'
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = '5 '
          ParentBiDiMode = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFF3F1EF63493563493563493563493563
            4935634935634935634935634935F3F1EFFF00FFFF00FFFF00FFFF00FFFF00FF
            B8A494F4E3DAE4CFC2DDC5B7D9BEACD8BCA9D7BAA7D7B9A5D6B7A3D6B6A26349
            35FF00FFFF00FFFF00FFFF00FFFF00FFB8A494F6E8E0F4E3DAF3DFD4F1DBCFF0
            D7C9EED3C4EDD0BFECCDBBD6B7A3634935FF00FFFF00FFFF00FFFF00FFFF00FF
            B8A494F8ECE5F6E8E0F4E3DAF3DFD4634935F0D7C9EED3C4EDD0BFD7B9A56349
            35FF00FFFF00FFFF00FFFF00FFFF00FFB9A595F9F0EBF8ECE5F6E8E063493563
            4935634935F0D7C9EED3C4D7BAA7634935FF00FFFF00FFFF00FFFF00FFFF00FF
            BCA697FBF4F0F9F0EB634935634935F4E3DA634935634935F0D7C9D8BCA96349
            35FF00FFFF00FFFF00FFFF00FFFF00FFBEA89AFCF7F5FBF4F0634935F8ECE5F6
            E8E0F4E3DA634935F1DBCFD9BEAC634935FF00FFFF00FFFF00FFFF00FFFF00FF
            C0AB9CFDFAF9FCF7F5FBF4F0F9F0EBF8ECE5F6E8E0F4E3DAF3DFD4D9C0AF6349
            35FF00FFFF00FFFF00FFFF00FFFF00FFC3AC9DFEFDFCFDFAF9FCF7F5FBF4F0F9
            F0EBF8ECE5F6E8E0F4E3DAE1CDC0634935FF00FFFF00FFFF00FFFF00FFFF00FF
            C4AE9EFFFFFFFEFDFCFDFAF9FCF7F5FBF4F0F9F0EBF8ECE5F6E8E0F4E3DA6349
            35FF00FFFF00FFFF00FFFF00FFFF00FFFBF9F7C3AD9EC2AC9DC0AB9CBEA899BB
            A798BAA496B8A394B8A394B8A394F3F1EFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Layout = blGlyphRight
          Suffix = ' '
          AutoCaption = True
          Title = 'Space between cells:'
          Min = 0
          Max = 200
          Position = 5
          Frequency = 10
          LineSize = 1
          ThumbLength = 20
          TickMarks = tmBottomRight
          ChangeDelay = 500
          OnChange = CellSpaceBtnChange
        end
        object LCDZoomPanel: TTntPanel
          Left = 0
          Top = 0
          Width = 289
          Height = 29
          Align = alLeft
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          ParentBackground = False
          TabOrder = 1
          DesignSize = (
            289
            29)
          object LCDZoomLabel: TTntLabel
            Left = 5
            Top = 7
            Width = 49
            Height = 13
            AutoSize = False
            BiDiMode = bdLeftToRight
            Caption = '&Zoom:'
            FocusControl = ZoomTrackBar
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
          end
          object ZoomTrackBar: TTrackBar
            Left = 51
            Top = 2
            Width = 154
            Height = 26
            Anchors = [akLeft, akTop, akRight]
            Max = 200
            Min = 1
            Frequency = 10
            Position = 18
            TabOrder = 0
            ThumbLength = 18
            OnChange = ZoomTrackBarChange
          end
          object LCDGridLinesCheck: TTntCheckBox
            Left = 208
            Top = 8
            Width = 78
            Height = 14
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Caption = '&Gridlines'
            Checked = True
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            State = cbChecked
            TabOrder = 1
            OnClick = LCDGridLinesCheckClick
          end
        end
      end
      object RightToolSizePanel: TTntPanel
        Left = 559
        Top = 0
        Width = 12
        Height = 29
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 2
      end
    end
    object LCDGrid: TMMAdvancedGrid
      Left = 1
      Top = 30
      Width = 571
      Height = 464
      Cursor = crDefault
      Align = alClient
      BiDiMode = bdLeftToRight
      ColCount = 30
      Ctl3D = True
      DefaultColWidth = 10
      DefaultRowHeight = 10
      DefaultDrawing = False
      FixedCols = 0
      RowCount = 30
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      GridLineWidth = 5
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowMoving, goColMoving, goThumbTracking]
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 0
      OnClick = LCDGridClick
      OnDblClick = LCDGridDblClick
      OnDragDrop = LCDGridDragDrop
      OnDragOver = LCDGridDragOver
      OnExit = LCDGridExit
      OnKeyPress = LCDGridKeyPress
      OnMouseDown = LCDGridMouseDown
      OnMouseMove = LCDGridMouseMove
      OnMouseUp = LCDGridMouseUp
      OnMouseWheelDown = LCDGridMouseWheelDown
      OnMouseWheelUp = LCDGridMouseWheelUp
      OnSelectCell = LCDGridSelectCell
      GridLineColor = 15132390
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
      VAlignment = vtaCenter
      EnhTextSize = False
      EnhRowColMove = True
      SizeWithForm = False
      Multilinecells = False
      OnClickCell = LCDGridClickCell
      OnSelectionChanged = LCDGridSelectionChanged
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
      SelectionRectangle = True
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
      IntelliPan = ipBoth
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
      FixedColWidth = 10
      FixedRowHeight = 10
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
  object TopControlBar: TTntControlBar
    Left = 0
    Top = 0
    Width = 860
    Height = 56
    Align = alTop
    AutoDock = False
    AutoSize = True
    BevelEdges = [beTop, beBottom]
    ParentShowHint = False
    PopupMenu = CustomizeToolBarPopupMenu
    RowSnap = False
    ShowHint = True
    TabOrder = 7
    OnDockOver = TopControlBarDockOver
    OnResize = TopControlBarResize
    object GeneralToolbar: TTntToolBar
      Left = 11
      Top = 2
      Width = 460
      Height = 22
      Align = alNone
      AutoSize = True
      Caption = 'General'
      DisabledImages = MenuImages
      DragKind = dkDock
      EdgeBorders = []
      EdgeInner = esNone
      EdgeOuter = esNone
      Flat = True
      Images = ToolBarImages
      PopupMenu = CustomizeToolBarPopupMenu
      TabOrder = 0
      Transparent = True
      Wrapable = False
      object NewToolBtn: TTntToolButton
        Left = 0
        Top = 0
        Hint = 'New Design'
        Caption = 'NewToolBtn'
        ImageIndex = 0
        OnClick = NewToolBtnClick
      end
      object OpenToolBtn: TTntToolButton
        Left = 23
        Top = 0
        Hint = 'Open Design'
        Caption = 'OpenToolBtn'
        ImageIndex = 1
        OnClick = OpenToolBtnClick
      end
      object SaveToolBtn: TTntToolButton
        Left = 46
        Top = 0
        Hint = 'Save Design'
        Caption = 'SaveToolBtn'
        ImageIndex = 2
        OnClick = SaveToolBtnClick
      end
      object TntToolButton44: TTntToolButton
        Left = 69
        Top = 0
        Width = 7
        Caption = 'TntToolButton44'
        Style = tbsSeparator
      end
      object PrintLCDToolBtn: TTntToolButton
        Left = 76
        Top = 0
        Hint = 'Print Design'
        Caption = 'PrintLCDToolBtn'
        ImageIndex = 3
        OnClick = PrintLCDToolBtnClick
      end
      object TntToolButton6: TTntToolButton
        Left = 99
        Top = 0
        Width = 7
        Caption = 'TntToolButton6'
        Style = tbsSeparator
      end
      object CutToolBtn: TTntToolButton
        Left = 106
        Top = 0
        Hint = 'Cut'
        Caption = 'CutToolBtn'
        ImageIndex = 4
        OnClick = CutToolBtnClick
      end
      object CopyToolBtn: TTntToolButton
        Left = 129
        Top = 0
        Hint = 'Copy'
        Caption = 'CopyToolBtn'
        ImageIndex = 5
        OnClick = CopyToolBtnClick
      end
      object PasteToolBtn: TTntToolButton
        Left = 152
        Top = 0
        Hint = 'Paste'
        Caption = 'PasteToolBtn'
        ImageIndex = 6
        OnClick = PasteToolBtnClick
      end
      object ClearLCDToolBtn: TTntToolButton
        Left = 175
        Top = 0
        Hint = 'Delete'
        Caption = 'ClearLCDToolBtn'
        ImageIndex = 7
        OnClick = ClearLCDToolBtnClick
      end
      object TntToolButton26: TTntToolButton
        Left = 198
        Top = 0
        Width = 7
        Caption = 'TntToolButton26'
        Style = tbsSeparator
      end
      object UndoToolBtn: TTntToolButton
        Left = 205
        Top = 0
        Caption = 'UndoToolBtn'
        ImageIndex = 22
        OnClick = UndoToolBtnClick
      end
      object RedoToolBtn: TTntToolButton
        Left = 228
        Top = 0
        Caption = 'RedoToolBtn'
        ImageIndex = 23
        OnClick = RedoToolBtnClick
      end
      object TntToolButton33: TTntToolButton
        Left = 251
        Top = 0
        Width = 8
        Caption = 'TntToolButton33'
        Style = tbsSeparator
      end
      object CaptionedToolBar: TTntToolBar
        Left = 259
        Top = 0
        Width = 198
        Height = 21
        Align = alNone
        AutoSize = True
        ButtonHeight = 21
        ButtonWidth = 98
        EdgeBorders = []
        EdgeInner = esNone
        EdgeOuter = esNone
        Flat = True
        ShowCaptions = True
        TabOrder = 0
        Transparent = False
        Wrapable = False
        object CharacterLibraryToolBtn: TTntToolButton
          Left = 0
          Top = 0
          AutoSize = True
          Caption = 'Character &Library'
          Style = tbsCheck
          OnClick = CharacterLibraryToolBtnClick
        end
        object TntToolButton11: TTntToolButton
          Tag = 999
          Left = 95
          Top = 0
          Width = 5
          Caption = 'TntToolButton11'
          Style = tbsDivider
        end
        object TextToLCDToolBtn: TTntToolButton
          Left = 100
          Top = 0
          Caption = '&Text to LCD'
          Style = tbsCheck
          OnClick = TextToLCDToolBtnClick
        end
      end
    end
    object ImportExportToolBar: TTntToolBar
      Left = 11
      Top = 28
      Width = 158
      Height = 22
      Align = alNone
      AutoSize = True
      Caption = 'Import & Export'
      DragKind = dkDock
      EdgeBorders = []
      EdgeInner = esLowered
      EdgeOuter = esNone
      Flat = True
      Images = ToolBarImages
      PopupMenu = CustomizeToolBarPopupMenu
      TabOrder = 1
      Transparent = True
      Wrapable = False
      object CodeToLCDToolBar: TTntToolBar
        Left = 0
        Top = 0
        Width = 71
        Height = 21
        Align = alNone
        AutoSize = True
        ButtonHeight = 21
        ButtonWidth = 74
        EdgeBorders = []
        EdgeInner = esNone
        EdgeOuter = esNone
        Flat = True
        ShowCaptions = True
        TabOrder = 0
        Transparent = False
        Wrapable = False
        object CodeToLCDToolBtn: TTntToolButton
          Left = 0
          Top = 0
          AllowAllUp = True
          AutoSize = True
          Caption = 'Cod&e to LCD'
          Style = tbsCheck
          OnClick = CodeToLCDToolBtnClick
        end
      end
      object TntToolButton111: TTntToolButton
        Left = 74
        Top = 0
        Width = 8
        Caption = 'TntToolButton111'
        Style = tbsSeparator
      end
      object ImportPictureToolBtn: TTntToolButton
        Left = 82
        Top = 0
        Hint = 'Import Picture'
        Caption = 'ImportPictureToolBtn'
        ImageIndex = 19
        OnClick = ImportPictureToolBtnClick
      end
      object TntToolButton22: TTntToolButton
        Left = 105
        Top = 0
        Width = 7
        Style = tbsSeparator
      end
      object ExportLCDToolBtn: TTntToolButton
        Left = 112
        Top = 0
        Hint = 'Export Design'
        Caption = 'ExportLCDToolBtn'
        ImageIndex = 20
        OnClick = ExportLCDToolBtnClick
      end
      object QuickExportToolBtn: TTntToolButton
        Left = 135
        Top = 0
        Hint = 'Quick Export'
        Caption = 'QuickExportToolBtn'
        ImageIndex = 21
        OnClick = QuickExportToolBtnClick
      end
    end
    object DesignToolBar: TTntToolBar
      Left = 182
      Top = 28
      Width = 351
      Height = 22
      Align = alNone
      AutoSize = True
      Caption = 'Design'
      DragKind = dkDock
      EdgeBorders = []
      EdgeInner = esNone
      EdgeOuter = esNone
      Flat = True
      Images = ToolBarImages
      ParentShowHint = False
      PopupMenu = CustomizeToolBarPopupMenu
      ShowHint = True
      TabOrder = 2
      Transparent = True
      OnEndDock = DesignToolBarEndDock
      object ClearAllToolBtn: TTntToolButton
        Left = 0
        Top = 0
        Hint = 'Clear All'
        Caption = 'ClearAllToolBtn'
        ImageIndex = 8
        OnClick = ClearAllToolBtnClick
      end
      object TntToolButton222: TTntToolButton
        Left = 23
        Top = 0
        Width = 7
        Caption = 'TntToolButton222'
        Style = tbsSeparator
      end
      object ShiftLeftToolBtn: TTntToolButton
        Left = 30
        Top = 0
        Hint = 'Shift At Cursor Left'
        Caption = 'ShiftLeftToolBtn'
        ImageIndex = 9
        OnClick = ShiftLeftToolBtnClick
      end
      object ShiftRightToolBtn: TTntToolButton
        Left = 53
        Top = 0
        Hint = 'Shift At Cursor Right'
        Caption = 'ShiftRightToolBtn'
        ImageIndex = 10
        OnClick = ShiftRightToolBtnClick
      end
      object ToolButton11: TTntToolButton
        Left = 76
        Top = 0
        Width = 7
        Caption = 'ToolButton11'
        ImageIndex = 2
        Style = tbsSeparator
      end
      object RotateLToolBtn: TTntToolButton
        Left = 83
        Top = 0
        Hint = 'Rotate Left'
        Caption = 'RotateLToolBtn'
        ImageIndex = 11
        OnClick = RotateLToolBtnClick
      end
      object RotateRToolBtn: TTntToolButton
        Left = 106
        Top = 0
        Hint = 'Rotate Right'
        Caption = 'RotateRToolBtn'
        ImageIndex = 12
        OnClick = RotateRToolBtnClick
      end
      object RotateUToolBtn: TTntToolButton
        Left = 129
        Top = 0
        Hint = 'Rotate Up'
        Caption = 'RotateUToolBtn'
        ImageIndex = 13
        OnClick = RotateUToolBtnClick
      end
      object RotateDToolBtn: TTntToolButton
        Left = 152
        Top = 0
        Hint = 'Rotate Down'
        Caption = 'RotateDToolBtn'
        ImageIndex = 14
        OnClick = RotateDToolBtnClick
      end
      object ToolButton16: TTntToolButton
        Left = 175
        Top = 0
        Width = 7
        Caption = 'ToolButton16'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object FlipHorizontalToolBtn: TTntToolButton
        Left = 182
        Top = 0
        Hint = 'Flip Horizontal'
        Caption = 'FlipHorizontalToolBtn'
        ImageIndex = 15
        OnClick = FlipHorizontalToolBtnClick
      end
      object FlipVerticalToolBtn: TTntToolButton
        Left = 205
        Top = 0
        Hint = 'Flip Vertical'
        Caption = 'FlipVerticalToolBtn'
        ImageIndex = 16
        OnClick = FlipVerticalToolBtnClick
      end
      object RotatePage90CWToolBtn: TTntToolButton
        Left = 228
        Top = 0
        Hint = 'Rotate Page 90'#176' CW'
        Caption = 'RotatePage90CWToolBtn'
        ImageIndex = 17
        OnClick = RotatePage90CWToolBtnClick
      end
      object RotatePage90CCWToolBtn: TTntToolButton
        Left = 251
        Top = 0
        Hint = 'Rotate Page 90'#176' CCW'
        Caption = 'RotatePage90CCWToolBtn'
        ImageIndex = 18
        OnClick = RotatePage90CCWToolBtnClick
      end
      object TntToolButton1: TTntToolButton
        Left = 274
        Top = 0
        Width = 8
        Caption = 'TntToolButton1'
        Style = tbsSeparator
      end
      object FRCCWToolBtn: TTntToolButton
        Left = 282
        Top = 0
        Hint = 'Clockwise Free Rotation'
        Caption = 'FRCCWToolBtn'
        ImageIndex = 27
        OnClick = FRCCWToolBtnClick
      end
      object FRCWToolBtn: TTntToolButton
        Left = 305
        Top = 0
        Hint = 'Counter-clockwise Free Rotation'
        Caption = 'FRCWToolBtn'
        ImageIndex = 28
        OnClick = FRCWToolBtnClick
      end
      object SetFRAngleToolBtn: TTntToolButton
        Left = 328
        Top = 0
        Hint = 'Set Free Rotation Angle'
        Caption = 'SetFRAngleToolBtn'
        ImageIndex = 29
        OnClick = SetFRAngleToolBtnClick
      end
    end
  end
  object CharacterLibraryPanel: TTntPanel
    Left = 5
    Top = 56
    Width = 271
    Height = 495
    Align = alLeft
    BiDiMode = bdLeftToRight
    Constraints.MinWidth = 188
    DragKind = dkDock
    ParentBiDiMode = False
    TabOrder = 4
    OnResize = CharacterLibraryPanelResize
    object CharLibInternalSplitter2: TSplitter
      Left = 1
      Top = 191
      Width = 269
      Height = 3
      Cursor = crVSplit
      Align = alTop
      Beveled = True
      ResizeStyle = rsLine
    end
    object CharacterLibraryTopPanel: TTntPanel
      Left = 1
      Top = 7
      Width = 269
      Height = 184
      Align = alTop
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Constraints.MinHeight = 100
      ParentBiDiMode = False
      TabOrder = 0
      object CharLibInternalSplitter1: TSplitter
        Left = 201
        Top = 44
        Height = 140
        Align = alRight
        AutoSnap = False
        Beveled = True
        MinSize = 55
        ResizeStyle = rsUpdate
        OnCanResize = CharLibInternalSplitter1CanResize
        OnMoved = CharLibInternalSplitter1Moved
      end
      object CharactersPanel: TTntPanel
        Left = 204
        Top = 44
        Width = 65
        Height = 140
        Align = alRight
        BiDiMode = bdLeftToRight
        Constraints.MinWidth = 50
        ParentBiDiMode = False
        TabOrder = 1
        DesignSize = (
          65
          140)
        object CharactersPanelHeader: TTntLabel
          Left = 1
          Top = 1
          Width = 63
          Height = 13
          Align = alTop
          Alignment = taCenter
          BiDiMode = bdLeftToRight
          Caption = 'Characters'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
        end
        object Panel2: TTntPanel
          Left = 1
          Top = 118
          Width = 63
          Height = 21
          Align = alBottom
          AutoSize = True
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          TabOrder = 1
          DesignSize = (
            63
            21)
          object InsertCharAtCursorBtn: TTntBitBtn
            Left = 2
            Top = 0
            Width = 60
            Height = 21
            Hint = 'Insert selected character at the current cursor location'
            Anchors = [akLeft, akTop, akRight]
            BiDiMode = bdLeftToRight
            Caption = 'Insert'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = InsertCharAtCursorBtnClick
            Layout = blGlyphRight
            NumGlyphs = 2
          end
        end
        object CharactersListBox: TWheelListBox
          Left = 1
          Top = 14
          Width = 61
          Height = 103
          Hint = 'Drag & Drop characters onto the design'
          Anchors = [akLeft, akTop, akRight, akBottom]
          BiDiMode = bdLeftToRight
          DragMode = dmAutomatic
          ItemHeight = 13
          ParentBiDiMode = False
          ParentShowHint = False
          PopupMenu = CharactersListPopupMenu
          ShowHint = True
          Sorted = True
          TabOrder = 0
          OnClick = CharactersListBoxClick
          OnDblClick = CharactersListBoxDblClick
          OnKeyPress = CharactersListBoxKeyPress
          OnMouseDown = CharactersListBoxMouseDown
          OnMouseMove = CharactersListBoxMouseMove
          OnMouseWheel = CharactersListBoxMouseWheel
        end
      end
      object CategoriesPanel: TTntPanel
        Left = 0
        Top = 44
        Width = 201
        Height = 140
        Align = alClient
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        TabOrder = 0
        object CategoriesPanelHeader: TTntLabel
          Left = 1
          Top = 1
          Width = 199
          Height = 13
          Align = alTop
          Alignment = taCenter
          BiDiMode = bdLeftToRight
          Caption = 'Categories'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
        end
        object CategoryFolderTreeView: TMMFolderTreeView
          Left = 1
          Top = 14
          Width = 199
          Height = 125
          Align = alClient
          AutoExpand = True
          BiDiMode = bdLeftToRight
          HideSelection = False
          HotTrack = True
          Indent = 19
          ParentBiDiMode = False
          ReadOnly = True
          SortType = stText
          TabOrder = 0
          OnKeyPress = CategoryFolderTreeViewKeyPress
          OnFolderChange = CategoryFolderTreeViewFolderChange
          AllowToCancelRefresh = True
          CancelDelay = 2000
        end
      end
      object CharLibPathPanel: TTntPanel
        Left = 0
        Top = 22
        Width = 269
        Height = 22
        Align = alTop
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnResize = CharLibPathPanelResize
        object CharLibPathLabel: TTntLabel
          Left = 2
          Top = 2
          Width = 265
          Height = 18
          Align = alClient
          BiDiMode = bdLeftToRight
          Caption = 'CharLibPathLabel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          OnClick = CharLibPathLabelClick
          OnMouseEnter = CharLibPathLabelMouseEnter
          OnMouseLeave = CharLibPathLabelMouseLeave
        end
      end
      object CharLibPanelHeader: TTntPanel
        Left = 0
        Top = 0
        Width = 269
        Height = 22
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        BiDiMode = bdLeftToRight
        Caption = 'Character Library'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 3
        DesignSize = (
          269
          22)
        object CharLibExpandBtn: TTntSpeedButton
          Left = 249
          Top = 2
          Width = 18
          Height = 17
          Hint = 'Open/Close'
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Flat = True
          Glyph.Data = {
            3E020000424D3E0200000000000036000000280000000D0000000D0000000100
            18000000000008020000120B0000120B00000000000000000000FF00FFE0D5C8
            B59A7BB59A7BB59A7BB59A7BB59A7BB59A7BB59A7BB59A7BB59A7BE0D5C8FF00
            FF00E5DCD1B59A7BF0EBE4FEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFD
            F0EBE4B59A7BE0D5C800B59A7BF0EBE4FEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFE
            FEFDFEFEFDFEFEFDFEFEFDF0EBE4B59A7B00B59A7BF7F4F0FEFEFD995B45995B
            45FEFEFDFEFEFDFEFEFD995B45995B45FEFEFDFEFEFDB59A7B00B59A7BFEFEFD
            FEFEFDFEFEFD995B45995B45FEFEFD995B45995B45FEFEFDFEFEFDFEFEFDB59A
            7B00B59A7BFEFEFDFEFEFDFEFEFDFEFEFD995B45995B45995B45FEFEFDFEFEFD
            FEFEFDFEFEFDB59A7B00B59A7BFEFEFDFEFEFDFEFEFDFEFEFDFEFEFD995B45FE
            FEFDFEFEFDFEFEFDFEFEFDFEFEFDB59A7B00B59A7BFEFEFDFEFEFD995B45995B
            45FEFEFDFEFEFDFEFEFD995B45995B45FEFEFDFEFEFDB59A7B00B59A7BFEFEFD
            FEFEFDFEFEFD995B45995B45FEFEFD995B45995B45FEFEFDFEFEFDFEFEFDB59A
            7B00B59A7BFEFEFDFEFEFDFEFEFDFEFEFD995B45995B45995B45FEFEFDFEFEFD
            FEFEFDFEFEFDB59A7B00B59A7BF0EBE4FEFEFDFEFEFDFEFEFDFEFEFD995B45FE
            FEFDFEFEFDFEFEFDFEFEFDF0EBE4B59A7B00E0D5C8B59A7BF0EBE4FEFEFDFEFE
            FDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDF0EBE4B59A7BE0D5C800FF00FFE0D5C8
            B59A7BB59A7BB59A7BB59A7BB59A7BB59A7BB59A7BB59A7BB59A7BE0D5C8FF00
            FF00}
          Layout = blGlyphRight
          Margin = 0
          ParentShowHint = False
          ParentBiDiMode = False
          ShowHint = True
          Spacing = 0
          OnClick = CharLibExpandBtnClick
        end
        object CharLibOrganizerBtn: TTntSpeedButton
          Left = 226
          Top = 2
          Width = 17
          Height = 17
          Hint = 'Organize'
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFD6D7D642794A3F7447396B4137663F36623D33
            5E3B3058382E56372C52342A4F34284B30ECDED6FF00FFFF00FFC2C4C42A2D2B
            74C487F8F5F3EFE9E6EAE1DDE5DBD5DFD3CDDBCCC4D5C5BCD0BDB4CBB8ADC7B1
            A6294B31FF00FFFF00FF959090B3B0AE4C8D533C6D4337663F35623D345F3D33
            5C3B3159393056382E53362D5134B7A49A2C5033FF00FFFF00FFC3C5C52B2E2C
            4A875184CA9457AE694DA55C47A3593E9B4D3A994C329342278B362F55378C4E
            00A95D00AA5E00FF00FF76716EB3B0AE4D8D558ACE9871C2846CBE8167BB7C62
            B8775CB47357B16F2F913D325939E59100FF8200FF9000AA5E00C3C5C52B2E2C
            5094588FD19E79C58B73C2876EBF8268BC7E64B97A5EB575389848345E3DE591
            00FF9400FF9300AB5E0076726FB3B0AE53995BA1D8AB7FC9907AC78C75C48870
            C0836BBE8066BA7B429E5336623F006E00008500008500FF00FFC3C5C52B2E2C
            569F5EA4DBB086CD9681CB917DC88E77C48A73C2856DBF814FA75F3A674239BB
            6625B64D32C45F008500787371B3B0AF5AA461A8DEB38CD19B87CF9783CB937E
            C98F7AC58B74C38754AA633C6D4438BA6531C5603DCF70008500C3C5C52B2E2C
            5DA964ACE1B690D59E8DD29C88CF9885CD947FC9907BC68D59AD673F7247006F
            8E0086AC0086ACFF00FF696866B3B0AF5FAF66B0E2B996D7A392D5A18ED29D8A
            D09987CD9681CB925EB06C42774A00BCE500C2FF00C8FF0085ACC3C5C52B2E2C
            62B369B2E3BB9BDAA797D8A494D6A28FD49E8CD09B87CE976CBA79457D4D00BC
            E500C1FF00C4FF0085AC645E5EBBBAB864B76BB2E4BB9EDCAA9CDBA798D9A595
            D7A291D49E8DD29C71BE7E48825000799C00799C00799CFF00FFD9D8D9333732
            66BB6DB2E4BBB2E4BBB1E3BAB1E3BAADE1B7AADEB5A9DDB39AD8A74B8753B8A5
            9B80AB86FF00FFFF00FFF0EDEBBBBAB868BF6F67BB6D65B66A62B26961B0675F
            AB665DA7635AA361589F5F5EAA65EDDED7FF00FFFF00FFFF00FF}
          Layout = blGlyphRight
          Margin = 0
          ParentShowHint = False
          ParentBiDiMode = False
          ShowHint = True
          Spacing = 0
          OnClick = CharLibOrganizerBtnClick
        end
        object Bevel15: TBevel
          Left = 246
          Top = 3
          Width = 2
          Height = 15
          Anchors = [akTop, akRight]
          Shape = bsLeftLine
        end
      end
    end
    object CharPreviewPanel: TTntPanel
      Left = 1
      Top = 194
      Width = 269
      Height = 300
      Align = alClient
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 1
      OnResize = CharPreviewPanelResize
      object CharPreviewToolPanel: TTntPanel
        Left = 1
        Top = 1
        Width = 267
        Height = 32
        Align = alTop
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        TabOrder = 0
        DesignSize = (
          267
          32)
        object PreviewZoomLabel: TTntLabel
          Left = 4
          Top = 6
          Width = 49
          Height = 13
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 'Z&oom:'
          FocusControl = PreviewZoomTrackBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
        end
        object CharPreviewGridLinesCheck: TTntCheckBox
          Left = 186
          Top = 7
          Width = 78
          Height = 17
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = 'G&ridlines'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          State = cbChecked
          TabOrder = 1
          OnClick = CharPreviewGridLinesCheckClick
        end
        object PreviewZoomTrackBar: TTrackBar
          Left = 48
          Top = 3
          Width = 135
          Height = 24
          Anchors = [akLeft, akTop, akRight]
          Max = 200
          Min = 1
          Frequency = 20
          Position = 10
          TabOrder = 0
          ThumbLength = 18
          OnChange = PreviewZoomTrackBarChange
        end
      end
      object CharPreviewGridStatusBar: TStatusBar
        Left = 1
        Top = 283
        Width = 267
        Height = 16
        Hint = 'Height x Width'
        BiDiMode = bdLeftToRight
        Panels = <>
        ParentBiDiMode = False
        ParentShowHint = False
        ShowHint = True
        SimplePanel = True
      end
      object CharPreviewGrid: TMMAdvancedGrid
        Left = 1
        Top = 33
        Width = 267
        Height = 250
        Cursor = crDefault
        Align = alClient
        BiDiMode = bdLeftToRight
        ColCount = 8
        Ctl3D = True
        DefaultColWidth = 10
        DefaultRowHeight = 10
        DefaultDrawing = False
        FixedCols = 0
        RowCount = 8
        FixedRows = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        GridLineWidth = 1
        Options = [goVertLine, goHorzLine, goRangeSelect, goThumbTracking]
        ParentBiDiMode = False
        ParentCtl3D = False
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 1
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
        EnhRowColMove = False
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
        FixedColWidth = 10
        FixedRowHeight = 10
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
    object CharacterLibraryGrabber: TTntPanel
      Left = 1
      Top = 1
      Width = 269
      Height = 6
      Cursor = crSizeAll
      Align = alTop
      BevelInner = bvLowered
      BiDiMode = bdLeftToRight
      DragMode = dmAutomatic
      ParentBiDiMode = False
      TabOrder = 2
    end
  end
  object RightToolPanel: TTntPanel
    Tag = 5
    Left = 855
    Top = 56
    Width = 5
    Height = 495
    Align = alRight
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 3
    OnDragOver = RightToolPanelDragOver
    OnResize = RightToolPanelResize
  end
  object LeftToolPanel: TTntPanel
    Tag = 5
    Left = 0
    Top = 56
    Width = 5
    Height = 495
    Align = alLeft
    TabOrder = 2
    OnDragOver = LeftToolPanelDragOver
    OnResize = LeftToolPanelResize
  end
  object MainStatusBar: TTntStatusBar
    Left = 0
    Top = 554
    Width = 860
    Height = 19
    AutoHint = True
    BiDiMode = bdLeftToRight
    Panels = <
      item
        Width = 420
      end
      item
        Width = 160
      end
      item
        Alignment = taCenter
        Text = '(1,1)'
        Width = 80
      end
      item
        Width = 50
      end>
    ParentBiDiMode = False
  end
  object OldLCDGrid: TMMAdvancedGrid
    Left = 121
    Top = 163
    Width = 260
    Height = 97
    Cursor = crDefault
    BiDiMode = bdLeftToRight
    ColCount = 5
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
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
    ParentBiDiMode = False
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 6
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
    IntelliPan = ipVertical
    URLColor = clBlue
    URLShow = False
    URLFull = False
    URLEdit = False
    ScrollType = ssNormal
    ScrollColor = clNone
    ScrollWidth = 21
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
    BackGround.Top = 0
    BackGround.Left = 0
    BackGround.Display = bdTile
    BackGround.Cells = bcNormal
    Filter = <>
  end
  object TextToLCDGrid: TMMAdvancedGrid
    Left = 644
    Top = 220
    Width = 320
    Height = 120
    Cursor = crDefault
    BiDiMode = bdLeftToRight
    ColCount = 5
    DefaultColWidth = 6
    DefaultRowHeight = 6
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
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
    ParentBiDiMode = False
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 8
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
    IntelliPan = ipVertical
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
    FixedColWidth = 6
    FixedRowHeight = 6
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
    BackGround.Top = 0
    BackGround.Left = 0
    BackGround.Display = bdTile
    BackGround.Cells = bcNormal
    Filter = <>
  end
  object RegistrationPanel: TTntPanel
    Left = 656
    Top = 104
    Width = 561
    Height = 360
    BevelInner = bvLowered
    BevelWidth = 5
    BiDiMode = bdLeftToRight
    Ctl3D = False
    ParentBiDiMode = False
    ParentBackground = True
    ParentCtl3D = False
    TabOrder = 0
    Visible = False
    OnMouseMove = RegistrationPanelMouseMove
    object FarsiBtnBorderImage: TImage
      Left = 460
      Top = 14
      Width = 83
      Height = 30
      Stretch = True
      Visible = False
    end
    object En3: TLabel
      Left = 20
      Top = 43
      Width = 521
      Height = 182
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = 'Dear customer,'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object Far8: TBevel
      Left = 204
      Top = 31
      Width = 337
      Height = 6
      Shape = bsTopLine
    end
    object Far2: TImage
      Left = 14
      Top = 43
      Width = 531
      Height = 177
      AutoSize = True
      Picture.Data = {
        07544269746D6170BA730100424DBA73010000000000E6030000280000001302
        0000B10000000100080000000000D46F01007412000074120000EC0000000000
        000000000000330000006600000099000000CC000000FF000000003300003333
        00006633000099330000CC330000FF3300000066000033660000666600009966
        0000CC660000FF66000000990000339900006699000099990000CC990000FF99
        000000CC000033CC000066CC000099CC0000CCCC0000FFCC000000FF000033FF
        000066FF000099FF0000CCFF0000FFFF00000000330033003300660033009900
        3300CC003300FF00330000333300333333006633330099333300CC333300FF33
        330000663300336633006666330099663300CC663300FF663300009933003399
        33006699330099993300CC993300FF99330000CC330033CC330066CC330099CC
        3300CCCC3300FFCC330000FF330033FF330066FF330099FF3300CCFF3300FFFF
        330000006600330066006600660099006600CC006600FF006600003366003333
        66006633660099336600CC336600FF3366000066660033666600666666009966
        6600CC666600FF66660000996600339966006699660099996600CC996600FF99
        660000CC660033CC660066CC660099CC6600CCCC6600FFCC660000FF660033FF
        660066FF660099FF6600CCFF6600FFFF66000000990033009900660099009900
        9900CC009900FF00990000339900333399006633990099339900CC339900FF33
        990000669900336699006666990099669900CC669900FF669900009999003399
        99006699990099999900CC999900FF99990000CC990033CC990066CC990099CC
        9900CCCC9900FFCC990000FF990033FF990066FF990099FF9900CCFF9900FFFF
        99000000CC003300CC006600CC009900CC00CC00CC00FF00CC000033CC003333
        CC006633CC009933CC00CC33CC00FF33CC000066CC003366CC006666CC009966
        CC00CC66CC00FF66CC000099CC003399CC006699CC009999CC00CC99CC00FF99
        CC0000CCCC0033CCCC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FF
        CC0066FFCC0099FFCC00CCFFCC00FFFFCC000000FF003300FF006600FF009900
        FF00CC00FF00FF00FF000033FF003333FF006633FF009933FF00CC33FF00FF33
        FF000066FF003366FF006666FF009966FF00CC66FF00FF66FF000099FF003399
        FF006699FF009999FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CC
        FF00CCCCFF00FFCCFF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFF
        FF00000000000D0D0D001A1A1A00282828003535350043434300505050005D5D
        5D006B6B6B00787878008686860093939300A1A1A100AEAEAE00BBBBBB00C9C9
        C900D6D6D600E4E4E400F1F1F100FFFFFF00AC82828282828282828282828282
        828282828282828282ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC8181818181818181818181818181818181
        8181818181008182ACACACACACACACACACACACACACACACACACACACAC81A6D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7AC81ACACACACACACACACACACACACACACACACACACACAC820081AC57575757
        57575757575757505757575757575757A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC825781818181818181
        505781508181818181818157AC0081AC81D7D7D7D7D7D7578157575757D7D7D7
        D7D7D757A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7AC8257D7D7D7D7D7D781817B578157D7D7D7D7D7D781
        AC0081AC81D7D7D7D7D78157565757815781D7D7D7D7D757A6A6D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC82
        57D7D7D7D7D77BD75757577B5781D1D7D7D7D781AC0081AC81D7D7D7D7D781A6
        AC577B57AC81D7D7D7D7D757A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC8257D7D7D7D7D7AC81AC8157A6
        AC57D7D7D7D7D781AC0081AC81D7D7D7D7D7AC5657D7D75750ACD7D7D7D7D757
        A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7AC8257D7D7D7D7D7AC5757ADD75750ACD7D7D7D7D781AC0081AC
        81D7D7D7D7D7D7D757ACAC57D7D7D7D7D7D7D757A6A6D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC8257D7D7D7
        D7D7D7D757ACAC82D7D7D7D7D7D7D781AC0081AC81D7D7D7D7ACACD7D75757D7
        D7ACACD7D7D7D757A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7AC565681ACD7D7D7D7D7D7D7D7D7D7ACACD7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC8257D7D7D7D7ACACD7D77B57D7D7D782D7
        D7D7D781AC0081AC81D7D7D7818281D7D75781D7D7828281D7D7D757A6A6D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7AC81ACD7D7D7D7D7D7D7D7AC2B2A81D7D7D7D7D7D7D7D7D7D7D7D7
        2B2B4F2B2B56D7D7D7D7D7D7D7D7AC562BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7AC8257D7D7D78281A6D7D78257D7ACA6AC57D7D7D781AC0081AC81D7AC81
        ACACD757D77B81D757D7ACAC82ACD757A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7815656D7D7D7D7
        D7D7D7D7ACACAC56A5D7D7D7D7D7D7D7D7D7D7EA2BEAD7D7AC2B56D7D7D7D7D7
        D7D7D7D7AC2BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC8257D782AC81ACAC7B
        D7AC57D757D7ACD757ACD781AC0081AC81D78257D7508257D77B81D77B8157D7
        5782D757A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7AC8181ACD7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D756D7D7D7
        D7D7D7D7D7D7D7D77AD7D7D75656ACD7D7D7D7D7D7D7D7D7D781ACD7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7AC8257ADAC57AC57AC57ACAC57D782AC57D75782D781
        AC0081AC8157AC50D7AC57D7D75781D7D757ADAC56AC5757A6A6D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC2B
        D7AC2B2A2A2B2A2A56562B56812B568181D7D781D72B2B2BACD7D7D7562B56D7
        2B2B812B2B81D7AC81D7ACACD7D7AC2B2B2A5581E9D7D7D7D7D7D7D7ACD7D7D7
        AC2B2A2B812B56A581D7D7D7D7562A4F812B56562B818181D7812A2B81D7AC82
        5757AC5782D757D7D78257D7D757ACD750AC5781AC0081AC57575757ACADADD7
        AD5757D7D7D7D78257575756A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D75656ACD7D7D7D7812B8156
        2B812B2B2BACEB56D781817A56D7D7D75681562B55812B56812B2A2B2BD7AC81
        D7D7AC562B8156552B5681ACD7D7D7D7D7D7D7D7D7AC81562B81562A2BACD7D7
        D75656562B81562B812B2B2BD7AC81812BD7AC825757507B57D7D7D7AD5757AC
        D7D7ADAC57575756AC0081AC5781828157ACD7A657578157ACAC828157578257
        A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D781D7D7D7D7D7D7D7D7D7D7E9D7EAAB56ACE956D7D7D781
        81D7D7D7D7D7D72BACD7D7D7D756818156D78181D7D7D7564FD7A5AC562A2A2B
        81D7D7D7D7D7D7D7D7D7D7D7E9D7D78181ABD7D7D7D7D7D7D7D7D7E9D7D7AC56
        D7D7D7AC4FD7AC82578182578282ACAC5782578281A6A68181ACAC57AC0081AC
        815050D7D757505757D75757575757ADD7505757A6A6D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7E9D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC56D7D7552BD7D7D7D7D7D7D72BD7D7D7D7
        D7AC2B2BACD78181D7D7D7D7EAD7812B5681ACD7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7EAD7D7D7D7D7D7D7D7D7D7AC2A81D7AC8257D756D7
        AD5757575757D757575757ACD7565081AC0081AC57ACAC5757D7D7AD5782AC57
        D7D7D757577B8157A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7565681D7D7D7D7D7D7D72B56
        ACD7AC56D7D7ACE9D7D7D7D7D7D7AC2BD7D7D7D7D7D756ACD7D78181D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D72B
        2BABD7D7D7D7D7D7D7D7D7ACD7D7AC82577B578157ADD7D7AC818182D7D7D782
        57AC5757AC0081AC57575757ACACACD7D75757D7D782D78257575756A6A6D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7ACACACD7D7D7D7D7D7D78181ACD7AC56D7D7D7D7D7D7D7D7
        D7D7EA81D7D7D7D7D7D7D7D7D7D75681D7D7D7D7D7D7D7D78156D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACACD7D7D7D7D7D7D7D7D7D7D7
        D7D7AC82575757577BD757D7D78257D7D781ACAD50575756AC0081AC8157AC50
        D757AC7BD77B81D757AC57AC56A65757A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D78181D7D7AC56D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D781ACD7D7D7D7D7D7D7D7AC81D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC825781AC5782818281
        AC8257D757AD57D750AD5781AC0081AC81D75757D7508257D77B81D77B8157D7
        5781D757A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7AC8257D78282AC81AC82ACAC57D757A657D75757D781
        AC0081AC81D7D7D782D7D757D77B81D757D7D757D7ACD757A6A6D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC82
        57D7ACD757D7D757D7AC57D781ADD757D7D7D781AC0081AC81D7D7D7AC5757D7
        D75757D7D75757ACD7D7D757A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7ACACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC8257D7D7D7D15757D7D78157D7
        D75757ACD7D7D781AC0081AC81D7D7D7D7ADD7D7AD817BD7D7D7D7D7D7D7D757
        A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D781D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7AC8257D7D7D7D7D7D7D7AC5782ACD7D7D7D7D7D7D781AC0081AC
        81D7D7D7D7D7D7AC57D7D757ACD7D7D7D7D7D757A6A6D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D781D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACACD7D7D7D7D7D7
        D7ACD7D7D7D7D7D7D756E9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7ACEAD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7815681ACD7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7C9C2C9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D0D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC8257D7D7D7
        D7D7D7D757ACD77B81D7D7D7D7D7D781AC0081AC81D7D7D7D7D7815782D7D782
        5081D7D7D7D7D757A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC2BEAD7
        D7D77AD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D78181ACD7D7562A2BD0D7D7D7
        D7D7D7D7AC2BEAD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D781ACD781
        ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D02BACD7D7D7
        D7D7D7D781ACD7D7D7D7D7D7D7D7AC2BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7812B2B56ACD7D7AC562B81D7D7D7D7D74F2A2BE9D781ACAC8181ACD7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC2B2B4F81D7D7D7AC81ACD7D7AC81ACD7
        D7D7D7D7D7D7AC81ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7812B2BE9
        EA2BACD7D7D7AC81ACD7D7D7D7D7D7D7D7D7D7D7D7D77A2A2BACD7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        812B2BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7812BD7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7EB8181D7D7D7D7D7D7D7D7D7D7562A2B2B2B
        ACD7ACACACD7D7D7814F2BACD756ACD7D7D7D7D7D7AC2BEAD7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7C9D0D7D7D7D7D7D79797979797D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D09E979DC9D7D7D7C99D97D7D7D7D7
        D7D7D7D7D0D0D0D7D7D7D7D7D7D7AC8257D7D7D7D7D78250A65781A65757D7D7
        D7D7D781AC0081AC81D7D7D7D7D781AD57815757D757D7D7D7D7D757A6A6D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D756D7D7D7D756D7EBD7D7D7D7D7D7D7
        D7D7D7D7D7D7D7AC81562BACACACAC8156D7D7D7D7D7D7D7D756D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D75656AC5656ACD7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D756ACD7D7D7D7D7EA562B2A81D7D7D7D7D7
        D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC2B567A562B56D7D7
        D7AC2BACD7D7D7ACACAC8156D7565681565581D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D72B567A562B2BACAC2B2B2BACD7AC812B7AD7D7D7D7D7EA81562BACD7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D78156D77AACD7D7AC2B2B2BACD7D7
        D7D7D7D7D7D7D7D7D7D7ACAC812BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACACAB2BACD7D7D7D7D7D7D7
        D7D7D7D7D7D7D7EAACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7AC81562BD7D7D7D7D7D7D7D7D756E9D7D7AC56D77A5681D7D7D7D7D78156
        D781ACD7D7D7D7D7D7D756D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D0C29ED7D7D7D7D7D79ED7D7D7CFC9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D79E97C8C29E97D0D7D7D7C9C2D7D7D7D7D7D7D7C9C2C9D7D7D7D7D7
        D7D7AC8257D7D7D7D7D781AC57A65681AC57D7D7D7D7D781AC0081AC81D7D7D7
        D7D7AC57817B575757ACD7D7D7D7D757A6A6D7D7AC2B2B56ACD7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D756D72BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D78156
        D7D7D7D781ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7ACAB81ACD7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7AC2BD7D7D7D7D7EAAC81ACACD7D7D7D7D7D7AC
        D7D7D7D7D7D7D7D7D7D7D7AC81D7D7D7D75681D7D7D7AC81D7D7D7D7D7D7D781
        ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D756D7D7D7D78156D7D7
        D7812BD7D7D7AC2BACD7D7D7D7D7D7D7AC2BD7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D756EAD7D7D7D7D7D7D78156D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7AC81D7D7D7ACD7D7D7D7D7D7D7D7D7ACA581ACD7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7AC81D7D7D7D7D7D7D7D7D7D7D7D7EAACACACD7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D75681D7D7D7D7D7
        D7D7D781D7D7D7D781D7D7D7D7D7D7D7D7D7D756D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7ACD7D7D7D0D0C9D0D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7C9
        D7D7D7D7C9D7D7D7D7D7D7D7D7D7D7D0D7D7D7D7D7D7D7D7D79ED7D7D7D7D09E
        D7D7D7D79ED7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC8257D7D7D7D7D7AC82
        5781565757ACD7D7D7D7D781AC0081AC81D7D7D7D7D7D7D75081AC57D7D7D7D7
        D7D7D757A6A6D7D74F56564F56D7D781D7D7D7D7D7D7D02B2A2BEAD7D7D72B56
        2A2B2B2A55D7D781D72B2B2BACD7D7D7D7D7D72BD7D7D7562B2A2A2B2B2B2B2A
        2A2BEAD7D7D7D7EB812B2A2B56D7D7D7D7D7AC2B2B81AC2B2B812B2B81D7D7AC
        2B2B81562B562B2B56D7D7D7D7562A2A2B2B2A2B812B2B812B2B56D7D7D7D7D7
        D7AC8181D7D7D7812B2A2A2B2A2B7A562B56812B2B2B2B2B2B2A2B56D7D7D7AC
        A5D7D7812B2A81D7D7D7812A2B56D7D7D7D7562B2A2B812B2B812B56E981D7D7
        AC2B2A2B55ACD7D7D7D7D781D7D7AC2B2A56D7D7D7AC56ACD7D7D78181D7D7D7
        81D7D7D7D756ACD7D7D7D7D7562B81D081EBD7812B2B56D7D7D7EA2B2A2BACD7
        D7D7D7D7AC56EAD7D7D72B2BD7AC2A2B56D7D7D7812B2A2BA5562A562B2B81D7
        D7D7EA562A2A2B2A2A2B812B2B2B81D7AC2A2B56D7D7D7AC2A2B56D7D7D7812B
        2A2B5681EAD7D7D7D7D7D7D7562A2A2A2A2B2B81D7D7D74F2B5681EAD7812B2A
        2B812B2B81D7ACACD7D7D7D7D7D756D72B2B2BACD7D7D7D7D7D7D7D72B2B2B80
        D7D781D7D7D7D72B2A2BACD7D72B2B814F2A2BEAD7D7D72BACD79E9797979797
        97C99797C997C2C2C29E97C99E9797D7D7D7D7D0D7D7D7D79797979DD0D7D097
        97D0C297C297C2D7C9D7D7D7D7C9D7D7D0979797D7D7D7D79797979ED0D7D097
        97C2D7D79E9797D0D7D7AC8257D7D7D7D7D7D7D75757D750D7D7D7D7D7D7D781
        AC0081AC81D7D7D7D7D7D7575057575757D7D7D7D7D7D757A6A6D7D781D7D7D7
        56D7D756ACD7D7D7812A2B56815681D7D7D7AC2B2A2B568156ACEB56D781817A
        56D7D7D7D7D7812BD7D7D7565656562B56552B56815681D7D7D72B2B2B7A8181
        5681D7D7D7D7AC56812B2B56562B818155D7D7814F812B2B562B80812BEAD7D7
        AC2BACD0D7D7EAAC5656812B56814FACD7D7D7D7D7562B81D7D7D72B81ACEAD7
        D7AC815681562B812B56562B2B81812BEAD7D7D781D7D75681ACD7D7D7D78156
        812BACD7D7D75656567A2B81562B81562A2B81D7565681815656D7D7D7D7D7A5
        D7D78156ACEAD7D7D72B2BACD7D7D72BACD7D7D756D7D7D7AC2BD7D7D7AC2B2B
        2B81562B2B81D75656812BD7D7D7D72B81567AD7D7D7D7D72B2BACD7D7AC5656
        ACAC81812BD7D7D781562B812B56562B81812BD7D7D78155ACE9D7D7D7AC567A
        81562BACAC81814FACD7D7D7818156ACD7D7AC562B81562B2B5681ACD7D7D7E9
        2B81ACD0ACAC81567AD7AC2B81564F2B56565681802B81812BD7AC81D7D7D7D7
        D78156D781818156D7D7D7D7D7D7D7AC2B7A812BD7D756ACD7D7D72B815656D7
        812B812B56815681D7D7D7D7D7D09ED0D7D7D7D7D09EC8C997C9C29EC2C2C99E
        C2C99EC9D7D7D7D7D7D7D7C997C9C9C29DD0979EC9979E9E97C9C29797C2D7D7
        D7D0D7D7D09ED0D7D7D7D7D797C9C9C2C2C997C2C997D7D7CFC9C9C2D7D7AC82
        57D7D7D7D7D7D7827B57575757D7D7D7D7D7D781AC0081AC81D7D7D7D7D78157
        575757815781D7D7D7D7D757A6A6D7D7A5D7D7D756D7D756ACD7D7D7AC5656AC
        D756ACD7D7D7D7AC81D7D7D72BACE956D7D7D78181D7D7D7D7D7AC81D7D7D7AC
        2BACD72B56AC8156D756ACD7D7D7567A56D7D7D78181D7D7D7D7D7D7D7AC2BD7
        D7D7D7AC4FD7D756ACD7EA5656D7D7D72BD7D7D7ACACD7D7D7D7D7D7D7D7D7D7
        D7D72BD7D7D7D7D7D7815681D7D7D781D7D7D7D7D7D7D7D7D7D7E9D7EB5681AC
        2BACD72BD7D7D7D7D7D7D7AC56ACD7D7D7D7D7D7D72BD7D7D7D7AC2BACD7D7D7
        D7D7D7D7565681D72BD7D7D7AC56D7D7D7D7D7D7D7D7D75681ACD7D7D7562BAC
        D7D7D756EAD7D7D74FEAD7D7D756D7D7D7EB555681D7D75656ACD72BD7D72BD7
        D7D7D7D7D78181D7D7D7D7D7562BD7D7D7D72B2BD7D7D7AC2BD7D7D7D72B81D7
        D75656EAD7D72BD7D7D7ACACD7D7D7D7D7D7D7D7D75656ACD7D7AC2BEAD7D7D7
        D7AC55D7D7D7D75656EB81AC552A2A2BACD7D7D781D7D7D7D7D7D7D756D78181
        D781AC562A2A2A81D7D7D7D72BD78181D7D7D7D7D781ACD7D7D78181D7D7D7D7
        D7ACACD7D7D7D72BD7D756ACD7D7D7D7D78156D78081D7EAEBD756ACD7D7D7D7
        D7D0D0D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7C2D0D7D7D7D7D7C9D7D7
        D7D7D7D79E97C9D7D7D7C2C2D7D7D7C2C9C9D7D7D7D7D7D7D79EC9D0D7D7D7D7
        D7D7D7D09797D0D7D797D7D7D7D7C9C9D7D7AC8257D7D7D7D7D7818157575750
        5781D7D7D7D7D781AC0081AC81D7D7D7D7D781AC577B81ACAC81D7D7D7D7D757
        A6A6D7D7D7D7D7AC2BD7D755D7D7D7D7D7AC2BD7D7ACD7D7D7D7D7D7D7D7D7D7
        ACD7AC56D7D7552BEAD7D7D7D7D7D7D7D7D7D7D7EAD7D755AC2B2A81D7ACD7D7
        D7D7D78181D7AC562BD7D7D7D7D7D7D7D7AC56D7D7D7D7D7ACD7D756ACD7D7D7
        D7D7D7D7ACD7D7D7D7E9D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7EA56EA
        D7D7D7E9D7D7D7D7D7D7D7D7D7D7D7D7D7EB562A2BD7D7ACD7D7D7D7D7D7D7D7
        AB2B56D7D7D7D7D7D7ACD7D7D7D7D7EAD7D7D7D7D7D7D7D7AC56E9D72BD7EA56
        2BACD7D7D7D7D7D7D7D7D7AC2B2BD7D7D7AC81D7D7D7D7D7D7D7D7D72BD7D7D7
        D7D7D7D7D7D7EA56ACD7D7AC56D7D72BD7D7ACD7D7D7D7D7D7ACD7D7D7D7D7D7
        AC81D7D7D7D78181D7D7AC2A81D7D7D7D7D7D7D7D7EBD7D7D7D7ACD7D7D7D7D7
        D7D7D7D7D7D7D7D7D7562BACD7AC2A81D7D7D7D7AC2A81D7D7D7D7D7EBD77A2B
        5681ACD7D7D7D7D7E9D7D7D7D7D7D7EB56D78181D77A2B5681ACACE9D7D7D7D7
        ACD78181D7D7D7D7D7D7D7D7D7562BEAD7D7D7D7D75656D7D7D7D7ACD7D756AC
        D7D7D7D7D7D0ACD756ACD7ACD7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D0D7D7D7D7D7D797CFD7D7D7D0979ED0D7D7D7D7D7D7
        D7D7D7D7C2D0D7D7D7D7D7D7D7D79E97D7D7D7D7D7D7C997C2D7D7D7D7D0D7D7
        D7C297D7D7D7AC8257D7D7D7D7D78282A68157ADAC57D7D7D7D7D781AC0081AC
        81D7D7D7D7D7825057D7D75757ACD7D7D7D7D757A6A6D7D7D7D7D7AC81D7D72B
        D7D7D7D7D7D781D7D7D7D7D7D7D7D7D7D7D7D7AC81D0AC56D7D7ACE9D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D74FD7D7E9D7D7D7D7D7D7D7D7ACA5D75656D7D7D7D7
        D7D7D7D7D78181D7D7D7D7D7D7D7D72BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC
        2B56D7D7D7D7D7D7D7ACACACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7E9EAD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACACD7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D72BD78156E9D7D7D7D7D7D7D7D7D7D7D7
        D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D72BD7D7D7D7D7D7D7D7D7D7ACACD7D7D7
        D7D7AC55D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7A5
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7812B56D7D7D7D7D7817AD7
        D7D781D7D7D7D7D7D781D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D756ACD7D7D7D7D7D7D7D7562B81D7D7D78181D7D7D7D7D7D7D7D7
        D7ACD7D7D7D7D7D7D7EAD7D7D7D7D7D7D7D74FACD7D7D7D7D7D7D7D756ACAC2B
        ACD7D7D7D7D7D7D7D7D7D7D7D0979ED7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D79ECFD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D0D7D7D7D7D7D797D0D7D7D7D7D7D7D7D7D7D0D0D7D7D7AC8257D7D7D7
        D7D7AC5757D7D75750ACD7D7D7D7D781AC0081AC81D7D7D7D7D7D7D77BACAC82
        D7D7D7D7D7D7D757A6A6D7D7D78181D7D7D7D72BD7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D78181ACAC56D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D72B
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC2B81D7D7D7D7D7D7D7D7ACACD7D7D7D7D7
        D7D7D72BD7D7D7D7D7D7D78156D7D7D7D7D7D7D7ACACD7D7D7D7D7D7D7815656
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D78156
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7812B56D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D02BD7AC5656ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D72BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC56D78155D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D78156D7D7D7D7D7D7D7ACACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D75680D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D756ACD7D7D781
        56D7D7D7ACACD78156D77A81D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D72BD7D7D7D7D7D7D7D7D72BD7D7ABD7D7D7D7D7D7D7D7D7D7D7D7
        D7D0D0D7D7D7D7D7D7D7D7D7D7D7D7D7D7D097D0D7D7D7D7D7D7D7D7D7D7C997
        C9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7C997
        C9D7D7D7D7D7D7D7D7D7D7D7D7D7AC8257D7D7D7D7D7D7D7AC82D757D7D7D7D7
        D7D7D781AC0081AC81D7D7D7D7ACACD7AD5757D7D7ACACD7D7D7D757A6A6D7D7
        D78181D7D7D7D72BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D781D7AC56
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC2BD7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7EA562B56D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D72BD7D7D7D7D7D7D7AC
        81D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC56D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC81D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC56D7D7D7812B4FD7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D72BD7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7AC56D7AC81D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC81D7D7D7D7D7D7D7D7D7
        D7D7D7D7D72B56ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC81D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D756ACD7D7D7AC81D7D7D7D7D7D7AC81D781AB
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D74FD7D7D7D7D7
        D7D7D7D72BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7C8D0D7D7D7D7D7D7D7D7D7D7D7D09E97C9D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7C9C99E97C9D7D7D7D7D7D7D7D7D7
        D7D7AC8257D7D7D7D7D7ACD7D7577BD7D7D7ACD7D7D7D781AC0081AC81D7D7D7
        818157D7D7577BD7D7828281D7D7D757A6A6D7D7D7D7D7D7D7D7D7ACD7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7AC2BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D781EAD7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7EBACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D781ACD7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACABD7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7ACEAD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D0C2C9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7C2C2D0C2D0D7D7D7D7D7D7D7D7D7D7AC8257D7D7D7AC7B82D7
        D78257D7ACA6AC57D7D7D781AC0081AC81D7AC81ACACD757D77B81D757D7ACAC
        82ACD757A6A6D7D7D7D7D7D7D7D7ACACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D09EC2D0
        D7D7D7D7D7D7D7D7D7D7AC8257D782AC81ACAC7BD7AC57D757D7D7D77BACD781
        AC0081AC81D78257D7508257D77B81D7578157D75782D757A6A6D7D7D7D7D7D7
        D7D7AC8181D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D0D0D7D7D7D7D7D7D7D7D7D7AC82
        57ADAC57AC57AC57ACAC57D782D757D75782D781AC0081AC8157AC50D7AC57D7
        D75781D7D757ADAC56AC5757A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC825757AC5782D757D7D78257D7
        D757ACD750AC5781AC0081AC5757575782ADACD7AD5757D7D7D7D78257575756
        A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7AC825750577B57D7ADD7AD5757ACD7D7ADAC57575756AC0081AC
        57ACAC8181ACD7AC57578157ACACAC8157578257A6A6D7D7D0D0D7D7D7D7D7D7
        D7D0D7D7D7D7D7D7D7C2D0D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D0D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D0D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        ACACD7D7D7D7D7D7EBD7D7D7D7D7D7D7AC56D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7ACACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7A55681
        ACD7D7D7D7D7D7D7AC56D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7815681ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7815681AC
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACACD7D7D7D7D7D7D7ACD7D7D7D7
        D7D7D756ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACACD7D7D7D7D7D7D7D7D7D7AC8257818157
        82ACADAD8181818282ACAC8157AC8157AC0081AC815050D7AD57505757D75757
        575657D7D7505757A6A6D7D0C297C2D7D7D7D7D79E9797D0D7D0D0D0D0C9D0D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D09E9797C9D6D7D7D7C9C9D7D7D7C9C9D7
        D7D7D7D7C99D97D7D79DD0D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D097979EC9
        D7D7D7D7D7C99E97D0D7D7D7D7C2D7D7D7D7D7D7D7D7D7A581D7D7D7D7D7D7D7
        D7D7562BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC562BACD7D7D7D7AC2B2A56D7
        D781ACD78156D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7AC81ACD7D7D7D7AC2B2B5581D7D7D7AC81ACD7D7AC81ACD7D7D7D7AC562B56
        D7AC55D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC2BD7
        D7D7D7D7D7D7AC81ACD7D7D7D7D7D7D7AC2A2B2B2B81D7D7D7D7D7EA8181D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        AC2A2B2B2B81D7AC81ACD7D7D7D7D7D7D7D7D7D7AC55D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D72BACD7D7D7812A2B562B2BACD7D7D7D7D7D7D7D7812B
        2B5681D7D7D7562B56D7D7D7D7D7562A2BACD7AC81ACAC81ACD7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AB81ACD7D7D7
        D7AC562BACD7D7D7D7D7D7D7D7D7AC8257D750D7D75750505757D757575757AD
        D7575081AC0081AC5757AC5757D7D7AD5782AC57D7D7D75757818157A6A6D7D7
        D7D79DD0D7D7D7D7D0D0C99ED7C9C2C9C29EC9D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7C297C8C89E97D0D79E9797C9D7D0C99D97D7D7D7D7D7D7C9C2D7C9D0D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7979EC9C2979ED6D7D7D7D7D7CF9DD7D7D7
        D79ED0D7D7D7D7D7D7D7812B2B2BD7D7D7D7D7D7D7D7ACACD7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7AC2BD7D7D7D7ACACAC5681D75656AC562BACD7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC5656D7D7D7D72B567A56
        2B4FACAC2B2B2BACD7AC812B81D7D7D7D7D7E92BACE956EAD7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EA56D7D7D7D7D7D7D7A5812B81D7D7
        D7D7D7D781ACD7D7E956D7D7D7D7D7AC562BD7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D781ACD7D7D756EA815656D7D7
        D7D7D7D7D7D7D7D7E956EAD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D756AC
        D7D7D75681D7D7EA812BACD7D7D7D7D7D7EA2B567A562B55D7D7D7D756A5D7D7
        D7D7ACAC812BD7815681565681D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D781562BACD7D7D7D7D7AC2BD7D7D7D7D7D7D7
        D7D7AC825781575757ADD7D7AC828257D7D7D75757ACAC57AC0081AC57575757
        ACACACD7D75757D7D7A6D78257575756A6A6D7D7D7D7D0C2D7D7D7D7D7D7D7C9
        D0D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7C2D7D7D7D7D097D7D7
        D7D097D0D7D7D7C2C9D7D7D7D7D7D79ED7D7D7D7D7D7D09D9797D0D7D7D7D7D7
        D7D7D0C2D7D7D7D7C9C8D7D7D7D7D7D7C8D0D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        EA5681D7D7D7D7D7ACAC81ACACD7D7D7D7D7D7ABD7D7D7D7D7D7D7D7D7D7D7D7
        562B2B81D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACEBD7D7D781AC
        D7D7D7D7D7D7D756D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7E9D7D7D7D7D7D7D7D7D7D7D7D7AC56D7D7D7D78156D7D7D7814FD7D7D7AC
        2BACD7D7D7D7D7AC56D7D7D7D7D7D7A52B2B56D7D7D7D7D7D7D7D7D7D7AC8181
        ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC2BD7D7D7D7D7D7ACACD7D7D7ACACD7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7ACACD7D7D781ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D781ACD7D7AC2B81D7D7
        D7D7D7D7D7AC56D7D7D7D78181D7D7D7D756D7D7D7D7D7D7D7AC81D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D78156D7D7D7D7D7D781ACD7D7D7D7D7D7D7D7AC825757577B7BD7ACD7
        D75757D7D781ACAD50575756AC0081AC8157AC50D7AC57D7D77B81D757AC57AC
        56AC5757A6A6D7D7D7D7D097979ED7D7D7D7C2979797C99797C997C2D7C9D7D7
        D09797979DD0D7D7D7D7D7C9D7D7D79E9797D7D7D7D0C9C9D7D7D7D0C2D7D7D7
        D7D7D7979797D0D7D7D7C99EC89E97D7D7D0D7D7D7D7D7C9D7D7D09797C2D7D0
        D7D7D7D7C2979DC9D0D7D7D7D7D7C9D7D7D7D7D7D78156D7D7D7D7562A2A2A2B
        2A2B812B2B81562B2B2B2B2B2B2A2BACD7D7D7814F7A562BACD7AC2B2A2B56EA
        D7812B7AD781EAD781D7D7D7AC2A81D7D7D7562A2B81D7D7D7EA2B2B2A567A2B
        56562B81AC81D7D7812B2A2B56E9D7D7D7D7D7812B2B2A2A2B81D7AC2B2A2BD7
        D7D7D7D781D7D7AC2B2A56D7D7D7AC56ACD7D7D78181D7D7D7D7D7AC2B2A55D7
        D7D7D72B56562B56D7D781D7D7D7D7D74F2A2A2B2A2A2B812B2B812B2B56D7D7
        D7D7D7D7D780ACD781D7D7D7D7ACD7D7D7812B4F812B562A2BACD7D7D7D7D7D7
        A52B2A2B56ACD7D7D7D7D7AC2B2B812B2B56D7812B4FACA5ACD7D7D7D7ACD7D7
        D77A2B2A4FD7D7ACACD7D7D7D7D7AC2B2A55D7D7D7D7562B56D72B2B812B2BAC
        81ACD7D72B2A2BACD7D7D7D7ACD7D7D72B2A2BACACABD7D7D7D781D7D7AC2B2A
        56D7D7D7AC2B2A2BD7D7D7D7812B2A2B812B2B812B56D781ACD7AC2B2A2B2BAB
        D7D7D7D7D7D7562B2A2A2A56EAD7562B2BACD7D7D7D7D7D7D72BD7ACACD7D7D7
        562A2B2BACD7EA81D7D7AC825757AC578281AC57D78257D757AC57D750AC5781
        AC0081AC81D75757D7508257D77B81D77B8157D75782D757A6A6D7D7D7D7CF9E
        C99ED0D7D7D7C2C89EC997C9C897C9C29797C8D7C99EC9C9C89ED7D7D7D7D7D0
        D0D7D097D0D7D7D7D7C89DC2D7D7D7C8C2D7D7D7D7D7D797C9C2C8D7D7D7C9D7
        D7D7D0D0D7C9C9D7D7D7D7CFD7D7C9C2D0D7D7C9D0D7D7D79EC8C89E979DC9D0
        D0D7C2D0D7D7D7D7AC2B2BD7D7D7AC2BABD0D7D7EAAC5656812B567A2B562B2B
        56817A56D7D7D781D7D7D7AC81D77A5681815681562B81562A2B81D756D7D7D7
        ACACD7D7D7D75656812BD7D7D7D72B5656562B81562B814F2B2BACD72B568181
        5681D7D7D7D7D72B56818181812BAC2B568156ACD7D7D7D781D7D78156ACD7D7
        D7D72B2BACD7D7EA2BACD7D7D7D7D7AC558156ACD7D7D781D7D7D756D7D756D7
        D7D7D78156ACE9D7D7D7AC5580812B81812BD7D7D7D7D7D7D72BACD756D7D7D7
        D7D7D7D7D72B56802B562B815681D7D7D7D72B2B2B5681815656D7D7D7D7D781
        4F812B5681552B2B817A2B2B55D7D7D7D7D7D7D7D72B568156ACD7AC81D7D7D7
        562A2B568155ACD7D7D75681562B4F812B56562B2B56D7AC2B815681D7D7D7D7
        D7D7D7D7D781812B2B2BACD7D7D781D7D78156ACD7D7D7D7AC2B8156ACD7D7D7
        81562B812B7A802B81562B2B56D7814F8181562BD7D7D7D7D756568181818156
        81562B817A56D7D7D7D7D7D7AC2BD7AC81D7D7D7565681562BACD756D7D7AC82
        57D7A682AC81AC82ACAC57D757A657D75782D781AC0081AC81D7D7D7A6D7D757
        D78181D757D7D757D7ACD757A6A6D7D7D7D7D7D7D797D0D7D7D7D097D0D7D7D7
        D7D7D7D7C2C8C9D79ED0D7D7D0C2D7D7D7D7D7D7D7D7D7C2C9D0D7D7D7C99EC9
        D7D7D7C9D0D7D7D7D7D7D7D7D7C9C9D7D7D7D0D7D7D7C9D0D7C9C9D7D7D7D7D7
        D7D7D79ED0D0D7C9CFD7D7D7D7D7D0D0C9979797C9D7C2D0D7D7D7D7D7562BD7
        D7D7ACABD7D7D7D7D7D7D7D7D7EAD7D7AC56ACAC2BD7AC56D7D7D7D7ACD7D7AC
        81D756ACD7D7AB2B55D7D7D75656ACD72BD7D7D7D7ACD7D7D7D7D7D7AC2BD7D7
        D7D7812BD7D7D7D7D7D7D7D7564FACD72BD7D7D78181D7D7D7D7D781D7D7D7D7
        EA562B81D7D756ACD7D7D7D7D7D7D7D756ACACD7D7D7562BACD7D7D756D7D7D7
        D7D7D7D7D7D72BACD7D7D7A5D7D7D755D7D74FD7D7D7D781D7D7D7D7D7D7D7D7
        D7D7D7D7EA2BD7D7D7D7D7D7EB56D7D756D7D7D7D7D7D7D7D7EAD7D7D7D7D7D7
        8181D7D7D7D781564FD7D7D7AC7AD7D7D7D7D756ACD7D7D7D72B2A2BEAD78181
        56D7D7D7D7D7ACACD7D7D7D74FACD78181D7D7D781562BD7D72BACD7D7D7D7D7
        D72BACD7E9D7D7A5AC56D78181D78181D7D7D7D7D7D7D7D7D7D7D7AC562BD7D7
        D7D7D7D7D7D756ACACD7D7D7D7D7D756ACD7D7D7AC2B81D7D7D7D7D7D7D77A81
        81D756ACD7D7D056D7D7D7D7D781D7D7D7D7D7812B56D7D7AC56D7D7D7D7D7D7
        AC81D78181D7D7D7D7D7EA5656ACAC56D7D7AC8257D7ACD781D1D757D7AC57D7
        81ADD7AC82ACD781AC0081AC81D7D7D7AC5757D7D75757D7D75757ACD7D7D757
        A6A6D7D7D7D7D7D7D7D0D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7C2D0D79DD7D7C9
        97D0D7D7D7D7D7D7D7D7D7D79E97D0D7D7D7C8D0D7D7D7D7D7D7D7D7D7D7D7D7
        D7D0D7D7D7D7D7D7D7D797D7D7C9C9D7D7D7D7D7D7D7D7D09797D7C8D0D7D7D7
        D7D7D0979EC9D0D7D7D79ED0D7D7D7D7D781ABD7D7D7D7E9D7D7D7D7D7D7D7D7
        D7D7D7D7D7AC2B2A56D7D7ACD7D7D7D7D7D7D72BACD72BD7D7562B81D7D7D7D7
        AC56D7D72BD7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7EAD7D7D7D7D7D7D7D7
        AC56D7AC56D7AC562BD7D7D7D7D7D7ACD7D7D7AC2B2BACD7D7D7ACD7D7D7D7D7
        D7D7D7D7AC2B2BD7D7D7AC81D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7
        D7D7A556D7D72BD7D7D7D7D7EAD7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7
        D7D7D7AC56D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D78156D7E956
        2BACD7D7D7D7D756ACD7ACD7D7AC7A81D7D7D77AACD7D7D7D7D7812BD7D7D7D7
        ACD7D78181D7D7D7D7AC2BD7D7ACD7D7D7D7D7D7D72BEAD7D7D7D7D7D7D7D77A
        ACD7ACD7D7D7D7D7D7D7D7D7D7D7D7D7A581D7D7D7D7D7D7D7D7AC2B2BD7D7D7
        D7D7D7ACD7D7D7D7D7EAD7D7D7D7D7D7D7D7EA56ACD756ACD7812BA5D7D7D7D7
        D7ACD7D7D7D7552B81D7D7D7EAACD7D7D7D7D7D7D7D7D78181D7D7ABACD7EA56
        2BD7AC56D7D7AC8257D7D7D7AC5757D7D78157D7D7575782D7D7D781AC0081AC
        81D7D7D7D7ADD7D7D7577BADD7D7D7D7D7D7D757A6A6D7D7D7D7D7D7D7D0D0D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D797D7D09DD0D7D7D7D7D7D7D7D7D7D7D7
        D7D0D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7C9D7
        D7C8D0D7D7D7D7D7D7D7D7D7D7D0D7C2D0D7D7D7D7D7D7D7D7D7D7D7D7D797D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7
        D7D7D7D7D7D7D781D7D72BD7AC56D7D7D7D7D7D7D7D7D7AC56D7D7D7D7D7D7D7
        D7D7D7D7ACACEAD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC56D75656EBD7D7D7
        D7D7D7D7D7D7D75681D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACACD7D72BD7D7D7D7D7
        D7D7812B56D7D7D7D7D7D7D7ACACACD7D7D7D7D781EAD7AC56D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EA81D78156EAD7D7D7D7D7D72BD7AC2BAC
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EBD7D7D7D7D7D7D78181D7D7D7D7D781D7
        D7D7D7D7D7D7D7D7D72BD7D7D7D7815656D7D756ACD7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7ACACD7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D72BEAAC2BACD7D7D7D7D7D7D7D7D7D7AB56D7D7D7D7D7
        ACACD7D7D7D7D7D7D7D7D78181D7D7567AD7D75681D7AC56D7D7AC8257D7D7D7
        D7D7D7D7D75782ACD7D7D7D7D7D7D781AC0081AC81D7D7D7D7D7D7AD57D7AD57
        ACD7D7D7D7D7D757A6A6D7D7D7D7D7D7C99D9ED7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D797D7D79EC2D0D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D0C2D7D7D7D7C2D0D7D7D7D7D7D7D7D7D7
        D7D7D79ED0D7D7D7D7D7D7D7D7D7D7D7D7D797D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D75681D7D7D7D7AC56D7D7D7D72BD7
        EA5656ACD7D7D7D7D7D7D7AC56D7D7D7D7D7D7D7D7D7D7D7562B81D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7A556D7AC4F81E9D7D7D7D7D7D7D7D7D7AC2B81D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D75681D7D7D7D72BD7D7D7D7D7D7D7D7ACACD7D7D7D7D7D7D7
        565681D7D7D7D7EB2BACD7AC56D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7AC5581ACD7D7D7D7D72BD7D7A5D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D756A5D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EA81D7D7
        D7D7AC8181D7D755ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7812B2BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D72BD7
        D75656ACD7D7D7D7D7D7D7D7D7D75556D7D7D7EB2B2BACD7D7D7D7D7D7D7D756
        A5D7D7EBD7D7D7EAD7D78156D7D7AC8257D7D7D7D7D7D7D757ACD77B82D7D7D7
        D7D7D781AC0081AC81D7D7D7D7D7815782D7D7825681D7D7D7D7D757A6A6D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D797D7D7D7C99797D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D0C2D7D7D7D7C8D0D7D7D7D7D7D7D7D7D7D7D7D7C2D0D7D7D7D7D7D7D7
        D7D7D7D7D7D797D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D781ACD7D7D7D7D756D7D7D7D72BD7D7D7812B56ACD7D7D7D7D7AC
        56D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D781
        81D7D7EA562B56D7D7D7D7D7D7D7D7D7AC562B81D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D78181D7D7
        D7D72BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D78156D7D7D7D7D7D7D7D7D7AC
        56D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EB812B56D7
        D7D7D72BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D781
        ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D756D7D7D72BD7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D72BD7D7D7AB2B2BACD7D7D7D7D7D7
        D7D7D7812B56ACD7D7D7D7D7D7D7D7D7D7D7D781ACD7D7D7D7D7D72B81D7AC81
        D7D7AC8257D7D7D7D7D7A6508257D7825757D7D7D7D7D781AC0081AC81D7D7D7
        D7D781AD57815757D757D7D7D7D7D757A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D0D7D7D7D7D7D0D0D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D0D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D0D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7ACD7D7D7D7D78155D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D781D7D7D7D7D7
        D7D7D7D7D7D7AC5681D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7E9ACD7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EA81ACD7D7D7ACD7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7ACD7D7D7D7D7ACACD7D7D7D7D7D7D7D7D7D7D78156D7D7D7D7D7
        D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7ACACD7D7ACD7D7AC8257D7D7D7D7D781AC
        57A65782AC57D7D7D7D7D781AC0081AC81D7D7D7D7D7AC57817B575757ACD7D7
        D7D7D757A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D0D0D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EBD7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7ACACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7AC8257D7D7D7D7D7AC825781565757ACD7D7D7D7D781
        AC0081AC81D7D7D7D7D7D7815782AD57D7D7D7D7D7D7D757A6A6D7D7D7ACD7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D781562B56
        81D7D7D7D0C9C9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7818181
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC82
        57D7D7D7D7D7D7D75757D757D7D7D7D7D7D7D781AC0081AC81D7D7D7D7D7D781
        81577B5781D7D7D7D7D7D757A6A6D7D7EB81D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7EB562A2B56565681D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC8257D7D7D7D7D7D7AC5781817B
        57D7D7D7D7D7D781AC0081AC81D7D7D7D7D7AC5757577B8157ACD7D7D7D7D757
        A6A6D7D7AC81D7D7D7ACACD7D7D7D7D7D7D7D7AC565681D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7EBACACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7812BACD7D7D7D7E9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC5681ACD7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EB815681ACD7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D0D7D7
        D7D7D7D7D7D7AC8257D7D7D7D7D7AC817B57575757ACD7D7D7D7D781AC0081AC
        81D7D7D7D7D77BD781578157AD7BD7D7D7D7D757A6A6D7D781ACD7D7AC562B56
        D7D7D7D7D7D7D72B2B2B2B56D7D781ACD7D7D7D7D7D7D7562B2B56ACD7D78156
        2BACD75681D78181ACD7D7D7D7D7D7D7D7D7D7D7D7D78181D7D7D7D7812B2B81
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D781ACAC81ACACD7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC81ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7AC56D7D7D7D7D7D7D7D7D7D78181E9D7D7D7D7D781ACD7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7AC81ACD7D7812A2BACD7D7D7D7D7D7D7D7D7D7D7D7
        D7AC81ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EB81ACEA81
        ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7AC2A2B2B2B81D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7812A2B562B2BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC81ACD7
        D7D7D7D7D7D7D7D7D7D7D78181ACD7D7D7D7D7562B2B56ACD7D7D78181EBD7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7C2D0D7D7D797979ED7D7D7D7D7D7D7AC8257D7D7D7
        D7D782AC57825782D757D7D7D7D7D781AC0081AC81D7D7D7D7D7815781D7D781
        5682D7D7D7D7D757A6A6D7D756D7D7D7D7D7D72BACD7D7D7D7D7AC7AD7D7D781
        ACD0564FD7D7D7D7D7D7812B567A562B81D7D7D7AC2BD78181AC81562BACD7D7
        D7D7D7D7D7D7D7D7D7D781ACD7D7D7D7ACACAC2BACD7D7D7D7D7D7D7D7D7D7D7
        D7D7D7565681565681D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7AB812B81D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC56D7D7D7D7D7
        D7D7D7D7AC81562BD7D7D7D7AC5655D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EB81
        7A2B81D7ACAC812BACD7D7D7D7D7D7D7D7D7D7D7D781562B81D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D75655AC564FD7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D78181D7D7D756
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D77A81D7D7D7812AACD7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7A5812B81D7D7D7D7D7D7D7D7D7D7AC81
        562BACD7D7D7812B567A562B81D7AC812B56D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7C2
        D0D7D7D0D0D0C9C2D7D7D7D7D7D7AC8257D7D7D7D7D782578181D7815057D7D7
        D7D7D781AC0081AC81D7D7D7D7D7D7AC7BD7D757D7D7D7D7D7D7D757A6A6D7D7
        56D7D7D7D7D7D7AC56D7D7D7D7D7D781D7D7D7EA81D7D7D7D7D7D7D7D7D756E9
        D7D7D7E92BD7D7D7D781ACD7D7D7D7D78156D7D7D7D7D7D7D7D7D7D7D7D7AC80
        D7D7D7D7D7D7D7D07AD7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7AC2B2B2BACD7D7D7D7D7D7D7D7D7AC2BD7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D77A56D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7ACACACEBD7D7D7D7D7D7AC2BD7D7D7D7AC81D7D7D7
        ABD7D7D7D7D7D7D7D7D7D7AC2BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACACD7D7D7ACACD7D7D7D7D7D7ACD7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7ACACD7D7AC2B81D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7AC2BD7D7D7D7D7D7D7D7D7D7D7D7D78156D7D7D781ACD7D7D7EA
        56ACD7D7EA5681D7D7D7D7D7D7D7D7D7D7D7D7D7AC2B2A2B81D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7C9D0D7D7D7
        D7D7AC8257D7D7D7D7D7D7D757ACD757D7D7D7D7D7D7D781AC0081AC81D7D7D7
        D7D7ADD7AC8157D7D7D7ADD7D7D7D757A6A6D7D75581ACD7D7D7D7AC2A2B56D7
        D7D7D7ACD7D7D7AC2B2A2BACD7D781D7D7D781EAD7D7562B2AACD7D7D7562A2B
        81D7D7D7D72BD7D7562A2B2B56D7D7D7D7D7D756ABD7D7D7D7D7AC2B2A2A2BD7
        D7D7D72BACAC2B2B81AC2B2B812B2B81D7D7E92B2B81562B562B2B56D7D7D7D7
        2B2BD7A52A2B56D7D7812B2B81552B2B812B56812B568181D7D781D7D7D75656
        56562BEBD7A5EAD7D7D7D7D7D781ACD781D7D7D7562A2BA5D7562B56D7562B56
        ABD7D7812B2A56E981D7D7D7D7D7D7D755D7D74F2A56562A2BACD7D7D7812B2A
        2A2A2A2B81ACD7D7D7D756ACD7D7812B2A2B81562B2B2B81ACD7D7D7D7D7D7D7
        56AC812A2B81D7D7D7D7812B2B56D7D7D7D7812B56AC812B56562A2BACD7D781
        2B2BAC552B562B2B81D7D7D7AC2B2B2B2B2B2B2A2B81562B2B56ACD7D7D7D7D7
        D7D7D7ACD7D7D7812B2B812B2BAC562A562B2A2B2B2B2B2A2BACACACD7D7D7D7
        ACD7D7D7552A2B81812B2B81ACD7AC2B2A2BACACACD7D7D7D7D7D780ACAC2A2B
        56D7D7D7D781D7D7D7D72BD7D7D7ACACD7D7562B2AACD7D7D7AC56D7AC2B2B81
        2B2BA581ACD7D7D7565681562BACD7AC2B2B56D7812B2B2BABD7D7D7D72B2B81
        AC2B2A2B56ACD7D7D7D7D7AC2B2B56562B2A2B2B2B2B2B2A2BACD7D7D7C2C9D7
        D7D7C99797C9D0D7D7D7D7D7D7D79E979797C9D7D7D7AC8257D7D7D7D7D7D7D7
        D75781ACD7D7D7D7D7D7D781AC0081AC81D7D7D7825757D7D75781D7D75757AC
        D7D7D757A6A6D7D7812B2B56D7D7D78156814FACD7D7D7D7D7D7D7815581567A
        D7D756D7D7D7EAACD7D72B81ACD7D7D7D756568156D7D7D7812BD7AC2B818181
        56ACD7D7D7D7D7562A56D7D7D7D7AC562B815681D7D7D7D7D7D756814F2B567A
        2B81812BD7D7812B81552B562B7A812BD7D7D7AC5656ACAC81812BD7D72B7A56
        2A2B81562B81562B812B2B2BACD756D7D7D781D7D7D781ACD781ACD7D7D7D7D7
        D72BACD756D7D7D7AC818156D77A81562B2B81562B2B812B5681562A2B56D7D7
        D7D7D78156D7AC2B815656815681D7D7D72B56ACACACAC815655D7D7D7AC2BAC
        D7D781562B812B56562B562B2BACD7D7D7D7D7AC2BD7AC81812BD7D7D7D72B56
        812BEAD7D7D78181812B2B81564F81567AD7D756567A2B562B2B818056D7D7D7
        AC814F4F562B2A81562A2B8181562B2B7A81ACD7D7D7D7D7D7D7D75556812B56
        812B56552B81562B562B2A56812B2B2BD7D7D7D7D7D7D7D7EA81812B2B817A56
        2B56562B7A812B2B2BEAD7D7D7D7D72BACAC81812BACD7D7D756D7D7D7812BD7
        D7D7D7ACD7D72B81ACD7D7D7D75681D7814F812B56562B2B56D7D7D781D7D7D7
        AC81D7815681562B2B8181562BACD7D7D75681562B5681815656D7D7D7D7D756
        56562A2B56562B56562B2B815656D7D7D7D7D7D7979797C9C99E9797C9CFD0D7
        D7D79EC2C2C997D7D7D7AC8257D7D7D7AC5757D7D78157D7D7577B81D7D7D781
        AC0081AC81D7D7AC82D7D757D75781D757D7D7ACD7D7D757A6A6D7D7AC552B7A
        D7D7D7D7D7D72BACD7D7D7D7EA81D7D7D7D78181D7D755D7D7D7D7D7D7D78180
        ACEBD7D7D7D7D7AC56D7D7D7AC81D7AC56D7D7D756ACD7D7D7D7AC2B815656D7
        D7D7D75656D75681D7D7D7D7D7D7D7D7AC2BD7D7D7D7AC2BD7D756ACD7D75656
        D7D7D72BEAD7D7EB2B2BE9D7D7AC2BD7D74FD7AC8181ACD7D7D7D7E9D7EAAB56
        ACD756D7D7D7ACD7D7D77AACD781ACD7D7D7D7D7D756D7D756D7D7D7D7D78156
        D7D7D7D75681D7AB81562A2A2AACD7568181D7D7D7D7D78181D78181D7D7D7D7
        8181D7D7D781D7D7D7D7D7D7D756E9D7D7EA56D7D7D7D75580D7EAD7D7AC56AC
        AC56D7D7D7D7D7D756D7D7D7AC4FD7D7D7D72BD7D72BD7D7D7D7D7D7D78181D7
        D7D7D78181D7D72BD7D7AC5656D7D7AC56D7D7D7D7D7AC2B81AC55ACAC81ACAC
        ACAC812B2A2B2BD7D7D7D7D7AC81D7D7D7D7D7D7D7E95656D7D7D72B56AC5681
        D7818155D7D7D7D7D7D7D7D7D7D7D7A556D7ACAC812B2A2A56D7AC562BD7D7D7
        D7D7EB56D7D7D7AC2BD7D7D7EB2BD7D7D7AC81D7D7D7D7D7D7D78156ACD7D7D7
        D77AACD756ACD7D7D7D7ACAC56D7D7D7ACACD7D7AC81D756ACD72B2A2BD7D756
        56ACD7D7D7D7D7D72BD7D7D7AC56D7D7D7D7D756ACD756D781D7812BA5AC2BD7
        AC56D7D7D7D7D7D7C2C8C2D7D0D0C9979797C2D7D7D7D097D0D797D7D7D7AC82
        57D7ADD781ADD757D78257D757D7D7AC82D7D781AC0081AC81D75757D7578257
        D77B81D7578157D75757D757A6A6D7D7D78181D7D7D7D7D7D7D7ACD7D7D7D7D7
        AC2BACD7D7D7ACD7D7AC56D7D7D7D7D7D7D7D7562AACD7D7D7D7D7D7ACD7D7D7
        D7D7D78181D7AC2B56D7D7D7D7D7D75681ACACD7D7D7D7D7D7D7ACD7D7D7D7D7
        D7D7D7D7AC56D7D7D7D7D7ACD7D756ACD7D7D7D7D7D7D7ACD7D7D7D78181D7D7
        AC2A81D7AC56D7D7562BACEAD7D7D7D7D7D7D7D7D7AC56D7D7D7D7D7D7D72BD7
        D756ACD7D7D7D7D7D7D7D7AC56D7D7D7D7562BACD7D7D7D74FACD7562B5681AC
        ACD7D7D756ACD7D7D7D7D7D7D7D78181D7D7D7D7ACD7D7D7D7E9D7D7D7D7D7D7
        D756D7D7D7D7D7D7D7D7D7EBD7D7D7D7D7D7AC2B2A56D7D7D7D7D7D7D7D7D7AC
        2A81D7D7D7EA2BD7D7ACD7D7D7D7D7D7D75681D7D7D7D7ACD7D7D72BD7D7D7D7
        D7D7D7D7ACD7D7D7D7D7AC56812B2BACD77A2B81EA2B2B80ACEAD7D7D7D7D7D7
        812BD7D7D7D7ACD7D7D7D7D7D7D7D755AC2B2A81D7D78181D7D7D7D7D7D7D7D7
        D7D7D7AC81D7AC2B2B5681ACACD7D78181D7D7D7D7D7D7D7D7D7AC2A81D7D7D7
        D74FD7D7D7D7D7D7D7D7D7D7D7D7D7812A81D7D7D7D7D7D756ACD7D7D7D7D7D7
        D7D7D7D7D7EAD7D7AC81D755E9D7AC7A81D7EB562BD7D7D7D7D7D7AC2BD7D756
        2BACD7D7D7D7D72BD7D7812B56D781A5562A56D7AC81D7D7D7D0D7D7D7C9C9D7
        D0979DC9D0D7D7D7D7D7D7D7D7D7D0D7D7D7AC8257D78281AC7BAC81ACAC57D7
        57D757D75757D181AC0081AC8157AC50D757AC81D77B81D7D781ADD750AC8157
        A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EAD7D7D7D7D7D7D7AC56D7
        D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D78181D72B81D7D7D7D7
        D7D7D7AC56ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D78181D7D7D7D7D7D7
        D7D755ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EAACD7D7AC56D7D7D781D74F
        2B81D7D7D7D7D7D7D7AC56D7D7D7D7D7D7D781D7D756ACD7D7D7D7D781D7D7AC
        56D7D7D7D7ACACD7D7D7D7D72BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC81
        D7D756ACD7D7D7D7D7D7D7D7D7D7D7D7555681D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7AC56D7ACACD7D7
        D7D7D7D7D74FACD7D7D7D7D7D7D7D04FD7D7D7D7D7D7D7D7D7D7D7D7D7D7AC56
        D7D7D7D7D7D781D7D7D7D7D7D7D7D7D7D7D7D7D7D7EAD7D7D7D75681D7D7D7D7
        D7D7D74FD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D78181D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7EB81D7D7D7D7AC56D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7ACD7D7D7ACACD7D72BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D781ACD72B
        D7D7D7D7D7D7D77A81D7D7D7D7D7D7AC56D78156D7D7D7D7D7D7D72BD7D7D7AC
        ACD756ACD7D7D7D78181D7D7D7C2C9D7D7D0D0D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D0D0D7D7D7AC825781AC57A681AC57D78257D7D757ACD750AC8181AC0081AC
        57575757ACAC82D7D75757D7D7ACD78257575757A6A6D7D7D7D7D7D7D7D7D7D7
        D7AC2BEBD7D7D7D7D7D7D7D7D7D7D7D7D7AC56D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D756ABD7815581D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D72BACD7D7D7D7D7D7D7D7ACACD7D7D7D7D7D7D7D72BEAD7D7D7D7D7D7AC4F
        D7D7D7D7D7D7D7D7D7D7D7D78181D7D7D7D7D7ACACEAD7D7D7D7D7D7D7AC56D7
        D7D7D78156D7D7D7D756ACD7D7D7D7D72BACD7AC56D7D7D7D7D7D7D7D7D7D7D7
        81D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7812BD7D756ACD7D7D7D72BACD7D7
        D7D7D7D7ACACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7AC56D7562B56D7D7D7D7D7D781D7D7D7D7D7D7
        D7D7AC56D7D7D7D7D7D7D75681D7D7D7D7D7A581AC56D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D781ACD7D7D7D7D7D7D756D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D77AACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7AC56D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D75656D7D7
        2BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D756ACD72BD7D7D7D7D7D7D7D7EAD7D7D7
        D7D7D7AC81D7AC567AACD7D7D7D7D72BD7D7D7E9D7D756ACD7D7D7D756ACD7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7C297C9D7D7AC8257565657
        7BD7ACD7D75757D7D7ACACAC57575757AC0081AC57A6AC5757D7D7D75782AC57
        D7D7D75757575756A6A6D7D7D7D7D7D7D7D7D7D7D7D77AEAD7D7D7D7D7D7D7D7
        D7D7D7D7D7AC56D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D756
        ACD7D7AC562B81D7D7D7D7D7D7D7D7D7D7D7D7D7D7D781ACD7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D72BD7D7D7D7D7D7D7D081D7D7D7D7D7D7D7D7D7D7D7D7
        8181D7D75656D7D7D7D7D7D7D7D7D7D7D7AC56D7D7D7D7AC56D7D7D7D756ACD7
        D7D7D7D7D7D7D7AC56D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D756ACD7D7D7D781ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7A556D7D7EBD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC56D7D7D7D7D7D7D781
        ABD7D7D7D7D75681AC55D7D7D7814FD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D78155D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D756
        ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC56D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EBD7D7D72BD7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D72BACEA2BD7D7D7D7D7D7D7557AD7D7D7D7D7D7D7D7D7D7D7812B56D7
        D7D7AC2BD7D7AC2BD7D72BACD7D7D7D72BA5D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC825781578157ADD7D7AC828181ACD7D757
        57AC8256AC0081AC815750D7D757565757D75757575057ADD7577B57A6A6D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACACD7D7D7D7AC81D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EAACD7D7ACACD7D7D7D7D7D7
        D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACEA
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7817AD7D7D7D7
        D7ACACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC56
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D781ACD7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D756ACD7ACD7D7D7D7
        D7D7D7ACACD7D7D7D7D7D7D7D7D7D7D7D7D781ACD7D7D7ACD7D7D781D7EB4FAC
        D7D7D7D756ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7AC8257D757D7D75750505757D757575056ACD7505781AC0081AC57AC8281
        81ACAD8257578257ACD7AC8282828257A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7ACACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7EA81EAD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC825781825782ACADAC
        7B7B577BACD7AC5781828157AC0081AC5757575782D7D7D7D75757D7D7ACD781
        57815756A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC8181EBD7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D78181
        ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7AC825757578157D7D1D7AD5757ACD7ACACAC57818156
        AC0081AC8157AC50D7AC57D7D75781D7D757D7AC57AC5757A6A6D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7E981ACD7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC82
        5757825782D757D7D78257D7D757ACD750AD5781AC0081AC81ADAC57D7578257
        D77B81D7578157D75782AC57A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC8257ADAC57AC81AC57ACAC57D7
        57A657D75782AC81AC0081AC81D78282ACACD757D77B81D757D7ADAC8282D757
        A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7AC8257D782AC81ACAC81ADAC57D757D7ADD17B81D181AC0081AC
        81D7D7D7818282D7D75781D7D7818182D7D7D757A6A6D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC8257D7D7D7
        AC7B82D7D78257D7D7578181D7D7D781AC0081AC81D7D7D7D7ACACD7D75757AD
        D7ACACD7D7D7D757A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC8257D7D7D7D7D7ACD7D75781ACD7D7ACD7
        D7D7D781AC0081AC81D7D7D7D7D7D7D757ACAC57D7D7D7D7D7D7D757A6A6D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC81D0D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD0
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7562B
        2B56ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7AC8257D7D7D7D7D7D7D7AC82D77BD1D7D7D7D7D7D781AC0081AC81D7D7D7
        D7D7AC5757D7D75756ACD7D7D7D7D757A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC567AD7D7D7D7D7D7D7
        D7D7D7D7D7D7D7AC5656ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7AC5656ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC2BACD7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC5681D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7AC2A2A2BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC
        5656ACD7D7D7D7D78156ACD7D7D7D7D7AC2B2A2A2B81D7D7D77A5681D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7812B56564F2BACD7D7D7D7D7D7D7D7
        D7D7D7D7D7D72B56D7D7D7A55656D7D7D7D7D7D7D7D7AC8257D7D7D7D7D7AC57
        5782D7575082D7D7D7D7D781AC0081AC81D7D7D7D7D757AC828157A6AD57D7D7
        D7D7D757A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7AC8156D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACAC562BAC
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACAC562BACD7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D781D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7AC56562B56D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7EA81
        2BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACA54F2BD7D7D7D781562B2BAC
        D7D7D7D72B5681817A2B56D7D7AC812B81D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D781ACD7D7D7AC56D7D7D7D7D7D7D7D7D7D7D7D7D7D7A5ACD7D7D7AC
        812B2BEAD7D7D7D7D7D7AC8257D7D7D7D7D78281818257ACAC57D7D7D7D7D781
        AC0081AC81D7D7D7D7D78157815757575782D7D7D7D7D757A6A6D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D78056D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D77A56D7D7D7D7D7AC818181ACD7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7EAACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7AC2BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D781ACD7D7D7ACEAD7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D75681D7D7D7D7D7D7812BD7D7D7D756D7D7D7D7D75681
        D7D7D7AC2BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC2B2A2B56D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACACD7D7D7D756
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D75681D7D7EBD7D7D7AC82
        57D7D7D7D7D78282815756575782ADD7D7D7D781AC0081AC81D7D7D7D7D7D77B
        8157575757D7D7D7D7D7D757A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7AC2AD7AC2B2B81EA2B2B81562A56ACEAACACD7562A2B81
        D7D7D7D7D7D7D72BD7D7812B2B812B56812B812B2B2B81D7D7D7D781EAD7D7D7
        D72BD7D7D7D7562A2A2A2A2A2A56812B2B812B2A2BACD7D7D7D7D7D7AC2B2B81
        812B552B2A2B2B56EAD7D7AC2B2B56ACD7D7D7D7D7AC8181D7D7D7AC2B56D7AC
        2A2B56D7D7D7D7562B2A2BAC562B562B2A2BACD7D7D7562A2B7AD7D7D7D7AC56
        D7ACD7D7D7D7AC56ACD7D7D781D7D7D7562B2A81D7D7D7D756ACD7AC2B2B8156
        2B818181D7D7D7D7565581562B81D7D77A2B2B81D7812B2B2B81EBD7D7D7812B
        56ACAC2B2A2B4F81D7D7D7D7D7D7ACD7D7D7D72B2B567A55562B2B81D7D7AC2B
        2A2A2B81D7D7D7D7D7D7AC56D7562A2B81D7AC8257D7D7D7D7D7D7A657815757
        57D7D7D7D7D7D781AC0081AC5782828282828282575781578282828282828257
        A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7E9D7
        AC2B562B552B562B2B562B2A2B2B56D78181562BD7D7D7D7D7D7812BD7D72B56
        562B56562B562B5656562BACD7D7D781ACD7D7D7812BD7D7D7AC2B81ACACEAAC
        AC812B56562B56565581D7D7D7D7562B562B562B2B562A2B5656562B81D7D7D0
        56815681D7D7D7D7D7562B56D7D7D77A562BACAC7A814F81D7D7D72B562B562B
        2B562A55565656D7D7D78181562BACD7D7D77A56D78181D7D7EA2B2BA5D7D7D7
        ACACD7D72B81ACD7D7D7D7D72BACD7812B562B2B562B2A2BACD7D7D756D7D7D7
        D756D7D72B56562B2B2B5656562B81D7D7D78156562B2B4F5656562BEAD7D7D7
        D7D7D7D7D7D7812B562B2B562B56562B2B56812B5656562BD7D7D7D7D7D75656
        D78181562BEBAC825782828282828282815782578182828282828257AC008182
        82828282828282828282828282828282828282828182D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EAD7EA2BACD7D7ACD78181
        56AC56D7D7D7D74FD7D7D7D7D7D7817AD7D72BD7D7ACD7D7ACD7D7D7D7818181
        D7D7D78181D7D7D7817AD7D7D7AC81D7D7D7D7D7D7D7D7D7D7ACD7D75681D7D7
        D7D7567A2BD0D7D7565681D7D7D7D7AC81D7D7D7D7D78181D7D7D7D7D7568156
        D7D7D781562BD7D7D7D78181D7D7D7814F81D7AC564FACD7D78156D7D7D7D7D7
        EA56D7D7D7D75681D78181D7D7D75656ACD7D7D7D7EAD7D77A81D7D7D7D7D7AC
        2BD7D756ACD7D7ACD7AC818181D7D7D781D7D7D7D72BD7AC2BD7AC2B2A2BEAD7
        818156D7D7D7EAD7D7AC2BD7D7D7D756D7D7D7D7D7D7D7D7D7D7D7ACD7D7ACD7
        ACD7ACEA812B2A2B2BD7AC2BD7D7D7D7D7D75681D7D7D7D74FD7AC8182828282
        8282828282828282828282828282828282005757575757575757575757575757
        57575757575757575781D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D72BEAD7D7D7D7EA562B2BACD7D7812B56D7D7D7D7
        D7D7D7EBD7AC56D7D7D7D7D7D7D7D7D7D7562B81D7D7D756A5D7D7D7D7D7D7D7
        D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D781ACD7D7D7D7D7562BD7D7D7D7ACD7D7
        D7EA812BACD7D7D7D72B2BD7D7D7D7D7D7AC2BACD7D7D7EA2B81D7D7AC2B2BEA
        D7D7D7D7ACD7D7D7D0ACD7D7D781ACD7D7D7D7AC2B56D7D7D7D7D7D7D78181D7
        D7D7812BD7D7D7D7D7D7D7D7EB562B56D7D7D7D7D7D7D72BACD7D7D7D7D7D7AC
        D7D7D7D7D7ACD7D7D756D7AC56D7D77A2B56D7D7562B7AD7D7D7D7D7D7AC2BD7
        D7AC5656D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D72B2A2A2B568181EBE981
        D7D7D7D7D7D7D7D7D7D7812B81D7825757575757575757575757575757575757
        57575757570081AC575757575757575757575757575757575757575782A6D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC
        2BD7D7D7D7D7D7552BACD7D7D7AC56D7D7D7D7D7D7D7D7D7D7AC56D7D7D7D7AC
        81ACD7D7D7562BD7D7D7D756ACD7D7D7D7D7D7D7D7D7D7D7D78181ACD7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D756D7D7D7D7D7D7D7D74F2BACD7D7D7D7D74FACD7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EB2BACD7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7AC56EAD7D7D7D7D7D7D75681D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D78181D7D7D7D7D7D7D72BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC56D781
        56D7D7D7D7D7D7D7562BACD7D7D7D7D7D78156D7AC2A56D7D7D7D7D7D7D7D7D7
        D7D7D7D7D781ACACD7D7D7ABACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D78156
        D7D7AC825757575757575757575757575757575757575757AC0081AC81D7D7D7
        D7D7D7D75757D757D7D7D7D7D7D7D757A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC56D7D7D7D7D7D7ACEAD7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D78156D7D7D7D781562BACD7D7ACACD7D7D7D756
        ACD7D7D7D7D7D7D7D7D7D7D7EA565581D7D7D7D7D7D7D7812B4FD7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D72B81D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D781D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D75681D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC2BACD7D72B
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC81D78181D7D7D7D7D7D7D7D7ACD7D7
        D7D7D7D7D78181D7AB2BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7565656D7D7D7D7
        D781D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC8257D7D7D7D7D7D7D7
        8257D757ADD7D7D7D7D7D781AC0081AC81D7D7D7D7D7AD575781578257ADD7D7
        D7D7D757A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D78181D7D7D7D7D72BACD7D7D781ACD7D7D7D72BACD7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7AC8181D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7562B
        81ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D72B81D7D7D7D7D7D7D7D7D7D7D7D7D7D756ACD7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D781D7D7AC2BD7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D78181D75681D7D7D7D7D7D7D7AC81D7D7D7D7D7D7D7EBACD7D7AC2B56
        81D7D7D7D7D7D7D7D7D7D7D7D78156D7D7D7D7D7AC2AACD7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7AC8257D7D7D7D7D7D7825782568257ADD7D7D7D7D781
        AC0081AC81D7D7D7D7D77BD757575757D757D7D7D7D7D757A6A6D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D78181D7D7D7D7D781D7D7D7
        D75656D7D7D7D781ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        2BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC562BEAD7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D781ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D756D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D75656D78181D7D7D7
        D7D7D7D7812BD7D7D7D7D7D7D7D7D7D7D7D7D7812B80D7D7D7D7D7D7D7D7D7D7
        D7ACACD7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC82
        57D7D7D7D7D781AC57A6567BAC57D7D7D7D7D781AC0081AC81D7D7D7D7D77B57
        AC5757825781D7D7D7D7D757A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EAD7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7ACA5D7D7D7D7D7D7D7D7D7D7D7EAD7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC8257D7D7D7D7D78250AC8157AC
        5757D7D7D7D7D781AC0081AC81D7D7D7D7D7D78257D7D75781D7D7D7D7D7D757
        A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7AC8257D7D7D7D7D7D7AC57D7D75781ACD7D7D7D7D781AC0081AC
        81D7D7D7D7D7D7D7AD8182ACD7D7D7D7D7D7D757A6A6D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC8257D7D7D7
        D7D7D7D7D757AC82D7D7D7D7D7D7D781AC0081AC81D7D7D7AD5757D7D75757D7
        D77B7BD7D7D7D757A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EA81D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC8257D7D7D7D78157D7D78157D7D7A67BAC
        D7D7D781AC0081AC81D7D7D757ADD757D77B81D757D7AD57D7ADD757A6A6D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7ACACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7AC8257D7D7D757ACD757D7AC57D782ACD757D7D7D781AC0081AC81D7577B
        D1578257D77B81D77B8181AC8181D757A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        EBACACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7AC7A81EAD7D7D7D7D7D7D7D7D7D7D7D781ACD7
        D7D78156ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC5681D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7812B2B4F81D7D7D7D7D7D7D7D7
        2BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D08181D7D7D7D7D7
        D7D7D7D7D7D7D7D7EAD7D7D7D7D7AC552B2B56EAD7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC5681
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D781ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7AC5681D7D7D7D7D7D7D7D7D7D7D7D7D7D7562B2B56D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7817AACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D0D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7AC5681D7D7D7D7D7D7D7D7D7D7AC8257D78182ACACAC82
        ACAC57D757A681D75757D781AC0081AC8181AC50D757AD57D77B81D757D757AC
        56AC5757A6A6D7D7D7D7AC5656ACD7D7D7D7D7AC2B2A2A2B81D7D7EA815681D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7815656D7D7D7D7
        D7AC812B56D7D7D7D7D7D7D7D7D7D7D7D756EAD7D7EAAC562BACD7D7D7D7D7D7
        D7D7D7D7D7D7D7817A81D7AC802B81D7D7D7D7D7D7D7D7D7D7D7D7AC5656ACD7
        D7D7D7D7D7D7AC2B2B56562B81D7D7D7D7D7EB5681ACD7D7D7D7815681D7D7D7
        D7D7D7D7D7D7D7D7AC5681D7AC812B2BD7AC567AD7D7D7D7D7D7D7D72B56D7D7
        D7D7562B56562B55D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7AC5656ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D77A8181D7D7D7EA7A56ACD7D7AC812B56D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC5656ACD7
        AC2B2A2A81D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC81
        2B81D7D7D7D7D7D7D7D7D7D7D7D7562B56562B2BD7D7D7D7D7D7D7815681D7D7
        AC812B2BEAD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D056
        56ACD7D7D7D7D7D7D7D7562BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC562B
        81D7D7D7D7D7D7D7D7D7AC82577B8157AC81AC81AC8257D757D757D750AD7B81
        AC0081AC57575757ACAC81D7D75757D7D757D78257575756A6A6D7D7D7D7ACAC
        562BACD7D7D7D7554F8181812B4FD7D7AC812B81D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7EAE9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7AC812B2BEBD7D7D7D7D7EA4FA5D7D7D7D7D7D7
        D7D7D7D7D756D7D7D7D7D7D7814FD7D7D7D7D7D7D7D7D7D7D7D7D7818156D7D7
        D7AC2BEAD7D7D7D7D7D7D7D7D7D7D7ACAC562BD0D7D7D7D7D7D7AC81D7D7D7D0
        56D7D7D7D7D7D7565681D7D7D781562B2A81D7D7D7D7D7D7D7D7D7D7D78156AC
        D7D7D75681AC8156D7D7D7D7D7D7D7D781ACD7D7D7D756D7D7D7D780ACD7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACAC562BACD7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7818181D7D7D781
        562B2BACD7D7D7E92BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACA54F2BD7E9EAD7AC2BACD7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC2BEAD7D7D7D7D7D7D7D7D7
        D7D756EAD7D7D781A5D7D7D7D7D7AC56552A81D7D7D7D75681D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D756562B2BD7D7D7D7D7D7D7D7AC81
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC2BEBD7D7D7D7D7D7D7D7AC82
        575757577BD781D7D78257D7D757ACAD50575756AC0081AC5757AC5757D7D7D7
        AC5757ACD7D7D75757578157A6A6D7D7D7D7D7D7D75656D7D7D7D756D7D7D7D7
        D75681D7D7D7AC2BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7562A2A2BACD7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EAAC
        D7D7D7EA5681D7D7D7D7D7D7AC56D7D7D7D7D7D7D7D7D7D7D756D7D7D7D7D7D7
        D756ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D78181D7D7D7D7D7D7D7D7
        D7D7D7D7D7D75656D7D7D7D7D7D7D781D7D7D7D756D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7AC2BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D756D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D781EBD7D7D7AC81D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7
        D7D7D7D7D7D7D7AC2B2A2B81D7D7D7D7812BD7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7E9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D78156D7D7D7D7AC56D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7562A2B56D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D75681D7D7D7D7E97AD7D7D7D7D7D7D7D7EAAC818181ACD7D7D7D7
        D7D7D7D7D7D7D7D7D78181D7D7D7D7D7D7D7D7D7D7D781E9D7D7D7D781D7D7D7
        D7D7D7D7D7AC2BD7D7D7D7D756D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7EB5656D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7
        D7D7D7D7D7D7D7D781ACD7D7D7D7D7D7D7D7AC825757578157D7D7D7AD7B8182
        D7D7D7A657A65757AC0081AC815757D7D757575757D78157575757D7D7565757
        A6A6D7D781D7D7D7D7EA2BD7D7D7D781D7D7D7562B2A56D7D7D7D781ACD7AC2B
        2B81562B81AC81D7D7D7D7AC2B567A4F2BD0D7D72B2B56ACD7562B2B55ACD7D7
        D7D7A52B5581AC2B2A2B4F81D7D7D7D7D7D7562BEAD7D7D7AC56D781EAD7D7D7
        AC2B2B2B56ACD7ACACD7D7D7EA2BA5ACD7D7D7D7D7552A2B81D7D7D7D7812B56
        ACAC2B2B56D7D7D7D7D7562A2B7AACD7D7D7D7D7D7D7D7D7D7D7D72BD7ACACD7
        D7D7D7ACD7D7D7D74F2B56812B812B2B81D7D7D7D7D7D7D7AC7AACD7D7D7AC2B
        2B81D7552A2BACD7D7D7D7AC2B2B81562A2B2B81D7D7562B2B81D7D7D7D7D7E9
        D7D7D7812B2B81AC81D7D7D72B2A80AC2B2B562B2B56D7D7D7D7D74F56564F2B
        ACD7D7D7D72BD7AC2B2B81D72B2BACD7A5D7D7D7D7D7812B2B2A2A2B56D7D781
        2B2B812B2A4FEAD7D7D7AC56D7D7D7D7812A2B812B2A2B55ACD7AC562A2BACD7
        ACD7D7D7D7AC2B56562B56D7D7812B2B812B2BAC81ACD7D7D7D7AC56D7D7D781
        2B2A2A2BACD7D7D7D7812B2A2A2A2A2A2B812B2A2B2B81D7D7D7D7D7D7562A2B
        812B2BAC81ACD7D7D7D7D7ACD7D7D7AC2B2B56AC81EAD7D7D7AC8181D7D7D7AC
        2B2B2B56ACD7D7D7D77A2B56AC812B2B81ACD7D7D7D7D7D781D7D7D7D7AC56D7
        D7D7D7D7562B2B56D7D7D7D7812AA5D74F2B81D74F2A2B81D7D7D7D7562A2A2B
        56ACD7D7D7D7AC82575757D7D75757575757D757577B7BACD7575781AC0081AC
        578181818281A68157828181818281A657818157A6A6D7D781ACD7D7D7812BD7
        D7D7D7ACACD7D72B81A5EAD7D7D7D72BACD7812B562B2B562B2A2B81D7D7D7AC
        81D7D7D78181D7812B56562B2B2B5656552BE9D7D7D78155562B4F2B5656562B
        D7D7D7D7D7D77AACD7D7D7D75656D781ACD7D7D7812B56562B2BD7AC56D7D7D7
        D7562B2A56D7D7D7D72B56562BD7D7D7D75656562B2B56562BACD7D7D7D74F4F
        562B2B2B81ACACD7D7D7D7D7D7D7814FD7AC81D7D7D7D7D7D7D7D7AC2B56562B
        562B56562BEBD7D7D7D7D7D72B2B81D7D7D7AC2B562B552B565656D7D7D7D781
        2B562B2B5656562BD72B2B56562BD7D7D7D7D7D7D7D7D74F2B562B2A2B81D7AC
        2B564F2A562B2B56562BD7D7D7D7D756D7D7D7AC81D7D7D7AC2BD7AC2B562B55
        2B562B2B2B81D7D7D7AC2B56818181562BAC562A56562B56562B81D7D7AC2B2B
        ACD7D7D7562B562B4F56565555AC2B2B562B56D78181D7D7D7ACACD7D7D756D7
        D74F4F562B4F562B2A2BEAD7D7D77A56D7D7D77A562B565656D7D7D7D72B56AC
        ACD7D7AC812B565656562BACD7D7D7D7D7554F562B564F2A2A2BD7D7D7D7D7D7
        D7D7D7562B562B2A2B81D7D7D72B2B81D7D7D7AC2B56562B4FD7D7D7D7565656
        2B2B56562B2B2B81ACACD7D756ACD7D7AC2B2BD7D7D7D7EA2B56562BACD7D7D7
        81ACD7EA2B5656D78181562BD7D7D7D72B555656564FD7D7D7D7AC825782AC81
        AC82828257825757578181818182AC57AC0081AC57828157ACD7D7D7A67B57D7
        D7D7D78157575756A6A6D7D756ABD7D7D78081D7D7D7D7D7EAD7D78181D7D7D7
        D7D7D02BD7D756ACD7D7ACD7AC568181D7D7D7D781D7D7D78181D75681D7812A
        2A81D7AC8181ACD7D7D7D7D7D7AC2AD7D7D7D756ACD7D7D7D7D781D7D7D7D7D7
        56ACD78181D7D7D7D7D7D7AC8156D7AC56D7D7D7D7817A2B56D7D7D7D7D7D7AC
        2BD7D7D7D7EAD7D7812BD7D72BACD7D7D7D7D7D7E9EAAC2B2A2A2A81D7D7D7D7
        D7D75681D78181D7D7D7D7D7D7D7D7D7ACD7D7ACD7ACD7AC2BD7D7D7D7D7D7D7
        565681D7D7D7D7EAD7EB2BACD78156D7D7D7D7D7EAD7D7ACD7D7D7562B55D7D7
        AC2BD7D7D7D7D7D7D7D7D7ACD7D7AC568181D78181D7D77A5656D7D7D72BEAD7
        D7D7D781D7D7D7AC81D7D7D7A556D7D7D7D7D72BACD7AC5656ACD7D7D781ACD7
        D7D7D7D7812B2BACD7D7ACD7D756ACD7D7EA5656ACD7D7D7D7D7D7ACEBD7D7D7
        4F2B56EAD7AC56D78181D7D7D7D7A5D7D7D756D7D72BEBD7ACD7D781814FACD7
        D7D75681D7D7D7AC5656D78156D7D7D7D756D7D7D7D7D7D7D7D7D7D7D7D78181
        D7D7D7D7D7D7D7D7ACD7D781AC2BD7D7D7D7D7D7D7D7D7ACEAD7D7568156D7D7
        D7567A81D7D7D7D7D7D7AC8156D7D7D7D7EAD7D7812BD7D7EAAC2B2A2A2A81D7
        56ACD7D7AC562BD7D7D7D7AC4FD7EA2BACD7D7D7ACACD7D756557AD7D7D7AC56
        D7D7D7D7D7D7D7D7EA56D7D7D7D7AC825757578157D1D7D7AD7B7B81D7D7D7AC
        57575756AC0081AC8157AC50D7AC57D7D75757D7D757ADAC57AC5757A6A6D7D7
        56ACD7D7D7EAD7D7D7D7D7D7D7D7D7D7562B56D7D7D7D7D7D7D755ACD7D7D7D7
        D7D7ACACD7D7D7D7ACD7D7D781ACD756ACD7AC2B2B81D7AC562AACD7D7D7D7D7
        D7AC2BD7D7AC5656D7D7D7D7D7D7D7EAD7D7D7D7D7D7D75681D7D7D7ACD7D756
        562BD7AC56D7D7D7D7E92B2BACD7D7D7D7D7D7EA81D7D7D7D7D7D7D78156D7D7
        56D7D7D7D7D7D7D7AC2B2A2B5681ACD0D7D7D7D7D7D7EAD7D78181D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7EA81D7D7D7D7D7D7D7812BD7D7D7D7D7D7D7D72BD7
        D7ACACD7D7D7D7D7D7D7D7D7D7AC2B2B7AD7D7D7D781D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D0ACD75681D7D7D7ACD7D7D7D756D7D7D7D7D7D7D7D7D75681D7D7D7
        D7D7D7D7D7D7D72BD7D7D7812BD7D7D7D7D0ACD7D7D7D7562B56D0D7D7D7D7D7
        D780D7D7D7D7812BD7D7D7D7D7D7D7D7D7D7AC2B2B81D7D7D7AC56D77A81D7D7
        D7D7D7D7D7AC2BD7D72BD7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7ACACD7AC
        ACD7D7D7D7ACD7D7D7D7D7D7D7D7D7D7E9562BEAD7D7D7D7D7D7D7D7D7D7D7D7
        D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7EAACD7D7D7AC2BACD7D7D7D7D7D75656
        2BD7D7D7D7D7D7D78156D7AC2B2A2B5681ACD7D755ACD7D7D75656D7D7D7D7AC
        56D7D756D7D7D7D7D7E9D7D7812BACD7D7812B81D7D7D7D7D7D7D7AC2B81D7D7
        D7D7AC825757825781D757D7D78257D7D757ACD750AD5781AC0081AC81ACA657
        D7578282D78181D782D757D75782D757A6A6D7D756ACD7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D78181D7D7D7D7D7D7D72BE9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        56ACD72BACD7D7D7D7D7D7D72B56D7D7D7D7D7D7D78156D7AC2B56D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D756ACD7D7562BEBD7AC2B81D78156D7D7D7D7D7EBD7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D77A81D7D7D7D7D7D7D7D7D7D7D7ACACD7
        D7D7D7D7D7D7D7D7D7D7D7D7D78181D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC2BD7D7D7D7D7D7D7D7D7D7D7D7D7
        D72B56ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D756ACD7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D72BD7D7D7D7D7D7D7D7D7D7AC2BD7D7D7D7
        D7D7D7D7D7D7D7D7D7D77A2BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7AC7A81EA2B56D7D7D7D7D78181D75681D7D7D7D7D7D7D78181D7AC4FD7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D78181ACD7
        D7D7D7D72B2BACD7D7D7D7D7D7D7D7D7D7D7AC81ACD7D7D7D7D7D7D7D7D7D7D7
        D7D781ACACD7D7D7D7D7D7D7D7D7D7D7D7D7AC2B81D7D7D7D7D7D7D75681D7D7
        ACACD7D7D7D7D7D72BACD7D7D7D7D7D7D7D7D7817AD7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7817AD7D7D7D7D7D7D7812B81D7D7D7D7D7AC8257ACAC57AC815781
        ACAC57D7ACAD57D75782AD81AC0081AC81D78157D7ACD757D75781D7578182AD
        8182D757A6A6D7D72BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC2BAC
        D7D72BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D756D7D72BEAD7D7D7D7D7D7D7
        ACEAD7D7D7D7D7D7D78181D7AC2BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D756
        ACD7D7ACACD7D7D7ACD7D78181D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACACD7D7D7
        D7D7D7D756ACD7D7D7D7D7D7D7D7D7D7D7D7D7ACACD7D7D7D7D7D7D7D75656D7
        D75681D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7AC56D7D7D7D7D7D7D7D7D7D7D7D7D7D75681EAD7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D74FACD7D7D7D7D7D7D7565681D7D7D7D7D7
        D7ACD7ACD7D7D7D7D7D7D7D7D7D7AC56D7D7D7D7D7D7D7D7D7D7D7D7D7D7567A
        EAD7D7D7D7D7D7D7EA81D7D7D7D7D7D7D7D7D7D7D7D7818156AC2BACD7D7D7D7
        D75681D756ACD7D7D7D7D7ACD7D7EAD7AC56D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D781D0D7D7D7D7D7D7D7565656D7D7D7D7D72BACD7D7D7D7D7D7
        D7D7D7D7D7D781562BD7D7D7D7D7D7D7D7D7D7D7D7D7565681D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D756ACD7D7D7D7D7D7D7D7D7D72BE9D7D7
        D7D7D7D7D7D7D78181D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D78156E9D7D7D7D7D7AC8257D78182ACD7827BADAC57D757AC81D75782D781
        AC0081AC81D7D7D757ACA6ACD7577BD781ACAC57D7D7D757A6A6D7D72BACD7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D781ACD7D72BD7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D72BD7D72BD7D7D7D7D7D7D7EB81ACD7D7D7D7D7D7D7D7ACD7
        D7AC2B5681EAD7D7D7D7D7D7D7D7D7D7D7D7D72BACD7D7D7D7D7D7D781D7D781
        81D7D7D7D7D7D7D7D7D7D7D7D7D7D7562BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D72B56D7D7D7D7D7D7D7D7AC81D7D75681D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7562B81ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D72BACD7D7D7D7D7D7D7818181D7D7D7D7D7562BD7D7D7D7D7D7D7D7D7D7
        D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7812B81ACD7D7D7D7D7AC2AACD7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC2B2B81D7D7D755ACD755ACD7D7D7D7D72B
        81D7D7D78156D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EA2B80D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7AC562B81E9D7D7D7D7D7D7D7D7D7AC2BD7D7D7D7
        D7D7D7D7D7D7D7D7D7D75681D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC81D7D7D7D7
        D7D7D7D7D0EAD7D7D7D7D7D7D7D7D7D72BEAD7D7D7D7D7D7D7D7D75681D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7812B56ACD7D7D7AC82
        57D7D7D781828257D7A657D7ACA6AC57D7D7D781AC0081AC81D7D7D7D782ACD7
        D75757D7D78182D7D7D7D757A6A6D7D77AACD7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D74FD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC2AACEA2B
        D7D7D7D7D7D7D7D72B81D7D7D7D7D7D7D7D7D7D7D7D7D7812B56D7D7D7D7D7D7
        D7D7D7D7D7D7D781ACD7D7D7D7D7D7AC2BACD7AC81D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7
        D7D7D7D7D7D7D7D7D7A581D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D78156AB
        562B81D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D72BEAD7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7ACACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7AC562B56D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7812B2BACD72B81D781ACD7D7D7D7D7ACD7D7D7D7AC7AD7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D781552BD7D7D7D7D7D7D7D7D7D781D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC2BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D756D7D7D7D7D7D7D7D7D7D781ABD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D07A2BABD7D7AC8257D7D7D7D7AC82D7D78157D7
        D7D781ADD7D7D781AC0081AC81D7D7D7D7D7D7ADACA682ACD7D7D7D7D7D7D757
        A6A6D7D7EBD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D77AEAD7D7D7D7D7D7D7D7D7D7E9D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7EAD7D7D7
        D7D7D7D7E9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC567AAC81D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC56
        D0D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC81D756E9D7
        D7EAD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7E9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7EBACD7D7AC8257D7D7D7D7D7D7D7AC82AC81D1D7D7D7D7D7D781AC0081AC
        81D7D7D7D7D7AC5757D7D75757D7D7D7D7D7D757A6A6D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7814F56D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC8257D7D7D7
        D7D7D78157D7D75757ADD7D7D7D7D781AC0081AC81D7D7D7D7D75782AC577BAC
        8257D7D7D7D7D757A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACEA
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        ACD7D7D7D7D7D7D7D7D7D7D7D7D7AC8257D7D7D7D7D7AC57AC8157AC8157D7D7
        D7D7D781AC0081AC81D7D7D7D7D757D7577B5757D757D7D7D7D7D757A6A6D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D781D7D7D7D7D7D7D7D7D7D7D7
        D7D7AC8257D7D7D7D7D781AD57815757D757D7D7D7D7D781AC0081AC81D7D7D7
        D7D7D757577B575757D7D7D7D7D7D757A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D756D7D7D7D7D7D7D7D7D7D7D7D7D7AC8257D7D7D7D7D7D781
        575750AC57D7D7D7D7D7D781AC0081AC81D7D7D7D7D7D7D750AC8250D7D7D7D7
        D7D7D757A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7812B2B
        2B56ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7AC2B2B2B81D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACACD7
        D7D7D7D7D7D7D7817AACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EA8156ACD7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC
        D7D7D7D7D7562B2B2B81ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7ACACD7D7D7D7D7D781ABEBD7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACEAD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D781ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7AC5681D7D7D7D7D7D7D7D7D7D7D7D7D756D7D7D7
        AC7A81EAD7D7D7D7D7D7AC8257D7D7D7D7D7D7D75757D750D7D7D7D7D7D7D781
        AC0081AC81D7D7D7D7D7D7577B57815757D7D7D7D7D7D757A6A6D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D781
        5681D7D7D7D7D7D7AC5656ACD7D7D7D7D72B2B7A80562B56D75681ACD7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7565681D7D7D7D7D7D7D7D7D7D7D7D7D7D7D72B2B
        56562B56D7AC5681D7D7D7D7D7D7D7AC2B2A2A2B81D7D7D7D7D7AC812B2BD7D7
        2B81D7D7D7D7D7D7D7D7D7D7D7D7AC5680EAD7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7812BACD7D7D7D7D7D7D7D7D7AC5656ACD7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D781562BACD72B81D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7AC5680D7D7D7D7AC2B81D7D7D7AC2A568156562B81
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D74F2A2A2B56AC
        D7D7562A2A56EAD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7A55681D7D7D7D7D7
        D7562A2A2A56ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7AC2B2A2A81D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D78156ACD7D7D7D7D7815681D7D7D7D7D7
        AC812B81D7D7D7D7D7D7D7D7D7D7D7AC56D7D7D7AC812B55D7D7D7D7D7D7AC82
        57D7D7D7D7D7D7A67B81575757D7D7D7D7D7D781AC0081AC81D7D7D7D7D757D7
        50575757577BD7D7D7D7D757A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7818156D7D7D7D7D7D7ACAC562B
        ACD7D7D7D72BD7D7D7E9812B817A56ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7E9
        AC812B81D7D7D7D7D7D7D7D7D7D7D7D7D7D756D7D7D7D756ACD78156ACD7D7D7
        D7D7D7562B8181814F2BACD7D7D7D7D7D75681D781ACD7D7D7D7D7D7D7D7D7D7
        D7D7AC8156ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D781EA
        D7D7D7D7D7D7D7D7D7ACAC562BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D78156D781ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC
        8156D7D7D7D7D781ACD7D7D7AC56D7D7D7AC562AACD7D7D7D7D7D7D7D7D7D7D7
        D7D7EAD7D7D7D7D7D7D7D7D7D7812B818181562BACD7ACD7AC567AD7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7AC56562B56D7D7D7D7AC2B568181562B81D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC2B2B2B7AD7D7E9EAD7AC2BACD7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D781562B2BACD7D7D7EAAC812B56D7D7D7D7D7D7AC2BE9D7D7D7D7D7D7D7
        D7D7D78181D7D7D7D7D7EA4FA5D7D7D7D7D7AC8257D7D7D7D7D7818157575650
        5782ACD7D7D7D781AC0081AC81D7D7D7D7D77B82AC8157AC827BD7D7D7D7D757
        A6A6D7D7D7D7AC818181ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D75656D7D7D7D756D7D7D7AC2B81
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7AC2BEAD7D7D7D7D7D7D7
        D7D7D7D7D7D781D7D7D7D7ACACD7D7D7D7D7D7D7D7D7D756D7D7D7D7D78181D7
        D7D7D7D7D7D756D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7AC818181ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        8156D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D756EAD7D7D7D7D7
        D7D7EAAC8181ABACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D756D7D7D7812BACD7D7D7D7D7D7D7D7D7ACEBD7812B2A2BACD7D7D7D7D7D7D7
        D781ACD7D7D7D7AC2BD7D7D7D7D756D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7AC2BACD7D7D7AC81D7D7D7D7AC2BD7D7EBD7D7D7D7D7D7D7D7D7D7D7D7D7
        D7EA2B2B56562B2BEAD7D7D7D7D77AD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7812BD7D7D7D7
        D7D7AC2BACD7D7D7D7D7D78181D7D7D7D7D7D7D7D7D7D781ACD7D7D7D7D7D7AC
        56D7D7D7D7D7AC8257D7D7D7D7D782817B8257D1AC57D7D7D7D7D781AC0081AC
        81D7D7D7D7D7AD5757D7D75757ACD7D7D7D7D757A6A6D7D7AC2B2A2A2A2A2A2B
        81562B56812B56AC81EAD781EBAC2B2B56ACD72B2B2B81D7D7812B2B55D7D7D7
        D7D781D7D7D7D7D72BD7D7D7D7ACACD7D7D72B2A2A2B81D7D7D7562A56812B56
        AC81ACD7D7812B2B812B2B812B2BAC81ACD7D7D7D7812B56ACAC2B2A2B56ACD7
        D7D7D7D7D72B56D7D7D7D756ACD7AC2B2A2B2B81D7D7D7D7D7D7D7EAD7D7D781
        2B2A2BACD7D781D7D7D7D781D7D7D7812B2A56D7ACACD7D7D7AC2B2A2BACD7D7
        D7AC2AACAC2B2B81D7552B81562B56812B2A2B56ACD7D7D7D7D7EA562A2A2A2A
        2A2B56812B2B812B2A2BEAD7D7D7D781EAD7D7D7D72BD7D7D7D7D7D7AC2B2BAC
        D7A5D7D7AC2B2A2BACD7D7D7D72B2A2B81D7D7D7D7812B2A2A2A2A2A4F812B2B
        81562B812B812B2A2BACD7D7AC2B2A2BACD7D7D7D7ACD7D7D7AC2B2A2BACD781
        D7D7D7D7AC2A81D72B56562B2BEAD7E9ACD7D7D7D7ACACD7D7AC2B2A2BD7D7D7
        AC2B2B2A2B812B2B81D7812B2BACACACD7D7D7D7D7D7AC8181D7D7D7D781D7D7
        AC2B2A2AACE92B2B4FACD7D7562A56D7ACACD7D7D7AC56D7D7D7D78181D7D7D7
        812B2A2B56812B2B2B81ACD7D7D7D7D7D7D7D7EB562A2B2B2B2B2B2A2B81562B
        2B56ABD7D7D7D7D7D7D7D7D7D7D7AC56ACD7D7D7D7D7D78181D781D7D7D7D781
        2A2B2B56D7D781EAD7D7D78156ACD7D7D7D7D7AC2B2A2BACD7D7AC8257D7D7D7
        D7D7AD5757D7D75750ACD7D7D7D7D781AC0081AC81D7D7D7D7D7D7D7AC82AC57
        D7D7D7D7D7D7D757A6A6D7D75556ACACD7E9ACA5552B562B2B562B2A2B81D781
        ACEA56815656D78181562BD7D72B56562BACD7D7D7D781ACD7D7D7812BD7D7D7
        D7D7D7D7D7D7D78156562BD7D7AC2B56552B562B2A2B56D7EB2B56562B56562B
        55562B2A2BEAD7D7D75656562B2B565656562BD7D7D7D7D7AC81D7D7D7D7AC2B
        ACD7562B5656562BACD7D7D7D7D7D7D7D7D7D72B2B565656D7D756D7D7D7D7AC
        ACD7D72B8181D7D7AC81D7D7D7AC2B565656D7D7D7D7E9D7AC2B562B552B562B
        2B562B2B5656565656D7D7D7D7D7812B81ACD0D7ACAC562B56562B56562B81D7
        D7D7D78181D7D7D7812BD7D7D7D7552B562B562B2B2B81D7812B565656D7D7D7
        AC2B56562BD7D7D7D72B56ACACD7D0AC812B56562B2B562B562B56565581D7D7
        812B565656D7D7D7D7D7D7D7D7D7AC56562B2B2B81D7D7D781ACD7EB7AD7D7D7
        81ACD7AC56D7D7D7D7D781D7D77A5681ACD7D7D7AC2B4F56562B56562B2B2B56
        562B2A2BACD7D7D7D7D7562B56D7D7D7D781D7D7A52B81ACD7D756815656D7AC
        2B564F2B2B2BD7D7D7EB7AD7D7D7ACAC81D7D7D77A562B562B2A2B56562B2A2B
        81ACACD7D7D7D7AC56562B562B2A2B562B2A2A56564F2B2B56ACACD7D7D7D7D7
        D7D72B2BACD7D7D7D7D7EA2B81D756EAD7D7D7562B56562B81D78181D7D7D7AC
        2B2A2AACD7D7D7812B565681D7D7AC8257D7D7D7D7D7D7D7D77BD757D7D7D7D7
        D7D7D781AC0081AC81D7D7D7D78282D7D75757D7D782A6D7D7D7D757A6A6D7D7
        56D7D7D7D7D7D7D7D7D7D7D7ACD7D7568156D756ABD7D7D78181D7D7D7AC56D7
        D72BD7D74FACD7D7D7D77A81D7D7D78181D7D7D7D7D7D7D7D7D7D7D7D7AC2BD7
        D7AC56D7D7ACD7D756AC2BD7AC2BD7D7ACD7D7ACD7D781AC2BACD7D7D7EAD7D7
        812BD7D7D7D756D7D7D7D7D7EA81D7D7D7D7AC2BD7D74FACD7D7D781ACD7D7D7
        D7D7D7D7D7ACD7ACD7D78156D7D756ACD7D7D7D7EAD7D7817AEAD7D7817AD7D7
        D7D7D7D78156D7D7D7D7D7D7D7EAD7EB2BACD7EAACD7D7ACD7D7D7D756D7D7D7
        D7D781ACD7D7D7D7D7D7D7D7D7D7ACD7D756ACD7D7D7D78181D7D7D78156D7D7
        D7D756812BD7D7AC5656ACD756ACD78156D7D7D7D7D7D7AC4FD7D7D7EA56D7D7
        D7D7D7D7D7D7D7D7D7E9D7ACD7D7D7D75681D7D756ACD78156D7D7D7D7D7D7D7
        D7D7D7D7D7AC567A81D7D7D7ACACD7D781D7D7D781ABD7AC56D7D7D7D7D7EAD7
        D7AC56ACD7D7D7D7D7562BE9D7ACD7D72B2A2BE9D7AC8056ACD7D7D7D7D75681
        56D7D7D7D7EAD7D7D74FACD7D7D7D7D7AC56D7A556D7D756AC56D7D7D7D781D7
        D7AC2B2A56D7D7D7AC5656D756AC7AD7D0D7AC2B2A2A2AACD7D7D7D7D7D72B56
        D7AC2BEA8181AC81D7ACD7562A2A2A56D7D7D7D7D7D75656ACD7D7D7D7D7D72B
        D7D72BACD7D7D7EAD7D7818156D78181D7D7D7D7557A2AACD7D7D7D7EAD77A81
        D7D7AC8257D7D7D7D7AC82D7D78157D7D7D7ACD7D7D7D781AC0081AC81D7D7D7
        57AC8281D75781D781ACAC57D7D7D757A6A6D7D7ACD7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7EAACD756ACD7D7562BACD7D7812B81D7AC4FD7D77AD7D7D7D7D756AC
        D7D7D7EAD7D7D7D7D7D7D7D7D7D7D7D7D7E981D7D78181D7D7D7D7D7D7D7ACD7
        AC56D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D78156D7D7AC2B81D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D72BD7D7D0562BEBD7D7D7D7D7D7D75556D7D7D7D7ACAC
        D7D72BACD7D7D7D7D7D7D7D7562B56D78181D7D7D7D7D7D7ACACD7D7D7D7D7D7
        D7D7D7D72BD7D7D7D7D7D7D7D7D7812BACD7D7D7D7D7D7D0D7D7D7D7D7D7D7D7
        D7D7D7D7D781D7D7D7D7D75681D7D7D7EBD7D7D7D7D7EA562BD7D7D7812BD7D7
        2BD7D781ACD7D7D7D7D7D7AC81D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D781ACD7D72BACD7A5ACD7D7D7D7D7D7D7D7D7D7D7D7D7812BACD7D7D7
        D7D7D7D7D7D7D7D72BACD7AC56D7D7D7D7D7D7D7D7D7812B2BEAD7D7D7D7ACD7
        D7D7D7D7812B4FD7D7D7562BD7D7D7D7D7D7AC2BACD7D7D7D7D7D7D7D7AC2B2B
        ACD7D7562BACD78181D7D7AC2B81D7D7D7D7D7D7D7EA562B81D7D7D7D7ACACD7
        AC562BACAC2A2A2B5681ACE9D7D7D7D7D7D756812B2B2BD7D7565656D72B2A2B
        5681ACACD7D7D7D7D7D7812BD7D7D7D7D7D7D7D7D7D72BD7D7D7D7E9D7D7562B
        56D75681D7D7D7D7812B7AD7D7D7D7D7D7D781ACD7D7AC8257D7D7D78282AC57
        D7A657D7D757A657D7D7D781AC0081AC81D78182AC82D757D78181D757D7ACAC
        8257D757A6A6D7D7D7D7D7AC8181D7D7D7D7D7D7D7D781ACACD7D756ACD7D756
        ACD7D7D78181D7D7AC56D7D7D7D7D7D7D7D756ACD7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D78181D7D7D7D7D7D7D7D7D78156D78156D7D7D7D7D781AC
        D7D7D7D7D7D7D7D75681D7812B81D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D72BD7
        EA2B4FACD7D7D7D7D7D7D7D7ACACD7D7D7D7D7D7D7D72BD7D7D7D7D7D7D7D7D7
        D78181D78181D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC2BD7D7D7D7D756AC
        D7562B81D7D7D7D7D7D7D7D7D7D78181EAD7D7D7D7D7D7D7D7D7D7D7D7D7D756
        ACD7D7D7D7D7D7D7D7D7D7D756D7D7D7D7D7D7D72BEBD7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D78181ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D72BEAD7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC55D7D7A5
        56D7D7D7D7D7D7D7D7D7D7AC56EAD7D7D7D7D7D78181D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC7AACD7D756ACD7D78181D7D7D7
        D7D7D7D7D7D7D7D7D7D78155D7D7D7D7D7D7D7D7D7812BD7D7ACACD7D7D7D7D7
        D7D7D7D7D7D72BEAD081ACD7D7AC2BACD7EAACEAD7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D72BD7D7D72B56D7D7812BACD756ACD7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7AC8257D78182ACACAC81ADAC57D757D7ACD1817BAD81
        AC0081AC81ACAC50D7578282D77B81D7818157D750AC8257A6A6D7D7D7D7D781
        564FD7D7D7D7D7D7D7D7565656D7D72BACD7D7D7D7D7D7D7D7D7D7D78156D7D7
        D7D7D7D7D7D74FACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D75681D7
        D7D7D7D7D7D7D7D78181D78156D7D7D7D7AC562BACD7D7D7D7D7D7D756ACD781
        56D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D72BD7AC2BACD7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D72BD7D7D7D7D7D7D7D7D7D7D7D7D75681D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7AC56D7D7D7D7D75681D75680EAD7D7D7D7D7D7D7D7
        D7AC562BACD7D7D7D7D7D7D7815556EBD7D7D756ACD7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7EA2BD7D781D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7565656D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D72BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7ACACD7ACD7D78156D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D78156D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D75681D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D72BD7D7E9D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D72AD7
        D7D7ACACD7D7EAACD7D756ACD7D7D7D7D7D7D7D7D7D7D7D7D7D781D7D7D7AC82
        57ACAC57AC81AC81ACAC57D757A657D750D7AC81AC0081AC7B57AC57ACAC57D7
        D75781D7D757D7AC57577B57A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D78156
        D7D7D72BACD7D7D7D7D7D7D7D7D7D7D7817AD7D7D7D7D7D7D7D72BACD7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D756ACD7D7D7D7D7D7D7D7D75681D7D7
        D7D7D7D7D7EA2BACD7D7D7D7D7D7D7D7D7D7D7D7812B56ACD7D7D7D7D7D7D7D7
        D7D7D7D7D7AC2BD7D7AC552B81D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EA2AD7
        D7D7D7D7D7D7D7D7D7D7D7D75681D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        ACD7D7D7D7D7D7D7D7D7812B56ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        AC8181D7D7D7D72BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC2BD7D72B
        81D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7AC2BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D72B56D7D7D7D7817AD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D756ACD7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7ACACD7
        D7D7D7D7D7D7D7D7D7D7D7D7D7AC2BD72B56D7D7D7AC81D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D72BD7D7D7D7D7D7D7AC81D7D72BAC
        D7D7D7D7D7D7D7D7D7D7D7D7D7AC2B81D7D7AC825757575781D757D7D78257D7
        D757ACD750AC8181AC0081AC5782825781D7D7D7AC5757D7D7D7D78257825756
        A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACACD7D7D780ACD7D7D7D7D7D7D7
        D7D7D7D78181D7D7D7D7D7D7D7D781ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D756ACD7D7D7D7D7D7D7D7D78181D7D7D7D7D7D7D7D781EBD7D7D7D7
        D7D7D7D7D7D7D7D7D7E9812B81D7D7D7D7D7D7D7D7D7D7D7D7AC56D7D7D7D781
        2B56D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D756D7D7D7D7D7D7D7D7D7D7D7D7D7
        AC81D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC
        562BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC2BD7D7D7D7D781ACD7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D056D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D756D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACACD7D7D7D7AC81D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D756ACD7D7D7D7D7D7D7
        D7D7D7D7D7812B2BD7D7D7D7D7D7D7D7562B2BD7D7D7D7D7D7D7D7D7D7D7D7D7
        D7812BACACACD7D7D7812BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D756D7D7D7D7D7D7D7812BD7D781ACD7D7D7D7D7D7D7D7D7D7D7D7
        D7D7ACD7D7D7AC8257577B8157D7D7D7AD5757ACD7D7ADAC57AC8156AC0081AC
        578157AC828182815757575782AC8182D77B7B57A6A6D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7EBD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7EAD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EBEAD7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EAACD7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EAD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7EAD7D7D7D7D7D7D7D7D7D7D7D7D7EAACD7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EA56D7D7D7D7D7D7D7EAD7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7EBD7D7D7D7EAD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC8257818281
        AC81ACA65781578182ACAC7BD17B7B57AC0081AC815757D7D757575757D75757
        575757D782818157A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D78181ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC82575757D7D75757575781D757575757AD
        D7575781AC0081AC5781825757D7D7D7A67B8182D7D7D75757825756A6A6D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC81ACD7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7AC82577B578157D7D7D7AD818157ADD7D75757577B56AC0081AC57815757
        ACAC57D7D75757D7D781ADA657825757A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC825757505781D782D7
        D78257D7D781ACD750578157AC0081AC8182AC50D757D757D77B81D757AC57D7
        50ACAC57A6A6D7D7AC4F2B2B7AD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7AC81ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7AC81ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D78156ACD7D7D7E9D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACEAD7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        E9ACEAD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC5681D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7562B2B2B81ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC81ACD7D7D7D7D7D7D7D7D7D7D7D7
        D7EA8156ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC2B2B2B56ABD7D7D7
        D0D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7AC825782D757AC7BAC81ADA657D757AC57D757AD8281
        AC0081AC81D75757AD818257D77B81D7578157AC577BD757A6A6D7D7552B5656
        2B56D7AC5681D0D7D7D7D7D7D781567AEAD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7815681EAD7AC
        2B2A2BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7812BD7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC2B2A2B81D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC5656ACD7D7AC567AD7D7D7D7D7D7EA
        AC562BACD75656D7D7D7D7D7D7AC5656ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7562A2A2A56ACD7D7D7D7D7D7D7D7D7D7D7D77A5681
        D7D7D7D7D7AC567AD7D7D7D7D7D7D7D7D7D7D7562A2A2A56ACD7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7AC812B56D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC2A568156562B81D7D7D7D7
        D7D7D7AC5680D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D78156ACD7D7D7D7D7D7
        D7D7D7D7AC2B2A2BACD7D7D7D7D7D7D7D7D7D7D7D7D081562BD7AC5681D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7562B5681562B4FAC802BD7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC82
        57D78182AC82AC81ACAC57D757D757D75757AD81AC0081AC81D7D7D757D7AD57
        D77B81D757D7D757D7D7D757A6A6D7D756D7D7D7D756ACD77A56ACD7D7D7D7D7
        D7AC812B2BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7EBAC812B55D7ACD7EAAC2BD7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC81D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7AC2BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7ACAC562BACAC56562B56D7D7D7D7D7D7D7D7AC2BD7ACA5D7D7D7D7D7
        D7D7AC7A2B81D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC2B
        568181562B81D7D7D7D7D7D7D7D7D7D7D7AC812B81D7D7D7D7AC8156D7D7D7D7
        D7D7D7D7D7D7AC2B568181562B81D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        AC2BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7AC56D7D7D7AC562AACD7D7D7D7D7D7AC8156D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D781562B2BACD7D7D7D7D7D7D7D7D7ACD7EA812BD7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D75656D77A56ACD7D7D7D7D7D7D7D7D7D7D7D7D756
        ACD7D7EB812B56AC81D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC8257D7D7D757ADD757D7A657D7
        81ACD7AC82D7D781AC0081AC81D7D7D7AC5781D7D75757D7D75757ACD7D7D757
        A6A6D7D781D7D7D7D7AC81D7D7D7D7D7D7D7D7D7D7D7D7D72B81D7D7D7D7D7D7
        D7D7D7D7D7EBD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D72B81D7D7D7D7AC81D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7AC818181ACD7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7AC81D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D75656D7D7D7
        D72BACD7D7D7D7D7D7D7D756ACD7D7D7D7D7D7D7D7D7D7D7AB2BD7D7D7D7D7D7
        D7D7D7D7ACEAD7D7D7D7D7D7D7D7D7D7D7D7AC81D7D7D7D7AC2BD7D7D7D7D7D7
        D7D7D7D7D7D7D7AC2BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7AC81D7D7D7D7
        AC2BEAD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC81D7D7D7D7D7D7D7D7D7
        D7D7D7AC5681D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D756D7D7
        D7812BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7812BD7D7D7D7D7D7D7D7D7D7D7D7D7AC81D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D756EAD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D781ACD7D7EA2B81E9D7D7D7D7D7
        D7D7D7D7ACACACD0D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7AC8257D7D7D7D78157D7D78157D7D7575782D7D7D781AC0081AC
        81D7D7D7D7D7D7D7AC8181ADD7D7D7D7D7D7D757A6A6D7D7EAD7D7D7D7812B2A
        2BACD7D781D7D7D7D7D7D7D7AC56D781D7D7D7D7D72B2BACD72B2B4FACD7D756
        2A2B81562B2B81562B81562B81AC81D7D781D7D7D7D7D7D7D7AC7AD7D7D7562B
        2A2A2B2B2B2B2B2A2B812B2BACD7A5D7D7D7D7D7D7D7812B2B56D7D7D7D7812B
        D7EA562A2A2A2A2A2B7A812B2B81ACD7D7D7D7D7D7EA2B2B56812B56AC81EAD7
        D7D7D7562B56D7812B2BACD7ACACD7ACACD7D7D7562B2A2B5681EAD7D7D7D7D7
        D7D7D7812B56D7812A2B56EAD7D7D7D72BD7D7D7D78156D7D781D7D7D7D7D756
        2A2B56D7D7D7D7ACACD7D7D7D756ACD7D7D7D7812B2BAC562B562B2B81562B81
        8181D7D7D7D7E981D7D7AC2B2A2AACD7AC2B2A56ACEAACACD7D7D7D756ACD7AC
        2B2B81562A2B81D7D7D7D7562AD7AC81D7D7AC2B2A2AACD781D7D7D7D7D7D7D7
        562A2B56ACD7D7D7D7812A2B56ACD7D7D7D7D7D7D7D7D7D7AC552BEAD7562B81
        D7ABD7D7D7562A2A2B56E9D7D7D7D7D7D7ACD7D7D7AC2B2A2A2B2B2B2B2B2A2B
        81562B2B81D7D7AC2B2A2A81D7ACE9D7D7D7D7D7D7AC56ACD7D7D7AC2A2B56AC
        D7D7D7562B2A2B56ACD7D7D7D7D7D7D7D7D7D7D7D72B2B567A2B2A2B2B2B2B2B
        2A2B81D7D7D7D7D7ACD7D7D7812A2A2B56D7D7D7D7D7562A2A2A2A2A2B81ACD7
        D7AC2B2A2BACD7D7562A2B2B81D7D7812B56D7ACACD7ACACD7D7AC8257D7D7D7
        D7D7D7D7D75782ACD7D7D7D7D7D7D781AC0081AC81D7D7D7D7D7D78157D7D757
        ACD7D7D7D7D7D757A6A6D7D7D7D7D7D7D72B2B565656D7D756ACD7D7D7D7D7D7
        567AD781ACD7D7D7AC565681D756815656D7D72B562B2A2A56562B2B562B2B56
        2B2A2B81D756ACD7D7D7D7D7D75681D7D7D756562B562B562B2B2A56562B4F56
        2B2B2B81D7D7D7AC2B562B56562BACD7D7D7D7D7D7812B81ACD0D7ACAC562B56
        562B2B2B81ACACD7D7812B562B2B562B2A2B81D7D7D7D72B5656552B56562A2B
        2B2BD7AC56D7D7D756562B56552B2B56ACACD7D7D7D7D756562BD7AC81802BAC
        D7D7D7812BD7D7D7562B2BD7D756ACD7D7D7D72B56562BEAD7D7D7AC7AD7D7D7
        AC2BD7D7D7D7D72B4F562B2B562A56562B2B562B2A2BACD7D7D7D781D7D7A52B
        81ACD7D7812B562B2A2A2B56D7D7D7D72BACD7812B562B2B56564FD7D7D7D781
        ACD7D781D7D7814F81ACD7D74FD7D7D7D7812B562B5656552BD7D7D7D7562B56
        2B2B2B56ACACEAD7D7D7D7D7D7D75681AC2B562B2B2B56D7AC2B5656564F56D7
        D7D7D7D7D7D7D7D7D7D7AC56562B4F2B2B2A56562B2B56562B2B56812B56562B
        2B2B56D7D7D7D7D7EA2B2B81D7D7D7AC7A815681D7D7D72B562B564F2B2B56AC
        ACD7D7D7D7D7D7D7AC2B562B2B562B2B4F2B2A2B56562BD7D7D7D7D7D7D7D7D7
        D78156562BACD7D7D7812B81ACACAC8181562BEAD7812B565656D7AC2B565656
        2BAC562A56562B2B2BD7AC81D7D7AC8257D7D7D7D7D7D7D157D7D781ACD7D7D7
        D7D7D781AC0081AC81D7D7D7D7D77B57825757AC5081D7D7D7D7D757A6A6D7D7
        D7D7EAACD7ACD7D78156D7D756ACD7D7D7D7D7D72BACD756ACD7D7D7D7552BAC
        D7D7D7AC56D7AC56D7A581AC81D7ACD7D7D7ACD7AC568181D756ACD7D7D7D7D7
        D72BACD7D7D7AC5581D7812BACEA5681D7ACD7D7AC5656ACD7D7D7D72B8156D7
        D72BACD7D7D7D7D7D781ACD7D7D7D7D7D7D7D7D7D7EAAC2B2A2A2A81D78081D7
        EBACD7D7568156D7D7D7D7EAD7D75656D7AC5656AC55D7AC56D7D7D7AC5556D7
        ACEA562A2A2A55D7D7D7D781562BD7D7D7D756ACD7D7D78181D7D7D7818156D7
        D756ACD7D7D7D7D7D7D72BEBD7D7D7AC56D7D7D7AC4FD7D7D7D7EB2BD7D7AC56
        2BACD7D7ACE9D7AC8156ACD7D7D7D7EAD7D7D74FACD7D7D756A5D78181568156
        D7D7D7AC2BD7D756ACD7D7ACD7AC55D7D7D7D781D7D7D7EAD7D7EA4FACD7D7D7
        2BEAD7D7D7AC4F5681D7AC8181ACD7D7D7EAD7D7D7AC562A2A2A81D7D7D7D7D7
        D7D7812B8156D7D7568156D78156D7D7D7AC56D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7812BACEB5680D7D7D7EBACEA812B2A2B2BD7D7568156D7D7D7D7D7D75656AC
        D7D7D7D7D7D78181D7D7D7814F81EAD7E9562A2A2A56D7D7D7D7D7D7D7D7D7D7
        ACD7EA2B81D7812BD7AC2BD7D7D7D7D7D7D7D7D7D7D7D7D72BACD7D7D7ACACD7
        D7D7D7D7D7D781ACD756ACD78156D7AC56D7D7D7812B2BACD7D756AC2BD7AC56
        D7D7AC8257D7D7D7D7D782508257D7825657D7D7D7D7D781AC0081AC81D7D7D7
        D7D757D757577B57D757D7D7D7D7D757A6A6D7D7D7D7562BD7D7D7D7ACABD7D7
        56ACD7D7D7D7D7D7D7D7D756ACD7D7D7D7564FD7D7D7562BACD78181D7D75656
        56D7D7D7D7D7D7D7D7D7ACACD74FACD7D7D7D7D7D7D7D7D7D7D7D7ACD7D7817A
        4F2B2A81D7D7D7D7D7812BD7D7D7D7D7AC2B81D7D756D7D7D7D7D7D7D7D0D7D7
        D7D7D7D7D7D7D7D7AC2B2A2B5681ACD7D756ACD7D7D7D7D7D7EAACD7D7D7D7D7
        D7D75681D7D7562B2BA5D7AC56D7D7D7D7ACD7D7552A2B4F81ACACD7D7D7D7AC
        2B81D7D7AC2B4FD7D7D7D7D7D7D7D7D7D72B81D7D72BACD7D7D7D7D7D7EB7AD7
        D7D7D78156D7D7D7D7D7D7D7D7D7AC2BD7D7D7ACACD7D7D7D7D7D7D7D7ACEAD7
        D7D7D7D7D7D7D7AC2B2BACD756ACD7D7562B2BACD7D7D7D7D7D7D72BD7D7D7D7
        D7AC81D7D7D7D7D7D7D7D7D7D7D7D7AC2B2BACD72BD7D7D7D7D7812BACD78156
        2AD7D7D7D7D7D7D72B2A2B5681ACACD7D7D7D7D7D7AC2B5656ACD7D7AC2B81D7
        8181D7D7812BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7AC56562B2B80D7D7D7D72B
        2A2A2B568181D7D7AC2B81D7D7D7D7D7D7812BD7D7D7D7D7E92B2BEAD7D7D7D7
        ACEAD72B2A2B5681ACACD7D7D7D7D7D7D7D7D7D7D7D7D72B812B2B2BD7AC81D7
        D7D7D7D7D7D7D7D7D7D7D7D756D7D7D7D7D7ACD7D7D7D7D7D7D756ACD755ACD7
        ACACD78181D7D7562B56ACD7D7D7E92B56D78180D7D7AC8257D7D7D7D7D781AD
        57825781D757D7D7D7D7D781AC0081AC81D7D7D7D7D7AC5781577B5757ACD7D7
        D7D7D757A6A6D7D7D7D7ACACD7D7D7D7D7D7D7D72BACD7D7D7D7D7EAEAD7D756
        ACD7D7D7D7D7D7D7D7D75681D7D78181D7D7AC2BACAC5681D7D7D7D7D7D7D7D7
        D72BD0D7D7D7D7D7D7D7D7D7D7D7D7D7D7D78181D78181D7AC56D7D7D7D7D7D7
        D7D7D7D7D78181D7D7D7D7D7D7D7D7D7D7D7D7D7D78181D7D7D7D7D7D7ACACD7
        D7D7D7D7D756ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D72BACD7D7562B81D7D781
        56D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7AC4FD7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D72BE9D7D7D7D7D7D7D7D7D7D7D7D78181D7D7D7D7D7D7D7
        D7D7AC56D7D7D7D7D7D7D7D7D7D7EB81ACE9D7D7D7D7D7D7D7D7D7D7AC7AACD7
        2BD0D7D72B2BACD7D7D7D7D7D7D7D72BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7AC7AACD72BD7D7D7D7D7D756ACD7E92B56D7D7D7D7D7D7D7D7ACD7D7
        D7D7D7D7D7D7D7AC812B81812AACD7D7D7D7D7D75681D7562B81D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7AC7AD7AC81D7D7D7D7D7D7ACACD7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D72BACD7D7D7D7D7D7D7D7D7ACEAD7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D72BD7AC81ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7EA8181D7D7D7ACD7D72BE9D7D7D7D78181D7812BACD7D7D7
        D7D7D7D7D7D78181D7D7AC8257D7D7D7D7D7AC815757575757ACD7D7D7D7D781
        AC0081AC81D7D7D7D7D7D7D750AC5750D7D7D7D7D7D7D757A6A6D7D7D7D7D7D7
        D7D7D7D7D7D7D7D72BD7D7D7D7D7D72B81D7D72BACD7D7D7D7D7D7D7D7D7D7D7
        D7D75681D7D7D7D7D7AC8156D7D7D7D7D7D7D7D7D72BD7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D780ACD7ACD7D7AC2BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7AC562BACD7D7D7D7D7D7D7ACACD7D7D7D72BACD7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D72BEAD7D7D7D7D7D7D7817AD7D7D7D7D7D7D7D7D7E981
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D72BEAD7
        D7D7D7D7D7D7D7D7D7D7D78181D7D7D7D7D7D7D7D7D7AC56D7D7D7D7D7D7D7D7
        D7D7AC564F81D7D7D7D7D7D7D7D7D7D7D7D7D7D72BD7D7D7ACEAD7D7D7D7AC2B
        ACD7D72BD7D7D7D7D7ACACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D72BD7D7D7
        D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7812A2A81D781
        2BD7D7D7D7D7D7D756ACD75681D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D78181D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7ACABD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D755
        D7ACD7D7D7ACACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7562BAC
        D7D7D7D7D72BD7D7A5ACD75681D75656D7D7D7D7D7D7D7D7D7D78181D7D7AC82
        57D7D7D7D7D7D7D75057D750D7D7D7D7D7D7D781AC0081AC81D7D7D7D7D7D781
        5757575757D7D7D7D7D7D757A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D72BEAD7D7
        D7D7D781ACD7D72BACD7D7D7D7D7D7D7D7D7D7D7D7D756ACD7D7AC81D7D7D7D7
        D7D7D7D7D7D7D7D7D72AEBD7D7D7D7D7D7D7D7D7D7D7D7D7D7D755AC812BD7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D72B56D7D7D7D72BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7
        D7D7D7D7D7D7D78181D7D7D7D7D7D7D7D7D7812BACD7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EB2AD7D7D7D7D7D7D7D7D7D7D7D7D756
        81D7D7D7D7D7D7D7D7D78156D7D7D7D7D7D7D7D7D7D7D75681D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D72BD7D7D7D7D7D7D7D7D7D781D7D7AC2BD7D7D7D7D72B56D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC2BD7D7D7D7D7D7D7D7D7D781E9D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7562BACD7D7AC2BD7D7D7D7D7D7D72BACD7D7
        812B80ACD7D7D7D7D7D7D7D7D7D7D7D7D75681D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D77A2BEBD7D7D7D7D7D7D7D7D7D7D7D7D7D7AC56D72B81D7D74F56D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D72BD7D72B7AD756
        ACD7D7812B81ACD7D7D7D7D7D7D75681D7D7AC8257D7D7D7D7D7D7A6567B5757
        57D7D7D7D7D7D781AC0081AC81D7D7D7D7D7575757575757577BD7D7D7D7D757
        A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D756EBD7D7D7D7D7D7D7D7D77AACD7D7D7
        D7D7D7D7D7D7D7D7D7D756ACD7D7812BEBD7D7D7D7D7D7D7D7D7D7D7D756D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D72B81D781D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACEBD7D7D7
        D72BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC81D7D7D7
        D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D756D7D7D7D7D7D7D7D7D7D7D7D7D7AC81D7D7D7D7D7D7D7D7D7A581
        D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EA2BD7D7D7
        D7D7D7D7D7D7D7D7D7D7D756D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D756D7D7D7D7D7D7D7D7D7EA2B81D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7ACD7D7D7D7AC56D7D7D7D7D7D7D756ACD7D7D7AC562BACD7D7D7D7D7D7D7
        D7D7D7D7D72B56D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D0D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7562BD781ACD7D7ACEAD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D74FD7D7ACD7D756ACD7D7D7AC562B56D7D7D7D7
        D7D7AC81D7D7AC8257D7D7D7D7D78281815756575782ADD7D7D7D781AC0081AC
        81D7D7D7D7D77B82A6575757AC7BD7D7D7D7D757A6A6D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EBD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EA
        D7D7D7EAD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D781ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7E9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D781ACD7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC81D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7EBEAD7D7D7D7D7AC7AACD7D7D7D7D7D7D7D7D7AC8257D7D7D7
        D7D78281828257ADAC57D7D7D7D7D781AC0081AC81D7D7D7D7D7AC5757D7D757
        56ACD7D7D7D7D757A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7AC81ABEAD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D781ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC8257D7D7D7D7D7AC5757D7D75750A6D7D7
        D7D7D781AC0081AC81D7D7D7D7D7D7D7AC82AC57D7D7D7D7D7D7D757A6A6D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7
        AC8181D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D78181
        81D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7AC8257D7D7D7D7D7D7D7ACA6D77BD7D7D7D7D7D7D781AC0081AC81D7D7D7
        D78282D7D75757D7D7A6ACD7D7D7D757A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D781D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7ACACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        AC81D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D78181D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC8257D7D7D7D7ACACD7
        D7817BACD7D7ACD7D7D7D781AC0081AC81D7D7D757ACAC81D75781D781ACA681
        D7D7D757A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D756D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D781ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACACD7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7AC8257D7D7D78281A6D7D7AC57D7D7578257D7D7D781
        AC0081AC81D78282ACA6D757D77B81D757D7ACAC8257D757A6A6D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7817AACD7D7D7D7D7D7D7D7D7D7D7D7AC81D7D7D7AC5681D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D781EAD7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7812B2B2B7AACD7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D781ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7AC8181D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D781ACD7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7562B2B56ACD7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC82
        57D781AC81ACAC81ADAC57D757D7ACD18182AD81AC0081AC81AC8257D7578282
        D77B81D77B8157D750D7A657A6A6D7D7D7D7D74F56D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ADD7D7D7D7D7
        D7D1D7D7D7D7D7D7D7D7D7D7D7D1D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC5656ACD7D7D7D7AC812B2BD7D7
        D7D7D7D7D7D7D7D7D7D78181D7D7D7AC812B81D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D756D7D7D7D7D75681ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D72A2B807A562B56D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D75681
        ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D75656D7D7D7D7AC5681D7D7D7D7D7D756D7D7D7
        D7D77A8181EB815681D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7815681EAD7D7D7
        D7AC812B2BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D72B81D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7812B5656552BACD7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7AC5656ACD7D7D7D7D7D7AC8257D7AC57AC81AC57ACAC57D7
        57A657D756A6AC81AC0081AC8157AC56ADAC57D7D75781D7D757D7AC57578157
        A6A6D7D7D7D7D7ACACD7D7D7D7D7D7D7D7D7D7D7822657817B51ACAD572C8282
        822DD7AC2C57828257ACD7D7D7D7D7AC512DACD7D7D7D78257A681D7D15157D1
        822CACD72C82D7D7D7D7D7AC5782AC8257ADD7AC2C2C57D7AC2682AD5157D7AC
        2C2C57D7822682D7AD2C57822CACD72C82D7A651A681D7D75751ADD7D7D7D7D7
        D7D7D7D7D7D7ACAC562BACD7D7D7D7D7D75681D7D7D7D7D7D7D7D7D7D7D756AC
        D7D7D7D7D7AC2BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D756D7EA
        EAD7D77A56ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D72BD7D7D7AC802A81D7D7D7
        D7D7D7D7D7D7D7EAD7D7D7D7D7D7D7D7D7EA7A56ACD7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7ACACD7D7D7AC56562B56D7D7D7D7D756D7D7D7D7D7818181EAAC812B56D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7EBAC812B56D7D7D7D7D7D7D75681D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EAD7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D781ACD7D7D7AC56D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACAC562B
        ACD7D7D7D7D7AC825757575782D757D7D78257D7D757ACD750AC5781AC0081AC
        5782825782D7D7D7AC5757D7D7D7D78157815756A6A6D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D126D7D7D7D782D78251D7D7D7ADACD75782D7D7D72D82D7
        D7D7D7D78257D7D7D7D7AC2CD7D7AC7BD77B82D7AC51D7AC57D7D7D7D7D7AC2C
        ADD7D7D72DA6D72D81D7D782D72CD7D77B82D72C82D7ADA6D726D7D7A657D7A6
        57D7AC51D7D12CADD7AC57D7827BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D75656D7
        D7D7D7D7D7EB56EBD7D7D7D7D7D7D7D7D7D756D7D7D7D7D7D7D78181D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D756D72B56D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D756D7D7D7812B81D7D7D7D7D7D7D7D7D7812B2A2BACD7D7
        D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC2BAC
        D7D7D7D756D75656D7D7D7D7D7D7D7D7AC2BACD7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D72BA5D7D7D7D7D7D7D756D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7812B2A2BACD7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7EAACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACACACACD7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC81D7D7D7D756D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D75656D7D7D7D7D7AC8257575781
        57D7D7D7AD5757ACD7ADADAC57828156AC0081AC57817BAC8281828157578157
        ACAC8282D7815757A6A6D7D7D7562A2B81D7D7D7D7D7D7D7D7D7D7D7D726D7D7
        D7D7D7D78251D7D7D7D7D7D75782D7D7D7AC2CD1D7D7D7D78257D7D7D7D78257
        D7D7AC2DD77B82D7AC51D7AC57D7D7D7D7D72D7BD7D7D7D72DA6D72CD7D7D7D7
        D72CD7D77B82AD2DD7D7D7D7D72CD7D7D757ACAC57D7AC57D7AC2DD7D7D72CD7
        827BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EA2BD7ACACD7D7D7AC2B2A2B56ACD7
        D781D7D7D7D75681ACD7D7D7D7D7812A2B56EBD7D7D7D7D7D7812B2A2B56ACD7
        D7D7D7D7D72B812A2B2B2B56812B2B81D7AC81D7AC2A2B56ACD7D7D7D7ACD7D7
        D7D72B2A2B81D7A5D7D7D7D7D72B56562B2BD7D7AC2B2B81562B56812B56AC2B
        2B562B2A2B2B56ACD7D7D781D7D7D7D7D7562A56AC562A562B2B812B2BAC81AC
        D7D7D7D7D7D7D7562B2B81D7D7D7D7D7D7E98156D7D7D7D74F812B2B2B2B2B56
        D7D7D7D7D78181D781D7AC2A2B56D7D7D7D7D781D7D7D7D7AC7AD7D7D7D7D7D7
        AC2B2A2B4FACD7D7562B81562B812B812B2A2BACD7D7D7D7AC2B5681552BACD7
        EA2B2B81A52B2B562B2A2B56ACD7D7D7D7D7D7AC2B2B81812B4F2B2B56812B56
        AC81EAD7D7D7D7812B2A2A2A2A2B56ACD7D7D7562A2B56ACD7D7562B2A2B812B
        2A2BACD781D7D7D7D7D7ACD7D7D7EA2B2B2B812B56812B812B2B81ACD7D7D7D7
        D7D7D7D7D7D7D7D72BD7ACACD7D7AC825781AC57A682ACAC5781577BA6D7AD57
        D7818157AC0081AC815756D7D757575757D75757575757ACD7815757A6A6D7D7
        AC2B56562BD7D7D7D7D7D7D7D7D7D7D7D726D7D7D7D7D7D78251D7D7ACADD7D7
        5782D7D7D7D726A6D7D7D7D78257D7D782D7AC57D7D7AC2DD77B82D7AC51D7AC
        57D7D7D7D7D12682D7D7D7D72C82D72D828282ACD72CD7D75782D751828282AC
        D72CD7D7D7D7AC7B57D7AC57D7AD2DD7D7AC2CD7827BD7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7812BD7AC81D7D7D7AC2B5656552BEAD72BD7D7D7D7812B2A2BD7D7
        D7D7562B562BACD7D7D7AC2B4F2B565656562BD7D7D7D7D7D7AC2B2A2A565656
        2B56562B2B2A2BACAC7A815681D7D7D7D7D7D7D7D7D7D081562B2B2B56D7D7D7
        EA81D7D7D781ACD7812B562B2B562B2B56562A562B2B56562B562B2B81D7D72B
        D7D7D7D7D02B56562B562B2B56562B56562A2A2BD7D7D7D7812B562B56562BD7
        D7D7D7D7D7562B56D7D7D7D7AC2B2A2A4F56562BD7D7D7D7D72B81D756D7AC7A
        814F81D7D7D7D74FD7D7D7D75681D7D7D7D7D7D7812B5656554FAC2B2B562B2B
        562B562B55565656D7D7D7D7D081D7D7D78181D7812B562B2A562A2B56565656
        56D7D7D7D7D7D7802B562B2B562A2B562B2B562B2A2B81D7D7D7D72B5681ACAC
        AB81562B81D7EA2B56562B2B56AC2B5656562B56564F81D756ACD7D7D7D7D7D7
        D7D7812B56562B56562B562B56562B2A2B81ACACD7D7D7D7D7D7D7812BD7AC81
        D7D7AC82575757D7AD5757575757D757575050D7D7565781AC0081AC57818157
        57D7D7D7A67BAC57D7D7D75781815756A6A6D7D78156D7AC2BD7D7D7D7D7D7D7
        D7D7D7D7D726D7D7D7D7D7D7822D828251ADD7D75782D7D7D7D72C82D7D7D7D7
        822D825782D7D757D7D75782D75757D78257D7AC57D7D7D7D7AD26ACD7D7D7AC
        7B82D757D7D75782D72CA6D751ACD757D7D72DA6AD26ACACAD51D78257D7AC57
        D7D757D7D77B57D78151ADACD7D7D7D7D7D7D7D7D7D7D7D7D77A81D7A556D7D7
        D7D7D7D7AC8180ACEA2BD7D7D7D7AC56562BE9D7D7D7EAD7D72BACD7D7D7D72B
        8156D7D7D7D756D7D7D7D7D7D7D7AC56ACD7D7D7ACD7D75681814FD7D7D7D781
        81D7D7D7D7D7D7D7D7D7D7D7D7EA568181D7D7D7D781D7D7D781ACD756ACD7D7
        ACD7D7ACD7D781564FD7D7D72B56D7AC2BD7D72BD7D7D7D7AC56D7D781562BD0
        D7D7ACD7D781AC2BEAD7D7D7AC2B5681D7AC2BD7D7D7D7D7D7818156D7D7D7D7
        D7AC56ACD7D7D72BD7D7D7D7EA2BACD756ACD7D7D78181D7D7D7D72BD7D7D7D7
        2BACD7D7D7D7D7D7D7EAD7D7D74F2B56EAD7EBACD7E9EAE9D7D78156D7D7D7D7
        D781D7D7D7A581D77A81D7D7565656D7D7D7D7D756D7D7D7D7D7D756ACD7D756
        5681D7D7EBACD7EA568156D7D7D7D756D7D7D7D7D7D7D7D756D7AC55D7ACD7AC
        2B2A2A2BACD7ACD7D75681D756ACD7D7D7D7D7D7ACD7D7ACD7D7ACD7D7ACD7D7
        D7ACD7AC2B2A2A2AACD7D7D7D7D7D75681D7817AD7D7AC825782577B57D7D7D7
        AC82817BADD7D75757828156AC0081AC57815757ACAC7BD7D75757D7D782ADA6
        57578157A6A6D7D78181D7D781D7D7D7D7D7D7D7D7D7D7D7D726D7D7D7D7D7D7
        8251D7D7ACADD7D75782D7D7D7AD26ACD7D7D7D78257D7D7ACD7D7AD828282D7
        AD81828257ACD7572D82D7D7D7D72C82D7D7D7D7D7D7D7D7828281D7AC57AC57
        57D7D7D7828182D7AC57AC57D782827BACD7572D82D7D7828282D7D782827B82
        D7D7D7D7D7D7D7D7D7D7D7D7D7EAD7D78181D7D7D7ACD7D781562AD7AC2BD7D7
        D7D7D7562B81D7D7D7D7D7D7D77AD7D7D7D7D7AC4F7AD7D7AC2B7AD7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7814F2B81D7D7E92B2BEAD7D7D7D7D7D7D7D7D7D7D7
        D7D7AC2BACD7D7D7D7D7D7D7EA2BACD72BACD7D7D7D7D7D7D7D7D7ACD7D7D7D7
        56812B2B2BE9E92BD7D7D7D78181D7D7D7ACEAD7D7D7D7D7D7D7D7ACD7D7D7D7
        D7AC2BACD7EA81D7D7D7D7D7D7D72B81D7D7D7D7D7D7D7D7D7D7D756D7D7D7D7
        D7D7D7D72BACD7AC2B2BD7D7D7D7D72BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC
        2B2B81D7D7D7D7D7D7D7D7D7D7D7ACACD7D7D7D7D7ACD7D7D78181D756ACD7D7
        D7ACD7D7D7D7812BABD7D7D7D7D7D72BD7D7D7D7ACD7D7D7D7D7D7D7D7EAACD7
        D7D7D7ACD7D7D7D7D7D7D7AC56D7AC56D7812A2A2B4F5681ACD7D7D7D781D7D7
        4FACD7D7D7D7D7AC2AACD7D7D7D7D7D7D7D7D7D7D7AC2A2A2B5681ACD7D7D7D7
        D7D7D7EAD7D78181D7D7AC825756505781D7A6D7D78257D7D782ACAD50578157
        AC0081AC8182AC50D757AD57D77B81D757AC57D750D7A657A6A6D7D75681D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D726D7D7D7D7D7D78251D7D7D7ADD7D75782D7D7
        D75751D7D7D7D7D78257D7D7D7ADD7D7D7D7D7D7D7D7D7D7D7D7D7D757D7D7D7
        D7D78257D7D7D7D7ACACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D757D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D78181D7D7812BACD7D72B56D7AC4FD7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7A581D7812B7AD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D781
        2A56D7D7D7D72BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        AC56D7D72BEAAC55ACD7D7D7D7D7D7D7D7D7D7D755E9E981ACD7AC2BD7D7D7D7
        8181D7D7D7D7D7D7D7D7D7D7AC81ACD7D7D7D7D7D7D756ACD7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D72BD7D7D72BACD7D7
        D7D7EB2BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D72B56D7D7D7D7D7D7D7D781ACAC
        D7D7D7D7D7D7D7D7D7D7D7D7D781ACD756ACD7D7D7D7D7D7D7562B81D7D7D7D7
        D7D7D72BD7D7D7D7D7D7D7D7D7D7D781ACACD7D7D7D7D7D7D7D7D7D7D7D7D7D7
        ACD78181D7D7ACACD7D7D7D7D7818181D7D7D7D72BACD7D7D7D7D7D781D7D7D7
        D7D7D7D7D7D7D7D7D7D7ACACD7D7D7D7D7D7D7D7D7D7D7E9D7D78181D7D7AC82
        57578157AC57AC81ADA657D782AC57D756AC8181AC0081AC81D75757D77B8257
        D77B81D7578157D75757D757A6A6D7D756ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7
        AC26ACD7D7D7D7D78251D7D7AD57D7D72D7BADAC5751ADD7D7D7D7D75757D7D7
        AC82D7D7D7D7D7D7D7D7D7D7D7D7D7D7ADD7D7D7D7D7D77B7BD7D7AD2DADD7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ADD7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D78081D7D7D781D7D7
        D7ACD7D7AC56D7D7D7D7D7D7D7D7D7D7D7D7D7D7EA81D7D7D7D7D7D7D7E9D781
        56ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACACD7ACD7EB2BD7D72BACD7D7D7
        D7D7D7D7D7D7D7D72BD7D7D7D7D7AC55D7D7D7D75681D7D7D7D7D7D7D7D7D7D7
        81562BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D72BD7D7D7D7D7D7D7D7D7D72BD7D7D7D7D7D7D7D7
        D7D7D7D7D7D7E92BACD7D7D7D7D7D7D7EA565681D7AC2B56ACD7D7D7D7D7D7D7
        D756ACD72BACD7D7D7D7D7D7D7567AEAD7D7D7D7D7D7EA2BD7D7D7D7D7D7D7D7
        D7D7D7565656D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D78181D7D7D7D7ACACD7D7
        D7818156EB81D7D72BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D75655D7D75681D7D7AC8257D78182AC81AC81ACAC57D7
        57D757D75757AD81AC0081AC81D7D7D757D7D757D77B81D757D7D757D7D7D757
        A6A6D7D72BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7A682A6ADD7D7D7AD82828282
        82ACD7AC8282A6ACADD7D7D7D7D7D7AC8282828282ACD7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7AC8282ACADD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D75681D7D7D7D7D7D7EA81D7D7A556D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7A52AACD7D7D7D7D7D7D7D7D7812B56ACD7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D72B56D7D7D7AC2BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D72BD7D7D7
        D7D7AC56D7D7D7D756ACD7D7D7D7D7D7D7D7D7D7D72BACD7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EA
        2AD7D7D7D7D7D7D7D7D7AC2BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC2B2B81EB
        D7D7D7D7D77A81D7D7EA8181D7D7D7D7D7D7D7D7D72BEAD72BEAD7D7D7D7D7D7
        D7D7812B56ACD7D7D7D7AC2BD7D7D7D7D7D7D7D7D7D7D78156D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D75681D7D7D7D72B56D7D7D7D7D7D7AC2A81D72AD7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC81
        D7D75681D7D7AC8257D7D7D757D7D757D7A657D781ACD7AC82D7D781AC0081AC
        81D7D7D7AC577BD7D75757D7D75757ACD7D7D757A6A6D7D756ACD7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        AC81D7D7D7D7D7D7D72B81D7D756D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7
        D7D7D7D7D7D7D7D7D7D7812B81D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACACD7D7D7D7
        56D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC2AACD7D7D7D7D756D7D7D7D756ACD7D7
        D7D7D7D7D7D7D7D7D781D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D756D7D7D7D7D7D7D7D7D7D756
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7812B2BACD7D7D7D7ACACD7D7D7D7D7
        D7D7D7D7D7D7D7D7D72AA5D72BD7D7D7D7D7D7D7D7D7D7AC562BACD7D7D7AC56
        D7D7D7D7D7D7D7D7D7D7D7ACACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D781AC
        D7D7D7D7ACEBD7D7D7D7D7D7D7ACD7D756D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC81D7D7AC8257D7D7D7
        D15757D7D78157D7D7575781D7D7D781AC0081AC81D7D7D7D7D7D7D7AC8181AD
        D7D7D7D7D7D7D757A6A6D7D7EAD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7E9D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D756D7D7D7D7D7D7D7D7D7D7D7D7EAD7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7AC81D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D781D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7EAACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC8257D7D7D7D7D7D7D7D75782ACD7D7D7D7
        D7D7D781AC0081AC81D7D7D7D7D7D78157D7D757ACD7D7D7D7D7D757A6A6D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7AC8257D7D7D7D7D7D7D757D7D77BACD7D7D7D7D7D781AC0081AC81D7D7D7
        D7D77B57A6D757825081D7D7D7D7D757A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC8257D7D7D7D7D78250
        827BD7825057D7D7D7D7D781AC0081AC81D7D7D7D7D77BD757577B57D757D7D7
        D7D7D757A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7AC8257D7D7D7D7D782AC57825782D757D7D7D7D7D781
        AC0081AC81D7D7D7D7D7AC5757577B5757ACD7D7D7D7D757A6A6D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC82
        57D7D7D7D7D7AC815757575757ACD7D7D7D7D781AC0081AC81ACACACACACACAC
        57AC5757ACACACACACACAC57A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC8257D7D7D7D7D7D78281828182
        57D7D7D7D7D7D781AC0081AC81818181818181817B81817B8181818181818181
        A6A6D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7562B2B5681EAD7D7D7D7D7D7D7D7
        D78156ACD7D7D7D7D7D7D7D7D7D7D7817AACD7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7AC827B7B7B7B7B7B7B7B57577B577B7B7B7B7B7B7B7BAC008157
        575757575757575757575757575757575757575757A6D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7812B5681564F2BACD7D7D7D7D7D7D7EAAC562BACD7D7D7D7D7D7D7
        D7D7AC814F2BD7D72B81D7815681D7D7D7D7D7D7D7D7D7D7D7D7AC5781818181
        818181818181818181818181818181817B00D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D78181D7D7D7AC4F
        2BD7D7D7D7D7D7D7D7D7D7812BD7D7D7D7D7D7D7D7D7D7D7D75681D781ACD7AC
        812B81D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D700D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7E9ACD7AC81D7D7D75656ACD7D7D7D7D7D7D7D7D7D7D7
        56ACD7D7D7D7D7D7D7D7D7D7D7EB56EBD7D7D7D7D7AC2BD7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D700D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D72B2B
        D7D7ACD7D7D7AC2A2A2BACACACD7D781D7D7D7D7562A2A2B56D7D7D7D7D7D7D7
        D7AC2B2A2BACD7D7D7D756ACD7AC2B2A2B2B81D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D700D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D77AACD7D7D7D7D7D7D7AC56562B2A
        2BACD72BD7D7D7EA2B5656565681D7D7D7D7D7D7D7AC2B565656D7D7D7E92BAC
        D7812B5656562BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D700D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D781D7D7D7D7D7D7D7D7D7D7D7818156ACEA2BD7D7D7D7D7D7D7D7
        AC81D7D7D7D7D7D7D7D7D7D78156D7D7D7AC2BEAD756ACD7D7D78181D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D700D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7562BD7AC2BD7D7D7D7D7D7D7812BACD7D7D7D7D7D7D7D7D7D7
        ACABD7D7D7D7D7D7D72BACD7E9562BEAD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D700D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC4F
        D7D7D7D7D7D7562BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D72BEAD7
        2B2BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D700D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC56D7D7D7D7D7D75656D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D72BD7E92BACD7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D700D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D78156D7D7D7D7D7D7D7812B56ACD7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7AC2BD7D7AC562B81E9D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D700D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7E956D7D7D7D7
        D7D7AC56AC7A2BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D756D7D7D7D78155
        2BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D700D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC5656ACD7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACEAD7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D700D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7AC5681D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D700D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D700D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D700D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D700D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D700D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D700}
      Proportional = True
      OnMouseMove = RegistrationPanelMouseMove
    end
    object Far3: TImage
      Left = 469
      Top = 235
      Width = 71
      Height = 18
      AutoSize = True
      Picture.Data = {
        07544269746D6170F6080000424DF608000000000000E6030000280000004700
        0000120000000100080000000000100500007412000074120000EC0000000000
        000000000000330000006600000099000000CC000000FF000000003300003333
        00006633000099330000CC330000FF3300000066000033660000666600009966
        0000CC660000FF66000000990000339900006699000099990000CC990000FF99
        000000CC000033CC000066CC000099CC0000CCCC0000FFCC000000FF000033FF
        000066FF000099FF0000CCFF0000FFFF00000000330033003300660033009900
        3300CC003300FF00330000333300333333006633330099333300CC333300FF33
        330000663300336633006666330099663300CC663300FF663300009933003399
        33006699330099993300CC993300FF99330000CC330033CC330066CC330099CC
        3300CCCC3300FFCC330000FF330033FF330066FF330099FF3300CCFF3300FFFF
        330000006600330066006600660099006600CC006600FF006600003366003333
        66006633660099336600CC336600FF3366000066660033666600666666009966
        6600CC666600FF66660000996600339966006699660099996600CC996600FF99
        660000CC660033CC660066CC660099CC6600CCCC6600FFCC660000FF660033FF
        660066FF660099FF6600CCFF6600FFFF66000000990033009900660099009900
        9900CC009900FF00990000339900333399006633990099339900CC339900FF33
        990000669900336699006666990099669900CC669900FF669900009999003399
        99006699990099999900CC999900FF99990000CC990033CC990066CC990099CC
        9900CCCC9900FFCC990000FF990033FF990066FF990099FF9900CCFF9900FFFF
        99000000CC003300CC006600CC009900CC00CC00CC00FF00CC000033CC003333
        CC006633CC009933CC00CC33CC00FF33CC000066CC003366CC006666CC009966
        CC00CC66CC00FF66CC000099CC003399CC006699CC009999CC00CC99CC00FF99
        CC0000CCCC0033CCCC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FF
        CC0066FFCC0099FFCC00CCFFCC00FFFFCC000000FF003300FF006600FF009900
        FF00CC00FF00FF00FF000033FF003333FF006633FF009933FF00CC33FF00FF33
        FF000066FF003366FF006666FF009966FF00CC66FF00FF66FF000099FF003399
        FF006699FF009999FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CC
        FF00CCCCFF00FFCCFF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFF
        FF00000000000D0D0D001A1A1A00282828003535350043434300505050005D5D
        5D006B6B6B00787878008686860093939300A1A1A100AEAEAE00BBBBBB00C9C9
        C900D6D6D600E4E4E400F1F1F100FFFFFF00D7D7D7D7D7D7AC56565681D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D700D7D7D7D7D7AC
        2A2A2A2A2A2B81D7D7D7EAD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D700D7D7D7D7D77A2A2B818156562B55D7814F56ACD7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D700D7D7D7D7D75656D7D7D7D7D7AC2A5656562B81D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D700D7D7D7D7D78181D7D7D7D7552A2A
        56EAD7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D700D7D7ACEAD7AC
        81D7D7D7D75556ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D700D7AC2A81D7D781D7D7D7D7AC2A2A2B2B2BACD7D7D7D72B2B56D7562B56D7
        ACACD7D7D7AC2B2B56AC552B80AC552B81EAACD7D7D7D7D7D7D7AC562B56ACD7
        562B2B2B2B81D7D7D700D7D756ACD7D7D7D7D7D7D7D7562A2A2A2A56D7D7D781
        2A2A2A2B2A2A2A2B2A2BACD7D7562A2A2A2B2A2A2A2B2A2A2B2B2A2BD7D7D7D7
        D7D7AC2A2A2A2BAC2A2A2A2A2A2A81D7D700D7D7D7D7D7D7D7D7D7D7D7D7D7AC
        81815655D7D7D7562B81812B5681562A2B2B81D7D72B5681812B8181562A8181
        2B2A2B2BACD7D7D7D7D7EA2B81A5562B2B818181815656D7D700D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D75656D7D7D72B81D7D7ACEAD7D756AC5681D7D72AACD7
        D7ACD7D7D7ABD7D7D72BAC2BACD7D7D7D7D7D7EAD7D7E92A81D7D7D7D7AC56D7
        D700D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D75681D7D7D72BACD7D7D7D7D7D7EA
        D77AACD7AC2AD7D7D7D7D7D7D7D7D7D7D7EAD755D7D7D7D7D7D7D7D7D7D7D72A
        ACD7D7D7AC2B81D7D700D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D72A
        ACD7D7D7D7D7D7D7D7D7D7D7AC2BD7D7D7EAD7D7D7D7D7D7D7D7D7EAD7D7D7D7
        D7D7D7D7D7D7AC2AD7D7D7812B2BEAD7D700D7AC2A81D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D72AE9D7D7D7D7D7D7D7D7D7D7D7AC2BD7D75656D7D7D7D7D7D7
        81ACACD7D7D7D7D7D7D7D7D7D7D7812BD7D7812A2BACD7D7D700D7EA56ACD7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC2AEBD7D7D7D7D7D7D7D7D7D7D7812BD7D7
        2B2AD7D7D7D7D7AC2A2B2BACD7D7D7D7D7D7D7D7D7D7814FD7D75656D7D7D7D7
        D700D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC2BD7D7D7D7D7D7D7D7
        D7D7D7D78156D7D7ACACD7D7D7D7D7D781AC81D7D7D7D7D7D7D7D7D7D7D7AC56
        D7D7AC2B56ACD7D7D700D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7812B
        D7D7D7D7D7D7D7D7D7D7D7D75656D7D7D7D7D7D7D7D7D7D7562BD7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7AC2B2A56ACD700D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7812BD7D7D7D7D7D7D7D7D7D7D7D75656D7D7D7D7D7D7D7D7D7D7
        8181D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EA802B2A8100D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D781D7D7D7D7D7D7D7D7D7D7D7D7D781D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D781
        5600}
      Proportional = True
      Transparent = True
    end
    object Far4: TImage
      Left = 460
      Top = 261
      Width = 81
      Height = 23
      Picture.Data = {
        07544269746D6170E6080000424DE608000000000000E6030000280000005000
        0000100000000100080000000000000500007412000074120000EC0000000000
        000000000000330000006600000099000000CC000000FF000000003300003333
        00006633000099330000CC330000FF3300000066000033660000666600009966
        0000CC660000FF66000000990000339900006699000099990000CC990000FF99
        000000CC000033CC000066CC000099CC0000CCCC0000FFCC000000FF000033FF
        000066FF000099FF0000CCFF0000FFFF00000000330033003300660033009900
        3300CC003300FF00330000333300333333006633330099333300CC333300FF33
        330000663300336633006666330099663300CC663300FF663300009933003399
        33006699330099993300CC993300FF99330000CC330033CC330066CC330099CC
        3300CCCC3300FFCC330000FF330033FF330066FF330099FF3300CCFF3300FFFF
        330000006600330066006600660099006600CC006600FF006600003366003333
        66006633660099336600CC336600FF3366000066660033666600666666009966
        6600CC666600FF66660000996600339966006699660099996600CC996600FF99
        660000CC660033CC660066CC660099CC6600CCCC6600FFCC660000FF660033FF
        660066FF660099FF6600CCFF6600FFFF66000000990033009900660099009900
        9900CC009900FF00990000339900333399006633990099339900CC339900FF33
        990000669900336699006666990099669900CC669900FF669900009999003399
        99006699990099999900CC999900FF99990000CC990033CC990066CC990099CC
        9900CCCC9900FFCC990000FF990033FF990066FF990099FF9900CCFF9900FFFF
        99000000CC003300CC006600CC009900CC00CC00CC00FF00CC000033CC003333
        CC006633CC009933CC00CC33CC00FF33CC000066CC003366CC006666CC009966
        CC00CC66CC00FF66CC000099CC003399CC006699CC009999CC00CC99CC00FF99
        CC0000CCCC0033CCCC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FF
        CC0066FFCC0099FFCC00CCFFCC00FFFFCC000000FF003300FF006600FF009900
        FF00CC00FF00FF00FF000033FF003333FF006633FF009933FF00CC33FF00FF33
        FF000066FF003366FF006666FF009966FF00CC66FF00FF66FF000099FF003399
        FF006699FF009999FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CC
        FF00CCCCFF00FFCCFF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFF
        FF00000000000D0D0D001A1A1A00282828003535350043434300505050005D5D
        5D006B6B6B00787878008686860093939300A1A1A100AEAEAE00BBBBBB00C9C9
        C900D6D6D600E4E4E400F1F1F100FFFFFF00D7D7D7D7D7AC2B2A2A2A56ACD7D7
        D7AC567AACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7562A2A2B2B2A2B81D7EA7A2B2A2BACD7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D72B81D7D7D7AC812BAC
        D7D7D7AC2B56D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC8181ACD7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7ACD7D72BD7D7D7D7D7D77A56D7D7D7D7AC2BACD7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7AC2B2A2A2A7AD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC2AACD756D7D7D7D7562B2A56
        D7D7D7D7D756ACD7D7562B2BAC562B56EAA5ACD7D7D7D7D7D7562B4F562B2AAC
        D7D7AC2B2B4FACD7AC2B2B2B56ACD7D7D7D7D7D7AC562B56D7AC2B2B2B2B56EA
        D7D7D7EA81D7D781EAD7D7812A2B56ACD7D7D7D7D756ABD7EA2B2A2A2B2A2A2A
        2B2A2BD7D7D7D7D7D756ACD7D7D78156D7D7562A2A2A2B812B2A2A2A2A2AACD7
        D7D7D7D7AC2A2A2A56562A2A2A2A2A56D7D7D7D7D7D7D7EAACD7D7AC56D7D7D7
        D7D7D7D7812AACD7AC2BACAC5656AC812A562BACD7D7D7D7D781D7D7D7D7D72B
        D7D72B56ACAC562A2BACACACAC5656D7D7D7D7D7D77AACAC4F2A81ACACACA556
        D7D7D7D7D7D7D7D7D7D7D7D72B81EAD7D7D7D7D7AC2BD7D78156D7D7EAEAD7D7
        81D72BACD7D7D7D7D7ACACD7D7D7AC56D7D72BACD7812A2A2AACD7AC558156D7
        D7D7D7D7D7D7D7D7812BD7D7D7D7AC55D7D7D7D7D7D7D7D7D7D7D7D7AC2B2B56
        D7D7D7D7D7D7D7D78156D7D7D7D7D7D7D7D781D7D7D7D7D7D7D7ACD7D7D7AC56
        D7EA2AEAD7D72B2A2BACD781552B81D7D7D7D7D7D7D7D7D78155D7D7D7812B81
        D7D7D7E956D7D7D7D7D7D7D7D7AC2B2BD7D7D7D7D7D7D7D75681D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D78156D7AC2BD7D7D7D7ACD7D7D7AC562BACD7
        D7D7D7D7D7D7D7D75656D7D7562A56D7D7D7D7AC2AACD7D7D7D7D7D7D7D7D7EA
        D7D7D7AC81D7D7D75681D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D78181
        D7AC2BD7D7D7D7D7D7D7D7D75656D7D7D7D7D7D7D7D7D7D74F81D7AC2B81D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7562AACD7D75581D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D75681D7AC2BD7D7D7D7D7D7D7D7D7EAEAD7D7
        D7D7D7D7D7D7D7D755ACD7AC2B81D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7AC56EAD7D72BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D755AC
        D78155D7D7D7D7D7D7D7D7D7ACACD7D7D7D7D7D7D7D7D7D7ACE9D7D7AC2B2B7A
        ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D72BACD7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D72B81D78156D7D7D7D7D7D7D7D7D72B56D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7802B2A81D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D781ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EA2B56
        D7D781D7D7D7D7D7D7D7D7D75681D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7E9
        8156D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7}
      Transparent = True
    end
    object Far5: TImage
      Left = 385
      Top = 290
      Width = 119
      Height = 39
      Cursor = crHandPoint
      Picture.Data = {
        07544269746D617036510000424D365100000000000036000000280000009000
        0000300000000100180000000000005100000000000000000000000000000000
        0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF5
        F1FEE7D7FEE7D7FED2B4FECFAFFEC49CFEB888FEB888FEB888FEB888FEB888FE
        B888FEB27EFEA060FEA060FEA060FEA060FEA060FEA060FEA060FEA060FEA060
        FEA060FEA060FEA060FEA060FEA060FEB27EFEB888FEB888FEB888FEB888FEB8
        88FEB888FEC49CFECFAFFECFAFFEE7D7FEE7D7FEF3EBFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEEEE2FEE8D8FED7BBFED1B1FE
        CCA8FEBB8BFEBB8BFEAA6EFEA464FEA464FEA464FEA464FEA464FEA464FEA464
        FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA4
        64FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FE
        A464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464
        FEA464FEA464FEA464FEA464FEBB8BFEBB8BFEC9A3FED1B1FED4B6FEE8D8FEEB
        DDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEECDEFEDDC6FED3B3FEC093FEB885
        FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA7
        68FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FE
        A768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768
        FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA7
        68FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FE
        A768FEA768FEA768FEA768FEA768FEA768FEA768FEB27BFEBD8EFED3B3FEDBC1
        FEE9D9FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEECDFFEDCC3FECEA8FEBE8CFEAB
        6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFE
        AB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6C
        FEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB
        6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFE
        AB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6C
        FEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB
        6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEBB88FECBA4FEDABEFE
        EADAFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEEBDBFED7B7FEC394FE
        AF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70
        FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF
        70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FE
        AF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70
        FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF
        70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FE
        AF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70
        FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEC190FED5B4FEE8D7FEFC
        FBFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF3E9FEDEC2
        FEC697FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB3
        74FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374
        FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB3
        74FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374
        FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB3
        74FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEC493FED9B9FEF1E5FEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEEFE1FED7B4FEC28DFEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEC089FED5AFFEEAD9FEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEF4EBFEDBBAFEC48DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7D
        FEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB
        7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFE
        BB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7D
        FEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB
        7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFE
        BB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7D
        FEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB
        7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFE
        BB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7D
        FEBB7DFEC189FED7B2FEF2E6FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFBF7FEE4CBFECA99FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEC895FE
        E0C3FEFBF7FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF9F4FEDFC0FE
        C68FFEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287
        FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC2
        87FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FE
        C287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287
        FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC2
        87FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FE
        C287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287
        FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC2
        87FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FE
        C287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287
        FEC287FEC287FEC287FEC287FEC287FEC287FEC48BFEDBB8FEF7F0FEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEF9F4FDDBB9FBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC5
        8FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFB
        C58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58F
        FBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC5
        8FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFB
        C58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58F
        FBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC5
        8FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFB
        C58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58F
        FBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC5
        8FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFB
        C58FFBC58FFBC58FFBC58FFDD9B6FEF6EDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFCF8FCE2C8F9CA99F9C896F9C896F9C896F9
        C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896
        F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C8
        96F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9
        C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896
        F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C8
        96F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9
        C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896
        F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C8
        96F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9
        C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896
        F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C8
        96FCDFC1FEFAF5FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFCEBDAF8CFA7
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF8CDA4FBE6D1FEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFAF7F7DBC0F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F7D8BAFDF7F1FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFBF2E9F2D3B5F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D2B3
        F8E9DBFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF9EE
        E4F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0
        D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8
        F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3
        B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0
        D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8
        F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3
        B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0
        D3B8F0D3B8F0D3B8F0D3B8000000000000000000F0D3B8F0D3B8F0D3B8F0D3B8
        F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3
        B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0
        D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8
        F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3
        B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F7E9DBFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEF7EBE1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1
        EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6
        C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EF
        D6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1
        EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6
        C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EF
        D6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1
        EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C10000000000
        00000000EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EF
        D6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1
        EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6
        C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EF
        D6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1
        EFD6C1EFD6C1F4E5D9FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF9F3EEEED9CAEED9
        CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEE
        D9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CA
        EED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9
        CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEE
        D9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CA
        EED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9
        CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEE
        D9CAEED9CAEED9CAEED9CA000000000000000000EED9CAEED9CAEED9CAEED9CA
        EED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9
        CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEE
        D9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CA
        EED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9
        CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAF7EEE7FEFEFEFE
        FEFEFEFEFEFCF9F8F0DCD3EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2FBF6F4FEFEFEFEFEFEF6E9E6F1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1
        DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1
        DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1
        DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1
        DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF4E4E1FE
        FEFEFDF9F9F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1
        E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3
        E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1
        E2F3E1E200000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        F3E1E2F3E1E2F3E1E2F3E1E2000000000000000000000000000000000000F3E1
        E2F3E1E2000000000000000000000000000000000000000000F3E1E2F3E1E2F3
        E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1
        E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3
        E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2FBF5F6FAF1F4F5E4EAF5E4EAF5E4EAF5E4
        EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5
        E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EA
        F5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4
        EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5
        E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EA000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000F5E4EA00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000F5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4
        EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5
        E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EA
        F5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4
        EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF8
        EEF2FAEEF6F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3
        F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7
        F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7
        E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3
        F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F30000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000F7
        E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3
        F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7
        F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7
        E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3
        F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7EBF5FAECFAF9EAFBF9EAFBF9EAFBF9EA
        FBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9
        EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFB
        F9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EA
        FBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9
        EAFBF9EAFBF9EAFBF9EAFBF9EAFB000000000000000000F9EAFBF9EAFBF9EAFB
        F9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EA
        FBF9EAFBF9EAFBF9EAFBF9EAFB000000000000000000000000000000F9EAFBF9
        EAFBF9EAFBF9EAFB000000000000000000000000F9EAFBF9EAFB000000000000
        000000000000000000000000000000F9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EA
        FBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9
        EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFB
        F9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EA
        FBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9
        EAFBFAECFCF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FB
        F9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9
        FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9
        E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FB
        F9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FB0000
        00000000000000F9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9
        E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FB000000000000
        000000000000000000F9E9FBF9E9FBF9E9FBF9E9FBF9E9FB0000000000000000
        00000000F9E9FBF9E9FBF9E9FBF9E9FBF9E9FB000000000000000000000000F9
        E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FB
        F9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9
        FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9
        E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FB
        F9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF8EAFAFAEEF5F7E6F2F7E6F2F7E6F2F7E6
        F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7
        E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2
        F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6
        F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7
        E6F2F7E6F2F7E6F2F7E6F2F7E6F2000000000000000000F7E6F2F7E6F2F7E6F2
        F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6
        F2F7E6F2F7E6F2000000000000000000000000000000F7E6F2F7E6F2F7E6F2F7
        E6F2F7E6F2F7E6F2000000000000000000F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2
        F7E6F2000000000000000000000000F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6
        F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7
        E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2
        F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6
        F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F9
        EBF4FBF1F5F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA
        F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3
        EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5
        E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA
        F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA0000
        00000000000000F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5
        E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA000000000000000000
        000000F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA0000000000000000
        00F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA000000000000000000F5E3EAF5
        E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA
        F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3
        EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5
        E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA
        F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAFAF0F4FEFCFCF2E2E3F3E1E2F3E1E2F3E1
        E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3
        E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1
        E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3
        E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1
        E2F3E1E2F3E1E2000000000000000000000000F3E1E2F3E1E2F3E1E2F3E1E2F3
        E1E2F3E1E2F3E1E2000000000000000000F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        000000000000000000000000F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1
        E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3
        E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1
        E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2FD
        F9F9FEFEFEF8ECEBF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1
        DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1
        DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA000000000000
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA0000000000000000
        00F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA000000000000F1DEDAF1DEDAF1
        DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1
        DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF5E8E6FEFEFEFEFEFEFEFEFEF2E1D8EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2000000000000EFDBD2EFDBD2000000000000EFDBD2EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2000000EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2F1DDD5FDFCFBFE
        FEFEFEFEFEFEFEFEFDFAF8EEDACCEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA
        EED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8
        CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEE
        D8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA
        EED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8
        CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA000000000000EED8CAEE
        D8CA000000000000EED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA
        EED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8
        CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEE
        D8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA
        EED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8
        CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEE
        D8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA
        EED8CAEED8CAEFD8CCFBF6F3FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFCF7F3EFD8
        C5EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EF
        D5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1
        EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5
        C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EF
        D5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1
        EFD5C1EFD5C1000000000000EFD5C1EFD5C1000000000000EFD5C1EFD5C1EFD5
        C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EF
        D5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1000000
        000000EFD5C1000000000000000000EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5
        C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EF
        D5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1
        EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5
        C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1F0D5C3FAF3EDFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFDF9F6F2D8C1F0D2B8F0D2B8F0D2B8F0D2B8
        F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2
        B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0
        D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8
        F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2
        B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0
        D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8
        F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2
        B8F0D2B8F0D2B8F0D2B8F0D2B8000000000000F0D2B8000000000000000000F0
        D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8
        F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2
        B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0
        D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8
        F1D5BCFBF4EDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFBF8F5DEC7F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F4D9BFFDF8F3FEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFBE9D8F3CFAAF4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7000000000000000000F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7FAE5D1FEFDFC
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEF7F0FAD9B9F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        000000000000000000F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF9D6B3FDF3E9FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FDEFE1F9D2AAF9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C7
        96F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9
        C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796
        F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C7
        96F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9
        C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796
        F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C7
        96F9C796F9C796F9C796F9C796F9C796000000000000000000F9C796F9C796F9
        C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796
        F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C7
        96F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9
        C796F9C796F9C796F9C796F9C796FACDA2FDEBDBFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEE9D4FDCFA3FCC48EFC
        C48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48E
        FCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC4
        8EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFC
        C48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48E
        FCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC4
        8EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFC
        C48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48E
        FCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC4
        8EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFC
        C48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48E
        FCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFDCC9CFDE7D1FEFD
        FBFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEEFE1FED5ADFEC187FEC187FEC187FEC187FEC1
        87FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FE
        C187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187
        FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC1
        87FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FE
        C187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187
        FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC1
        87FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FE
        C187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187
        FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC1
        87FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FE
        C187FED1A5FEEBD9FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEF7EFFEE0C3FEC895FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEC48DFEDBB9FEF5EBFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF2E6FED6
        B2FEC188FEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFE
        BA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7C
        FEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA
        7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFE
        BA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7C
        FEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA
        7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFE
        BA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7C
        FEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA
        7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBE84FED4AEFEEBDAFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF1E6FED9B8FEC28DFEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEC089FED5AFFEEAD9
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEF5EEFEDEC2FECBA0FEB87DFEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374
        FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB3
        74FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374
        FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB3
        74FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374
        FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB578FEC9
        9BFEDBBDFEF1E5FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEF0E5FEDBC1FEC89DFEB77EFEAF70FEAF70FEAF70FEAF
        70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FE
        AF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70
        FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF
        70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FE
        AF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70
        FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF
        70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FE
        B479FEC699FED9BCFEEDE0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEF7F1FEE4D1FED5B5FEC091FEAE71FEAB6CFEAB6CFEAB6CFEAB6C
        FEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB
        6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFE
        AB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6C
        FEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB
        6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFE
        AB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6C
        FEAB6CFEC091FED3B1FEE2CCFEF4EDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEF4ECFEE9D9FED5B8FECEABFEBD8EFEAD72FEA768FEA768FEA768FE
        A768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768
        FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA7
        68FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FE
        A768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768
        FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEAA
        6DFEBD8EFEC8A1FED3B3FEE9D9FEF1E7FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEEEE2FEE8D8FEE2CEFED1B1FED1B1FEC195FEBB8BFEB2
        7CFEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FE
        A464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464
        FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA4
        64FEA464FEA464FEA464FEA464FEA464FEA464FEB078FEBB8BFEBB8BFED1B1FE
        D1B1FEDFC9FEE8D8FEEBDDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEE9DDFEE7D7FEDBC3
        FECFAFFECFAFFECFAFFECFAFFECFAFFECFAFFECAA6FEB888FEB888FEB888FEB8
        88FEB888FEB888FEB888FEB888FEB888FEB888FEB888FEB888FEB888FEB888FE
        CAA6FECFAFFECFAFFECFAFFECFAFFECFAFFECFAFFEDBC3FEE7D7FEE7D7FEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFE}
      Proportional = True
      Stretch = True
      Transparent = True
      OnClick = Far5Click
    end
    object Far6: TImage
      Left = 209
      Top = 290
      Width = 119
      Height = 39
      Cursor = crHandPoint
      Picture.Data = {
        07544269746D617036510000424D365100000000000036000000280000009000
        0000300000000100180000000000005100000000000000000000000000000000
        0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF5
        F1FEE7D7FEE7D7FED2B4FECFAFFEC49CFEB888FEB888FEB888FEB888FEB888FE
        B888FEB27EFEA060FEA060FEA060FEA060FEA060FEA060FEA060FEA060FEA060
        FEA060FEA060FEA060FEA060FEA060FEB27EFEB888FEB888FEB888FEB888FEB8
        88FEB888FEC49CFECFAFFECFAFFEE7D7FEE7D7FEF3EBFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEEEE2FEE8D8FED7BBFED1B1FE
        CCA8FEBB8BFEBB8BFEAA6EFEA464FEA464FEA464FEA464FEA464FEA464FEA464
        FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA4
        64FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FE
        A464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464
        FEA464FEA464FEA464FEA464FEBB8BFEBB8BFEC9A3FED1B1FED4B6FEE8D8FEEB
        DDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEECDEFEDDC6FED3B3FEC093FEB885
        FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA7
        68FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FE
        A768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768
        FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA7
        68FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FE
        A768FEA768FEA768FEA768FEA768FEA768FEA768FEB27BFEBD8EFED3B3FEDBC1
        FEE9D9FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEECDFFEDCC3FECEA8FEBE8CFEAB
        6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFE
        AB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6C
        FEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB
        6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFE
        AB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6C
        FEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB
        6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEBB88FECBA4FEDABEFE
        EADAFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEEBDBFED7B7FEC394FE
        AF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70
        FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF
        70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FE
        AF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70
        FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF
        70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FE
        AF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70
        FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEC190FED5B4FEE8D7FEFC
        FBFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF3E9FEDEC2
        FEC697FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB3
        74FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374
        FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB3
        74FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374
        FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB3
        74FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEC493FED9B9FEF1E5FEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEEFE1FED7B4FEC28DFEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEC089FED5AFFEEAD9FEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEF4EBFEDBBAFEC48DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7D
        FEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB
        7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFE
        BB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7D
        FEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB
        7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFE
        BB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7D
        FEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB
        7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFE
        BB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7D
        FEBB7DFEC189FED7B2FEF2E6FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFBF7FEE4CBFECA99FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEC895FE
        E0C3FEFBF7FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF9F4FEDFC0FE
        C68FFEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287
        FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC2
        87FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FE
        C287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287
        FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC2
        87FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FE
        C287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287
        FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC2
        87FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FE
        C287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287
        FEC287FEC287FEC287FEC287FEC287FEC287FEC48BFEDBB8FEF7F0FEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEF9F4FDDBB9FBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC5
        8FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFB
        C58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58F
        FBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58F0000000000000000
        00000000000000000000000000FBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFB
        C58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58F
        FBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC5
        8FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFB
        C58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58F
        FBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC5
        8FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFB
        C58FFBC58FFBC58FFBC58FFCD8B6FEF6EDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFCF8FCE2C8F8CA98F9C896F9C896F9C896F9
        C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896
        F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C8
        96F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9
        C896000000000000000000000000000000000000000000000000000000000000
        000000000000F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C8
        96F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9
        C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896
        F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C8
        96F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9
        C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896
        F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C8
        96FBDEC1FEFAF5FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFCEBDAF8CFA6
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9E0000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000F7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF8CCA3FBE6D1FEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFAF7F6DAC0F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA700000000
        0000000000000000000000F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7000000
        000000000000F4CDA7F4CDA7000000000000F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7000000F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F6D8BAFDF7F1FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFBF2E9F2D3B5F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0000000000000000000F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0000000000000F1D0B0F1D0B000000000
        0000000000000000F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        000000000000000000F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F0D1B2
        F8E9DBFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF9EE
        E4F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0
        D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8
        F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3
        B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B800000000000000
        0000000000F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8
        F0D3B8F0D3B8F0D3B8000000000000000000000000000000000000F0D3B8F0D3
        B8F0D3B8F0D3B8F0D3B8F0D3B8000000000000000000000000000000000000F0
        D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8
        F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3
        B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0
        D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8
        F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3
        B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F7E9DBFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEF7EBE1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1
        EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6
        C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EF
        D6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1
        EFD6C1EFD6C1EFD6C1000000000000000000EFD6C1EFD6C1EFD6C1EFD6C1EFD6
        C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C100
        0000000000000000000000000000000000EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1
        000000000000000000000000000000000000EFD6C1EFD6C1EFD6C1EFD6C1EFD6
        C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EF
        D6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1
        EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6
        C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EF
        D6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1
        EFD6C1EFD6C1F4E5D9FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF9F3EEEED9CAEED9
        CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEE
        D9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CA
        EED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9
        CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CA00000000000000
        0000EED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CA
        EED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CA0000000000000000000000
        00000000EED9CAEED9CAEED9CAEED9CAEED9CAEED9CA00000000000000000000
        0000000000EED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CA
        EED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9
        CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEE
        D9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CA
        EED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9
        CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAF7EEE7FEFEFEFE
        FEFEFEFEFEFCF9F8F0DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2000000000000000000EFDBD2EFDBD2EFDBD2EFDBD2EFDB
        D2000000000000000000EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2000000000000000000000000000000EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2000000000000000000000000000000000000EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2FBF6F4FEFEFEFEFEFEF5E8E6F1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1
        DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA00000000000000
        0000F1DEDAF1DEDAF1DEDAF1DEDAF1DEDA000000000000000000F1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA0000000000
        00000000000000F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA00
        0000000000000000000000000000F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1
        DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF4E3E1FE
        FEFEFDF9F9F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1
        E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3
        E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2000000000000000000000000F3E1E2F3E1E2F3E1E2F3E1
        E2000000000000000000F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3
        E1E2F3E1E2F3E1E2F3E1E2F3E1E2000000000000000000000000F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2000000000000000000000000F3E1
        E2F3E1E200000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1
        E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3
        E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2FBF5F6FAF1F4F5E4EAF5E4EAF5E4EAF5E4
        EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5
        E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EA
        F5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4
        EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EA00000000
        0000000000000000F5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EA
        F5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EA000000000000000000F5E4
        EA000000000000000000F5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5
        E4EAF5E4EA000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000F5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5
        E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EA
        F5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4
        EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF8
        EEF2FAEEF6F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3
        F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7
        F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7
        E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3
        F7E7F3F7E7F3F7E7F3F7E7F3000000000000000000000000F7E7F3F7E7F3F7E7
        F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7
        E7F3000000000000000000000000000000000000000000000000F7E7F3F7E7F3
        F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F30000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000F7E7F3F7E7F3F7E7F3F7E7F3
        F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7
        F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7
        E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3
        F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7EBF5FAECFAF9EAFBF9EAFBF9EAFBF9EA
        FBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9
        EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFB
        F9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EA
        FBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFB00
        0000000000000000000000F9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFB
        F9EAFBF9EAFBF9EAFBF9EAFBF9EAFB0000000000000000000000000000000000
        00000000000000000000F9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9
        EAFBF9EAFBF9EAFB000000000000000000000000F9EAFBF9EAFBF9EAFBF9EAFB
        F9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFB0000000000000000000000
        00000000F9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9
        EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFB
        F9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EA
        FBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9
        EAFBFAECFCF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FB
        F9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9
        FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9
        E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FB
        F9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FB0000000000000000000000000000
        00F9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FB00
        0000000000000000000000000000000000000000000000000000F9E9FBF9E9FB
        F9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FB0000000000000000
        00F9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9
        E9FB000000000000000000000000000000F9E9FBF9E9FBF9E9FBF9E9FBF9E9FB
        F9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9
        FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9
        E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FB
        F9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF8EAFAFAEEF5F7E6F2F7E6F2F7E6F2F7E6
        F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7
        E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2
        F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6
        F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7
        E6F2F7E6F2000000000000000000000000000000F7E6F2F7E6F2F7E6F2F7E6F2
        F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2000000000000F7E6F2F7E6F2F7E6F2F7E6
        F2000000000000000000F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7
        E6F2F7E6F2000000000000000000000000F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2
        F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2000000000000000000000000000000F7E6
        F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7
        E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2
        F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6
        F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F9
        EBF4FBF1F5F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA
        F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3
        EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5
        E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA
        F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA0000000000
        00000000000000F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA00
        0000000000F5E3EAF5E3EAF5E3EA000000000000000000F5E3EAF5E3EAF5E3EA
        F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA000000000000000000F5E3
        EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA00000000
        0000000000000000000000F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA
        F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3
        EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5
        E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA
        F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAFAF0F4FEFCFCF2E2E3F3E1E2F3E1E2F3E1
        E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3
        E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1
        E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E200
        0000F3E1E2F3E1E2F3E1E2F3E1E2000000000000000000000000000000000000
        F3E1E2F3E1E2F3E1E2F3E1E2F3E1E20000000000000000000000000000000000
        00000000000000F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3
        E1E2000000000000000000000000F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2000000000000000000000000000000F3E1E2F3E1E2F3E1
        E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3
        E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1
        E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2FD
        F9F9FEFEFEF8ECEBF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1
        DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDA0000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000F1DEDAF1DEDAF1
        DEDA000000000000000000000000000000000000F1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA000000000000000000F1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA00000000000000000000000000000000
        0000000000000000F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1
        DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF5E8E6FEFEFEFEFEFEFEFEFEF2E1D8EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD200000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000EFDBD2EFDBD2EFDBD2EFDBD20000000000000000000000
        00EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2000000EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        000000000000000000000000000000000000000000EFDBD2EFDBD2EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2F1DDD5FDFCFBFE
        FEFEFEFEFEFEFEFEFDFAF8EEDACCEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA
        EED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8
        CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEE
        D8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA
        EED8CAEED8CAEED8CAEED8CAEED8CA0000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000EED8CAEE
        D8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA
        EED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8
        CAEED8CAEED8CAEED8CAEED8CAEED8CA00000000000000000000000000000000
        0000EED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA
        EED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8
        CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEE
        D8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA
        EED8CAEED8CAEFD8CCFBF6F3FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFCF7F3F0D8
        C5EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EF
        D5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1
        EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5
        C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EF
        D5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1
        EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5
        C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EF
        D5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1
        EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5
        C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EF
        D5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1
        EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5
        C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1F0D6C3FAF3EDFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFDF9F6F2D8C1F0D2B8F0D2B8F0D2B8F0D2B8
        F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2
        B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0
        D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8
        F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2
        B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0
        D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8
        F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2
        B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0
        D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8
        F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2
        B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0
        D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8
        F1D5BDFBF4EDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFBF8F5DEC6F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        000000000000000000F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F4D9BFFDF8F3FEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFBE9D8F3CFAAF4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7000000000000000000F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7FAE5D1FEFDFC
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEF7F0FAD9B9F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        000000000000000000F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF9D6B3FDF3E9FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FDEFE1FAD2AAF9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C7
        96F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9
        C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796
        F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C7
        96F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9
        C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796
        F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C7
        96F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9
        C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796
        F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C7
        96F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9
        C796F9C796F9C796F9C796F9C796FACEA3FDEBDBFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEE9D4FDCFA3FCC48EFC
        C48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48E
        FCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC4
        8EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFC
        C48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48E
        FCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC4
        8EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFC
        C48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48E
        FCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC4
        8EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFC
        C48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48E
        FCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFDCC9CFDE7D1FEFD
        FBFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEEFE1FED5ADFEC187FEC187FEC187FEC187FEC1
        87FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FE
        C187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187
        FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC1
        87FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FE
        C187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187
        FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC1
        87FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FE
        C187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187
        FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC1
        87FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FE
        C187FED1A5FEEBD9FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEF7EFFEE0C3FEC895FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEC48DFEDBB9FEF5EBFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF2E6FED6
        B2FEC188FEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFE
        BA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7C
        FEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA
        7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFE
        BA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7C
        FEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA
        7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFE
        BA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7C
        FEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA
        7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBE84FED4AEFEEBDAFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF1E6FED9B8FEC28DFEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEC089FED5AFFEEAD9
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEF5EEFEDEC2FECBA0FEB87DFEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374
        FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB3
        74FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374
        FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB3
        74FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374
        FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB578FEC9
        9BFEDBBDFEF1E5FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEF0E5FEDBC1FEC89DFEB77EFEAF70FEAF70FEAF70FEAF
        70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FE
        AF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70
        FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF
        70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FE
        AF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70
        FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF
        70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FE
        B479FEC699FED9BCFEEDE0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEF7F1FEE4D1FED5B5FEC091FEAE71FEAB6CFEAB6CFEAB6CFEAB6C
        FEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB
        6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFE
        AB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6C
        FEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB
        6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFE
        AB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6C
        FEAB6CFEC091FED3B1FEE2CCFEF4EDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEF4ECFEE9D9FED5B8FECEABFEBD8EFEAD72FEA768FEA768FEA768FE
        A768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768
        FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA7
        68FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FE
        A768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768
        FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEAA
        6DFEBD8EFEC8A1FED3B3FEE9D9FEF1E7FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEEEE2FEE8D8FEE2CEFED1B1FED1B1FEC195FEBB8BFEB2
        7CFEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FE
        A464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464
        FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA4
        64FEA464FEA464FEA464FEA464FEA464FEA464FEB078FEBB8BFEBB8BFED1B1FE
        D1B1FEDFC9FEE8D8FEEBDDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEE9DDFEE7D7FEDBC3
        FECFAFFECFAFFECFAFFECFAFFECFAFFECFAFFECAA6FEB888FEB888FEB888FEB8
        88FEB888FEB888FEB888FEB888FEB888FEB888FEB888FEB888FEB888FEB888FE
        CAA6FECFAFFECFAFFECFAFFECFAFFECFAFFECFAFFEDBC3FEE7D7FEE7D7FEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFE}
      Proportional = True
      Stretch = True
      Transparent = True
      OnClick = Far6Click
    end
    object Far7: TImage
      Left = 44
      Top = 290
      Width = 119
      Height = 39
      Cursor = crHandPoint
      Picture.Data = {
        07544269746D617036510000424D365100000000000036000000280000009000
        0000300000000100180000000000005100000000000000000000000000000000
        0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF5
        F1FEE7D7FEE7D7FED2B4FECFAFFEC49CFEB888FEB888FEB888FEB888FEB888FE
        B888FEB27EFEA060FEA060FEA060FEA060FEA060FEA060FEA060FEA060FEA060
        FEA060FEA060FEA060FEA060FEA060FEB27EFEB888FEB888FEB888FEB888FEB8
        88FEB888FEC49CFECFAFFECFAFFEE7D7FEE7D7FEF3EBFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEEEE2FEE8D8FED7BBFED1B1FE
        CCA8FEBB8BFEBB8BFEAA6EFEA464FEA464FEA464FEA464FEA464FEA464FEA464
        FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA4
        64FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FE
        A464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464
        FEA464FEA464FEA464FEA464FEBB8BFEBB8BFEC9A3FED1B1FED4B6FEE8D8FEEB
        DDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEECDEFEDDC6FED3B3FEC093FEB885
        FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA7
        68FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FE
        A768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768
        FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA7
        68FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FE
        A768FEA768FEA768FEA768FEA768FEA768FEA768FEB27BFEBD8EFED3B3FEDBC1
        FEE9D9FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEECDFFEDCC3FECEA8FEBE8CFEAB
        6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFE
        AB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6C
        FEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB
        6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFE
        AB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6C
        FEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB
        6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEBB88FECBA4FEDABEFE
        EADAFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEEBDBFED7B7FEC394FE
        AF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70
        FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF
        70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FE
        AF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70
        FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF
        70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FE
        AF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70
        FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEC190FED5B4FEE8D7FEFC
        FBFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF3E9FEDEC2
        FEC697FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB3
        74FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374
        FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB3
        74FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374
        FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB3
        74FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEC493FED9B9FEF1E5FEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEEFE1FED7B4FEC28DFEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEC089FED5AFFEEAD9FEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEF4EBFEDBBAFEC48DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7D
        FEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB
        7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFE
        BB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7D
        FEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB
        7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFE
        BB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7D
        FEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB
        7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFE
        BB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7D
        FEBB7DFEC189FED7B2FEF2E6FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFBF7FEE4CBFECA99FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEC895FE
        E0C3FEFBF7FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF9F4FEDFC0FE
        C68FFEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287
        FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC2
        87FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FE
        C287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287
        FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC2
        87FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FE
        C287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287
        FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC2
        87FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FE
        C287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287
        FEC287FEC287FEC287FEC287FEC287FEC287FEC48BFEDBB8FEF7F0FEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEF9F4FDDBB9FBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC5
        8FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFB
        C58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58F
        FBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC5
        8FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFB
        C58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58F
        FBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC5
        8FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFB
        C58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58F
        FBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC5
        8FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFB
        C58FFBC58FFBC58FFBC58FFDD9B6FEF6EDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFCF8FCE2C8F8CA98F9C896F9C896F9C896F9
        C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896
        F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C8
        96F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9
        C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896
        F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C8
        96F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9
        C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896
        F9C896F9C896000000000000F9C896F9C896F9C896F9C896F9C896F9C896F9C8
        96F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9
        C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896
        F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C8
        96FBDEC1FEFAF5FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFCEBDAF8CFA6
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E00000000000000000000
        0000F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF8CCA3FBE6D1FEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFAF7F6DAC0F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7000000F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7000000000000000000000000000000000000F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F6D8BAFDF7F1FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFBF2E9F2D3B5F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0000000000000000000F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B000000000000000000000
        0000000000000000F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F0D1B2
        F8E9DBFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF9EE
        E4F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0
        D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8
        F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B80000
        00000000F0D3B8F0D3B8F0D3B800000000000000000000000000000000000000
        0000000000F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8
        F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3
        B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0
        D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8
        F0D3B8F0D3B8F0D3B8F0D3B8000000000000000000000000000000F0D3B8F0D3
        B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0
        D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8
        F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3
        B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F7E9DBFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEF7EBE1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1
        EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6
        C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EF
        D6C1EFD6C1EFD6C1EFD6C1EFD6C1000000000000EFD6C1EFD6C1EFD6C1000000
        000000EFD6C1000000000000000000000000000000000000EFD6C1EFD6C1EFD6
        C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EF
        D6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1
        EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6
        C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EF
        D6C1000000000000000000000000EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1
        EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6
        C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EF
        D6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1
        EFD6C1EFD6C1F4E5D9FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF9F3EEEED9CAEED9
        CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEE
        D9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CA
        EED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CA0000
        00000000EED9CAEED9CAEED9CA000000000000EED9CAEED9CAEED9CA00000000
        0000000000000000000000EED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CA
        EED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9
        CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEE
        D9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CA
        EED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CA0000000000000000000000
        00EED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEE
        D9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CA
        EED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9
        CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAF7EEE7FEFEFEFE
        FEFEFEFEFEFCF9F8F0DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2EFDBD20000000000000000000000000000000000
        00EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2000000000000000000000000EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2FBF6F4FEFEFEFEFEFEF5E8E6F1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1
        DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1
        DEDAF1DEDA000000000000000000000000000000F1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1
        DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA0000000000000000
        00000000F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1
        DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF4E3E1FE
        FEFEFDF9F9F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1
        E2F3E1E2000000000000000000000000000000000000000000000000000000F3
        E1E2F3E1E2F3E1E2000000000000000000000000000000000000000000F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E20000000000000000
        00000000F3E1E2F3E1E200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E20000000000000000
        00000000000000000000F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E200
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1
        E2F3E1E2000000000000000000000000000000000000000000000000000000F3
        E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2FBF5F6FAF1F4F5E4EAF5E4EAF5E4EAF5E4
        EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5
        E4EAF5E4EAF5E4EAF5E4EAF5E4EA000000000000000000000000000000000000
        000000000000000000000000000000000000F5E4EA0000000000000000000000
        00000000000000000000000000000000F5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5
        E4EAF5E4EAF5E4EAF5E4EA000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000F5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5
        E4EA000000000000000000000000000000000000000000000000000000F5E4EA
        F5E4EAF5E4EAF5E4EAF5E4EA0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000F5E4EAF5E4EAF5E4EAF5E4EA000000000000000000000000000000000000
        000000000000000000000000000000000000F5E4EAF5E4EAF5E4EAF5E4EAF5E4
        EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF8
        EEF2FAEEF6F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3
        F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F30000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F30000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000F7E7F3F7E7F3F7E7F3
        F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F30000000000000000000000000000
        00000000000000000000000000000000F7E7F3F7E7F3F7E7F300000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000F7E7F3F7E7F3F7E7F30000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3
        F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7EBF5FAECFAF9EAFBF9EAFBF9EAFBF9EA
        FBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9
        EAFBF9EAFBF9EAFBF9EAFBF9EAFB000000000000F9EAFBF9EAFBF9EAFBF9EAFB
        F9EAFBF9EAFBF9EAFBF9EAFB000000000000000000000000F9EAFBF9EAFB0000
        00000000000000000000000000000000000000F9EAFBF9EAFBF9EAFBF9EAFBF9
        EAFBF9EAFBF9EAFBF9EAFBF9EAFB000000000000000000000000F9EAFBF9EAFB
        F9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFB0000000000000000
        00000000000000F9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFB00
        0000000000000000000000F9EAFBF9EAFBF9EAFBF9EAFB000000000000000000
        F9EAFBF9EAFBF9EAFB0000000000000000000000000000000000000000000000
        00000000F9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFB00000000000000
        0000000000000000F9EAFB000000000000000000000000F9EAFBF9EAFBF9EAFB
        000000000000000000000000000000000000000000F9EAFBF9EAFBF9EAFBF9EA
        FBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9
        EAFBFAECFCF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FB
        F9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9
        FB000000F9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FB00000000000000
        0000000000F9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FB000000000000000000
        000000F9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FB0000
        00000000000000F9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9
        E9FBF9E9FB000000000000000000000000000000F9E9FBF9E9FBF9E9FBF9E9FB
        F9E9FBF9E9FBF9E9FBF9E9FBF9E9FB000000000000000000F9E9FBF9E9FBF9E9
        FBF9E9FBF9E9FB000000000000000000F9E9FBF9E9FBF9E9FB000000000000F9
        E9FBF9E9FBF9E9FBF9E9FB000000000000000000F9E9FBF9E9FBF9E9FBF9E9FB
        F9E9FBF9E9FBF9E9FBF9E9FBF9E9FB0000000000000000000000000000000000
        00000000F9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FB00000000000000
        0000000000F9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FB
        F9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF8EAFAFAEEF5F7E6F2F7E6F2F7E6F2F7E6
        F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7
        E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2
        F7E6F2F7E6F2000000000000000000000000000000F7E6F2F7E6F2F7E6F2F7E6
        F2F7E6F2F7E6F2000000000000000000000000F7E6F2F7E6F2F7E6F2F7E6F2F7
        E6F2F7E6F2F7E6F2F7E6F2000000000000000000000000F7E6F2F7E6F2F7E6F2
        F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F20000000000000000000000000000
        00F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F200
        0000000000000000F7E6F2F7E6F2F7E6F2F7E6F2000000000000000000000000
        F7E6F2F7E6F2F7E6F2000000000000F7E6F2F7E6F2F7E6F20000000000000000
        00F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7
        E6F2000000000000000000000000000000F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2
        F7E6F2F7E6F2F7E6F2000000000000000000000000F7E6F2F7E6F2F7E6F2F7E6
        F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F9
        EBF4FBF1F5F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA
        F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3
        EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA00000000000000000000
        0000F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA000000000000000000
        F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA0000000000
        00000000F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA00
        0000000000000000000000000000F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA
        F5E3EAF5E3EAF5E3EAF5E3EAF5E3EA000000000000000000F5E3EAF5E3EAF5E3
        EA000000000000000000000000F5E3EAF5E3EAF5E3EAF5E3EA00000000000000
        0000000000000000000000000000000000F5E3EAF5E3EAF5E3EAF5E3EAF5E3EA
        F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA0000000000000000000000
        00F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA00000000000000000000
        0000F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA
        F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAFAF0F4FEFCFCF2E2E3F3E1E2F3E1E2F3E1
        E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3
        E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2000000000000000000000000000000F3E1E2F3E1E2F3E1E2F3E1E2F3E1
        E2F3E1E2000000000000000000000000F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3
        E1E2F3E1E2F3E1E2000000000000000000000000F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E2000000000000000000000000000000F3E1E2F3E1
        E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E200
        0000000000000000000000000000000000000000000000000000F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E2000000000000000000000000000000000000F3E1
        E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2000000F3E1E2F3E1E2F3E1E2F3
        E1E2F3E1E2F3E1E2000000000000000000000000000000F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2000000000000000000000000F3E1E2F3E1E2F3E1E2F3E1E2F3E1
        E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2FD
        F9F9FEFEFEF8ECEBF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA000000000000000000000000F1
        DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA000000000000000000F1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA0000000000000000
        00F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA00000000000000000000000000
        0000000000000000000000F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA0000000000000000000000000000
        00000000000000F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA00
        0000000000000000000000F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000F1DEDAF1DEDAF1DEDAF1DEDA000000000000F1
        DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF5E8E6FEFEFEFEFEFEFEFEFEF2E1D8EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        000000000000000000000000000000EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2000000EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2EFDBD2EFDBD2000000EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2000000000000000000000000000000000000000000EFDBD2EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2000000000000000000000000EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD200000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        EFDBD2EFDBD2EFDBD2EFDBD2000000EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2F1DDD5FDFCFBFE
        FEFEFEFEFEFEFEFEFDFAF8EEDACCEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA
        EED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8
        CAEED8CAEED8CAEED8CAEED8CAEED8CA000000000000000000000000EED8CAEE
        D8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA
        EED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8
        CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA00000000000000000000000000
        0000000000EED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA
        EED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8
        CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEE
        D8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA
        EED8CA0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000EED8CAEED8CAEED8CAEED8CAEED8CAEE
        D8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA
        EED8CAEED8CAEFD8CCFBF6F3FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFCF7F3EFD8
        C5EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EF
        D5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1000000
        000000000000000000000000EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5
        C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EF
        D5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1
        EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5
        C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EF
        D5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1
        EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5
        C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EF
        D5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1
        EFD5C1EFD5C1000000000000000000EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5
        C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1F0D5C3FAF3EDFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFDF9F6F2D8C1F0D2B8F0D2B8F0D2B8F0D2B8
        F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2
        B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8000000000000F0D2B8F0D2B8F0
        D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8
        F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2
        B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0
        D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8
        F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2
        B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0
        D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8
        F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2
        B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8000000000000000000F0
        D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8
        F1D5BCFBF4EDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFBF8F5DEC6F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0000000F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0000000000000000000F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0000000000000000000F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F4D9BFFDF8F3FEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFBE9D8F3CFAAF4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7000000000000000000F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7FAE5D1FEFDFC
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEF7F0FAD9B9F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9E000000000000000000F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF9D6B3FDF3E9FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FDEFE1FAD2AAF9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C7
        96F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9
        C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796
        F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C7
        96F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9
        C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796
        F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C7
        96F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9
        C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796
        F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C7
        96F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9
        C796F9C796F9C796F9C796F9C796FACEA3FDEBDBFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEE9D4FDCFA3FCC48EFC
        C48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48E
        FCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC4
        8EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFC
        C48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48E
        FCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC4
        8EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFC
        C48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48E
        FCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC4
        8EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFC
        C48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48E
        FCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFDCC9CFDE7D1FEFD
        FBFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEEFE1FED5ADFEC187FEC187FEC187FEC187FEC1
        87FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FE
        C187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187
        FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC1
        87FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FE
        C187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187
        FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC1
        87FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FE
        C187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187
        FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC1
        87FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FE
        C187FED1A5FEEBD9FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEF7EFFEE0C3FEC895FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEC48DFEDBB9FEF5EBFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF2E6FED6
        B2FEC188FEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFE
        BA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7C
        FEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA
        7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFE
        BA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7C
        FEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA
        7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFE
        BA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7C
        FEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA
        7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBE84FED4AEFEEBDAFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF1E6FED9B8FEC28DFEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEC089FED5AFFEEAD9
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEF5EEFEDEC2FECBA0FEB87DFEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374
        FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB3
        74FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374
        FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB3
        74FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374
        FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB578FEC9
        9BFEDBBDFEF1E5FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEF0E5FEDBC1FEC89DFEB77EFEAF70FEAF70FEAF70FEAF
        70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FE
        AF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70
        FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF
        70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FE
        AF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70
        FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF
        70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FE
        B479FEC699FED9BCFEEDE0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEF7F1FEE4D1FED5B5FEC091FEAE71FEAB6CFEAB6CFEAB6CFEAB6C
        FEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB
        6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFE
        AB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6C
        FEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB
        6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFE
        AB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6C
        FEAB6CFEC091FED3B1FEE2CCFEF4EDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEF4ECFEE9D9FED5B8FECEABFEBD8EFEAD72FEA768FEA768FEA768FE
        A768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768
        FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA7
        68FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FE
        A768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768
        FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEAA
        6DFEBD8EFEC8A1FED3B3FEE9D9FEF1E7FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEEEE2FEE8D8FEE2CEFED1B1FED1B1FEC195FEBB8BFEB2
        7CFEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FE
        A464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464
        FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA4
        64FEA464FEA464FEA464FEA464FEA464FEA464FEB078FEBB8BFEBB8BFED1B1FE
        D1B1FEDFC9FEE8D8FEEBDDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEE9DDFEE7D7FEDBC3
        FECFAFFECFAFFECFAFFECFAFFECFAFFECFAFFECAA6FEB888FEB888FEB888FEB8
        88FEB888FEB888FEB888FEB888FEB888FEB888FEB888FEB888FEB888FEB888FE
        CAA6FECFAFFECFAFFECFAFFECFAFFECFAFFECFAFFEDBC3FEE7D7FEE7D7FEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFE}
      Proportional = True
      Stretch = True
      Transparent = True
      OnClick = Far7Click
    end
    object Label2: TLabel
      Left = 12
      Top = 332
      Width = 136
      Height = 15
      Cursor = crHandPoint
      BiDiMode = bdLeftToRight
      Caption = 'http://www.lcddesigner.com'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = [fsItalic, fsUnderline]
      ParentBiDiMode = False
      ParentFont = False
      OnClick = Label2Click
    end
    object Far1: TImage
      Left = 479
      Top = 12
      Width = 62
      Height = 18
      AutoSize = True
      Picture.Data = {
        07544269746D617066080000424D6608000000000000E6030000280000003E00
        0000120000000100080000000000800400007412000074120000EC0000000000
        000000000000330000006600000099000000CC000000FF000000003300003333
        00006633000099330000CC330000FF3300000066000033660000666600009966
        0000CC660000FF66000000990000339900006699000099990000CC990000FF99
        000000CC000033CC000066CC000099CC0000CCCC0000FFCC000000FF000033FF
        000066FF000099FF0000CCFF0000FFFF00000000330033003300660033009900
        3300CC003300FF00330000333300333333006633330099333300CC333300FF33
        330000663300336633006666330099663300CC663300FF663300009933003399
        33006699330099993300CC993300FF99330000CC330033CC330066CC330099CC
        3300CCCC3300FFCC330000FF330033FF330066FF330099FF3300CCFF3300FFFF
        330000006600330066006600660099006600CC006600FF006600003366003333
        66006633660099336600CC336600FF3366000066660033666600666666009966
        6600CC666600FF66660000996600339966006699660099996600CC996600FF99
        660000CC660033CC660066CC660099CC6600CCCC6600FFCC660000FF660033FF
        660066FF660099FF6600CCFF6600FFFF66000000990033009900660099009900
        9900CC009900FF00990000339900333399006633990099339900CC339900FF33
        990000669900336699006666990099669900CC669900FF669900009999003399
        99006699990099999900CC999900FF99990000CC990033CC990066CC990099CC
        9900CCCC9900FFCC990000FF990033FF990066FF990099FF9900CCFF9900FFFF
        99000000CC003300CC006600CC009900CC00CC00CC00FF00CC000033CC003333
        CC006633CC009933CC00CC33CC00FF33CC000066CC003366CC006666CC009966
        CC00CC66CC00FF66CC000099CC003399CC006699CC009999CC00CC99CC00FF99
        CC0000CCCC0033CCCC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FF
        CC0066FFCC0099FFCC00CCFFCC00FFFFCC000000FF003300FF006600FF009900
        FF00CC00FF00FF00FF000033FF003333FF006633FF009933FF00CC33FF00FF33
        FF000066FF003366FF006666FF009966FF00CC66FF00FF66FF000099FF003399
        FF006699FF009999FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CC
        FF00CCCCFF00FFCCFF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFF
        FF00000000000D0D0D001A1A1A00282828003535350043434300505050005D5D
        5D006B6B6B00787878008686860093939300A1A1A100AEAEAE00BBBBBB00C9C9
        C900D6D6D600E4E4E400F1F1F100FFFFFF00D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D70000D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7ACACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D70000D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D781ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D70000D7D7D7D7D7D7D7D7D7D7ACACD7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D756EAD7D7D7ACACEAD7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D70000D7D7ACD7D7D7D7D7D7AC2B2A56D7
        D7D7D7D7D7D7D7D7D7D7D7D7D756D7D7D7AC2B2A2BD7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D78181D7D7D7D70000D7562A2BACD7D7D7D7D7D7812B81
        D7D7D7D7D7D7D7D7D7D7D7D7D756D7D7D7D7D7AC2B56D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7562BD7D7D7D70000D7D7D7562BE9D7D7D7D7D7D7A556
        D7D7D7D7D7D7D7D7D7D7D7D7AC56D7D7D7D7D7D7AC2BEBD7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7ACD7D7D7D7D70000D7D7D7D75681D7D7D7D7D7D7D756
        EAD7D7D7D7D7D7D7D7D7D7D78181D7D7D7D7D7D7D781ACD7D7D7D7D7D7D7D7D7
        AC81818181ACD7D7D7D7D7D7D7D7D7D70000D7D7D7D7AC56D7ACE9D7D7D7EA2B
        2A2B4FACD7D781D7D7D7D7D7AC56ACD7D7D7D7D7D7562A2B56D7D7D7D7D7D781
        2A2A2A2A2A2A2BAC4F2B7A812B2B7AD70000D7D7D7D78156D78181D7D7D7AC2A
        2B2B2A2AACD756ACD7D7D7D7D72B2A2B81D7D7D7D72B2B2B2AACD7D7D7D7AC2A
        2B8181ACA581562A2A2B2A2A2B2A2AD70000D7D7D7D72B81D78181D7D7D7D781
        D7D7AC8181D756ACD7D7D7D7D756812B56D7D7D7D781D7D756ACD7D7D7D7A556
        D7D7D7D7D7D7D7ACACD7AC81D7D74FAC0000D7D7D7D781E9D78181D7D7D7D7D7
        D7AC2A5581D756ACD7D7D7D7D7812B2A81D7D7D7D7D7D7EA2BD7D7D7D7D7ACAC
        D7D7D7D7D7D7D7D7D7D7D7D7D7AC2BD70000D7D7D7D7D7D7D78181D7D7EA81D7
        D7AC562BACD74FACD7D7D7D7D7E95556D7D7D7D7D7D7D7D7A5D7D7D7D7D7D7AC
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7A5D70000D7D7D7D7D7D7D75681D7D7812AAC
        D7D72B2BD7D72BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D75681ACD7D7D7D7D7D7D7D7EAD7D70000D7D7D7D7D7D7D75681D7D7D781D7
        D7D7ACACD7D72BACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7EAACD7D7D7D7D7D7D7
        D7D72B4F56D7D7D7D7D7D7D7D72B56560000D7D7D7D7D7D7D75681D7D7D7D7D7
        D7D7ACACD7D72BD0D7D7D7D7D7D7D7D7D7D7D7D7D7D7D77A2BE9D7D7D7D7D7D7
        D7D7D7EAD7D7D7D7D7D7D7D7D78181810000D7D7D7D7D7D7D756ACD7D7D7D7D7
        D7D72B56D7D72BD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7AC80D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D78156D70000D7D7D7D7D7D7D7ACACD7D7D7D7D7
        D7D78181D7D7ACEAD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7ACACD70000}
      Transparent = True
    end
    object En4: TLabel
      Left = 16
      Top = 236
      Width = 104
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Customer User ID:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object En5: TLabel
      Left = 16
      Top = 266
      Width = 95
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Activation Code:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object En1: TLabel
      Left = 16
      Top = 14
      Width = 69
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Registration'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object En2: TBevel
      Left = 16
      Top = 31
      Width = 332
      Height = 6
      Shape = bsTopLine
    end
    object En6: TImage
      Left = 385
      Top = 290
      Width = 119
      Height = 39
      Cursor = crHandPoint
      Picture.Data = {
        07544269746D617036510000424D365100000000000036000000280000009000
        0000300000000100180000000000005100000000000000000000000000000000
        0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF5
        F1FEE7D7FEE7D7FED2B4FECFAFFEC49CFEB888FEB888FEB888FEB888FEB888FE
        B888FEB27EFEA060FEA060FEA060FEA060FEA060FEA060FEA060FEA060FEA060
        FEA060FEA060FEA060FEA060FEA060FEB27EFEB888FEB888FEB888FEB888FEB8
        88FEB888FEC49CFECFAFFECFAFFEE7D7FEE7D7FEF3EBFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEEEE2FEE8D8FED7BBFED1B1FE
        CCA8FEBB8BFEBB8BFEAA6EFEA464FEA464FEA464FEA464FEA464FEA464FEA464
        FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA4
        64FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FE
        A464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464
        FEA464FEA464FEA464FEA464FEBB8BFEBB8BFEC9A3FED1B1FED4B6FEE8D8FEEB
        DDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEECDEFEDDC6FED3B3FEC093FEB885
        FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA7
        68FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FE
        A768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768
        FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA7
        68FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FE
        A768FEA768FEA768FEA768FEA768FEA768FEA768FEB27BFEBD8EFED3B3FEDBC1
        FEE9D9FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEECDFFEDCC3FECEA8FEBE8CFEAB
        6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFE
        AB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6C
        FEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB
        6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFE
        AB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6C
        FEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB
        6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEBB88FECBA4FEDABEFE
        EADAFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEEBDBFED7B7FEC394FE
        AF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70
        FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF
        70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FE
        AF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70
        FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF
        70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FE
        AF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70
        FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEC190FED5B4FEE8D7FEFC
        FBFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF3E9FEDEC2
        FEC697FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB3
        74FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374
        FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB3
        74FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374
        FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB3
        74FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEC493FED9B9FEF1E5FEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEEFE1FED7B4FEC28DFEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEC089FED5AFFEEAD9FEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEF4EBFEDBBAFEC48DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7D
        FEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB
        7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFE
        BB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7D
        FEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB
        7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFE
        BB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7D
        FEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB
        7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFE
        BB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7D
        FEBB7DFEC189FED7B2FEF2E6FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFBF7FEE4CBFEC999FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE8100000000000000000000
        0000000000000000000000FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEC795FE
        E0C3FEFBF7FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF9F4FEDFBFFD
        C68FFEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287
        FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC2
        87FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FE
        C287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287
        000000000000000000FEC287FEC287FEC287FEC287FEC287FEC2870000000000
        00FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FE
        C287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287
        FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC2
        87FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FE
        C287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287
        FEC287FEC287FEC287FEC287FEC287FEC287FDC48BFEDBB8FEF7F0FEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEF9F4FDDBB9FBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC5
        8FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFB
        C58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58F
        FBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC5
        8FFBC58FFBC58FFBC58FFBC58FFBC58F000000000000FBC58FFBC58FFBC58FFB
        C58FFBC58FFBC58FFBC58FFBC58F000000000000FBC58FFBC58FFBC58FFBC58F
        FBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC5
        8FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFB
        C58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58F
        FBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC5
        8FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFB
        C58FFBC58FFBC58FFBC58FFCD8B6FEF6EDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFCF8FCE2C8F8CA98F9C896F9C896F9C896F9
        C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896
        F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C8
        96F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9
        C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896
        000000000000F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C8960000
        00000000F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9
        C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896
        F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C8
        96F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9
        C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896
        F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C8
        96FBDEC1FEFAF5FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFCEBDAF8CFA6
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E00000000000000000000000000
        0000000000000000000000000000000000000000F7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF8CCA3FBE6D1FEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFAF7F6DAC0F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        0000000000000000000000000000000000000000000000000000000000000000
        00000000F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F6D8BAFDF7F1FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFBF2E9F2D3B5F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B000000000000000000000000000000000000000
        0000000000000000000000F1D0B0F1D0B0F1D0B0F1D0B0000000000000000000
        000000000000000000F1D0B0F1D0B0F1D0B0F1D0B00000000000000000000000
        00F1D0B0F1D0B0F1D0B0F1D0B0F1D0B000000000000000000000000000000000
        0000000000000000000000000000F1D0B0F1D0B0F1D0B0000000000000000000
        000000000000000000F1D0B0000000F1D0B0F1D0B00000000000000000000000
        00F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0000000000000000000000000F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0000000000000000000000000F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0000000000000000000000000000000000000F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F0D1B2
        F8E9DBFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF9EE
        E4F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0
        D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8
        F0D3B8F0D3B8000000000000000000000000F0D3B8F0D3B8F0D3B8F0D3B8F0D3
        B8F0D3B8000000000000000000000000000000F0D3B8F0D3B8F0D3B8F0D3B800
        0000000000000000000000000000000000000000F0D3B8F0D3B8F0D3B8F0D3B8
        000000000000F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3
        B8F0D3B8F0D3B8F0D3B8000000000000000000000000F0D3B8F0D3B800000000
        0000000000F0D3B8F0D3B8F0D3B8000000000000F0D3B8F0D3B8F0D3B8F0D3B8
        000000000000000000000000000000000000F0D3B8F0D3B8F0D3B80000000000
        00000000000000000000000000000000F0D3B8F0D3B8F0D3B8F0D3B8F0D3B800
        0000000000000000000000F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8
        F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3
        B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F7E9DBFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEF7EBE1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1
        EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6
        C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C100000000000000000000
        0000EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1000000000000000000000000000000
        EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1000000000000000000000000EFD6C1EFD6
        C1EFD6C1000000EFD6C1EFD6C1EFD6C1EFD6C1000000EFD6C1EFD6C1EFD6C1EF
        D6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1000000000000
        000000000000EFD6C1EFD6C1000000000000EFD6C1EFD6C1EFD6C1EFD6C10000
        00000000000000EFD6C1EFD6C1EFD6C1000000000000000000000000EFD6C1EF
        D6C1000000EFD6C1EFD6C1000000000000000000000000EFD6C1EFD6C1EFD6C1
        000000EFD6C1EFD6C1EFD6C1EFD6C1000000000000000000000000EFD6C1EFD6
        C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EF
        D6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1
        EFD6C1EFD6C1F4E5D9FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF9F3EEEED9CAEED9
        CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEE
        D9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CA
        EED9CAEED9CA000000000000000000000000EED9CAEED9CAEED9CAEED9CAEED9
        CA000000000000000000000000EED9CAEED9CAEED9CAEED9CAEED9CA00000000
        0000000000000000000000EED9CAEED9CAEED9CAEED9CA000000EED9CAEED9CA
        EED9CAEED9CA000000000000000000000000000000000000EED9CAEED9CAEED9
        CAEED9CAEED9CAEED9CA000000000000000000000000EED9CAEED9CA000000EE
        D9CAEED9CAEED9CAEED9CA000000000000000000000000EED9CAEED9CAEED9CA
        000000000000000000000000EED9CAEED9CAEED9CAEED9CA0000000000000000
        00000000000000EED9CAEED9CAEED9CAEED9CA000000EED9CAEED9CAEED9CA00
        0000000000000000000000EED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CA
        EED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9
        CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAF7EEE7FEFEFEFE
        FEFEFEFEFEFCF9F8F0DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD200000000000000000000
        0000EFDBD2EFDBD2EFDBD2EFDBD2000000000000000000000000000000EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2000000000000000000000000EFDBD2EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2000000000000000000000000EF
        DBD2000000000000000000EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2000000000000
        000000000000EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD20000000000000000
        00000000000000EFDBD2EFDBD2EFDBD2000000000000000000000000EFDBD2EF
        DBD2EFDBD2EFDBD2000000000000000000000000EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2000000000000000000000000EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2FBF6F4FEFEFEFEFEFEF5E8E6F1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1
        DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDA000000000000000000000000F1DEDAF1DEDAF1DEDA0000000000
        00000000000000000000F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA00000000
        0000000000000000F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        000000000000000000000000F1DEDAF1DEDAF1DEDA000000000000000000F1DE
        DAF1DEDAF1DEDAF1DEDA000000000000000000000000F1DEDAF1DEDAF1DEDAF1
        DEDA000000000000000000000000000000000000F1DEDAF1DEDAF1DEDAF1DEDA
        000000000000000000000000F1DEDAF1DEDAF1DEDAF1DEDA0000000000000000
        00000000F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA00
        0000000000000000000000F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF4E3E1FE
        FEFEFDF9F9F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1
        E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E200000000000000000000
        0000F3E1E2F3E1E2000000000000000000000000000000F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E20000000000000000000000000000000000000000
        00000000000000000000F3E1E2F3E1E2000000000000000000000000F3E1E2F3
        E1E2F3E1E2000000000000000000000000F3E1E2F3E1E2F3E1E2000000000000
        000000000000F3E1E2F3E1E2F3E1E20000000000000000000000000000000000
        00F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2000000000000000000000000F3E1E2F3
        E1E2F3E1E2F3E1E2000000000000000000000000000000000000000000000000
        000000000000F3E1E2F3E1E2F3E1E2000000000000000000000000F3E1E2F3E1
        E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3
        E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2FBF5F6FAF1F4F5E4EAF5E4EAF5E4EAF5E4
        EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5
        E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EA
        F5E4EAF5E4EA000000000000000000000000F5E4EAF5E4EA0000000000000000
        00000000F5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EA00000000
        0000000000000000F5E4EAF5E4EAF5E4EA000000000000000000F5E4EAF5E4EA
        000000000000000000000000F5E4EAF5E4EAF5E4EA0000000000000000000000
        00F5E4EAF5E4EAF5E4EA000000000000000000000000F5E4EAF5E4EA00000000
        0000000000000000000000000000F5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EA
        000000000000000000000000F5E4EAF5E4EAF5E4EAF5E4EA0000000000000000
        00000000F5E4EAF5E4EAF5E4EA000000000000000000F5E4EAF5E4EAF5E4EA00
        0000000000000000000000F5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EA
        F5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4
        EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF8
        EEF2FAEEF6F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3
        F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7
        F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F300000000000000000000
        0000000000000000000000000000000000000000F7E7F3F7E7F3F7E7F3F7E7F3
        F7E7F3F7E7F3F7E7F3F7E7F3000000000000000000000000F7E7F3F7E7F3F7E7
        F3000000000000000000F7E7F3F7E7F3000000000000000000000000F7E7F3F7
        E7F3F7E7F3000000000000000000000000F7E7F3F7E7F3F7E7F3000000000000
        000000000000F7E7F3F7E7F3000000000000000000000000F7E7F3F7E7F3F7E7
        F3000000F7E7F3F7E7F3F7E7F3F7E7F3000000000000000000000000F7E7F3F7
        E7F3F7E7F3F7E7F3000000000000000000000000F7E7F3F7E7F3F7E7F3000000
        000000000000F7E7F3F7E7F3F7E7F3000000000000000000000000F7E7F3F7E7
        F3F7E7F3000000000000F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7
        E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3
        F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7EBF5FAECFAF9EAFBF9EAFBF9EAFBF9EA
        FBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9
        EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFB
        F9EAFBF9EAFB000000000000000000000000F9EAFBF9EAFBF9EAFBF9EAFB0000
        00000000000000000000F9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFB00
        0000000000000000F9EAFBF9EAFBF9EAFB000000000000F9EAFBF9EAFBF9EAFB
        000000000000000000000000F9EAFBF9EAFBF9EAFB0000000000000000000000
        00F9EAFBF9EAFBF9EAFB000000000000000000000000F9EAFBF9EAFB00000000
        0000000000F9EAFBF9EAFBF9EAFB000000000000F9EAFBF9EAFBF9EAFBF9EAFB
        000000000000000000000000F9EAFBF9EAFBF9EAFBF9EAFBF9EAFB0000000000
        00000000F9EAFBF9EAFBF9EAFB000000000000F9EAFBF9EAFBF9EAFBF9EAFB00
        0000000000000000000000000000F9EAFB000000000000000000000000F9EAFB
        F9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EA
        FBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9
        EAFBFAECFCF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FB
        F9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9
        FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FB00000000000000000000
        0000F9E9FBF9E9FBF9E9FBF9E9FBF9E9FB000000000000000000000000F9E9FB
        F9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FB000000000000000000F9E9FB0000
        00000000000000F9E9FBF9E9FBF9E9FBF9E9FB000000000000000000000000F9
        E9FB000000000000000000000000F9E9FBF9E9FBF9E9FBF9E9FB000000000000
        000000000000F9E9FBF9E9FBF9E9FB000000000000F9E9FBF9E9FB0000000000
        00000000F9E9FBF9E9FBF9E9FBF9E9FB000000000000000000000000F9E9FBF9
        E9FBF9E9FBF9E9FBF9E9FBF9E9FB000000000000000000F9E9FB000000000000
        000000F9E9FBF9E9FBF9E9FBF9E9FB000000000000000000000000F9E9FB0000
        00000000000000000000000000F9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9
        E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FB
        F9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF8EAFAFAEEF5F7E6F2F7E6F2F7E6F2F7E6
        F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7
        E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2
        F7E6F2F7E6F2000000000000000000000000F7E6F2F7E6F2F7E6F2F7E6F2F7E6
        F2F7E6F2000000000000000000000000F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7
        E6F2F7E6F2000000000000000000000000F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2
        F7E6F2F7E6F2F7E6F20000000000000000000000000000000000000000000000
        00000000F7E6F2000000000000000000000000000000F7E6F2F7E6F2F7E6F2F7
        E6F2000000000000000000F7E6F2F7E6F2000000F7E6F2F7E6F2000000000000
        000000000000000000000000000000000000000000F7E6F2F7E6F2F7E6F2F7E6
        F2000000000000000000000000F7E6F2F7E6F2F7E6F2F7E6F2F7E6F200000000
        0000000000000000000000F7E6F2F7E6F2000000000000000000F7E6F2F7E6F2
        F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6
        F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F9
        EBF4FBF1F5F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA
        F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3
        EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA00000000000000000000
        0000F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA000000000000000000000000
        F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3
        EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5
        E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA
        F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3
        EAF5E3EAF5E3EAF5E3EAF5E3EA000000000000000000000000000000F5E3EAF5
        E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA
        F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3
        EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5
        E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA
        F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAFAF0F4FEFCFCF2E2E3F3E1E2F3E1E2F3E1
        E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3
        E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2000000000000000000000000F3E1E2F3E1E2F3E1E2F3E1E2F3E1
        E2F3E1E2000000000000000000000000F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3
        E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1
        E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3
        E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2000000000000000000F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1
        E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3
        E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1
        E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2FD
        F9F9FEFEFEF8ECEBF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA00000000000000000000
        0000F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA000000000000000000000000
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1
        DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA000000
        000000F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA000000000000F1DEDAF1
        DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1
        DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF5E8E6FEFEFEFEFEFEFEFEFEF2E1D8EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2000000000000000000000000EFDBD2EFDBD2EFDBD2EFDBD2EFDB
        D2000000000000000000000000EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2000000000000000000000000EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2000000000000EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2F1DDD5FDFCFBFE
        FEFEFEFEFEFEFEFEFDFAF8EEDACCEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA
        EED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8
        CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA00000000000000000000
        0000EED8CAEED8CAEED8CAEED8CA000000000000000000000000EED8CAEED8CA
        EED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8
        CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEE
        D8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA000000000000
        000000000000EED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8
        CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA000000EED8CAEE
        D8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA
        EED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8
        CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEE
        D8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA
        EED8CAEED8CAEFD8CCFBF6F3FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFCF7F3EFD8
        C5EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EF
        D5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EF
        D5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1
        EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5
        C1EFD5C1EFD5C1EFD5C1EFD5C1000000000000EFD5C1EFD5C1EFD5C1EFD5C1EF
        D5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1
        EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5
        C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EF
        D5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1
        EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5
        C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1F0D5C3FAF3EDFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFDF9F6F2D8C1F0D2B8F0D2B8F0D2B8F0D2B8
        F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2
        B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0
        D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8
        F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2
        B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0
        D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8
        F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2
        B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0
        D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8
        F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2
        B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0
        D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8
        F1D5BDFBF4EDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFBF8F5DEC7F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F4D9BFFDF8F3FEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFBE9D8F4CFAAF4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7FAE5D1FEFDFC
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEF7F0FAD9BAF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF9D6B3FDF3E9FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FDEFE1FAD2AAF9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C7
        96F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9
        C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796
        F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C7
        96F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9
        C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796
        F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C7
        96F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9
        C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796
        F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C7
        96F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9
        C796F9C796F9C796F9C796F9C796FACEA3FDEBDBFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEE9D4FDCFA3FCC48EFC
        C48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48E
        FCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC4
        8EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFC
        C48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48E
        FCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC4
        8EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFC
        C48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48E
        FCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC4
        8EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFC
        C48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48E
        FCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFDCC9CFDE7D1FEFD
        FBFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEEFE1FED5ADFEC187FEC187FEC187FEC187FEC1
        87FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FE
        C187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187
        FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC1
        87FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FE
        C187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187
        FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC1
        87FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FE
        C187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187
        FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC1
        87FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FE
        C187FED1A5FEEBD9FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEF7EFFEE0C3FEC895FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEC48DFEDBB9FEF5EBFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF2E6FED6
        B2FEC188FEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFE
        BA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7C
        FEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA
        7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFE
        BA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7C
        FEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA
        7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFE
        BA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7C
        FEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA
        7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBE84FED4AEFEEBDAFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF1E6FED9B8FEC28DFEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEC089FED5AFFEEAD9
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEF5EEFEDEC2FECBA0FEB87DFEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374
        FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB3
        74FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374
        FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB3
        74FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374
        FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB578FEC9
        9BFEDBBDFEF1E5FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEF0E5FEDBC1FEC89DFEB77EFEAF70FEAF70FEAF70FEAF
        70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FE
        AF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70
        FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF
        70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FE
        AF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70
        FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF
        70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FE
        B479FEC699FED9BCFEEDE0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEF7F1FEE4D1FED5B5FEC091FEAE71FEAB6CFEAB6CFEAB6CFEAB6C
        FEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB
        6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFE
        AB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6C
        FEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB
        6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFE
        AB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6C
        FEAB6CFEC091FED3B1FEE2CCFEF4EDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEF4ECFEE9D9FED5B8FECEABFEBD8EFEAD72FEA768FEA768FEA768FE
        A768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768
        FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA7
        68FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FE
        A768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768
        FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEAA
        6DFEBD8EFEC8A1FED3B3FEE9D9FEF1E7FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEEEE2FEE8D8FEE2CEFED1B1FED1B1FEC195FEBB8BFEB2
        7CFEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FE
        A464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464
        FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA4
        64FEA464FEA464FEA464FEA464FEA464FEA464FEB078FEBB8BFEBB8BFED1B1FE
        D1B1FEDFC9FEE8D8FEEBDDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEE9DDFEE7D7FEDBC3
        FECFAFFECFAFFECFAFFECFAFFECFAFFECFAFFECAA6FEB888FEB888FEB888FEB8
        88FEB888FEB888FEB888FEB888FEB888FEB888FEB888FEB888FEB888FEB888FE
        CAA6FECFAFFECFAFFECFAFFECFAFFECFAFFECFAFFEDBC3FEE7D7FEE7D7FEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFE}
      Proportional = True
      Stretch = True
      Transparent = True
      OnClick = Far5Click
    end
    object En7: TImage
      Left = 209
      Top = 290
      Width = 119
      Height = 39
      Cursor = crHandPoint
      Picture.Data = {
        07544269746D617036510000424D365100000000000036000000280000009000
        0000300000000100180000000000005100000000000000000000000000000000
        0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF5
        F1FEE7D7FEE7D7FED2B4FECFAFFEC49CFEB888FEB888FEB888FEB888FEB888FE
        B888FEB27EFEA060FEA060FEA060FEA060FEA060FEA060FEA060FEA060FEA060
        FEA060FEA060FEA060FEA060FEA060FEB27EFEB888FEB888FEB888FEB888FEB8
        88FEB888FEC49CFECFAFFECFAFFEE7D7FEE7D7FEF3EBFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEEEE2FEE8D8FED7BBFED1B1FE
        CCA8FEBB8BFEBB8BFEAA6EFEA464FEA464FEA464FEA464FEA464FEA464FEA464
        FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA4
        64FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FE
        A464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464
        FEA464FEA464FEA464FEA464FEBB8BFEBB8BFEC9A3FED1B1FED4B6FEE8D8FEEB
        DDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEECDEFEDDC6FED3B3FEC093FEB885
        FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA7
        68FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FE
        A768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768
        FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA7
        68FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FE
        A768FEA768FEA768FEA768FEA768FEA768FEA768FEB27BFEBD8EFED3B3FEDBC1
        FEE9D9FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEECDFFEDCC3FECEA8FEBE8CFEAB
        6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFE
        AB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6C
        FEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB
        6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFE
        AB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6C
        FEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB
        6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEBB88FECBA4FEDABEFE
        EADAFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEEBDBFED7B7FEC394FE
        AF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70
        FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF
        70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FE
        AF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70
        FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF
        70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FE
        AF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70
        FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEC190FED5B4FEE8D7FEFC
        FBFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF3E9FEDEC2
        FEC697FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB3
        74FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374
        FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB3
        74FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374
        FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB3
        74FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEC493FED9B9FEF1E5FEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEEFE1FED7B4FEC28DFEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEC089FED5AFFEEAD9FEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEF4EBFEDBBAFEC48DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7D
        FEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB
        7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFE
        BB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7D
        FEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB
        7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFE
        BB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7D
        FEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB
        7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFE
        BB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7D
        FEBB7DFEC189FED7B2FEF2E6FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFBF7FEE4CBFECA99FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEC895FE
        E0C3FEFBF7FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF9F4FEDFC0FE
        C68FFEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287
        FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC2
        87FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FE
        C287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287
        FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC2
        87FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FE
        C287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287
        FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC2
        87FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FE
        C287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287
        FEC287FEC287FEC287FEC287FEC287FEC287FEC48BFEDBB8FEF7F0FEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEF9F4FDDBB9FBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC5
        8FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFB
        C58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58F
        FBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC5
        8FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFB
        C58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58F
        FBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC5
        8FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFB
        C58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58F
        FBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC5
        8FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFB
        C58FFBC58FFBC58FFBC58FFDD9B6FEF6EDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFCF8FCE2C8F9CA99F9C896F9C896F9C896F9
        C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896
        F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C8
        96F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9
        C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896
        F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C8
        96F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9
        C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896
        F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C8
        96F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9
        C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896
        F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C8
        96FCDFC1FEFAF5FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFCEBDAF8CFA7
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF8CDA4FBE6D1FEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFAF7F7DBC0F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F7D8BAFDF7F1FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFBF2E9F2D3B5F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B00000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000F1D0B0F1D0B0F1D0B0000000000000000000000000000000F1D0B0000000
        000000000000000000000000000000F1D0B00000000000000000000000000000
        00000000F1D0B0F1D0B0F1D0B0F1D0B0000000000000000000000000F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F0D1B2
        F8E9DBFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF9EE
        E4F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0
        D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8
        F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3
        B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0
        D3B8F0D3B8F0D3B8F0D3B8000000000000000000000000F0D3B8F0D3B8F0D3B8
        F0D3B8F0D3B8F0D3B8000000000000000000F0D3B8F0D3B8F0D3B8F0D3B80000
        00000000F0D3B8F0D3B8F0D3B8000000000000000000000000000000F0D3B8F0
        D3B8F0D3B8000000000000000000000000F0D3B8F0D3B8F0D3B8F0D3B8000000
        000000000000000000000000000000F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3
        B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0
        D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8
        F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3
        B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F7E9DBFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEF7EBE1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1
        EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6
        C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EF
        D6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1
        EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C10000000000
        00000000000000EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C100
        0000000000EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1000000EFD6C1EFD6C1000000
        000000000000000000EFD6C1EFD6C1EFD6C1EFD6C10000000000000000000000
        00EFD6C1EFD6C1EFD6C1EFD6C1000000000000000000000000EFD6C1EFD6C100
        0000EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1
        EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6
        C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EF
        D6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1
        EFD6C1EFD6C1F4E5D9FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF9F3EEEED9CAEED9
        CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEE
        D9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CA
        EED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9
        CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEE
        D9CAEED9CAEED9CAEED9CA000000000000000000000000EED9CAEED9CAEED9CA
        EED9CAEED9CAEED9CAEED9CAEED9CAEED9CA000000EED9CAEED9CAEED9CAEED9
        CAEED9CA000000EED9CA000000000000000000000000EED9CAEED9CAEED9CAEE
        D9CAEED9CA000000000000000000000000EED9CAEED9CAEED9CAEED9CA000000
        000000000000000000EED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9
        CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEE
        D9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CA
        EED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9
        CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAF7EEE7FEFEFEFE
        FEFEFEFEFEFCF9F8F0DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD20000000000
        00000000000000EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2000000EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2000000000000000000
        000000000000EFDBD2EFDBD2EFDBD2EFDBD2EFDBD20000000000000000000000
        00EFDBD2EFDBD2EFDBD2EFDBD2000000000000000000000000EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2FBF6F4FEFEFEFEFEFEF5E8E6F1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1
        DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1
        DEDAF1DEDAF1DEDAF1DEDA000000000000000000000000F1DEDAF1DEDAF1DEDA
        F1DEDA000000F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDA000000000000000000000000F1DEDAF1DEDAF1DEDAF1DEDAF1
        DEDAF1DEDA000000000000000000000000F1DEDAF1DEDAF1DEDAF1DEDA000000
        000000000000000000F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1
        DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF4E3E1FE
        FEFEFDF9F9F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1
        E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3
        E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E20000000000
        00000000000000F3E1E2F3E1E2F3E1E2F3E1E2000000F3E1E2F3E1E2F3E1E2F3
        E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2000000000000000000
        000000F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E20000000000000000000000
        00F3E1E2F3E1E2F3E1E2F3E1E2000000000000000000000000F3E1E2F3E1E2F3
        E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1
        E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3
        E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2FBF5F6FAF1F4F5E4EAF5E4EAF5E4EAF5E4
        EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5
        E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EA
        F5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4
        EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5
        E4EAF5E4EAF5E4EAF5E4EA000000000000000000000000F5E4EAF5E4EAF5E4EA
        000000000000F5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4
        EAF5E4EA000000000000000000000000F5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5
        E4EAF5E4EA000000000000000000000000F5E4EAF5E4EAF5E4EAF5E4EA000000
        000000000000000000F5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4
        EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5
        E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EA
        F5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4
        EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF8
        EEF2FAEEF6F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3
        F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7
        F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7
        E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3
        F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F30000000000
        00000000000000F7E7F3F7E7F3000000000000000000F7E7F3F7E7F3F7E7F3F7
        E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3000000000000000000000000F7E7F3
        000000F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F30000000000000000000000
        00F7E7F3F7E7F3F7E7F3F7E7F3000000000000000000000000F7E7F3F7E7F3F7
        E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3
        F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7
        F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7
        E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3
        F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7EBF5FAECFAF9EAFBF9EAFBF9EAFBF9EA
        FBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9
        EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFB
        F9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EA
        FBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9
        EAFBF9EAFBF9EAFBF9EAFB000000000000000000000000000000000000000000
        000000000000F9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EA
        FB000000000000000000000000F9EAFBF9EAFB000000F9EAFBF9EAFBF9EAFBF9
        EAFBF9EAFB000000000000000000000000F9EAFBF9EAFBF9EAFBF9EAFB000000
        000000000000000000F9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EA
        FBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9
        EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFB
        F9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EA
        FBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9
        EAFBFAECFCF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FB
        F9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9
        FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9
        E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FB
        F9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FB0000000000
        00000000000000F9E9FBF9E9FB000000000000000000F9E9FBF9E9FBF9E9FBF9
        E9FBF9E9FBF9E9FBF9E9FBF9E9FB000000000000000000000000F9E9FBF9E9FB
        F9E9FB000000000000F9E9FBF9E9FBF9E9FBF9E9FB0000000000000000000000
        00F9E9FBF9E9FBF9E9FBF9E9FB000000000000000000000000F9E9FBF9E9FBF9
        E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FB
        F9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9
        FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9
        E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FB
        F9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF8EAFAFAEEF5F7E6F2F7E6F2F7E6F2F7E6
        F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7
        E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2
        F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6
        F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7
        E6F2F7E6F2F7E6F2F7E6F2000000000000000000000000F7E6F2F7E6F2F7E6F2
        000000000000F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F20000000000
        00000000000000000000000000F7E6F2000000000000000000000000000000F7
        E6F2000000000000000000000000000000F7E6F2F7E6F2000000000000000000
        000000000000000000000000000000000000F7E6F2F7E6F2F7E6F2F7E6F2F7E6
        F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7
        E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2
        F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6
        F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F9
        EBF4FBF1F5F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA
        F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3
        EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5
        E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA
        F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA0000000000
        00000000000000F5E3EAF5E3EAF5E3EAF5E3EA000000F5E3EAF5E3EAF5E3EAF5
        E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA
        F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3
        EAF5E3EAF5E3EAF5E3EA000000000000000000000000000000F5E3EAF5E3EAF5
        E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA
        F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3
        EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5
        E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA
        F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAFAF0F4FEFCFCF2E2E3F3E1E2F3E1E2F3E1
        E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3
        E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1
        E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3
        E1E2F3E1E2F3E1E2F3E1E2000000000000000000000000F3E1E2F3E1E2F3E1E2
        F3E1E2000000F3E1E2F3E1E2F3E1E2000000F3E1E2F3E1E2F3E1E2F3E1E2F3E1
        E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3
        E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        000000000000000000F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1
        E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3
        E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1
        E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2FD
        F9F9FEFEFEF8ECEBF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1
        DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA0000000000
        00000000000000F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA00
        0000F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA000000000000F1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA000000000000F1DEDAF1DEDAF1
        DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1
        DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF5E8E6FEFEFEFEFEFEFEFEFEF2E1D8EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2EFDBD2000000000000000000000000EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2000000000000EFDBD2EFDBD2EFDBD2EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2000000000000000000000000EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2000000000000EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2F1DDD5FDFCFBFE
        FEFEFEFEFEFEFEFEFDFAF8EEDACCEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA
        EED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8
        CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEE
        D8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA
        EED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA0000000000
        00000000000000EED8CAEED8CAEED8CAEED8CAEED8CAEED8CA00000000000000
        0000EED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA
        EED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA0000000000000000000000
        00EED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA000000EED8CAEED8CAEE
        D8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA
        EED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8
        CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEE
        D8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA
        EED8CAEED8CAEFD8CCFBF6F3FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFCF7F3EFD8
        C5EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EF
        D5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1
        EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5
        C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EF
        D5C1000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000EFD5C1EFD5C1EFD5C1EFD5C1EFD5
        C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EF
        D5C1EFD5C1EFD5C1000000000000EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1
        EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5
        C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EF
        D5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1
        EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5
        C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1F0D5C3FAF3EDFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFDF9F6F2D8C1F0D2B8F0D2B8F0D2B8F0D2B8
        F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2
        B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0
        D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8
        F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2
        B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0
        D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8
        F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2
        B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0
        D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8
        F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2
        B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0
        D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8
        F1D5BDFBF4EDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFBF8F5DEC7F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F4D9BFFDF8F3FEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFBE9D8F4CFAAF4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7FAE5D1FEFDFC
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEF7F0FAD9BAF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF9D6B3FDF3E9FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FDEFE1FAD2AAF9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C7
        96F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9
        C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796
        F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C7
        96F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9
        C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796
        F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C7
        96F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9
        C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796
        F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C7
        96F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9
        C796F9C796F9C796F9C796F9C796FACEA3FDEBDBFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEE9D4FDCFA3FCC48EFC
        C48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48E
        FCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC4
        8EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFC
        C48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48E
        FCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC4
        8EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFC
        C48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48E
        FCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC4
        8EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFC
        C48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48E
        FCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFDCC9CFDE7D1FEFD
        FBFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEEFE1FED5ADFEC187FEC187FEC187FEC187FEC1
        87FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FE
        C187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187
        FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC1
        87FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FE
        C187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187
        FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC1
        87FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FE
        C187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187
        FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC1
        87FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FE
        C187FED1A5FEEBD9FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEF7EFFEE0C3FEC895FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEC48DFEDBB9FEF5EBFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF2E6FED6
        B2FEC188FEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFE
        BA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7C
        FEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA
        7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFE
        BA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7C
        FEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA
        7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFE
        BA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7C
        FEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA
        7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBE84FED4AEFEEBDAFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF1E6FED9B8FEC28DFEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEC089FED5AFFEEAD9
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEF5EEFEDEC2FECBA0FEB87DFEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374
        FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB3
        74FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374
        FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB3
        74FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374
        FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB578FEC9
        9BFEDBBDFEF1E5FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEF0E5FEDBC1FEC89DFEB77EFEAF70FEAF70FEAF70FEAF
        70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FE
        AF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70
        FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF
        70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FE
        AF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70
        FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF
        70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FE
        B479FEC699FED9BCFEEDE0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEF7F1FEE4D1FED5B5FEC091FEAE71FEAB6CFEAB6CFEAB6CFEAB6C
        FEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB
        6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFE
        AB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6C
        FEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB
        6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFE
        AB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6C
        FEAB6CFEC091FED3B1FEE2CCFEF4EDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEF4ECFEE9D9FED5B8FECEABFEBD8EFEAD72FEA768FEA768FEA768FE
        A768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768
        FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA7
        68FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FE
        A768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768
        FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEAA
        6DFEBD8EFEC8A1FED3B3FEE9D9FEF1E7FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEEEE2FEE8D8FEE2CEFED1B1FED1B1FEC195FEBB8BFEB2
        7CFEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FE
        A464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464
        FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA4
        64FEA464FEA464FEA464FEA464FEA464FEA464FEB078FEBB8BFEBB8BFED1B1FE
        D1B1FEDFC9FEE8D8FEEBDDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEE9DDFEE7D7FEDBC3
        FECFAFFECFAFFECFAFFECFAFFECFAFFECFAFFECAA6FEB888FEB888FEB888FEB8
        88FEB888FEB888FEB888FEB888FEB888FEB888FEB888FEB888FEB888FEB888FE
        CAA6FECFAFFECFAFFECFAFFECFAFFECFAFFECFAFFEDBC3FEE7D7FEE7D7FEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFE}
      Proportional = True
      Stretch = True
      Transparent = True
      OnClick = Far6Click
    end
    object En8: TImage
      Left = 44
      Top = 290
      Width = 119
      Height = 39
      Cursor = crHandPoint
      Picture.Data = {
        07544269746D617036510000424D365100000000000036000000280000009000
        0000300000000100180000000000005100000000000000000000000000000000
        0000FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF5
        F1FEE7D7FEE7D7FED2B4FECFAFFEC49CFEB888FEB888FEB888FEB888FEB888FE
        B888FEB27EFEA060FEA060FEA060FEA060FEA060FEA060FEA060FEA060FEA060
        FEA060FEA060FEA060FEA060FEA060FEB27EFEB888FEB888FEB888FEB888FEB8
        88FEB888FEC49CFECFAFFECFAFFEE7D7FEE7D7FEF3EBFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEEEE2FEE8D8FED7BBFED1B1FE
        CCA8FEBB8BFEBB8BFEAA6EFEA464FEA464FEA464FEA464FEA464FEA464FEA464
        FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA4
        64FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FE
        A464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464
        FEA464FEA464FEA464FEA464FEBB8BFEBB8BFEC9A3FED1B1FED4B6FEE8D8FEEB
        DDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEECDEFEDDC6FED3B3FEC093FEB885
        FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA7
        68FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FE
        A768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768
        FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA7
        68FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FE
        A768FEA768FEA768FEA768FEA768FEA768FEA768FEB27BFEBD8EFED3B3FEDBC1
        FEE9D9FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEECDFFEDCC3FECEA8FEBE8CFEAB
        6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFE
        AB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6C
        FEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB
        6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFE
        AB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6C
        FEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB
        6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEBB88FECBA4FEDABEFE
        EADAFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEEBDBFED7B7FEC394FE
        AF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70
        FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF
        70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FE
        AF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70
        FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF
        70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FE
        AF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70
        FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEC190FED5B4FEE8D7FEFC
        FBFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF3E9FEDEC2
        FEC697FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB3
        74FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374
        FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB3
        74FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374
        FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB3
        74FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEC493FED9B9FEF1E5FEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEEFE1FED7B4FEC28DFEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEC089FED5AFFEEAD9FEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEF4EBFEDBBAFEC48DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7D
        FEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB
        7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFE
        BB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7D
        FEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB
        7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFE
        BB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7D
        FEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB
        7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFE
        BB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7DFEBB7D
        FEBB7DFEC189FED7B2FEF2E6FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFBF7FEE4CBFECA99FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEC895FE
        E0C3FEFBF7FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF9F4FEDFC0FE
        C68FFEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287
        FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC2
        87FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FE
        C287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287
        FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC2
        87FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FE
        C287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287
        FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC2
        87FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FE
        C287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287FEC287
        FEC287FEC287FEC287FEC287FEC287FEC287FEC48BFEDBB8FEF7F0FEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEF9F4FDDBB9FBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC5
        8FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFB
        C58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58F
        FBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC5
        8FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFB
        C58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58F
        FBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC5
        8FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFB
        C58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58F
        FBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58FFBC5
        8FFBC58FFBC58FFBC58FFBC58FFBC58FFBC58F000000000000000000FBC58FFB
        C58FFBC58FFBC58FFBC58FFCD8B6FEF6EDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFCF8FCE2C8F8CA98F9C896F9C896F9C896F9
        C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896
        F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C8
        96F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9
        C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896
        F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C8
        96F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9
        C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896
        F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C8
        96F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9
        C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896F9C896
        000000000000000000F9C896000000F9C896F9C896F9C896F9C896F9C896F9C8
        96FBDEC1FEFAF5FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFCEBDAF8CFA6
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E000000000000000000F7CA9E000000F7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF8CCA3FBE6D1FEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFAF7F6DAC0F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7000000F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F6D8BAFDF7F1FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFBF2E9F2D3B5F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B000
        0000F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F0D1B2
        F8E9DBFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF9EE
        E4F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B800000000
        0000000000000000000000000000000000F0D3B8F0D3B8F0D3B8000000000000
        000000000000000000000000000000F0D3B8F0D3B8F0D3B8F0D3B8F0D3B80000
        00000000000000000000F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0
        D3B8F0D3B8000000F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8000000F0D3B8F0D3B8
        F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3
        B8F0D3B8000000000000000000000000F0D3B8F0D3B8F0D3B8F0D3B8F0D3B800
        0000000000000000000000F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8
        F0D3B8F0D3B8F0D3B8F0D3B80000000000000000000000000000000000000000
        00000000000000000000000000F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0
        D3B8000000000000000000F0D3B8F0D3B8000000000000000000000000F0D3B8
        F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8000000000000F0D3B8F0D3B8F0D3B8F0D3
        B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F0D3B8F7E9DBFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEF7EBE1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1
        EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1000000000000000000EFD6C1EFD6
        C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1000000000000000000EFD6C1EFD6C1EF
        D6C1EFD6C1EFD6C1000000000000000000EFD6C1EFD6C1000000000000000000
        EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1000000000000000000EFD6C1EFD6
        C1EFD6C1000000000000000000EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EF
        D6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1000000000000000000000000000000
        EFD6C1EFD6C1EFD6C1000000000000000000EFD6C1EFD6C10000000000000000
        00EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EF
        D6C1000000000000000000EFD6C1EFD6C1EFD6C1EFD6C1000000000000000000
        000000EFD6C1EFD6C1EFD6C1EFD6C1000000000000000000000000000000EFD6
        C1000000000000000000EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C100
        0000000000EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1EFD6C1
        EFD6C1EFD6C1F4E5D9FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF9F3EEEED9CAEED9
        CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEE
        D9CA000000000000000000EED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CA
        000000000000000000EED9CAEED9CAEED9CAEED9CAEED9CA000000000000EED9
        CAEED9CAEED9CAEED9CA000000000000EED9CAEED9CAEED9CAEED9CAEED9CAEE
        D9CA000000000000000000EED9CAEED9CAEED9CA000000000000000000EED9CA
        EED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9
        CA000000000000000000EED9CAEED9CA000000EED9CAEED9CA000000000000EE
        D9CAEED9CAEED9CAEED9CA000000000000EED9CAEED9CAEED9CAEED9CAEED9CA
        EED9CAEED9CAEED9CAEED9CAEED9CAEED9CA000000000000000000EED9CAEED9
        CAEED9CAEED9CAEED9CA000000000000000000EED9CAEED9CAEED9CAEED9CA00
        0000000000000000EED9CAEED9CA000000000000000000000000EED9CAEED9CA
        EED9CAEED9CAEED9CAEED9CA000000000000000000000000EED9CAEED9CAEED9
        CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAEED9CAF7EEE7FEFEFEFE
        FEFEFEFEFEFCF9F8F0DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2000000000000000000EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2000000000000000000EFDBD2EFDBD2EF
        DBD2EFDBD2000000000000000000EFDBD2EFDBD2EFDBD2EFDBD2000000000000
        000000EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2000000000000000000EFDBD2EFDB
        D2EFDBD2000000000000000000EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2000000000000000000EFDBD2EFDBD2
        EFDBD2EFDBD2000000000000000000EFDBD2EFDBD2EFDBD2EFDBD20000000000
        00000000EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2000000000000000000EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2000000
        000000000000EFDBD2EFDBD2EFDBD2000000000000000000EFDBD2EFDBD2EFDB
        D2000000000000000000EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD200000000
        0000000000000000EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2FBF6F4FEFEFEFEFEFEF5E8E6F1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1
        DEDA000000000000000000F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        000000000000000000F1DEDAF1DEDAF1DEDAF1DEDA000000000000000000F1DE
        DAF1DEDAF1DEDAF1DEDA000000000000000000F1DEDAF1DEDAF1DEDAF1DEDA00
        0000000000000000000000F1DEDAF1DEDA000000000000000000F1DEDA000000
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DE
        DA000000000000000000F1DEDAF1DEDAF1DEDAF1DEDA000000000000000000F1
        DEDAF1DEDAF1DEDAF1DEDA000000000000000000F1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA000000000000000000F1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDA000000000000000000F1DEDAF1DEDAF1DEDA00
        0000000000000000F1DEDAF1DEDAF1DEDA000000000000000000F1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDA000000000000000000000000000000F1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF4E3E1FE
        FEFEFDF9F9F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2000000000000000000F3E1E2F3E1
        E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2000000000000000000F3E1E2F3E1E2F3
        E1E2F3E1E2000000000000000000F3E1E2F3E1E2F3E1E2F3E1E2000000000000
        000000F3E1E2F3E1E2F3E1E2F3E1E2000000000000000000F3E1E2000000F3E1
        E2000000000000000000F3E1E2000000F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3
        E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2000000000000000000F3E1E2F3E1E2
        F3E1E2F3E1E2000000000000000000F3E1E2F3E1E2F3E1E2F3E1E20000000000
        00000000F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3
        E1E2000000000000000000F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2000000
        000000000000F3E1E2F3E1E2F3E1E2000000000000000000F3E1E2F3E1E2F3E1
        E2000000000000000000F3E1E2F3E1E2F3E1E2F3E1E2F3E1E200000000000000
        0000F3E1E2F3E1E2000000F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2FBF5F6FAF1F4F5E4EAF5E4EAF5E4EAF5E4
        EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5
        E4EA000000000000000000F5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EA
        000000000000000000F5E4EAF5E4EAF5E4EAF5E4EA000000000000000000F5E4
        EAF5E4EAF5E4EAF5E4EA000000000000000000F5E4EAF5E4EAF5E4EAF5E4EA00
        0000000000000000F5E4EA000000F5E4EA000000000000000000F5E4EA000000
        F5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4
        EA000000000000000000F5E4EAF5E4EAF5E4EAF5E4EA000000000000000000F5
        E4EAF5E4EAF5E4EAF5E4EA000000000000000000F5E4EAF5E4EAF5E4EAF5E4EA
        F5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EA000000000000000000F5E4EAF5E4
        EAF5E4EAF5E4EAF5E4EA000000000000000000000000F5E4EAF5E4EAF5E4EA00
        0000000000000000F5E4EAF5E4EAF5E4EA000000000000000000F5E4EAF5E4EA
        F5E4EAF5E4EA000000000000000000000000F5E4EAF5E4EA000000F5E4EAF5E4
        EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF5E4EAF8
        EEF2FAEEF6F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3
        F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3000000000000000000F7E7F3F7E7
        F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3000000000000000000F7E7F3F7E7F3F7
        E7F3F7E7F3000000000000000000F7E7F3F7E7F3F7E7F3F7E7F3000000000000
        000000F7E7F3F7E7F3F7E7F3000000000000000000F7E7F3F7E7F30000000000
        00000000000000F7E7F3F7E7F3F7E7F3000000F7E7F3F7E7F3F7E7F3F7E7F3F7
        E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3000000000000000000F7E7F3F7E7F3
        F7E7F3F7E7F3000000000000000000F7E7F3F7E7F3F7E7F3F7E7F30000000000
        00000000F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7
        E7F3000000000000000000F7E7F3F7E7F3F7E7F3F7E7F3000000000000000000
        000000F7E7F3F7E7F3F7E7F3F7E7F3000000000000000000F7E7F3F7E7F3F7E7
        F3000000000000000000F7E7F3F7E7F3F7E7F3F7E7F3000000000000000000F7
        E7F3F7E7F3F7E7F3F7E7F3000000F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3
        F7E7F3F7E7F3F7E7F3F7E7F3F7E7F3F7EBF5FAECFAF9EAFBF9EAFBF9EAFBF9EA
        FBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9
        EAFB000000000000000000000000000000000000000000000000000000000000
        000000000000000000F9EAFBF9EAFBF9EAFBF9EAFBF9EAFB000000000000F9EA
        FBF9EAFBF9EAFBF9EAFB000000000000F9EAFBF9EAFBF9EAFBF9EAFB00000000
        0000000000F9EAFBF9EAFBF9EAFB000000000000000000F9EAFBF9EAFBF9EAFB
        000000F9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EA
        FB000000000000000000F9EAFBF9EAFBF9EAFBF9EAFBF9EAFB000000000000F9
        EAFBF9EAFBF9EAFBF9EAFB000000000000F9EAFBF9EAFBF9EAFBF9EAFBF9EAFB
        F9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFB0000000000000000000000000000
        00000000000000000000000000F9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFB00
        0000000000000000F9EAFBF9EAFBF9EAFB000000000000000000F9EAFBF9EAFB
        F9EAFB000000000000000000000000F9EAFBF9EAFBF9EAFBF9EAFB000000F9EA
        FBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9EAFBF9
        EAFBFAECFCF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FB
        F9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FB000000000000000000F9E9FBF9E9
        FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FB000000000000000000F9E9FBF9E9FBF9
        E9FBF9E9FBF9E9FB000000000000000000F9E9FBF9E9FB000000000000000000
        F9E9FBF9E9FBF9E9FB000000000000000000F9E9FBF9E9FBF9E9FBF9E9FB0000
        00000000000000F9E9FBF9E9FBF9E9FBF9E9FB000000F9E9FBF9E9FBF9E9FBF9
        E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FB000000000000000000F9E9FBF9E9FB
        F9E9FBF9E9FBF9E9FB000000000000000000F9E9FBF9E9FB0000000000000000
        00F9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF9
        E9FB000000000000000000F9E9FBF9E9FBF9E9FBF9E9FB000000000000000000
        F9E9FBF9E9FBF9E9FBF9E9FBF9E9FB000000000000000000F9E9FBF9E9FBF9E9
        FB000000000000000000F9E9FBF9E9FBF9E9FB000000000000000000F9E9FBF9
        E9FBF9E9FBF9E9FBF9E9FB000000000000F9E9FBF9E9FBF9E9FBF9E9FBF9E9FB
        F9E9FBF9E9FBF9E9FBF9E9FBF9E9FBF8EAFAFAEEF5F7E6F2F7E6F2F7E6F2F7E6
        F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7
        E6F2000000000000000000F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2
        000000000000000000F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F20000
        00000000000000000000F7E6F2F7E6F2F7E6F2F7E6F200000000000000000000
        0000000000F7E6F2000000000000000000000000000000000000F7E6F2000000
        000000000000000000F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F20000
        00000000000000000000000000000000F7E6F2F7E6F2F7E6F2F7E6F2F7E6F200
        0000000000000000000000F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2
        F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2000000000000000000F7E6F2F7E6
        F2F7E6F2F7E6F2F7E6F2000000000000000000F7E6F2F7E6F2F7E6F200000000
        0000000000000000F7E6F2F7E6F2000000000000000000000000F7E6F2F7E6F2
        000000000000000000000000000000F7E6F2F7E6F2F7E6F20000000000000000
        00000000F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F7E6F2F9
        EBF4FBF1F5F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA
        F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA000000000000000000F5E3EAF5E3
        EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA000000000000000000F5E3EAF5E3EAF5
        E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA
        F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3
        EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5
        E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA000000000000000000F5E3EAF5E3EA
        F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3
        EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5
        E3EA000000000000000000F5E3EAF5E3EAF5E3EAF5E3EAF5E3EA000000000000
        000000F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3
        EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5
        E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EAF5E3EA
        F5E3EAF5E3EAF5E3EAF5E3EAF5E3EAFAF0F4FEFCFCF2E2E3F3E1E2F3E1E2F3E1
        E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3
        E1E2000000000000000000F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        000000000000000000F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1
        E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3
        E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1
        E2F3E1E2000000000000F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3
        E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2000000000000000000F3E1E2F3E1
        E2F3E1E2F3E1E2F3E1E2000000000000000000F3E1E2F3E1E2F3E1E2F3E1E2F3
        E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2
        F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1
        E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2F3E1E2FD
        F9F9FEFEFEF8ECEBF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA000000000000000000F1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA000000000000000000F1DEDAF1DEDAF1
        DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1
        DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA000000F1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1
        DEDA000000000000000000F1DEDAF1DEDAF1DEDAF1DEDAF1DEDA000000000000
        000000F1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DE
        DAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1
        DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDAF1DEDA
        F1DEDAF1DEDAF1DEDAF1DEDAF5E8E6FEFEFEFEFEFEFEFEFEF2E1D8EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2000000000000000000EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        000000000000000000EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDB
        D2EFDBD2EFDBD2000000EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2000000000000000000EFDBD2EFDB
        D2EFDBD2EFDBD2000000000000000000EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EF
        DBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2
        EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDB
        D2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2EFDBD2F1DDD5FDFCFBFE
        FEFEFEFEFEFEFEFEFDFAF8EEDACCEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA
        EED8CAEED8CAEED8CAEED8CA0000000000000000000000000000000000000000
        00EED8CAEED8CAEED8CA000000000000000000000000000000000000000000EE
        D8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA
        EED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8
        CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEE
        D8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA
        EED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8
        CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA00000000
        0000000000000000000000000000000000000000000000000000000000EED8CA
        EED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8
        CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEE
        D8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CAEED8CA
        EED8CAEED8CAEFD8CCFBF6F3FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFCF7F3F0D8
        C5EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EF
        D5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1
        EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5
        C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EF
        D5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1
        EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5
        C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EF
        D5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1
        EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5
        C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EF
        D5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1
        EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5
        C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1EFD5C1F0D6C3FAF3EDFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFDF9F6F2D8C1F0D2B8F0D2B8F0D2B8F0D2B8
        F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2
        B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0
        D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8
        F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2
        B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0
        D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8
        F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2
        B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0
        D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8
        F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2
        B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0
        D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8F0D2B8
        F1D5BDFBF4EDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFBF8F5DEC7F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1
        D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0
        F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0B0F1D0
        B0F1D0B0F1D0B0F1D0B0F1D0B0F4D9BFFDF8F3FEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFBE9D8F4CFAAF4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7
        F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CD
        A7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4
        CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7F4CDA7FAE5D1FEFDFC
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEF7F0FAD9BAF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7
        CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9E
        F7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA9EF7CA
        9EF7CA9EF9D6B3FDF3E9FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FDEFE1FAD2AAF9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C7
        96F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9
        C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796
        F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C7
        96F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9
        C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796
        F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C7
        96F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9
        C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796
        F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C7
        96F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9C796F9
        C796F9C796F9C796F9C796F9C796FACEA3FDEBDBFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEE9D4FDCFA3FCC48EFC
        C48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48E
        FCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC4
        8EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFC
        C48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48E
        FCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC4
        8EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFC
        C48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48E
        FCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC4
        8EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFC
        C48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48E
        FCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFCC48EFDCC9CFDE7D1FEFD
        FBFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEEFE1FED5ADFEC187FEC187FEC187FEC187FEC1
        87FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FE
        C187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187
        FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC1
        87FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FE
        C187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187
        FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC1
        87FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FE
        C187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187
        FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC1
        87FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FEC187FE
        C187FED1A5FEEBD9FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEF7EFFEE0C3FEC895FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE
        81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FE
        BE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81FEBE81
        FEBE81FEBE81FEBE81FEC48DFEDBB9FEF5EBFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF2E6FED6
        B2FEC188FEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFE
        BA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7C
        FEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA
        7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFE
        BA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7C
        FEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA
        7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFE
        BA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7C
        FEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA
        7CFEBA7CFEBA7CFEBA7CFEBA7CFEBA7CFEBE84FED4AEFEEBDAFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF1E6FED9B8FEC28DFEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778
        FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB7
        78FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FE
        B778FEB778FEB778FEB778FEB778FEB778FEB778FEB778FEC089FED5AFFEEAD9
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEF5EEFEDEC2FECBA0FEB87DFEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374
        FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB3
        74FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374
        FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB3
        74FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FE
        B374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374
        FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB374FEB578FEC9
        9BFEDBBDFEF1E5FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEF0E5FEDBC1FEC89DFEB77EFEAF70FEAF70FEAF70FEAF
        70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FE
        AF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70
        FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF
        70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FE
        AF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70
        FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF
        70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FEAF70FE
        B479FEC699FED9BCFEEDE0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEF7F1FEE4D1FED5B5FEC091FEAE71FEAB6CFEAB6CFEAB6CFEAB6C
        FEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB
        6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFE
        AB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6C
        FEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB
        6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFE
        AB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6CFEAB6C
        FEAB6CFEC091FED3B1FEE2CCFEF4EDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEF4ECFEE9D9FED5B8FECEABFEBD8EFEAD72FEA768FEA768FEA768FE
        A768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768
        FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA7
        68FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FE
        A768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768
        FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEA768FEAA
        6DFEBD8EFEC8A1FED3B3FEE9D9FEF1E7FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEEEE2FEE8D8FEE2CEFED1B1FED1B1FEC195FEBB8BFEB2
        7CFEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FE
        A464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464
        FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA464FEA4
        64FEA464FEA464FEA464FEA464FEA464FEA464FEB078FEBB8BFEBB8BFED1B1FE
        D1B1FEDFC9FEE8D8FEEBDDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEE9DDFEE7D7FEDBC3
        FECFAFFECFAFFECFAFFECFAFFECFAFFECFAFFECAA6FEB888FEB888FEB888FEB8
        88FEB888FEB888FEB888FEB888FEB888FEB888FEB888FEB888FEB888FEB888FE
        CAA6FECFAFFECFAFFECFAFFECFAFFECFAFFECFAFFEDBC3FEE7D7FEE7D7FEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFE}
      Proportional = True
      Stretch = True
      Transparent = True
      OnClick = Far7Click
    end
    object Label3: TLabel
      Left = 230
      Top = 236
      Width = 4
      Height = 16
      BiDiMode = bdLeftToRight
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label1: TLabel
      Left = 277
      Top = 236
      Width = 4
      Height = 16
      BiDiMode = bdLeftToRight
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 326
      Top = 236
      Width = 4
      Height = 16
      BiDiMode = bdLeftToRight
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 230
      Top = 264
      Width = 4
      Height = 16
      BiDiMode = bdLeftToRight
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label6: TLabel
      Left = 277
      Top = 264
      Width = 4
      Height = 16
      BiDiMode = bdLeftToRight
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label7: TLabel
      Left = 326
      Top = 264
      Width = 4
      Height = 16
      BiDiMode = bdLeftToRight
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object EnglishBtnBorderImage: TImage
      Left = 12
      Top = 14
      Width = 83
      Height = 30
      Stretch = True
    end
    object Label8: TLabel
      Left = 211
      Top = 13
      Width = 130
      Height = 15
      Caption = 'LED Font Generator 2.0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EnglishRegLangBtn: TTntBitBtn
      Left = 16
      Top = 16
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Hint = 'International English'
      BiDiMode = bdLeftToRight
      Caption = 'English'
      ParentBiDiMode = False
      TabOrder = 4
      OnClick = EnglishRegLangBtnClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00DE398400CE526300C65A4200CE52
        5200D6317B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00D6297B00A539080094390800844210009C310000A539
        0800B54A2100C65A4200CE218400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00CE2173009C310000A5390000AD4200000863000094420000A539
        00009C3100009C390800B5523100C6218C00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00AD420000B5520000C65A0000C663000000730000086B0000BD52
        0000B54A0000A5390000845A29009C634A00FF00FF00FF00FF00FF00FF00FF00
        FF00FF739C00D67B2100CE630000CE6B00006B7B000000840000297B0000BD6B
        0000CE630000BD520000396310006B633100B5297B00FF00FF00FF00FF00FF00
        FF00D6522900FFC67300DE730000B5840000948C000073940000EF840000E77B
        00007373000000730000006300003163180094423900FF00FF00FF00FF00FF00
        FF00CE630800FFCE8400B5BD6300739C1000A59C0800FF9C0000FF9C0000F78C
        0000CE840000007B0000216B00004A5A0000735A1000FF00FF00FF00FF00FF00
        FF00CE7339009C9C1800FFDEA5004AC65A0052C65200E7C65200FFB53900FF9C
        0800F78C00003984000039730000006B00007B524200FF00FF00FF00FF00FF00
        FF00DE5273004AAD29007BD67B00FFE7C60073DE840052D67300FFE78C00FFB5
        3900FF940000638C0000427B0000006B0000B5397B00FF00FF00FF00FF00FF00
        FF00FF00FF0021BD4A0039CE6B00A5E7A500FFF7DE00EFFFE700CEEFAD00FFC6
        5A00A5A51000EF840000298400005A842100FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0084C67300A5B53900ADDE8C00DEFFCE00FFFFFF00ADEFB50029C6
        5A00D69C0800EF840000C68C1000BDBD7300FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00B5CE9400BDC65A00B5E78C00BDDE8C00C6E7BD00B5D6
        9400BD940800F79C2100BDBD7300FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00BDE7A500CED6AD00C6B56300F7AD
        9C00BDBD7300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object FarsiRegLangBtn: TTntBitBtn
      Left = 465
      Top = 16
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Hint = 'Farsi'
      BiDiMode = bdLeftToRight
      Caption = 'Farsi'
      ParentBiDiMode = False
      TabOrder = 5
      Visible = False
      OnClick = FarsiRegLangBtnClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
        F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9
        F9F9F9F9F9F9F9F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFF9F9FFFFFFFFFFFFFFFFFFFFFFFFF9F9FFFFF9F9FFFFFFFFFFFFFFFFFFFFF9
        F9FFFFF9F9FFFFFFFFFFFFFFFFFFFFF9F9FFFFF9F9FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF02020202020202020202020202020202020202020202
        0202020202020202020202020202020202020202020202020202020202020202
        0202020202020202020202020202020202020202020202020202}
    end
    object CUIDWord1: TEdit
      Left = 189
      Top = 234
      Width = 39
      Height = 19
      BiDiMode = bdLeftToRight
      Color = clCream
      MaxLength = 4
      ParentBiDiMode = False
      PopupMenu = GeneralEditPopupMenu
      ReadOnly = True
      TabOrder = 6
      Text = 'FFFF'
    end
    object CUIDWord2: TEdit
      Left = 237
      Top = 234
      Width = 39
      Height = 19
      BiDiMode = bdLeftToRight
      Color = clCream
      MaxLength = 4
      ParentBiDiMode = False
      PopupMenu = GeneralEditPopupMenu
      ReadOnly = True
      TabOrder = 7
      Text = 'FFFF'
    end
    object CUIDWord3: TEdit
      Left = 285
      Top = 234
      Width = 39
      Height = 19
      BiDiMode = bdLeftToRight
      Color = clCream
      MaxLength = 4
      ParentBiDiMode = False
      PopupMenu = GeneralEditPopupMenu
      ReadOnly = True
      TabOrder = 8
      Text = 'FFFF'
    end
    object CUIDWord4: TEdit
      Left = 333
      Top = 234
      Width = 39
      Height = 19
      BiDiMode = bdLeftToRight
      Color = clCream
      MaxLength = 4
      ParentBiDiMode = False
      PopupMenu = GeneralEditPopupMenu
      ReadOnly = True
      TabOrder = 9
      Text = 'FFFF'
    end
    object ACWord1: TEdit
      Left = 189
      Top = 262
      Width = 39
      Height = 19
      BiDiMode = bdLeftToRight
      MaxLength = 4
      ParentBiDiMode = False
      PopupMenu = GeneralEditPopupMenu
      TabOrder = 0
      OnEnter = ACWord1Enter
      OnKeyDown = ACWord1KeyDown
      OnKeyPress = ACWord1KeyPress
    end
    object ACWord2: TEdit
      Left = 237
      Top = 262
      Width = 39
      Height = 19
      BiDiMode = bdLeftToRight
      MaxLength = 4
      ParentBiDiMode = False
      PopupMenu = GeneralEditPopupMenu
      TabOrder = 1
      OnEnter = ACWord1Enter
      OnKeyDown = ACWord1KeyDown
      OnKeyPress = ACWord1KeyPress
    end
    object ACWord3: TEdit
      Left = 285
      Top = 262
      Width = 39
      Height = 19
      BiDiMode = bdLeftToRight
      MaxLength = 4
      ParentBiDiMode = False
      PopupMenu = GeneralEditPopupMenu
      TabOrder = 2
      OnEnter = ACWord1Enter
      OnKeyDown = ACWord1KeyDown
      OnKeyPress = ACWord1KeyPress
    end
    object ACWord4: TEdit
      Left = 333
      Top = 262
      Width = 39
      Height = 19
      BiDiMode = bdLeftToRight
      MaxLength = 4
      ParentBiDiMode = False
      PopupMenu = GeneralEditPopupMenu
      TabOrder = 3
      OnEnter = ACWord1Enter
      OnKeyDown = ACWord1KeyDown
      OnKeyPress = ACWord1KeyPress
    end
  end
  object TextToLCDPanel: TTntPanel
    Left = 108
    Top = 284
    Width = 575
    Height = 173
    BiDiMode = bdLeftToRight
    DragKind = dkDock
    ParentBiDiMode = False
    TabOrder = 1
    DesignSize = (
      575
      173)
    object TextLabel: TTntLabel
      Left = 4
      Top = 11
      Width = 32
      Height = 13
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = 'Te&xt:'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object InputTextLTRBtn: TTntSpeedButton
      Left = 326
      Top = 7
      Width = 23
      Height = 22
      Hint = 'Left-to-Right'
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      GroupIndex = 1
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FF0000
        00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF000000FF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FF0000
        00FF00FFFF00FFFF00FFFF00FFFF00FF904820FF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF000000FF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FF
        A05030904820FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FF0000
        00FF00FFFF00FFFF00FFFF00FFFF00FFB06840C07040904830FF00FFFF00FFFF
        00FFFF00FF000000000000FF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FF
        D07850F09860D08860D07040FF00FFFF00FF000000000000000000FF00FF0000
        00FF00FFFF00FFFF00FFFF00FFFF00FFD08860F0B080E08050FF00FFFF00FFFF
        00FF000000000000000000FF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FF
        E08050E08860FF00FFFF00FFFF00FFFF00FF000000000000000000FF00FF0000
        00FF00FFFF00FFFF00FFFF00FFFF00FFE09070FF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF000000000000000000000000FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ParentBiDiMode = False
      ShowHint = True
      OnClick = InputTextLTRBtnClick
    end
    object InputTextRTLBtn: TTntSpeedButton
      Left = 349
      Top = 7
      Width = 23
      Height = 22
      Hint = 'Right-to-Left'
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      GroupIndex = 1
      Down = True
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FF000000FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF000000FF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FF000000FF
        00FFFF00FFFF00FFFF00FFFF00FF904820FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF000000FF00FF000000FF00FFFF00FFFF00FFFF00FF904820A050
        30FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FF000000FF
        00FFFF00FFFF00FF904830C07040B06840FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF000000000000FF00FF000000FF00FFFF00FFD07040D08860F09860D078
        50FF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000FF00FF000000FF
        00FFFF00FFFF00FFE08050F0B080D08860FF00FFFF00FFFF00FFFF00FFFF00FF
        000000000000000000FF00FF000000FF00FFFF00FFFF00FFFF00FFE08860E080
        50FF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000FF00FF000000FF
        00FFFF00FFFF00FFFF00FFFF00FFE09070FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF000000000000000000000000FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ParentBiDiMode = False
      ShowHint = True
      OnClick = InputTextRTLBtnClick
    end
    object Bevel1: TBevel
      Left = 322
      Top = 8
      Width = 2
      Height = 19
      Anchors = [akTop, akRight]
      Shape = bsLeftLine
    end
    object InsertTextAsLCDBtn: TTntBitBtn
      Left = 382
      Top = 4
      Width = 95
      Height = 25
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = '&Insert As Design'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      OnClick = InsertTextAsLCDBtnClick
    end
    object CharacterSourceGroup: TTntGroupBox
      Left = 4
      Top = 30
      Width = 370
      Height = 140
      Anchors = [akLeft, akTop, akRight, akBottom]
      BiDiMode = bdLeftToRight
      Caption = 'Character Source'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 3
      DesignSize = (
        370
        140)
      object TntSpeedButton1: TTntSpeedButton
        Left = 332
        Top = 16
        Width = 23
        Height = 22
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Visible = False
      end
      object CategoryCheckTreeView: TMMFolderTreeView
        Left = 3
        Top = 36
        Width = 362
        Height = 100
        Anchors = [akLeft, akTop, akRight, akBottom]
        BiDiMode = bdLeftToRight
        HotTrack = True
        Indent = 19
        ParentBiDiMode = False
        ReadOnly = True
        StateImages = TreeViewStatesImageList
        TabOrder = 4
        OnClick = CategoryCheckTreeViewClick
        OnKeyDown = CategoryCheckTreeViewKeyDown
        AllowToCancelRefresh = True
        CancelDelay = 2000
      end
      object SystemFontsSection: TTntPageControl
        Left = 3
        Top = 35
        Width = 363
        Height = 101
        ActivePage = FavoriteFontsTabSheet
        Anchors = [akLeft, akTop, akRight, akBottom]
        BiDiMode = bdLeftToRight
        HotTrack = True
        MultiLine = True
        ParentBiDiMode = False
        TabOrder = 3
        object FavoriteFontsTabSheet: TTntTabSheet
          Caption = 'Favorite Fonts'
          OnShow = FavoriteFontsTabSheetShow
          object SampleGroup1: TTntGroupBox
            Left = 79
            Top = 31
            Width = 276
            Height = 42
            Align = alClient
            BiDiMode = bdLeftToRight
            Caption = 'Sample'
            ParentBiDiMode = False
            TabOrder = 3
            object FavoriteFontSamplePanel: TTntPanel
              Left = 2
              Top = 15
              Width = 272
              Height = 25
              Align = alClient
              BevelInner = bvLowered
              BevelOuter = bvNone
              BiDiMode = bdLeftToRight
              ParentBiDiMode = False
              ParentBackground = True
              TabOrder = 0
            end
          end
          object Panel3: TTntPanel
            Left = 0
            Top = 0
            Width = 355
            Height = 31
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object FontLabel1: TTntLabel
              Left = 8
              Top = 7
              Width = 26
              Height = 13
              BiDiMode = bdLeftToRight
              Caption = '&Font:'
              FocusControl = FavoriteFontsCombo
              ParentBiDiMode = False
            end
            object Bold1: TTntSpeedButton
              Left = 171
              Top = 5
              Width = 23
              Height = 22
              AllowAllUp = True
              BiDiMode = bdLeftToRight
              GroupIndex = 1
              Flat = True
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FF0504050504050504050504050504050504051413149B9B9BFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC7C7C7050405050405050405FF
                00FFB9B9B90504050000009B9B9BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FF050405050405050405FF00FFFF00FF0504050000001D1D1DFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF050405050405050405FF
                00FFB9B9B90504050000009B9B9BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FF0504050504050504050504050504050605065E5E5EFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF050405050405050405FF
                00FFB9B9B90504050000009B9B9BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FF050405050405050405FF00FFFF00FF0504050000001D1D1DFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCDCDCD050405050405050405FF
                00FFB9B9B90504050000009B9B9BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FF0504050504050504050504050504050504051413149B9B9BFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
              ParentBiDiMode = False
              OnClick = Bold1Click
            end
            object Italic1: TTntSpeedButton
              Left = 194
              Top = 5
              Width = 23
              Height = 22
              AllowAllUp = True
              BiDiMode = bdLeftToRight
              GroupIndex = 2
              Flat = True
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FF000000000000000000000000000000000000FF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDEDEDE000000000000D6
                D6D6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFB0AFB0000000989898FF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000
                0000FCFCFCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFADACAD000000A1A1A1FF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
                0000000000FCFCFCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFADACAD000000ADACADFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE0
                E0E0000000000000DEDEDEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000000000000000FF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
              ParentBiDiMode = False
              OnClick = Bold1Click
            end
            object Underlined1: TTntSpeedButton
              Left = 217
              Top = 5
              Width = 23
              Height = 22
              AllowAllUp = True
              BiDiMode = bdLeftToRight
              GroupIndex = 3
              Flat = True
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF000000000000000000000000000000000000000000000000000000
                00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
                0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00000000000000000080808000FF00FF00808080000000
                000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF000000
                000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF000000
                000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF000000
                000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF000000
                000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF000000
                000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF000000
                000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0000000000000000000000000000000000FF00FF00000000000000
                00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              ParentBiDiMode = False
              OnClick = Bold1Click
            end
            object RemoveFromFavoriteFontsBtn: TTntSpeedButton
              Left = 329
              Top = 5
              Width = 23
              Height = 22
              Hint = 'Remove from favorite fonts'
              BiDiMode = bdLeftToRight
              Enabled = False
              Flat = True
              Glyph.Data = {
                36060000424D3606000000000000360000002800000020000000100000000100
                18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
                7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFF00FFFF00FF
                FF00FFFF00FF75848F6C7A85606D77515D66313A41232A301720260E13180E13
                180E13180E13180E13187F7F7F7F7F7F7F7F7F7F7F7F8282827878786B6B6B5B
                5B5B3939392929291E1E1E131313131313131313131313131313FF00FFFF00FF
                FF00FFFF00FF778792A2DFF06ECCEA48B7E22DA9D926A1D25155722092CB1E83
                AE1B779F1F7296151C207F7F7F7F7F7F7F7F7F7F7F7F848484C9C9C9ACACAC95
                95958383837C7C7C6161617575756666665D5D5D5A5A5A1A1A1AFF00FFFF00FF
                FF00FFFF00FF7D8E98B0EAF6A8E6F791DCF57063766AC9F176313A61BFEC7B0C
                111D96DC157CA92D343B7F7F7F7F7F7F7F7F7F7F7F7F8A8A8AD3D3D3CFCFCFC3
                C3C36C6C6CADADAD535353A6A6A64343437C7C7C5F5F5F343434FF00FFFF00FF
                FF00FFFF00FF80919CB7EDF8ADEBFAA3E6F783D9F57C3C477B2C347C1E2460C4
                EF4BB5E91284B73B434B7F7F7F7F7F7F7F7F7F7F7F7F8E8E8ED7D7D7D3D3D3CD
                CDCDBCBCBC5C5C5C5353534D4D4DA7A7A79A9A9A64646443434397806F634935
                6349356349358898A1BEF0F9ABF0F78C727C844D5680373EF8F8F87C232A7233
                407326320C8ABF49535C8383834C4C4C4C4C4C4C4C4C949494DBDBDBD1D1D17F
                7F7F6868685B5B5BF8F8F84F4F4F5252524C4C4C6565655252529B8473F8E8DF
                F7E1D6F5DED28598A1BEF0F9B6EEF8B0EEFA96E7FB6B6AEF7F49547B3C467ED6
                F361C2ED0D90C857636B878787EBEBEBE6E6E6E3E3E3939393DBDBDBD7D7D7D5
                D5D5C8C8C8ACACAC6464645B5B5BB8B8B8A7A7A76A6A6A616161A18A7AFAEFE9
                BA9786B38D7A8598A1BEF0F9B6EEF8B6EEF83934EE241CED895F678EE3FB887D
                8987DAF46664EF3A35EE8D8D8DF1F1F1A0A0A0969696939393DBDBDBD7D7D7D7
                D7D7919191848484747474C4C4C4838383BDBDBDA9A9A9919191A79180FDF5F2
                FBEFEAF7E7DF8A9FA7BEF0F9BEF0F9ABBEBD5D5BD2332BE73C34E69CE8FB8DDF
                FA6F70D4241CED5451EF939393F7F7F7F2F2F2EBEBEB989898DBDBDBDBDBDBB4
                B4B49696968989898D8D8DCBCBCBC3C3C3A1A1A1848484A0A0A0AE9888FEFBF8
                CFB7ABC9AEA08EA2AB8EA2AB8EA2AB8DA1AB8B9FA83B33EB251DED879AA4819C
                A9241CED241CEDCDD3D79B9B9BFBFBFBBDBDBDB4B4B49C9C9C9C9C9C9C9C9C9C
                9C9C9999998F8F8F858585959595959595848484848484D2D2D2B49F8FFEFDFC
                FDFAF8FCF6F3A6B7BDB2E4ECB6EEF8A9ECF692E1F38DA1AA4941EE261EED261E
                ED241CEDFF00FFFF00FFA1A1A1FDFDFDFAFAFAF7F7F7B1B1B1CFCFCFD7D7D7CF
                CFCFC2C2C29B9B9B9797978585858585858484847F7F7F7F7F7FBCA697F8F8F7
                40BC4235B133EDF0F0A1B2B98FA4AC90A5AC97A9B0DEE7EBFF00FF271FED241C
                EDFF00FFFF00FFFF00FFA9A9A9F7F7F77E7E7E727272EEEEEEADADAD9D9D9D9E
                9E9EA3A3A3E4E4E47F7F7F8686868484847F7F7F7F7F7F7F7F7FC2AC9DFFFFFF
                52CE5D45C14BF8F7F4FDF9F6FBF0EAFBF2ED634935FF00FF322AED2E26ED6B64
                EB2C24ECFF00FFFF00FFAFAFAFFFFFFF909090838383F6F6F6F9F9F9F2F2F2F4
                F4F44C4C4C7F7F7F8B8B8B898989A7A7A78888887F7F7F7F7F7FC6B0A1FFFFFF
                65D56D55D160F4F4F2D3BEB2D3BEB2FDFBF9634935362EEB3129EDFF00FFFF00
                FF5E56E52921EAFF00FFB3B3B3FFFFFF9D9D9D939393F3F3F3C2C2C2C2C2C2FB
                FBFB4C4C4C8C8C8C8B8B8B7F7F7F7F7F7F9D9D9D8585857F7F7FC7B1A2FFFFFF
                FFFFFFFFFFFFFFFEFEFFFDFDFDFAF9FFFFFF362FEE372FEAFF00FFFF00FFFF00
                FFFF00FF823DC54E4BEEB4B4B4FFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFBFBFBFF
                FFFF8E8E8E8C8C8C7F7F7F7F7F7F7F7F7F7F7F7F8181819C9C9CC8B2A3C7B1A2
                C5AFA0C3AD9EBDA798B29C8CA58F7F9B84734C43E6FF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFB5B5B5B4B4B4B2B2B2B0B0B0AAAAAA9F9F9F92929287
                87879494947F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F}
              NumGlyphs = 2
              ParentShowHint = False
              ParentBiDiMode = False
              ShowHint = True
              OnClick = RemoveFromFavoriteFontsBtnClick
            end
            object Bevel10: TBevel
              Left = 325
              Top = 6
              Width = 2
              Height = 19
              Shape = bsLeftLine
            end
            object Bevel9: TBevel
              Left = 295
              Top = 6
              Width = 2
              Height = 19
              Shape = bsLeftLine
            end
            object FavoriteFontsCombo: TTntComboBox
              Left = 36
              Top = 5
              Width = 132
              Height = 21
              Style = csDropDownList
              BiDiMode = bdLeftToRight
              DropDownCount = 20
              ItemHeight = 13
              ParentBiDiMode = False
              Sorted = True
              TabOrder = 0
              OnChange = FavoriteFontsComboChange
            end
            object FontSizeCombo1: TTntComboBox
              Left = 243
              Top = 5
              Width = 49
              Height = 21
              BiDiMode = bdLeftToRight
              ItemHeight = 13
              ItemIndex = 0
              ParentBiDiMode = False
              PopupMenu = GeneralEditPopupMenu
              TabOrder = 1
              Text = '8'
              OnChange = Bold1Click
              OnKeyPress = FontSizeCombo1KeyPress
              Items.Strings = (
                '8'
                '9'
                '10'
                '11'
                '12'
                '14'
                '16'
                '18'
                '20'
                '22'
                '24'
                '26'
                '28'
                '36'
                '48'
                '72')
            end
          end
          object TntPanel1: TTntPanel
            Left = 75
            Top = 31
            Width = 4
            Height = 42
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
          end
          object FavHxWPanel: TTntPanel
            Left = 0
            Top = 31
            Width = 75
            Height = 42
            Hint = 'Height x Width'
            Align = alLeft
            BevelInner = bvLowered
            BiDiMode = bdLeftToRight
            BorderWidth = 2
            Caption = 'H x W'
            ParentBiDiMode = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
          end
        end
        object AllFontsTabSheet: TTntTabSheet
          Caption = 'All Fonts'
          OnShow = AllFontsTabSheetShow
          object SampleGroup2: TTntGroupBox
            Left = 79
            Top = 31
            Width = 276
            Height = 42
            Align = alClient
            BiDiMode = bdLeftToRight
            Caption = 'Sample'
            ParentBiDiMode = False
            TabOrder = 3
            object FontSamplePanel: TTntPanel
              Left = 2
              Top = 15
              Width = 272
              Height = 25
              Align = alClient
              BevelInner = bvLowered
              BevelOuter = bvNone
              BiDiMode = bdLeftToRight
              ParentBiDiMode = False
              ParentBackground = True
              TabOrder = 0
            end
          end
          object Panel7: TTntPanel
            Left = 0
            Top = 0
            Width = 355
            Height = 31
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object FontLabel2: TTntLabel
              Left = 8
              Top = 7
              Width = 26
              Height = 13
              BiDiMode = bdLeftToRight
              Caption = 'F&ont:'
              FocusControl = AllFontsCombo
              ParentBiDiMode = False
            end
            object Bold2: TTntSpeedButton
              Left = 171
              Top = 5
              Width = 23
              Height = 22
              AllowAllUp = True
              BiDiMode = bdLeftToRight
              GroupIndex = 1
              Flat = True
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FF0504050504050504050504050504050504051413149B9B9BFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC7C7C7050405050405050405FF
                00FFB9B9B90504050000009B9B9BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FF050405050405050405FF00FFFF00FF0504050000001D1D1DFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF050405050405050405FF
                00FFB9B9B90504050000009B9B9BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FF0504050504050504050504050504050605065E5E5EFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF050405050405050405FF
                00FFB9B9B90504050000009B9B9BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FF050405050405050405FF00FFFF00FF0504050000001D1D1DFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCDCDCD050405050405050405FF
                00FFB9B9B90504050000009B9B9BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FF0504050504050504050504050504050504051413149B9B9BFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
              ParentBiDiMode = False
              OnClick = Bold1Click
            end
            object Italic2: TTntSpeedButton
              Left = 194
              Top = 5
              Width = 23
              Height = 22
              AllowAllUp = True
              BiDiMode = bdLeftToRight
              GroupIndex = 2
              Flat = True
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FF000000000000000000000000000000000000FF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDEDEDE000000000000D6
                D6D6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFB0AFB0000000989898FF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000
                0000FCFCFCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFADACAD000000A1A1A1FF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
                0000000000FCFCFCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFADACAD000000ADACADFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE0
                E0E0000000000000DEDEDEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000000000000000FF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
              ParentBiDiMode = False
              OnClick = Bold1Click
            end
            object Underlined2: TTntSpeedButton
              Left = 217
              Top = 5
              Width = 23
              Height = 22
              AllowAllUp = True
              BiDiMode = bdLeftToRight
              GroupIndex = 3
              Flat = True
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF000000000000000000000000000000000000000000000000000000
                00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
                0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00000000000000000080808000FF00FF00808080000000
                000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF000000
                000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF000000
                000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF000000
                000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF000000
                000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF000000
                000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF000000
                000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0000000000000000000000000000000000FF00FF00000000000000
                00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              ParentBiDiMode = False
              OnClick = Bold1Click
            end
            object TntSpeedButton6: TTntSpeedButton
              Left = 299
              Top = 5
              Width = 23
              Height = 22
              BiDiMode = bdLeftToRight
              Flat = True
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
                DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD00DDD00DDD00DDDD00DDD00DDD
                00DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD}
              ParentBiDiMode = False
              OnClick = TntSpeedButton6Click
            end
            object AddToFavoriteFontsBtn: TTntSpeedButton
              Left = 329
              Top = 5
              Width = 23
              Height = 22
              Hint = 'Add to favorite fonts'
              BiDiMode = bdLeftToRight
              Flat = True
              Glyph.Data = {
                36060000424D3606000000000000360000002800000020000000100000000100
                18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
                7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFF00FFFF00FF
                FF00FFFF00FF75848F6C7A85606D77515D66313A41232A301720260E13180E13
                180E13180E13180E13187F7F7F7F7F7F7F7F7F7F7F7F8282827878786B6B6B5B
                5B5B3939392929291E1E1E131313131313131313131313131313FF00FFFF00FF
                FF00FFFF00FF778792A2DFF06ECCEA48B7E22DA9D926A1D25155722092CB1E83
                AE1B779F1F7296151C207F7F7F7F7F7F7F7F7F7F7F7F848484C9C9C9ACACAC95
                95958383837C7C7C6161617575756666665D5D5D5A5A5A1A1A1AFF00FFFF00FF
                FF00FFFF00FF7D8E98B0EAF6A8E6F791DCF57063766AC9F176313A61BFEC7B0C
                111D96DC157CA92D343B7F7F7F7F7F7F7F7F7F7F7F7F8A8A8AD3D3D3CFCFCFC3
                C3C36C6C6CADADAD535353A6A6A64343437C7C7C5F5F5F343434FF00FFFF00FF
                FF00FFFF00FF80919CB7EDF8ADEBFAA3E6F783D9F57C3C477B2C347C1E2460C4
                EF4BB5E91284B73B434B7F7F7F7F7F7F7F7F7F7F7F7F8E8E8ED7D7D7D3D3D3CD
                CDCDBCBCBC5C5C5C5353534D4D4DA7A7A79A9A9A64646443434397806F634935
                6349356349358898A1BEF0F9ABF0F78C727C844D5680373EF8F8F87C232A7233
                407326320C8ABF49535C8383834C4C4C4C4C4C4C4C4C949494DBDBDBD1D1D17F
                7F7F6868685B5B5BF8F8F84F4F4F5252524C4C4C6565655252529B8473F8E8DF
                F7E1D6F5DED28598A1BEF0F9B6EEF8B0EEFA96E7FB845C677F49547B3C467ED6
                F361C2ED0D90C857636B878787EBEBEBE6E6E6E3E3E3939393DBDBDBD7D7D7D5
                D5D5C8C8C87070706464645B5B5BB8B8B8A7A7A76A6A6A616161A18A7AFAEFE9
                BA9786B38D7A8598A1BEF0F9B6EEF8B6EEF891798094E6FB895F678EE3FB887D
                8987DAF426A0D363707A8D8D8DF1F1F1A0A0A0969696939393DBDBDBD7D7D7D7
                D7D7858585C7C7C7747474C4C4C4838383BDBDBD7C7C7C6E6E6EA79180FDF5F2
                FBEFEAF7E7DF8A9FA7BEF0F9BEF0F9BEF0F9B4F2F8ABEDFB91828C9CE8FB8DDF
                FA7DD5F467C6F263707A939393F7F7F7F2F2F2EBEBEB989898DBDBDBDBDBDBDB
                DBDBD6D6D6D3D3D3898989CBCBCBC3C3C3B8B8B8ACACAC6E6E6EAE9888FEFBF8
                CFB7ABC9AEA08EA2AB8EA2AB8EA2AB8DA1AB8B9FA88A9DA7899BA6879AA4819C
                A98295A18395A0CDD3D79B9B9BFBFBFBBDBDBDB4B4B49C9C9C9C9C9C9C9C9C9C
                9C9C999999989898979797959595959595919191919191D2D2D2B49F8FFEFDFC
                FDFAF8FCF6F3A6B7BDB2E4ECB6EEF8A9ECF692E1F38DA1AAC1D1D7FF00FFFF00
                FFFF00FFFF00FFFF00FFA1A1A1FDFDFDFAFAFAF7F7F7B1B1B1CFCFCFD7D7D7CF
                CFCFC2C2C29B9B9BCCCCCC7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FBCA697F8F8F7
                40BC4235B133EDF0F0A1B2B98FA4AC90A5AC97A9B0DEE7EBFF00FFFF00FFFF00
                FF000000FF00FFFF00FFA9A9A9F7F7F77E7E7E727272EEEEEEADADAD9D9D9D9E
                9E9EA3A3A3E4E4E47F7F7F7F7F7F7F7F7F0000007F7F7F7F7F7FC2AC9DFFFFFF
                52CE5D45C14BF8F7F4FDF9F6FBF0EAFBF2ED634935FF00FFFF00FFFF00FFFF00
                FF000000FF00FFFF00FFAFAFAFFFFFFF909090838383F6F6F6F9F9F9F2F2F2F4
                F4F44C4C4C7F7F7F7F7F7F7F7F7F7F7F7F0000007F7F7F7F7F7FC6B0A1FFFFFF
                65D56D55D160F4F4F2D3BEB2D3BEB2FDFBF9634935FF00FFFF00FF0000000000
                00000000000000000000B3B3B3FFFFFF9D9D9D939393F3F3F3C2C2C2C2C2C2FB
                FBFB4C4C4C7F7F7F7F7F7F000000000000000000000000000000C7B1A2FFFFFF
                FFFFFFFFFFFFFFFEFEFFFDFDFDFAF9FFFFFF634935FF00FFFF00FFFF00FFFF00
                FF000000FF00FFFF00FFB4B4B4FFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFBFBFBFF
                FFFF4C4C4C7F7F7F7F7F7F7F7F7F7F7F7F0000007F7F7F7F7F7FC8B2A3C7B1A2
                C5AFA0C3AD9EBDA798B29C8CA58F7F9B84739A8473FF00FFFF00FFFF00FFFF00
                FF000000FF00FFFF00FFB5B5B5B4B4B4B2B2B2B0B0B0AAAAAA9F9F9F92929287
                87878686867F7F7F7F7F7F7F7F7F7F7F7F0000007F7F7F7F7F7F}
              NumGlyphs = 2
              ParentShowHint = False
              ParentBiDiMode = False
              ShowHint = True
              OnClick = AddToFavoriteFontsBtnClick
            end
            object Bevel11: TBevel
              Left = 295
              Top = 6
              Width = 2
              Height = 19
              Shape = bsLeftLine
            end
            object Bevel12: TBevel
              Left = 325
              Top = 6
              Width = 2
              Height = 19
              Shape = bsLeftLine
            end
            object AllFontsCombo: TTntComboBox
              Left = 36
              Top = 5
              Width = 132
              Height = 21
              Style = csDropDownList
              BiDiMode = bdLeftToRight
              DropDownCount = 20
              ItemHeight = 13
              ParentBiDiMode = False
              TabOrder = 0
              OnChange = AllFontsComboChange
            end
            object FontSizeCombo2: TTntComboBox
              Left = 243
              Top = 5
              Width = 49
              Height = 21
              BiDiMode = bdLeftToRight
              ItemHeight = 13
              ParentBiDiMode = False
              PopupMenu = GeneralEditPopupMenu
              TabOrder = 1
              Text = 'FontSizeCombo1'
              OnChange = Bold1Click
              OnKeyPress = FontSizeCombo1KeyPress
              Items.Strings = (
                '8'
                '9'
                '10'
                '11'
                '12'
                '14'
                '16'
                '18'
                '20'
                '22'
                '24'
                '26'
                '28'
                '36'
                '48'
                '72')
            end
          end
          object HxWPanel: TTntPanel
            Left = 0
            Top = 31
            Width = 75
            Height = 42
            Hint = 'Height x Width'
            Align = alLeft
            BevelInner = bvLowered
            BiDiMode = bdLeftToRight
            BorderWidth = 2
            Caption = 'H x W'
            ParentBiDiMode = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
          object TntPanel3: TTntPanel
            Left = 75
            Top = 31
            Width = 4
            Height = 42
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
          end
        end
      end
      object SystemFontsSourceRadio: TTntRadioButton
        Left = 6
        Top = 16
        Width = 123
        Height = 17
        BiDiMode = bdLeftToRight
        Caption = '&System fonts'
        ParentBiDiMode = False
        TabOrder = 0
        OnClick = SystemFontsSourceRadioClick
      end
      object CharacterLibrarySourceRadio: TTntRadioButton
        Left = 136
        Top = 16
        Width = 123
        Height = 17
        BiDiMode = bdLeftToRight
        Caption = '&Character Library'
        ParentBiDiMode = False
        TabOrder = 1
        OnClick = CharacterLibrarySourceRadioClick
      end
      object CharacterSourceSettingsBtn: TTntBitBtn
        Left = 272
        Top = 13
        Width = 90
        Height = 23
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Caption = 'Se&ttings...'
        ParentBiDiMode = False
        TabOrder = 2
        OnClick = CharacterSourceSettingsBtnClick
      end
    end
    object TextToLCDOptionsGroup: TTntGroupBox
      Left = 382
      Top = 35
      Width = 189
      Height = 135
      Anchors = [akTop, akRight, akBottom]
      BiDiMode = bdLeftToRight
      Caption = 'Options'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
      object Image1: TImage
        Left = 12
        Top = 62
        Width = 161
        Height = 62
        Proportional = True
        Stretch = True
      end
      object ErrorLogCheck: TTntCheckBox
        Left = 135
        Top = 33
        Width = 33
        Height = 16
        BiDiMode = bdLeftToRight
        Caption = '&Display error messages'
        Checked = True
        ParentBiDiMode = False
        State = cbChecked
        TabOrder = 2
        Visible = False
      end
      object AutoextendLCDWidthCheck: TTntCheckBox
        Left = 8
        Top = 18
        Width = 159
        Height = 17
        BiDiMode = bdLeftToRight
        Caption = '&Adjust design width'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        State = cbChecked
        TabOrder = 0
      end
      object AutoextendLCDHeightCheck: TTntCheckBox
        Left = 8
        Top = 41
        Width = 159
        Height = 17
        BiDiMode = bdLeftToRight
        Caption = 'A&djust design height'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        State = cbChecked
        TabOrder = 1
      end
    end
    object InsertTextAtCursorBtn: TTntBitBtn
      Left = 477
      Top = 4
      Width = 95
      Height = 25
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = 'I&nsert At Cursor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      OnClick = InsertTextAtCursorBtnClick
    end
    object Panel18: TTntPanel
      Left = 376
      Top = 4
      Width = 2
      Height = 167
      Anchors = [akTop, akRight, akBottom]
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 5
    end
    object InputText: TTntDelayedComboBox
      Left = 38
      Top = 8
      Width = 281
      Height = 21
      AutoCloseUp = True
      Anchors = [akLeft, akTop, akRight]
      BiDiMode = bdLeftToRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      ParentBiDiMode = False
      ParentFont = False
      PopupMenu = GeneralEditPopupMenu
      TabOrder = 0
      OnKeyPress = InputTextKeyPress
      ChangeDelay = 500
      OnDelayedChange = InputTextDelayedChange
    end
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 581
    Top = 478
  end
  object MenuImages: TImageList
    Left = 680
    Top = 478
    Bitmap = {
      494C010124002700040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000A0000000010020000000000000A0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BD656600B0585900B0585900A9555500A0505000954A
      4C00894445007E3F3F0074393A0074393A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C06B6B00D3868300BB5F4C0052473C00867E7800DBD4
      CF00B7B6AF0049423D00A1443D007B3D3E000000000000000000000000000000
      0000000000000967150000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBD7C500F8D5C3000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F8D5C300FBD7C500000000000000000000000000000000000000
      000000000000000000000000000000000000A55B6200924A46008F443F008D42
      3D008B3F3A008A3C3500C4737300DB8F8E00D4858200604D40006A635C00B6AE
      A500D1CFC70067554800A74B4400854243000000000000000000000000000000
      000000000000116D1C00046B1100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8DCCF00F38A5700E195
      7100000000000000000000000000000000000000000000000000000000000000
      0000E1957100F38A5700F8DCCF00000000000000000000000000000000000000
      000000000000000000000000000000000000A87C6400D0B4A500B4897300AD7C
      6400A3765F00986D5600C77A7B00E3999800DC8F8E00604D4000604D4000604D
      40006453460064534600AD544E008F4748000000000000000000000000000000
      0000000000001B742600237E3000046E10000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EECBBA00F085
      5000DA865E00000000000000000000000000000000000000000000000000DA86
      5E00F0855000EECBBA0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5897B00FFFAF700E8CBBE00D8AC
      9600CD9E8900BF958000CC838400EAA2A100E3999800DB8F8D00D4858200CB7B
      7800C4716C00BC676200B45D5700994C4D000000000052392900523929005239
      290052392900268031003494440024833200046F110052392900523929005239
      2900523929005239290052392900000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CA80
      5C00F0885500EAC8B70000000000000000000000000000000000EAC8B700F088
      5500CA805C000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B1857700EDE8E600FEF5F000E7C8
      BA00D7A69000D6AA9400D08B8C00F0ABAA00D2757300C9636000C15A5000B54F
      3800A9432100AC482A00BC666200A251520000000000C6B5A500CEBDB500CEBD
      AD00CEB5AD003699420061C76D00379D480024863300046D1000BDA59400BDA5
      9400B5A59400B5A5940052392900000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E1CD
      C300DB784700EF93670000000000000000000000000000000000EF936700DB78
      4700E1CDC3000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B1857600B6A39600E6DED900FDF2
      ED00E8C7B700D6B6A500D4929400F7B2B200D9737400FFFFFF00F9F4F200F0E4
      DE00E7D4CB00B54F3900C4706D00AA55560000000000C6ADA500FFFFFF00FFFF
      FF00FFFFFF0047A8520078E4860065CD7100389E4900238332000C721A00F7D6
      C600F7CEB500B5A5940052392900000000000000000000000000000000008A46
      2500954C2800A4542E00B65F3400C7693A00D672400000000000000000000000
      0000AE5C3600EC865200F2CFBD000000000000000000F2CFBD00EC865200AE5C
      3600000000000000000000000000D6724000C7693A00B65F3400A4542E00954C
      28008A462500000000000000000000000000C8A19700EEE8E500B29E8F00E6D8
      D100EEDED6008B726200D8999B00FBB8B900EB858600FFFFFF00FFFFFF00F9F4
      F200F0E5DE00C15B5000A75E5D00B058590000000000C6B5A500FFFFFF00FFFF
      FF00FFFFFF0053AE60008AF6980088F3960063C86D0035894200FFE7D600F7DE
      CE00F7D6C600B5A594005239290000000000000000000000000000000000954C
      2800DF733600EA824900F39A6A00F5B594000000000000000000000000000000
      0000A3664800E9845200F7C2A7000000000000000000F7C2A700E9845200A366
      480000000000000000000000000000000000F5B59400F39A6A00EA824900DF73
      3600954C2800000000000000000000000000CAA49A00FFFFFF00ECE3DE00B29D
      8F00A9938300D7BEB000DAA1A100FFBDBE00F8929300FFFFFF00FFFFFF00FFFF
      FF00F9F4F200C96360007F414100B058590000000000C6B5A500CEBDB500CEBD
      AD00CEB5AD005DB2660086F19400CFFDDF0039934600C6B5A500C6ADA500BDAD
      9C00BDAD9C00B5A594005239290000000000000000000000000000000000A355
      2E00EC824B00F38D5B00EC9C7600B6866F00E9D5CB0000000000000000000000
      0000A9745900E1825400F7BE9E000000000000000000F7BE9E00E1825400A974
      5900000000000000000000000000E9D5CB00B6866F00EC9C7600F38D5B00EC82
      4B00A3552E00000000000000000000000000CEAAA000FFFFFF00FFFFFE00F8F2
      EF00F6EBE300FDECE400DDA4A500DAA1A100D8999A00D4939400D08B8C00CC82
      8300C77A7B00C4737300C06A6C00BD64660000000000C6ADA500FFFFFF00FFFF
      FF00FFFFFF0063B36D00C8FFD80039914600FFF7F700CEB5AD00FFEFE700FFE7
      DE00FFE7D600B5A594005239290000000000000000000000000000000000B55F
      3400F39A6A00F49C7100F29465009D533000AA613B00DAB8A70000000000F6C5
      AE009D644600DE805100F7BDA1000000000000000000F7BDA100DE8051009D64
      4600F6C5AE0000000000DAB8A700AA613B009D533000F2946500F49C7100F39A
      6A00B55F3400000000000000000000000000D1AFA700FFFFFF00FFFCFB00FFFD
      FC00FFFFF900C8C9E600407EE6007FCBEF001455CA00E5C3BE00C2967D008F43
      3F000000000000000000000000000000000000000000C6B5A500FFFFFF00FFFF
      FF00FFFFFF0067B57200378E4500FFFFFF00FFFFFF00CEBDAD00FFF7EF00FFEF
      E700FFE7DE00B5A594005239290000000000000000000000000000000000C769
      3B00F7CAAE00FBDDCB00F4A37600F3946400B4623900B0643E00BF816200BB84
      6000A15E3900EE8B5A00F6C8B0000000000000000000F6C8B000EE8B5A00A15E
      3900BB846000BF816200B0643E00B4623900F3946400F4A37600FBDDCB00F7CA
      AE00C7693B00000000000000000000000000D3B1AA00FFFFFF00FFFCFB00FFFC
      FB00FFFFFD00E3E4F2007191E2005091EA006284D400F2D5C900C4987F009046
      40000000000000000000000000000000000000000000C6B5A500E7DED600DECE
      C600DECEC60065B06E00D6C6BD00D6C6BD00D6C6B500CEBDB500CEBDAD00CEB5
      AD00C6B5A500B5A594005239290000000000000000000000000000000000D672
      40000000000000000000FBDECF00F5A57E00F49D7200C9734700B7663C00B665
      3D00E2815300F6BCA100F6CBB7000000000000000000F6CBB700F6BCA100E281
      5300B6653D00B7663C00C9734700F49D7200F5A57E00FBDECF00000000000000
      0000D6724000000000000000000000000000D3B3AA00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E4E6F800A8B5E900F3E4E600FFF2E400D9B39E00934A
      45000000000000000000000000000000000000000000CEB5AD00FFFFFF00FFFF
      FF00FFFFFF00DECEC600FFFFFF00FFFFFF00FFFFFF00D6C6B500FFFFFF00FFF7
      F700FFF7EF00B5A5940052392900000000000000000000000000000000000000
      0000000000000000000000000000FBDACA00F5A67E00F6B69600F5B28F00F6B0
      9100F6C1A800F6C5AE0000000000000000000000000000000000F6C5AE00F6C1
      A800F6B09100F5B28F00F6B69600F5A67E00FBDACA0000000000000000000000
      000000000000000000000000000000000000CDA29F00D3B2AA00D3B1AA00D1AF
      A700CEAAA100C9A49A00CBA29300CD9E8900BD8E7E00B3857600AC786800A55C
      61000000000000000000000000000000000000000000CEB5AD00FFFFFF00FFFF
      FF00FFFFFF00DECEC600FFFFFF00FFFFFF00FFFFFF00D6C6BD00FFFFFF00FFFF
      FF00FFF7F700B5A5940052392900000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBE0D200F6C3A900F7CF
      BB00F9DBCD00000000000000000000000000000000000000000000000000F9DB
      CD00F7CFBB00F6C3A900FBE0D200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CEB5AD00CEB5AD00C6B5
      A500C6B5A500C6AD9C00BDAD9C00BDA59400B59C9400B59C8C00AD948400A594
      8400A58C7B00A58C7B009C847300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B9A395FF634935FF634935FF6349
      35FF634935FF634935FF634935FF634935FF634935FF634935FF634935FF6349
      35FF0000000000000000000000000000000000000000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BAA596FFFCFAEFFFFAF2E6FFF6E9
      DAFFF2DECDFFEED3BFFFEAC8B2FFE6BEA5FFE2B49AFFDFAD90FFDDA789FF6349
      35FF0000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      F700948C8C00948C8C00948C8C00948C8C00FFD6AD00FFD6AD00FFD6AD00FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000634935FF634935FF6349
      35FF634935FF634935FF634935FF634935FF634935FF634935FF634935FF6349
      35FF634935FF634935FF0000000000000000BCA698FFFFFFF6FFB8A59CFFB6A2
      98FFF6E8DAFFB39D90FFB29A8DFFB1988BFFB1988BFFB1988BFFDFAD90FF6349
      35FF0000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF00313129006B7394001029A50021213900FFE7C600FFDEB500FFD6AD00FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BEA99AFFFEF0E8FFFEEFE6FFFEED
      E3FFFEEBE0FFFEE9DDFFFEE7DBFFFFE6D8FFFFE4D6FFFFE2D4FFFFE1D2FFFFE0
      D0FFFFDFCEFFFFDECDFF634935FF00000000BEA899FFFFFFF6FFFFFFF6FFFDFA
      EFFFFAF2E5FFF6E8DAFFF2DECDFFEED3C0FFEAC8B2FFE6BEA6FFE3B49AFF6349
      35FF0000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF0031313900637BE700FFFFF70010219C00FFEFD600FFE7C600FFDEB500FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00CE6300000000000052392900523929005239
      2900523929005239290052392900523929005239290052392900523929005239
      290052392900523929005239290000000000C0AA9BFFFEF2EBFFCB977DFFDB9D
      7FFFEAA380FFE99D77FFE8976DFFE79063FFE68859FFE5824FFFE47C46FFE478
      3FFFE57E4AFFFFDFCEFF634935FF00000000C0AA9CFFFFFFF6FFB7A69CFFB6A3
      98FFFDF9EFFFB39C90FFB2998DFFB1988BFFB1988BFFB1988BFFE6BEA5FF6349
      35FF0000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF0042424200524A4A005A524A00182994006373D600FFEFD600FFE7C600FFDE
      B500FFD6AD00FFD6AD00FFD6AD00CE63000000000000C6B5A50000000000CEBD
      AD0000000000C6ADA50000000000C6ADA50000000000BDAD9C0000000000BDA5
      940000000000B5A594005239290000000000C1AC9DFFFEF4EEFFC79074FFFCBF
      9EFFF3AD88FFF3A77FFFF09D73FFEC956AFFE58C62FFDE825AFFD67953FFCD70
      4BFFE2733AFFFFE0D0FF634935FF00000000C3AE9EFFFFFFF6FFFFFFF6FFFFFF
      F6FFFFFFF6FFFDF9EFFFFAF2E5FFF6E8D9FFF3DECDFFEED3C0FFEAC8B2FF6349
      35FF0000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00637BE700425AE700FFEFD600FFE7
      C600FFDEB500FFD6AD00FFD6AD00CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005239290000000000C3AD9EFFFEF6F0FFC68E72FFFDC5
      A8FFFFE7D9FFFFE4D6FFFFE1D1FFFFDDCCFFFFDBC8FFFFD5C2FFFFD0BCFFD679
      53FFE27239FFFFE1D2FF634935FF00000000C5B0A0FFFFFFF6FFFFFFF6FFFFFF
      F6FFFFFFF6FFFFFFF6FFFDFAEFFFC1C4C5FF415C72FFF2DECDFFEED3C0FF6349
      35FF0000000000000000000000003D74430F00000000CE630000FFFFFF00FFFF
      FF00948C8C00948C8C00948C8C00948C8C00FFFFFF00FFFFFF00FFF7E700FFEF
      D600FFE7C600FFDEB500FFD6AD00CE63000000000000C6B5A50000000000FFFF
      FF00FFFFFF00C6B5A500FFF7F700FFF7EF00FFEFE700C6ADA500FFE7D600F7DE
      CE0000000000B5A594005239290000000000C4AE9FFFFDF7F3FFC68E72FFFDCC
      B1FFFDC5A7FFFCBE9DFFF9B38FFFF6AA83FFF3A178FFED986FFFE68E66FFDE82
      5AFFE27239FFFFE2D4FF634935FF00000000C7B1A2FFFEFDFCFFE2E9E9FF5E75
      84FFDFE3E3FFFFFFF6FFC2C8C9FF4A6170FF2EA9D6FF233547FFAFA399FF6349
      35FF00000000000000003D74437241824CFF00000000CE630000FFFFFF00FFFF
      FF00313129006B7394001029A50021213900FFFFFF00FFFFFF00FFFFF700FFF7
      E700FFEFD600FFE7C600FFDEB500CE630000000000000000000000000000CEBD
      AD00CEB5AD00B5BDB500CEBDB500CEBDAD00CEB5AD00C6B5A500C6ADA500BDAD
      9C0000000000000000005239290000000000C5B0A1FFFDF9F5FFC68E72FFFED2
      B9FFFFECE1FFFFE9DDFFFFE7D9FFFFE4D5FFFFE1D1FFFFDDCCFFFFDBC8FFE58C
      62FFE37339FFFFE4D6FF634935FF00000000C9B3A5FFFEFEFEFF8FA4ACFF86D3
      E5FF4B6170FFAFB8BDFF4A6170FF61C1DEFF4C616FFF29B6E9FF152733FF102C
      3AFF172935FF14222C913D7443FF4BA761FF00000000CE630000FFFFFF00FFFF
      FF0031313900637BE700FFFFFF0010219C00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFF7E700FFEFD600FFE7C600CE63000000000000C6ADA50000000000FFFF
      FF00FFFFFF00D6C6BD00FFFFFF00FFFFFF00FFF7F700CEB5AD00FFEFE700FFE7
      DE0000000000B5A594005239290000000000C7B1A2FFFDFBF7FFC68E72FFFFD7
      C2FFFED1B8FFFDCBAFFFFDC4A6FFFCBD9CFFFBB591FFF7AB84FFF2A077FFEC94
      6AFFE37339FFFFE6D8FF634935FF00000000CBB5A6FFFEFEFEFFE4EAEAFF8FA4
      ACFF83E1F6FF4B6170FF7ACDE2FF4C616FFF65D2F2FF455D71FF32B2DFFF1D99
      C8FF1A88B3FF1F536DFF4F8458FF4CAC64FF00000000CE630000FFFFFF00FFFF
      FF0042424200524A4A005A524A00182994006373D600FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7E700FFEFD600CE630000000000000000000000000000FFFF
      FF00FFFFFF00D6C6BD00FFFFFF00FFFFFF00FFFFFF00CEBDAD00FFF7EF00FFEF
      E70000000000000000005239290000000000C8B2A3FFFDFCF9FFC68E72FFFFDC
      C9FFFFF0E8FFFFEEE5FFFFECE0FFFDC3A5FFFCBD9BFFFBB691FFFAAF88FFF09C
      72FFE3743AFFFEE7DBFF634935FF00000000CCB6A7FFCCB6A7FFCAB5A6FFBDB0
      A6FF8FA4ACFF83E1F6FF4B6170FF83E1F6FF3C5973FF65D2F2FF50C9EFFF3BBF
      EBFF27B2E4FF1CA3D6FF64956EFF53B46CFF00000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00637BE700425AE700FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFF7E700CE63000000000000C6B5A50000000000DECE
      C600DECEC600DECEBD00D6C6BD00D6C6BD00D6C6B500CEBDB500CEBDAD00CEB5
      AD0000000000B5A594005239290000000000C9B3A4FFFDFDFBFFC78F74FFFFDF
      CEFFFFDBC8FFFFD6C0FFFED1B7FFFDCAAEFFFDC3A5FFFCBD9BFFFBB691FFFAAF
      87FFE47840FFFEE9DDFF634935FF000000000000000000000000000000000000
      00008FA4AC398FA4ACFF83E1F6FF405B72FF83E1F6FF77DBF4FF65D2F2FF50C9
      EFFF3BBFEBFF29B6E9FF76A583FF5DC078FF00000000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000000000000000000000000000FFFF
      FF00FFFFFF00DECEC600FFFFFF00FFFFFF00FFFFFF00D6C6B500FFFFFF00FFF7
      F70000000000000000005239290000000000CAB4A5FFFDFEFDFFCE9F87FFC893
      78FFC78C6FFFC88B6DFFC88666FFC67E5AFFC4774FFFC37147FFC36B3FFFC467
      39FFCC7445FFFEEBE0FF634935FF000000000000000000000000000000000000
      0000000000008FA4AC398FA4ACFF83E1F6FF83E1F6FF83E1F6FF77DBF4FF65D2
      F2FF5FB2CFFF7A8B96FFAEC1A6FF93D39AFF0000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE6300000000000000000000CEB5AD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5A594005239290000000000CBB5A6FFFDFFFEFFFDFEFDFFFDFD
      FBFFFDFCF9FFFDFBF7FFFDF9F5FFFDF7F3FFFEF6F0FFFEF4EEFFFEF2EBFFFEF0
      E8FFFEEFE6FFFEEDE3FF634935FF000000000000000000000000000000000000
      000000000000000000008FA4AC398FA4ACFF8CA1A9FF889CA5FF8396A0FF7E90
      9AFF7A8B96FF7A8B967A99B89CFFAEC1A6FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CEB5AD000000
      0000C6B5A50000000000BDAD9C0000000000B59C940000000000AD9484000000
      0000A58C7B00000000009C8473000000000000000000CBB5A6FFCAB4A5FFC9B3
      A4FFC8B2A3FFC7B1A2FFC5B0A1FFC4AE9FFFC3AD9EFFC1AC9DFFC0AA9BFFBEA9
      9AFFBDA899FFBCA798FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000005B7000005B7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000005B7000005B700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000005B7000005B7000005
      B700000000000000000000000000000000000000000000000000000000000000
      00000005B7000005B700000000000000000000000000D6D7D60042794A003F74
      4700396B410037663F0036623D00335E3B00305838002E5637002C5234002A4F
      3400284B3000ECDED60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000005B7000205B7000005
      B7000005B7000000000000000000000000000000000000000000000000000005
      B7000005B700000000000000000000000000C2C4C4002A2D2B0074C48700F8F5
      F300EFE9E600EAE1DD00E5DBD500DFD3CD00DBCCC400D5C5BC00D0BDB400CBB8
      AD00C7B1A600294B310000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002005DC000205
      BB000005B7000005B700000000000000000000000000000000000005B7000005
      B7000000000000000000000000000000000095909000B3B0AE004C8D53003C6D
      430037663F0035623D00345F3D00335C3B0031593900305638002E5336002D51
      3400B7A49A002C5033000000000000000000D6EFD60031CE630031CE630031CE
      630031CE630031CE630031CE630031CE630031CE630031CE6300000000000063
      00000063000000630000006300005A9C5A005A9C5A0000630000006300000063
      0000006300000000000031CE630031CE630031CE630031CE630031CE630031CE
      630031CE630031CE630031CE6300D6EFD60000000000573F2B00573F2B00573F
      2B000005B7000005B7000105B500573F2B000105B5000005B7000005B700573F
      2B00573F2B00573F2B00573F2B0000000000C3C5C5002B2E2C004A87510084CA
      940057AE69004DA55C0047A359003E9B4D003A994C0032934200278B36002F55
      37008C4E0000A95D0000AA5E00000000000000000000D6EFD6007BDE9C0042CE
      6B0031CE630031CE630031CE630031CE630031CE630031CE6300000000000063
      00000063000000630000106B10000000000000000000106B1000006300000063
      0000006300000000000031CE630031CE630031CE630031CE630031CE630031CE
      630042CE6B007BDE9C00D6EFD6000000000000000000C6B3A600CEBDB100CBB9
      AC00C8B6A9000206B6000208C700050AC6000107CE000106B400BBA69700B9A4
      9500B7A29300B7A29300573F2B000000000076716E00B3B0AE004D8D55008ACE
      980071C284006CBE810067BB7C0062B877005CB4730057B16F002F913D003259
      3900E5910000FF820000FF900000AA5E00000000000000000000000000000000
      0000B5E7BD005AD6840031CE630031CE630031CE630031CE6300000000000063
      000000630000006300007BAD7B0000000000000000007BAD7B00006300000063
      0000006300000000000031CE630031CE630031CE630031CE63005AD68400B5E7
      BD000000000000000000000000000000000000000000C2AEA000FEFEFE00FEFE
      FE00FEFEFE00C4B1A3001116C4000005C1000006DA00BFAB9D00F7DBCA00F6D5
      C000F5CFB700B7A29300573F2B0000000000C3C5C5002B2E2C00509458008FD1
      9E0079C58B0073C287006EBF820068BC7E0064B97A005EB5750038984800345E
      3D00E5910000FF940000FF930000AB5E00000000000000000000000000000000
      00000000000000000000D6EFD6007BDE9C0042CE6B0031CE6300000000000063
      000000630000106B100000000000000000000000000000000000106B10000063
      0000006300000000000031CE630042CE6B007BDE9C00D6EFD600000000000000
      00000000000000000000000000000000000000000000C4B1A300FEFEFE00FEFE
      FE00FEFEFE002F2FB200050BD800070CCF000006DA000107E900F9E1D300F7DB
      CA00F5D5C000B7A29300573F2B000000000076726F00B3B0AE0053995B00A1D8
      AB007FC990007AC78C0075C4880070C083006BBE800066BA7B00429E53003662
      3F00006E00000085000000850000000000000000000000000000000000000000
      0000BD7B5A000000000000000000BD5A000000000000B5E7BD00000000000063
      0000006300009CBD9400000000000000000000000000000000009CBD94000063
      00000063000000000000B5E7BD0000000000BD5A00000000000000000000BD7B
      5A000000000000000000000000000000000000000000C6B3A600CEBDB100CBB9
      AC001014E0000006DA000B10D100CBB9AC00C8B6A9000107E5000006EF00BFAC
      9D00BDA99A00B7A29300573F2B0000000000C3C5C5002B2E2C00569F5E00A4DB
      B00086CD960081CB91007DC88E0077C48A0073C285006DBF81004FA75F003A67
      420039BB660025B64D0032C45F00008500000000000000000000000000000000
      0000AD420000B55A180000000000AD4A0000AD4A000000000000000000000063
      0000217B1800000000000000000000000000000000000000000000000000217B
      1800006300000000000000000000AD4A0000AD4A000000000000B55A1800AD42
      00000000000000000000000000000000000000000000C2AEA000FEFEFE000208
      F8000006DA001F22E700FEFEFE00FDFBFA00FCF7F400C8B6A9000006F8000006
      F600F9E2D300B7A29300573F2B000000000078737100B3B0AF005AA46100A8DE
      B3008CD19B0087CF970083CB93007EC98F007AC58B0074C3870054AA63003C6D
      440038BA650031C560003DCF7000008500000000000000000000000000000000
      000000000000BD520000C65A0000AD4A0000BD5A0000BD734A00000000000063
      0000ADC6A500000000000000000000000000000000000000000000000000ADC6
      A5000063000000000000BD734A00BD5A0000AD4A0000C65A0000BD5200000000
      00000000000000000000000000000000000000000000C4B1A3000006F6000006
      F6000208F800D7C7BB00FEFEFE00FEFEFE00FDFBFA00CBB9AC00FBF3ED000006
      F6000006F600B7A29300573F2B0000000000C3C5C5002B2E2C005DA96400ACE1
      B60090D59E008DD29C0088CF980085CD94007FC990007BC68D0059AD67003F72
      4700006F8E000086AC000086AC00000000000000000000000000000000000000
      00000000000000000000BD7B5A00BD520000B563290000000000000000007BAD
      7B00000000000000000000000000000000000000000000000000000000000000
      00007BAD7B000000000000000000B5632900BD520000BD7B5A00000000000000
      000000000000000000000000000000000000000000000006F6000006F6000006
      F600DCCCC100D9C9BF00D7C7BC00D4C4B800D1C0B400CEBDB100CBB9AC00C8B5
      A900C5B2A5000006F600573F2B000000000069686600B3B0AF005FAF6600B0E2
      B90096D7A30092D5A1008ED29D008AD0990087CD960081CB92005EB06C004277
      4A0000BCE50000C2FF0000C8FF000085AC000000000000000000000000000000
      0000000000000000000000000000B56339000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B563390000000000000000000000
      0000000000000000000000000000000000000006F6000006F6000006F600FEFE
      FE00FEFEFE00DBCCC100FEFEFE00FEFEFE00FEFEFE00D1C0B400FDFBF900FDF7
      F400FCF3ED00B7A29300573F2B0000000000C3C5C5002B2E2C0062B36900B2E3
      BB009BDAA70097D8A40094D6A2008FD49E008CD09B0087CE97006CBA7900457D
      4D0000BCE50000C1FF0000C4FF000085AC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000006F6000006F600FEFEFE00FEFE
      FE00FEFEFE00DDCEC500FEFEFE00FEFEFE00FEFEFE00D4C4B800FEFEFE00FDFB
      FA00FDF7F300B7A29300573F2B0000000000645E5E00BBBAB80064B76B00B2E4
      BB009EDCAA009CDBA70098D9A50095D7A20091D49E008DD29C0071BE7E004882
      500000799C0000799C0000799C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CAB7AA00C9B7AA00C7B4
      A700C4B1A300C0AD9F00BCA89B00B8A59600B49F9100B09B8B00AA958600A690
      8000A08B7A00A08B7A009C86750000000000D9D8D9003337320066BB6D00B2E4
      BB00B2E4BB00B1E3BA00B1E3BA00ADE1B700AADEB500A9DDB3009AD8A7004B87
      5300B8A59B0080AB860000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0EDEB00BBBAB80068BF6F0067BB
      6D0065B66A0062B2690061B067005FAB66005DA763005AA36100589F5F005EAA
      6500EDDED7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C8473009C846B00947B6B00947B6B008C73
      63008C7363008C735A00846B5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CEBDB500FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7EF00FFF7EF008C736300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C68C8C00AD6373008C39
      5A007B314A000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008C422100EFE7DE00F7BDA500EF844A00EF7B
      4200E7733900FFF7F700947B6300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B59C94007B6B63006B5A
      52006B524A00635242005A4A39000000000000000000C65A8400AD4263008C29
      520084294A007B21420073183900000000000000000000000000000000000000
      0000000000000000000000000000BD848C009C5A6B008C425A008C425A008C42
      5A00843952000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000944221008C422100E7D6CE00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700947B6B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6B5AD00D6D6CE00BDB5
      B5009C948C0094847B00635242000000000000000000C6638400BD738C00A54A
      6B009C42630094315A009C315A00000000000000000000000000000000000000
      000000000000CE949C00A55A6B0094426300944A6300A5637300A55A73009C52
      6B0094425A000000000000000000000000000000FF0052392900523929005239
      2900523929005239290052392900BD633900A55229008C422100F7DECE00F7B5
      9C00E7733900FFFFFF009C847300000000000000000052392900523929005239
      2900523929005239290052392900523929005239290052392900523929005239
      2900523929005239290052392900000000000000000000000000BDA59400C6C6
      C600A59C9C009C8C8C00634A42000000000000000000C6638400BD849400AD5A
      7300A54A6B00A5426300BD6B7B00000000000000000000000000D6ADBD00CE94
      9C00AD737B00A55A7300A5637B00BD849400C68C9C00BD849400B5738C00AD6B
      84009C4263000000000000000000000000003131F7000000FF00CEBDB500CEBD
      AD00CEB5AD00C66B4200F7AD8400FF946300D67B5200B56331008C422100FFEF
      EF00FFFFFF00FFFFFF009C8C7B000000000000000000C6B5A500CEBDB500CEBD
      AD00CEB5AD00C6ADA500C6B5A500C6ADA500BDAD9C00BDAD9C00BDA59400BDA5
      9400B5A59400B5A59400523929000000000000000000DED6D600C6B5AD00D6D6
      CE00B5B5AD00A59C9400635242000000000000000000C66B8C00C68C9C00B573
      8400AD5A7B00AD426B00CE848400000000000000000000000000BD849400BD84
      9400BD8C9C00D6A5AD00D6ADB500D6ADB500D6A5AD00CE9CAD00C694A500BD84
      9400AD527300000000000000000000000000000000003939F7000000FF00FFFF
      FF00DEAD8C00F7B58C00D6734200F7B58C00FF946300D67B4A00F7DECE00F7B5
      9C00E7733900FFFFFF00A58C7B000000000000000000C6ADA500FFFFFF00FFFF
      FF00FFFFFF00C6B5A500FFF7EF00FFEFE700FFE7DE00BDAD9C00F7DECE00F7D6
      C600F7CEB500B5A5940052392900000000000000000000000000D6D6CE00BDA5
      9400C6C6BD00ADA5A50063524A000000000000000000CE738C00C6949C00BD7B
      8C00AD5A7300BD6B7B0000000000000000000000000000000000D6949C00D694
      A500D68CA500D68C9C00CE849400CE7B9400CE738C00C66B8C00C6638400C65A
      8400BD527B0000000000000000000000000000000000C6B5A5003939F7000000
      FF00E78C5A00C68C6300FFF7F700D67B4A00DE845A00FFF7F700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00AD9484000000000000000000C6B5A500FFFFFF00FFFF
      FF00FFFFFF00C6B5A500FFF7F700FFF7EF00FFEFE700C6ADA500FFE7D600F7DE
      CE00F7D6C600B5A5940052392900000000000000000000000000D6D6CE00C6B5
      AD00D6D6CE00C6BDBD006B5A52000000000000000000CE7B9400CE9CAD00C68C
      9C00AD4A6B00CE8C8C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6B5A500CEBDB5003939
      F7000000FF00CEC6AD00CEBDB500E79C7300EFE7DE00BDA59C00BDA59400B5A5
      9400B59C9400B59C8C00AD9C8C000000000000000000C6B5A500CEBDB500CEBD
      AD00CEB5AD00B5BDB500CEBDB500CEBDAD00CEB5AD00C6B5A500C6ADA500BDAD
      9C00BDAD9C00B5A594005239290000000000000000000000000000000000D6CE
      CE00BDA59400CEC6C60073635A000000000000000000CE849400D6B5BD00C673
      9400C6737B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7FFFF000000FF000000FF000000
      FF000000FF000000FF00FFFFFF00FFFFFF00FFF7F700CEB5AD00FFEFE700FFE7
      DE00FFE7D600B5A59400523929000000000000000000C6ADA500FFFFFF00FFFF
      FF00FFFFFF00D6C6BD00FFFFFF00FFFFFF00FFF7F700CEB5AD00FFEFE700FFE7
      DE00FFE7D600B5A594005239290000000000000000000000000000000000D6CE
      CE00C6B5AD00D6CECE00847363000000000000000000D68C9C00D6ADB500C663
      8400CE8484000000000000000000000000000000000000000000B5A59C00A59C
      8C0094847B0084736B007B6B63006B5A520063524A0063524200634A42006352
      42005A4A390000000000000000000000000000000000F7FFFF000000FF000000
      FF000000FF000000FF000000FF00FFFFFF00FFFFFF00CEBDAD00FFF7EF00FFEF
      E700FFE7DE00B5A59400523929000000000000000000C6B5A500FFFFFF00FFFF
      FF00FFFFFF00D6C6BD00FFFFFF00FFFFFF00FFFFFF00CEBDAD00FFF7EF00FFEF
      E700FFE7DE00B5A5940052392900000000000000000000000000000000000000
      000000000000BDA59400847B73000000000000000000D68C9C00CE849C00C67B
      8400000000000000000000000000000000000000000000000000C6B5AD00C6B5
      AD00BDAD9C00CECECE00C6C6C600C6BDBD00ADA5A500A59C94009C8C8C009484
      7B006352420000000000000000000000000000000000C6B5A500F7FFFF000000
      FF00DECEC600DECEBD00D6C6BD00D6C6BD00D6C6B500CEBDB500CEBDAD00CEB5
      AD00C6B5A500B5A59400523929000000000000000000C6B5A500E7DED600DECE
      C600DECEC600DECEBD00D6C6BD00D6C6BD00D6C6B500CEBDB500CEBDAD00CEB5
      AD00C6B5A500B5A5940052392900000000000000000000000000000000000000
      000000000000C6B5AD0094847B000000000000000000D6949C00CE7B9400CE8C
      8C00000000000000000000000000000000000000000000000000000000000000
      0000C6B5AD00C6B5AD00BDAD9C00CECECE00C6C6BD00B5B5AD00A59C9C009C94
      8C006B5A4A0000000000000000000000000000000000CEB5AD00F7FFFF000000
      FF000000FF00DECEC600FFFFFF00FFFFFF00FFFFFF00D6C6B500FFFFFF00FFF7
      F700FFF7EF00B5A59400523929000000000000000000CEB5AD00FFFFFF00FFFF
      FF00FFFFFF00DECEC600FFFFFF00FFFFFF00FFFFFF00D6C6B500FFFFFF00FFF7
      F700FFF7EF00B5A5940052392900000000000000000000000000000000000000
      000000000000BDB5B500AD9C94000000000000000000D694A500AD426B00CE94
      A500000000000000000000000000000000000000000000000000000000000000
      000000000000CEC6C600C6B5AD00C6B5AD00BDAD9C00CECECE00C6C6C600BDB5
      B50073635A0000000000000000000000000000000000CEB5AD00FFFFFF00F7FF
      FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00D6C6BD00FFFFFF00FFFF
      FF00FFF7F700B5A59400523929000000000000000000CEB5AD00FFFFFF00FFFF
      FF00FFFFFF00DECEC600FFFFFF00FFFFFF00FFFFFF00D6C6BD00FFFFFF00FFFF
      FF00FFF7F700B5A5940052392900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D6CEC600C6B5AD00C6B5AD00BDAD9C00D6CE
      CE0084736B0000000000000000000000000000000000CEB5AD00CEB5AD00C6B5
      A500F7FFFF000000FF000000FF00BDA59400B59C9400B59C8C00AD948400A594
      8400A58C7B00A58C7B009C8473000000000000000000CEB5AD00CEB5AD00C6B5
      A500C6B5A500C6AD9C00BDAD9C00BDA59400B59C9400B59C8C00AD948400A594
      8400A58C7B00A58C7B009C847300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6CEC600C6B5AD00C6B5
      AD00B5A594000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF004300FF00430000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C8473009C846B00947B6B00947B6B008C73
      63008C7363008C735A00846B5A000000000000000000000000005A4231005A42
      31005A4231005A4231005A4231005A4231005A4231005A4231005A4231005A42
      31005A4231005A4231005A4231005A4229000000000000000000000000000000
      00000000000000000000FF004300FF004300FF004300FF004300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CEBDB500FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7EF00FFF7EF008C736300000000000000000000000000CEB5AD00CEBD
      B500D6BDB500CEBDAD00C6B5A500C6B5A500C6B5A500C6B5A5008C422100BDAD
      9C00BDA59C00BDA59400BDA594005A4231000000000000000000000000000000
      000000000000FF004300FF004300FF004300FF004300FF004300FF0043000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DE398400CE526300C65A4200CE525200D6317B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008C422100EFE7DE00F7BDA500EF844A00EF7B
      4200E7733900FFF7F700947B6300000000000000000000000000C6B5A500EFE7
      E7000000000000000000CEBDB500EFE7DE00FFF7EF00FFF7E700944221008C42
      2100FFDEC600FFD6BD00BDA594005A42310000000000000000009F928400A698
      9200FF004300FF00430000000000FF004300FF00430000000000FF004300FF00
      4300988477009284770092847700000000000000000000000000000000000000
      0000D6297B00A539080094390800844210009C310000A5390800B54A2100C65A
      4200CE2184000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000944221008C422100E7D6CE00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700947B6B00000000000000000000000000C6B5A500E7DE
      DE00FFF7F700FFF7F700CEBDB500EFE7DE00FFEFEF00FFEFE700BD633900A552
      29008C422100F7D6BD00BDA594005A42310000000000000000009F8B8400FFFF
      FF00FFFFFF00FFFFFF009F928400FF004300FF004300FFE7DE00988B7E00F7DE
      CE00F7D6C600F7CEB5009284770000000000000000000000000000000000CE21
      73009C310000A5390000AD4200000863000094420000A53900009C3100009C39
      0800B5523100C6218C0000000000000000000000000052392900523929005239
      2900523929005239290052392900BD633900A55229008C422100F7DECE00F7B5
      9C00E7733900FFFFFF009C84730000000000A57B6300946342008C5231008C52
      310084523100844A2900844A290084422100C66B4200F7AD8400FF946300D67B
      5200B56331008C422100BDA594005A42310000000000000000009F928400FFFF
      FF00FFFFFF00FFFFFF009F928400FF004300FF004300FFEFE7009F8B8400FFE7
      D600F7DECE00F7D6C6009284770000000000000000000000000000000000AD42
      0000B5520000C65A0000C663000000730000086B0000BD520000B54A0000A539
      0000845A29009C634A00000000000000000000000000C6B5A500CEBDB500CEBD
      AD00CEB5AD00C66B4200F7AD8400FF946300D67B5200B56331008C422100FFEF
      EF00FFFFFF00FFFFFF009C8C7B0000000000AD7B6300D6B5A500B58C7300AD7B
      6300A5735A009C6B52008C634A00DEAD8C00F7B58C00D6734200F7B58C00FF94
      6300D67B4A00FFEFDE00BDA594005A42310000000000000000009F928400A698
      9200A6988B00A6928B0092989200FF004300FF004300A6928B009F9284009F8B
      8400988B7E00988B7E0092847700000000000000000000000000FF739C00D67B
      2100CE630000CE6B00006B7B000000840000297B0000BD6B0000CE630000BD52
      0000396310006B633100B5297B000000000000000000C6ADA500FFFFFF00FFFF
      FF00DEAD8C00F7B58C00D6734200F7B58C00FF946300D67B4A00F7DECE00F7B5
      9C00E7733900FFFFFF00A58C7B0000000000B5947B00FFFFF700EFCEBD00DEAD
      9400CE9C8C00BD948400B58C7300E78C5A00C68C63006B5A4A00D67B4A00DE84
      5A00F7E7DE00F7DED600BDA594005A42310000000000000000009F8B8400FFFF
      FF00FFFFFF00FFFFFF00AC9F9800FFFFFF00FFFFFF00FFF7F700A6928B00FFEF
      E700FFE7DE00FFE7D60092847700000000000000000000000000D6522900FFC6
      7300DE730000B5840000948C000073940000EF840000E77B0000737300000073
      00000063000031631800944239000000000000000000C6B5A500FFFFFF00FFFF
      FF00E78C5A00C68C6300FFF7F700D67B4A00DE845A00FFF7F700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00AD94840000000000B58C7300EFEFE700FFF7F700E7CE
      BD00D6A59400D6AD9400BD948400DE8C63009C8473005A524A00E79C73007339
      1800CEBDB500CEBDAD00BDA594005A42310000000000000000009F928400FFFF
      FF00FFFFFF00FFFFFF00AC9F9800FFFFFF00FFFFFF00FFFFFF00A6988B00FFF7
      EF00FFEFE700FFE7DE0092847700000000000000000000000000CE630800FFCE
      8400B5BD6300739C1000A59C0800FF9C0000FF9C0000F78C0000CE840000007B
      0000216B00004A5A0000735A10000000000000000000C6B5A500CEBDB500CEBD
      AD00DE8C6300CEC6AD00CEBDB500E79C7300EFE7DE00BDA59C00BDA59400B5A5
      9400B59C9400B59C8C00AD9C8C0000000000B58C7300B5A59400E7DEDE00FFF7
      EF00EFC6B500D6B5A5008C7B6B00DE8C63007B6B63005A4A4200AD8473008C52
      310000000000FFFFFF00BDAD9C005A42290000000000000000009F928400BAB2
      AC00B2A69F00B2A69F00B2A69800FF004300FF004300AC9F9200A6989200A698
      8B00A6928B009F92840092847700000000000000000000000000CE7339009C9C
      1800FFDEA5004AC65A0052C65200E7C65200FFB53900FF9C0800F78C00003984
      000039730000006B00007B5242000000000000000000C6ADA500FFFFFF00FFFF
      FF00DE8C6300D6C6BD00FFFFFF00FFFFFF00FFF7F700CEB5AD00FFEFE700FFE7
      DE00FFE7D600B5A594005239290000000000CEAD9400EFEFE700B59C8C00E7DE
      D600EFDED6008C7363009C847300D69C840073635200FFC6A500AD846B00844A
      3100EFE7DE00E7DEDE00B5A594006B5242000000000000000000A6928B00FFFF
      FF00FFFFFF00FFFFFF00FF004300FF004300FF004300FF004300AC9F9200FFFF
      FF00FFF7F700FFF7EF0092847700000000000000000000000000DE5273004AAD
      29007BD67B00FFE7C60073DE840052D67300FFE78C00FFB53900FF940000638C
      0000427B0000006B0000B5397B000000000000000000C6B5A500FFFFFF00FFFF
      FF00D69C8400D6C6BD00FFFFFF00FFFFFF00FFFFFF00CEBDAD00FFF7EF00FFEF
      E700FFE7DE00B5A594005239290000000000CEAD9C0000000000EFE7DE00B59C
      8C00AD948400D6BDB500F7CEBD00CEA59400FFCEAD00FFCEAD00AD847300844A
      2900AD948400A58C7B00A58C7B009C8C7B000000000000000000A6928B00FFFF
      FF00FFFFFF00FF004300FF004300FF004300FF004300FF004300FF004300FFFF
      FF00FFFFFF00FFF7F700928477000000000000000000000000000000000021BD
      4A0039CE6B00A5E7A500FFF7DE00EFFFE700CEEFAD00FFC65A00A5A51000EF84
      0000298400005A842100000000000000000000000000C6B5A500E7DED600DECE
      C600DECEC600DECEBD00D6C6BD00D6C6BD00D6C6B500CEBDB500CEBDAD00CEB5
      AD00C6B5A500B5A594005239290000000000CEB5A50000000000FFFFFF00FFF7
      EF00F7EFE700FFEFE7008C9CD600215ACE009C94B500FFCEB500BD8C73008C5A
      3900000000000000000000000000000000000000000000000000A6928B00A692
      8B00FF004300FF00430000000000FF004300FF00430000000000FF004300FF00
      430084776A0084706300847063000000000000000000000000000000000084C6
      7300A5B53900ADDE8C00DEFFCE00FFFFFF00ADEFB50029C65A00D69C0800EF84
      0000C68C1000BDBD7300000000000000000000000000CEB5AD00FFFFFF00FFFF
      FF00FFFFFF00DECEC600FFFFFF00FFFFFF00FFFFFF00D6C6B500FFFFFF00FFF7
      F700FFF7EF00B5A594005239290000000000D6B5A50000000000FFFFFF00FFFF
      FF00FFFFFF00CECEE700427BE7007BCEEF001052CE00E7C6BD00C6947B008C5A
      3900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF004300FF00430000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5CE9400BDC65A00B5E78C00BDDE8C00C6E7BD00B5D69400BD940800F79C
      2100BDBD730000000000000000000000000000000000CEB5AD00FFFFFF00FFFF
      FF00FFFFFF00DECEC600FFFFFF00FFFFFF00FFFFFF00D6C6BD00FFFFFF00FFFF
      FF00FFF7F700B5A594005239290000000000D6BDAD0000000000FFFFFF00FFFF
      FF00FFFFFF00E7E7F7007394E7005294EF006384D600F7D6CE00C69C7B00945A
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF004300FF00430000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDE7A500CED6AD00C6B56300F7AD9C00BDBD73000000
      00000000000000000000000000000000000000000000CEB5AD00CEB5AD00C6B5
      A500C6B5A500C6AD9C00BDAD9C00BDA59400B59C9400B59C8C00AD948400A594
      8400A58C7B00A58C7B009C84730000000000D6BDAD0000000000000000000000
      00000000000000000000E7E7FF00ADB5EF00F7E7E700FFF7E700DEB59C009463
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CEB59C00D6BDAD00D6BDAD00D6B5
      A500CEB5A500CEAD9C00CEAD9400CEA58C00BD947B00B58C7300AD846B00A57B
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF004300FF00430000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5A59400634A
      3100634A3100634A3100634A3100634A3100634A3100634A3100634A3100634A
      3100634A31000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF004300FF00430000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5A59400FFFF
      FF00B5A59400B5A59400B5A59400B5A59400B5A59400B5A59400B5A59400B5A5
      9400634A31000000000000000000000000000000000000000000000000000000
      0000FF004300FF00430000000000FF004300FF00430000000000FF004300FF00
      430000000000000000000000000000000000000000009F928400A6989200A698
      8B00A6928B009F8B84009F9284009F8B8400988B7E00988B7E00988477009884
      77009284770092847700000000000000000000000000000000009F928400A698
      9200A6988B00A6928B009F8B84009F9284009F8B8400988B7E00988B7E009884
      7700988477009284770092847700000000000000000000000000B5A59400FFFF
      FF009C219C00FFFFFF00F7F7EF00F7E7E700EFDED6008C088C00E7CEBD00B5A5
      9400634A310000000000000000000000000000000000000000009F928400A698
      9200A6988B00FF004300FF004300FF004300FF004300FF004300FF0043009884
      770098847700928477009284770000000000000000009F8B8400FF004300FFFF
      FF00FFFFFF009F928400FFF7EF00FFEFE700FFE7DE00988B7E00F7DECE00F7D6
      C600FF00430092847700000000000000000000000000000000009F8B8400FF00
      4300FFFFFF00FFFFFF009F928400FFF7EF00FFEFE700FFE7DE00988B7E00F7DE
      CE00F7D6C600FF00430092847700000000000000000000000000B5A59400AD29
      AD00A529A5009C21A5009C189C0094109400941094008C088C008C088C00B5A5
      9400634A310000000000000000000000000000000000000000009F8B8400FFFF
      FF00FFFFFF00FFFFFF00FF004300FF004300FF004300FF004300988B7E00F7DE
      CE00F7D6C600F7CEB5009284770000000000000000009F928400FF004300FF00
      4300FFFFFF009F928400FFF7F700FFF7EF00FFEFE7009F8B8400FFE7D600F7DE
      CE00FF004300FF00430000000000000000000000000000000000FF004300FF00
      4300FFFFFF00FFFFFF009F928400FFF7F700FFF7EF00FFEFE7009F8B8400FFE7
      D600FF004300FF00430092847700000000000000000000000000B5A59400FFFF
      FF00AD31AD00FFFFFF00FFFFFF00FFF7F700F7EFE70094109400E7D6CE00B5A5
      9400634A310000000000000000000000000000000000000000009F928400FFFF
      FF00FFFFFF00FFFFFF009F928400FF004300FF004300FFEFE7009F8B8400FFE7
      D600F7DECE00F7D6C6009284770000000000000000009F928400A6989200FF00
      4300FF00430092989200A6989200A6988B00A6928B009F9284009F8B8400988B
      7E00988B7E00FF004300FF0043000000000000000000FF004300FF004300A698
      9200A6988B00A6928B0092989200A6989200A6988B00A6928B009F928400FF00
      4300FF004300988B7E0092847700000000000000000000000000BDA59400FFFF
      FF00B539B500FFFFFF00FFFFFF00FFFFF700F7EFEF009C189C00EFDED600B5A5
      9400634A310000000000000000000000000000000000000000009F928400A698
      9200A6988B00A6928B0092989200A6989200A6988B00A6928B009F9284009F8B
      8400988B7E00988B7E009284770000000000FF004300FF004300FF004300FF00
      4300FF004300FF004300FFFFFF00FFFFFF00FFF7F700A6928B00FF004300FF00
      4300FF004300FF004300FF004300FF004300FF004300FF004300FF004300FF00
      4300FF004300FF004300AC9F9800FFFFFF00FFFFFF00FFF7F700FF004300FF00
      4300FF004300FF004300FF004300FF0043000000000000000000BDAD9C00FFFF
      FF00B539BD00FFFFFF00FFFFFF00FFFFFF00FFF7F7009C219C00EFE7DE00B5A5
      9400634A310000000000000000000000000000000000000000009F8B8400FFFF
      FF00FFFFFF00FFFFFF00AC9F9800FFFFFF00FFFFFF00FFF7F700A6928B00FFEF
      E700FFE7DE00FFE7D6009284770000000000FF004300FF004300FF004300FF00
      4300FF004300FF004300FFFFFF00FFFFFF00FFFFFF00A6988B00FF004300FF00
      4300FF004300FF004300FF004300FF004300FF004300FF004300FF004300FF00
      4300FF004300FF004300AC9F9800FFFFFF00FFFFFF00FFFFFF00FF004300FF00
      4300FF004300FF004300FF004300FF0043000000000000000000C6AD9C00FFFF
      FF00BD42BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A529A500F7E7E700B5A5
      9400634A310000000000000000000000000000000000000000009F928400FFFF
      FF00FFFFFF00FFFFFF00AC9F9800FF004300FF004300FFFFFF00A6988B00FFF7
      EF00FFEFE700FFE7DE009284770000000000000000009F928400BAB2AC00FF00
      4300FF004300B2A69800AC9F9800AC9F9800AC9F9200A6989200A6988B00A692
      8B009F928400FF004300FF0043000000000000000000FF004300FF004300BAB2
      AC00B2A69F00B2A69F00B2A69800AC9F9800AC9F9800AC9F9200A6989200FF00
      4300FF0043009F92840092847700000000000000000000000000CEB5A500FFFF
      FF00C64AC600FFFFFF00FFFFFF00FFFFFF00FFFFFF00AD31AD00F7EFEF00B5A5
      9400634A310000000000000000000000000000000000000000009F928400BAB2
      AC00B2A69F00B2A69F00B2A69800FF004300FF004300AC9F9200A6989200A698
      8B00A6928B009F928400928477000000000000000000A6928B00FF004300FF00
      4300FFFFFF00B2A69F00FFFFFF00FFFFFF00FFFFFF00AC9F9200FFFFFF00FFF7
      F700FF004300FF00430000000000000000000000000000000000FF004300FF00
      4300FFFFFF00FFFFFF00B2A69F00FFFFFF00FFFFFF00FFFFFF00AC9F9200FFFF
      FF00FF004300FF00430092847700000000000000000000000000CEB5A500FFFF
      FF00CE52CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B539B500B5A59400B5A5
      9400634A31000000000000000000000000000000000000000000A6928B00FFFF
      FF00FFFFFF00FFFFFF00B2A69F00FF004300FF004300FFFFFF00AC9F9200FFFF
      FF00FFF7F700FFF7EF00928477000000000000000000A6928B00FF004300FFFF
      FF00FFFFFF00B2A69F00FFFFFF00FFFFFF00FFFFFF00AC9F9800FFFFFF00FFFF
      FF00FF0043009284770000000000000000000000000000000000A6928B00FF00
      4300FFFFFF00FFFFFF00B2A69F00FFFFFF00FFFFFF00FFFFFF00AC9F9800FFFF
      FF00FFFFFF00FF00430092847700000000000000000000000000D6BDAD00FFFF
      FF00CE5AD600FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5A59400634A3100634A
      3100634A31000000000000000000000000000000000000000000A6928B00FFFF
      FF00FF004300FF004300B2A69F00FF004300FF004300FFFFFF00FF004300FF00
      4300FFFFFF00FFF7F700928477000000000000000000A6928B00A6928B009F92
      84009F9284009F8B7E00988B7E0098847700927E7700927E70008B776A008477
      6A00847063008470630000000000000000000000000000000000A6928B00A692
      8B009F9284009F9284009F8B7E00988B7E0098847700927E7700927E70008B77
      6A0084776A008470630084706300000000000000000000000000D6BDAD00D663
      DE00D663D600CE5AD600CE52CE00C652CE00C64AC600BDA59400D6C6BD00634A
      3100E7D6CE000000000000000000000000000000000000000000A6928B00A692
      8B009F928400FF004300FF004300FF004300FF004300FF004300FF0043008B77
      6A0084776A008470630084706300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEC6B500FFFF
      FF00D663DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6AD9C00634A3100E7D6
      CE00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF004300FF004300FF004300FF004300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEC6B500DEC6
      B500DEC6B500DEC6B500DEC6B500D6BDAD00CEBDAD00CEB5A500E7D6CE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF004300FF00430000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AFC5AFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7E7DE007B6352007B634A007B5A
      4A00735A4A00735A42006B5242006B5239006B4A3900634A3100634A3100634A
      3100CEC6BD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000B5000000B500000000000000000000000000549B
      5BFF098617FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000033330000333300003333000033
      3300003333000033330000333300003333000033330000333300003333000033
      3300003333000033330000333300003333009C847300FFEFDE00B5A59400B5A5
      9400B5A59400B5A59400B5A59400B5A59400B5A59400B5A59400B5A59400B5A5
      9400634A3100CEC6BD000000000000000000000000000000B5000000B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000B5000000B500000000000000000000000000D2E2D3FF00BC
      1DFF00A816FF529A57FF007A08FF009C12FF00A818FF389D45FFDEE9DFFF0000
      00000000000000000000000000000000000000333300000000003333CC003333
      CC003333CC000000000000333300000000000000000000333300000000003333
      CC003333CC003333CC000000000000333300A5847300FFFFFF00FFFFF700FFF7
      EF00FFF7E700FFEFDE00F7DECE00F7CEB500EFC6A50031319400F7BD9400B5A5
      9400735A4200634A3100CEC6BD0000000000000000000000B5000000B5000000
      B500000000000000000000000000000000000000000000000000000000000000
      00000000B5000000B5000000000000000000000000000000000000CE22FF00BC
      1DFF00A816FF009810FF00A515FF00AF18FF00B91BFF00C31FFF00CD22FF01BC
      1FFFE8F1E9FF00000000000000000000000000333300003333003333CC000033
      CC003333CC000033330000333300003333000033330000333300003333003333
      CC003300CC003333CC000033330000333300A58C7B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF00F7E7DE00EFD6C60039944A00EFC6AD00B5A5
      94007B6352006B523900634A310000000000000000000000B5000000B5000000
      B5000000B5000000000000000000000000000000000000000000000000000000
      B5000000B500000000000000000000000000000000000DB328FF00D023FF00BC
      1DFF009710FF009B11FF00A515FF00AF18FF00B81BFF00C01EFF00CD22FF00D7
      25FF00E129FF69AD71FF000000000000000000333300000000003333CC003333
      CC003333CC00000000000033330000000000000000000033330000000000CCCC
      66003333CC003333CC000000000000333300AD947B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700F7E7E700EFDECE00EFD6C600E7C6
      B5008C736300735A4A00634A31000000000000000000000000000000D6000000
      BD000000B5000000B500000000000000000000000000000000000000B5000000
      B500000000000000000000000000000000006FB178FF00E329FF00D023FF00A0
      13FF00910EFF009B11FFA3BDA4FF00000000000000000000000000000000FDFD
      FDFF85B189FF01B920FF29A53CFF0000000000333300003333003333CC003300
      CC003333CC000033330000333300003333000033330000333300003333003333
      CC003300CC003333CC000033330000333300AD948400D6C6B500CEBDAD00BDAD
      A500B5A59400AD9484009C8C7B00947B6B008C736300846B5A007B635200735A
      4A00947B6B00846B5A006B524200000000000000000000000000000000000000
      00000000B5000000B5000000B500000000000000B5000000B5000000B5000000
      000000000000000000000000000000000000389544FF00B71EFF00D023FF0088
      0BFF00910EFF009B11FF518E55FF000000000000000000000000000000000000
      00000000000000000000F5F8F5FF5F8860FF00333300000000003333CC003333
      CC003333CC000000000000333300000000000000000000333300000000003333
      CC003333CC003333CC000000000000333300BDA58C00FFF7F700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7F700F7EFEF00F7EF
      E700A58C7B008C7363007B634A00000000000000000000000000000000000000
      0000000000000000B5000000C6000000C6000000CE000000B500000000000000
      000000000000000000000000000000000000000000000000000000000000DCE5
      DCFF69966BFF03720CFF009612FF000000000000000000000000000000000000
      00000000000000000000000000000000000000333300003333003333CC006666
      99003333CC000033CC003333CC003333CC00666699003333CC00666699003333
      CC00000099003333CC000033330000333300E7DED600BDA59400CEB5A500C6AD
      9C00CEB5A500BDA59400AD9484009C8473008C7363007B634A00735A4A00846B
      5A00B59C94009C8473007B5A4A00000000000000000000000000000000000000
      000000000000000000000000C6000000C6000000DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000096AD96FFBBCDBCFF000000000000
      00000000000000000000000000000000000000333300000000003333CC003333
      CC003333CC009999FF003333CC003333CC003333CC003333CC003333CC003333
      CC003333CC003333CC00000000000033330000000000E7D6D600C6AD9C00DECE
      BD00FFFFFF00FFFFFF00FFFFFF00FFF7F700F7EFE700EFE7DE00BDAD9C007B63
      4A00A58C7B00C6AD9C007B634A00000000000000000000000000000000000000
      0000000000000000B5000000D6000000CE000000DE000000EF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F7F4FF00C31FFF00CD22FF00CA
      22FF179028FF8AAF8DFFF7F9F7FF0000000000333300003333003333CC003333
      CC003333CC000033330000333300003333000033330000333300003333003333
      CC003333CC003333CC0000333300003333000000000000000000F7F7EF00C6AD
      9C00FFFFFF00EFE7E700D6CEC600D6CEC600CEBDB500D6C6B500E7D6CE00846B
      5A007B635200B59C8C00B5A59400000000000000000000000000000000000000
      00000000E7000000DE000000D60000000000000000000000E7000000EF000000
      000000000000000000000000000000000000215E21FF739673FF000000000000
      0000000000000000000000000000000000000000000000B71CFF00CD22FF00D7
      25FF00C821FF00D926FF00EC2CFFB1D0B4FF00333300000000003333CC000033
      CC003333CC000000000000333300000000000000000000333300000000003333
      CC000033CC003333CC000000000000333300000000000000000000000000DED6
      C600DED6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700EFDED600CEBD
      AD007B5A4A00C6BDB50000000000000000000000000000000000000000000000
      FF000000DE000000EF00000000000000000000000000000000000000FF000000
      F70000000000000000000000000000000000000000003D763DFF007D08FF0070
      07FF448146FF8DAA8DFFA0B9A1FF79A17BFF0F811CFF00C31FFF00CD22FF00CC
      21FF00C51FFF00D926FF33A744FF000000000033330000333300003333000000
      0000003333003333CC003333CC0000333300003333003333CC003333CC000033
      330000000000003333000033330000333300000000000000000000000000FFFF
      F700CEBDAD00FFFFF700F7EFEF00D6CEC600D6CEC600CEBDB500C6B5AD00E7D6
      CE00846B5A00846B5200000000000000000000000000000000000000F7000000
      F7000000FF000000000000000000000000000000000000000000000000000000
      F7000000F7000000000000000000000000000000000000000000A9C1A9FF0087
      0AFF00910EFF009A11FF00A414FF00AE18FF00B91BFF00C31FFF00BA1CFF00B1
      18FF00C51FFF00C722FF00000000000000000033330000000000003333000000
      0000003333003300CC003333CC0000000000000000003333CC003300CC000033
      3300000000000033330000000000003333000000000000000000000000000000
      0000EFE7DE00DECEBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7
      E700CEB5AD007B634A000000000000000000000000000000F7000000F7000000
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000F70000000000000000000000000000000000000000000000
      00004E9252FF009A11FF00A414FF00AE18FF00B81BFF008E0DFF009D12FF00B1
      18FF00C51FFFF5F9F5FF00000000000000000033330000333300003333000033
      3300003333003333CC003333CC003333CC003333CC003333CC003333CC000033
      3300003333000033330000333300003333000000000000000000000000000000
      000000000000EFE7DE00D6BDAD00D6BDAD00D6BDAD00D6BDAD00D6BDAD00D6BD
      AD00D6BDAD00D6BDAD0000000000000000000000F7000000F7000000F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F9F7FFBBD1BCFFC1D3C1FFFEFEFEFFA5C1A6FF00B1
      18FF98C19CFF0000000000000000000000000033330000000000003333000000
      00000033330000000000003333003333CC00CCCCCC0000333300000000000033
      3300000000000033330000000000003333000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000F7000000F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002290
      2FFF000000000000000000000000000000000033330000333300003333000033
      3300003333000033330000333300003333000033330000333300003333000033
      3300003333000033330000333300003333000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000846B5200212939002129390021293900212939002129
      39002129390021293900212939002129390000000000EFCECE00C6636300AD52
      5200A55252009C4A52009C4A4A00944A4A008C4242008C424200844242007B39
      39007B393900733939006B313100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000073848C0063848C00637B8400526B
      7B004A636B0042526300394A5200293942002129310018212900101818000810
      100008101800000000000000000000000000BDCED600637B8C004A5A6B004252
      630031424A00212939008C735A00EFDED600B5A59400B5A59400B5A59400B5A5
      9400B5A59400B5A59400B5A594002129390000000000CE6B6B00F78C8C00E784
      8400AD42210042312100C6B5AD00C6BDB500CEC6BD00CECEC600524A4A009C39
      31009C3931009C39310073393900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000738494008CA5AD006BB5D600008C
      CE00008CCE00008CCE00008CC600088CBD000884B500107BAD0018739C001873
      9400214A5A0084A5AD000000000000000000737B8C0021B5EF00008CCE00008C
      CE00008CCE00008CCE00947B6300EFE7E700EFDED600E7D6C600DEC6BD00D6BD
      B500CEBDAD00CEB5AD00B5A594002129390000000000D66B7300FF9C9C00EF84
      8400E7848400735A4A00423931008C7B6B00EFE7DE00F7E7E7008C7B7300A542
      3100A54239009C3931007B393900000000000000000000000000000000000000
      000000000000000000005C5C5C0000000000000000005C5C5C00000000000000
      0000000000000000000000000000000000007B8C94007BBDD6008CA5AD007BDE
      FF005ACEFF0052CEFF004AC6FF0042BDF70031B5F70029ADEF0021A5E700108C
      D600216384005A6B6B000000000000000000738494006BCEEF0010B5F70008AD
      EF0000A5E7000094D6009C846B00F7F7EF00C6AD9C00C6AD9C00BDAD9C00B5A5
      9400D6BDB500B5A59400B5A594002129390000000000D6737300FF9CA500F794
      9400EF848400735A4A000000000042393100EFDECE00EFDED60084736300AD4A
      4200AD4A4200A54239007B393900000000000000000000000000000000000000
      0000000000005C5C5C005C5C5C00000000005C5C5C005C5C5C00000000000000
      0000000000000000000000000000000000007B8C9C007BD6EF008CA5AD008CC6
      CE0073DEFF0063D6FF005ACEFF0052CEFF004AC6FF0039BDF70031B5EF0029AD
      EF001084CE00214A5A009CB5BD00000000007B8C940073D6EF0029BDF70010B5
      F70000ADEF00009CDE00A58C7B00FFFFFF00F7F7EF00EFE7E700EFDED600E7D6
      C600735A4A0063524200524A42003939390000000000D67B7B00FFADAD00FF9C
      A500F7949400735A4A00735A4A00735A4A00735A4A00736352007B6B5A00BD52
      5200B54A4A00AD4A420084424200000000000000000000000000000000000000
      00005C5C5C00939300005C5C5C005C5C5C00939300005C5C5C00000000000000
      00000000000000000000000000000000000084949C0084D6EF007BC6E7008CA5
      B50084DEFF006BD6FF0063D6FF0063D6FF005ACEFF004AC6FF0042BDF70039B5
      F70031ADEF00216B84007B94A500000000007B8C9C0084DEF70042CEF70029BD
      F70010B5F70000A5E700AD948400FFFFFF00C6AD9C00C6AD9C00BDAD9C00EFDE
      D6007B634A00D6C6BD00635242000000000000000000DE848400FFB5B500FFAD
      AD00FFA5A500F78C8C00EF848400E7848400DE7B7B00D6737300D66B6B00C65A
      5A00BD525200B5524A008C424200000000000000000000000000000000005C5C
      5C009D9D00009A9A00005C5C5C009D9D00009A9A00005C5C5C005C5C5C005C5C
      5C005C5C5C005C5C5C00000000000000000084949C008CDEF7008CE7FF008CAD
      B5008CBDC60073DEFF0063D6FF0063D6FF0063D6FF005AD6FF0052CEFF004AC6
      FF0042BDF70029A5DE00526373009CB5BD0084949C0094E7F70063D6F7004ACE
      F70031C6F70010ADEF00B59C8C00FFFFFF00FFFFFF00FFFFFF00F7F7EF00EFE7
      E700846B52007B634A00000000000000000000000000DE8C8C00FFBDBD00FFB5
      B500CE636300C65A5200BD5A4A00BD523900B54A3100AD422900A5421800A539
      1000C65A5A00BD5252008C4242000000000000000000000000005C5C5C008D8D
      00008D8D00005C5C5C008D8D00008D8D00008E8E00008D8D0000909000009393
      0000868600005C5C5C000000000000000000849CA50094E7F7009CEFFF0084C6
      DE008CA5B50084DEFF0084E7FF0084E7FF0084E7FF0084E7FF0084DEFF007BDE
      FF0073DEFF006BD6FF0052ADD6008C9CA500849CA5009CEFF70084E7F7006BDE
      F70052CEF70008B5F700B5A58C00B59C8C00AD948400A58C7B009C847300947B
      63008C735A0000000000000000000000000000000000E7949400FFBDBD00CE63
      6300FFFFFF00FFFFFF00FFFFF700F7EFEF00F7E7DE00EFDED600E7D6C600E7CE
      BD00A5391000C65A5A00944A4A0000000000000000005C5C5C009D9D0000ABAB
      00005C5C5C009D9D0000ABAB0000A9A90000A9A90000A9A90000A9A90000AEAE
      0000A3A300005C5C5C0000000000000000008C9CA5009CE7F7009CEFFF009CEF
      FF008CADBD008CADBD008CADB5008CA5B50084A5AD00849CAD00849CA5007B94
      A5007B949C007B8C9C007B8C9400738C94008C9CA500ADF7FF009CEFFF008CE7
      F7006BD6EF0010A5D60010A5D60010A5D6000894CE000094CE00008CCE00008C
      CE003139420000000000000000000000000000000000E7949C00FFBDBD00D66B
      6B00FFFFFF00FFFFFF00FFFFFF00FFFFF700F7EFEF00F7E7DE00EFDED600E7D6
      C600A5421800CE6363009C4A4A000000000000000000000000005C5C5C00BABA
      0000C6C600005C5C5C00BABA0000C6C60000C1C10000BFBF0000C0C00000C2C2
      0000C2C200005C5C5C0000000000000000008CA5AD00A5EFF700A5EFFF009CEF
      FF009CEFFF007BDEFF0063D6FF0063D6FF0063D6FF0063D6FF0063D6FF0063D6
      FF00738C94000000000000000000000000008CA5AD00ADF7FF00A5F7FF005A7B
      8C005A737B00526B7B00526B73004A6373004A637300425A6B00216B9400008C
      CE00394A5A0000000000000000000000000000000000EF9C9C00FFBDBD00DE73
      7300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700F7EFEF00F7E7DE00EFDE
      D600AD422900D67373009C4A5200000000000000000000000000000000005C5C
      5C00B3B30000ACAC00005C5C5C00B3B30000ACAC00005C5C5C005C5C5C005C5C
      5C005C5C5C005C5C5C0000000000000000008CA5AD00A5EFF700ADF7F700A5EF
      FF009CEFFF009CEFFF0073D6FF008C9CA500849CA50084949C007B949C007B8C
      9400738C94000000000000000000000000008CA5AD00ADF7FF00ADF7FF005A84
      94008CC6CE0094E7F7007BD6E70063C6DE004A9CB500395A6300187BA500008C
      CE004A5A6B0000000000000000000000000000000000EFA5A500FFBDBD00E784
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700F7EFEF00F7E7
      DE00B54A3100DE7B7B00A5525200000000000000000000000000000000000000
      00005C5C5C00A3A300005C5C5C005C5C5C00A3A300005C5C5C00000000000000
      0000000000000000000000000000000000008CA5AD00A5D6DE00ADF7F700ADF7
      F700A5EFFF009CEFFF008CA5AD00B5CED6000000000000000000000000000000
      0000000000000000000000000000000000008CA5AD00ADF7F700ADF7FF00A5EF
      F7007394A500A5EFF700637B8C007BC6D6004A6B7B0031637B005AC6EF0021B5
      EF004A5A6B0000000000000000000000000000000000F7ADAD00FFBDBD00EF8C
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700F7EF
      EF00BD52390063313100AD525200000000000000000000000000000000000000
      0000000000005C5C5C005C5C5C00000000005C5C5C005C5C5C00000000000000
      000000000000000000000000000000000000BDCED6008CA5AD008CA5AD008CA5
      AD008CA5AD008CA5AD00B5CED600000000000000000000000000000000000000
      000000000000000000000000000000000000B5CECE008CA5AD008CA5AD008CA5
      AD005A8C9C00A5EFEF009CEFF7008CD6E7004263730073848C007B8C94007384
      9400BDCED60000000000000000000000000000000000F7B5B500FFBDBD00FF94
      9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700BD5A4A00B55A5A00B55A5A00000000000000000000000000000000000000
      000000000000000000005C5C5C0000000000000000005C5C5C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084B5C60084ADBD007B9CB500BDCED60000000000000000000000
      00000000000000000000000000000000000000000000F7B5B500F7B5B500F7B5
      B500F7ADAD00EFA5AD00EFA5A500E79C9C00E7949400E78C8C00DE848C00DE84
      8400D67B7B00D6737300D66B7300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDA5
      9400945A420063423100A58C8400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C8C8400634A3100634A3100634A3100634A3100634A3100634A3100634A
      3100634A3100634A310000000000000000000000000000000000000000000000
      000000000000000000005C5C5C0000000000000000005C5C5C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BD6B4200AD522900AD522900A55221009C4A2100944A
      21008C4221008C4221008442210000000000000000000000000000000000CE84
      6300AD6339008C52310063423100BDBDBD00BD9C9400634231005A393100AD94
      8400000000000000000000000000000000000000000000000000000000000000
      00009C8C7B00FFFFFF00DEC6AD00D6BDAD00CEB5A500CEB5A500C6AD9C00BDA5
      9400B5A59400634A310000000000000000000000000000000000000000000000
      000000000000000000005C5C5C005C5C5C00000000005C5C5C005C5C5C000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C67B5200FFFFF700CEB59C00CEAD9C00CEAD9C00C6AD
      9C00C6AD9C00C6AD94008C42210000000000000000000000000000000000DE84
      5200C6B5AD00BD9C8C00844A3100C6C6C600C6846300AD633900633929002921
      2100000000000000000000000000000000000000000000000000000000000000
      00009C8C7B00FFFFFF00FFFFF700F7F7EF00F7EFE700EFDED600E7D6CE00E7CE
      BD00BDA59400634A310000000000000000000000000000000000000000000000
      000000000000000000005C5C5C00939300005C5C5C005C5C5C00939300005C5C
      5C00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CE846300FFFFFF00DE8C5A00D6845200D6845200D684
      5200D6845200C6AD9C008C42210000000000000000000000000000000000E784
      5200C6B5AD00BDADAD008C523100BDBDB500D67B5200C6B5AD00AD9484006B42
      2900000000000000000000000000000000000000000000000000000000000000
      00009C8C8400FFFFFF00FFFFFF00FFF7F700F7EFEF00F7E7DE00EFDED600E7D6
      C600C6AD9C00634A3100000000000000000000000000000000005C5C5C005C5C
      5C005C5C5C005C5C5C005C5C5C009A9A00009D9D00005C5C5C009A9A00009D9D
      00005C5C5C00000000000000000000000000B5A59400634A3100634A3100634A
      3100634A3100634A3100D6947300FFFFFF00FFFFFF00FFEFEF00F7DED600F7CE
      BD00EFC6AD00C6AD9C009442210000000000000000000000000000000000DE9C
      7300E7845200B56342008C5239009C735A00CE734A00C6BDB500BD9C94008C52
      3100000000000000000000000000000000000000000000000000000000000000
      0000A5948400FFFFFF00FFFFFF00FFFFFF00FFF7F700F7EFEF00EFE7DE00EFDE
      D600CEB5A500634A3100000000000000000000000000000000005C5C5C008686
      000093930000909000008D8D00008E8E00008D8D00008D8D00005C5C5C008D8D
      00008D8D00005C5C5C000000000000000000B5A59400FFF7F700EFDED600E7DE
      CE00E7D6C600DECEBD00DE9C8400FFFFFF00F7A57B00E7946B00DE8C5A00D684
      5200D6845200CEAD9C009C4A210000000000000000000000000000000000CEB5
      AD00EF8C5A00DE8452009C5A420094634200BD734A00D67B4A00BD6B4200AD84
      7300000000000000000000000000000000000000000000000000000000000000
      0000A5948C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700F7EFE700EFE7
      DE00CEB5A500634A3100000000000000000000000000000000005C5C5C00A3A3
      0000AEAE0000A9A90000A9A90000A9A90000A9A90000ABAB00009D9D00005C5C
      5C00ABAB00009D9D00005C5C5C0000000000B5A59400FFFFF700E7AD8400DEA5
      7300DE9C6B00D6946B00E7AD9400FFFFFF00FFFFFF00FFFFFF00FFF7F700F7E7
      DE00F7D6C600CEAD9C009C4A2100000000000000000000000000000000000000
      0000CEB5AD00DE9C7300DE845200C68C7300CE7B4A00D67B5200C6947300BDA5
      9C00000000000000000000000000000000000000000000000000000000000000
      0000AD9C8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7EF00F7EF
      E700D6BDAD00634A3100000000000000000000000000000000005C5C5C00C2C2
      0000C2C20000C0C00000BFBF0000C1C10000C6C60000BABA00005C5C5C00C6C6
      0000BABA00005C5C5C000000000000000000BDA59400FFFFFF00FFF7F700F7EF
      EF00F7E7E700EFDED600E7B59C00FFFFFF00FFAD8C00FFAD8C00F7DED600E78C
      6300B5522900AD522900A5522100000000000000000000000000000000000000
      000000000000000000008C7363007363520084635200AD9C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B59C9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700F7F7
      EF00DEC6AD00634A3100000000000000000000000000000000005C5C5C005C5C
      5C005C5C5C005C5C5C005C5C5C00ACAC0000B3B300005C5C5C00ACAC0000B3B3
      00005C5C5C00000000000000000000000000C6AD9C00FFFFFF00FFC69C00F7BD
      8C00E7AD8400DEA57300EFBDA500FFFFFF00FFFFFF00FFFFFF00FFFFFF00EF9C
      7300F7CEB500B5522900EFD6CE00000000000000000000000000000000000000
      000000000000BDB5B5008C8473007B6B63006B5A520073736B00000000000000
      0000000000000000000000000000000000000000000073C6E70084DEEF0084E7
      FF0039BDE7009CDEDE0094E7F70084D6EF00FFFFFF00FFFFFF00FFFFFF00C6AD
      9C00C6AD9C00634A310000000000000000000000000000000000000000000000
      000000000000000000005C5C5C00A3A300005C5C5C005C5C5C00A3A300005C5C
      5C0000000000000000000000000000000000C6B5A500FFFFFF00FFFFFF00FFFF
      FF00FFF7F700F7EFE700F7C6AD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFA5
      8400C6633100F7DECE0000000000000000000000000000000000000000000000
      000000000000BDB5AD00A5948C00ADA59C008C847300635A5200000000000000
      000000000000000000000000000000000000000000009CE7F70031B5DE007BEF
      FF005AC6E70094F7FF0029B5DE00A5EFFF00FFFFFF00FFFFFF00AD9C8C00634A
      3100634A3100634A310000000000000000000000000000000000000000000000
      000000000000000000005C5C5C005C5C5C00000000005C5C5C005C5C5C000000
      000000000000000000000000000000000000CEBDAD00FFFFFF00FFDEBD00FFD6
      AD00F7DED600B5A59400F7C6AD00EFC6AD00EFC6AD00EFBDA500EFB59400EFB5
      9400FFE7DE000000000000000000000000000000000000000000000000000000
      000000000000BDB5AD00A5948C00CEC6C600CEC6C6006B5A5200ADADAD000000
      0000000000000000000000000000000000000000000094EFFF0094F7FF00BDFF
      FF00ADEFF700C6FFFF0094F7FF009CF7FF00FFFFFF00FFFFFF00AD9C8C00D6C6
      BD00634A3100D6CEC60000000000000000000000000000000000000000000000
      000000000000000000005C5C5C0000000000000000005C5C5C00000000000000
      000000000000000000000000000000000000D6BDAD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDA59400D6C6BD008C735A00E7DEDE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AD9C9400B5ADA500C6C6C600EFE7E7007B6B6300ADADAD000000
      0000000000000000000000000000000000000000000021ADDE0052BDE700ADEF
      F700F7FFFF00B5EFF70052BDE70031BDE700FFFFFF00FFFFFF00B5A59400634A
      3100D6CEC6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEC6B500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6B5A500A5846300E7DEDE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDB500A5948C00BDBDBD0000000000DEDEDE00BDB5AD00A5A59C000000
      0000000000000000000000000000000000000000000094EFFF0094F7FF00C6FF
      FF00ADE7F700C6FFFF0094F7FF008CD6E700B5A59400B5A59400B5A59400D6CE
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEC6B500DEC6B500D6BDAD00D6BD
      AD00CEBDAD00CEB5A500EFE7DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDB500B5AD9C000000000000000000CECECE00E7DEDE00A59494000000
      0000000000000000000000000000000000000000000094E7F70031BDE7008CF7
      FF005AC6E70094F7FF0029B5DE008CDEF7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063C6E70084DEEF0094EF
      FF0021ADDE008CEFFF008CDEF70084CEE7000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000A00000000100010000000000000500000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFC00FFFFFFFFFFFFFC00FBFF
      FF9FF9FF0000F9FFFF8FF1FF0000F8FFFFC7E3FF00008001FFE3C7FF00008001
      FFE3C7FF00008001E0718E0700008001E0F18F0700008001E0718E0700008001
      E0218407000F8001E0018007000F8001EC018037000F8001FE03C07F000F8001
      FF87E1FFFFFF8001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000F8000FFFFFFFF
      000F8000FFFF8003000F8000FFFF0001000F800080010001000F800080010001
      000F800080010001000E800080010001000C8000800100010000800080010001
      00008000800100010000800080010001F000800080010001F800C00180010001
      FC00FFFF80018003FFFFFFFFFFFFFFFFFFFFFFFF9FF9FFFFFFFFFFFF8FF38003
      FFFFFFFF87E70003FFFFFFFFC3CF000300200400800100018021840180010000
      F021840F80010000FC23C43F80010001F6A3C56F80010000F267E64F80010000
      F827E41F80010001FC6FF63F80010000FEFFFF7F00010000FFFFFFFF00010001
      FFFFFFFF80010003FFFFFFFFFFFF0007FFFFFFFFFE01FFFFFFFFFFFFFE01FFFF
      FFFFFF87FE01FFFF8181FE07FE01FFFF8181F80700018001C181C00700018001
      8181C00780018001C183C00780018001C183FFFF80018001E187FFFF00018001
      E187C00780018001F98FC00780018001F98FF00780018001F98FF80780018001
      FFFFFE0780018001FFFFFF87FCFFFFFFFE7FFFFFFE01C000FC3FFFFFFE01C000
      F81FFC1FFE01CC00C241F007FE01C000C001E00380010000C001E00380010000
      C001C00180010000C001C00180010000C001C00180010008C001C00180010000
      C001C00180014000C001E0038001400FC241E0038001400FFE7FF0078001400F
      FE7FFC1F80017C0FFFFFFFFFFFFF000FFFFFFFFFFFFFFE7FFFFFFFFFC007FE7F
      FFFFFFFFC007F24F8003C001C007C0018003C001C007C0018003C001C007C001
      80018001C007C00100000000C007C00100000000C007C00180018001C007C001
      8003C001C007C0018003C001C007C0018003C001C007C001FFFFFFFFC00FFC3F
      FFFFFFFFC01FFE7FFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFF0007FFFCE7FF0000
      00039FF9C01F45A200018FF3C0070000000187E7800345A20001C3CF01E10000
      0001F11F01FC45A20001F83FE1FF00000001FC7FFF3F40028001F83FFF010000
      C001F19F3F8045A2E003E3CF80011008E003C7E7C003518AF0038FFBF0030000
      F8031FFFFC07542AFFFF3FFFFFEF0000FFFFFFFFFFFFFFFFFFFFFC008001FFFF
      000700008001FFFF000300008001FDBF000300008001F93F000100008001F03F
      000100018001E003000000038001C0030000000780018003000000078001C003
      000700078001E003000700078001F03F00FF00078001F93F01FF00078001FDBF
      FFFFF87F8001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFF003
      FDBFFC01E00FF003FC9FFC01E00FF003FC0FFC01E00FF003C0070001E00FF003
      C0030001E00FF003C0010001F00FF003C0030001FC3FF003C0070001F83F8003
      FC0F0003F83F8003FC9F0007F81F8003FDBF007FF81F8007FFFF00FFF11F800F
      FFFF01FFF31F80FFFFFFFFFFFFFF80FF00000000000000000000000000000000
      000000000000}
  end
  object TreeViewStatesImageList: TImageList
    Left = 720
    Top = 478
    Bitmap = {
      494C010106000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000CDBBA8009F7C54009F7C
      54009F7C54009F7C54009F7C54009F7C54009F7C54009F7C54009F7C54009F7C
      54009F7C5400AB8C690000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF000000000000000000000000000000000000000000BCA58A00BEAE9B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008F66380000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      84000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000FFFFFF0000000000000000000000000000000000B29C8100BEAE9B00F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900000000008F66380000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      840042424200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000B29C8100BEAE9B00F6F7
      F700F3916100E9895A00DE825500D27C5100C7754D00BC6E4800BD755300F8F9
      F900000000008F66380000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484004242
      4200FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00000000000000000000000000B29C8100BEAE9B00F2F4
      F400F68C5800EC855100E27D4B00D4754700C96E4100BC663C00B8633A00F8F9
      F900000000008F66380000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484004242
      4200FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF00000000000000000000000000B29C8100BEAE9B00EFF1
      F100FD945F00F68D5800ED865200E27E4D00D6774600CA6E4100C8754D00F8F9
      F900000000008F66380000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484004242
      4200FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF00000000000000000000000000B29C8100BEAE9B00ECEE
      EE00FF9B6600FD935E00F78D5800ED865300E17F4C00D5764700D27B5100F8F9
      F900000000008F66380000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484004242
      4200FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00000000000000000000000000B29C8100BEAE9B00E9EC
      EC00FFA06D00FF996400FC935E00F78C5800ED865200E17D4B00DE825600F8F9
      F900000000008F66380000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      840042424200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000B29C8100BEAE9B00E7EA
      EA00FFA67700FFA06D00FF996400FE935E00F68D5800EC845200E8895B00F8F9
      F900000000008F66380000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      84004242420042424200FFFFFF00FFFFFF00FFFFFF00FFFFFF00424242004242
      4200FFFFFF0000000000000000000000000000000000B29C8100BEAE9B00E4E7
      E700FFAD8200FFA77700FFA06D00FF9B6600FD945F00F68C5800F2895500F8F9
      F900000000008F66380000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840042424200424242004242420042424200848484008484
      84000000000000000000000000000000000000000000B29C8100BEAE9B00E0E4
      E400E3E6E600E6E9E900E9ECEC00ECEEEE00EFF1F100F2F4F400F4F6F600F8F9
      F900000000008F66380000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484008484840084848400000000000000
      00000000000000000000000000000000000000000000B29C8100AC957900CCC3
      B600CCC3B600CCC3B600CCC3B600CCC3B600CCC3B600CCC3B600CCC3B600CCC3
      B600CCC3B6008F66380000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C3BBAE00AC957900AC95
      7900AC957900AC957900AC957900AC957900AC957900AC957900AC957900AC95
      7900AC957900C5B0990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7F7F700FFFFFF00FFFFFF00F7F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7F7F700000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000CDBBA8009F7C54009F7C
      54009F7C54009F7C54009F7C54009F7C54009F7C54009F7C54009F7C54009F7C
      54009F7C5400AB8C6900000000000000000000000000CDBBA8009F7C54009F7C
      54009F7C54009F7C54009F7C54009F7C54009F7C54009F7C54009F7C54009F7C
      54009F7C5400AB8C690000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF005A5A
      5A00000000000000000000000000000000000000000000000000000000000000
      0000D6D6D600F7F7F700FFFFFF00FFFFFF0000000000BCA58A00BEAE9B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008F663800000000000000000000000000BCA58A00BEAE9B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008F66380000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF0000000000000000000000000000000000FFFFFF00FFFFFF00B5B5B5000000
      0000000000000000000000000000A5A5A500B5B5B500E7E7E700393939000000
      000000000000FFFFFF00FFFFFF00FFFFFF0000000000B29C8100BEAE9B00F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900000000008F663800000000000000000000000000B29C8100BEAE9B00F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900000000008F66380000000000000000000000000000000000000000008484
      84000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000FFFFFF00000000000000000000000000FFFFFF00FFFFFF00000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF004242420000000000FFFFFF00FFFFFF0000000000B29C8100BEAE9B00F6F7
      F700F6F7F700F6F7F700F6F7F700F6F7F700F6F7F700F6F7F700F6F7F700F8F9
      F900000000008F663800000000000000000000000000B29C8100BEAE9B00F6F7
      F700F6F7F700EFF4F000F3D6C600F6F7F700F6F7F700F6F7F700F6F7F700F8F9
      F900000000008F66380000000000000000000000000000000000000000008484
      840042424200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00000000000000000000000000FFFFFF00DEDEDE00000000000000
      0000FFFFFF00FFFFFF00636363000000000029292900FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00ADADAD00FFFFFF0000000000B29C8100BEAE9B00F2F4
      F400F2F4F400F2F4F400F2F4F400F2F4F400F2F4F400F2F4F400F4F6F600F8F9
      F900000000008F663800000000000000000000000000B29C8100BEAE9B00F2F4
      F400F2F4F400E3A07A00CD672C00EAB89B00F2F4F400F2F4F400F4F6F600F8F9
      F900000000008F66380000000000000000000000000000000000848484004242
      4200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF000000000000000000FFFFFF006B6B6B0000000000A5A5
      A500FFFFFF00737373006B6B6B00FFFFFF00E7E7E70000000000FFFFFF005252
      5200E7E7E700FFFFFF0039393900FFFFFF0000000000B29C8100BEAE9B00EFF1
      F100EFF1F100EFF1F100EFF1F100EFF1F100EFF1F100F2F4F400F4F6F600F8F9
      F900000000008F663800000000000000000000000000B29C8100BEAE9B00EFF1
      F100F0CEBA00CD672C00CD672C00D2692D00F1D1BF00F2F4F400F4F6F600F8F9
      F900000000008F66380000000000000000000000000000000000848484004242
      4200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF000000000000000000FFFFFF005252520000000000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00CECECE00FFFFFF009494
      940029292900FFFFFF00FFFFFF00FFFFFF0000000000B29C8100BEAE9B00ECEE
      EE00ECEEEE00ECEEEE00ECEEEE00ECEEEE00EFF1F100F2F4F400F4F6F600F8F9
      F900000000008F663800000000000000000000000000B29C8100BEAE9B00ECEE
      EE00D87E4A00D77A4500E5A98700D2692D00D5713800F7E5DB00F4F6F600F8F9
      F900000000008F66380000000000000000000000000000000000848484004242
      4200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF000000000000000000FFFFFF00ADADAD00000000009C9C
      9C00FFFFFF004A4A4A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001010
      100008080800FFFFFF00FFFFFF00FFFFFF0000000000B29C8100BEAE9B00E9EC
      EC00E9ECEC00E9ECEC00E9ECEC00ECEEEE00EFF1F100F2F4F400F4F6F600F8F9
      F900000000008F663800000000000000000000000000B29C8100BEAE9B00E9EC
      EC00D6753E00ECC1A800E9ECEC00EAB99D00CD672C00DA845200EDF3EF00F8F9
      F900000000008F66380000000000000000000000000000000000848484004242
      4200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF000000000000000000FFFFFF00FFFFFF0000000000A5A5
      A500FFFFFF00FFFFFF0094949400FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000063636300FFFFFF00FFFFFF00FFFFFF0000000000B29C8100BEAE9B00E7EA
      EA00E7EAEA00E7EAEA00E9ECEC00ECEEEE00EFF1F100F2F4F400F4F6F600F8F9
      F900000000008F663800000000000000000000000000B29C8100BEAE9B00E7EA
      EA00F0CCB700E7EAEA00E9ECEC00ECEEEE00E19A7200CD672C00F1D1BE00F8F9
      F900000000008F66380000000000000000000000000000000000000000008484
      840042424200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00000000000000000000000000FFFFFF00FFFFFF0010101000C6C6
      C60000000000E7E7E700FFFFFF00FFFFFF00FFFFFF00ADADAD00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000B29C8100BEAE9B00E4E7
      E700E4E7E700E6E9E900E9ECEC00ECEEEE00EFF1F100F2F4F400F4F6F600F8F9
      F900000000008F663800000000000000000000000000B29C8100BEAE9B00E4E7
      E700E4E7E700E6E9E900E9ECEC00ECEEEE00E9EEEA00D87C4700F1D1BE00F8F9
      F900000000008F66380000000000000000000000000000000000000000008484
      84004242420042424200FFFFFF00FFFFFF00FFFFFF00FFFFFF00424242004242
      4200FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00000000000000000000000000000000000000000000000000B5B5
      B500FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000B29C8100BEAE9B00E0E4
      E400E3E6E600E6E9E900E9ECEC00ECEEEE00EFF1F100F2F4F400F4F6F600F8F9
      F900000000008F663800000000000000000000000000B29C8100BEAE9B00E0E4
      E400E3E6E600E6E9E900E9ECEC00ECEEEE00EFF1F100F2F4F400F4F6F600F8F9
      F900000000008F66380000000000000000000000000000000000000000000000
      0000848484008484840042424200424242004242420042424200848484008484
      840000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0008080800000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000B29C8100AC957900CCC3
      B600CCC3B600CCC3B600CCC3B600CCC3B600CCC3B600CCC3B600CCC3B600CCC3
      B600CCC3B6008F663800000000000000000000000000B29C8100AC957900CCC3
      B600CCC3B600CCC3B600CCC3B600CCC3B600CCC3B600CCC3B600CCC3B600CCC3
      B600CCC3B6008F66380000000000000000000000000000000000000000000000
      0000000000000000000084848400848484008484840084848400000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF006B6B6B00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C3BBAE00AC957900AC95
      7900AC957900AC957900AC957900AC957900AC957900AC957900AC957900AC95
      7900AC957900C5B09900000000000000000000000000C3BBAE00AC957900AC95
      7900AC957900AC957900AC957900AC957900AC957900AC957900AC957900AC95
      7900AC957900C5B0990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
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
      00000000000000000000000000000000FFFFFFFF00000000FFFFFFFF00000000
      FC3F800300000000F3CF9FFB00000000EC37800B00000000E017800B00000000
      C00B800B00000000C00B800B00000000C00B800B00000000C00B800B00000000
      E017800B00000000E007800B00000000F00F800B00000000FC3F800300000000
      FFFF800300000000FFFFFFFF000000000000FFFFFFFFFFFF0000FFFFFFFFFFFF
      000080038003FC3F00009FFB9FFBF3CF0000800B800BEC370000800B800BE017
      0000800B800BC00B0000800B800BC00B0000800B800BC00B0000800B800BC00B
      0000800B800BE0170000800B800BE0070000800B800BF00F000080038003FC3F
      000080038003FFFF0000FFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [fdEffects, fdForceFontExist]
    Left = 545
    Top = 478
  end
  object MainMenu: TTntMainMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    BiDiMode = bdLeftToRight
    Images = MenuImages
    OwnerDraw = True
    ParentBiDiMode = False
    Left = 644
    Top = 478
    object FileMenuItem: TTntMenuItem
      Caption = 'File'
      Hint = 'Contains commands for working with design files'
      OnClick = FileMenuItemClick
      IgnoreAllMenuChanges = False
      object NewDesignMenuItem: TTntMenuItem
        Caption = '&New Design...'
        Hint = 'Creates new design'
        ImageIndex = 3
        ShortCut = 16462
        OnClick = NewDesignMenuItemClick
        IgnoreAllMenuChanges = False
      end
      object OpenDesignMenuItem: TTntMenuItem
        Caption = '&Open Design...'
        Hint = 'Opens a design file from the disk'
        ImageIndex = 4
        ShortCut = 16463
        OnClick = OpenDesignMenuItemClick
        IgnoreAllMenuChanges = False
      end
      object SaveDesignMenuItem: TTntMenuItem
        Caption = '&Save Design'
        Hint = 'Saves changes to the current design'
        ImageIndex = 6
        ShortCut = 16467
        OnClick = SaveDesignMenuItemClick
        IgnoreAllMenuChanges = False
      end
      object SaveDesignAsMenuItem: TTntMenuItem
        Caption = 'Save Design &As...'
        Hint = 'Saves the current design as another file'
        OnClick = SaveDesignAsMenuItemClick
        IgnoreAllMenuChanges = False
      end
      object N1: TTntMenuItem
        Caption = '-'
        IgnoreAllMenuChanges = False
      end
      object ExportLCDMenuItem: TTntMenuItem
        Caption = '&Export Design...'
        Hint = 'Generates output'
        ImageIndex = 18
        ShortCut = 8311
        OnClick = ExportLCDMenuItemClick
        IgnoreAllMenuChanges = False
      end
      object QuickExportMenuItem: TTntMenuItem
        Caption = '&Quick Export'
        Hint = 
          'Generates output based on the settings in the Export Design wind' +
          'ow'
        ImageIndex = 22
        ShortCut = 119
        OnClick = QuickExportMenuItemClick
        IgnoreAllMenuChanges = False
      end
      object N2: TTntMenuItem
        Caption = '-'
        IgnoreAllMenuChanges = False
      end
      object ImportPictureFileMenuItem: TTntMenuItem
        Caption = '&Import Picture...'
        Hint = 'Imports pictures to the design'
        ImageIndex = 19
        ShortCut = 16457
        OnClick = ImportPictureFileMenuItemClick
        IgnoreAllMenuChanges = False
      end
      object N3: TTntMenuItem
        Caption = '-'
        IgnoreAllMenuChanges = False
      end
      object PrinterSetupMenuItem: TTntMenuItem
        Caption = 'Print Set&up...'
        Hint = 'Changes print settings'
        ImageIndex = 14
        OnClick = PrinterSetupMenuItemClick
        IgnoreAllMenuChanges = False
      end
      object PrintLCDMenuItem: TTntMenuItem
        Caption = '&Print...'
        Hint = 'Prints the design'
        ImageIndex = 8
        ShortCut = 16464
        OnClick = PrintLCDMenuItemClick
        IgnoreAllMenuChanges = False
      end
      object N4: TTntMenuItem
        Caption = '-'
        IgnoreAllMenuChanges = False
      end
      object RUFLMenuSplitter: TTntMenuItem
        Caption = '-'
        IgnoreAllMenuChanges = False
      end
      object ExitMenuItem: TTntMenuItem
        Caption = 'E&xit'
        Hint = 'Quits LED Font Generator'
        OnClick = ExitMenuItemClick
        IgnoreAllMenuChanges = False
      end
    end
    object EditMenuItem: TTntMenuItem
      Caption = 'Edit'
      Hint = 'Contains general edit commands'
      OnClick = EditMenuItemClick
      IgnoreAllMenuChanges = False
      object UndoMenuItem: TTntMenuItem
        Caption = '&Undo'
        Hint = 'Undo the last change made on the design'
        ImageIndex = 32
        ShortCut = 16474
        OnClick = UndoMenuItemClick
        IgnoreAllMenuChanges = False
      end
      object RedoMenuItem: TTntMenuItem
        Caption = '&Redo'
        Hint = 'Redo the last undid change'
        ImageIndex = 33
        ShortCut = 24666
        OnClick = RedoMenuItemClick
        IgnoreAllMenuChanges = False
      end
      object N16: TTntMenuItem
        Caption = '-'
        IgnoreAllMenuChanges = False
      end
      object CutMenuItem: TTntMenuItem
        Caption = 'Cu&t'
        Hint = 'Clears the selected cells and copies them onto the clipboard'
        ImageIndex = 2
        ShortCut = 16472
        OnClick = CutMenuItemClick
        IgnoreAllMenuChanges = False
      end
      object CopyMenuItem: TTntMenuItem
        Caption = '&Copy'
        Hint = 'Copies the selected cells onto the clipboard'
        ImageIndex = 1
        ShortCut = 16451
        OnClick = CopyMenuItemClick
        IgnoreAllMenuChanges = False
      end
      object PasteMenuItem: TTntMenuItem
        Caption = '&Paste'
        Enabled = False
        Hint = 
          'Inserts the cells you have copied or cut in the current cursor l' +
          'ocation'
        ImageIndex = 5
        ShortCut = 16470
        OnClick = PasteMenuItemClick
        IgnoreAllMenuChanges = False
      end
      object DeleteMenuItem: TTntMenuItem
        Caption = 'Cle&ar'
        Hint = 'Clears selected cells'
        ImageIndex = 9
        ShortCut = 46
        OnClick = DeleteMenuItemClick
        IgnoreAllMenuChanges = False
      end
    end
    object ViewMenuItem: TTntMenuItem
      Caption = 'View'
      Hint = 'Contains commands for manipulating the view'
      OnClick = ViewMenuItemClick
      IgnoreAllMenuChanges = False
      object CharacterLibraryPaneMenuItem: TTntMenuItem
        AutoCheck = True
        Caption = '&Character Library'
        Checked = True
        Hint = 'Displays Character Library pane'
        ShortCut = 16465
        OnClick = CharacterLibraryPaneMenuItemClick
        IgnoreAllMenuChanges = False
      end
      object TextToLCDPaneMenuItem: TTntMenuItem
        AutoCheck = True
        Caption = '&Text to LCD'
        Checked = True
        Hint = 'Displays Text to LCD pane'
        OnClick = TextToLCDPaneMenuItemClick
        IgnoreAllMenuChanges = False
      end
      object LCDPicturePreviewMenuItem: TTntMenuItem
        AutoCheck = True
        Caption = 'Design &Picture Preview'
        Hint = 'Displays the Design Picture Preview window'
        OnClick = LCDPicturePreviewMenuItemClick
        IgnoreAllMenuChanges = False
      end
      object N14: TTntMenuItem
        Caption = '-'
        IgnoreAllMenuChanges = False
      end
      object ToolbarsMenuItem: TTntMenuItem
        Caption = '&Toolbars'
        Hint = 'Shows or hides toolbars'
        OnClick = ToolbarsMenuItemClick
        IgnoreAllMenuChanges = False
        object GeneralToolBarMenuItem: TTntMenuItem
          AutoCheck = True
          Caption = 'General'
          Checked = True
          Hint = 'Displays the General toolbar'
          OnClick = GeneralToolBarMenuItemClick
          IgnoreAllMenuChanges = False
        end
        object DesignToolBarMenuItem: TTntMenuItem
          AutoCheck = True
          Caption = 'Design'
          Checked = True
          Hint = 'Displays the Design toolbar'
          OnClick = DesignToolBarMenuItemClick
          IgnoreAllMenuChanges = False
        end
        object ImportExportToolBarMenuItem: TTntMenuItem
          AutoCheck = True
          Caption = 'Import && Export'
          Checked = True
          Hint = 'Displays the Import & Export toolbar'
          OnClick = ImportExportToolBarMenuItemClick
          IgnoreAllMenuChanges = False
        end
      end
      object StatusBarMenuItem: TTntMenuItem
        AutoCheck = True
        Caption = '&Status Bar'
        Checked = True
        Hint = 'Shows or hides the status bar'
        OnClick = StatusBarMenuItemClick
        IgnoreAllMenuChanges = False
      end
      object N5: TTntMenuItem
        Caption = '-'
        IgnoreAllMenuChanges = False
      end
      object FullScreenMenuItem: TTntMenuItem
        Caption = '&Full Screen'
        Hint = 'Maximizes window to full screen'
        ImageIndex = 31
        ShortCut = 122
        OnClick = FullScreenMenuItemClick
        IgnoreAllMenuChanges = False
      end
      object N8: TTntMenuItem
        Caption = '-'
        IgnoreAllMenuChanges = False
      end
      object RefreshCharacterLibraryMenuItem: TTntMenuItem
        Caption = '&Refresh Character Library'
        Hint = 'Refreshes the Character Library contents from the disk'
        ImageIndex = 10
        ShortCut = 116
        OnClick = RefreshCharacterLibraryMenuItemClick
        IgnoreAllMenuChanges = False
      end
    end
    object LCDMenuItem: TTntMenuItem
      Caption = 'Design'
      Hint = 'Contains commands for manipulating and editing the design'
      OnClick = LCDMenuItemClick
      IgnoreAllMenuChanges = False
      object SelectAllMenuItem: TTntMenuItem
        Caption = 'Select A&ll'
        Hint = 'Selects all the cells of the design'
        ImageIndex = 30
        ShortCut = 16449
        OnClick = SelectAllMenuItemClick
        IgnoreAllMenuChanges = False
      end
      object ClearAllMenuItem: TTntMenuItem
        Caption = 'Cle&ar All'
        Hint = 'Clears all the cells of the design'
        ImageIndex = 26
        ShortCut = 24641
        OnClick = ClearAllMenuItemClick
        IgnoreAllMenuChanges = False
      end
      object N6: TTntMenuItem
        Caption = '-'
        IgnoreAllMenuChanges = False
      end
      object ToggleSelectionMenuItem: TTntMenuItem
        Caption = 'To&ggle Selection'
        Hint = 'Toggles state of the selected cells'
        ShortCut = 16416
        OnClick = ToggleSelectionMenuItemClick
        IgnoreAllMenuChanges = False
      end
      object N18: TTntMenuItem
        Caption = '-'
        IgnoreAllMenuChanges = False
      end
      object FreeRotation1: TTntMenuItem
        Caption = 'Free Rotation'
        IgnoreAllMenuChanges = False
        object FRCWMenuItem: TTntMenuItem
          Caption = 'Clockwise'
          ShortCut = 16471
          OnClick = FRCWMenuItemClick
          IgnoreAllMenuChanges = False
        end
        object FRCCWMenuItem: TTntMenuItem
          Caption = 'Counter-clockwise'
          ShortCut = 24663
          IgnoreAllMenuChanges = False
        end
        object N21: TTntMenuItem
          Caption = '-'
          IgnoreAllMenuChanges = False
        end
        object SetFRAngleMenuItem: TTntMenuItem
          Caption = 'Set Free Rotation Angle...'
          OnClick = SetFRAngleMenuItemClick
          IgnoreAllMenuChanges = False
        end
        object SetRotationCentertoActiveCell1: TTntMenuItem
          Caption = 'Set Rotation Center to Active Cell'
          OnClick = SetRotationCentertoActiveCell1Click
          IgnoreAllMenuChanges = False
        end
      end
      object N20: TTntMenuItem
        Caption = '-'
        IgnoreAllMenuChanges = False
      end
      object RotatePageMenuItem: TTntMenuItem
        Caption = '&Rotate Page'
        Hint = 'Rotates design page'
        ImageIndex = 23
        IgnoreAllMenuChanges = False
        object RotatePage90CWMenuItem: TTntMenuItem
          Caption = '90'#176' &CW'
          Hint = 'Rotates design page 90'#176' clockwise'
          ImageIndex = 24
          OnClick = RotatePage90CWMenuItemClick
          IgnoreAllMenuChanges = False
        end
        object RotatePage90CCWMenuItem: TTntMenuItem
          Caption = '90'#176' CC&W'
          Hint = 'Rotates design page 90'#176' counter-clockwise'
          ImageIndex = 25
          OnClick = RotatePage90CCWMenuItemClick
          IgnoreAllMenuChanges = False
        end
        object N19: TTntMenuItem
          Caption = '-'
          IgnoreAllMenuChanges = False
        end
        object FlipHorizontalMenuItem: TTntMenuItem
          Caption = 'Flip &Horizontal'
          Hint = 'Mirrors design page horizontally'
          ImageIndex = 20
          ShortCut = 24648
          OnClick = FlipHorizontalMenuItemClick
          IgnoreAllMenuChanges = False
        end
        object FlipVerticalMenuItem: TTntMenuItem
          Caption = 'Flip &Vertical'
          Hint = 'Mirrors design page vertically'
          ImageIndex = 21
          ShortCut = 24662
          OnClick = FlipVerticalMenuItemClick
          IgnoreAllMenuChanges = False
        end
      end
      object ShiftAtCursorMenuItem: TTntMenuItem
        Caption = '&Shift At Cursor'
        Hint = 'Shifts the cells by clearing the shifted cells'
        IgnoreAllMenuChanges = False
        object ShiftLeftMenuItem: TTntMenuItem
          Caption = '&Left'
          Hint = 'Shifts left'
          ImageIndex = 7
          ShortCut = 24652
          OnClick = ShiftLeftMenuItemClick
          IgnoreAllMenuChanges = False
        end
        object ShiftRightMenuItem: TTntMenuItem
          Caption = '&Right'
          Hint = 'Shifts right'
          ImageIndex = 0
          ShortCut = 24658
          OnClick = ShiftRightMenuItemClick
          IgnoreAllMenuChanges = False
        end
      end
      object RotateLCDMenuItem: TTntMenuItem
        Caption = 'R&otate All'
        Hint = 
          'Shifts all the cells of the design by replacing the shifted cell' +
          's'
        IgnoreAllMenuChanges = False
        object RotateLCDLeftMenuItem: TTntMenuItem
          Caption = '&Left'
          Hint = 'Rotates left'
          OnClick = RotateLCDLeftMenuItemClick
          IgnoreAllMenuChanges = False
        end
        object RotateLCDRightMenuItem: TTntMenuItem
          Caption = '&Right'
          Hint = 'Rotates right'
          OnClick = RotateLCDRightMenuItemClick
          IgnoreAllMenuChanges = False
        end
        object RotateLCDUpMenuItem: TTntMenuItem
          Caption = '&Up'
          Hint = 'Rotates up'
          OnClick = RotateLCDUpMenuItemClick
          IgnoreAllMenuChanges = False
        end
        object RotateLCDDownMenuItem: TTntMenuItem
          Caption = '&Down'
          Hint = 'Rotates down'
          OnClick = RotateLCDDownMenuItemClick
          IgnoreAllMenuChanges = False
        end
      end
      object RotateSelectionMenuItem: TTntMenuItem
        Caption = 'Ro&tate Selection'
        Hint = 
          'Shifts the selected cells of the design by replacing the shifted' +
          ' cells'
        IgnoreAllMenuChanges = False
        object RotateSelLeftMenuItem: TTntMenuItem
          Caption = '&Left'
          Hint = 'Rotates selection left'
          ImageIndex = 13
          ShortCut = 16460
          OnClick = RotateSelLeftMenuItemClick
          IgnoreAllMenuChanges = False
        end
        object RotateSelRightMenuItem: TTntMenuItem
          Caption = '&Right'
          Hint = 'Rotates selection right'
          ImageIndex = 12
          ShortCut = 16466
          OnClick = RotateSelRightMenuItemClick
          IgnoreAllMenuChanges = False
        end
        object RotateSelUpMenuItem: TTntMenuItem
          Caption = '&Up'
          Hint = 'Rotates selection up'
          ImageIndex = 15
          ShortCut = 16469
          OnClick = RotateSelUpMenuItemClick
          IgnoreAllMenuChanges = False
        end
        object RotateSelDownMenuItem: TTntMenuItem
          Caption = '&Down'
          Hint = 'Rotates selection down'
          ImageIndex = 16
          ShortCut = 16452
          OnClick = RotateSelDownMenuItemClick
          IgnoreAllMenuChanges = False
        end
      end
      object N9: TTntMenuItem
        Caption = '-'
        IgnoreAllMenuChanges = False
      end
      object CreateCharacterMenuItem: TTntMenuItem
        Caption = '&Create Character from Selection...'
        Hint = 'Creates a character from the selection'
        ImageIndex = 11
        ShortCut = 16456
        OnClick = CreateCharacterMenuItemClick
        IgnoreAllMenuChanges = False
      end
      object N10: TTntMenuItem
        Caption = '-'
        IgnoreAllMenuChanges = False
      end
      object ImportPictureLCDMenuItem: TTntMenuItem
        Caption = '&Import Picture...'
        Hint = 'Imports pictures to the design'
        ImageIndex = 19
        ShortCut = 16457
        Visible = False
        OnClick = ImportPictureLCDMenuItemClick
        IgnoreAllMenuChanges = False
      end
      object N11: TTntMenuItem
        Caption = '-'
        Visible = False
        IgnoreAllMenuChanges = False
      end
      object LCDOptionsMenuItem: TTntMenuItem
        Caption = 'P&roperties...'
        Hint = 'Changes the design properties (color, ...)'
        ImageIndex = 28
        ShortCut = 115
        OnClick = LCDOptionsMenuItemClick
        IgnoreAllMenuChanges = False
      end
    end
    object ToolsMenuItem: TTntMenuItem
      Caption = 'Tools'
      Hint = 'Contains miscellaneous tools and options'
      OnClick = ToolsMenuItemClick
      IgnoreAllMenuChanges = False
      object CharacterLibraryOrganizerMenuItem: TTntMenuItem
        Caption = 'Character Library Or&ganizer...'
        Hint = 'A tool for organizing Character Library'
        ImageIndex = 27
        ShortCut = 24647
        OnClick = CharacterLibraryOrganizerMenuItemClick
        IgnoreAllMenuChanges = False
      end
      object N12: TTntMenuItem
        Caption = '-'
        IgnoreAllMenuChanges = False
      end
      object LCDAnimatorMenuItem: TTntMenuItem
        Caption = 'Design &Animator...'
        Hint = 'A tool for animating the current design'
        ImageIndex = 35
        ShortCut = 24654
        OnClick = LCDAnimatorMenuItemClick
        IgnoreAllMenuChanges = False
      end
      object CharacterDesignerMenuItem: TTntMenuItem
        Caption = 'Character &Designer...'
        Hint = 'A tool for designing characters'
        ImageIndex = 11
        OnClick = CharacterDesignerMenuItemClick
        IgnoreAllMenuChanges = False
      end
      object N13: TTntMenuItem
        Caption = '-'
        IgnoreAllMenuChanges = False
      end
      object LanguageMenuItem: TTntMenuItem
        Caption = '&Language...'
        Hint = 'Changes the program language'
        ImageIndex = 17
        OnClick = LanguageMenuItemClick
        IgnoreAllMenuChanges = False
      end
      object N15: TTntMenuItem
        Caption = '-'
        IgnoreAllMenuChanges = False
      end
      object ProgramOptionsMenuItem: TTntMenuItem
        Caption = '&Options...'
        Hint = 'Changes the program options'
        ImageIndex = 29
        ShortCut = 16458
        OnClick = ProgramOptionsMenuItemClick
        IgnoreAllMenuChanges = False
      end
    end
    object HelpMenuItem: TTntMenuItem
      Caption = 'Help'
      Hint = 'Contains commands for displaying help'
      OnClick = HelpMenuItemClick
      IgnoreAllMenuChanges = False
      object ShowDefaultHelpMenuItem: TTntMenuItem
        AutoHotkeys = maManual
        Caption = 'ShowDefaultHelpMenuItem'
        Hint = 'Displays help in the default help language'
        ShortCut = 112
        OnClick = ShowDefaultHelpMenuItemClick
        IgnoreAllMenuChanges = False
      end
      object QuickHelpMenuItem: TTntMenuItem
        Caption = '&Quick Help'
        Hint = 
          'Displays a short help about how to start using LED Font Generato' +
          'r'
        ShortCut = 8304
        Visible = False
        IgnoreAllMenuChanges = False
      end
      object DefaultHelpLanguageMenuItem: TTntMenuItem
        Caption = 'Default Help &Language...'
        Hint = 'Changes the default help language of the program'
        OnClick = DefaultHelpLanguageMenuItemClick
        IgnoreAllMenuChanges = False
      end
      object TipofthedayMenuItem: TTntMenuItem
        Caption = '&Tip of the day'
        Hint = 'Displays useful tips for working more efficiently'
        Visible = False
        IgnoreAllMenuChanges = False
      end
      object N7: TTntMenuItem
        Caption = '-'
        IgnoreAllMenuChanges = False
      end
      object LCDDesignerHomePageMenuItem: TTntMenuItem
        Caption = 'LED Font Generator &home page'
        Hint = 'Launches the LED Font Generator home page in the default browser'
        OnClick = LCDDesignerHomePageMenuItemClick
        IgnoreAllMenuChanges = False
      end
      object CheckForUpdatesMenuItem: TTntMenuItem
        Caption = 'Chec&k for Updates...'
        Visible = False
        OnClick = CheckForUpdatesMenuItemClick
        IgnoreAllMenuChanges = False
      end
      object N17: TTntMenuItem
        Caption = '-'
        IgnoreAllMenuChanges = False
      end
      object AboutMenuItem: TTntMenuItem
        Caption = '&About...'
        Hint = 'Displays program information, version number, and copyright'
        OnClick = AboutMenuItemClick
        IgnoreAllMenuChanges = False
      end
    end
  end
  object ButtonGlyphs: TImageList
    DrawingStyle = dsTransparent
    Left = 745
    Top = 478
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7D6CE00B59C
      7B00B59C7B00B59C7B00B59C7B00B59C7B00B59C7B00B59C7B00B59C7B00B59C
      7B00E7D6CE000000000000000000000000000000000000000000E7D6CE00B59C
      7B00B59C7B00B59C7B00B59C7B00B59C7B00B59C7B00B59C7B00B59C7B00B59C
      7B00E7D6CE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7D6CE00B59C7B00F7EF
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7EF
      E700B59C7B00E7D6CE00000000000000000000000000E7DED600B59C7B00F7EF
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7EF
      E700B59C7B00E7D6CE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B59C7B00F7EFE700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF009C5A4200FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7EFE700B59C7B00000000000000000000000000B59C7B00F7EFE700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7EFE700B59C7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B59C7B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF009C5A42009C5A42009C5A4200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B59C7B00000000000000000000000000B59C7B00F7F7F700FFFF
      FF009C5A42009C5A4200FFFFFF00FFFFFF00FFFFFF009C5A42009C5A4200FFFF
      FF00FFFFFF00B59C7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B59C7B00FFFFFF00FFFF
      FF00FFFFFF009C5A42009C5A4200FFFFFF009C5A42009C5A4200FFFFFF00FFFF
      FF00FFFFFF00B59C7B00000000000000000000000000B59C7B00FFFFFF00FFFF
      FF00FFFFFF009C5A42009C5A4200FFFFFF009C5A42009C5A4200FFFFFF00FFFF
      FF00FFFFFF00B59C7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B59C7B00FFFFFF00FFFF
      FF009C5A42009C5A4200FFFFFF00FFFFFF00FFFFFF009C5A42009C5A4200FFFF
      FF00FFFFFF00B59C7B00000000000000000000000000B59C7B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF009C5A42009C5A42009C5A4200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B59C7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B59C7B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF009C5A4200FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B59C7B00000000000000000000000000B59C7B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF009C5A4200FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B59C7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B59C7B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF009C5A42009C5A42009C5A4200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B59C7B00000000000000000000000000B59C7B00FFFFFF00FFFF
      FF009C5A42009C5A4200FFFFFF00FFFFFF00FFFFFF009C5A42009C5A4200FFFF
      FF00FFFFFF00B59C7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B59C7B00FFFFFF00FFFF
      FF00FFFFFF009C5A42009C5A4200FFFFFF009C5A42009C5A4200FFFFFF00FFFF
      FF00FFFFFF00B59C7B00000000000000000000000000B59C7B00FFFFFF00FFFF
      FF00FFFFFF009C5A42009C5A4200FFFFFF009C5A42009C5A4200FFFFFF00FFFF
      FF00FFFFFF00B59C7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B59C7B00FFFFFF00FFFF
      FF009C5A42009C5A4200FFFFFF00FFFFFF00FFFFFF009C5A42009C5A4200FFFF
      FF00F7F7F700B59C7B00000000000000000000000000B59C7B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF009C5A42009C5A42009C5A4200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B59C7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B59C7B00F7EFE700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7EFE700B59C7B00000000000000000000000000B59C7B00F7EFE700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF009C5A4200FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7EFE700B59C7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7D6CE00B59C7B00F7EF
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7EF
      E700B59C7B00E7DED600000000000000000000000000E7D6CE00B59C7B00F7EF
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7EF
      E700B59C7B00E7D6CE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7D6CE00B59C
      7B00B59C7B00B59C7B00B59C7B00B59C7B00B59C7B00B59C7B00B59C7B00B59C
      7B00E7D6CE000000000000000000000000000000000000000000E7D6CE00B59C
      7B00B59C7B00B59C7B00B59C7B00B59C7B00B59C7B00B59C7B00B59C7B00B59C
      7B00E7D6CE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      C007C00700000000800380030000000080038003000000008003800300000000
      8003800300000000800380030000000080038003000000008003800300000000
      8003800300000000800380030000000080038003000000008003800300000000
      C007C00700000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object TntXPMenu1: TTntXPMenu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Color = clBtnFace
    IconBackColor = clBtnFace
    MenuBarColor = clBtnFace
    SelectColor = clHighlight
    SelectBorderColor = clHighlight
    SelectFontColor = clMenuText
    DisabledColor = clInactiveCaption
    SeparatorColor = clBtnFace
    CheckedColor = clHighlight
    IconWidth = 24
    DrawSelect = True
    UseSystemColors = True
    OverrideOwnerDraw = False
    Gradient = True
    FlatMenu = False
    AutoDetect = True
    Active = True
    Left = 613
    Top = 478
  end
  object ApplicationEvents1: TApplicationEvents
    OnDeactivate = ApplicationEvents1Deactivate
    OnException = ApplicationEvents1Exception
    OnShortCut = ApplicationEvents1ShortCut
    Left = 432
    Top = 480
  end
  object UpdateCursorStatusTimer: TTimer
    Enabled = False
    Interval = 100
    OnTimer = UpdateCursorStatusTimerTimer
    Left = 399
    Top = 480
  end
  object ButtonGlyphs32: TImageList
    Width = 32
    Left = 781
    Top = 478
    Bitmap = {
      494C010102000400040020001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000001000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003A07090090121500C4AA
      AB000000000000000000000000003A07090090121500C4AAAB00000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F00202020005151
      5100B7B7B7007F7F7F007F7F7F007F7F7F002020200051515100B7B7B7007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000580B0D00AA151900E122
      2700C5ACAD0000000000000000005B0B0D00AA151900E1222700C5ACAD000000
      0000000000000000000000000000000000007F7F7F007F7F7F00313131005F5F
      5F0081818100B8B8B8007F7F7F007F7F7F00333333005F5F5F0081818100B8B8
      B8007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      00000000000000000000C7BBBB00E9606300A314180000000000000000000000
      0000C7BBBB00E9606300A1141800000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F00C1C1C100A4A4A4005B5B5B007F7F7F007F7F7F007F7F7F00C1C1
      C100A4A4A4005A5A5A007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009D141700DD1C
      2100E22B3000C5ACAC000000000000000000A5151800DE1C2100E22C3100C5AC
      AD00000000000000000000000000000000007F7F7F007F7F7F007F7F7F005858
      58007C7C7C0086868600B8B8B8007F7F7F007F7F7F005D5D5D007D7D7D008787
      8700B8B8B8007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      000000000000C7BCBC00EF8A8D00CB191E004C090B000000000000000000C7BC
      BC00EF8A8D00C8191E003D080900000000007F7F7F007F7F7F007F7F7F007F7F
      7F00C1C1C100BCBCBC00727272002A2A2A007F7F7F007F7F7F00C1C1C100BCBC
      BC0070707000222222007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008C11
      1500D91B2000E43D4100C6B1B10000000000000000008E121500DA1B2000E43D
      4100C6B0B1000000000000000000000000007F7F7F007F7F7F007F7F7F007F7F
      7F004E4E4E007A7A7A0090909000BBBBBB007F7F7F007F7F7F00505050007A7A
      7A0090909000BBBBBB007F7F7F007F7F7F000000000000000000000000000000
      0000C7BCBC00EF8C8F00D81B20004C0A0B000000000000000000C7BABB00EF8B
      8E00D61B20003D08090000000000000000007F7F7F007F7F7F007F7F7F00C1C1
      C100BDBDBD00797979002B2B2B007F7F7F007F7F7F00C0C0C000BDBDBD007878
      7800222222007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B9171B00EC757800EF878900C6B0B0000000000000000000B9171B00EC76
      7900EF8C8F00C7B6B60000000000000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F0068686800B0B0B000BBBBBB00BBBBBB007F7F7F007F7F7F006868
      6800B1B1B100BDBDBD00BEBEBE007F7F7F00000000000000000000000000C7BD
      BD00F29C9E00E33237004D0A0B000000000000000000C7BABA00F1979900E331
      360049090B000000000000000000000000007F7F7F007F7F7F00C2C2C200C7C7
      C7008A8A8A002B2B2B007F7F7F007F7F7F00C0C0C000C4C4C4008A8A8A002929
      29007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004909
      0B00E3313600F1979900C7BABA0000000000000000004D0A0B00E3323700F29C
      9E00C7BDBD000000000000000000000000007F7F7F007F7F7F007F7F7F007F7F
      7F00292929008A8A8A00C4C4C400C0C0C0007F7F7F007F7F7F002B2B2B008A8A
      8A00C7C7C700C2C2C2007F7F7F007F7F7F000000000000000000C7B6B600EF8C
      8F00EC767900B9171B000000000000000000C6B0B000EF878900EC757800B917
      1B00000000000000000000000000000000007F7F7F00BEBEBE00BDBDBD00B1B1
      B100686868007F7F7F007F7F7F00BBBBBB00BBBBBB00B0B0B000686868007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003D080900D61B
      2000EF8B8E00C7BABB0000000000000000004C0A0B00D81B2000EF8C8F00C7BC
      BC00000000000000000000000000000000007F7F7F007F7F7F007F7F7F002222
      220078787800BDBDBD00C0C0C0007F7F7F007F7F7F002B2B2B0079797900BDBD
      BD00C1C1C1007F7F7F007F7F7F007F7F7F00000000000000000000000000C6B0
      B100E43D4100DA1B20008E1215000000000000000000C6B1B100E43D4100D91B
      20008C1115000000000000000000000000007F7F7F007F7F7F00BBBBBB009090
      90007A7A7A00505050007F7F7F007F7F7F00BBBBBB00909090007A7A7A004E4E
      4E007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003D080900C8191E00EF8A
      8D00C7BCBC0000000000000000004C090B00CB191E00EF8A8D00C7BCBC000000
      0000000000000000000000000000000000007F7F7F007F7F7F00222222007070
      7000BCBCBC00C1C1C1007F7F7F007F7F7F002A2A2A0072727200BCBCBC00C1C1
      C1007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000C5ACAD00E22C3100DE1C2100A51518000000000000000000C5ACAC00E22B
      3000DD1C21009D14170000000000000000007F7F7F007F7F7F007F7F7F00B8B8
      B800878787007D7D7D005D5D5D007F7F7F007F7F7F00B8B8B800868686007C7C
      7C00585858007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A1141800E9606300C7BB
      BB00000000000000000000000000A3141800E9606300C7BBBB00000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F005A5A5A00A4A4
      A400C1C1C1007F7F7F007F7F7F007F7F7F005B5B5B00A4A4A400C1C1C1007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      000000000000C5ACAD00E1222700AA1519005B0B0D000000000000000000C5AC
      AD00E1222700AA151900580B0D00000000007F7F7F007F7F7F007F7F7F007F7F
      7F00B8B8B800818181005F5F5F00333333007F7F7F007F7F7F00B8B8B8008181
      81005F5F5F00313131007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      00000000000000000000C4AAAB00901215003A07090000000000000000000000
      0000C4AAAB00901215003A070900000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F00B7B7B70051515100202020007F7F7F007F7F7F007F7F7F00B7B7
      B70051515100202020007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000100000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFF0000FFFF00000000000000000000
      FFFF0000FFFF00000000000000000000FFFF0000FFFF00000000000000000000
      8E3F0000FFFF00000000000000000000861F0000FC7100000000000000000000
      C30F0000F86100000000000000000000E1870000F0C300000000000000000000
      F0C30000E18700000000000000000000E1870000C30F00000000000000000000
      C30F0000E18700000000000000000000861F0000F0C300000000000000000000
      8E3F0000F86100000000000000000000FFFF0000FC7100000000000000000000
      FFFF0000FFFF00000000000000000000FFFF0000FFFF00000000000000000000
      FFFF0000FFFF0000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object SaveDesignDialog: TTntSaveDialog
    Filter = 'LED Font Generator Design Files (*.LCD)|*.LCD'
    Options = [ofHideReadOnly, ofPathMustExist, ofCreatePrompt, ofEnableSizing]
    Title = 'Save Design As'
    OnCanClose = SaveDesignDialogCanClose
    Left = 504
    Top = 478
  end
  object OpenDesignDialog: TTntOpenDialog
    DefaultExt = 'LCD'
    Filter = 
      'LED Font Generator Design Files (*.LCD)|*.LCD|All Files (*.*)|*.' +
      '*'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Title = 'Open Design'
    Left = 464
    Top = 478
  end
  object CharLibPreviewTimer: TTimer
    Interval = 100
    OnTimer = CharLibPreviewTimerTimer
    Left = 301
    Top = 481
  end
  object ApplyAfterShowConfigTimer: TTimer
    Enabled = False
    Interval = 1
    OnTimer = ApplyAfterShowConfigTimerTimer
    Left = 335
    Top = 481
  end
  object ToolBarImages: TImageList
    Left = 814
    Top = 478
    Bitmap = {
      494C01011E002200040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000009000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005B62
      7100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005B627100D5BA
      C0005B627100000000000000000000000000000000005B6271005B6271005B62
      71005B6271005B6271005B627100000000000000000000000000000000000000
      00001D25DA001D25DA001D25DA001D25DA001D25DA001D25DA001D25DA001D25
      DA003F9200001D25DA001D25DA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005B627100D8C0C500D8C0
      C5005B627100000000000000000000000000000000005B627100D8C0C500D8C0
      C500D8C0C500D8C0C5005B6271005B6271000000000000000000000000000000
      0000000000001D25DA0000000000000000000000000000000000000000000000
      00003F9200000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005B627100DCC6CA00DCC6
      CA005B627100000000000000000000000000000000005B627100DCC6CA00DCC6
      CA00DCC6CA005B62710000000000000000000000000000000000000000000000
      000000000000000000001D25DA00000000000000000000000000000000000000
      00003F9200000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005B627100DFCBD000DFCBD0005B62
      710000000000000000000000000000000000000000005B627100DFCBD000DFCB
      D000DFCBD000DFCBD0005B627100000000000000000000000000000000000000
      00000000000000000000000000001D25DA000000000000000000000000000000
      00003F9200000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005B627100E3D1D500E3D1D5005B62
      710000000000000000000000000000000000000000005B627100E3D1D5005B62
      71005B627100E3D1D5005B627100000000000000000000000000000000000000
      0000000000000000000000000000000000001D25DA0000000000000000003F92
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005B627100E6D7DA00E6D7DA005B62
      71000000000000000000000000000000000000000000000000005B6271005B62
      71005B627100E6D7DA005B627100000000005B6271005B6271005B6271005B62
      7100000000005B6271005B6271005B6271005B6271001D25DA003F9200000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005B627100EADCDF00EADCDF005B62
      71000000000000000000000000000000000000000000000000005B6271000000
      00005B627100EADCDF005B62710000000000000000005B627100D4B9BF005B62
      7100000000005B627100E6D7DA00ECE1E3005B627100000000003F9200000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005B627100EDE2E4005B62
      7100000000000000000000000000000000000000000000000000000000000000
      00005B627100EDE2E4005B627100000000005B627100BE959D005B6271005B62
      710000000000000000005B6271005B6271005B62710000000000000000001D25
      DA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005B627100F1E8EA00F1E8
      EA005B6271000000000000000000000000000000000000000000000000005B62
      7100F1E8EA00F1E8EA005B627100000000005B627100BE959D005B6271005B62
      710000000000000000005B6271005B6271005B62710000000000000000000000
      00001D25DA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005B6271005B627100F4ED
      EF00F4EDEF005B6271005B6271000000000000000000000000005B627100F4ED
      EF00F4EDEF005B62710000000000000000005B627100AE7A85005B6271000000
      00000000000000000000000000005B6271005B62710000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005B627100F8F3
      F400F8F3F400F8F3F4005B6271005B6271005B6271005B627100F8F3F400F8F3
      F400F8F3F4005B6271000000000000000000000000005B627100AE7A85005B62
      7100000000005B6271005B627100DAC3C8005B62710000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005B62
      71005B627100FBF9F900FBF9F900FBF9F900FBF9F900FBF9F900FBF9F9005B62
      71005B62710000000000000000000000000000000000000000005B627100AE7A
      85005B627100BE959D00CEAFB6005B6271000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005B6271005B6271005B6271005B6271005B6271005B6271000000
      0000000000000000000000000000000000000000000000000000000000005B62
      71005B6271005B6271005B627100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005B6271000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2DBCE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DDB7A4009934010099340100A0401000F0DBD100000000000000
      000000000000000000000000000000000000000000009934010099340100B954
      0100000000000000000000000000000000000000000000000000000000000000
      0000B9540100993401009934010000000000000000005B6271005B6271005B62
      71005B6271005B6271005B627100000000000000000000000000000000005B62
      7100D5BAC0005B62710000000000000000000000000000000000000000000000
      0000000000000000000000000000E4C6B700DD845300F8E3D800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D7AB9500A0401000EACFC20000000000000000000000
      00000000000000000000000000000000000000000000A0401000A54B1F000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A54B1F0099340100000000005B6271005B627100D8C0C500D8C0
      C500D8C0C500D8C0C5005B627100000000000000000000000000000000005B62
      7100D8C0C500D8C0C5005B627100000000000000000000000000000000000000
      00000000000000000000E6CBBD00DB733E00FFBDA200DE855500F8E3D8000000
      000000000000000000000000000000000000000000000000000000000000C5A9
      9E00D4B4A800D7B5A700D5B1A200A54B1F00D1A99800CEA49200CCA18C00CB9E
      8A00CCA08C0000000000000000000000000000000000B954010000000000A54B
      1F00D4B4A800D7B5A700D5B1A200D4AE9D00D1A99800CEA49200CCA18C00CB9E
      8A00A54B1F0000000000B95401000000000000000000000000005B627100DCC6
      CA00DCC6CA00DCC6CA005B627100000000000000000000000000000000005B62
      7100DCC6CA00DCC6CA005B627100000000000000000000000000000000000000
      000000000000EBD5C900CF642F00FB9C6700FFAE8800FFBFA500DF875800F9E3
      D9000000000000000000000000000000000000000000EACFC20000000000CAB0
      A500F1D7C900EBD3C700EAD0C200E8CABC00E4C6B700E0C1B300DDBCB000D0AC
      9F00CCA08A0000000000EACFC20000000000000000000000000000000000CAB0
      A500F1D7C900EBD3C700EAD0C200E8CABC00E4C6B700E0C1B300DDBCB000D0AC
      9F00CCA08A00000000000000000000000000000000005B627100DFCBD000DFCB
      D000DFCBD000DFCBD0005B627100000000000000000000000000000000000000
      00005B627100DFCBD000DFCBD0005B6271000000000000000000000000000000
      0000E7CEC100C8623000E8723400F68A4F00F99C6800FFAE8500FFBFA500E18C
      5F00FCEEE6000000000000000000000000000000000099340100EACFC200C8AE
      A300F4DDD200F7E8DF00F5E4DB00F3DED500F1DCD000F0D8CC00EFD6CB00DDBC
      AF00CFA28C00EACFC200A040100000000000000000000000000000000000C8AE
      A300F4DDD200F7E8DF00F5E4DB00F3DED500F1DCD000F0D8CC00EFD6CB00DDBC
      AF00CFA28C00000000000000000000000000000000005B627100E3D1D5005B62
      71005B627100E3D1D5005B627100000000000000000000000000000000000000
      00005B627100E3D1D500E3D1D5005B627100000000000000000000000000E6C9
      BA00D3652F00F5661D00F26A2400EE712C00F97E3E00FD894F00FF9A6900FFBF
      A500E08B5F00FDF1EA0000000000000000000000000099340100A54B1F00A54B
      1F00F5E2D600F6E6DE00F4E2D800F1DDD200F0D9CD00EDD5C900ECD3C800E0C1
      B200A54B1F00A54B1F009934010000000000000000000000000000000000C8AF
      A300F5E2D600F6E6DE00F4E2D800F1DDD200F0D9CD00EDD5C900ECD3C800E0C1
      B200D2A68F00000000000000000000000000000000005B627100E6D7DA005B62
      71005B6271005B62710000000000000000000000000000000000000000000000
      00005B627100E6D7DA00E6D7DA005B6271000000000000000000E6C8B9009048
      2400964D28009E532D00A6593300EE712C00EE712C00F97E3E00C8754A00D07B
      4F00D6805300E0875700FCF2EE00000000000000000099340100EACFC200C9AF
      A300F7E6DC00F6E7DE00F5E4DA00F4E1D600F3DED300F1D9CD00EED6C900E5C6
      B700D5A99300EACFC200A040100000000000000000000000000000000000C9AF
      A300F7E6DC00F6E7DE00F5E4DA00F4E1D600F3DED300F1D9CD00EED6C900E5C6
      B700D5A99300000000000000000000000000000000005B627100EADCDF005B62
      7100000000005B62710000000000000000000000000000000000000000000000
      00005B627100EADCDF00EADCDF005B6271000000000000000000000000000000
      00000000000000000000A6593300EE712C00EE712C00EE712C00C8754A000000
      00000000000000000000000000000000000000000000EACFC20000000000C9AF
      A300F8EBE300FAF1EC00F9F0EA00F7E7DE00EFD2C500EDCFC000EAC9B800E6C4
      B400D8AD970000000000EACFC20000000000000000000000000000000000C9AF
      A300F8EBE300FAF1EC00F9F0EA00F7E7DE00EFD2C500EDCFC000EAC9B800E6C4
      B400D8AD9700000000000000000000000000000000005B627100EDE2E4005B62
      7100000000000000000000000000000000000000000000000000000000000000
      00005B627100EDE2E4005B627100000000000000000000000000000000000000
      00000000000000000000A6593300AE5F3800B6663E00C06E4500C8754A000000
      000000000000000000000000000000000000000000000000000000000000CEB6
      AB00F6E8E000F5E7DE00F4E3DA00F1DED300EFD7CB00EDD3C600EBCFBF00EACC
      BC00DBB39E00000000000000000000000000000000000000000000000000CEB6
      AB00F6E8E000F5E7DE00F4E3DA00F1DED300EFD7CB00EDD3C600EBCFBF00EACC
      BC00DBB39E00000000000000000000000000000000005B627100F1E8EA00F1E8
      EA005B6271000000000000000000000000000000000000000000000000005B62
      7100F1E8EA00F1E8EA005B627100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0A0
      9600C1A19700C09E9400C09E9300A54B1F00BD988C00BC968800BA948600BA91
      8200BC92830000000000000000000000000000000000B954010000000000A54B
      1F00C1A19700C09E9400C09E9300BF9B9000BD988C00BC968800BA948600BA91
      8200A54B1F0000000000B95401000000000000000000000000005B627100F4ED
      EF00F4EDEF005B6271000000000000000000000000005B6271005B627100F4ED
      EF00F4EDEF005B6271005B627100000000000000000000000000000000000000
      00000000000000000000EE712C0000000000EE712C0000000000EE712C000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EACFC20099340100EACFC20000000000000000000000
      0000000000000000000000000000000000000000000099340100A54B1F000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AC582E00993401000000000000000000000000005B627100F8F3
      F400F8F3F400F8F3F4005B6271005B6271005B6271005B627100F8F3F400F8F3
      F400F8F3F4005B62710000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DDB7A400993401009934010099340100F0DBD100000000000000
      000000000000000000000000000000000000000000009934010099340100B954
      0100000000000000000000000000000000000000000000000000000000000000
      0000B95401009934010099340100000000000000000000000000000000005B62
      71005B627100FBF9F900FBF9F900FBF9F900FBF9F900FBF9F900FBF9F9005B62
      71005B6271000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005B6271005B6271005B6271005B6271005B6271005B6271000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009A83730098816F00957E6C00927A69008F77
      65008C74620089705E00866D5B00000000000000000000000000000000000000
      00000000000000000000000000009A83730098816F00957E6C00927A69008F77
      65008C74620089705E00866D5B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CBBEB500FCF7F400FDF6F300FCF5F100FBF4
      F000FBF3EE00FBF2ED008B736100000000000000000000000000000000000000
      0000000000000000000000000000CBBEB500FCF7F400FDF6F300FCF5F100FBF4
      F000FBF3EE00FBF2ED008B736100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008C442100EFE4DF00F3BFA500EA834E00E87B
      4500E4753C00FCF5F20090796700000000000000000000000000000000000000
      00000000000000000000000000008C442100EFE4DF00F3BFA500EA834E00E87B
      4500E4753C00FCF5F20090796700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBD7C500F8D5C3000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F8D5C300FBD7C500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000924723008C442100E3D1C800FEFAF900FDFA
      F800FEF9F800FDF8F600957E6D00000000000000000000000000000000000000
      0000000000000000000000000000924723008C442100E3D1C800FEFAF900FDFA
      F800FEF9F800FDF8F600957E6D00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8DCCF00F38A5700E195
      7100000000000000000000000000000000000000000000000000000000000000
      0000E1957100F38A5700F8DCCF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000573F2B00573F2B00573F
      2B00573F2B00573F2B00573F2B00BA663B00A2542D008F462300F7D8C900F2B7
      9900E4753C00FDFBFA009A837200000000000101FD00573F2B00573F2B00573F
      2B00573F2B00573F2B00573F2B00BA663B00A2542D008F462300F7D8C900F2B7
      9900E4753C00FDFBFA009A837200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EECBBA00F085
      5000DA865E00000000000000000000000000000000000000000000000000DA86
      5E00F0855000EECBBA0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6B3A600CEBDB100CBB9
      AC00C8B6A900C26F4400F1AB8500FD976000D77F5000B56136008F462300F9ED
      E900FFFEFE00FEFDFD009F897800000000003333F5000101FD00CEBDB100CBB9
      AC00C8B6A900C26F4400F1AB8500FD976000D77F5000B56136008F462300F9ED
      E900FFFEFE00FEFDFD009F897800000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CA80
      5C00F0885500EAC8B70000000000000000000000000000000000EAC8B700F088
      5500CA805C000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C2AEA000FEFEFE00FEFE
      FE00DCA98800F6B38D00D0764700F4B18D00FD976000D5794A00F6D8C900F3B7
      9900E4753C00FFFFFF00A48F7E0000000000000000003C3CF5000101FD00FEFE
      FE00DCA98800F6B38D00D0764700F4B18D00FD976000D5794A00F6D8C900F3B7
      9900E4753C00FFFFFF00A48F7E00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E1CD
      C300DB784700EF93670000000000000000000000000000000000EF936700DB78
      4700E1CDC3000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C4B1A300FEFEFE00FEFE
      FE00E78B5F00C3886200FDF7F300D47C4D00DC875B00FCF4F000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A99484000000000000000000C4B1A3003C3CF5000101
      FD00E78B5F00C3886200FDF7F300D47C4D00DC875B00FCF4F000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A9948400000000000000000000000000000000008A46
      2500954C2800A4542E00B65F3400C7693A00D672400000000000000000000000
      0000AE5C3600EC865200F2CFBD000000000000000000F2CFBD00EC865200AE5C
      3600000000000000000000000000D6724000C7693A00B65F3400A4542E00954C
      28008A46250000000000000000000000000000000000C6B3A600CEBDB100CBB9
      AC00DA886100CDC2AF00CEBDB100E79A7100EEE4DD00BBA69800B8A49600B6A2
      9300B49F9000B19C8D00AE998A000000000000000000C6B3A600CEBDB1003C3C
      F5000101FD00CDC2AF00CEBDB100E79A7100EEE4DD00BBA69800B8A49600B6A2
      9300B49F9000B19C8D00AE998A0000000000000000000000000000000000954C
      2800DF733600EA824900F39A6A00F5B594000000000000000000000000000000
      0000A3664800E9845200F7C2A7000000000000000000F7C2A700E9845200A366
      480000000000000000000000000000000000F5B59400F39A6A00EA824900DF73
      3600954C280000000000000000000000000000000000C2AEA000FEFEFE00FEFE
      FE00DA886100D5C4B900FEFEFE00FDFBFA00FCF7F400C8B6A900FBEEE400FAE7
      DC00F9E2D300B7A29300573F2B0000000000F7FFFF000101FD000101FD000101
      FD000101FD000101FD00FEFEFE00FDFBFA00FCF7F400C8B6A900FBEEE400FAE7
      DC00F9E2D300B7A29300573F2B0000000000000000000000000000000000A355
      2E00EC824B00F38D5B00EC9C7600B6866F00E9D5CB0000000000000000000000
      0000A9745900E1825400F7BE9E000000000000000000F7BE9E00E1825400A974
      5900000000000000000000000000E9D5CB00B6866F00EC9C7600F38D5B00EC82
      4B00A3552E0000000000000000000000000000000000C4B1A300FEFEFE00FEFE
      FE00D39B8000D7C7BB00FEFEFE00FEFEFE00FDFBFA00CBB9AC00FBF3ED00FAED
      E500FAE7DC00B7A29300573F2B000000000000000000F7FFFF000101FD000101
      FD000101FD000101FD000101FD00FEFEFE00FDFBFA00CBB9AC00FBF3ED00FAED
      E500FAE7DC00B7A29300573F2B0000000000000000000000000000000000B55F
      3400F39A6A00F49C7100F29465009D533000AA613B00DAB8A70000000000F6C5
      AE009D644600DE805100F7BDA1000000000000000000F7BDA100DE8051009D64
      4600F6C5AE0000000000DAB8A700AA613B009D533000F2946500F49C7100F39A
      6A00B55F340000000000000000000000000000000000C6B3A600E4D8D000DDCE
      C500DCCCC100D9C9BF00D7C7BC00D4C4B800D1C0B400CEBDB100CBB9AC00C8B5
      A900C5B2A500B7A29300573F2B000000000000000000C6B3A600F7FFFF000101
      FD00DCCCC100D9C9BF00D7C7BC00D4C4B800D1C0B400CEBDB100CBB9AC00C8B5
      A900C5B2A500B7A29300573F2B0000000000000000000000000000000000C769
      3B00F7CAAE00FBDDCB00F4A37600F3946400B4623900B0643E00BF816200BB84
      6000A15E3900EE8B5A00F6C8B0000000000000000000F6C8B000EE8B5A00A15E
      3900BB846000BF816200B0643E00B4623900F3946400F4A37600FBDDCB00F7CA
      AE00C7693B0000000000000000000000000000000000C9B5A800FEFEFE00FEFE
      FE00FEFEFE00DBCCC100FEFEFE00FEFEFE00FEFEFE00D1C0B400FDFBF900FDF7
      F400FCF3ED00B7A29300573F2B000000000000000000C9B5A800F7FFFF000101
      FD000101FD00DBCCC100FEFEFE00FEFEFE00FEFEFE00D1C0B400FDFBF900FDF7
      F400FCF3ED00B7A29300573F2B0000000000000000000000000000000000D672
      40000000000000000000FBDECF00F5A57E00F49D7200C9734700B7663C00B665
      3D00E2815300F6BCA100F6CBB7000000000000000000F6CBB700F6BCA100E281
      5300B6653D00B7663C00C9734700F49D7200F5A57E00FBDECF00000000000000
      0000D672400000000000000000000000000000000000CAB7AA00FEFEFE00FEFE
      FE00FEFEFE00DDCEC500FEFEFE00FEFEFE00FEFEFE00D4C4B800FEFEFE00FDFB
      FA00FDF7F300B7A29300573F2B000000000000000000CAB7AA00FEFEFE00F7FF
      FF000101FD000101FD00FEFEFE00FEFEFE00FEFEFE00D4C4B800FEFEFE00FDFB
      FA00FDF7F300B7A29300573F2B00000000000000000000000000000000000000
      0000000000000000000000000000FBDACA00F5A67E00F6B69600F5B28F00F6B0
      9100F6C1A800F6C5AE0000000000000000000000000000000000F6C5AE00F6C1
      A800F6B09100F5B28F00F6B69600F5A67E00FBDACA0000000000000000000000
      00000000000000000000000000000000000000000000CAB7AA00C9B7AA00C7B4
      A700C4B1A300C0AD9F00BCA89B00B8A59600B49F9100B09B8B00AA958600A690
      8000A08B7A00A08B7A009C8675000000000000000000CAB7AA00C9B7AA00C7B4
      A700F7FFFF000101FD000101FD00B8A59600B49F9100B09B8B00AA958600A690
      8000A08B7A00A08B7A009C867500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBE0D200F6C3A900F7CF
      BB00F9DBCD00000000000000000000000000000000000000000000000000F9DB
      CD00F7CFBB00F6C3A900FBE0D200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000101FD000101FD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005F4735005B44
      31005B4331005B4331005B4331005B4330005B4330005B4330005B4330005B43
      30005B4330005B4330005B4330005A422E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C8B5A900CEBD
      B100D0BFB400CCBBAF00C4B1A400C7B4A700C7B3A600C4B1A3008C442100BEA9
      9A00BDA79800BBA59600B9A495005B4330000000000000000000000000000000
      00000000000000000000000000000000000000000000C4888F1FA963757E8A3C
      5AFF78344CFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C4B2A400EBE5
      E0000000000000000000CEBFB300EFE2DB00FFF4EC00FFF0E500924723008C44
      2100F9D9C400F9D3BB00BBA595005B4330000000000000000000000000000000
      0000000000000000000000000000BE868C189C5A6A718E445FFF8B445DFF8940
      5BFF853954FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6B4A700E7DF
      DA00F9F7F600F9F7F500CCBEB400EAE1D900F9EFEA00F9ECE400BA663B00A254
      2D008F462300F0D2BE00BBA596005B4330000000000000000000000000000000
      000000000000CD969828A25E6E6A904660FF924E65FFA16075FFA35D75FF9E54
      6FFF92405EFF000000000000000000000000D7EBD50034CC670034CC670034CC
      670034CC670034CC670034CC670034CC670034CC670034CC6700000000000167
      01000167010001670100016701005F9B5B005F9B5B0001670100016701000167
      0100016701000000000034CC670034CC670034CC670034CC670034CC670034CC
      670034CC670034CC670034CC6700D7EBD500A5796200926146008A5437008952
      360087503300854D2E0082492B0080452600C26F4400F1AB8500FD976000D77F
      5000B56136008F462300B8A394005B4330000000000000000000D7AEB902CC95
      9A3BAF717D9CA15974FFA4647AFFB98394FFC18D9AFFBD8293FFB7778AFFAD6B
      80FF9B4564FF00000000000000000000000000000000D7EBD5007FDB9A0041CE
      6F0034CC670034CC670034CC670034CC670034CC670034CC6700000000000167
      01000167010001670100116F10000000000000000000116F1000016701000167
      0100016701000000000034CC670034CC670034CC670034CC670034CC670034CC
      670041CE6F007FDB9A00D7EBD50000000000A87C6400D0B4A500B4897300AD7C
      6400A3765F00986D56008C614D00DCA98800F6B38D00D0764700F4B18D00FD97
      6000D5794A00FFEADC00BBA697005B4330000000000000000000BF839656BC85
      97FFBF8C9AFFD0A5AFFFD5A9B6FFD3A8B3FFD2A3AFFFCD9EAAFFC692A0FFBC82
      93FFAF5072FF0000000000000000000000000000000000000000000000000000
      0000B1E5BB0059D4800034CC670034CC670034CC670034CC6700000000000167
      010001670100016701007EAD780000000000000000007EAD7800016701000167
      0100016701000000000034CC670034CC670034CC670034CC670059D48000B1E5
      BB0000000000000000000000000000000000B5917B00FFFAF700E8CBBE00D8AC
      9600CD9E8900BF958000B18A7700E78B5F00C3886200685A4D00D47C4D00DC87
      5B00F0E3DA00F1DED400BAA697005B4330000000000000000000D3909FFFD291
      A1FFD18FA0FFD0899BFFCE8196FFCB7A92FFC8738EFFC56C89FFC26384FFC05C
      80FFBE577CFF0000000000000000000000000000000000000000000000000000
      00000000000000000000D7EBD5007FDB9A0041CE6F0034CC6700000000000167
      010001670100116F100000000000000000000000000000000000116F10000167
      0100016701000000000034CC670041CE6F007FDB9A00D7EBD500000000000000
      000000000000000000000000000000000000B18D7700EDE8E600FEF5F000E7C8
      BA00D7A69000D6AA9400BB958200DA886100998275005B514B00E79A7100773D
      1D00CEBDB300CCBBAF00B8A495005B4330000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BE7C5B000000000000000000BF5A010000000000B1E5BB00000000000167
      0100016701009EBE9500000000000000000000000000000000009EBE95000167
      01000167010000000000B1E5BB0000000000BF5A01000000000000000000BE7C
      5B0000000000000000000000000000000000B18D7600B6A39600E6DED900FDF2
      ED00E8C7B700D6B6A5008F796C00DA886100796D67005E4B4200AD8571008F55
      360000000000FFFFFE00BCA99A0058412D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A9440100B2581F0000000000AF4A0100AF4A010000000000000000000167
      010020781F000000000000000000000000000000000000000000000000002078
      1F00016701000000000000000000AF4A0100AF4A010000000000B2581F00A944
      010000000000000000000000000000000000C8A99700EEE8E500B29E8F00E6D8
      D100EEDED6008B72620098817100D39B800077625400F8C2A500AA836F00864E
      3000E8E2DE00E7DFD800B4A090006B5340000000000000000000B6A79FDEA598
      8EFF91847AFF84766BFF796B61FF6D5C50FF67554AFF635244FF604F42FF6050
      42FF5E4C3EFF0000000000000000000000000000000000000000000000000000
      000000000000B8530100C25D0100AF4A0100BF5A0100B9704C00000000000167
      0100ADC7A400000000000000000000000000000000000000000000000000ADC7
      A4000167010000000000B9704C00BF5A0100AF4A0100C25D0100B85301000000
      000000000000000000000000000000000000CAAC9A0000000000ECE3DE00B29D
      8F00A9938300D7BEB000F1CFBD00CBA69400FDCBAF00FECAAE00AF867100844C
      2D00AB958500A48F7F00A38E7E009E8878000000000000000000C1B3AB17C1B3
      AAC8BCA99CFFCFCAC8FFC7C5C4FFC1BEBCFFADA6A3FFA09891FF988E88FF9287
      7FFF635143FF0000000000000000000000000000000000000000000000000000
      00000000000000000000BE7C5B00BC570100B5622E0000000000000000007EAD
      7800000000000000000000000000000000000000000000000000000000000000
      00007EAD78000000000000000000B5622E00BC570100BE7C5B00000000000000
      000000000000000000000000000000000000CEB2A00000000000FFFFFE00F8F2
      EF00F6EBE300FDECE4008C9BD500205ACF009E97B700FCCCB300B88D77008D59
      3B00000000000000000000000000000000000000000000000000000000000000
      0000C1B3AA13C1B3AAC8BCA99CFFCFCDCAFFC5C0BEFFB7B1ACFFA69F98FF9C94
      8CFF6A5A4DFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B2643D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B2643D0000000000000000000000
      000000000000000000000000000000000000D1B7A70000000000FFFCFB00FFFD
      FC00FFFFF900C8C9E600407EE6007FCBEF001455CA00E5C3BE00C2967D008F5A
      3F00000000000000000000000000000000000000000000000000000000000000
      000000000000CDC5C003C2B6AD1EC1B3AADBBCA99CFFCFCDCBFFC7C3C1FFBAB4
      B1FF75665BFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D3B9AA0000000000FFFCFB00FFFC
      FB00FFFFFD00E3E4F2007191E2005091EA006284D400F2D5C900C4987F00905D
      4000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D0C9C507C3B5AD2DC1B3AAB6BCA99CFFD0CD
      CCF6817468FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D3BAAA0000000000000000000000
      00000000000000000000E4E6F800A8B5E900F3E4E600FFF2E400D9B39E009360
      4500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D0C9C408C1B3AA2FC1B3
      AAC8B2A195FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CDB19F00D3BAAA00D3B9AA00D1B7
      A700CEB2A100C9AC9A00CBAA9300CDA68900BD967E00B38D7600AC806800A57A
      6100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF004300FF00430000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF004300FF00430000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF004300FF00430000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF004300FF004300FF004300FF004300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF004300FF00430000000000FF004300FF00430000000000FF004300FF00
      4300000000000000000000000000000000000000000000000000000000000000
      000000000000FF004300FF004300FF004300FF004300FF004300FF0043000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009F928400A6989200A698
      8B00A6928B009F8B84009F9284009F8B8400988B7E00988B7E00988477009884
      77009284770092847700000000000000000000000000000000009F928400A698
      9200A6988B00FF004300FF004300FF004300FF004300FF004300FF0043009884
      77009884770092847700928477000000000000000000000000009F928400A698
      9200FF004300FF00430000000000FF004300FF00430000000000FF004300FF00
      43009884770092847700928477000000000000000000B29E90FF7C6F63FF6D5D
      52FF68574AFF635143FF5E4C3EFF0000000000000000C05D80FFA94065FF8B2B
      51FF872B4FFF792543FF701F3DFF00000000000000009F8B8400FF004300FFFF
      FF00FFFFFF009F928400FFF7EF00FFEFE700FFE7DE00988B7E00F7DECE00F7D6
      C600FF00430092847700000000000000000000000000000000009F8B8400FFFF
      FF00FFFFFF00FFFFFF00FF004300FF004300FF004300FF004300988B7E00F7DE
      CE00F7D6C600F7CEB500928477000000000000000000000000009F8B8400FFFF
      FF00FFFFFF00FFFFFF009F928400FF004300FF004300FFE7DE00988B7E00F7DE
      CE00F7D6C600F7CEB500928477000000000000000000C1B3AAFFD1D0CFF6BAB4
      B1FF9C948CFF92877FFF605042FF0000000000000000C26283FFB97489FFA44B
      68FF9F4162FF943758FF9D3158FF00000000000000009F928400FF004300FF00
      4300FFFFFF009F928400FFF7F700FFF7EF00FFEFE7009F8B8400FFE7D600F7DE
      CE00FF004300FF004300000000000000000000000000000000009F928400FFFF
      FF00FFFFFF00FFFFFF009F928400FF004300FF004300FFEFE7009F8B8400FFE7
      D600F7DECE00F7D6C600928477000000000000000000000000009F928400FFFF
      FF00FFFFFF00FFFFFF009F928400FF004300FF004300FFEFE7009F8B8400FFE7
      D600F7DECE00F7D6C60092847700000000000000000000000000BAA596FFC7C3
      C1FFA69F98FF988E88FF604F42FF0000000000000000C46786FFBD8092FFAD5D
      76FFA54B6AFFA34366FFBD6878BD00000000000000009F928400A6989200FF00
      4300FF00430092989200A6989200A6988B00A6928B009F9284009F8B8400988B
      7E00988B7E00FF004300FF0043000000000000000000000000009F928400A698
      9200A6988B00A6928B0092989200A6989200A6988B00A6928B009F9284009F8B
      8400988B7E00988B7E00928477000000000000000000000000009F928400A698
      9200A6988B00A6928B0092989200FF004300FF004300A6928B009F9284009F8B
      8400988B7E00988B7E00928477000000000000000000D8D6D407C1B3AAFFD1D0
      CEFFB7B1ACFFA09891FF635244FF0000000000000000C66E8AFFC28B9BFFB570
      84FFAC5F78FFA84368FFC983871E00000000FF004300FF004300FF004300FF00
      4300FF004300FF004300FFFFFF00FFFFFF00FFF7F700A6928B00FF004300FF00
      4300FF004300FF004300FF004300FF00430000000000000000009F8B8400FFFF
      FF00FFFFFF00FFFFFF00AC9F9800FFFFFF00FFFFFF00FFF7F700A6928B00FFEF
      E700FFE7DE00FFE7D600928477000000000000000000000000009F8B8400FFFF
      FF00FFFFFF00FFFFFF00AC9F9800FFFFFF00FFFFFF00FFF7F700A6928B00FFEF
      E700FFE7DE00FFE7D60092847700000000000000000000000000D4D0CD04BAA5
      96FFC5C0BEFFADA6A3FF67554AFF0000000000000000C9748EFFC7949FFFBB7D
      8FFFAB5B76FFBE6E7AC20000000000000000FF004300FF004300FF004300FF00
      4300FF004300FF004300FFFFFF00FFFFFF00FFFFFF00A6988B00FF004300FF00
      4300FF004300FF004300FF004300FF00430000000000000000009F928400FFFF
      FF00FFFFFF00FFFFFF00AC9F9800FF004300FF004300FFFFFF00A6988B00FFF7
      EF00FFEFE700FFE7DE00928477000000000000000000000000009F928400FFFF
      FF00FFFFFF00FFFFFF00AC9F9800FFFFFF00FFFFFF00FFFFFF00A6988B00FFF7
      EF00FFEFE700FFE7DE0092847700000000000000000000000000D5D1CE06C1B3
      AAFFD1D0CFFFC1BEBCFF6D5C50FF0000000000000000CB7B91FFCB9DA9FFC38D
      9DFFAA4C6EFFC988881C0000000000000000000000009F928400BAB2AC00FF00
      4300FF004300B2A69800AC9F9800AC9F9800AC9F9200A6989200A6988B00A692
      8B009F928400FF004300FF0043000000000000000000000000009F928400BAB2
      AC00B2A69F00B2A69F00B2A69800FF004300FF004300AC9F9200A6989200A698
      8B00A6928B009F928400928477000000000000000000000000009F928400BAB2
      AC00B2A69F00B2A69F00B2A69800FF004300FF004300AC9F9200A6989200A698
      8B00A6928B009F9284009284770000000000000000000000000000000000D3CF
      CC03BAA596FFC9C7C6FF75675DFF0000000000000000CE8195FFD4B0B9FFC177
      92FFC3727EC100000000000000000000000000000000A6928B00FF004300FF00
      4300FFFFFF00B2A69F00FFFFFF00FFFFFF00FFFFFF00AC9F9200FFFFFF00FFF7
      F700FF004300FF00430000000000000000000000000000000000A6928B00FFFF
      FF00FFFFFF00FFFFFF00B2A69F00FF004300FF004300FFFFFF00AC9F9200FFFF
      FF00FFF7F700FFF7EF0092847700000000000000000000000000A6928B00FFFF
      FF00FFFFFF00FFFFFF00FF004300FF004300FF004300FF004300AC9F9200FFFF
      FF00FFF7F700FFF7EF009284770000000000000000000000000000000000D3CE
      CB02C1B3AAFFD2CFCEFF807267FF0000000000000000D08899FFD4AAB5FFC062
      84FFC987872E00000000000000000000000000000000A6928B00FF004300FFFF
      FF00FFFFFF00B2A69F00FFFFFF00FFFFFF00FFFFFF00AC9F9800FFFFFF00FFFF
      FF00FF0043009284770000000000000000000000000000000000A6928B00FFFF
      FF00FF004300FF004300B2A69F00FF004300FF004300FFFFFF00FF004300FF00
      4300FFFFFF00FFF7F70092847700000000000000000000000000A6928B00FFFF
      FF00FFFFFF00FF004300FF004300FF004300FF004300FF004300FF004300FFFF
      FF00FFFFFF00FFF7F70092847700000000000000000000000000000000000000
      000000000000BAA596FF877A70FF0000000000000000D28D9CFFCA849AFFC478
      81830000000000000000000000000000000000000000A6928B00A6928B009F92
      84009F9284009F8B7E00988B7E0098847700927E7700927E70008B776A008477
      6A00847063008470630000000000000000000000000000000000A6928B00A692
      8B009F928400FF004300FF004300FF004300FF004300FF004300FF0043008B77
      6A0084776A008470630084706300000000000000000000000000A6928B00A692
      8B00FF004300FF00430000000000FF004300FF00430000000000FF004300FF00
      430084776A008470630084706300000000000000000000000000000000000000
      000000000000C1B3AAFF92867CFF0000000000000000D4929FFFCC7D92E3CC89
      8C14000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF004300FF004300FF004300FF004300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF004300FF00430000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BFB7B203AC9D96FF0000000000000000D595A1FFAA466959C993
      A201000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF004300FF00430000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF004300FF00430000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000005B7000005B7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000005B7000005B700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000005B7000005B7000005
      B700000000000000000000000000000000000000000000000000000000000000
      00000005B7000005B70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000005B7000205B7000005
      B7000005B7000000000000000000000000000000000000000000000000000005
      B7000005B7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005C5C5C0000000000000000005C5C5C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002005DC000205
      BB000005B7000005B700000000000000000000000000000000000005B7000005
      B700000000000000000000000000000000000000000000000000000000000000
      000000000000000000005C5C5C0000000000000000005C5C5C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005C5C5C005C5C5C00000000005C5C5C005C5C5C000000
      00000000000000000000000000000000000000000000000000009F928400A698
      9200A6988B00A6928B009F8B84009F9284009F8B8400988B7E00988B7E009884
      77009884770092847700928477000000000000000000573F2B00573F2B00573F
      2B000005B7000005B7000105B500573F2B000105B5000005B7000005B700573F
      2B00573F2B00573F2B00573F2B00000000000000000000000000000000000000
      0000000000005C5C5C005C5C5C00000000005C5C5C005C5C5C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005C5C5C00939300005C5C5C005C5C5C00939300005C5C
      5C000000000000000000000000000000000000000000000000009F8B8400FF00
      4300FFFFFF00FFFFFF009F928400FFF7EF00FFEFE700FFE7DE00988B7E00F7DE
      CE00F7D6C600FF004300928477000000000000000000C6B3A600CEBDB100CBB9
      AC00C8B6A9000206B6000208C700050AC6000107CE000106B400BBA69700B9A4
      9500B7A29300B7A29300573F2B00000000000000000000000000000000000000
      00005C5C5C00939300005C5C5C005C5C5C00939300005C5C5C00000000000000
      00000000000000000000000000000000000000000000000000005C5C5C005C5C
      5C005C5C5C005C5C5C005C5C5C009A9A00009D9D00005C5C5C009A9A00009D9D
      00005C5C5C000000000000000000000000000000000000000000FF004300FF00
      4300FFFFFF00FFFFFF009F928400FFF7F700FFF7EF00FFEFE7009F8B8400FFE7
      D600FF004300FF004300928477000000000000000000C2AEA000FEFEFE00FEFE
      FE00FEFEFE00C4B1A3001116C4000005C1000006DA00BFAB9D00F7DBCA00F6D5
      C000F5CFB700B7A29300573F2B00000000000000000000000000000000005C5C
      5C009D9D00009A9A00005C5C5C009D9D00009A9A00005C5C5C005C5C5C005C5C
      5C005C5C5C005C5C5C00000000000000000000000000000000005C5C5C008686
      000093930000909000008D8D00008E8E00008D8D00008D8D00005C5C5C008D8D
      00008D8D00005C5C5C00000000000000000000000000FF004300FF004300A698
      9200A6988B00A6928B0092989200A6989200A6988B00A6928B009F928400FF00
      4300FF004300988B7E00928477000000000000000000C4B1A300FEFEFE00FEFE
      FE00FEFEFE002F2FB200050BD800070CCF000006DA000107E900F9E1D300F7DB
      CA00F5D5C000B7A29300573F2B000000000000000000000000005C5C5C008D8D
      00008D8D00005C5C5C008D8D00008D8D00008E8E00008D8D0000909000009393
      0000868600005C5C5C00000000000000000000000000000000005C5C5C00A3A3
      0000AEAE0000A9A90000A9A90000A9A90000A9A90000ABAB00009D9D00005C5C
      5C00ABAB00009D9D00005C5C5C0000000000FF004300FF004300FF004300FF00
      4300FF004300FF004300AC9F9800FFFFFF00FFFFFF00FFF7F700FF004300FF00
      4300FF004300FF004300FF004300FF00430000000000C6B3A600CEBDB100CBB9
      AC001014E0000006DA000B10D100CBB9AC00C8B6A9000107E5000006EF00BFAC
      9D00BDA99A00B7A29300573F2B0000000000000000005C5C5C009D9D0000ABAB
      00005C5C5C009D9D0000ABAB0000A9A90000A9A90000A9A90000A9A90000AEAE
      0000A3A300005C5C5C00000000000000000000000000000000005C5C5C00C2C2
      0000C2C20000C0C00000BFBF0000C1C10000C6C60000BABA00005C5C5C00C6C6
      0000BABA00005C5C5C000000000000000000FF004300FF004300FF004300FF00
      4300FF004300FF004300AC9F9800FFFFFF00FFFFFF00FFFFFF00FF004300FF00
      4300FF004300FF004300FF004300FF00430000000000C2AEA000FEFEFE000208
      F8000006DA001F22E700FEFEFE00FDFBFA00FCF7F400C8B6A9000006F8000006
      F600F9E2D300B7A29300573F2B000000000000000000000000005C5C5C00BABA
      0000C6C600005C5C5C00BABA0000C6C60000C1C10000BFBF0000C0C00000C2C2
      0000C2C200005C5C5C00000000000000000000000000000000005C5C5C005C5C
      5C005C5C5C005C5C5C005C5C5C00ACAC0000B3B300005C5C5C00ACAC0000B3B3
      00005C5C5C0000000000000000000000000000000000FF004300FF004300BAB2
      AC00B2A69F00B2A69F00B2A69800AC9F9800AC9F9800AC9F9200A6989200FF00
      4300FF0043009F928400928477000000000000000000C4B1A3000006F6000006
      F6000208F800D7C7BB00FEFEFE00FEFEFE00FDFBFA00CBB9AC00FBF3ED000006
      F6000006F600B7A29300573F2B00000000000000000000000000000000005C5C
      5C00B3B30000ACAC00005C5C5C00B3B30000ACAC00005C5C5C005C5C5C005C5C
      5C005C5C5C005C5C5C0000000000000000000000000000000000000000000000
      000000000000000000005C5C5C00A3A300005C5C5C005C5C5C00A3A300005C5C
      5C00000000000000000000000000000000000000000000000000FF004300FF00
      4300FFFFFF00FFFFFF00B2A69F00FFFFFF00FFFFFF00FFFFFF00AC9F9200FFFF
      FF00FF004300FF0043009284770000000000000000000006F6000006F6000006
      F600DCCCC100D9C9BF00D7C7BC00D4C4B800D1C0B400CEBDB100CBB9AC00C8B5
      A900C5B2A5000006F600573F2B00000000000000000000000000000000000000
      00005C5C5C00A3A300005C5C5C005C5C5C00A3A300005C5C5C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005C5C5C005C5C5C00000000005C5C5C005C5C5C000000
      0000000000000000000000000000000000000000000000000000A6928B00FF00
      4300FFFFFF00FFFFFF00B2A69F00FFFFFF00FFFFFF00FFFFFF00AC9F9800FFFF
      FF00FFFFFF00FF00430092847700000000000006F6000006F6000006F600FEFE
      FE00FEFEFE00DBCCC100FEFEFE00FEFEFE00FEFEFE00D1C0B400FDFBF900FDF7
      F400FCF3ED00B7A29300573F2B00000000000000000000000000000000000000
      0000000000005C5C5C005C5C5C00000000005C5C5C005C5C5C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005C5C5C0000000000000000005C5C5C00000000000000
      0000000000000000000000000000000000000000000000000000A6928B00A692
      8B009F9284009F9284009F8B7E00988B7E0098847700927E7700927E70008B77
      6A0084776A008470630084706300000000000006F6000006F600FEFEFE00FEFE
      FE00FEFEFE00DDCEC500FEFEFE00FEFEFE00FEFEFE00D4C4B800FEFEFE00FDFB
      FA00FDF7F300B7A29300573F2B00000000000000000000000000000000000000
      000000000000000000005C5C5C0000000000000000005C5C5C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CAB7AA00C9B7AA00C7B4
      A700C4B1A300C0AD9F00BCA89B00B8A59600B49F9100B09B8B00AA958600A690
      8000A08B7A00A08B7A009C867500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BBA1
      9400975F450063423200A28D8200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000081685500262F3800262F3800262F3800262F3800262F
      3800262F3800262F3800262F3800262F38000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000005B7000005B700000000000000000000000000CD86
      6300AB623F008A50330062453700BDBDBE00B99F9200664334005E3F3000A891
      8600000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BA6E4700AA542900AA542900A25027009B4C25009648
      23008F4622008A4321008641200000000000BCCCD200647E8E004F5E6F004552
      610037414D00262F380089715E00E8DCD300B7A29300B7A29300B7A29300B7A2
      9300B7A29300B7A29300B7A29300262F3800000000000005B7000005B7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000005B7000005B70000000000000000000000000000000000DD83
      5500C3B2AA00B89C8E00854E3300C0C0C000C5826100AA623E00633C29002F25
      2300000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C1795500FDF9F600CEB09C00CCAF9B00CAAD9A00C7AC
      9900C6AB9800C4A997008943210000000000717F8B0022B6EC00008FCD00008F
      CD00008FCD00008FCD0091796600EFE6E100E8DBD300E0D0C600DAC6BC00D4BF
      B200CFB9AB00CCB6A800B7A29300262F3800000000000005B7000005B7000005
      B700000000000000000000000000000000000000000000000000000000000000
      00000005B7000005B7000000000000000000000000000000000000000000E185
      5700C5B3AA00BDAEA8008C523500BCB8B600D47C5200C2B2AA00AE9486006B42
      2D00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9856400FFFFFF00DA8C5C00D1835100D1835100D183
      5100D1835100C6AB98008E452200000000007584900068C8EA0010B5F00008AC
      EB0003A4E3000096D4009A826F00F7F1EF00C3AE9E00C3AE9E00BDA89800B7A2
      9300D4BFB200B7A29300B7A29300262F3800000000000005B7000005B6000005
      B7000005B7000000000000000000000000000000000000000000000000000005
      B7000005B700000000000000000000000000000000000000000000000000DA98
      7600E5865600B06641008F5538009C725D00C9754D00C1B9B500BA9E90008F55
      360000000000000000000000000000000000B7A2930063493500634935006349
      35006349350063493500D1927300FFFFFF00FEFDFB00FBEFEA00F5DED300F0CE
      BE00EDC3AF00C7AC990092472300000000007989940074D0ED0028BDF10011B5
      F00007ABEA00009DDC00A28A7800FDFBFA00F7F2EE00EFE6E100E8DBD300E0D0
      C600705A4A0061524600504842003F3D3E0000000000000000000006D7000005
      BA000005B7000005B700000000000000000000000000000000000005B7000005
      B70000000000000000000000000000000000000000000000000000000000C8B5
      AC00EB8E5D00DB8256009F5F400094604700BE744F00D57B4F00B96B4500AD87
      740000000000000000000000000000000000B7A29300F8F3F000EADFD700E6D9
      CF00E1D2C700DDCBBF00D89F8200FFFFFF00F3A77F00E7976E00DA8C5C00D183
      5100D1835100CAAE9A00984A2500000000007E8E9A0083D9F00046C9F2002DBF
      F20016B7F10000A0E200A9928000FFFFFF00C3AE9E00C3AE9E00BDA89900E8DC
      D3007A604D00D4C5BA0061524700000000000000000000000000000000000000
      00000005B7000005B7000005B600000000000005B6000005B7000005B7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C8B6AE00DE997600DF845600C68D7000CC784D00D27C5100C6917700BDA7
      9C0000000000000000000000000000000000B7A29300FBF8F700E5AE8100DEA1
      7300DA9C6E00D5976800E0AA9000FFFFFF00FFFFFF00FFFFFF00FBF4F000F7E4
      DB00F2D3C500CCAE9A009D4D25000000000082949E0091E2F30066D5F4004CCB
      F30032C2F20015AFE900B0998800FFFFFF00FFFFFF00FCFBF900F7F1EF00EFE7
      E100816856007A604D0000000000000000000000000000000000000000000000
      0000000000000005B6000006C7000006C7000006CE000005B400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000887366007160560086675500AB9E9900000000000000
      000000000000000000000000000000000000BBA69700FEFDFC00FBF6F500F6EF
      EB00F1E6E000ECDED600E7B59C00FFFFFF00FCAE8A00FCAE8A00F1DBD200E78E
      6000B3572A00AC542900A4502700000000008699A2009FEAF60083E1F6006BD8
      F50053CEF4000EB3F000B6A08E00B0998800A9928000A28A78009A8270009179
      670089715E000000000000000000000000000000000000000000000000000000
      000000000000000000000006C1000005C1000006DA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B8B4B1008E8074007E6E6300695D550076726E00000000000000
      000000000000000000000000000000000000C1AB9C00FFFFFF00FAC59F00F0B8
      8E00E5AE8100DEA17300ECBDA600FFFFFF00FFFFFF00FFFFFF00FFFFFF00EA9A
      7200F0C9B200B1572B00EDD7CD00000000008A9EA600A9F0F80099EAF80088E3
      F5006DD1EA0013A1D40013A1D40012A0D3000D97CF000791CA00008FCD00008F
      CD00303944000000000000000000000000000000000000000000000000000000
      0000000000000005B6000006D7000006CE000006DA000006E900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BAB0AA00A2948B00A8A099008E817700635B5500000000000000
      000000000000000000000000000000000000C7B2A300FFFFFF00FFFFFF00FCFA
      F900F8F2F000F3EAE600F0C4AE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EBA7
      8500C5653500F1DBCF0000000000000000008DA1AA00AAF1F900A7F0F9005E7D
      8A0058737F00566D7A00526977004F6673004C617000445A6800236F9000008F
      CD003E4A58000000000000000000000000000000000000000000000000000000
      00000006E5000006DA000006D30000000000000000000006E5000006EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BEB1AA00A1948B00C8C6C400CDC5C0006B5F5600ADADAE000000
      000000000000000000000000000000000000CFB9A900FFFFFF00FFDABA00FFD0
      AE00F0DED200B7A29300F0C4AE00EFC2AB00EFC1AA00EFB9A000EDB09200EDB0
      9200F9E4D9000000000000000000000000008FA4AC00AAF1F900A8F1F9005D86
      96008CC6CF0093E4F0007AD5E70062C6DE004F9AB2003E5A67001C7DA500008F
      CD004B5969000000000000000000000000000000000000000000000000000006
      F8000006DA000006EF00000000000000000000000000000000000006F8000006
      F600000000000000000000000000000000000000000000000000000000000000
      000000000000A99B9200B2A8A300C3C3C300E8E4E2007C6F6600A8A9AA000000
      000000000000000000000000000000000000D4BEAF00FFFFFF00FFFFFF00FFFF
      FF00FEFDFC00BBA69600D4C5BA008F725B00E2DDD90000000000000000000000
      0000000000000000000000000000000000008FA4AC00ABF0F700AAF1F900A6EF
      F7007397A200A1ECF500667D8A0078C5D6004C6C7C00346178005FC3E80022B6
      EC004E5E6F0000000000000000000000000000000000000000000006F6000006
      F6000006F8000000000000000000000000000000000000000000000000000006
      F6000006F6000000000000000000000000000000000000000000000000000000
      0000BBB8B600A3968C00BCBAB90000000000DDDCDC00BCB2AB00A6A19E000000
      000000000000000000000000000000000000D8C2B200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C7B1A200A5826600E2DDD9000000000000000000000000000000
      000000000000000000000000000000000000B7CACF008FA4AC008FA4AC008FA4
      AC005B8D9F00A5E8EF009BE8F4008CD5E2004666760073858F007A8A95007585
      9100BDCED300000000000000000000000000000000000006F6000006F6000006
      F600000000000000000000000000000000000000000000000000000000000000
      0000000000000006F60000000000000000000000000000000000000000000000
      0000BFB8B300B3A89E000000000000000000CBCBCB00E2DDDA00A19790000000
      000000000000000000000000000000000000D8C2B200D8C2B200D4BFAE00D4BF
      AE00CEB8A900C8B2A300E9E2DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000086B3C30082ADBD00799FB000BCCED30000000000000000000000
      0000000000000000000000000000000000000006F6000006F6000006F6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000006F6000006F600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009E8D80006349350063493500634935006349350063493500634935006349
      3500634935006349350000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFCECF00C3646500AA55
      5600A45253009F4F50009A4D4D00944A4A008F4747008944440083414100783B
      3C00783B3C00723939006E36370000000000E7E1DD007F6652007C624E00795F
      4B00765C4800725844006F5541006B513D00684E3A00654B3700634935006349
      3500C9C0B9000000000000000000000000000000000000000000000000000000
      00009B8A7D00FCFAF800D9C0AE00D5BCAB00CFB7A600C8B1A000C1AB9B00BBA6
      9600B7A2930063493500000000000000000075848F0066808F0060798700576E
      7B004E626F0044566100394852002E3A4300252E35001B22290014191E000E12
      16000E13180000000000000000000000000000000000CF6B6C00F38E8F00E680
      8100AA44240047322100C3B4AB00C6BBB300CAC1BC00CEC8C400564D48009E3E
      33009C3D36009839310072393900000000009C847400FDE8DB00B7A29300B7A2
      9300B7A29300B7A29300B7A29300B7A29300B7A29300B7A29300B7A29300B7A2
      930063493500C9C0B90000000000000000000000000000000000000000000000
      00009B8A7D00FEFEFE00FBF8F700F6F1ED00F1E8E100EBDED600E5D5C900E1CD
      BE00BCA596006349350000000000000000007787920089A1AB006AB2D400008F
      CD00008FCD00008FCD00048CC7000888BE000F82B400157CA9001B779F001F72
      9600224B5C0087A2AB00000000000000000000000000D16F7000FF999A00EC86
      8700E6808100715B4B00473C34008D786800EDE0D800F1E7E0008F7F7300A341
      3500A2423C009C3D3500783B3C0000000000A0877600FFFBF900FFF9F500FEF4
      EE00FEF0E600FDE8DC00F7DBC800F3CDB500EFC2A50035359000F0B89500B7A2
      93007158450063493500C9C0B900000000000000000000000000000000000000
      00009E8D8000FFFFFF00FEFDFD00FAF7F500F5EFEA00F0E6DF00EBDDD300E5D4
      C700C1AA9B006349350000000000000000007A8A95007EBED3008AA4AE007EDC
      FF005FCFFF0055CBFF004CC4FA0041BCF50037B3F0002EAAEB0024A0E500138C
      D400236780005E696D00000000000000000000000000D4757600FF9FA000F590
      9100EC868700715B4B0000000000473C3400E9D9CE00ECDDD40085746700AE4B
      4300AA494400A3423C007D3E3E0000000000A48B7A00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFCFA00FBF3ED00F5E3D800EED5C50038964B00E9C1A800B7A2
      93007D6553006B523E0063493500000000000000000000000000000000000000
      0000A2918400FFFFFF00FFFFFF00FDFDFB00F9F5F300F4EDE800EFE4DC00E9DB
      D000C8B1A1006349350000000000000000007D8E980079D2EC008BA4AD0089C2
      CE0071D8FF0065D3FF005CCEFF0051C9FE0049C1FA003FB9F50034B0EE0029A8
      E9001085CD00224B5B0098B2BA000000000000000000D77B7C00FFA9AA00FB9F
      A000F5939400715B4B00715B4B00715B4B00715B4B00766252007D6A5B00BA56
      5400B24F4C00AA4944008341410000000000A8907E00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F9F5F200F1E7E100EAD8CD00E8D1C400E4C6
      B40089716000775E4C0063493500000000000000000000000000000000000000
      0000A7958800FFFFFF00FFFFFF00FFFFFF00FCFBFA00F9F4F100F3ECE600EDE3
      DA00CFB7A60063493500000000000000000080919C0081D7EF007DC5E0008CA6
      B00080DDFE0068D3FF0067D4FF0062D1FF0058CDFF004EC7FC0046BEF7003BB6
      F20031ACEC00256981007A95A1000000000000000000DB838400FFB3B400FFAD
      AE00FCA3A400F48E8F00EC868700E6808100DF797A00D7717200D16B6C00C15D
      5C00BA565400B2504C008944440000000000AE968400D0C0B300CBBBAF00BFAE
      A100B5A29400AA9586009F8A7A00957E6E008B736200826A58007B625000745B
      4800957E6D00836B59006E544000000000000000000000000000000000000000
      0000AB9A8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFAF800F7F3EF00F2EA
      E400D5BCAB0063493500000000000000000083959F0089DCF1008CE2FF008DA8
      B1008CBAC70074D8FF0067D4FF0067D4FF0067D4FF005FD0FF0054CDFF004BC5
      FC0041BBF7002EA2DB005167740098B2BA0000000000DF8A8B00FFBBBC00FFB6
      B700C9636000C45E5600BE584B00B8523F00B34D3400AD472800A7411C00A13B
      1100C15D5C00BA5654008F47470000000000BAA08D00F8F4F200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FDFCFB00FBF8F600F8F3F100F6EEEA00F3E9
      E400A18A7B008F7766007A614D00000000000000000000000000000000000000
      0000B09E9000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFE00FBF9F700F6F1
      ED00D9C0AE00634935000000000000000000869AA30092E1F20098E8FD0080C4
      DE008EA7B00081DEFD0084E0FF0084E0FF0084E0FF0084E0FF0081DFFF007BDD
      FF0074D8FF006BD6FF0056A9D1008F9BA40000000000E2919200FFBDBE00CC66
      6700FFFFFF00FFFFFF00FBF8F600F6EEEA00F0E5DE00EADBD200E5D1C600E1CA
      BD00A13B1100C25D5C00944A4A0000000000E2DAD500B8A29200CCB3A100C2A9
      9900C9B2A300B9A19200A99181009B8271008B7260007B614F00765C4900856C
      5A00B49F90009B847400785E4A00000000000000000070C7E10081D8EE0086E6
      FA0039BEE50099D8DF0091E1F60081D0E900FFFFFF00FFFFFF00FEFEFD00C4AD
      9D00C3AB9C00644A36000000000000000000889CA5009AE6F3009FEBFB0098E8
      FE008BACB9008BACB9008AAAB70088A6B30086A3AF00839FAA00819AA6007F95
      A1007C919D007A8E9900798B95007788930000000000E5979800FFBDBE00D36D
      6E00FFFFFF00FFFFFF00FFFFFF00FBF8F600F6EEEA00F0E5DE00EADBD200E5D1
      C600A7411C00CC6767009A4D4D000000000000000000E0D7D100C6AD9B00D9CA
      BD00FFFFFF00FCFAF900FCFAF900F8F3F100F4ECE700ECE0D900BBA89A007A60
      4D00A58F7F00C5AD9D007B614D00000000000000000098E2F30031B7DF007DE9
      FD005DC6E60093F0FF002FB6DF00A0E8F900FFFFFF00FFFFFF00A9988A00644A
      3600644A3600644A360000000000000000008BA0A800A0EAF600A6EEF9009FEB
      FB0098E8FE007ADAFF0067D4FF0067D4FF0067D4FF0067D4FF0067D4FF0067D4
      FF007788930000000000000000000000000000000000E99E9F00FFBDBE00DC76
      7700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBF8F600F6EEEA00F0E5DE00EADB
      D200AD472800D77172009F4F5000000000000000000000000000F4F0EC00C6AD
      9B00FEFDFC00ECE7E200D7CBC200D7CBC200CABBB000D2C2B700E1D3CA00846A
      59007F655400B19B8C00B7A29300000000000000000094EAFA0093F1FF00BFF8
      FF00AFE8F400C7FBFF0093F1FF009FF0FF00FFFFFF00FFFFFF00AE9C8E00D4C5
      BA00644A3600D0CBC40000000000000000008EA2AB00A7EEF600ABF0F700A6EE
      F9009FEBFB0098E8FD0071D4FB00899EA7008699A30082949F007E909A007A8C
      97007788930000000000000000000000000000000000EDA6A700FFBDBE00E680
      8100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBF8F600F6EEEA00F0E5
      DE00B34D3400DF797A00A452530000000000000000000000000000000000DFD1
      C700DFD0C600FFFFFF00FFFFFF00FFFFFF00FCFAF900F8F3F100E8DCD500CAB9
      AD00795F4C00C6BBB30000000000000000000000000022ABD90053BFE100AFE8
      F400F0FFFD00B4EBF60053BFE10036BBE500FFFFFF00FFFFFF00B2A09200644A
      3600D0CCC5000000000000000000000000008FA4AC00A0D2DA00ABF0F700ABF0
      F700A6EEF9009FEBFB008DA1AA00B5CBD0000000000000000000000000000000
      00000000000000000000000000000000000000000000F0ACAD00FFBDBE00EF89
      8A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBF8F600F6EE
      EA00B8523F0067333300AA55560000000000000000000000000000000000FAF8
      F600CFB9A900FBF8F700F2EEEB00D7CBC200D7CBC200CABBB000C6B3A800E2D4
      CB00866E5C008169570000000000000000000000000094EAFA0096F3FF00C7FB
      FF00ADE5F300C3FBFF0096F3FF008BD7E200B6A49600B6A49600B5A39500D0CC
      C50000000000000000000000000000000000BDCED4008FA4AC008FA4AC008FA4
      AC008FA4AC008FA4AC00B5CBD000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F3B2B300FFBDBE00F892
      9300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBF8
      F600BE584B00B0585900B0585900000000000000000000000000000000000000
      0000EAE0D900DBCABF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFAF900EFE6
      E100C8B7AB007A604D0000000000000000000000000096E1F30032B8E0008CF1
      FF0058C2E30090F1FF002FB6DF008DDDF0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5B6B700F5B6B700F3B2
      B300F1ADAE00EEA7A800EAA1A200E79A9B00E4939400E08E8F00DD878800DA80
      8100D67A7B00D3747500D16F7000000000000000000000000000000000000000
      000000000000EAE0D900D4BEAE00D4BEAE00D4BEAE00D4BEAE00D4BEAE00D4BE
      AE00D4BEAE00D3BDAD0000000000000000000000000066C3E00081D8EE0094EA
      FA0026AFDB008CE8FA008EDEF10081CCE3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000900000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFF00000000EFFFFFFF00000000
      C781F001000000008780FBF7000000008783FDF7000000000F81FEF700000000
      0F81FF6F000000000FC1081F000000000FD1885F000000008FF10C6F00000000
      87E10C770000000081C31E7F00000000C003887F00000000E007C0FF00000000
      F81FE1FF00000000FFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7
      FF7FF83F8FF181E3FE3FFC7F9FF901E1FC1FE007A005C1E1F80FA005E00781F0
      F0078001E00781F0E0038001E00783F0C0018001E0078BF0FC1FA005E0078FF1
      FC1FE007E00787E1FFFFE007A005C381FD5FFC7F9FF9C003FFFFF83F8FF1E007
      FFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFE01FE01FFFFFFFFFE01FE01FFFFFFFF
      FE01FE01FF9FF9FFFE01FE01FF8FF1FF80010001FFC7E3FF80010001FFE3C7FF
      80018001FFE3C7FF80018001E0718E0780018001E0F18F0780010001E0718E07
      80018001E021840780018001E001800780018001EC01803780018001FE03C07F
      80018001FF87E1FFFFFFFCFFFFFFFFFFFFFFFFFFFFFFC000FFFFFFFFFFFFC000
      FF87FFFFFFFFCC00FE07FFFFFFFFC000F807002004000000C007802184010000
      C007F021840F0000C007FC23C43F0000FFFFF6A3C56F0008FFFFF267E64F0000
      C007F827E41F4000C007FC6FF63F400FF007FEFFFF7F400FF807FFFFFFFF400F
      FE07FFFFFFFF7C0FFF87FFFFFFFF000FFFFFFE7FFE7FFFFFFFFFFE7FFC3FFFFF
      FFFFF24FF81FFFFF8003C001C24181818003C001C00181818003C001C001C181
      8001C001C00181810000C001C001C1830000C001C001C1838001C001C001E187
      8003C001C001E1878003C001C001F98F8003C001C241F98FFFFFFC3FFE7FF98F
      FFFFFE7FFE7FFFFFFFFFFFFFFFFFFFFF9FF9FFFFFFFFFFFF8FF3FFFFFFFFFFFF
      87E7FFFFFDBFFFFFC3CFFDBFFC9FC0018001F93FFC0FC0018001F03FC007C001
      8001E003C00380018001C003C001000080018003C00300008001C003C0078001
      8001E003FC0FC0018001F03FFC9FC0010001F93FFDBFC0010001FDBFFFFFFFFF
      8001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFFFFFFC00FFFC
      E00FFC0100009FF9E00FFC0100008FF3E00FFC01000087E7E00F00010000C3CF
      E00F00010001F11FF00F00010003F83FFC3F00010007FC7FF83F00010007F83F
      F83F00030007F19FF81F00070007E3CFF81F007F0007C7E7F11F00FF00078FFB
      F31F01FFF87F1FFFFFFFFFFFFFFF3FFFFFFFFFFFFFFFFFFFF003FFFF80010007
      F003000780010003F003000380010001F003000380010001F003000180010001
      F003000180010001F003000080010001F0030000800100018003000080018001
      800300078001C001800300078001E003800700FF8001E003800F01FF8001F003
      80FFFFFF8001F80380FFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object CustomizeToolBarPopupMenu: TTntPopupMenu
    OwnerDraw = True
    OnPopup = CustomizeToolBarPopupMenuPopup
    Left = 267
    Top = 481
    object ToggleGeneralToolBarMenuItem: TTntMenuItem
      AutoCheck = True
      Caption = 'General'
      Checked = True
      OnClick = ToggleGeneralToolBarMenuItemClick
      IgnoreAllMenuChanges = False
    end
    object ToggleDesignToolBarMenuItem: TTntMenuItem
      AutoCheck = True
      Caption = 'Design'
      Checked = True
      OnClick = ToggleDesignToolBarMenuItemClick
      IgnoreAllMenuChanges = False
    end
    object ToggleImportExportToolBarMenuItem: TTntMenuItem
      AutoCheck = True
      Caption = 'Import and Export'
      Checked = True
      OnClick = ToggleImportExportToolBarMenuItemClick
      IgnoreAllMenuChanges = False
    end
  end
  object StandardSystemMenu1: TStandardSystemMenu
    OnlyDelphiMenu = False
    Left = 232
    Top = 481
  end
  object XPManifest1: TXPManifest
    Left = 365
    Top = 480
  end
  object CharactersListPopupMenu: TTntPopupMenu
    Images = MenuImages
    OwnerDraw = True
    OnPopup = CharactersListPopupMenuPopup
    Left = 200
    Top = 482
    object EditInCharDesignerPopupMenuItem: TTntMenuItem
      Caption = '&Edit in Character Designer...'
      Hint = 
        'Opens the selected character in the Character Designer for editi' +
        'ng'
      ImageIndex = 11
      OnClick = EditInCharDesignerPopupMenuItemClick
      IgnoreAllMenuChanges = False
    end
  end
  object GeneralEditPopupMenu: TTntPopupMenu
    AutoHotkeys = maManual
    Images = MenuImages
    OwnerDraw = True
    OnPopup = GeneralEditPopupMenuPopup
    Left = 168
    Top = 483
    object GECutPopupMenuItem: TTntMenuItem
      Caption = 'Cu&t'
      ImageIndex = 2
      OnClick = GECutPopupMenuItemClick
      IgnoreAllMenuChanges = False
    end
    object GECopyPopupMenuItem: TTntMenuItem
      Caption = '&Copy'
      ImageIndex = 1
      OnClick = GECopyPopupMenuItemClick
      IgnoreAllMenuChanges = False
    end
    object GEPastePopupMenuItem: TTntMenuItem
      Caption = '&Paste'
      ImageIndex = 5
      OnClick = GEPastePopupMenuItemClick
      IgnoreAllMenuChanges = False
    end
  end
  object LicenseTimer: TTimer
    Enabled = False
    OnTimer = LicenseTimerTimer
    Left = 135
    Top = 483
  end
end
