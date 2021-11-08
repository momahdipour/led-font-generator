unit LCDHistory;

interface

uses
  Classes, Forms, Graphics, Grids, AdvGrid;

type

  { TLCDHistory }

  TLCDHistory = class(TObject)
    private
      FLCDFilledColor, FLCDClearedColor: TColor;
      FLCDGradientColor: TColor;
      FirstRedo: Boolean;
      UndoRequested: Boolean;
      GridList: TList;
      NextHistory: Integer;
      ValidHistoryCount: Integer;
      GridParent: TForm;
      FGrid: TAdvStringGrid;
      function NewGrid: TStringGrid;
      procedure RemoveGrid(AGrid: TStringGrid);
      procedure MinimizeGridMemory(AGrid: TStringGrid);
      procedure SaveGrid(SrcGrid: TAdvStringGrid; DesGrid: TStringGrid);
      procedure RestoreGrid(SrcGrid: TStringGrid; DesGrid: TAdvStringGrid);
      function SameHistoryGrids(AGrid: TAdvStringGrid;
        HistoryGrid: TStringGrid): Boolean;
      function GetSize: Integer;
      procedure SetSize(ASize: Integer);
    function GetRedoLevels: Cardinal;
    function GetUndoLevels: Cardinal;
    protected
    public
      constructor Create(InitialSize: Cardinal); reintroduce;
      destructor Destroy; reintroduce;
      procedure AddHistory(AGrid: TAdvStringGrid); overload;
      procedure AddHistory; overload;
      procedure ClearHistory;
      procedure Undo(AGrid: TAdvStringGrid; UndoLevels: Cardinal = 1); overload;
      procedure Redo(AGrid: TAdvStringGrid; RedoLevels: Cardinal = 1); overload;
      procedure Undo(UndoLevels: Cardinal = 1); overload;
      procedure Redo(RedoLevels: Cardinal = 1); overload;
      function CanUndo: Boolean;
      function CanRedo: Boolean;
    published
      property Size: Integer read GetSize write SetSize;
      property Grid: TAdvStringGrid read FGrid write FGrid;
      property UndoLevels: Cardinal read GetUndoLevels;
      property RedoLevels: Cardinal read GetRedoLevels;

      property LCDFilledColor: TColor read FLCDFilledColor write FLCDFilledColor;
      property LCDClearedColor: TColor read FLCDClearedColor write FLCDClearedColor;
      property LCDGradientColor: TColor read FLCDGradientColor write FLCDGradientColor;
  end;

implementation

uses Math, SysUtils;

{ TLCDHistory }

procedure TLCDHistory.AddHistory(AGrid: TAdvStringGrid);
var
  GridToFill, LastUndoGrid: TStringGrid;
  SaveNextHistory: Cardinal;
  ShiftHistoryLeft: Boolean;
  i: Integer;
begin
  if GridList.Count = 0 then
    Exit;

  if UndoRequested then
  begin
    UndoRequested := False;
    NextHistory := NextHistory + 1;
  end;

  //Preserve the last history state
  SaveNextHistory := NextHistory;
  ShiftHistoryLeft := False;

  if NextHistory < GridList.Count then
  begin
    GridToFill := TStringGrid(GridList.Items[NextHistory]);
    if NextHistory = 0 then
      LastUndoGrid := nil
    else
      LastUndoGrid := TStringGrid(GridList.Items[NextHistory - 1]);
    Inc(NextHistory);
  end
  else
  begin
    GridToFill := TStringGrid(GridList.Items[0]);
    LastUndoGrid := TStringGrid(GridList.Items[GridList.Count - 1]);
    ShiftHistoryLeft := True;
    NextHistory := GridList.Count;
  end;

  if Assigned(LastUndoGrid) then
    if SameHistoryGrids(AGrid, LastUndoGrid) then
    begin
      NextHistory := SaveNextHistory;
      Exit;
    end;

  if ShiftHistoryLeft then
    for i := 1 to GridList.Count - 1 do
      GridList.Exchange(i, i-1);

  SaveGrid(AGrid, GridToFill);
  ValidHistoryCount := NextHistory;
