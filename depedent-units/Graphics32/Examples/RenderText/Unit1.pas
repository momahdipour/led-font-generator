unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Image32, ComCtrls, TntStdCtrls, Graphics32, XPMenu,
  Menus, TntMenus;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Edit2: TEdit;
    AALevel: TUpDown;
    Label1: TLabel;
    Edit1: TTntEdit;
    TntButton1: TTntButton;
    FontDialog1: TFontDialog;
    Image1: TImage;
    Panel2: TPanel;
    Button1: TButton;
    ListBox1: TListBox;
    TntMainMenu1: TTntMainMenu;
    fdsfsd1: TTntMenuItem;
    dsf1: TTntMenuItem;
    f1: TTntMenuItem;
    fds1: TTntMenuItem;
    N1: TTntMenuItem;
    N4: TTntMenuItem;
    N3: TTntMenuItem;
    N2: TTntMenuItem;
    N5: TTntMenuItem;
    N11: TTntMenuItem;
    N10: TTntMenuItem;
    N9: TTntMenuItem;
    N8: TTntMenuItem;
    N7: TTntMenuItem;
    N6: TTntMenuItem;
    XPMenu1: TXPMenu;
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ImageResize(Sender: TObject);
    procedure AALevelClick(Sender: TObject; Button: TUDBtnType);
    procedure TntButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    Image: TImage32;
    EditText: WideString;
    { Private declarations }
  public
    procedure Draw;
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Draw;
begin
  Image.Bitmap.Clear;
//  Image.Bitmap.RenderText(10, 10, Edit1.Text, AALevel.Position, $FFFFFFFF);
  Image.Bitmap.TextOut(10, 10, Edit1.Text);
end;

procedure TForm1.Edit1Change(Sender: TObject);
var
  i, j: Integer;
begin
  Image.Bitmap.PenColor := Color32(clBlue);
  Image.Bitmap.Font.Color := clRed;
  Draw;
     Panel2.Color := Image.Bitmap.PixelS[5,5];
    Image1.Picture.Bitmap.Width := 0;
    Image1.Picture.Bitmap.Height := 0;

    Image1.Picture.Bitmap.Width := Image.Bitmap.Width;
    Image1.Picture.Bitmap.Height := Image.Bitmap.Height;

//    Image1.Picture.Bitmap.Canvas.FillRect(Rect(1,1,100,100));

    for i:=1 to Image.Bitmap.Width do
      for j:=1 to Image.Bitmap.Height do
        if WinColor(Image.Bitmap.PixelS[i, j]) = Image.Bitmap.Font.Color then
          Image1.Picture.Bitmap.Canvas.Pixels[i, j] := clRed;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Image := TImage32.Create(nil);
  Image.Parent := Form1;
  Image.Align := alBottom;
  Image.SetupBitmap;
  Image.Bitmap.Font.Name := 'Tahoma';
  Image.Bitmap.Font.Size := 20;
  Image.Bitmap.Font.Style := [fsBold, fsItalic];
end;

procedure TForm1.ImageResize(Sender: TObject);
begin
  Image.SetupBitmap;
  Draw;
end;

procedure TForm1.AALevelClick(Sender: TObject; Button: TUDBtnType);
begin
  Draw;
end;


procedure TForm1.TntButton1Click(Sender: TObject);
begin
  FontDialog1.Font.Assign(Edit1.Font);
  if FontDialog1.Execute then
  begin
    Edit1.Font.Assign(FontDialog1.Font);
    Edit1.OnChange(Edit1);
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i, j, k,l: Integer;
  s: String;
  c: TColor32;
  f:Boolean;
begin
  ListBox1.Clear;
  k := 1;
  for i:=0 to Image.Bitmap.Width - 1 do
    for j:=0 to Image.Bitmap.Height - 1 do
    begin
      c := Image.Bitmap.Pixel[i,j];
      f:=False;
      for l:=1 to k do
        if Image.Bitmap.Pixel[i,j] = Image.Bitmap.Pixel[l,1] then
        begin
          f := True;
          break;
        end;
      if not f then
      begin
        Inc(k);
        Image.Bitmap.Pixel[k,1] := Image.Bitmap.Pixel[i,j];
      end;
    end;
    Image.Refresh;
end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin
//  Panel2.Color := StrToInt(ListBox1.Items.Strings[ListBox1.ItemIndex]);
  Image.Bitmap.SetPixelT(1,1,StrToInt(ListBox1.Items.Strings[ListBox1.ItemIndex]));
end;

procedure TForm1.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  EditText := EditText + Widechar(Key);
  ShowMessage(EditText);
end;

end.
