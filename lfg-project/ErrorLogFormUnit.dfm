object ErrorLogForm: TErrorLogForm
  Left = 361
  Top = 287
  Width = 476
  Height = 319
  BiDiMode = bdLeftToRight
  BorderStyle = bsSizeToolWin
  Caption = 'Error Log'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poMainFormCenter
  OnActivate = TntFormActivate
  OnResize = TntFormResize
  OnShow = TntFormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 253
    Width = 468
    Height = 32
    Align = alBottom
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 0
    DesignSize = (
      468
      32)
    object CloseBtn: TTntButton
      Left = 389
      Top = 4
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Cancel = True
      Caption = '&Close'
      ParentBiDiMode = False
      TabOrder = 0
      OnClick = CloseBtnClick
    end
  end
  object ErrorLogListBox: TTntListBox
    Left = 0
    Top = 0
    Width = 468
    Height = 253
    Align = alClient
    BiDiMode = bdLeftToRight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 13
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
  end
end
