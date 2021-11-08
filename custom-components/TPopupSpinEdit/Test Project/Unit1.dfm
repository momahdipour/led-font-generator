object Form1: TForm1
  Left = 180
  Top = 206
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 88
    Top = 72
    Width = 300
    Height = 13
    AutoSize = False
    Caption = 'Label1'
    Color = clMoneyGreen
    ParentColor = False
    Transparent = False
  end
  object Button1: TButton
    Left = 384
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 12
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object TrackBar1: TTrackBar
    Left = 200
    Top = 176
    Width = 170
    Height = 45
    Min = -10
    Frequency = 10
    SelEnd = 5
    SelStart = 1
    TabOrder = 2
    OnKeyPress = TrackBar1KeyPress
  end
  object Button2: TButton
    Left = 24
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Title := '#39#39';'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 112
    Top = 240
    Width = 129
    Height = 25
    Caption = 'Title := '#39'Select value:'#39';'
    TabOrder = 4
    OnClick = Button3Click
  end
  object XPManifest1: TXPManifest
    Left = 496
    Top = 120
  end
end
