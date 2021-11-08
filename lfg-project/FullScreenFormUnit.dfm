object FullScreenForm: TFullScreenForm
  Left = 141
  Top = 192
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsNone
  Caption = 'Full Screen'
  ClientHeight = 465
  ClientWidth = 665
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TopControlBar: TTntControlBar
    Left = 0
    Top = 0
    Width = 665
    Height = 28
    Align = alTop
    AutoSize = True
    BevelEdges = [beBottom]
    ParentShowHint = False
    PopupMenu = CustomizeToolBarPopupMenu
    ShowHint = True
    TabOrder = 0
    object SaveAndEditToolBar: TTntToolBar
      Left = 11
      Top = 2
      Width = 177
      Height = 22
      Align = alNone
      AutoSize = True
      Caption = 'Save and Edit'
      DragKind = dkDock
      EdgeBorders = []
      Flat = True
      Images = MainForm.ToolBarImages
      ParentShowHint = False
      PopupMenu = CustomizeToolBarPopupMenu
      ShowHint = True
      TabOrder = 0
      Transparent = True
      object SaveToolBtn: TTntToolButton
        Left = 0
        Top = 0
        Hint = 'Save Design'
        Caption = 'SaveToolBtn'
        ImageIndex = 2
        OnClick = SaveToolBtnClick
      end
      object ToolButton2: TTntToolButton
        Left = 23
        Top = 0
        Width = 8
        Caption = 'ToolButton2'
        ImageIndex = 1
        Style = tbsSeparator
      end
      object CutToolBtn: TTntToolButton
        Left = 31
        Top = 0
        Hint = 'Cut'
        Caption = 'CutToolBtn'
        ImageIndex = 4
        OnClick = CutToolBtnClick
      end
      object CopyToolBtn: TTntToolButton
        Left = 54
        Top = 0
        Hint = 'Copy'
        Caption = 'CopyToolBtn'
        ImageIndex = 5
        OnClick = CopyToolBtnClick
      end
      object PasteToolBtn: TTntToolButton
        Left = 77
        Top = 0
        Hint = 'Paste'
        Caption = 'PasteToolBtn'
        ImageIndex = 6
        OnClick = PasteToolBtnClick
      end
      object ClearLCDToolBtn: TTntToolButton
        Left = 100
        Top = 0
        Hint = 'Delete'
        Caption = 'ClearLCDToolBtn'
        ImageIndex = 7
        OnClick = ClearLCDToolBtnClick
      end
      object TntToolButton3: TTntToolButton
        Left = 123
        Top = 0
        Width = 8
        Caption = 'TntToolButton3'
        Style = tbsSeparator
      end
      object UndoToolBtn: TTntToolButton
        Left = 131
        Top = 0
        Caption = 'UndoToolBtn'
        ImageIndex = 22
        OnClick = UndoToolBtnClick
      end
      object RedoToolBtn: TTntToolButton
        Left = 154
        Top = 0
        Caption = 'RedoToolBtn'
        ImageIndex = 23
        OnClick = RedoToolBtnClick
      end
    end
    object FullScreenToolBar: TTntToolBar
      Left = 488
      Top = 2
      Width = 118
      Height = 22
      Align = alNone
      AutoSize = True
      Caption = 'Full Screen'
      DragKind = dkDock
      EdgeBorders = []
      EdgeInner = esNone
      EdgeOuter = esNone
      Flat = True
      Images = MainForm.ToolBarImages
      ParentShowHint = False
      PopupMenu = CustomizeToolBarPopupMenu
      ShowHint = True
      TabOrder = 1
      Transparent = True
      Wrapable = False
      OnEndDock = FullScreenToolBarEndDock
      object SwitchFullScreenModeBtn: TTntToolButton
        Left = 0
        Top = 0
        Hint = 'Switch Full Screen Mode'
        ImageIndex = 25
        OnClick = SwitchFullScreenModeBtnClick
      end
      object TntToolBar1: TTntToolBar
        Left = 23
        Top = 0
        Width = 95
        Height = 21
        Align = alNone
        AutoSize = True
        ButtonHeight = 21
        EdgeBorders = []
        Flat = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Wrapable = False
        object TntToolBar2: TTntToolBar
          Left = 0
          Top = 0
          Width = 95
          Height = 21
          Align = alNone
          AutoSize = True
          ButtonHeight = 21
          ButtonWidth = 95
          EdgeBorders = []
          EdgeInner = esNone
          EdgeOuter = esNone
          Flat = True
          ParentShowHint = False
          ShowCaptions = True
          ShowHint = True
          TabOrder = 0
          Transparent = False
          Wrapable = False
          object CloseFullScreenToolBtn: TTntToolButton
            Left = 0
            Top = 0
            Hint = 'Close Full Screen'
            AutoSize = True
            Caption = '&Close Full Screen'
            OnClick = CloseFullScreenToolBtnClick
          end
        end
      end
    end
    object FullScreenDesignToolBar: TTntToolBar
      Left = 201
      Top = 2
      Width = 274
      Height = 22
      Align = alNone
      AutoSize = True
      Caption = 'Design'
      DragKind = dkDock
      EdgeBorders = []
      Flat = True
      Images = MainForm.ToolBarImages
      ParentShowHint = False
      PopupMenu = CustomizeToolBarPopupMenu
      ShowHint = True
      TabOrder = 2
      Transparent = True
      OnEndDock = FullScreenToolBarEndDock
      object ClearAllToolBtn: TTntToolButton
        Left = 0
        Top = 0
        Hint = 'Clear All'
        Caption = 'ClearAllToolBtn'
        ImageIndex = 8
        OnClick = ClearAllToolBtnClick
      end
      object TntToolButton22: TTntToolButton
        Left = 23
        Top = 0
        Width = 7
        Caption = 'TntToolButton22'
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
    end
  end
  object CustomizeToolBarPopupMenu: TTntPopupMenu
    OwnerDraw = True
    OnPopup = CustomizeToolBarPopupMenuPopup
    Left = 486
    Top = 74
    object ToggleSaveAndEditToolBarMenuItem: TTntMenuItem
      AutoCheck = True
      Caption = 'Save and Edit'
      Checked = True
      OnClick = ToggleSaveAndEditToolBarMenuItemClick
    end
    object ToggleDesignToolBarMenuItem: TTntMenuItem
      AutoCheck = True
      Caption = 'Design'
      Checked = True
      OnClick = ToggleDesignToolBarMenuItemClick
    end
    object ToggleFullScreenToolBarMenuItem: TTntMenuItem
      AutoCheck = True
      Caption = 'Full Screen'
      Checked = True
      Enabled = False
      OnClick = ToggleFullScreenToolBarMenuItemClick
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
    Left = 519
    Top = 73
  end
end
