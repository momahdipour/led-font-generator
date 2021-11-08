object ExportLCDForm: TExportLCDForm
  Left = 202
  Top = 150
  Width = 684
  Height = 506
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu]
  Caption = 'Export Design'
  Color = clBtnFace
  Constraints.MaxHeight = 506
  Constraints.MinHeight = 506
  Constraints.MinWidth = 389
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = TntFormCreate
  OnKeyDown = TntFormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BottomPanel: TPanel
    Left = 0
    Top = 440
    Width = 676
    Height = 32
    Align = alBottom
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 1
    DesignSize = (
      676
      32)
    object CopyBtn: TTntBitBtn
      Left = 413
      Top = 4
      Width = 84
      Height = 25
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = 'Co&py'
      ParentBiDiMode = False
      TabOrder = 0
      OnClick = CopyBtnClick
    end
    object SaveBtn: TTntBitBtn
      Left = 501
      Top = 4
      Width = 84
      Height = 25
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = '&Save...'
      Default = True
      ParentBiDiMode = False
      TabOrder = 1
      OnClick = SaveBtnClick
    end
    object CloseBtn: TTntBitBtn
      Left = 588
      Top = 4
      Width = 84
      Height = 25
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Cancel = True
      Caption = '&Close'
      ParentBiDiMode = False
      TabOrder = 2
      OnClick = CloseBtnClick
    end
  end
  object ExportMemo: TTntMemo
    Left = 379
    Top = 0
    Width = 297
    Height = 440
    Align = alClient
    BiDiMode = bdLeftToRight
    Color = clCream
    Lines.Strings = (
      'ExportMemo')
    ParentBiDiMode = False
    PopupMenu = MainForm.GeneralEditPopupMenu
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 0
    WordWrap = False
  end
  object TntPanel1: TTntPanel
    Left = 0
    Top = 0
    Width = 379
    Height = 440
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 2
    object QETopLabel: TrmLabel
      Left = 0
      Top = 258
      Width = 379
      Height = 13
      Align = alTop
      Caption = 'Quick Export'
      UseGradient = True
      GradientTLColor = 16759739
      GradientBRColor = clWhite
    end
    object rmLabel2: TrmLabel
      Left = 0
      Top = 0
      Width = 379
      Height = 13
      Align = alTop
      Caption = 'Output Settings'
      UseGradient = True
      GradientTLColor = 16759739
      GradientBRColor = clWhite
    end
    object Bevel2: TBevel
      Left = 0
      Top = 256
      Width = 379
      Height = 2
      Align = alTop
      Shape = bsTopLine
    end
    object OutputPageControl: TTntPageControl
      Left = 0
      Top = 13
      Width = 379
      Height = 213
      ActivePage = AdvancedOutputSection
      Align = alTop
      BiDiMode = bdLeftToRight
      HotTrack = True
      Images = AllGlyphs
      ParentBiDiMode = False
      TabOrder = 0
      object BasicOutputSection: TTntTabSheet
        Caption = 'Basic Output'
        ImageIndex = -1
        object OutputGroup: TTntGroupBox
          Left = 4
          Top = 2
          Width = 366
          Height = 177
          BiDiMode = bdLeftToRight
          Caption = 'Output'
          ParentBiDiMode = False
          TabOrder = 0
          object OnlySelectionCheck: TTntCheckBox
            Left = 7
            Top = 14
            Width = 350
            Height = 17
            BiDiMode = bdLeftToRight
            Caption = '&Only selection'
            ParentBiDiMode = False
            TabOrder = 0
            OnClick = OnlySelectionCheckClick
          end
          object OutputFormatGroup: TTntGroupBox
            Left = 6
            Top = 32
            Width = 355
            Height = 83
            BiDiMode = bdLeftToRight
            Caption = 'Output Format'
            ParentBiDiMode = False
            TabOrder = 1
            object BasicSuffixLabel: TTntLabel
              Left = 176
              Top = 43
              Width = 32
              Height = 13
              BiDiMode = bdLeftToRight
              Caption = '&Suffix:'
              FocusControl = SuffixEdit
              ParentBiDiMode = False
            end
            object BasicPrefixLabel: TTntLabel
              Left = 8
              Top = 42
              Width = 32
              Height = 13
              BiDiMode = bdLeftToRight
              Caption = '&Prefix:'
              FocusControl = PrefixEdit
              ParentBiDiMode = False
            end
            object BinaryRadioBtn: TTntRadioButton
              Left = 8
              Top = 16
              Width = 50
              Height = 17
              BiDiMode = bdLeftToRight
              Caption = '&Binary'
              Checked = True
              ParentBiDiMode = False
              TabOrder = 0
              TabStop = True
              OnClick = BinaryRadioBtnClick
            end
            object HexRadioBtn: TTntRadioButton
              Left = 66
              Top = 16
              Width = 84
              Height = 17
              BiDiMode = bdLeftToRight
              Caption = '&Hexadecimal:'
              ParentBiDiMode = False
              TabOrder = 1
              OnClick = BinaryRadioBtnClick
            end
            object HexFormatCombo: TComboBox
              Left = 151
              Top = 15
              Width = 81
              Height = 21
              Style = csDropDownList
              BiDiMode = bdLeftToRight
              Enabled = False
              ItemHeight = 13
              ItemIndex = 2
              ParentBiDiMode = False
              TabOrder = 2
              Text = 'H - Format'
              OnChange = HexFormatComboChange
              Items.Strings = (
                'Plain Hex'
                '0x - Format'
                'H - Format'
                '$ - Format'
                'Custom')
            end
            object SuffixEdit: TTntDelayedEdit
              Left = 223
              Top = 40
              Width = 123
              Height = 21
              BiDiMode = bdLeftToRight
              MaxLength = 50
              ParentBiDiMode = False
              PopupMenu = MainForm.GeneralEditPopupMenu
              TabOrder = 4
              Text = 'SuffixEdit'
              OnChange = SuffixEditChange
              ChangeDelay = 500
              OnDelayedChange = SuffixEditDelayedChange
            end
            object PrefixEdit: TTntDelayedEdit
              Left = 47
              Top = 39
              Width = 123
              Height = 21
              BiDiMode = bdLeftToRight
              MaxLength = 50
              ParentBiDiMode = False
              PopupMenu = MainForm.GeneralEditPopupMenu
              TabOrder = 3
              Text = 'PrefixEdit'
              OnChange = PrefixEditChange
              ChangeDelay = 500
              OnDelayedChange = PrefixEditDelayedChange
            end
            object NOTValuesCheck: TTntCheckBox
              Left = 9
              Top = 63
              Width = 161
              Height = 15
              BiDiMode = bdLeftToRight
              Caption = '&NOT values'
              ParentBiDiMode = False
              TabOrder = 5
              OnClick = NOTValuesCheckClick
            end
          end
          object OutputOrderGroup: TTntGroupBox
            Left = 6
            Top = 116
            Width = 355
            Height = 56
            BiDiMode = bdLeftToRight
            Caption = 'Output Order'
            ParentBiDiMode = False
            TabOrder = 2
            object ColumnByColumnRadio: TTntRadioButton
              Left = 8
              Top = 15
              Width = 161
              Height = 17
              BiDiMode = bdLeftToRight
              Caption = '&Column by column'
              ParentBiDiMode = False
              TabOrder = 0
              TabStop = True
              OnClick = NOTValuesCheckClick
            end
            object InverseOrderCheck: TTntCheckBox
              Left = 181
              Top = 15
              Width = 161
              Height = 17
              BiDiMode = bdLeftToRight
              Caption = '&Inverse order'
              ParentBiDiMode = False
              TabOrder = 2
              OnClick = NOTValuesCheckClick
            end
            object RowByRowRadio: TTntRadioButton
              Left = 8
              Top = 34
              Width = 161
              Height = 17
              BiDiMode = bdLeftToRight
              Caption = '&Row by row'
              Checked = True
              ParentBiDiMode = False
              TabOrder = 1
              TabStop = True
              OnClick = NOTValuesCheckClick
            end
          end
        end
      end
      object AdvancedOutputSection: TTntTabSheet
        Caption = 'Advanced Output'
        object RowSepGroup: TTntGroupBox
          Left = 4
          Top = 97
          Width = 366
          Height = 81
          BiDiMode = bdLeftToRight
          Caption = 'Row Separators'
          ParentBiDiMode = False
          TabOrder = 1
          object AddRowSepRowsLabel: TTntLabel
            Left = 260
            Top = 17
            Width = 31
            Height = 13
            BiDiMode = bdLeftToRight
            Caption = 'row(s)'
            ParentBiDiMode = False
          end
          object RowSepLabel: TTntLabel
            Left = 24
            Top = 40
            Width = 75
            Height = 13
            BiDiMode = bdLeftToRight
            Caption = 'S&eparator text:'
            FocusControl = RowSeparatorMemo
            ParentBiDiMode = False
          end
          object RowSeparatorMemo: TTntDelayedMemo
            Left = 96
            Top = 40
            Width = 264
            Height = 35
            BiDiMode = bdLeftToRight
            Lines.Strings = (
              'RowSeparatorMemo')
            ParentBiDiMode = False
            PopupMenu = MainForm.GeneralEditPopupMenu
            ScrollBars = ssVertical
            TabOrder = 2
            WordWrap = False
            ChangeDelay = 500
            OnDelayedChange = RowSeparatorMemoDelayedChange
          end
          object AddRowSepCheck: TTntCheckBox
            Left = 8
            Top = 16
            Width = 196
            Height = 17
            BiDiMode = bdLeftToRight
            Caption = 'A&dd a row separator after every'
            ParentBiDiMode = False
            TabOrder = 0
            OnClick = AddColSepCheckClick
          end
          object RowSepNumOfRowsSpin: TSpinEdit
            Left = 208
            Top = 14
            Width = 49
            Height = 22
            MaxValue = 99999
            MinValue = 1
            PopupMenu = MainForm.GeneralEditPopupMenu
            TabOrder = 1
            Value = 1
            OnChange = ColSepUnitComboChange
          end
        end
        object ColumnSepGroup: TTntGroupBox
          Left = 4
          Top = 2
          Width = 366
          Height = 93
          BiDiMode = bdLeftToRight
          Caption = 'Column Separators'
          ParentBiDiMode = False
          TabOrder = 0
          object ColSepLabel: TTntLabel
            Left = 24
            Top = 40
            Width = 75
            Height = 13
            BiDiMode = bdLeftToRight
            Caption = '&Separator text:'
            FocusControl = ColSepEdit
            ParentBiDiMode = False
          end
          object ColSepEdit: TTntDelayedEdit
            Left = 96
            Top = 40
            Width = 264
            Height = 21
            BiDiMode = bdLeftToRight
            MaxLength = 255
            ParentBiDiMode = False
            PopupMenu = MainForm.GeneralEditPopupMenu
            TabOrder = 3
            Text = 'ColSepEdit'
            ChangeDelay = 500
            OnDelayedChange = ColSepEditDelayedChange
          end
          object AddColSepCheck: TTntCheckBox
            Left = 8
            Top = 16
            Width = 196
            Height = 17
            BiDiMode = bdLeftToRight
            Caption = '&Add a column separator after every'
            ParentBiDiMode = False
            TabOrder = 0
            OnClick = AddColSepCheckClick
          end
          object ColSepNumOfUnitSpin: TSpinEdit
            Left = 208
            Top = 13
            Width = 49
            Height = 22
            MaxValue = 99999
            MinValue = 1
            PopupMenu = MainForm.GeneralEditPopupMenu
            TabOrder = 1
            Value = 1
            OnChange = ColSepUnitComboChange
          end
          object ColSepUnitCombo: TTntComboBox
            Left = 260
            Top = 14
            Width = 61
            Height = 21
            Style = csDropDownList
            BiDiMode = bdLeftToRight
            ItemHeight = 13
            ItemIndex = 0
            ParentBiDiMode = False
            TabOrder = 2
            Text = 'byte(s)'
            OnChange = ColSepUnitComboChange
            Items.Strings = (
              'byte(s)'
              'nibble(s)'
              'bit(s)')
          end
          object AddColBreakCheck: TTntCheckBox
            Left = 8
            Top = 67
            Width = 195
            Height = 17
            BiDiMode = bdLeftToRight
            Caption = '&Break to new row every'
            ParentBiDiMode = False
            TabOrder = 4
            OnClick = AddColSepCheckClick
          end
          object ColBreakNumOfUnitSpin: TSpinEdit
            Left = 208
            Top = 65
            Width = 49
            Height = 22
            MaxValue = 99999
            MinValue = 1
            PopupMenu = MainForm.GeneralEditPopupMenu
            TabOrder = 5
            Value = 1
            OnChange = ColSepUnitComboChange
          end
          object ColBreakUnitCombo: TTntComboBox
            Left = 260
            Top = 66
            Width = 61
            Height = 21
            Style = csDropDownList
            BiDiMode = bdLeftToRight
            ItemHeight = 13
            ItemIndex = 0
            ParentBiDiMode = False
            TabOrder = 6
            Text = 'byte(s)'
            OnChange = ColSepUnitComboChange
            Items.Strings = (
              'byte(s)'
              'nibble(s)'
              'bit(s)')
          end
        end
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 226
      Width = 379
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 1
      object ApplyBtn: TTntBitBtn
        Left = 8
        Top = 2
        Width = 82
        Height = 25
        BiDiMode = bdLeftToRight
        Caption = '&Apply'
        ParentBiDiMode = False
        TabOrder = 0
        OnClick = ApplyBtnClick
      end
      object AutomaticApplyCheck: TTntCheckBox
        Left = 95
        Top = 6
        Width = 278
        Height = 17
        BiDiMode = bdLeftToRight
        Caption = 'A&utomatic apply'
        Checked = True
        ParentBiDiMode = False
        State = cbChecked
        TabOrder = 1
        OnClick = AutomaticApplyCheckClick
      end
    end
    object TntPageControl1: TTntPageControl
      Left = 0
      Top = 271
      Width = 379
      Height = 169
      ActivePage = QEAdvancedSection
      Align = alClient
      Images = AllGlyphs
      TabOrder = 2
      object QESimpleSection: TTntTabSheet
        Caption = 'Simple'
        object QECopyCheck: TTntCheckBox
          Left = 2
          Top = 8
          Width = 367
          Height = 16
          BiDiMode = bdLeftToRight
          Caption = 'C&opy to clipboard'
          ParentBiDiMode = False
          TabOrder = 0
          OnClick = QECopyCheckClick
        end
        object QESaveToFileCheck: TTntCheckBox
          Left = 2
          Top = 24
          Width = 367
          Height = 17
          BiDiMode = bdLeftToRight
          Caption = 'Sa&ve to file:'
          ParentBiDiMode = False
          TabOrder = 1
          OnClick = QESaveToFileCheckClick
        end
        object QEFileNameEdit: TTntEdit
          Left = 4
          Top = 44
          Width = 335
          Height = 21
          BiDiMode = bdLeftToRight
          Enabled = False
          ParentBiDiMode = False
          PopupMenu = MainForm.GeneralEditPopupMenu
          TabOrder = 2
          Text = 'QEFileNameEdit'
        end
        object BrowseForQEFileBtn: TTntBitBtn
          Left = 344
          Top = 44
          Width = 23
          Height = 21
          BiDiMode = bdLeftToRight
          Enabled = False
          ParentBiDiMode = False
          TabOrder = 3
          OnClick = BrowseForQEFileBtnClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
            DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
            DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD00DDD00DDD00DDDD00DDD00DDD
            00DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
            DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD}
        end
      end
      object QEAdvancedSection: TTntTabSheet
        Caption = 'Advanced'
        object QEBeforeFrameLabel: TTntLabel
          Left = 2
          Top = 44
          Width = 67
          Height = 13
          Caption = 'Before frame:'
          Enabled = False
        end
        object QEAfterFrameLabel: TTntLabel
          Left = 200
          Top = 44
          Width = 60
          Height = 13
          Caption = 'After frame:'
          Enabled = False
        end
        object FrameStartNumLabel: TTntLabel
          Left = 0
          Top = 121
          Width = 107
          Height = 13
          Caption = 'Start frame number at'
          Enabled = False
        end
        object InsertAutoItemBtn1: TTntSpeedButton
          Left = 173
          Top = 44
          Width = 18
          Height = 18
          Enabled = False
          Flat = True
          Glyph.Data = {
            9E020000424D9E0200000000000036000000280000000E0000000E0000000100
            18000000000068020000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FF0000FF00FFAB9789BBAA9DBEAC9FC1B0A3BCAB9DBAA79AB8A698BCA9
            9BFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF8F7C6BFFFFFFF6F7F7FBFB
            FCF2F3F3F7F7F8FFFFFFCEBEB3FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00
            FF7C6755F3F6F80000000000002B2C2C101010F7F7F7CFBFB2FF00FFFF00FFFF
            00FFFF00FFFF00FF0000FF00FF7E6957F4F6F8000000000000979797FFFFFFFF
            FFFFC7B5A8FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF7B6653EAEDED0A
            0909C5C2C20000008F8F8FFFFFFFBFAB9EFF00FFFF00FFFF00FFFF00FFFF00FF
            0000FF00FF7F6A57F8F9F60A0B0AFFFCFCDCDCDB0F0F0FF8F9F94D986859AB77
            72B88C7CBD94FF00FFFF00FF0000FF00FF7B6553F6F4F2EBE9E6F7F4F1FFFFFF
            FBFBFBE8E9EB509E6CBDDEC9D6EADD79BB91FF00FFFF00FF0000FF00FF755F4C
            86716087736185715F7C6755346646376C4A499063A2D0B3CCE5D55EAE7B7EBE
            9574B98D0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32624471B78B82C0
            99A0CFB1BEDECAD2E8DAD8EBDF70B78A0000FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FF21412D55A97474B98D8DC5A1A4D1B4A8D3B8B9DCC656AA750000FF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF1F3C2A193021274C346DB5878DC5A142
            825945895E478C600000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FF1223184F9D6B74B98D3D7853FF00FFFF00FF0000FF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FF23442F244731295138326244FF00FFFF00FF
            0000}
          OnClick = InsertAutoItemBtn1Click
        end
        object InsertAutoItemBtn2: TTntSpeedButton
          Left = 342
          Top = 44
          Width = 18
          Height = 18
          Enabled = False
          Flat = True
          Glyph.Data = {
            9E020000424D9E0200000000000036000000280000000E0000000E0000000100
            18000000000068020000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FF0000FF00FFAB9789BBAA9DBEAC9FC1B0A3BCAB9DBAA79AB8A698BCA9
            9BFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF8F7C6BFFFFFFF6F7F7FBFB
            FCF2F3F3F7F7F8FFFFFFCEBEB3FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00
            FF7C6755F3F6F80000000000002B2C2C101010F7F7F7CFBFB2FF00FFFF00FFFF
            00FFFF00FFFF00FF0000FF00FF7E6957F4F6F8000000000000979797FFFFFFFF
            FFFFC7B5A8FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF7B6653EAEDED0A
            0909C5C2C20000008F8F8FFFFFFFBFAB9EFF00FFFF00FFFF00FFFF00FFFF00FF
            0000FF00FF7F6A57F8F9F60A0B0AFFFCFCDCDCDB0F0F0FF8F9F94D986859AB77
            72B88C7CBD94FF00FFFF00FF0000FF00FF7B6553F6F4F2EBE9E6F7F4F1FFFFFF
            FBFBFBE8E9EB509E6CBDDEC9D6EADD79BB91FF00FFFF00FF0000FF00FF755F4C
            86716087736185715F7C6755346646376C4A499063A2D0B3CCE5D55EAE7B7EBE
            9574B98D0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32624471B78B82C0
            99A0CFB1BEDECAD2E8DAD8EBDF70B78A0000FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FF21412D55A97474B98D8DC5A1A4D1B4A8D3B8B9DCC656AA750000FF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF1F3C2A193021274C346DB5878DC5A142
            825945895E478C600000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FF1223184F9D6B74B98D3D7853FF00FFFF00FF0000FF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FF23442F244731295138326244FF00FFFF00FF
            0000}
          OnClick = InsertAutoItemBtn2Click
        end
        object QEAppendToFileCheck: TTntCheckBox
          Left = 2
          Top = 2
          Width = 367
          Height = 17
          Caption = 'Append to the end of a file'
          TabOrder = 0
          OnClick = QEAppendToFileCheckClick
        end
        object QEAdvancedFileNameEdit: TTntEdit
          Left = 4
          Top = 20
          Width = 245
          Height = 21
          BiDiMode = bdLeftToRight
          Enabled = False
          ParentBiDiMode = False
          PopupMenu = MainForm.GeneralEditPopupMenu
          TabOrder = 1
          Text = 'QEAdvancedFileNameEdit'
        end
        object BrowseForQEAdvancedFileBtn: TTntBitBtn
          Left = 346
          Top = 20
          Width = 23
          Height = 21
          BiDiMode = bdLeftToRight
          Enabled = False
          ParentBiDiMode = False
          TabOrder = 2
          OnClick = BrowseForQEAdvancedFileBtnClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
            DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
            DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD00DDD00DDD00DDDD00DDD00DDD
            00DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
            DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD}
        end
        object FramePrefixMemo: TTntMemo
          Left = 0
          Top = 62
          Width = 193
          Height = 53
          Enabled = False
          Lines.Strings = (
            'FramePrefixMemo')
          ParentShowHint = False
          PopupMenu = MainForm.GeneralEditPopupMenu
          ScrollBars = ssVertical
          ShowHint = True
          TabOrder = 3
          WordWrap = False
        end
        object FrameSuffixMemo: TTntMemo
          Left = 200
          Top = 62
          Width = 161
          Height = 53
          Enabled = False
          Lines.Strings = (
            'FrameSuffixMemo')
          PopupMenu = MainForm.GeneralEditPopupMenu
          ScrollBars = ssVertical
          TabOrder = 4
          WordWrap = False
        end
        object FrameStartNumSpin: TSpinEdit
          Left = 145
          Top = 118
          Width = 49
          Height = 22
          Enabled = False
          MaxValue = 2147483647
          MinValue = 0
          TabOrder = 5
          Value = 0
          OnChange = FrameStartNumSpinChange
        end
        object QEAdvancedClearOutputFileBtn: TTntBitBtn
          Left = 254
          Top = 19
          Width = 89
          Height = 23
          Caption = 'Clear Output File'
          Enabled = False
          TabOrder = 6
          OnClick = QEAdvancedClearOutputFileBtnClick
        end
        object QEAdvancedRestartNumberingBtn: TTntBitBtn
          Left = 200
          Top = 117
          Width = 105
          Height = 23
          Caption = 'Restart Numbering'
          Enabled = False
          TabOrder = 7
          OnClick = QEAdvancedRestartNumberingBtnClick
        end
        object ClearFramePrefixBtn: TBitBtn
          Left = 120
          Top = 44
          Width = 49
          Height = 18
          Caption = 'Clear'
          Enabled = False
          TabOrder = 8
          OnClick = ClearFramePrefixBtnClick
        end
        object ClearFrameSuffixBtn: TBitBtn
          Left = 288
          Top = 44
          Width = 49
          Height = 18
          Caption = 'Clear'
          Enabled = False
          TabOrder = 9
          OnClick = ClearFrameSuffixBtnClick
        end
      end
    end
  end
  object AllGlyphs: TImageList
    Left = 511
    Top = 26
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BCA69700D8C5B800DAC8
      BC00DDCDC100E1D2C800E5D8CF00E9DED500EDE3DC00F0E8E100F2EBE500F2EB
      E500F2EBE500F2EBE500000000000000000000000000BCA69700D8C5B800DAC8
      BC00DDCDC100E1D2C800E5D8CF00E9DED500EDE3DC00F0E8E100F2EBE500F2EB
      E500F2EBE500F2EBE50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BEA8990091786600D0BA
      AA00D0BAAA00CEB9A900CCB7A700CAB4A400C7B1A200C4AF9F00C1AC9C00BEA9
      9A00BCA69700F1E9E300000000000000000000000000BEA8990091786600D0BA
      AA00D0BAAA00CEB9A900CCB7A700CAB4A400C7B1A200C4AF9F00C1AC9C00BEA9
      9A00BCA69700F1E9E30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0AB9C00664C3700FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00BEA99A00EFE7E000000000000000000000000000C0AB9C00664C3700FCFA
      F800FCF4F200FDEDEC00FDE5E400FEDDDD00FED5D500FECDCD00FFC6C700FFC0
      C100BEA99A00EFE7E00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C3AD9E006A4F3B00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00C1AC9C00EDE4DD00000000000000000000000000C3AD9E006A4F3B00FCFE
      FC00FCFAF800FCF4F200938E8A00FDE5E400FEDDDD00FED5D500FECDCD00FFC6
      C700C1AC9C00EDE4DD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6B0A1006E543F00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00C4AF9F00EBE1D900000000000000000000000000C6B0A1006E543F00FCFE
      FC00FCFEFC00938E8A002B272700938E8A00FDE5E400FEDDDD00FED5D500FECD
      CD00C4AF9F00EBE1D90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C9B3A40074584300FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00C7B1A200E9DED500000000000000000000000000C9B3A40074584300FCFE
      FC00938E8A0045424400908E8E0046424200938E8A00FDE5E400FEDDDD00FED5
      D500C7B1A200E9DED50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CCB6A700795E4800FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00CAB4A400E7DAD000000000000000000000000000CCB6A700795E4800F0F2
      F0006D666300938E8A00EFF1EF00ADABAB003F3C3B00938E8A00FDE5E400FEDD
      DD00CAB4A400E7DAD00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CFB9A9007E634D00FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00CCB7A700E5D7CC00000000000000000000000000CFB9A9007E634D00FCFE
      FC00F0F2F000FCFEFC00FCFEFC00FCFEFC00C3C1C00037343400938E8A00FDE5
      E400CCB7A700E5D7CC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D2BCAC0084675100FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00CEB9A900E3D4C800000000000000000000000000D2BCAC0084675100FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00BAB9B800594E4700938E
      8A00CEB9A900E3D4C80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D4BEAE00886C5500FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00D0BAAA00E1D1C500000000000000000000000000D4BEAE00886C5500FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00E4E2E000FCF4
      F200D0BAAA00E1D1C50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6C0B0008C6F5900FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFE
      FC00D0BAAA00DFCFC200000000000000000000000000D6C0B0008C6F5900FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFA
      F800D0BAAA00DFCFC20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D8C2B2008F725B008C6F
      5900886C5500846751007E634D00795E4800745843006E543F006A4F3B00664C
      3700A7907E00DECDC000000000000000000000000000D8C2B2008F725B008C6F
      5900886C5500846751007E634D00795E4800745843006E543F006A4F3B00664C
      3700A7907E00DECDC00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D8C2B200D8C2B200D7C1
      B100D5BFAF00D3BDAD00D1BBAB00CEB9A900CCB6A700C9B4A400C7B1A200C4AF
      9F00C2AC9D00BFAA9B00000000000000000000000000D8C2B200D8C2B200D7C1
      B100D5BFAF00D3BDAD00D1BBAB00CEB9A900CCB6A700C9B4A400C7B1A200C4AF
      9F00C2AC9D00BFAA9B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      8003800300000000800380030000000080038003000000008003800300000000
      8003800300000000800380030000000080038003000000008003800300000000
      8003800300000000800380030000000080038003000000008003800300000000
      8003800300000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object SaveDialog1: TTntSaveDialog
    Filter = 
      'Include Files (*.inc)|*.inc|C Source Files (*.c)|*.c|Assembly So' +
      'urce Files(*.asm)|*.asm|Text Files (*.txt)|*.txt|All Files (*.*)' +
      '|*.*'
    Options = [ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Title = 'Export Design As'
    OnCanClose = SaveDialog1CanClose
    Left = 541
    Top = 26
  end
  object QESaveDialog: TTntSaveDialog
    Filter = 
      'Include Files (*.inc)|*.inc|C Source Files (*.c)|*.c|Assembly So' +
      'urce Files(*.asm)|*.asm|Text Files (*.txt)|*.txt|All Files (*.*)' +
      '|*.*'
    Options = [ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Title = 'Choose Output File'
    OnCanClose = QESaveDialogCanClose
    Left = 572
    Top = 26
  end
  object FieldsPopupMenu: TTntPopupMenu
    OwnerDraw = True
    Left = 480
    Top = 25
    object CurrentFrame1: TTntMenuItem
      Tag = 1
      Caption = 'Frame Number (<FrameNo>)'
      OnClick = CurrentFrame1Click
      IgnoreAllMenuChanges = False
    end
    object N2: TTntMenuItem
      Caption = '-'
      IgnoreAllMenuChanges = False
    end
    object InputStringinput1: TTntMenuItem
      Tag = 2
      Caption = 'Input String (<Input>)'
      OnClick = CurrentFrame1Click
      IgnoreAllMenuChanges = False
    end
    object OutputRowCountRowCount1: TTntMenuItem
      Tag = 3
      Caption = 'Output Line Count (<LineCount>)'
      OnClick = CurrentFrame1Click
      IgnoreAllMenuChanges = False
    end
    object N1: TTntMenuItem
      Caption = '-'
      IgnoreAllMenuChanges = False
    end
    object CurrentDatedate1: TTntMenuItem
      Tag = 4
      Caption = 'Current Date (<Date>)'
      OnClick = CurrentFrame1Click
      IgnoreAllMenuChanges = False
    end
    object CurrentTimeTime1: TTntMenuItem
      Tag = 5
      Caption = 'Current Time (<Time>)'
      OnClick = CurrentFrame1Click
      IgnoreAllMenuChanges = False
    end
  end
  object TntXPMenu1: TTntXPMenu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'Tahoma'
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
    Left = 448
    Top = 24
  end
end
