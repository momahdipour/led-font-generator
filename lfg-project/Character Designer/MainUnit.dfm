object MainForm: TMainForm
  Left = 221
  Top = 198
  Width = 573
  Height = 542
  BiDiMode = bdLeftToRight
  Caption = 'LED Character Designer'
  Color = clBtnFace
  Constraints.MinHeight = 390
  Constraints.MinWidth = 563
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TopPanel: TTntPanel
    Left = 0
    Top = 0
    Width = 565
    Height = 76
    Align = alTop
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 4
    object Bevel1: TTntBevel
      Left = 144
      Top = 3
      Width = 2
      Height = 69
      Shape = bsLeftLine
    end
    object ClearLCDBtn: TTntBitBtn
      Left = 4
      Top = 3
      Width = 137
      Height = 23
      Hint = '(Ctrl+Shift+A)'
      BiDiMode = bdLeftToRight
      Caption = '&Clear Design         '
      ParentBiDiMode = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = ClearLCDBtnClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF0005B7
        0005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF0005B70005B7FF00FFFF00FF0005B70005B70005B7FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF0005B70005B7FF00FFFF00FFFF00FF0005B7
        0205B70005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005
        B7FF00FFFF00FFFF00FFFF00FFFF00FF2005DC0205BB0005B70005B7FF00FFFF
        00FFFF00FFFF00FF0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FF573F2B
        573F2B573F2B0005B70005B70105B5573F2B0105B50005B70005B7573F2B573F
        2B573F2B573F2BFF00FFFF00FFC6B3A6CEBDB1CBB9ACC8B6A90206B60208C705
        0AC60107CE0106B4BBA697B9A495B7A293B7A293573F2BFF00FFFF00FFC2AEA0
        FEFEFEFEFEFEFEFEFEC4B1A31116C40005C10006DABFAB9DF7DBCAF6D5C0F5CF
        B7B7A293573F2BFF00FFFF00FFC4B1A3FEFEFEFEFEFEFEFEFE2F2FB2050BD807
        0CCF0006DA0107E9F9E1D3F7DBCAF5D5C0B7A293573F2BFF00FFFF00FFC6B3A6
        CEBDB1CBB9AC1014E00006DA0B10D1CBB9ACC8B6A90107E50006EFBFAC9DBDA9
        9AB7A293573F2BFF00FFFF00FFC2AEA0FEFEFE0208F80006DA1F22E7FEFEFEFD
        FBFAFCF7F4C8B6A90006F80006F6F9E2D3B7A293573F2BFF00FFFF00FFC4B1A3
        0006F60006F60208F8D7C7BBFEFEFEFEFEFEFDFBFACBB9ACFBF3ED0006F60006
        F6B7A293573F2BFF00FFFF00FF0006F60006F60006F6DCCCC1D9C9BFD7C7BCD4
        C4B8D1C0B4CEBDB1CBB9ACC8B5A9C5B2A50006F6573F2BFF00FF0006F60006F6
        0006F6FEFEFEFEFEFEDBCCC1FEFEFEFEFEFEFEFEFED1C0B4FDFBF9FDF7F4FCF3
        EDB7A293573F2BFF00FF0006F60006F6FEFEFEFEFEFEFEFEFEDDCEC5FEFEFEFE
        FEFEFEFEFED4C4B8FEFEFEFDFBFAFDF7F3B7A293573F2BFF00FFFF00FFCAB7AA
        C9B7AAC7B4A7C4B1A3C0AD9FBCA89BB8A596B49F91B09B8BAA9586A69080A08B
        7AA08B7A9C8675FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object SaveCharBtn: TTntBitBtn
      Left = 4
      Top = 26
      Width = 137
      Height = 23
      Hint = '(Ctrl+S)'
      BiDiMode = bdLeftToRight
      Caption = '&Save Character...'
      ParentBiDiMode = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = SaveCharBtnClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFEFCECFC36465AA5556A452539F4F509A4D4D94
        4A4A8F4747894444834141783B3C783B3C7239396E3637FF00FFFF00FFCF6B6C
        F38E8FE68081AA4424473221C3B4ABC6BBB3CAC1BCCEC8C4564D489E3E339C3D
        36983931723939FF00FFFF00FFD16F70FF999AEC8687E68081715B4B473C348D
        7868EDE0D8F1E7E08F7F73A34135A2423C9C3D35783B3CFF00FFFF00FFD47576
        FF9FA0F59091EC8687715B4B000000473C34E9D9CEECDDD4857467AE4B43AA49
        44A3423C7D3E3EFF00FFFF00FFD77B7CFFA9AAFB9FA0F59394715B4B715B4B71
        5B4B715B4B7662527D6A5BBA5654B24F4CAA4944834141FF00FFFF00FFDB8384
        FFB3B4FFADAEFCA3A4F48E8FEC8687E68081DF797AD77172D16B6CC15D5CBA56
        54B2504C894444FF00FFFF00FFDF8A8BFFBBBCFFB6B7C96360C45E56BE584BB8
        523FB34D34AD4728A7411CA13B11C15D5CBA56548F4747FF00FFFF00FFE29192
        FFBDBECC6667FFFFFFFFFFFFFBF8F6F6EEEAF0E5DEEADBD2E5D1C6E1CABDA13B
        11C25D5C944A4AFF00FFFF00FFE59798FFBDBED36D6EFFFFFFFFFFFFFFFFFFFB
        F8F6F6EEEAF0E5DEEADBD2E5D1C6A7411CCC67679A4D4DFF00FFFF00FFE99E9F
        FFBDBEDC7677FFFFFFFFFFFFFFFFFFFFFFFFFBF8F6F6EEEAF0E5DEEADBD2AD47
        28D771729F4F50FF00FFFF00FFEDA6A7FFBDBEE68081FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFBF8F6F6EEEAF0E5DEB34D34DF797AA45253FF00FFFF00FFF0ACAD
        FFBDBEEF898AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF8F6F6EEEAB852
        3F673333AA5556FF00FFFF00FFF3B2B3FFBDBEF89293FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFBF8F6BE584BB05859B05859FF00FFFF00FFF5B6B7
        F5B6B7F3B2B3F1ADAEEEA7A8EAA1A2E79A9BE49394E08E8FDD8788DA8081D67A
        7BD37475D16F70FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object LoadCharBtn: TTntBitBtn
      Left = 4
      Top = 49
      Width = 137
      Height = 23
      Hint = '(Ctrl+O)'
      BiDiMode = bdLeftToRight
      Caption = '&Open Character...'
      ParentBiDiMode = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = LoadCharBtnClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF75848F66808F
        607987576E7B4E626F4456613948522E3A43252E351B222914191E0E12160E13
        18FF00FFFF00FFFF00FF77879289A1AB6AB2D4008FCD008FCD008FCD048CC708
        88BE0F82B4157CA91B779F1F7296224B5C87A2ABFF00FFFF00FF7A8A957EBED3
        8AA4AE7EDCFF5FCFFF55CBFF4CC4FA41BCF537B3F02EAAEB24A0E5138CD42367
        805E696DFF00FFFF00FF7D8E9879D2EC8BA4AD89C2CE71D8FF65D3FF5CCEFF51
        C9FE49C1FA3FB9F534B0EE29A8E91085CD224B5B98B2BAFF00FF80919C81D7EF
        7DC5E08CA6B080DDFE68D3FF67D4FF62D1FF58CDFF4EC7FC46BEF73BB6F231AC
        EC2569817A95A1FF00FF83959F89DCF18CE2FF8DA8B18CBAC774D8FF67D4FF67
        D4FF67D4FF5FD0FF54CDFF4BC5FC41BBF72EA2DB51677498B2BA869AA392E1F2
        98E8FD80C4DE8EA7B081DEFD84E0FF84E0FF84E0FF84E0FF81DFFF7BDDFF74D8
        FF6BD6FF56A9D18F9BA4889CA59AE6F39FEBFB98E8FE8BACB98BACB98AAAB788
        A6B386A3AF839FAA819AA67F95A17C919D7A8E99798B957788938BA0A8A0EAF6
        A6EEF99FEBFB98E8FE7ADAFF67D4FF67D4FF67D4FF67D4FF67D4FF67D4FF7788
        93FF00FFFF00FFFF00FF8EA2ABA7EEF6ABF0F7A6EEF99FEBFB98E8FD71D4FB89
        9EA78699A382949F7E909A7A8C97778893FF00FFFF00FFFF00FF8FA4ACA0D2DA
        ABF0F7ABF0F7A6EEF99FEBFB8DA1AAB5CBD0FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFBDCED48FA4AC8FA4AC8FA4AC8FA4AC8FA4ACB5CBD0FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object TopSettingsPanel: TTntPanel
      Left = 149
      Top = 3
      Width = 368
      Height = 70
      AutoSize = True
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      ParentBackground = False
      TabOrder = 3
      object HeightLabel: TTntLabel
        Left = 0
        Top = 11
        Width = 56
        Height = 13
        AutoSize = False
        BiDiMode = bdLeftToRight
        Caption = '&Height:'
        FocusControl = HeightSpin
        ParentBiDiMode = False
      end
      object WidthLabel: TTntLabel
        Left = 0
        Top = 38
        Width = 56
        Height = 13
        AutoSize = False
        BiDiMode = bdLeftToRight
        Caption = '&Width:'
        FocusControl = WidthSpin
        ParentBiDiMode = False
      end
      object Bevel13: TBevel
        Left = 130
        Top = 1
        Width = 2
        Height = 69
        Shape = bsLeftLine
      end
      object FilledDotColorLabel: TTntLabel
        Left = 138
        Top = 4
        Width = 123
        Height = 13
        AutoSize = False
        BiDiMode = bdLeftToRight
        Caption = '&Filled cell color:'
        FocusControl = FilledColorBox
        ParentBiDiMode = False
      end
      object ClearedDotColorLabel: TTntLabel
        Left = 138
        Top = 28
        Width = 123
        Height = 13
        AutoSize = False
        BiDiMode = bdLeftToRight
        Caption = 'C&leared cell color:'
        FocusControl = ClearedColorBox
        ParentBiDiMode = False
      end
      object GridColorLabel: TTntLabel
        Left = 138
        Top = 51
        Width = 123
        Height = 13
        AutoSize = False
        BiDiMode = bdLeftToRight
        Caption = 'G&ridlines color:'
        FocusControl = GridColorBox
        ParentBiDiMode = False
      end
      object HeightSpin: TSpinEdit
        Left = 58
        Top = 7
        Width = 65
        Height = 22
        AutoSize = False
        MaxValue = 10000
        MinValue = 2
        PopupMenu = GeneralEditPopupMenu
        TabOrder = 0
        Value = 8
        OnChange = WidthSpinChange
        OnKeyDown = WidthSpinKeyDown
      end
      object WidthSpin: TSpinEdit
        Left = 58
        Top = 35
        Width = 65
        Height = 22
        AutoSize = False
        MaxValue = 10000
        MinValue = 2
        PopupMenu = GeneralEditPopupMenu
        TabOrder = 1
        Value = 8
        OnChange = WidthSpinChange
        OnKeyDown = WidthSpinKeyDown
      end
      object FilledColorBox: TD7ColorBox
        Left = 263
        Top = 0
        Width = 105
        Height = 22
        Selected = clGreen
        Style = [cbStandardColors, cbCustomColor, cbPrettyNames]
        DropDownCount = 17
        ItemHeight = 16
        TabOrder = 2
        OnChange = FilledColorBoxChange
      end
      object ClearedColorBox: TD7ColorBox
        Left = 263
        Top = 24
        Width = 105
        Height = 22
        Selected = clWhite
        Style = [cbStandardColors, cbCustomColor, cbPrettyNames]
        DropDownCount = 17
        ItemHeight = 16
        TabOrder = 3
        OnChange = ClearedColorBoxChange
      end
      object GridColorBox: TD7ColorBox
        Left = 263
        Top = 48
        Width = 105
        Height = 22
        Selected = clGreen
        Style = [cbStandardColors, cbCustomColor, cbPrettyNames]
        DropDownCount = 17
        ItemHeight = 16
        TabOrder = 4
        OnChange = GridColorBoxChange
      end
    end
  end
  object MiddlePanel: TTntPanel
    Left = 0
    Top = 76
    Width = 565
    Height = 38
    Align = alTop
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 3
    object Bevel2: TTntBevel
      Left = 412
      Top = 4
      Width = 2
      Height = 30
      Shape = bsLeftLine
    end
    object Bevel6: TTntBevel
      Left = 355
      Top = 4
      Width = 2
      Height = 30
      Shape = bsLeftLine
    end
    object LCDGridLinesCheck: TTntCheckBox
      Left = 419
      Top = 3
      Width = 133
      Height = 17
      BiDiMode = bdLeftToRight
      Caption = '&Gridlines'
      Checked = True
      ParentBiDiMode = False
      State = cbChecked
      TabOrder = 1
      OnClick = LCDGridLinesCheckClick
    end
    object ShowCursorRectangleCheck: TTntCheckBox
      Left = 419
      Top = 19
      Width = 133
      Height = 17
      BiDiMode = bdLeftToRight
      Caption = 'Show c&ursor rectangle'
      Checked = True
      ParentBiDiMode = False
      State = cbChecked
      TabOrder = 2
      OnClick = ShowCursorRectangleCheckClick
    end
    object CellSpaceBtn: TPopupSpinEdit
      Left = 362
      Top = 7
      Width = 45
      Height = 25
      Hint = 'Space between cells'
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
    object ZoomPanel: TTntPanel
      Left = 4
      Top = 7
      Width = 343
      Height = 27
      BevelOuter = bvNone
      TabOrder = 3
      object ZoomLabel: TTntLabel
        Left = 0
        Top = 4
        Width = 52
        Height = 13
        AutoSize = False
        BiDiMode = bdLeftToRight
        Caption = '&Zoom:'
        FocusControl = ZoomTrackBar
        ParentBiDiMode = False
      end
      object ZoomTrackBar: TTntTrackBar
        Left = 50
        Top = 0
        Width = 293
        Height = 27
        Max = 200
        Min = 1
        Frequency = 10
        Position = 18
        TabOrder = 0
        ThumbLength = 18
        OnChange = ZoomTrackBarChange
      end
    end
  end
  object TopControlBar: TTntControlBar
    Left = 0
    Top = 114
    Width = 565
    Height = 26
    Align = alTop
    AutoSize = True
    BevelInner = bvNone
    BevelOuter = bvNone
    BevelKind = bkFlat
    ParentShowHint = False
    PopupMenu = CustomizeToolBarPopupMenu
    RowSnap = False
    ShowHint = True
    TabOrder = 2
    object EditAndDesignToolBar: TTntToolBar
      Left = 11
      Top = 2
      Width = 400
      Height = 22
      Align = alNone
      AutoSize = True
      Caption = 'Edit and Design'
      DragKind = dkDock
      EdgeBorders = []
      EdgeInner = esNone
      EdgeOuter = esNone
      Flat = True
      Images = ToolBarImages
      PopupMenu = CustomizeToolBarPopupMenu
      TabOrder = 0
      Transparent = True
      OnEndDock = EditAndDesignToolBarEndDock
      object CutToolBtn: TTntToolButton
        Left = 0
        Top = 0
        Hint = 'Cut'
        Caption = 'CutToolBtn'
        ImageIndex = 4
        OnClick = CutToolBtnClick
      end
      object CopyToolBtn: TTntToolButton
        Left = 23
        Top = 0
        Hint = 'Copy'
        Caption = 'CopyToolBtn'
        ImageIndex = 5
        OnClick = CopyToolBtnClick
      end
      object PasteToolBtn: TTntToolButton
        Left = 46
        Top = 0
        Hint = 'Paste'
        Caption = 'PasteToolBtn'
        Enabled = False
        ImageIndex = 6
        OnClick = PasteToolBtnClick
      end
      object ClearLCDToolBtn: TTntToolButton
        Left = 69
        Top = 0
        Hint = 'Delete'
        Caption = 'ClearLCDToolBtn'
        ImageIndex = 7
        OnClick = ClearLCDToolBtnClick
      end
      object TntToolButton5: TTntToolButton
        Left = 92
        Top = 0
        Width = 8
        Caption = 'TntToolButton5'
        Style = tbsSeparator
      end
      object UndoToolBtn: TTntToolButton
        Left = 100
        Top = 0
        Caption = 'UndoToolBtn'
        ImageIndex = 22
        OnClick = UndoToolBtnClick
      end
      object RedoToolBtn: TTntToolButton
        Left = 123
        Top = 0
        Caption = 'RedoToolBtn'
        ImageIndex = 23
        OnClick = RedoToolBtnClick
      end
      object TntToolButton3: TTntToolButton
        Left = 146
        Top = 0
        Width = 8
        Caption = 'TntToolButton3'
        Style = tbsSeparator
      end
      object ShiftLeftToolBtn: TTntToolButton
        Left = 154
        Top = 0
        Hint = 'Shift At Cursor Left'
        Caption = 'ShiftLeftToolBtn'
        ImageIndex = 9
        OnClick = ShiftLeftToolBtnClick
      end
      object ShiftRightToolBtn: TTntToolButton
        Left = 177
        Top = 0
        Hint = 'Shift At Cursor Right'
        Caption = 'ShiftRightToolBtn'
        ImageIndex = 10
        OnClick = ShiftRightToolBtnClick
      end
      object TntToolButton8: TTntToolButton
        Left = 200
        Top = 0
        Width = 8
        Caption = 'TntToolButton8'
        Style = tbsSeparator
      end
      object RotateLToolBtn: TTntToolButton
        Left = 208
        Top = 0
        Hint = 'Rotate Left'
        Caption = 'RotateLToolBtn'
        ImageIndex = 11
        OnClick = RotateLToolBtnClick
      end
      object RotateRToolBtn: TTntToolButton
        Left = 231
        Top = 0
        Hint = 'Rotate Right'
        Caption = 'RotateRToolBtn'
        ImageIndex = 12
        OnClick = RotateRToolBtnClick
      end
      object RotateUToolBtn: TTntToolButton
        Left = 254
        Top = 0
        Hint = 'Rotate Up'
        Caption = 'RotateUToolBtn'
        ImageIndex = 13
        OnClick = RotateUToolBtnClick
      end
      object RotateDToolBtn: TTntToolButton
        Left = 277
        Top = 0
        Hint = 'Rotate Down'
        Caption = 'RotateDToolBtn'
        ImageIndex = 14
        OnClick = RotateDToolBtnClick
      end
      object TntToolButton13: TTntToolButton
        Left = 300
        Top = 0
        Width = 8
        Caption = 'TntToolButton13'
        Style = tbsSeparator
      end
      object FlipHorizontalToolBtn: TTntToolButton
        Left = 308
        Top = 0
        Hint = 'Flip Horizontal'
        Caption = 'FlipHorizontalToolBtn'
        ImageIndex = 15
        OnClick = FlipHorizontalToolBtnClick
      end
      object FlipVerticalToolBtn: TTntToolButton
        Left = 331
        Top = 0
        Hint = 'Flip Vertical'
        Caption = 'FlipVerticalToolBtn'
        ImageIndex = 16
        OnClick = FlipVerticalToolBtnClick
      end
      object RotatePage90CWToolBtn: TTntToolButton
        Left = 354
        Top = 0
        Hint = 'Rotate Page 90'#176' CW'
        Caption = 'RotatePage90CWToolBtn'
        ImageIndex = 17
        OnClick = RotatePage90CWToolBtnClick
      end
      object RotatePage90CCWToolBtn: TTntToolButton
        Left = 377
        Top = 0
        Hint = 'Rotate Page 90'#176' CCW'
        Caption = 'RotatePage90CCWToolBtn'
        ImageIndex = 18
        OnClick = RotatePage90CCWToolBtnClick
      end
    end
  end
  object RightControlBar: TTntControlBar
    Left = 520
    Top = 140
    Width = 45
    Height = 368
    Align = alRight
    AutoSize = True
    BevelInner = bvNone
    BevelOuter = bvNone
    BevelKind = bkFlat
    ParentShowHint = False
    PopupMenu = CustomizeToolBarPopupMenu
    RowSnap = False
    ShowHint = True
    TabOrder = 5
  end
  object LeftControlBar: TTntControlBar
    Left = 0
    Top = 140
    Width = 41
    Height = 368
    Align = alLeft
    AutoSize = True
    BevelInner = bvNone
    BevelOuter = bvNone
    BevelKind = bkFlat
    ParentShowHint = False
    PopupMenu = CustomizeToolBarPopupMenu
    RowSnap = False
    ShowHint = True
    TabOrder = 6
  end
  object LCDGrid: TMMAdvancedGrid
    Left = 41
    Top = 140
    Width = 479
    Height = 368
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
    OnKeyDown = LCDGridKeyDown
    OnKeyPress = LCDGridKeyPress
    OnMouseDown = LCDGridMouseDown
    OnMouseMove = LCDGridMouseMove
    OnMouseUp = LCDGridMouseUp
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
    VAlignment = vtaTop
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
  object OldLCDGrid: TMMAdvancedGrid
    Left = 193
    Top = 231
    Width = 260
    Height = 97
    Cursor = crDefault
    TabStop = False
    BiDiMode = bdLeftToRight
    ColCount = 5
    DefaultRowHeight = 21
    DefaultDrawing = False
    FixedCols = 1
    RowCount = 5
    FixedRows = 1
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
  object XPManifest1: TXPManifest
    Left = 172
    Top = 159
  end
  object ToolBarImages: TImageList
    Left = 142
    Top = 158
    Bitmap = {
      494C010118001D00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000008000000001002000000000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000040000000800000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FE01FE01FFFFFFFFFE01FE01FFFFFFFF
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
  object ApplicationEvents1: TApplicationEvents
    OnShortCut = ApplicationEvents1ShortCut
    Left = 208
    Top = 160
  end
  object CustomizeToolBarPopupMenu: TTntPopupMenu
    OwnerDraw = True
    OnPopup = CustomizeToolBarPopupMenuPopup
    Left = 77
    Top = 158
    object ToggleEditAndDesignToolBarMenuItem: TTntMenuItem
      AutoCheck = True
      Caption = 'Edit and Design'
      Checked = True
      Enabled = False
      OnClick = ToggleEditAndDesignToolBarMenuItemClick
    end
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
    Gradient = False
    FlatMenu = False
    AutoDetect = True
    Active = True
    Left = 111
    Top = 159
  end
  object StandardSystemMenu1: TStandardSystemMenu
    Left = 240
    Top = 160
  end
  object ApplyAfterShowConfigTimer: TTimer
    Enabled = False
    Interval = 1
    OnTimer = ApplyAfterShowConfigTimerTimer
    Left = 45
    Top = 158
  end
  object GeneralEditPopupMenu: TTntPopupMenu
    AutoHotkeys = maManual
    Images = ToolBarImages
    OwnerDraw = True
    OnPopup = GeneralEditPopupMenuPopup
    Left = 14
    Top = 159
    object GECutPopupMenuItem: TTntMenuItem
      Caption = 'Cu&t'
      ImageIndex = 4
      OnClick = GECutPopupMenuItemClick
    end
    object GECopyPopupMenuItem: TTntMenuItem
      Caption = '&Copy'
      ImageIndex = 5
      OnClick = GECopyPopupMenuItemClick
    end
    object GEPastePopupMenuItem: TTntMenuItem
      Caption = '&Paste'
      ImageIndex = 6
      OnClick = GEPastePopupMenuItemClick
    end
  end
  object LicenseTimer: TTimer
    Enabled = False
    OnTimer = LicenseTimerTimer
    Left = 240
    Top = 192
  end
end
