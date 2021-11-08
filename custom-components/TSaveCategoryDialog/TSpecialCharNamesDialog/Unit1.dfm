object Form1: TForm1
  Left = 226
  Top = 205
  Width = 696
  Height = 480
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
  object Button1: TButton
    Left = 324
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Test Dialog'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 104
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object XPManifest1: TXPManifest
    Left = 516
    Top = 92
  end
end