end;

procedure TLCDHistory.AddHistory;
begin
  if Assigned(FGrid) then
    AddHistory(FGrid);
end;

function TLCDHistory.CanRedo: Boolean;
begin
  Result := (GridList.Count > 0) and
            (ValidHistoryCount > NextHistory);
end;

function TLCDHistory.CanUndo: Boolean;
begin
  Result := (GridList.Count > 0) and
            (NextHistory > 0);
  if (ValidHistoryCount = NextHistory) and
     (NextHistory = 1) then
    Result := False;
end;

procedure TLCDHistory.ClearHistory;
var
  i: Integer;
begin
  NextHistory := 0;
  ValidHistoryCount := 0;
  for i := 0 to GridList.Count - 1 do
    MinimizeGridMemory(TStringGrid(GridList.Items[i]));
end;

constructor TLCDHistory.Create(InitialSize: Cardinal);
begin
  inherited Create;
  GridParent := TForm.Create(nil);
  GridParent.Visible := False;
  GridList := TList.Create;
  GridList.Clear;
  SetSize(InitialSize);
  NextHistory := 0;
  ValidHistoryCount := 0;
  FLCDFilledColor := clBlue;
  FLCDClearedColor := clWhite;
  FLCDGradientColor := FLCDFilledColor;
  FirstRedo := False;
  UndoRequested := False;
end;

destructor TLCDHistory.Destroy;
begin
  SetSize(0);
  GridParent.Free;
  GridList.Free;
  inherited Destroy;
end;

function TLCDHistory.GetRedoLevels: Cardinal;
begin
  Result := ValidHistoryCount - NextHistory;
end;

function TLCDHistory.GetSize: Integer;
begin
  Result := GridList.Count;
end;

function TLCDHistory.GetUndoLevels: Cardinal;
begin
  Result := NextHistory;
end;

procedure TLCDHistory.MinimizeGridMemory(AGrid: TStringGrid);
begin
  AGrid.ColCount := 1;
  AGrid.RowCount := 1;
  AGrid.Cells[0, 0] := '';
end;

function TLCDHistory.NewGrid: TStringGrid;
begin
  Result := TStringGrid.Create(nil);
  Result.Parent := GridParent;
  Result.FixedCols := 0;
  Result.FixedRows := 0;
  MinimizeGridMemory(Result);
end;

procedure TLCDHistory.Redo(AGrid: TAdvStringGrid; RedoLevels: Cardinal);
begin
  if not CanRedo then
    Exit;
  if FirstRedo then
  begin
    Inc(NextHistory);
    FirstRedo := False;
  end;
  NextHistory := NextHistory + Integer(RedoLevels);
  if NextHistory > ValidHistoryCount then
    NextHistory := ValidHistoryCount
  else if NextHistory >= GridList.Count then
    NextHistory := GridList.Count;
  UndoRequested := False;
  RestoreGrid(TStringGrid(GridList.Items[NextHistory - 1]), AGrid);
end;

procedure TLCDHistory.Redo(RedoLevels: Cardinal);
begin
  if Assigned(FGrid) then
    Redo(FGrid, RedoLevels);
end;

procedure TLCDHistory.RemoveGrid(AGrid: TStringGrid);
begin
  AGrid.Free;
end;

procedure TLCDHistory.RestoreGrid(SrcGrid: TStringGrid;
  DesGrid: TAdvStringGrid);
var
  Row, Col: Integer;
