object LCDOptionsForm: TLCDOptionsForm
  Left = 323
  Top = 193
  BiDiMode = bdLeftToRight
  BorderStyle = bsDialog
  Caption = 'Design Properties'
  ClientHeight = 352
  ClientWidth = 353
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
  DesignSize = (
    353
    352)
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel4: TBevel
    Left = 190
    Top = 323
    Width = 2
    Height = 23
    Anchors = [akLeft, akBottom]
    Shape = bsLeftLine
  end
  object OKBtn: TTntBitBtn
    Left = 194
    Top = 322
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    BiDiMode = bdLeftToRight
    Caption = 'OK'
    Default = True
    ModalResult = 1
    ParentBiDiMode = False
    TabOrder = 2
    OnClick = OKBtnClick
    NumGlyphs = 2
  end
  object CancelBtn: TTntBitBtn
    Left = 274
    Top = 322
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    BiDiMode = bdLeftToRight
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    ParentBiDiMode = False
    TabOrder = 3
    NumGlyphs = 2
  end
  object LCDSizeGroup: TTntGroupBox
    Left = 4
    Top = 2
    Width = 345
    Height = 66
    BiDiMode = bdLeftToRight
    Caption = 'Size'
    ParentBiDiMode = False
    TabOrder = 0
    object LCDHeightLabel: TTntLabel
      Left = 8
      Top = 40
      Width = 87
      Height = 13
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = '&Height:'
      FocusControl = LCDHeightEdit
      ParentBiDiMode = False
    end
    object LCDWidthLabel: TTntLabel
      Left = 8
      Top = 17
      Width = 87
      Height = 13
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = '&Width:'
      FocusControl = LCDWidthEdit
      ParentBiDiMode = False
    end
    object LCDWidthEdit: TEdit
      Left = 101
      Top = 15
      Width = 57
      Height = 21
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      PopupMenu = MainForm.GeneralEditPopupMenu
      TabOrder = 0
      Text = 'LCDWidthEdit'
    end
    object LCDHeightEdit: TEdit
      Left = 101
      Top = 40
      Width = 57
      Height = 21
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      PopupMenu = MainForm.GeneralEditPopupMenu
      TabOrder = 1
      Text = 'LCDHeightEdit'
    end
  end
  object LCDDisplayOptionsGroup: TTntGroupBox
    Left = 4
    Top = 72
    Width = 345
    Height = 169
    BiDiMode = bdLeftToRight
    Caption = 'Display Options'
    ParentBiDiMode = False
    TabOrder = 1
    object FilledLabel: TTntLabel
      Left = 7
      Top = 63
      Width = 126
      Height = 13
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = '&Filled cell color:'
      FocusControl = FilledColorBox
      ParentBiDiMode = False
    end
    object ClearedLabel: TTntLabel
      Left = 7
      Top = 89
      Width = 126
      Height = 13
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = 'C&leared cell color:'
      FocusControl = ClearedColorBox
      ParentBiDiMode = False
    end
    object GridLabel: TTntLabel
      Left = 7
      Top = 117
      Width = 126
      Height = 13
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = '&Gridlines color:'
      ParentBiDiMode = False
    end
    object LCDCursorGroup: TTntGroupBox
      Left = 7
      Top = 17
      Width = 332
      Height = 40
      BiDiMode = bdLeftToRight
      Caption = 'Cursor'
      ParentBiDiMode = False
      TabOrder = 0
      object CursorColorLabel: TTntLabel
        Left = 150
        Top = 17
        Width = 72
        Height = 13
        AutoSize = False
        BiDiMode = bdLeftToRight
        Caption = 'C&ursor color:'
        FocusControl = CursorColorColorBox
        ParentBiDiMode = False
      end
      object ShowCursorRecCheck: TTntCheckBox
        Left = 8
        Top = 15
        Width = 137
        Height = 17
        BiDiMode = bdLeftToRight
        Caption = '&Show cursor rectangle'
        Checked = True
        ParentBiDiMode = False
        State = cbChecked
        TabOrder = 0
      end
      object CursorColorColorBox: TD7ColorBox
        Left = 225
        Top = 13
        Width = 101
        Height = 22
        Selected = clGreen
        Style = [cbStandardColors, cbCustomColor, cbPrettyNames]
        BiDiMode = bdLeftToRight
        DropDownCount = 17
        ItemHeight = 16
        ParentBiDiMode = False
        TabOrder = 1
      end
    end
    object GridColorBox: TD7ColorBox
      Left = 138
      Top = 113
      Width = 101
      Height = 22
      Selected = clGreen
      Style = [cbStandardColors, cbCustomColor, cbPrettyNames]
      BiDiMode = bdLeftToRight
      DropDownCount = 17
      ItemHeight = 16
      ParentBiDiMode = False
      TabOrder = 3
    end
    object ClearedColorBox: TD7ColorBox
      Left = 138
      Top = 86
      Width = 101
      Height = 22
      Selected = clGreen
      Style = [cbStandardColors, cbCustomColor, cbPrettyNames]
      BiDiMode = bdLeftToRight
      DropDownCount = 17
      ItemHeight = 16
      ParentBiDiMode = False
      TabOrder = 2
      OnChange = FilledColorBoxChange
    end
    object FilledColorBox: TD7ColorBox
      Left = 138
      Top = 59
      Width = 101
      Height = 22
      Selected = clGreen
      Style = [cbStandardColors, cbCustomColor, cbPrettyNames]
      BiDiMode = bdLeftToRight
      DropDownCount = 17
      ItemHeight = 16
      ParentBiDiMode = False
      TabOrder = 1
      OnChange = FilledColorBoxChange
    end
    object UseSolidColorsCheck: TTntCheckBox
      Left = 7
      Top = 144
      Width = 331
      Height = 17
      BiDiMode = bdLeftToRight
      Caption = 'Use soli&d colors'
      ParentBiDiMode = False
      TabOrder = 5
    end
    object DefaultColorsBtn: TTntBitBtn
      Left = 244
      Top = 59
      Width = 95
      Height = 25
      Caption = 'Default &Colors'
      TabOrder = 4
      OnClick = DefaultColorsBtnClick
    end
  end
  object GoToProgramOptionsBtn: TTntBitBtn
    Left = 70
    Top = 322
    Width = 118
    Height = 25
    Anchors = [akLeft, akBottom]
    BiDiMode = bdLeftToRight
    Caption = 'Program &Options...'
    ParentBiDiMode = False
    TabOrder = 4
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
  object LCDOtherOptionsGroupBox: TTntGroupBox
    Left = 4
    Top = 245
    Width = 345
    Height = 73
    Caption = 'Other Options'
    TabOrder = 5
    object CTRLClickToggleCheck: TTntCheckBox
      Left = 7
      Top = 16
      Width = 331
      Height = 17
      BiDiMode = bdLeftToRight
      Caption = 'CTRL+Click &toggles cell color'
      Checked = True
      ParentBiDiMode = False
      State = cbChecked
      TabOrder = 0
    end
    object DontAdvanceCursorCheck: TTntCheckBox
      Left = 7
      Top = 39
      Width = 331
      Height = 26
      BiDiMode = bdLeftToRight
      Caption = 
        '&Advance cursor automatically when inserting chars from Characte' +
        'r Library'
      ParentBiDiMode = False
      TabOrder = 1
      WordWrap = True
    end
  end
end
