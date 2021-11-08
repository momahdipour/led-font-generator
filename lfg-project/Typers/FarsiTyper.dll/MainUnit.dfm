object Form1: TForm1
  Left = 196
  Top = 126
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
  PixelsPerInch = 96
  TextHeight = 13
  object TntEdit1: TTntEdit
    Left = 20
    Top = 20
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = 'TntEdit1'
    OnKeyPress = TntEdit1KeyPress
  end
  object TntEdit2: TTntEdit
    Left = 360
    Top = 24
    Width = 233
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = 'TntEdit1'
  end
  object TypeItBtn: TButton
    Left = 220
    Top = 24
    Width = 75
    Height = 25
    Caption = '>>'
    TabOrder = 2
    OnClick = TypeItBtnClick
  end
  object Edit1: TEdit
    Left = 360
    Top = 68
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Edit1'
  end
end