begin
  DesGrid.ColCount := SrcGrid.ColCount;
  DesGrid.RowCount := SrcGrid.RowCount;

  DesGrid.BeginUpdate;
  try
    for Row := 0 to SrcGrid.RowCount - 1 do
      for Col := 0 to SrcGrid.ColCount - 1 do
        if SrcGrid.Cells[Col, Row] = '1' then
        begin
          DesGrid.Colors[Col, Row] := FLCDFilledColor;
          DesGrid.ColorsTo[Col, Row] := FLCDGradientColor;
        end
        else
        begin
          DesGrid.Colors[Col, Row] := FLCDClearedColor;
          DesGrid.ColorsTo[Col, Row] := FLCDClearedColor;
        end;
  finally
    DesGrid.DefaultRowHeight := DesGrid.DefaultRowHeight;  //Because of TAdvStringGrid
    DesGrid.RowHeights[DesGrid.RowCount - 1] := 0;
    DesGrid.EndUpdate;
  end;
end;

function TLCDHistory.SameHistoryGrids(AGrid: TAdvStringGrid;
  HistoryGrid: TStringGrid): Boolean;
var
  Row, Col: Integer;
  S: String[1];
begin
  Result := (AGrid.ColCount = HistoryGrid.ColCount) and
            (AGrid.RowCount = HistoryGrid.RowCount);
  if not Result then
    Exit;

  for Col := 0 to AGrid.ColCount - 1 do
    for Row := 0 to AGrid.RowCount - 1 do
    begin
      if AGrid.Colors[Col, Row] = FLCDFilledColor then
        S := '1'
      else
        S := '0';
      if HistoryGrid.Cells[Col, Row] <> S then
      begin
        Result := False;
        Exit;
      end;
    end;
end;

procedure TLCDHistory.SaveGrid(SrcGrid: TAdvStringGrid;
  DesGrid: TStringGrid);
var
  Row, Col: Integer;
begin
  DesGrid.ColCount := SrcGrid.ColCount;
  DesGrid.RowCount := SrcGrid.RowCount;

//  DesGrid.BeginUpdate;  --> TStringGrid does not have this method
  try
    for Row := 0 to SrcGrid.RowCount - 1 do
      for Col := 0 to SrcGrid.ColCount - 1 do
        if SrcGrid.Colors[Col, Row] = LCDFilledColor then
          DesGrid.Cells[Col, Row] := '1'
        else
          DesGrid.Cells[Col, Row] := '0';
  finally
//    DesGrid.EndUpdate;  --> TStringGrid does not have this method
  end;
end;

procedure TLCDHistory.SetSize(ASize: Integer);
var
  i: Integer;
begin
  if ASize < 0 then
    ASize := 0;

  if ASize <> GridList.Count then
  begin
    UndoRequested := False;
    FirstRedo := False;  //Prevent potential software busg
    NextHistory := 0;
    ValidHistoryCount := 0;
    for i := 0 to GridList.Count - 1 do
      MinimizeGridMemory(TStringGrid(GridList.Items[i]));
    if ASize > GridList.Count then
      for i := 1 to ASize - GridList.Count do
        GridList.Add(NewGrid)
    else
      for i := 1 to GridList.Count - ASize do
      begin
        RemoveGrid(TStringGrid(GridList.Items[GridList.Count - 1]));
        GridList.Delete(GridList.Count - 1);
      end;
  end;
end;

procedure TLCDHistory.Undo(AGrid: TAdvStringGrid; UndoLevels: Cardinal);
begin
  if not CanUndo then
    Exit;
  if ValidHistoryCount = NextHistory then
  begin
    FirstRedo := True;
    Dec(NextHistory);
  end;
  NextHistory := NextHistory - Integer(UndoLevels);
  if NextHistory < 0 then
    NextHistory := 0;
  UndoRequested := True;
  RestoreGrid(TStringGrid(GridList.Items[NextHistory]), AGrid);
end;

procedure TLCDHistory.Undo(UndoLevels: Cardinal);
begin
  if Assigned(FGrid) then
    Undo(FGrid, UndoLevels);
end;

end.
