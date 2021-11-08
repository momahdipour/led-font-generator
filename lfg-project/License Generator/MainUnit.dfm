object MainForm: TMainForm
  Left = 284
  Top = 193
  BorderStyle = bsDialog
  Caption = 'LED Font Generator 2.0.3 Activation Code Generator'
  ClientHeight = 197
  ClientWidth = 378
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object PSWPanel: TPanel
    Left = 0
    Top = 0
    Width = 378
    Height = 197
    Align = alClient
    TabOrder = 1
    object PSWLabel: TLabel
      Left = 56
      Top = 92
      Width = 76
      Height = 13
      Caption = 'Enter password:'
    end
    object PSWEdit: TEdit
      Left = 136
      Top = 87
      Width = 185
      Height = 24
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 0
      OnKeyPress = PSWEditKeyPress
    end
  end
  object MainPanel: TPanel
    Left = 0
    Top = 0
    Width = 378
    Height = 197
    Align = alClient
    TabOrder = 0
    Visible = False
    object Label1: TLabel
      Left = 44
      Top = 50
      Width = 61
      Height = 13
      Caption = 'Customer ID:'
    end
    object Label2: TLabel
      Left = 44
      Top = 126
      Width = 78
      Height = 13
      Caption = 'Activation Code:'
    end
    object Label3: TLabel
      Left = 183
      Top = 48
      Width = 4
      Height = 16
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 231
      Top = 48
      Width = 4
      Height = 16
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 279
      Top = 48
      Width = 4
      Height = 16
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 183
      Top = 126
      Width = 4
      Height = 16
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 231
      Top = 126
      Width = 4
      Height = 16
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 279
      Top = 126
      Width = 4
      Height = 16
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object CUIDWord4: TEdit
      Left = 284
      Top = 46
      Width = 41
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Dialog'
      Font.Style = []
      MaxLength = 4
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      OnKeyPress = CUIDWord1KeyPress
      OnKeyUp = CUIDWord1KeyUp
    end
    object CUIDWord3: TEdit
      Left = 236
      Top = 46
      Width = 41
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Dialog'
      Font.Style = []
      MaxLength = 4
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      OnKeyPress = CUIDWord1KeyPress
      OnKeyUp = CUIDWord1KeyUp
    end
    object CUIDWord2: TEdit
      Left = 188
      Top = 46
      Width = 41
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Dialog'
      Font.Style = []
      MaxLength = 4
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnKeyPress = CUIDWord1KeyPress
      OnKeyUp = CUIDWord1KeyUp
    end
    object CUIDWord1: TEdit
      Left = 140
      Top = 46
      Width = 41
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Dialog'
      Font.Style = []
      MaxLength = 4
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnKeyPress = CUIDWord1KeyPress
      OnKeyUp = CUIDWord1KeyUp
    end
    object ACWord1: TEdit
      Left = 140
      Top = 123
      Width = 41
      Height = 19
      Color = clCream
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Dialog'
      Font.Style = []
      MaxLength = 4
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object ACWord2: TEdit
      Left = 188
      Top = 123
      Width = 41
      Height = 19
      Color = clCream
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Dialog'
      Font.Style = []
      MaxLength = 4
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object ACWord3: TEdit
      Left = 236
      Top = 123
      Width = 41
      Height = 19
      Color = clCream
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Dialog'
      Font.Style = []
      MaxLength = 4
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object ACWord4: TEdit
      Left = 284
      Top = 123
      Width = 41
      Height = 19
      Color = clCream
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Dialog'
      Font.Style = []
      MaxLength = 4
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object GenerateCUIDBtn: TBitBtn
      Left = 148
      Top = 11
      Width = 165
      Height = 25
      Caption = 'Generate CUID for this machine'
      TabOrder = 8
      Visible = False
      OnClick = GenerateCUIDBtnClick
    end
    object GenerateACBtn: TBitBtn
      Left = 164
      Top = 82
      Width = 139
      Height = 25
      Caption = 'Generate Activation Code'
      TabOrder = 9
      OnClick = GenerateACBtnClick
    end
    object CopyACToClipboardBtn: TBitBtn
      Left = 180
      Top = 155
      Width = 105
      Height = 25
      Caption = 'Copy to Clipboard'
      TabOrder = 10
      OnClick = CopyACToClipboardBtnClick
    end
  end
end
