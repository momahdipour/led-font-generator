object ProgramOptionsForm: TProgramOptionsForm
  Left = 253
  Top = 239
  BiDiMode = bdLeftToRight
  BorderStyle = bsDialog
  Caption = 'Options'
  ClientHeight = 240
  ClientWidth = 537
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ButtonsSplitterBevel: TBevel
    Left = 375
    Top = 210
    Width = 2
    Height = 23
    Shape = bsLeftLine
  end
  object CharacterLibraryGroup: TTntGroupBox
    Left = 4
    Top = 2
    Width = 529
    Height = 42
    BiDiMode = bdLeftToRight
    Caption = 'Character Library'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    object CharacterLibraryPathLabel: TTntLabel
      Left = 6
      Top = 17
      Width = 113
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'C&haracter Library path:'
      FocusControl = CharacterLibraryPathEdit
      ParentBiDiMode = False
    end
    object BrowseCharLibBtn: TTntBitBtn
      Left = 432
      Top = 12
      Width = 93
      Height = 24
      BiDiMode = bdLeftToRight
      Caption = '&Browse...'
      ParentBiDiMode = False
      TabOrder = 1
      OnClick = BrowseCharLibBtnClick
    end
    object CharacterLibraryPathEdit: TEdit
      Left = 122
      Top = 14
      Width = 307
      Height = 21
      BiDiMode = bdLeftToRight
      Color = clCream
      ParentBiDiMode = False
      PopupMenu = MainForm.GeneralEditPopupMenu
      ReadOnly = True
      TabOrder = 0
      Text = 'CharacterLibraryPathEdit'
    end
  end
  object DefaultLCDSizeGroup: TTntGroupBox
    Left = 4
    Top = 48
    Width = 529
    Height = 64
    BiDiMode = bdLeftToRight
    Caption = 'Default Design Size'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    object DefaultWidthLabel: TTntLabel
      Left = 6
      Top = 16
      Width = 147
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = '&Default width for new designs:'
      FocusControl = DefaultLCDWidthEdit
      ParentBiDiMode = False
    end
    object DefaultHeightLabel: TTntLabel
      Left = 6
      Top = 40
      Width = 151
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'D&efault height for new designs:'
      FocusControl = DefaultLCDHeightEdit
      ParentBiDiMode = False
    end
    object DefaultLCDWidthEdit: TEdit
      Left = 260
      Top = 14
      Width = 57
      Height = 21
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      PopupMenu = MainForm.GeneralEditPopupMenu
      TabOrder = 0
      Text = 'DefaultLCDWidthEdit'
    end
    object DefaultLCDHeightEdit: TEdit
      Left = 260
      Top = 38
      Width = 57
      Height = 21
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      PopupMenu = MainForm.GeneralEditPopupMenu
      TabOrder = 1
      Text = 'DefaultLCDHeightEdit'
    end
  end
  object GeneralOptionsGroup: TTntGroupBox
    Left = 4
    Top = 114
    Width = 529
    Height = 89
    BiDiMode = bdLeftToRight
    Caption = 'General Options'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    object RUFLLabel1: TTntLabel
      Left = 6
      Top = 41
      Width = 105
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Recentl&y used file list:'
      FocusControl = RUFLSpin
      ParentBiDiMode = False
    end
    object RUFLLabel2: TTntLabel
      Left = 322
      Top = 40
      Width = 33
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'entries'
      ParentBiDiMode = False
    end
    object UndoLevelsLabel: TTntLabel
      Left = 6
      Top = 65
      Width = 59
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = '&Undo levels:'
      FocusControl = UndoLevelsSpin
      ParentBiDiMode = False
    end
    object NewDesignDialogCheck: TTntCheckBox
      Left = 6
      Top = 16
      Width = 515
      Height = 17
      BiDiMode = bdLeftToRight
      Caption = 'Do &not show New Design dialog box'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
    end
    object RUFLSpin: TSpinEdit
      Left = 260
      Top = 36
      Width = 57
      Height = 22
      MaxValue = 99
      MinValue = 0
      PopupMenu = MainForm.GeneralEditPopupMenu
      TabOrder = 1
      Value = 0
    end
    object UndoLevelsSpin: TSpinEdit
      Left = 260
      Top = 61
      Width = 57
      Height = 22
      MaxValue = 100
      MinValue = 0
      PopupMenu = MainForm.GeneralEditPopupMenu
      TabOrder = 2
      Value = 0
    end
  end
  object OKBtn: TTntBitBtn
    Left = 379
    Top = 209
    Width = 75
    Height = 25
    BiDiMode = bdLeftToRight
    Caption = 'OK'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ModalResult = 1
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 3
    OnClick = OKBtnClick
    NumGlyphs = 2
  end
  object CancelBtn: TTntBitBtn
    Left = 459
    Top = 209
    Width = 75
    Height = 25
    BiDiMode = bdLeftToRight
    Cancel = True
    Caption = 'Cancel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ModalResult = 2
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 4
    OnClick = CancelBtnClick
    NumGlyphs = 2
  end
  object FullProgramResetBtn: TTntBitBtn
    Left = 4
    Top = 209
    Width = 213
    Height = 25
    BiDiMode = bdLeftToRight
    Caption = 'Reset all program settings to default'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 6
    OnClick = FullProgramResetBtnClick
  end
  object GoToLCDOptionsBtn: TTntBitBtn
    Left = 229
    Top = 209
    Width = 144
    Height = 25
    BiDiMode = bdLeftToRight
    Caption = 'Design P&roperties...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 5
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFBDA08F9F755D8F5F42916246A0795FAF8C77FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA77F688F5F43B39888CEC6C2DC
      DDDDDAD9DAD0CBC7B19C8F8F6044BC9F8DFF00FFFF00FFFF00FFFF00FFFF00FF
      AA856EAD8E7CE6E9EBEDF4F7ECF0F3EDF2F6EAEEF2E3E6E8E1E4E6D6D5D39C7B
      65BB9D8BFF00FFFF00FFFF00FFC2A493B59581FBFDFDF4F9FBF4F5F5FFFFFFFF
      FEFEFEFEFDEBE1DADDCFC7DEDDDECEC6C1976F59CDB7AAFF00FFFF00FFB0856C
      F6F3F0FFFFFFFCFDFDFFFFFFFFFFFFFFFFFFFFFFFFF0DFD3B66736E4E1DFDDDC
      DCCBC5C096694DFF00FFBD9781CAAF9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFBF6F3AC4E15D7B29AE3E5E6E0E3E6A58573B89986A16F50E8DBD4
      FFFFFFFFFFFFFFFFFFEFDBCDD7A88DFFFFFFFFFFFFF9F3EFAF4F10C98C65E8EA
      EAE2E4E6BFB1A89D725AB7896EFCFAF9FFFFFFFFFFFFE5C6B2B85B17BF764BFF
      FFFFFFFFFFD19771BA5B14D7AB8FF1F2F2E6EBEDCEC7C3996D52BA8E74FEFEFE
      FFFFFFD6A688C4681ADD8321C36D2AC5835CC0703AD3771FBE6017F4EAE3F3F4
      F5E8EBEDCEC5C19C7158C09B84FDFDFCD29D7BD07522ED952DE78F2BE68F2CE1
      882AE68E2BCF7421D7A88BFEFEFEF0F2F2E8EAEBBDA99DA37C64CFAC96F0E4DC
      EBD1BFC56F2BE89330F29F37E48E2FD37925C26A28DDB499FFFFFFFFFFFFEFF0
      F0ECF3F5A88672BFA393FF00FFD6B599FEFEFEF2E4DAC57941E08C30C17036E6
      C9B7F7EDE7FFFFFFFFFFFFFDFBFBF6F9FADBD5D0906043FF00FFFF00FFDFB69A
      F2E2CCFEFEFEFAF4F0C47C4DC17A4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F1
      F196694EFF00FFFF00FFFF00FFFF00FFDFB292F2E4D5FEFDFBF2E0D4E0BA9FFF
      FFFFFFFFFFFFFFFEFDFCFBF0E8E4A88169C8AEA0FF00FFFF00FFFF00FFFF00FF
      FF00FFE1B99EE8C4A6F8E4D0FBF5EDFCF4EFFAF2EDF0E3DAD2B6A4BD9A85FF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDCB398E3B497E6
      B295D8A587CEA58DDAC4B7FF00FFFF00FFFF00FFFF00FFFF00FF}
  end
end
