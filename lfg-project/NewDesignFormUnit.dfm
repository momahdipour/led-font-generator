object NewDesignForm: TNewDesignForm
  Left = 410
  Top = 391
  BiDiMode = bdLeftToRight
  BorderStyle = bsDialog
  Caption = 'New Design'
  ClientHeight = 127
  ClientWidth = 215
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
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object OKBtn: TTntBitBtn
    Left = 22
    Top = 98
    Width = 75
    Height = 25
    BiDiMode = bdLeftToRight
    Caption = 'OK'
    Default = True
    ModalResult = 1
    ParentBiDiMode = False
    TabOrder = 2
    NumGlyphs = 2
  end
  object CancelBtn: TTntBitBtn
    Left = 118
    Top = 98
    Width = 75
    Height = 25
    BiDiMode = bdLeftToRight
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    ParentBiDiMode = False
    TabOrder = 3
    NumGlyphs = 2
  end
  object SetAsDefaultSizeCheck: TTntCheckBox
    Left = 4
    Top = 75
    Width = 206
    Height = 17
    BiDiMode = bdLeftToRight
    Caption = '&Set as default design size'
    Checked = True
    ParentBiDiMode = False
    State = cbChecked
    TabOrder = 1
  end
  object LCDSizeGroup: TTntGroupBox
    Left = 4
    Top = 2
    Width = 206
    Height = 68
    BiDiMode = bdLeftToRight
    Caption = 'Size'
    ParentBiDiMode = False
    TabOrder = 0
    object SizeLabel: TTntLabel
      Left = 8
      Top = 42
      Width = 87
      Height = 13
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = '&Height:'
      FocusControl = LCDHeightEdit
      ParentBiDiMode = False
    end
    object WidthLabel: TTntLabel
      Left = 8
      Top = 17
      Width = 87
      Height = 13
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = '&Width:'
      FocusControl = LCDWidthEdit
      ParentBiDiMode = False
    end
    object LCDWidthEdit: TEdit
      Left = 101
      Top = 15
      Width = 57
      Height = 21
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      PopupMenu = MainForm.GeneralEditPopupMenu
      TabOrder = 0
      Text = 'LCDWidthEdit'
    end
    object LCDHeightEdit: TEdit
      Left = 101
      Top = 40
      Width = 57
      Height = 21
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      PopupMenu = MainForm.GeneralEditPopupMenu
      TabOrder = 1
      Text = 'LCDHeightEdit'
    end
  end
end
