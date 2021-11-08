object CodeToLCDForm: TCodeToLCDForm
  Left = 342
  Top = 118
  BiDiMode = bdLeftToRight
  BorderStyle = bsNone
  Caption = 'Code to LCD'
  ClientHeight = 376
  ClientWidth = 442
  Color = clBtnFace
  Constraints.MinHeight = 305
  Constraints.MinWidth = 435
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  ParentBiDiMode = False
  OnActivate = FormActivate
  OnClose = TntFormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnKeyDown = TntFormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 442
    Height = 376
    Align = alClient
    BiDiMode = bdLeftToRight
    BorderStyle = bsSingle
    ParentBiDiMode = False
    TabOrder = 0
    object CaptionLabel: TLabel
      Left = 1
      Top = 1
      Width = 436
      Height = 6
      Align = alTop
      AutoSize = False
      BiDiMode = bdLeftToRight
      Color = clInactiveCaption
      ParentBiDiMode = False
      ParentColor = False
      PopupMenu = CaptionPopup
      Transparent = False
      OnMouseDown = CaptionLabelMouseDown
      OnMouseEnter = CaptionLabelMouseEnter
      OnMouseLeave = CaptionLabelMouseLeave
    end
    object PreviewGroup: TTntGroupBox
      Left = 1
      Top = 194
      Width = 436
      Height = 152
      Align = alClient
      BiDiMode = bdLeftToRight
      Caption = 'Preview'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      object Panel2: TPanel
        Left = 2
        Top = 15
        Width = 432
        Height = 26
        Align = alTop
        AutoSize = True
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        TabOrder = 0
        DesignSize = (
          432
          26)
        object ZoomLabel: TTntLabel
          Left = 175
          Top = 4
          Width = 30
          Height = 13
          BiDiMode = bdLeftToRight
          Caption = '&Zoom:'
          FocusControl = ZoomTrackBar
          ParentBiDiMode = False
        end
        object Bevel5: TBevel
          Left = 169
          Top = 2
          Width = 2
          Height = 19
          Shape = bsLeftLine
        end
        object ColByColOrderCheck: TTntCheckBox
          Left = 6
          Top = 4
          Width = 158
          Height = 17
          BiDiMode = bdLeftToRight
          Caption = '&Column by column order'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          OnClick = BinRadioClick
        end
        object LCDGridLinesCheck: TTntCheckBox
          Left = 340
          Top = 4
          Width = 89
          Height = 17
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = '&Gridlines'
          Checked = True
          ParentBiDiMode = False
          State = cbChecked
          TabOrder = 2
          OnClick = LCDGridLinesCheckClick
        end
        object ZoomTrackBar: TTrackBar
          Left = 221
          Top = 0
          Width = 116
          Height = 26
          Anchors = [akLeft, akTop, akRight]
          Max = 200
          Min = 1
          Frequency = 10
          Position = 10
          TabOrder = 1
          ThumbLength = 18
          OnChange = ZoomTrackBarChange
        end
      end
      object PreviewGrid: TMMAdvancedGrid
        Left = 2
        Top = 41
        Width = 432
        Height = 109
        Cursor = crDefault
        Align = alClient
        BiDiMode = bdLeftToRight
        ColCount = 1
        Ctl3D = True
        DefaultColWidth = 10
        DefaultRowHeight = 10
        DefaultDrawing = False
        FixedCols = 0
        RowCount = 2
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
    object BottomPanel: TPanel
      Left = 1
      Top = 346
      Width = 436
      Height = 25
      Align = alBottom
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 2
      DesignSize = (
        436
        25)
      object CopyBtn: TTntBitBtn
        Left = 336
        Top = 2
        Width = 98
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Caption = 'Co&py'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 2
        OnClick = CopyBtnClick
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFBA6E47AA5429AA5429A250279B4C259648238F46
          228A4321864120FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC17955FD
          F9F6CEB09CCCAF9BCAAD9AC7AC99C6AB98C4A997894321FF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFC98564FFFFFFDA8C5CD18351D18351D18351D183
          51C6AB988E4522FF00FFB7A293634935634935634935634935634935D19273FF
          FFFFFEFDFBFBEFEAF5DED3F0CEBEEDC3AFC7AC99924723FF00FFB7A293F8F3F0
          EADFD7E6D9CFE1D2C7DDCBBFD89F82FFFFFFF3A77FE7976EDA8C5CD18351D183
          51CAAE9A984A25FF00FFB7A293FBF8F7E5AE81DEA173DA9C6ED59768E0AA90FF
          FFFFFFFFFFFFFFFFFBF4F0F7E4DBF2D3C5CCAE9A9D4D25FF00FFBBA697FEFDFC
          FBF6F5F6EFEBF1E6E0ECDED6E7B59CFFFFFFFCAE8AFCAE8AF1DBD2E78E60B357
          2AAC5429A45027FF00FFC1AB9CFFFFFFFAC59FF0B88EE5AE81DEA173ECBDA6FF
          FFFFFFFFFFFFFFFFFFFFFFEA9A72F0C9B2B1572BEDD7CDFF00FFC7B2A3FFFFFF
          FFFFFFFCFAF9F8F2F0F3EAE6F0C4AEFFFFFFFFFFFFFFFFFFFFFFFFEBA785C565
          35F1DBCFFF00FFFF00FFCFB9A9FFFFFFFFDABAFFD0AEF0DED2B7A293F0C4AEEF
          C2ABEFC1AAEFB9A0EDB092EDB092F9E4D9FF00FFFF00FFFF00FFD4BEAFFFFFFF
          FFFFFFFFFFFFFEFDFCBBA696D4C5BA8F725BE2DDD9FF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFD8C2B2FFFFFFFFFFFFFFFFFFFFFFFFC7B1A2A58266E2
          DDD9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD8C2B2D8C2B2
          D4BFAED4BFAECEB8A9C8B2A3E9E2DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      end
      object InsertAsLCDBtn: TTntBitBtn
        Left = 235
        Top = 2
        Width = 98
        Height = 21
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
        OnClick = InsertAsLCDBtnClick
      end
      object HxWPanel: TTntPanel
        Left = 0
        Top = 0
        Width = 75
        Height = 25
        Hint = 'Height x Width'
        Align = alLeft
        BevelInner = bvLowered
        BiDiMode = bdLeftToRight
        BorderWidth = 2
        Caption = 'H x W'
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
      end
    end
    object TopPanel: TPanel
      Left = 1
      Top = 7
      Width = 436
      Height = 187
      Align = alTop
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 0
      DesignSize = (
        436
        187)
      object CodeGroup: TTntGroupBox
        Left = 4
        Top = 1
        Width = 267
        Height = 185
        Anchors = [akLeft, akTop, akRight, akBottom]
        BiDiMode = bdLeftToRight
        Caption = 'Code'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 0
        object Panel3: TPanel
          Left = 2
          Top = 15
          Width = 263
          Height = 22
          Align = alTop
          AutoSize = True
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          TabOrder = 0
          object PasteCodeBtn: TTntSpeedButton
            Left = 0
            Top = 0
            Width = 23
            Height = 22
            Hint = 'Paste'
            BiDiMode = bdLeftToRight
            Flat = True
            Glyph.Data = {
              36060000424D3606000000000000360000002800000020000000100000000100
              18000000000000060000C30E0000C30E00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FF816855262F38262F38262F38262F38262F38262F
              38262F38262F38262F38FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF81685526
              2F38262F38262F38262F38262F38262F38262F38262F38262F38BCCCD2647E8E
              4F5E6F45526137414D262F3889715EE8DCD3B7A293B7A293B7A293B7A293B7A2
              93B7A293B7A293262F38FF00FF647E8E4F5E6F45526137414D262F3889715EFF
              00FFB7A293B7A293B7A293B7A293B7A293B7A293B7A293262F38717F8B22B6EC
              008FCD008FCD008FCD008FCD917966EFE6E1E8DBD3E0D0C6DAC6BCD4BFB2CFB9
              ABCCB6A8B7A293262F38717F8BFF00FFFF00FFFF00FFFF00FFFF00FF917966FF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB7A293262F3875849068C8EA
              10B5F008ACEB03A4E30096D49A826FF7F1EFC3AE9EC3AE9EBDA898B7A293D4BF
              B2B7A293B7A293262F38758490FF00FFFF00FFFF00FFFF00FFFF00FF9A826FFF
              00FFC3AE9EC3AE9EBDA898B7A293FF00FFB7A293B7A293262F3879899474D0ED
              28BDF111B5F007ABEA009DDCA28A78FDFBFAF7F2EEEFE6E1E8DBD3E0D0C6705A
              4A6152465048423F3D3E798994FF00FFFF00FFFF00FFFF00FFFF00FFA28A78FF
              00FFFF00FFFF00FFFF00FFFF00FF705A4A6152465048423F3D3E7E8E9A83D9F0
              46C9F22DBFF216B7F100A0E2A99280FFFFFFC3AE9EC3AE9EBDA899E8DCD37A60
              4DD4C5BA615247FF00FF7E8E9AFF00FFFF00FFFF00FFFF00FFFF00FFA99280FF
              00FFC3AE9EC3AE9EBDA899FF00FF7A604DFF00FF615247FF00FF82949E91E2F3
              66D5F44CCBF332C2F215AFE9B09988FFFFFFFFFFFFFCFBF9F7F1EFEFE7E18168
              567A604DFF00FFFF00FF82949EFF00FFFF00FFFF00FFFF00FFFF00FFB09988FF
              00FFFF00FFFF00FFFF00FFFF00FF8168567A604DFF00FFFF00FF8699A29FEAF6
              83E1F66BD8F553CEF40EB3F0B6A08EB09988A99280A28A789A82709179678971
              5EFF00FFFF00FFFF00FF8699A2FF00FFFF00FFFF00FFFF00FFFF00FFB6A08EB0
              9988A99280A28A789A827091796789715EFF00FFFF00FFFF00FF8A9EA6A9F0F8
              99EAF888E3F56DD1EA13A1D413A1D412A0D30D97CF0791CA008FCD008FCD3039
              44FF00FFFF00FFFF00FF8A9EA6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FF303944FF00FFFF00FFFF00FF8DA1AAAAF1F9
              A7F0F95E7D8A58737F566D7A5269774F66734C6170445A68236F90008FCD3E4A
              58FF00FFFF00FFFF00FF8DA1AAFF00FFFF00FF5E7D8A58737F566D7A5269774F
              66734C6170445A68FF00FFFF00FF3E4A58FF00FFFF00FFFF00FF8FA4ACAAF1F9
              A8F1F95D86968CC6CF93E4F07AD5E762C6DE4F9AB23E5A671C7DA5008FCD4B59
              69FF00FFFF00FFFF00FF8FA4ACFF00FFFF00FF5D8696FF00FFFF00FFFF00FFFF
              00FFFF00FF3E5A67FF00FFFF00FF4B5969FF00FFFF00FFFF00FF8FA4ACABF0F7
              AAF1F9A6EFF77397A2A1ECF5667D8A78C5D64C6C7C3461785FC3E822B6EC4E5E
              6FFF00FFFF00FFFF00FF8FA4ACFF00FFFF00FFFF00FF7397A2FF00FF667D8AFF
              00FF4C6C7C346178FF00FFFF00FF4E5E6FFF00FFFF00FFFF00FFB7CACF8FA4AC
              8FA4AC8FA4AC5B8D9FA5E8EF9BE8F48CD5E246667673858F7A8A95758591BDCE
              D3FF00FFFF00FFFF00FFFF00FF8FA4AC8FA4AC8FA4AC5B8D9FFF00FFFF00FFFF
              00FF46667673858F7A8A95758591FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FF86B3C382ADBD799FB0BCCED3FF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF86B3C382ADBD79
              9FB0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            NumGlyphs = 2
            ParentShowHint = False
            ParentBiDiMode = False
            ShowHint = True
            OnClick = PasteCodeBtnClick
          end
          object ClearCodeMemoBtn: TSpeedButton
            Left = 23
            Top = 0
            Width = 23
            Height = 22
            Hint = 'Clear'
            BiDiMode = bdLeftToRight
            Flat = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFB7A29363493563493563493563493563
              4935634935634935634935634935634935FF00FFFF00FFFF00FFFF00FFFF00FF
              B7A293FFFFFFB7A293B7A293B7A293B7A293B7A293B7A293B7A293B7A2936349
              35FF00FFFF00FFFF00FFFF00FFFF00FFB7A2930005BAFCFAF9FCFAF9F7F1EEF1
              E7E1ECDDD5E6D3C9E1CABDB7A293634935FF00FFFF00FFFF00FFFF00FFFF00FF
              B7A2930005BA0005BAFAF7F5FAF7F5F5EDE9EFE3DC0005BAE4CFC4B7A2936349
              35FF00FFFF00FFFF00FFFF00FFFF00FFB7A293FFFFFF0006F60005BAFDFCFBF8
              F3F00005BAEDDFD8E7D5CBB7A293634935FF00FFFF00FFFF00FFFF00FFFF00FF
              BAA596FFFFFFFFFFFF0006F60005BA0005BA0006F6F0E5DFEBDBD3B7A2936349
              35FF00FFFF00FFFF00FFFF00FFFF00FFBEA99AFFFFFFFFFFFFFFFFFF0005BA00
              06F6F9F5F2F4EBE6EEE1DAB7A293634935FF00FFFF00FFFF00FFFF00FFFF00FF
              C3AE9EFFFFFFFFFFFF0005BA0006F60006F60006F6F7F1EEF1E7E1B7A2936349
              35FF00FFFF00FFFF00FFFF00FFFF00FFC8B2A3FFFFFF0006F60006F6FFFFFFFF
              FFFF0006F60006F6F5EDE9B7A293634935FF00FFFF00FFFF00FFFF00FFFF00FF
              CCB6A7FFFFFF0006F6FFFFFFFFFFFFFFFFFFFFFFFF0006F6B7A293B7A293644A
              36FF00FFFF00FFFF00FFFF00FFFF00FFD1BBABFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFB7A293644A36644A36644A36FF00FFFF00FFFF00FFFF00FFFF00FF
              D5BFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9A495D4C5BA644A36E1D5
              CDFF00FFFF00FFFF00FFFF00FFFF00FFD8C2B2FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFC0AB9C644A36E2D6CDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              D8C2B2D8C2B2D8C2B2D8C2B2D8C2B2D4BEAECFB9A9C9B3A4E2D6CDFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            ParentShowHint = False
            ParentBiDiMode = False
            ShowHint = True
            OnClick = ClearCodeMemoBtnClick
          end
        end
        object CodeMemo: TTntDelayedMemo
          Left = 2
          Top = 37
          Width = 263
          Height = 146
          Align = alClient
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          PopupMenu = MainForm.GeneralEditPopupMenu
          ScrollBars = ssBoth
          TabOrder = 1
          ChangeDelay = 400
          OnDelayedChange = CodeMemoDelayedChange
        end
      end
      object SettingsGroup: TTntGroupBox
        Left = 271
        Top = 1
        Width = 161
        Height = 185
        Anchors = [akTop, akRight, akBottom]
        BiDiMode = bdLeftToRight
        Caption = 'Settings'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 1
        DesignSize = (
          161
          185)
        object IgnoreCharsEditLabel: TTntLabel
          Left = 8
          Top = 144
          Width = 120
          Height = 13
          BiDiMode = bdLeftToRight
          Caption = '&Ignore these characters:'
          FocusControl = IgnoreCharsEdit
          ParentBiDiMode = False
        end
        object ManualSettingsGroup: TTntGroupBox
          Left = 8
          Top = 31
          Width = 149
          Height = 111
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          TabOrder = 1
          object PrefixEditLabel: TTntLabel
            Left = 4
            Top = 28
            Width = 32
            Height = 13
            BiDiMode = bdLeftToRight
            Caption = '&Prefix:'
            Enabled = False
            FocusControl = PrefixEdit
            ParentBiDiMode = False
          end
          object SuffixEditLabel: TTntLabel
            Left = 4
            Top = 68
            Width = 32
            Height = 13
            BiDiMode = bdLeftToRight
            Caption = '&Suffix:'
            Enabled = False
            FocusControl = SuffixEdit
            ParentBiDiMode = False
          end
          object SuffixEdit: TTntDelayedEdit
            Left = 4
            Top = 84
            Width = 138
            Height = 21
            BiDiMode = bdLeftToRight
            Enabled = False
            ParentBiDiMode = False
            PopupMenu = MainForm.GeneralEditPopupMenu
            TabOrder = 3
            ChangeDelay = 500
            OnDelayedChange = PrefixEditDelayedChange
          end
          object PrefixEdit: TTntDelayedEdit
            Left = 4
            Top = 44
            Width = 137
            Height = 21
            BiDiMode = bdLeftToRight
            Enabled = False
            ParentBiDiMode = False
            PopupMenu = MainForm.GeneralEditPopupMenu
            TabOrder = 2
            ChangeDelay = 500
            OnDelayedChange = PrefixEditDelayedChange
          end
          object BinRadio: TTntRadioButton
            Left = 4
            Top = 10
            Width = 53
            Height = 17
            BiDiMode = bdLeftToRight
            Caption = '&Bin'
            Checked = True
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 0
            TabStop = True
            OnClick = BinRadioClick
          end
          object HexRadio: TTntRadioButton
            Left = 64
            Top = 10
            Width = 81
            Height = 17
            BiDiMode = bdLeftToRight
            Caption = '&Hex'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 1
            OnClick = BinRadioClick
          end
        end
        object AutodetectCodeFormatCheck: TTntCheckBox
          Left = 8
          Top = 14
          Width = 149
          Height = 15
          BiDiMode = bdLeftToRight
          Caption = '&Autodetect code format'
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
          OnClick = AutodetectCodeFormatCheckClick
        end
        object IgnoreCharsEdit: TTntDelayedEdit
          Left = 8
          Top = 160
          Width = 149
          Height = 21
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          PopupMenu = MainForm.GeneralEditPopupMenu
          TabOrder = 2
          ChangeDelay = 500
          OnDelayedChange = PrefixEditDelayedChange
        end
      end
    end
  end
  object CaptionPopup: TPopupMenu
    BiDiMode = bdLeftToRight
    Images = MenuImages
    ParentBiDiMode = False
    Left = 408
    object Window1: TTntMenuItem
      Caption = 'Restore'
      ImageIndex = 1
      OnClick = Window1Click
    end
    object N1: TTntMenuItem
      Caption = '-'
    end
    object Close1: TTntMenuItem
      Caption = 'Close'
      ImageIndex = 0
      OnClick = Close1Click
    end
  end
  object MenuImages: TImageList
    Left = 400
    Top = 39
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      FFFFFFFF00000000FFFFE01F00000000E7CFEFDF00000000E38FEFDF00000000
      F11FEFC700000000F83FE01700000000FC7FE01700000000F83FFBF700000000
      F11FF80700000000E38FF80700000000E7CFFFFF00000000FFFFFFFF00000000
      FFFFFFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
end
