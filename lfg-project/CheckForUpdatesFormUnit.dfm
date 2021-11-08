object CheckForUpdatesForm: TCheckForUpdatesForm
  Left = 253
  Top = 140
  AutoSize = True
  BiDiMode = bdLeftToRight
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = 'Check for Updates'
  ClientHeight = 180
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ResultPanel: TPanel
    Left = 0
    Top = 0
    Width = 473
    Height = 180
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 1
    Visible = False
    object UpdateUrlLabel: TTntLabel
      Left = 8
      Top = 24
      Width = 305
      Height = 13
      Cursor = crHandPoint
      BiDiMode = bdLeftToRight
      Caption = 'Click here to visit LED Font Generator updates page on the web'
      ParentBiDiMode = False
      OnClick = UpdateUrlLabelClick
      OnMouseEnter = UpdateUrlLabelMouseEnter
      OnMouseLeave = UpdateUrlLabelMouseLeave
    end
    object UpdateMessageMemo: TMemo
      Left = 5
      Top = 41
      Width = 460
      Height = 104
      BevelInner = bvNone
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      BorderStyle = bsNone
      Color = clCream
      Lines.Strings = (
        'UpdateMessageMemo')
      ParentBiDiMode = False
      PopupMenu = MainForm.GeneralEditPopupMenu
      ReadOnly = True
      TabOrder = 0
    end
    object UpdateMessageTitleLabel: TStaticText
      Left = 8
      Top = 6
      Width = 126
      Height = 17
      BevelKind = bkTile
      BiDiMode = bdLeftToRight
      Caption = 'UpdateMessageTitleLabel'
      ParentBiDiMode = False
      TabOrder = 1
      Transparent = False
    end
    object OKBtn: TTntBitBtn
      Left = 392
      Top = 149
      Width = 75
      Height = 25
      BiDiMode = bdLeftToRight
      Cancel = True
      Caption = 'OK'
      Default = True
      ModalResult = 1
      ParentBiDiMode = False
      TabOrder = 2
    end
  end
  object ConnectionPanel: TPanel
    Left = 0
    Top = 0
    Width = 473
    Height = 180
    BiDiMode = bdLeftToRight
    Ctl3D = True
    ParentBiDiMode = False
    ParentCtl3D = False
    TabOrder = 0
    object TntLabel1: TTntLabel
      Left = 19
      Top = 35
      Width = 175
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Checking for updates. Please wait...'
      ParentBiDiMode = False
    end
    object StatusLabel: TTntLabel
      Left = 20
      Top = 89
      Width = 56
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'StatusLabel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      Visible = False
    end
    object ProgressImage: TImage
      Left = 361
      Top = 36
      Width = 104
      Height = 11
      Stretch = True
    end
    object CancelBtn: TTntBitBtn
      Left = 392
      Top = 136
      Width = 75
      Height = 25
      BiDiMode = bdLeftToRight
      Cancel = True
      Caption = 'Cancel'
      Default = True
      ModalResult = 2
      ParentBiDiMode = False
      TabOrder = 0
      OnClick = CancelBtnClick
    end
  end
  object StartCheckTimer: TTimer
    Enabled = False
    Interval = 100
    OnTimer = StartCheckTimerTimer
    Left = 288
    Top = 24
  end
end
