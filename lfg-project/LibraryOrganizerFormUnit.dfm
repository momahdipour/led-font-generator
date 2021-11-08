object LibraryOrganizerForm: TLibraryOrganizerForm
  Left = 308
  Top = 175
  Width = 637
  Height = 495
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Character Library Organizer'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnHide = TntFormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter2: TSplitter
    Left = 0
    Top = 250
    Width = 629
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    AutoSnap = False
    ResizeStyle = rsLine
    OnCanResize = Splitter2CanResize
  end
  object TopSectionPanel: TPanel
    Left = 0
    Top = 0
    Width = 629
    Height = 250
    Align = alClient
    BiDiMode = bdLeftToRight
    Constraints.MinHeight = 100
    ParentBiDiMode = False
    TabOrder = 0
    object Splitter3: TSplitter
      Left = 373
      Top = 1
      Height = 248
      AutoSnap = False
    end
    object LeftMainPanel: TPanel
      Left = 1
      Top = 1
      Width = 372
      Height = 248
      Align = alLeft
      BiDiMode = bdLeftToRight
      Caption = 'LeftMainPanel'
      ParentBiDiMode = False
      TabOrder = 0
      OnResize = LeftMainPanelResize
      object Splitter1: TSplitter
        Left = 197
        Top = 1
        Height = 223
        AutoSnap = False
        OnMoved = Splitter1Moved
      end
      object CategoryPanel1: TPanel
        Left = 1
        Top = 1
        Width = 196
        Height = 223
        Align = alLeft
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        TabOrder = 0
        object ButtonPanel1: TPanel
          Left = 1
          Top = 1
          Width = 194
          Height = 26
          Align = alTop
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          object NewCategoryBtn: TTntBitBtn
            Left = 1
            Top = 1
            Width = 92
            Height = 24
            Hint = 'Create new category'
            BiDiMode = bdLeftToRight
            Caption = '&New Category'
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
            OnClick = NewCategoryBtnClick
            Glyph.Data = {
              36060000424D3606000000000000360000002800000020000000100000000100
              18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFEADBD3AE582BF4E7E1FF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDE
              DEDE6C6C6CEAEAEAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFEADBD3A25631C66E41AE582BF4E7E1FF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDEDEDE69
              69698383836C6C6CEAEAEAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFEADBD3A0502AC46E42D87B4CE58351AE582BF3E6DFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDEDEDE65656583
              83839292929B9B9B6C6C6CE9E9E9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFEADBD39D4E28BF6A3FD17648E58453F89D6FF79A6BC5764EF8ED
              E8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDEDEDE6262627F7F7F8C
              8C8C9C9C9CB3B3B3B1B1B1898989F0F0F0FF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FF9649249D4D25AB5429DE7F4FF28C59FFA87DDB906AE59973E89C
              76FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5D5D5D6161616A6A6A96
              9696A5A5A5BEBEBEA2A2A2ACACACAFAFAFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFA24F27EC8856FC935EFEAE85D1855FFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF646464A1
              A1A1ADADADC1C1C1989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FF9A4B25F7905CFDA578FDBE9EDA8E68FF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5F5F5FA9
              A9A9BABABACDCDCDA1A1A1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FF924723FDB089FCB997FBC3A6E29670FF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5A5A5AC3
              C3C3C9C9C9D0D0D0A9A9A9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFCF835DD78B65DE926CE49872E89C76FF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9696969E
              9E9EA5A5A5ABABABAFAFAFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            Layout = blGlyphRight
            NumGlyphs = 2
            Spacing = 1
          end
          object RenameCategoryBtn: TTntBitBtn
            Left = 93
            Top = 1
            Width = 50
            Height = 24
            Hint = 'Rename selected category'
            BiDiMode = bdLeftToRight
            Caption = '&Rename'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = RenameCategoryBtnClick
          end
          object DeleteCategoryBtn: TTntBitBtn
            Left = 143
            Top = 1
            Width = 50
            Height = 24
            Hint = 'Delete an empty category'
            BiDiMode = bdLeftToRight
            Caption = '&Delete'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = DeleteCategoryBtnClick
          end
        end
        object CategoryFolderTreeView1: TMMFolderTreeView
          Left = 1
          Top = 27
          Width = 194
          Height = 195
          Align = alClient
          BiDiMode = bdLeftToRight
          HideSelection = False
          HotTrack = True
          Indent = 19
          ParentBiDiMode = False
          ReadOnly = True
          SortType = stText
          TabOrder = 1
          OnDragDrop = CategoryFolderTreeView1DragDrop
          OnDragOver = CategoryFolderTreeView2DragOver
          OnFolderChange = CategoryFolderTreeView1FolderChange
          AllowToCancelRefresh = True
          CancelDelay = 2000
        end
      end
      object CharacterListPanel: TPanel
        Left = 200
        Top = 1
        Width = 171
        Height = 223
        Align = alClient
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        TabOrder = 1
        object Panel8: TPanel
          Left = 1
          Top = 1
          Width = 169
          Height = 26
          Align = alTop
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          TabOrder = 0
          object DeleteCharacterBtn: TTntBitBtn
            Left = 65
            Top = 1
            Width = 50
            Height = 25
            Hint = 'Delete selected character'
            BiDiMode = bdLeftToRight
            Caption = 'De&lete'
            ParentBiDiMode = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = DeleteCharacterBtnClick
          end
          object RenameCharacterBtn: TTntBitBtn
            Left = 1
            Top = 1
            Width = 64
            Height = 25
            Hint = 'Rename selected character'
            BiDiMode = bdLeftToRight
            Caption = 'R&ename'
            ParentBiDiMode = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = RenameCharacterBtnClick
            Glyph.Data = {
              36060000424D3606000000000000360000002800000020000000100000000100
              18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFEADBD3AE582BF4E7E1FF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDE
              DEDE6C6C6CEAEAEAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFEADBD3A25631C66E41AE582BF4E7E1FF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDEDEDE69
              69698383836C6C6CEAEAEAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFEADBD3A0502AC46E42D87B4CE58351AE582BF3E6DFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDEDEDE65656583
              83839292929B9B9B6C6C6CE9E9E9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFEADBD39D4E28BF6A3FD17648E58453F89D6FF79A6BC5764EF8ED
              E8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDEDEDE6262627F7F7F8C
              8C8C9C9C9CB3B3B3B1B1B1898989F0F0F0FF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FF9649249D4D25AB5429DE7F4FF28C59FFA87DDB906AE59973E89C
              76FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5D5D5D6161616A6A6A96
              9696A5A5A5BEBEBEA2A2A2ACACACAFAFAFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFA24F27EC8856FC935EFEAE85D1855FFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF646464A1
              A1A1ADADADC1C1C1989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FF9A4B25F7905CFDA578FDBE9EDA8E68FF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5F5F5FA9
              A9A9BABABACDCDCDA1A1A1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FF924723FDB089FCB997FBC3A6E29670FF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5A5A5AC3
              C3C3C9C9C9D0D0D0A9A9A9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFCF835DD78B65DE926CE49872E89C76FF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9696969E
              9E9EA5A5A5ABABABAFAFAFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            Layout = blGlyphRight
            NumGlyphs = 2
            Spacing = 1
          end
        end
        object CharactersListBox: TWheelListBox
          Left = 1
          Top = 27
          Width = 169
          Height = 195
          Align = alClient
          BiDiMode = bdLeftToRight
          ItemHeight = 13
          ParentBiDiMode = False
          Sorted = True
          TabOrder = 1
          OnClick = CharactersListBoxClick
          OnMouseDown = CharactersListBoxMouseDown
          OnMouseMove = CharactersListBoxMouseMove
          OnMouseWheel = CharactersListBoxMouseWheel
        end
      end
      object CharLibPathPanel1: TPanel
        Left = 1
        Top = 224
        Width = 370
        Height = 23
        Align = alBottom
        Alignment = taLeftJustify
        BevelInner = bvLowered
        BevelOuter = bvSpace
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 2
        OnResize = CharLibPathPanel1Resize
        object CharLibPathLabel1: TTntLabel
          Left = 2
          Top = 2
          Width = 366
          Height = 19
          Align = alClient
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 'CharLibPathLabel1'
          ParentBiDiMode = False
          ParentShowHint = False
          ShowHint = True
        end
      end
    end
    object RightMainPanel: TPanel
      Left = 376
      Top = 1
      Width = 252
      Height = 248
      Align = alClient
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 1
      object Panel10: TPanel
        Left = 1
        Top = 1
        Width = 77
        Height = 223
        Align = alLeft
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        TabOrder = 0
        object CopyToBtn: TTntBitBtn
          Left = 4
          Top = 68
          Width = 69
          Height = 25
          BiDiMode = bdLeftToRight
          Caption = 'Co&py To >>'
          ParentBiDiMode = False
          TabOrder = 1
          OnClick = CopyToBtnClick
        end
        object MoveToBtn: TTntBitBtn
          Left = 4
          Top = 28
          Width = 69
          Height = 25
          BiDiMode = bdLeftToRight
          Caption = '&Move To >>'
          ParentBiDiMode = False
          TabOrder = 0
          OnClick = MoveToBtnClick
        end
      end
      object CategoryFolderTreeView2: TMMFolderTreeView
        Left = 78
        Top = 1
        Width = 173
        Height = 223
        Hint = 'Drag & Drop characters here'
        Align = alClient
        BiDiMode = bdLeftToRight
        HideSelection = False
        HotTrack = True
        Indent = 19
        ParentBiDiMode = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        SortType = stText
        TabOrder = 1
        OnDragDrop = CategoryFolderTreeView2DragDrop
        OnDragOver = CategoryFolderTreeView2DragOver
        OnFolderChange = CategoryFolderTreeView2FolderChange
        AllowToCancelRefresh = True
        CancelDelay = 2000
      end
      object CharLibPathPanel2: TPanel
        Left = 1
        Top = 224
        Width = 250
        Height = 23
        Align = alBottom
        Alignment = taLeftJustify
        BevelInner = bvLowered
        BevelOuter = bvSpace
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 2
        OnResize = CharLibPathPanel2Resize
        object CharLibPathLabel2: TTntLabel
          Left = 2
          Top = 2
          Width = 246
          Height = 19
          Align = alClient
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 'CharLibPathLabel2'
          ParentBiDiMode = False
          ParentShowHint = False
          ShowHint = True
        end
      end
    end
  end
  object BottomSectionGroup: TTntGroupBox
    Left = 0
    Top = 253
    Width = 629
    Height = 177
    Align = alBottom
    BiDiMode = bdLeftToRight
    Caption = 'Preview'
    Constraints.MinHeight = 110
    ParentBiDiMode = False
    TabOrder = 1
    object Panel6: TPanel
      Left = 2
      Top = 15
      Width = 625
      Height = 21
      Align = alTop
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 0
      object ShowPreviewCheck: TTntCheckBox
        Left = 5
        Top = 2
        Width = 318
        Height = 17
        BiDiMode = bdLeftToRight
        Caption = '&Show preview'
        Checked = True
        ParentBiDiMode = False
        State = cbChecked
        TabOrder = 0
        OnClick = ShowPreviewCheckClick
      end
    end
    object Panel11: TPanel
      Left = 2
      Top = 36
      Width = 625
      Height = 31
      Align = alTop
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 1
      object ZoomLabel: TTntLabel
        Left = 5
        Top = 6
        Width = 30
        Height = 13
        BiDiMode = bdLeftToRight
        Caption = '&Zoom:'
        FocusControl = PreviewZoomTrackBar
        ParentBiDiMode = False
      end
      object LCDGridLinesCheck: TTntCheckBox
        Left = 277
        Top = 7
        Width = 195
        Height = 17
        BiDiMode = bdLeftToRight
        Caption = '&Gridlines'
        Checked = True
        ParentBiDiMode = False
        State = cbChecked
        TabOrder = 1
        OnClick = LCDGridLinesCheckClick
      end
      object PreviewZoomTrackBar: TTrackBar
        Left = 55
        Top = 3
        Width = 218
        Height = 24
        Max = 200
        Min = 1
        Frequency = 10
        Position = 10
        TabOrder = 0
        ThumbLength = 18
        OnChange = PreviewZoomTrackBarChange
      end
    end
    object CharPreviewGridStatusBar: TStatusBar
      Left = 2
      Top = 159
      Width = 625
      Height = 16
      Hint = 'Height x Width'
      BiDiMode = bdLeftToRight
      Panels = <>
      ParentBiDiMode = False
      ParentShowHint = False
      ShowHint = True
      SimplePanel = True
    end
    object TntPanel1: TTntPanel
      Left = 2
      Top = 67
      Width = 625
      Height = 92
      Align = alClient
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 3
      OnResize = TntPanel1Resize
      object CharPreviewGrid: TMMAdvancedGrid
        Left = 0
        Top = 0
        Width = 625
        Height = 92
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
        ScrollBars = ssNone
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
  end
  object BottomPanel: TPanel
    Left = 0
    Top = 430
    Width = 629
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 2
    DesignSize = (
      629
      31)
    object CloseBtn: TTntBitBtn
      Left = 551
      Top = 3
      Width = 75
      Height = 25
      Hint = 'Close and refresh Character Library'
      Anchors = [akRight, akBottom]
      BiDiMode = bdLeftToRight
      Cancel = True
      Caption = '&Close'
      Default = True
      ParentBiDiMode = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = CloseBtnClick
      NumGlyphs = 2
    end
    object TntPanel2: TTntPanel
      Left = 0
      Top = 3
      Width = 546
      Height = 25
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        546
        25)
      object HintLabel: TTntLabel
        Left = 21
        Top = 5
        Width = 523
        Height = 13
        Anchors = [akLeft, akTop, akRight, akBottom]
        AutoSize = False
        Caption = 
          'You can drag and drop characters into the character categories u' +
          'sing left or right mouse buttons.'
      end
      object TntImage1: TTntImage
        Left = 3
        Top = 5
        Width = 16
        Height = 16
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = True
        Picture.Data = {
          07544269746D617036030000424D360300000000000036000000280000001000
          000010000000010018000000000000030000C30E0000C30E0000000000000000
          0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE5DFDD8F6F5B
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFC4B7B2CE9F6FAB784DFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCBC0C0966B4BFFF7C4946341
          C8BDBCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9375
          658A644C8C674ACAAA87FFDCB3AF876455280E684436C4B5B0FF00FFFF00FFFF
          00FFFF00FFFF00FFBAA79DA7886AD2B699E7CAA8FDE4BFFFE9C7FFF8D1F5D6B3
          D8B893AD89645E2F1585695EFF00FFFF00FFFF00FFC9B6A7CAB59AEDD5B8FFEB
          CCF8D6B7C0704FE99563DD8D5CDFA67BFFE7C3F4D6B1D7B694734729896F65FF
          00FFFF00FFCBB8A2EED8C1FFEFD1FFEECFFFFFE2B481627900008F2E06F7E5C4
          FFEDCBFFE7C3F5D7B7DABD9B5B2D14FF00FFC5B2A0E8DBC7FFF0D7FFECD2FFE7
          CEFFFFEDCFB2956F0000A45837FFFFF0FFE7C9FFE5C6FFEAC9FCE3C5AD8A6B90
          766DCFBFAEF8E7D5FFF4DFFFECD6FFECD6FFFFF3CDAF94740000A55736FFFFF1
          FFE8CFFFE5CAFFEACFFFEBD1E4CAAF886A5CCFC2B7FDEFE0FFF4E3FFEFDEFFF0
          DCFFFFFFD6C1AA770000A65836FFFFF8FFEDD5FFE9D0FFECD2FFF2D9ECD7C086
          6A5CD0C7BDFDF5E9FFF8EBFFF2E6FFFDEFEFE6DA8C3D1E6500008C3C23FFFFFE
          FFF0DDFFEBD6FFEED9FFFAE5F2DEC9977E72DFD4C8F7F4EFFFFFF9FFF6ECFFFF
          F9E6D9C9B39382BAA59AC2AEA3FFFFF8FFF4E3FFEEDCFFFAEBFFFFFCE2CAB4D7
          CDC9F5EDE6E4E5E5FFFFFFFFFFFAFFFBF3FFFFFFFFFFFAF9C8A6FFFEEEFFFFFF
          FFF5E8FFFAEFFFFFFFFFFFFFAF9787FF00FFFF00FFECE7E2EDEDEFFFFFFFFFFF
          FFFFFFFF8E574E5D00009A4528FFFFFFFFFFFFFFFFFFFFFFFFD1BDADFF00FFFF
          00FFFF00FFFF00FFF1EBE6F2F4F5FFFFFFFFFFFFD7CEC9624144C5B5AFFFFFFF
          FFFFFFFFFFFEE8DED5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF8F7F6EAE3
          DCF6F3EFFFFFFFFFFFFFFFFFFFFBF8F4D8CBC3E7E1DDFF00FFFF00FFFF00FFFF
          00FF}
        Transparent = True
      end
    end
  end
  object NewCategoryPopup: TTntPopupMenu
    AutoHotkeys = maManual
    BiDiMode = bdLeftToRight
    OwnerDraw = True
    ParentBiDiMode = False
    OnPopup = NewCategoryPopupPopup
    Left = 78
    Top = 106
    object NewMainCategoryMenuItem: TTntMenuItem
      Caption = 'New &Main Category...'
      OnClick = NewMainCategoryMenuItemClick
    end
    object NewSubcategoryMenuItem: TTntMenuItem
      Caption = 'New &Subcategory...'
      OnClick = NewSubcategoryMenuItemClick
    end
  end
  object DropPopupMenu: TTntPopupMenu
    AutoHotkeys = maManual
    BiDiMode = bdLeftToRight
    OwnerDraw = True
    ParentBiDiMode = False
    OnPopup = DropPopupMenuPopup
    Left = 400
    Top = 112
    object CopyHereMenuItem: TTntMenuItem
      Caption = '&Copy Here'
      OnClick = CopyHereMenuItemClick
    end
    object MoveHereMenuItem: TTntMenuItem
      Caption = '&Move Here'
      Default = True
      OnClick = MoveHereMenuItemClick
    end
    object N2: TTntMenuItem
      Caption = '-'
    end
    object CancelDropMenuItem: TTntMenuItem
      Caption = 'C&ancel'
    end
  end
  object RenameCharacterPopup: TTntPopupMenu
    AutoHotkeys = maManual
    BiDiMode = bdLeftToRight
    OwnerDraw = True
    ParentBiDiMode = False
    Left = 272
    Top = 106
    object SpecialNamesMenuItem: TTntMenuItem
      Caption = '&Special Name...'
      Default = True
      OnClick = SpecialNamesMenuItemClick
    end
    object CustomNameMenuItem: TTntMenuItem
      Caption = '&Custom Name...'
      OnClick = CustomNameMenuItemClick
    end
  end
  object TntXPMenu1: TTntXPMenu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
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
    Left = 400
    Top = 144
  end
  object CharListPreviewTimer: TTimer
    Enabled = False
    Interval = 100
    OnTimer = CharListPreviewTimerTimer
    Left = 209
    Top = 34
  end
end
