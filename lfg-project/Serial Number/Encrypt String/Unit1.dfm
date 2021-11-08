object Form1: TForm1
  Left = 201
  Top = 117
  Width = 465
  Height = 369
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 116
    Top = 16
    Width = 261
    Height = 229
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object btnEncrypt: TButton
    Left = 28
    Top = 16
    Width = 75
    Height = 25
    Caption = 'btnEncrypt'
    TabOrder = 1
    OnClick = btnEncryptClick
  end
  object btnDecrypt: TButton
    Left = 28
    Top = 56
    Width = 75
    Height = 25
    Caption = 'btnDecrypt'
    TabOrder = 2
    OnClick = btnDecryptClick
  end
  object DCP_rc61: TDCP_rc6
    Id = 4
    Algorithm = 'RC6'
    MaxKeySize = 2048
    BlockSize = 128
    Left = 408
    Top = 40
  end
  object DCP_cast2561: TDCP_cast256
    Id = 15
    Algorithm = 'Cast256'
    MaxKeySize = 256
    BlockSize = 128
    Left = 396
    Top = 12
  end
end
