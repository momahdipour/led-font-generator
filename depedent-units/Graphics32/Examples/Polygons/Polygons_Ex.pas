unit Polygons_Ex;

interface

{ Left mouse button - adds new vertixes }
{  Right mouse button - switches antialiasing on/off }

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Graphics32, Image32, Polygons32, AppEvnts, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Image: TImage32;
    AppEvents: TApplicationEvents;
    BitmapList: TBitmapList32;
    Panel1: TPanel;
    Behind: TCheckBox;
    Mode: TRadioGroup;
    Label1: TLabel;
    LineAlpha: TScrollBar;
    Label2: TLabel;
    FillAlpha: TScrollBar;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ImageMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure AppEventsIdle(Sender: TObject; var Done: Boolean);
    procedure ImageResize(Sender: TObject);
  private
    t: Single;
    PP: TArrayOfPoint;
    UseAA: Boolean;
    BorderAlpha: Single;
  public
    Points: TArrayOfPointF;
    Velocities: TArrayOfPointF;
    procedure Draw;
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Draw;
var
  I: Integer;
begin
  Image.Bitmap.BeginUpdate;
  Image.Bitmap.Clear;
  Image.Bitmap.Draw(50, 50, BitmapList.Bitmaps[0].Bitmap);
  if Mode.ItemIndex = 2 then
  begin
    if Behind.Checked then
      PolyLineFS(Image.Bitmap, Points, SetAlpha(clWhite32, LineAlpha.Position));
    PolygonFS(Image.Bitmap, Points, SetAlpha(clGreen32, FillAlpha.Position));
    if not Behind.Checked then
      PolyLineFS(Image.Bitmap, Points, SetAlpha(clWhite32, LineAlpha.Position));
  end
  else if Mode.ItemIndex = 1 then
  begin
    SetLength(PP, Length(Points));
    for I := 0 to High(PP) do
    begin
      PP[I].X := Round(Points[I].X);
      PP[I].Y := Round(Points[I].Y);
    end;
    if Behind.Checked then
      PolyLineAS(Image.Bitmap, PP, SetAlpha(clWhite32, LineAlpha.Position));
    PolygonAS(Image.Bitmap, PP, SetAlpha(clGreen32, FillAlpha.Position));
    if not Behind.Checked then
      PolyLineAS(Image.Bitmap, PP, SetAlpha(clWhite32, LineAlpha.Position));
  end
  else
  begin
    SetLength(PP, Length(Points));
    for I := 0 to High(PP) do
    begin
      PP[I].X := Round(Points[I].X);
      PP[I].Y := Round(Points[I].Y);
    end;
    if Behind.Checked then
      PolyLineTS(Image.Bitmap, PP, SetAlpha(clWhite32, LineAlpha.Position));
    PolygonTS(Image.Bitmap, PP, SetAlpha(clGreen32, FillAlpha.Position));
    if not Behind.Checked then
      PolyLineTS(Image.Bitmap, PP, SetAlpha(clWhite32, LineAlpha.Position));
  end;
  Image.Bitmap.EndUpdate;
  Image.Bitmap.Changed;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Image.SetupBitmap;
  UseAA := True;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  Points := nil;
  Velocities := nil;
  PP := nil;
end;

procedure TForm1.ImageMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  L: Integer;
begin
  if Button = mbLeft then
  begin
    L := Length(Points);
    SetLength(Points, L + 1);
    SetLength(Velocities, L + 1);
    Points[L].X := X;
    Points[L].Y := Y;
    Velocities[L].X := 0;
    Velocities[L].Y := 0;
  end
  else
  begin
    Points := nil;
    Velocities := nil;
  end;
  Draw;
end;

function vLen(const A: TPointF): Single;
begin
  Result := SqRt(SqR(A.X) + SqR(A.Y));
end;

function vScale(const A: TPointF; Factor: Single): TPointF;
begin
  Result.X := A.X * Factor;
  Result.Y := A.Y * Factor;
end;

procedure TForm1.AppEventsIdle(Sender: TObject; var Done: Boolean);
var
  I: Integer;

{}procedure AdvancePoint(var P, V: TPointF; t: Single);
  begin
    { apply velocities }
    P.X := P.X + V.X * t;
    P.Y := P.Y + V.Y * t;

    { reflect from walls }
    if P.X < -20 then
    begin
      P.X := -20;
      V.X := -V.X;
    end;
    if P.X > Image.Bitmap.Width + 20 then
    begin
      P.X := Image.Bitmap.Width + 20;
      V.X := - V.X;
    end;
    if P.Y < -20 then
    begin
      P.Y := -20;
      V.Y := -V.Y;
    end;
    if P.Y > Image.Bitmap.Height + 20 then
    begin
      P.Y := Image.Bitmap.Height + 20;
      V.Y := - V.Y
    end;   

    { change velocity a little bit }
    V.X := V.X + t * (Random - 0.5) / 5;
    V.Y := V.Y + t * (Random - 0.5) / 5;

    { limit velocity }
    if vLen(V) > 2 then V := vScale(V, 2 / vLen(V));
  end;
begin
  for I := 0 to High(Points) do AdvancePoint(Points[I], Velocities[I], 0.5);
  Draw;
end;

procedure TForm1.ImageResize(Sender: TObject);
begin
  Image.SetupBitmap;
  Draw;
end;

end.
