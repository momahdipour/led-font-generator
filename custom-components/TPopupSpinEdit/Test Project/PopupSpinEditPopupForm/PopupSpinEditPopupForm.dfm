object PopupForm: TPopupForm
  Left = 243
  Top = 196
  AutoSize = True
  BorderIcons = []
  BorderStyle = bsNone
  BorderWidth = 1
  Caption = 'PopupForm'
  ClientHeight = 70
  ClientWidth = 547
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 547
    Height = 70
    AutoSize = True
    BevelInner = bvSpace
    BevelOuter = bvNone
    BorderStyle = bsSingle
    TabOrder = 0
    object TntTrackBar1: TTntTrackBar
      Left = 1
      Top = 18
      Width = 541
      Height = 47
      Align = alTop
      TabOrder = 0
    end
    object TitleLabel: TTntStaticText
      Left = 1
      Top = 1
      Width = 541
      Height = 17
      Align = alTop
      Caption = 'TitleLabel'
      TabOrder = 1
    end
  end
end
