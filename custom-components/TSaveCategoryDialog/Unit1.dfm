object Form1: TForm1
  Left = 195
  Top = 162
  Width = 696
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 296
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ShellTreeView1: TShellTreeView
    Left = 21
    Top = 119
    Width = 313
    Height = 179
    ObjectTypes = [otFolders]
    Root = 'rfDesktop'
    UseShellImages = True
    AutoRefresh = False
    Indent = 19
    ParentColor = False
    RightClickSelect = True
    ShowRoot = False
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 480
    Top = 128
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object TreeView1: TTreeView
    Left = 384
    Top = 192
    Width = 121
    Height = 97
    Indent = 19
    TabOrder = 3
    OnChange = TreeView1Change
    Items.Data = {
      03000000240000000000000000000000FFFFFFFFFFFFFFFF0000000000000000
      0B7472687472687274687274220000000000000000000000FFFFFFFFFFFFFFFF
      0000000000000000097274687274687274681F0000000000000000000000FFFF
      FFFFFFFFFFFF0000000001000000067274687274681F00000000000000000000
      00FFFFFFFFFFFFFFFF0000000001000000067274687274682100000000000000
      00000000FFFFFFFFFFFFFFFF0000000000000000087274687274687274}
  end
  object XPManifest1: TXPManifest
    Left = 584
    Top = 204
  end
end
