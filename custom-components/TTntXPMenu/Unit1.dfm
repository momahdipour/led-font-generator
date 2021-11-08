object Form1: TForm1
  Left = 192
  Top = 114
  Width = 696
  Height = 480
  Caption = #1576#1604#1578#1576#1610
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
  object Button1: TButton
    Left = 428
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object TntMainMenu1: TTntMainMenu
    Left = 204
    Top = 68
    object N1: TTntMenuItem
      Caption = #1601#1575#1740#1604
      object N2: TTntMenuItem
        AutoCheck = True
        Caption = #1584#1582#1740#1585#1607
        Checked = True
      end
      object N3: TTntMenuItem
        Caption = #1610#1576#1604#1740#1576
      end
      object N4: TTntMenuItem
        Caption = #1604#1740#1576
        Checked = True
      end
    end
    object N5: TTntMenuItem
      Caption = #1576#1740#1604#1740#1576#1604
      object N6: TTntMenuItem
        Caption = #1576#1740
      end
      object N7: TTntMenuItem
        Caption = #1576#1740#1604
        Checked = True
      end
      object N8: TTntMenuItem
        Caption = #1604
      end
      object N9: TTntMenuItem
        Caption = #1576#1740
      end
    end
    object N10: TTntMenuItem
      Caption = #1610#1576#1740#1576#1604#1740#1576#1604
      object N11: TTntMenuItem
        Caption = #1610#1576
      end
      object N12: TTntMenuItem
        Caption = #1576#1604
      end
      object N13: TTntMenuItem
        Caption = #1610
      end
      object N14: TTntMenuItem
        Caption = #1602
      end
      object N15: TTntMenuItem
        Caption = #1602#1601
      end
    end
  end
end
