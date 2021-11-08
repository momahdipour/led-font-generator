object ChooseHelpLangForm: TChooseHelpLangForm
  Left = 212
  Top = 136
  BiDiMode = bdLeftToRight
  BorderStyle = bsDialog
  Caption = 'Default Help Language'
  ClientHeight = 258
  ClientWidth = 250
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TitleLabel: TTntLabel
    Left = 4
    Top = 8
    Width = 140
    Height = 13
    BiDiMode = bdLeftToRight
    Caption = '&Select default help language:'
    FocusControl = HelpLanguageList
    ParentBiDiMode = False
  end
  object HelpLanguageList: TListBox
    Left = 4
    Top = 28
    Width = 242
    Height = 197
    BiDiMode = bdLeftToRight
    ItemHeight = 13
    ParentBiDiMode = False
    TabOrder = 0
    OnClick = HelpLanguageListClick
    OnDblClick = HelpLanguageListDblClick
  end
  object OKBtn: TTntBitBtn
    Left = 92
    Top = 230
    Width = 75
    Height = 25
    BiDiMode = bdLeftToRight
    Caption = 'OK'
    Default = True
    Enabled = False
    ModalResult = 1
    ParentBiDiMode = False
    TabOrder = 1
    OnClick = OKBtnClick
    NumGlyphs = 2
  end
  object CancelBtn: TTntBitBtn
    Left = 172
    Top = 230
    Width = 75
    Height = 25
    BiDiMode = bdLeftToRight
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    ParentBiDiMode = False
    TabOrder = 2
    NumGlyphs = 2
  end
end
