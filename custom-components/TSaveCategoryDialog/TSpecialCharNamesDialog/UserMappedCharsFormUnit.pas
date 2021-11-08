unit UserMappedCharsFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, StdCtrls, Buttons, TntButtons,
  TntStdCtrls, TntDialogs, TntSystem, TntForms, ExtCtrls, MMAdvancedGrid;

//const
  //CHARACTER_MAP_FNAME = 'CharMap.dat';  --> Not used any more. Settings are written and read to/from the registry

type
  TUserMappedCharsForm = class(TTntForm)
    OKBtn: TTntBitBtn;
    CancelBtn: TTntBitBtn;
    FontColorTimer: TTimer;
    CharMapGrid: TMMAdvancedGrid;
    procedure FormShow(Sender: TObject);
    procedure CharMapGridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure OKBtnClick(Sender: TObject);
    procedure CharMapGridMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CharMapGridDblClick(Sender: TObject);
    procedure FontColorTimerTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    SelectedCharFileName: String;
  end;

implementation

uses LCDProcsUnit;

{$R *.dfm}

procedure TUserMappedCharsForm.FormShow(Sender: TObject);
begin
  CharMapGrid.RowCount:=2;
  try
    if not LCDProcs.ReadUserMappedChars(CharMapGrid) then
      CharMapGrid.RowCount := 2;
    {if FileExists(ExtractFilePath(Application.ExeName) + CHARACTER_MAP_FNAME) then
      CharMapGrid.LoadFromCSV(ExtractFilePath(Application.ExeName) + CHARACTER_MAP_FNAME)
    else
      CharMapGrid.RowCount := 2;}
  finally
    //This section is only because of TAdvStringGrid.
    CharMapGrid.DefaultRowHeight := CharMapGrid.DefaultRowHeight;
    CharMapGrid.RowHeights[CharMapGrid.RowCount-1]:=0;

    OKBtn.Enabled := CharMapGrid.RowCount > 2; 
  end;
end;

procedure TUserMappedCharsForm.CharMapGridSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  CanSelect := ARow <> (CharMapGrid.RowCount - 1);
  if CanSelect then
    SelectedCharFileName := CharMapGrid.Cells[1, Arow];
end;

procedure TUserMappedCharsForm.OKBtnClick(Sender: TObject);
begin
  if CharMapGrid.RowCount <= 2 then
    ModalResult := mrCancel;
end;

procedure TUserMappedCharsForm.CharMapGridMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  gc: TGridCoord;
  Row: Integer;
  FColor: TColor;
begin
  gc := CharMapGrid.MouseCoord(X, Y);
  if (gc.X >= 0) and (gc.X <= (CharMapGrid.ColCount - 1)) and
    (gc.Y >= 1) and (gc.Y <= (CharMapGrid.RowCount - 2)) then
  begin
    CharMapGrid.Cursor := crHandPoint;
    FontColorTimer.Enabled := True;
  end
  else
    CharMapGrid.Cursor := crDefault;

  for Row := 1 to CharMapGrid.RowCount - 1 do
  begin
    if (CharMapGrid.Cursor = crHandPoint) and (Row = gc.Y) then
      FColor := clBlue
    else
      FColor := CharMapGrid.Font.Color;
    if CharMapGrid.FontColors[0, Row] <> FColor then
    begin
      CharMapGrid.FontColors[0, Row] := FColor;
      CharMapGrid.FontColors[1, Row] := FColor;
    end;
  end;
end;

procedure TUserMappedCharsForm.CharMapGridDblClick(Sender: TObject);
begin
  if CharMapGrid.Cursor = crHandPoint then
    OKBtn.Click;
end;

procedure TUserMappedCharsForm.FontColorTimerTimer(Sender: TObject);
var
  Row: Integer;
  gc: TGridCoord;
  P: TPoint;
begin
  P := CharMapGrid.ScreenToClient(Mouse.CursorPos);
  gc := CharMapGrid.MouseCoord(P.X, P.Y);
  if (gc.X < 0) or (gc.Y <= 0) then
  begin
    for Row := 1 to CharMapGrid.RowCount - 1 do
      if CharMapGrid.FontColors[0, Row] <> CharMapGrid.Font.Color then
      begin
        CharMapGrid.FontColors[0, Row] := CharMapGrid.Font.Color;
       CharMapGrid.FontColors[1, Row] := CharMapGrid.Font.Color;
      end;
    FontColorTimer.Enabled := False;
  end;
end;

end.
