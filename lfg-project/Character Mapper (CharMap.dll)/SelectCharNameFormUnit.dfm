object SelectCharNameForm: TSelectCharNameForm
  Left = 236
  Top = 205
  Width = 387
  Height = 308
  BorderStyle = bsSizeToolWin
  Caption = 'SelectCharNameForm'
  Color = clBtnFace
  Constraints.MinHeight = 160
  Constraints.MinWidth = 250
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 242
    Width = 379
    Height = 32
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      379
      32)
    object CharFileNameEdit: TTntEdit
      Left = 3
      Top = 7
      Width = 170
      Height = 18
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clBtnFace
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 2
      Text = 'CharFileNameEdit'
    end
    object OKBtn: TTntBitBtn
      Left = 300
      Top = 3
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      TabOrder = 0
      OnClick = OKBtnClick
      Kind = bkOK
    end
    object CancelBtn: TTntBitBtn
      Left = 221
      Top = 3
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      TabOrder = 1
      OnClick = CancelBtnClick
      Kind = bkCancel
    end
  end
  object Panel3: TPanel
    Left = 117
    Top = 0
    Width = 262
    Height = 242
    Align = alClient
    TabOrder = 1
    object StaticText2: TStaticText
      Left = 1
      Top = 1
      Width = 260
      Height = 17
      Align = alTop
      BevelKind = bkTile
      Caption = 'Characters'
      TabOrder = 0
      Transparent = False
    end
    object CharactersList: TTntListBox
      Left = 1
      Top = 18
      Width = 260
      Height = 223
      Align = alClient
      Columns = 8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemHeight = 14
      ParentFont = False
      TabOrder = 1
      OnClick = CharactersListClick
      OnDblClick = CharactersListDblClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 117
    Height = 242
    Align = alLeft
    TabOrder = 2
    object StaticText1: TStaticText
      Left = 1
      Top = 1
      Width = 115
      Height = 17
      Align = alTop
      BevelKind = bkTile
      Caption = 'Character Groups'
      TabOrder = 0
      Transparent = False
    end
    object CharGroupList: TTntListBox
      Left = 1
      Top = 18
      Width = 115
      Height = 223
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemHeight = 16
      Items.Strings = (
        #1601#1575#1585#1587#1740
        'English')
      ParentFont = False
      TabOrder = 1
      OnClick = CharGroupListClick
    end
  end
end
