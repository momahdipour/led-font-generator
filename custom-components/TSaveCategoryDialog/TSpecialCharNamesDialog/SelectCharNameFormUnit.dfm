object SelectCharNameForm: TSelectCharNameForm
  Left = 223
  Top = 246
  Width = 472
  Height = 353
  BorderStyle = bsSizeToolWin
  Caption = 'SelectCharNameForm'
  Color = clBtnFace
  Constraints.MinHeight = 160
  Constraints.MinWidth = 442
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 287
    Width = 464
    Height = 32
    Align = alBottom
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 1
    DesignSize = (
      464
      32)
    object Bevel5: TTntBevel
      Left = 303
      Top = 5
      Width = 2
      Height = 21
      Anchors = [akTop, akRight]
      Shape = bsLeftLine
    end
    object CharFileNameEdit: TTntEdit
      Left = 3
      Top = 7
      Width = 146
      Height = 18
      TabStop = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      BorderStyle = bsNone
      Color = clBtnFace
      ParentBiDiMode = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 3
      Text = 'CharFileNameEdit'
    end
    object OKBtn: TTntBitBtn
      Left = 306
      Top = 3
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = 'OK'
      Default = True
      ModalResult = 1
      ParentBiDiMode = False
      TabOrder = 1
      OnClick = OKBtnClick
      NumGlyphs = 2
    end
    object CancelBtn: TTntBitBtn
      Left = 385
      Top = 3
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      ParentBiDiMode = False
      TabOrder = 2
      OnClick = CancelBtnClick
      NumGlyphs = 2
    end
    object UserMappedCharsBtn: TTntBitBtn
      Left = 184
      Top = 3
      Width = 117
      Height = 25
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = '&User-Mapped Chars...'
      ParentBiDiMode = False
      TabOrder = 0
      OnClick = UserMappedCharsBtnClick
    end
  end
  object Panel3: TPanel
    Left = 123
    Top = 0
    Width = 341
    Height = 287
    Align = alClient
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 0
    object CharactersTitle: TTntStaticText
      Left = 1
      Top = 1
      Width = 339
      Height = 17
      Align = alTop
      Alignment = taCenter
      BevelKind = bkTile
      BiDiMode = bdLeftToRight
      Caption = 'Characters In the Group'
      ParentBiDiMode = False
      TabOrder = 0
      Transparent = False
    end
    object CharactersList: TTntListBox
      Left = 1
      Top = 18
      Width = 339
      Height = 268
      Align = alClient
      BiDiMode = bdLeftToRight
      Columns = 8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemHeight = 14
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      OnClick = CharactersListClick
      OnDblClick = CharactersListDblClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 123
    Height = 287
    Align = alLeft
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 2
    object CharacterGroupsTitle: TTntStaticText
      Left = 1
      Top = 1
      Width = 121
      Height = 17
      Align = alTop
      Alignment = taCenter
      BevelKind = bkTile
      BiDiMode = bdLeftToRight
      Caption = 'Character Groups'
      ParentBiDiMode = False
      TabOrder = 0
      Transparent = False
    end
    object CharGroupList: TTntListBox
      Left = 1
      Top = 18
      Width = 121
      Height = 268
      Align = alClient
      BiDiMode = bdLeftToRight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemHeight = 16
      Items.Strings = (
        #1601#1575#1585#1587#1740
        'English')
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      OnClick = CharGroupListClick
    end
  end
end
