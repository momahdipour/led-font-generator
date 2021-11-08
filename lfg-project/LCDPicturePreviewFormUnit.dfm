object LCDPicturePreviewForm: TLCDPicturePreviewForm
  Left = 274
  Top = 339
  Width = 266
  Height = 166
  BiDiMode = bdLeftToRight
  BorderStyle = bsSizeToolWin
  Caption = 'Design Picture Preview'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  ParentBiDiMode = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PreviewImage: TImage
    Left = 0
    Top = 0
    Width = 258
    Height = 132
    Align = alClient
    AutoSize = True
    Center = True
    PopupMenu = PopupMenu1
    Proportional = True
    Stretch = True
  end
  object PopupMenu1: TTntPopupMenu
    AutoHotkeys = maManual
    BiDiMode = bdLeftToRight
    Images = MainForm.MenuImages
    OwnerDraw = True
    ParentBiDiMode = False
    Left = 192
    Top = 4
    object SaveAsPictureMenuItem: TTntMenuItem
      Caption = '&Save As Picture...'
      ImageIndex = 34
      OnClick = SaveAsPictureMenuItemClick
    end
  end
  object SaveDialog1: TTntSaveDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Options = [ofHideReadOnly, ofPathMustExist, ofCreatePrompt, ofEnableSizing]
    Title = 'Save Design As Picture'
    OnCanClose = SaveDialog1CanClose
    Left = 224
    Top = 4
  end
  object TntXPMenu1: TTntXPMenu
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
    Gradient = True
    FlatMenu = False
    AutoDetect = True
    Active = True
    Left = 120
    Top = 68
  end
end
