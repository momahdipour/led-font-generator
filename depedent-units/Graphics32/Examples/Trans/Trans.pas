unit Transform_Ex;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Graphics32, Image32, Transform32, ExtCtrls, StdCtrls, Buttons, ComCtrls,
  Grids;

type
  TOpType = (opNone, opTranslate, opScale, opRotate, opSkew);
  TOpRec = record
    OpType: TOpType;
    Dx, Dy: Extended;        // shifts for opTranslate mode
    Sx, Sy: Extended;        // scale factors for opScale mode
    Cx, Cy, Alpha: Extended; // rotation center and angle (deg) for opRotate mode
    Fx, Fy: Extended;        // skew factors for opSkew mode
  end;
  TOpRecs = array[0..7] of TOpRec;

const
  OpTypes: array [0..4] of TOpType = (opNone, opTranslate, opScale, opRotate,
    opSkew);

type
  TForm1 = class(TForm)
    Src: TImage32;
    Dst: TImage32;
    Panel1: TPanel;
    Label1: TLabel;
    ComboBox: TComboBox;
    Notebook: TNotebook;
    ListBox: TListBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    eDx: TEdit;
    Label5: TLabel;
    eDy: TEdit;
    eSy: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    eSx: TEdit;
    Label8: TLabel;
    sbDx: TScrollBar;
    sbDy: TScrollBar;
    Button1: TButton;
    CodeString: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Panel2: TPanel;
    Shape1: TShape;
    Shape2: TShape;
    StringGrid: TStringGrid;
    sbSx: TScrollBar;
    sbSy: TScrollBar;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    eCx: TEdit;
    eAlpha: TEdit;
    Label16: TLabel;
    sbAlpha: TScrollBar;
    eCy: TEdit;
    Label15: TLabel;
    Label14: TLabel;
    eFx: TEdit;
    sbFx: TScrollBar;
    sbFy: TScrollBar;
    eFy: TEdit;
    Label17: TLabel;
    RadioGroup1: TRadioGroup;
    Bevel1: TBevel;
    Label18: TLabel;
    ScrollBar1: TScrollBar;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ListBoxClick(Sender: TObject);
    procedure ComboBoxChange(Sender: TObject);
    procedure TranslationChanged(Sender: TObject);
    procedure ScaleChanged(Sender: TObject);
    procedure TranslationScrolled(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ScaleScrolled(Sender: TObject);
    procedure RotationChanged(Sender: TObject);
    procedure RotationScrolled(Sender: TObject);
    procedure SkewChanged(Sender: TObject);
    procedure SkewScrolled(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
  protected
    LoadingValues: Boolean;
  public
    Operation: TOpRecs;
    Current: ^TOpRec;
    T: TLinearTransformation;
    procedure ClearTransformations;
    procedure DoTransform;
    procedure GenTransform;
    procedure PrepareSource;
    procedure ShowSettings(OperationNum: Integer);
  end;

var
  Form1: TForm1;

implementation
function GetVal(Src: string; var Dst: Extended): Boolean;
var
  Code: Integer;
begin
  Val(Src, Dst, Code);
  Result := Code = 0;
end;

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
begin
  Dst.SetupBitmap; // the destination bitmap size to the image size
  PrepareSource;
  ClearTransformations;
  ShowSettings(0);
  T := TLinearTransformation.Create;
  DoTransform;
end;

procedure TForm1.ClearTransformations;
var
  I: Integer;
begin
  FillChar(Operation[0], SizeOf(TOpRecs), 0);
  for I := 0 to 7 do
  begin
    Operation[I].Sx := 1;
    Operation[I].Sy := 1;
    Operation[I].Cx := Src.Bitmap.Width / 2;
    Operation[I].Cy := Src.Bitmap.Height / 2;
  end;
end;

procedure TForm1.PrepareSource;
begin
  // make the border pixels transparent while keeping their RGB components
  SetBorderTransparent(Src.Bitmap,
    Rect(0, 0, Src.Bitmap.Width - 1, Src.Bitmap.Height - 1));
end;

procedure TForm1.DoTransform;
var
  i, j: Integer;
  P: PColor32;
begin
  GenTransform;
  T.PrepareTransform;
  Dst.BeginUpdate;
  //Dst.Bitmap.Clear;
  P := Dst.Bitmap.PixelPtr[0, 0];
  for j := 0 to Dst.Bitmap.Height - 1 do
    for i := 0 to Dst.Bitmap.Width - 1 do
    begin
      if Odd(i shr 4) = Odd(j shr 4) then P^ := clBlack32
      else P^ := clWhite32;
      Inc(P);
    end;

  Transform(Dst.Bitmap, Src.Bitmap, Rect(0, 0, Src.Width, Src.Height), T);
  Dst.EndUpdate;
  Dst.Repaint;

  // fill the string grid
  for j := 0 to 2 do
    for i := 0 to 2 do
      StringGrid.Cells[i, j] := Format('%.3g', [T.Matrix[i, j]]);
  StringGrid.Col := 3;
end;

procedure TForm1.GenTransform;
var
  I: Integer;
  Rec: TOpRec;
  S: string;
begin
  T.Clear;
  for I := 0 to 7 do
  begin
    Rec := Operation[I];
    case Rec.OpType of
      opTranslate:  T.Translate(Rec.Dx, Rec.Dy);
      opScale:      T.Scale(Rec.Sx, Rec.Sy);
      opRotate:     T.Rotate(Rec.Cx, Rec.Cy, Rec.Alpha);
      opSkew:       T.Skew(Rec.Fx, Rec.Fy);
    end;
    case Rec.OpType of
      opTranslate:  s := s + Format('Translate(%.3g, %.3g); ', [Rec.Dx, Rec.Dy]);
      opScale:      s := s + Format('Scale(%.3g, %.3g); ', [Rec.Sx, Rec.Sy]);
      opRotate:     s := s + Format('Rotate(%.3g, %.3g, %3g); ', [Rec.Cx, Rec.Cy, Rec.Alpha]);
      opSkew:       s := s + Format('Skew(%.3g, %.3g); ', [Rec.Fx, Rec.Fy]);
    end;
  end;
  if Length(s) = 0 then s := 'Clear;';
  CodeString.Text := s;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  T.Free;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  ClearTransformations;
  ShowSettings(Listbox.ItemIndex);
  DoTransform;
end;

procedure TForm1.ListBoxClick(Sender: TObject);
begin
  ShowSettings(ListBox.ItemIndex);
end;

procedure TForm1.ShowSettings(OperationNum: Integer);
begin
  LoadingValues := True;
  ListBox.ItemIndex := OperationNum;
  Current := @Operation[OperationNum];
  Combobox.ItemIndex := Ord(Current.OpType);
  NoteBook.PageIndex := Ord(Current.OpType);
  eDx.Text := Format('%.4g', [Current.Dx]);
  eDy.Text := Format('%.4g', [Current.Dy]);
  sbDx.Position := Round(Current.Dx * 10);
  sbDy.Position := Round(Current.Dy * 10);
  eSx.Text := Format('%.4g', [Current.Sx]);
  eSy.Text := Format('%.4g', [Current.Sy]);
  sbSx.Position := Round(Current.Sx * 100);
  sbSy.Position := Round(Current.Sy * 100);
  eCx.Text := Format('%.4g', [Current.Cx]);
  eCy.Text := Format('%.4g', [Current.Cy]);
  eAlpha.Text := Format('%.4g', [Current.Alpha]);
  sbAlpha.Position := Round(Current.Alpha * 2);
  eFx.Text := Format('%.4g', [Current.Fx]);
  eFy.Text := Format('%.4g', [Current.Fy]);
  sbFx.Position := Round(Current.Fx * 100);
  sbFy.Position := Round(Current.Fy * 100);
  LoadingValues := False;
end;

procedure TForm1.ComboBoxChange(Sender: TObject);
begin
  Current.OpType := OpTypes[ComboBox.ItemIndex];
  ShowSettings(ListBox.ItemIndex);
  DoTransform;
end;

procedure TForm1.TranslationChanged(Sender: TObject);
var
  Tx, Ty: Extended;
begin
  if LoadingValues then Exit;
  if GetVal(eDx.Text, Tx) and GetVal(eDy.Text, Ty) then
  begin
    Current.Dx := Tx;
    Current.Dy := Ty;
    DoTransform;
    LoadingValues := True;
    sbDx.Position := Round(Current.Dx * 10);
    sbDy.Position := Round(Current.Dy * 10);
    LoadingValues := False;
  end;
end;

procedure TForm1.TranslationScrolled(Sender: TObject);
begin
  if LoadingValues then Exit;
  Current.Dx := sbDx.Position / 10;
  Current.Dy := sbDy.Position / 10;
  DoTransform;
  LoadingValues := True;
  eDx.Text := FloatToStr(Current.Dx);
  eDy.Text := FloatToStr(Current.Dy);
  LoadingValues := False;
end;

procedure TForm1.ScaleChanged(Sender: TObject);
var
  Sx, Sy: Extended;
begin
  if LoadingValues then Exit;
  if GetVal(eSx.Text, Sx) and GetVal(eSy.Text, Sy) then
  begin
    Current.Sx := Sx;
    Current.Sy := Sy;
    DoTransform;
    LoadingValues := True;
    sbSx.Position := Round(Current.Sx * 100);
    sbSy.Position := Round(Current.Sy * 100);
    LoadingValues := False;
  end;
end;

procedure TForm1.ScaleScrolled(Sender: TObject);
begin
  if LoadingValues then Exit;
  Current.Sx := sbSx.Position / 100;
  Current.Sy := sbSy.Position / 100;
  DoTransform;
  LoadingValues := True;
  eSx.Text := FloatToStr(Current.Sx);
  eSy.Text := FloatToStr(Current.Sy);
  LoadingValues := False;
end;

procedure TForm1.RotationChanged(Sender: TObject);
var
  Cx, Cy, Alpha: Extended;
begin
  if LoadingValues then Exit;
  if GetVal(eCx.Text, Cx) and GetVal(eCy.Text, Cy) and
    GetVal(eAlpha.Text, Alpha) then
  begin
    Current.Cx := Cx;
    Current.Cy := Cy;
    Current.Alpha := Alpha;
    DoTransform;
    LoadingValues := True;
    sbAlpha.Position := Round(Alpha * 2);
    LoadingValues := False;
  end;
end;

procedure TForm1.RotationScrolled(Sender: TObject);
begin
  if LoadingValues then Exit;
  Current.Alpha := sbAlpha.Position / 2;
  DoTransform;
  LoadingValues := True;
  eAlpha.Text := FloatToStr(Current.Alpha / 2);
  LoadingValues := False;
end;

procedure TForm1.SkewChanged(Sender: TObject);
var
  Fx, Fy: Extended;
begin
  if LoadingValues then Exit;
  if GetVal(eFx.Text, Fx) and GetVal(eFy.Text, Fy) then
  begin
    Current.Fx := Fx;
    Current.Fy := Fy;
    DoTransform;
    LoadingValues := True;
    sbFx.Position := Round(Current.Fx * 10);
    sbFy.Position := Round(Current.Fy * 10);
    LoadingValues := False;
  end;
end;

procedure TForm1.SkewScrolled(Sender: TObject);
begin
  if LoadingValues then Exit;
  Current.Fx := sbFx.Position / 10;
  Current.Fy := sbFy.Position / 10;
  DoTransform;
  LoadingValues := True;
  eFx.Text := FloatToStr(Current.Fx);
  eFy.Text := FloatToStr(Current.Fy);
  LoadingValues := False;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
const
  STRETCH_FILTER: array [0..1] of TStretchFilter = (sfNearest, sfLinear);
begin
  Src.Bitmap.StretchFilter := STRETCH_FILTER[RadioGroup1.ItemIndex];
  DoTransform;
end;

procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
  Src.Bitmap.MasterAlpha := ScrollBar1.Position;
  Src.Repaint;
  DoTransform;
end;

end.
