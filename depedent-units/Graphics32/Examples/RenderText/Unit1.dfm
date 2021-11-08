object Form1: TForm1
  Left = 204
  Top = 138
  Width = 603
  Height = 404
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = TntMainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 344
    Top = 57
    Width = 251
    Height = 294
    Align = alRight
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 595
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      595
      57)
    object Label1: TLabel
      Left = 312
      Top = 8
      Width = 46
      Height = 13
      Caption = 'AA Level:'
    end
    object Edit2: TEdit
      Left = 518
      Top = 4
      Width = 57
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 0
      Text = '0'
    end
    object AALevel: TUpDown
      Left = 575
      Top = 4
      Width = 15
      Height = 21
      Anchors = [akTop, akRight]
      Associate = Edit2
      Max = 4
      TabOrder = 1
      OnClick = AALevelClick
    end
    object Edit1: TTntEdit
      Left = 16
      Top = 4
      Width = 289
      Height = 21
      TabOrder = 2
      Text = 'yEdit1'
      OnChange = Edit1Change
    end
    object TntButton1: TTntButton
      Left = 16
      Top = 32
      Width = 75
      Height = 25
      Caption = #1575#1606#1578#1582#1575#1576' '#1601#1608#1606#1578
      TabOrder = 3
      OnClick = TntButton1Click
    end
    object Panel2: TPanel
      Left = 336
      Top = 28
      Width = 97
      Height = 21
      Caption = 'Panel2'
      Color = clActiveCaption
      TabOrder = 4
    end
    object Button1: TButton
      Left = 188
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 5
      OnClick = Button1Click
    end
  end
  object ListBox1: TListBox
    Left = 4
    Top = 68
    Width = 121
    Height = 97
    ItemHeight = 13
    TabOrder = 1
    OnClick = ListBox1Click
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 144
    Top = 28
  end
  object TntMainMenu1: TTntMainMenu
    OwnerDraw = True
    Left = 288
    Top = 188
    object fdsfsd1: TTntMenuItem
      Caption = 'fdsfsd'
      object fds1: TTntMenuItem
        Caption = 'fds'
      end
      object f1: TTntMenuItem
        Caption = 'f'
      end
      object dsf1: TTntMenuItem
        Caption = 'dsf'
      end
      object N1: TTntMenuItem
        Caption = #1587#1740#1576#1740#1587#1576
      end
      object N2: TTntMenuItem
        Caption = #1610#1587
      end
      object N3: TTntMenuItem
        Caption = #1604
      end
      object N4: TTntMenuItem
        Caption = #1587#1610#1604
      end
    end
    object N5: TTntMenuItem
      Caption = #1610#1587#1604#1587#1740
      object N6: TTntMenuItem
        Caption = #1604
      end
      object N7: TTntMenuItem
        Caption = #1587#1610
      end
      object N8: TTntMenuItem
        Caption = #1604#1610#1587
      end
      object N9: TTntMenuItem
        Caption = #1576#1604
      end
      object N10: TTntMenuItem
        Caption = #1587#1610#1576
      end
      object N11: TTntMenuItem
        Caption = #1604
      end
    end
  end
  object XPMenu1: TXPMenu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
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
    Left = 300
    Top = 200
  end
end
