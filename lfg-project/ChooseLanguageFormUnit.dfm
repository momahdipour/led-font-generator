object ChooseLanguageForm: TChooseLanguageForm
  Left = 264
  Top = 174
  BiDiMode = bdLeftToRight
  BorderStyle = bsDialog
  Caption = 'Language'
  ClientHeight = 355
  ClientWidth = 322
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    322
    355)
  PixelsPerInch = 96
  TextHeight = 13
  object TntLabel1: TTntLabel
    Left = 4
    Top = 8
    Width = 314
    Height = 13
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    BiDiMode = bdLeftToRight
    Caption = '&Select language:'
    FocusControl = LanguageListView
    ParentBiDiMode = False
  end
  object LanguageListView: TTntListView
    Left = 4
    Top = 28
    Width = 314
    Height = 246
    Anchors = [akLeft, akTop, akRight, akBottom]
    BiDiMode = bdLeftToRight
    Columns = <
      item
        Caption = 'Language'
        Width = 110
      end
      item
        Caption = 'Revision'
        Width = 55
      end
      item
        Caption = 'Author'
        Width = 73
      end
      item
        Caption = 'Description'
        Width = 70
      end>
    HideSelection = False
    ReadOnly = True
    RowSelect = True
    ParentBiDiMode = False
    ParentShowHint = False
    ShowHint = True
    SmallImages = LanguageImages
    TabOrder = 0
    ViewStyle = vsReport
    OnChange = LanguageListViewChange
    OnDblClick = LanguageListViewDblClick
    OnInfoTip = LanguageListViewInfoTip
  end
  object OKBtn: TTntBitBtn
    Left = 164
    Top = 326
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
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
    Left = 244
    Top = 326
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    BiDiMode = bdLeftToRight
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    ParentBiDiMode = False
    TabOrder = 2
    NumGlyphs = 2
  end
  object TntGroupBox1: TTntGroupBox
    Left = 4
    Top = 281
    Width = 314
    Height = 40
    Anchors = [akLeft, akRight, akBottom]
    BiDiMode = bdLeftToRight
    Caption = 'Language Options'
    ParentBiDiMode = False
    TabOrder = 3
    DesignSize = (
      314
      40)
    object ApplyRTLToAppearanceCheck: TTntCheckBox
      Left = 8
      Top = 16
      Width = 297
      Height = 17
      Anchors = [akLeft, akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = 'C&hange program appearance to Right-to-Left'
      Checked = True
      ParentBiDiMode = False
      State = cbChecked
      TabOrder = 0
    end
  end
  object LanguageImages: TImageList
    BkColor = clFuchsia
    AllocBy = 3
    Masked = False
    Left = 208
  end
end
