object SaveCategoryDialogForm: TSaveCategoryDialogForm
  Left = 277
  Top = 314
  BorderStyle = bsDialog
  Caption = 'SaveCategoryDialogForm'
  ClientHeight = 362
  ClientWidth = 326
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object CancelBtn: TTntBitBtn
    Left = 249
    Top = 334
    Width = 75
    Height = 25
    BiDiMode = bdLeftToRight
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    ParentBiDiMode = False
    TabOrder = 3
  end
  object SaveBtn: TTntBitBtn
    Left = 169
    Top = 334
    Width = 75
    Height = 25
    BiDiMode = bdLeftToRight
    Caption = '&Save'
    Default = True
    ModalResult = 1
    ParentBiDiMode = False
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 1
    Top = 0
    Width = 324
    Height = 278
    BiDiMode = bdLeftToRight
    Caption = 'Save in:'
    ParentBiDiMode = False
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Top = 254
      Width = 49
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Category:'
      ParentBiDiMode = False
    end
    object ShellTreeView1: TShellTreeView
      Left = 5
      Top = 39
      Width = 313
      Height = 210
      ObjectTypes = [otFolders]
      Root = 'rfDesktop'
      UseShellImages = True
      AutoRefresh = False
      HideSelection = False
      Indent = 19
      ParentColor = False
      RightClickSelect = True
      ShowRoot = False
      TabOrder = 3
      OnEnter = ShellTreeView1Enter
      OnExit = ShellTreeView1Exit
      OnKeyPress = CategoryFolderTreeViewKeyPress
      OnChange = ShellTreeView1Change
    end
    object CategoryFolderTreeView: TMMFolderTreeView
      Left = 5
      Top = 39
      Width = 313
      Height = 210
      AutoExpand = True
      BiDiMode = bdLeftToRight
      HideSelection = False
      HotTrack = True
      Indent = 19
      ParentBiDiMode = False
      ReadOnly = True
      SortType = stText
      TabOrder = 2
      OnEnter = ShellTreeView1Enter
      OnExit = ShellTreeView1Exit
      OnKeyPress = CategoryFolderTreeViewKeyPress
      OnFolderChange = CategoryFolderTreeViewFolderChange
      AllowToCancelRefresh = True
      CancelDelay = 2000
    end
    object CharacterLibraryRadio: TRadioButton
      Left = 5
      Top = 17
      Width = 102
      Height = 17
      BiDiMode = bdLeftToRight
      Caption = 'C&haracter Library'
      ParentBiDiMode = False
      TabOrder = 0
      OnClick = CharacterLibraryRadioClick
    end
    object OtherPlacesRadio: TRadioButton
      Left = 132
      Top = 17
      Width = 82
      Height = 17
      BiDiMode = bdLeftToRight
      Caption = '&Other places'
      ParentBiDiMode = False
      TabOrder = 1
      OnClick = OtherPlacesRadioClick
    end
    object SelectedFolderEdit: TEdit
      Left = 56
      Top = 252
      Width = 261
      Height = 21
      TabStop = False
      BiDiMode = bdLeftToRight
      Color = clCream
      ParentBiDiMode = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 4
      OnChange = SelectedFolderEditChange
    end
  end
  object GroupBox2: TGroupBox
    Left = 1
    Top = 279
    Width = 324
    Height = 51
    BiDiMode = bdLeftToRight
    Caption = 'Character Name'
    ParentBiDiMode = False
    TabOrder = 1
    object CharacterNameEdit: TEdit
      Left = 8
      Top = 18
      Width = 209
      Height = 21
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = 'CharacterNameEdit'
      OnChange = CharacterNameEditChange
    end
    object SpecialNamesBtn: TTntBitBtn
      Left = 222
      Top = 16
      Width = 97
      Height = 25
      BiDiMode = bdLeftToRight
      Caption = 'Special &Names...'
      ParentBiDiMode = False
      TabOrder = 1
      OnClick = SpecialNamesBtnClick
    end
  end
end
