object Form1: TForm1
  Left = 193
  Top = 144
  Width = 612
  Height = 363
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 20
    Top = 16
    Width = 21
    Height = 13
    Caption = 'Key:'
  end
  object Label2: TLabel
    Left = 20
    Top = 56
    Width = 74
    Height = 13
    Caption = 'Text to encrypt:'
  end
  object Label3: TLabel
    Left = 16
    Top = 96
    Width = 71
    Height = 13
    Caption = 'Encrypted text:'
  end
  object Label4: TLabel
    Left = 20
    Top = 172
    Width = 21
    Height = 13
    Caption = 'Key:'
  end
  object Label5: TLabel
    Left = 20
    Top = 212
    Width = 74
    Height = 13
    Caption = 'Text to decrypt:'
  end
  object Label6: TLabel
    Left = 16
    Top = 252
    Width = 72
    Height = 13
    Caption = 'Decrypted text:'
  end
  object EncryptionKeyEdit: TEdit
    Left = 120
    Top = 12
    Width = 465
    Height = 21
    TabOrder = 0
    Text = '123456'
  end
  object TextToEncryptEdit: TEdit
    Left = 120
    Top = 56
    Width = 465
    Height = 21
    TabOrder = 1
    Text = 'InputText'
  end
  object EncryptedTextEdit: TEdit
    Left = 120
    Top = 92
    Width = 465
    Height = 21
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 12
    Top = 152
    Width = 573
    Height = 5
    TabOrder = 3
  end
  object DecryptionKeyEdit: TEdit
    Left = 120
    Top = 168
    Width = 465
    Height = 21
    TabOrder = 4
    Text = '123456'
  end
  object TextToDecryptEdit: TEdit
    Left = 120
    Top = 212
    Width = 465
    Height = 21
    TabOrder = 5
  end
  object DecryptedTextEdit: TEdit
    Left = 120
    Top = 248
    Width = 465
    Height = 21
    TabOrder = 6
  end
  object Button1: TButton
    Left = 120
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Encrypt'
    TabOrder = 7
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 120
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Decrypt'
    TabOrder = 8
    OnClick = Button2Click
  end
end
