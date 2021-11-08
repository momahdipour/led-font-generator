unit LCDProcsUnit;

interface

uses
  Windows, Controls, Graphics, TntStdCtrls, TntForms, Forms, Consts,
  Classes, Menus, AdvGrid, Grids, Clipbrd, StdCtrls, Registry, LCDConsts;

type
  TCommonDirection = (cdToLeft, cdToRight, cdToTop, cdToBottom, cdToTopLeft,
                      cdToTopRight, cdToBottomLeft, cdToBottomRight);

  TLCDProcs = class(TObject)
    private
    protected
    public
      constructor Create; overload;
      destructor Destroy; reintroduce;

      //LCD operations
      procedure FlipSelectionHorizontally(ALCDGrid: TAdvStringGrid);
      procedure FlipSelectionVertically(ALCDGrid: TAdvStringGrid);

      procedure RotateSelectionLeft(ALCDGrid: TAdvStringGrid);
      procedure RotateSelectionRight(ALCDGrid: TAdvStringGrid);
      procedure RotateSelectionUp(ALCDGrid: TAdvStringGrid);
      procedure RotateSelectionDown(ALCDGrid: TAdvStringGrid);
      procedure RotateLCDPageCW(ALCDGrid: TAdvStringGrid);
      procedure RotateLCDPageCCW(ALCDGrid: TAdvStringGrid);

      procedure ShiftAtCursorLeft(ALCDGrid: TAdvStringGrid;
        ClearedColor: TColor);
      procedure ShiftAtCursorRight(ALCDGrid: TAdvStringGrid;
        ClearedColor: TColor);

      procedure RotateAllLCD(ALCDGrid: TAdvStringGrid;
        Direction: TCommonDirection);

      procedure ClearLCD(ALCDGrid: TAdvStringGrid; ClearedColor: TColor);
      
      //Content operation
      procedure ShiftLCDValuesRight(ALCDGrid: TStringGrid;
        ShiftCol, ShiftCount: Integer);
      ////////////////

      function CalculateLCDGradientColor(LCDFilledColor,
        LCDClearedColor: TColor): TColor;

      procedure SetCellColor(ALCDGrid: TAdvStringGrid;
        ACol, ARow: Integer; Filled: Boolean;
        LCDFilledColor, LCDClearedColor: TColor; LCDUseSolidColors: Boolean);

      procedure CheckLCDScrollBars(ALCDGrid: TAdvStringGrid);

      //Read and write User-Mapped chars to a TAdvStringGrid
      function ReadUserMappedChars(DesGrid: TAdvStringGrid): Boolean;
      function WriteUserMappedChars(SrcGrid: TAdvStringGrid): Boolean;

      //LCD clipboard routines
      function ClipboardContainsLCD: Boolean;
      procedure CopyLCDToClipboard(ALCD: TAdvStringGrid;
        LCDFilledColor: TColor; OnlySelection: Boolean = True);
      function PasteLCDFromClipboard(ALCD: TAdvStringGrid): Boolean;

      function IsLCDCompletelyCleared(ALCDGrid: TAdvStringGrid;
        ALCDClearedColor: TColor): Boolean;
    published
  end;

var
  LCDProcs: TLCDProcs;

implementation

uses SysUtils, Variants, StrUtils, ProcsUnit, MainUnit;

constructor TLCDProcs.Create;
begin
  inherited;

end;

destructor TLCDProcs.Destroy;
begin

  inherited Destroy;
end;

procedure TLCDProcs.FlipSelectionHorizontally(ALCDGrid: TAdvStringGrid);
var
  LCol, RCol: Integer;
  Row: Integer;
  CTemp1, CTemp2: TColor;
  STemp: String;
begin
  try
    ALCDGrid.BeginUpdate;

    LCol := ALCDGrid.Selection.Left;
    RCol := ALCDGrid.Selection.Right;
    while LCol < RCol do
    begin
      for Row := ALCDGrid.Selection.Top to ALCDGrid.Selection.Bottom do
      begin
        CTemp1 := ALCDGrid.Colors[LCol, Row];
        CTemp2 := ALCDGrid.ColorsTo[LCol, Row];
        STemp := ALCDGrid.Cells[LCol, Row];
        ALCDGrid.Colors[LCol, Row] := ALCDGrid.Colors[RCol, Row];
        ALCDGrid.ColorsTo[LCol, Row] := ALCDGrid.ColorsTo[RCol, Row];
        ALCDGrid.Cells[LCol, Row] := ALCDGrid.Cells[RCol, Row];
        ALCDGrid.Colors[RCol, Row]:= CTemp1;
        ALCDGrid.ColorsTo[RCol, Row]:= CTemp2;
        ALCDGrid.Cells[RCol, Row]:= STemp;
      end;
      Inc(LCol);
      Dec(RCol);
    end;
  finally
    ALCDGrid.EndUpdate;
  end;
end;

procedure TLCDProcs.FlipSelectionVertically(ALCDGrid: TAdvStringGrid);
var
  TRow, BRow: Integer;
  Col: Integer;
  CTemp1, CTemp2: TColor;
  STemp: String;
begin
  try
    ALCDGrid.BeginUpdate;

    TRow := ALCDGrid.Selection.Top;
    BRow := ALCDGrid.Selection.Bottom;
    while TRow < BRow do
    begin
      for Col := ALCDGrid.Selection.Left to ALCDGrid.Selection.Right do
      begin
        CTemp1 := ALCDGrid.Colors[Col, TRow];
        CTemp2 := ALCDGrid.ColorsTo[Col, TRow];
        STemp := ALCDGrid.Cells[Col, TRow];
        ALCDGrid.Colors[Col, TRow] := ALCDGrid.Colors[Col, BRow];
        ALCDGrid.ColorsTo[Col, TRow] := ALCDGrid.ColorsTo[Col, BRow];
        ALCDGrid.Cells[Col, TRow] := ALCDGrid.Cells[Col, BRow];
        ALCDGrid.Colors[Col, BRow]:= CTemp1;
        ALCDGrid.ColorsTo[Col, BRow]:= CTemp2;
        ALCDGrid.Cells[Col, BRow] := STemp;
      end;
      Inc(TRow);
      Dec(BRow);
    end;
  finally
    ALCDGrid.EndUpdate;
  end;
end;

procedure TLCDProcs.RotateSelectionLeft(ALCDGrid: TAdvStringGrid);
var
  Row, Col: Integer;
  CTemp1, CTemp2: TColor;
  STemp: String;
begin
  try
    ALCDGrid.BeginUpdate;

    for Row := ALCDGrid.Selection.Top to ALCDGrid.Selection.Bottom do
    begin
      CTemp1 := ALCDGrid.Colors[ALCDGrid.Selection.Left, Row];
      CTemp2 := ALCDGrid.ColorsTo[ALCDGrid.Selection.Left, Row];
      STemp := ALCDGrid.Cells[ALCDGrid.Selection.Left, Row];
      for Col := ALCDGrid.Selection.Left to ALCDGrid.Selection.Right - 1 do
      begin
        ALCDGrid.Colors[Col, Row] := ALCDGrid.Colors[Col + 1, Row];
        ALCDGrid.ColorsTo[Col, Row] := ALCDGrid.ColorsTo[Col + 1, Row];
        ALCDGrid.Cells[Col, Row] := ALCDGrid.Cells[Col + 1, Row];
      end;
      ALCDGrid.Colors[ALCDGrid.Selection.Right, Row] := CTemp1;
      ALCDGrid.ColorsTo[ALCDGrid.Selection.Right, Row] := CTemp2;
      ALCDGrid.Cells[ALCDGrid.Selection.Right, Row] := STemp;
    end;
  finally
    ALCDGrid.EndUpdate;
  end;
end;

procedure TLCDProcs.RotateSelectionRight(ALCDGrid: TAdvStringGrid);
var
  Row, Col: Integer;
  CTemp1, CTemp2: TColor;
  STemp: String;
begin
  try
    ALCDGrid.BeginUpdate;

    for Row := ALCDGrid.Selection.Top to ALCDGrid.Selection.Bottom do
    begin
      CTemp1 := ALCDGrid.Colors[ALCDGrid.Selection.Right, Row];
      CTemp2 := ALCDGrid.ColorsTo[ALCDGrid.Selection.Right, Row];
      STemp := ALCDGrid.Cells[ALCDGrid.Selection.Right, Row];
      for Col := ALCDGrid.Selection.Right downto ALCDGrid.Selection.Left + 1 do
      begin
        ALCDGrid.Colors[Col, Row] := ALCDGrid.Colors[Col - 1, Row];
        ALCDGrid.ColorsTo[Col, Row] := ALCDGrid.ColorsTo[Col - 1, Row];
        ALCDGrid.Cells[Col, Row] := ALCDGrid.Cells[Col - 1, Row];
      end;
      ALCDGrid.Colors[ALCDGrid.Selection.Left, Row] := CTemp1;
      ALCDGrid.ColorsTo[ALCDGrid.Selection.Left, Row] := CTemp2;
      ALCDGrid.Cells[ALCDGrid.Selection.Left, Row] := STemp;
    end;
  finally
    ALCDGrid.EndUpdate;
  end;
end;

procedure TLCDProcs.RotateSelectionUp(ALCDGrid: TAdvStringGrid);
var
  Row, Col: Integer;
  CTemp1, CTemp2: TColor;
  STemp: String;
begin
  try
    ALCDGrid.BeginUpdate;

    for Col := ALCDGrid.Selection.Left to ALCDGrid.Selection.Right do
    begin
      CTemp1 := ALCDGrid.Colors[Col, ALCDGrid.Selection.Top];
      CTemp2 := ALCDGrid.ColorsTo[Col, ALCDGrid.Selection.Top];
      STemp := ALCDGrid.Cells[Col, ALCDGrid.Selection.Top];
      for Row := ALCDGrid.Selection.Top to ALCDGrid.Selection.Bottom - 1 do
      begin
        ALCDGrid.Colors[Col, Row] := ALCDGrid.Colors[Col, Row + 1];
        ALCDGrid.ColorsTo[Col, Row] := ALCDGrid.ColorsTo[Col, Row + 1];
        ALCDGrid.Cells[Col, Row] := ALCDGrid.Cells[Col, Row + 1];
      end;
      ALCDGrid.Colors[Col, ALCDGrid.Selection.Bottom] := CTemp1;
      ALCDGrid.ColorsTo[Col, ALCDGrid.Selection.Bottom] := CTemp2;
      ALCDGrid.Cells[Col, ALCDGrid.Selection.Bottom] := STemp;
    end;
  finally
    ALCDGrid.EndUpdate;
  end;
end;

procedure TLCDProcs.RotateSelectionDown(ALCDGrid: TAdvStringGrid);
var
  Row, Col: Integer;
  CTemp1, CTemp2: TColor;
  STemp: String;
begin
  try
    ALCDGrid.BeginUpdate;

    for Col := ALCDGrid.Selection.Left to ALCDGrid.Selection.Right do
    begin
      CTemp1 := ALCDGrid.Colors[Col, ALCDGrid.Selection.Bottom];
      CTemp2 := ALCDGrid.ColorsTo[Col, ALCDGrid.Selection.Bottom];
      STemp := ALCDGrid.Cells[Col, ALCDGrid.Selection.Bottom];
      for Row := ALCDGrid.Selection.Bottom downto ALCDGrid.Selection.Top + 1 do
      begin
        ALCDGrid.Colors[Col, Row] := ALCDGrid.Colors[Col, Row - 1];
        ALCDGrid.ColorsTo[Col, Row] := ALCDGrid.ColorsTo[Col, Row - 1];
        ALCDGrid.Cells[Col, Row]:=ALCDGrid.Cells[Col, Row - 1];
      end;
      ALCDGrid.Colors[Col, ALCDGrid.Selection.Top] := CTemp1;
      ALCDGrid.ColorsTo[Col, ALCDGrid.Selection.Top] := CTemp2;
      ALCDGrid.Cells[Col, ALCDGrid.Selection.Top] := STemp;
    end;
  finally
    ALCDGrid.EndUpdate;
  end;
end;

procedure TLCDProcs.RotateLCDPageCW(ALCDGrid: TAdvStringGrid);
var
  TempGrid: TAdvStringGrid;
  TempParent: TForm;
  Row, Col: Integer;
begin
  TempGrid := TAdvStringGrid.Create(nil);
  TempParent := TForm.Create(nil);
  TempGrid.Visible := False;
  TempGrid.Parent := TempParent;
  TempGrid.ColCount := ALCDGrid.RowCount - 1;
  TempGrid.RowCount := ALCDGrid.ColCount + 1;
  for Row := 0 to ALCDGrid.RowCount - 2 do
    for Col := 0 to ALCDGrid.ColCount - 1 do
    begin
      TempGrid.Colors[TempGrid.ColCount - 1 - Row, Col] := ALCDGrid.Colors[Col, Row];
      TempGrid.ColorsTo[TempGrid.ColCount - 1 - Row, Col] := ALCDGrid.ColorsTo[Col, Row];
    end;
  try
    ALCDGrid.BeginUpdate;
    ALCDGrid.RowCount := TempGrid.RowCount;
    ALCDGrid.ColCount := TempGrid.ColCount;
    for Row := 0 to TempGrid.RowCount - 2 do
      for Col := 0 to TempGrid.ColCount - 1 do
      begin
        ALCDGrid.Colors[Col, Row] := TempGrid.Colors[Col, Row];
        ALCDGrid.ColorsTo[Col, Row] := TempGrid.ColorsTo[Col, Row];
      end;
  finally
    ALCDGrid.EndUpdate;
    ALCDGrid.DefaultRowHeight := ALCDGrid.DefaultRowHeight;
    ALCDGrid.RowHeights[ALCDGrid.RowCount - 1] := 0;
    TempGrid.Free;
    TempParent.Free;
  end;
end;

procedure TLCDProcs.RotateLCDPageCCW(ALCDGrid: TAdvStringGrid);
var
  TempGrid: TAdvStringGrid;
  TempParent: TForm;
  Row, Col: Integer;
begin
  TempGrid := TAdvStringGrid.Create(nil);
  TempParent := TForm.Create(nil);
  TempGrid.Visible := False;
  TempGrid.Parent := TempParent;
  TempGrid.ColCount := ALCDGrid.RowCount - 1;
  TempGrid.RowCount := ALCDGrid.ColCount + 1;
  for Row := 0 to ALCDGrid.RowCount - 2 do
    for Col := 0 to ALCDGrid.ColCount - 1 do
    begin
      TempGrid.Colors[Row, TempGrid.RowCount - 2 - Col] := ALCDGrid.Colors[Col, Row];
      TempGrid.ColorsTo[Row, TempGrid.RowCount - 2 - Col] := ALCDGrid.ColorsTo[Col, Row];
    end;
  try
    ALCDGrid.BeginUpdate;
    ALCDGrid.RowCount := TempGrid.RowCount;
    ALCDGrid.ColCount := TempGrid.ColCount;
    for Row := 0 to TempGrid.RowCount - 2 do
      for Col := 0 to TempGrid.ColCount - 1 do
      begin
        ALCDGrid.Colors[Col, Row] := TempGrid.Colors[Col, Row];
        ALCDGrid.ColorsTo[Col, Row] := TempGrid.ColorsTo[Col, Row];
      end;
  finally
    ALCDGrid.EndUpdate;
    ALCDGrid.DefaultRowHeight := ALCDGrid.DefaultRowHeight;
    ALCDGrid.RowHeights[ALCDGrid.RowCount - 1] := 0;
    TempGrid.Free;
    TempParent.Free;
  end;
end;

procedure TLCDProcs.ShiftAtCursorLeft(ALCDGrid: TAdvStringGrid;
  ClearedColor: TColor);
var
  Row,Col:Integer;
  CursorCol:Integer;
begin
  CursorCol := ALCDGrid.Selection.Left;
  if CursorCol = 0 then
    Exit;

  try
    ALCDGrid.BeginUpdate;

    for Col := 0 to CursorCol - 1 do
      for Row := 0 to ALCDGrid.RowCount - 1 do
      begin
        ALCDGrid.Colors[Col, Row] := ALCDGrid.Colors[Col + 1, Row];
        ALCDGrid.ColorsTo[Col, Row] := ALCDGrid.ColorsTo[Col + 1, Row];
      end;
    for Row := 0 to ALCDGrid.RowCount - 1 do
    begin
      ALCDGrid.Colors[CursorCol, Row] := ClearedColor;
      ALCDGrid.ColorsTo[CursorCol, Row] := ClearedColor;
    end;
  finally
    ALCDGrid.EndUpdate;
  end;
end;

procedure TLCDProcs.ShiftAtCursorRight(ALCDGrid: TAdvStringGrid;
  ClearedColor: TColor);
var
  Row, Col: Integer;
  CursorCol: Integer;
begin
  CursorCol := ALCDGrid.Selection.Left;
  if CursorCol = (ALCDGrid.ColCount - 1) then
    Exit;

  try
    ALCDGrid.BeginUpdate;

    for Col := ALCDGrid.ColCount - 1 downto CursorCol + 1 do
      for Row := 0 to ALCDGrid.RowCount - 1 do
      begin
        ALCDGrid.Colors[Col, Row] := ALCDGrid.Colors[Col - 1, Row];
        ALCDGrid.ColorsTo[Col, Row] := ALCDGrid.ColorsTo[Col - 1, Row];
      end;
    for Row := 0 to ALCDGrid.RowCount - 1 do
    begin
      ALCDGrid.Colors[CursorCol, Row] := ClearedColor;
      ALCDGrid.ColorsTo[CursorCol, Row] := ClearedColor;
    end;
  finally
    ALCDGrid.EndUpdate;
  end;

end;

procedure TLCDProcs.RotateAllLCD(ALCDGrid: TAdvStringGrid;
  Direction: TCommonDirection);
var
  OldSelection: TGridRect;
begin
  OldSelection := ALCDGrid.Selection;
  ALCDGrid.SelectRows(0, ALCDGrid.RowCount - 1);
  case Direction of
    cdToLeft: RotateSelectionLeft(ALCDGrid);  //Left
    cdToRight: RotateSelectionRight(ALCDGrid);  //Right
    cdToTop: RotateSelectionUp(ALCDGrid);  //Up
    cdToBottom: RotateSelectionDown(ALCDGrid);  //Down
  end;
  ALCDGrid.Selection := OldSelection;
end;

procedure TLCDProcs.ClearLCD(ALCDGrid: TAdvStringGrid; ClearedColor: TColor);
var
  Row, Col: Integer;
begin
  try
    ALCDGrid.BeginUpdate;

    for Row := 0 to ALCDGrid.RowCount - 2 do
      for Col := 0 to ALCDGrid.ColCount - 1 do
      begin
        ALCDGrid.Colors[Col, Row] := ClearedColor;
        ALCDGrid.ColorsTo[Col, Row] := ClearedColor;
      end;
  finally
    ALCDGrid.EndUpdate;
  end;
end;

procedure TLCDProcs.ShiftLCDValuesRight(ALCDGrid: TStringGrid;
  ShiftCol, ShiftCount: Integer);
var
  Row, Col: Integer;
begin
  if ShiftCount >=  ALCDGrid.ColCount then
    Exit;
  for Col := ALCDGrid.ColCount - 1 downto ShiftCol + 1 do
    for Row := 0 to ALCDGrid.RowCount - 1 do
    begin
      if ((Col - ShiftCount) < 0) or ((Col - ShiftCount) < ShiftCol) then
        Exit;
      ALCDGrid.Cells[Col, Row] := ALCDGrid.Cells[Col - ShiftCount, Row];
      ALCDGrid.Cells[Col - ShiftCount, Row] := '';
    end;
end;

function TLCDProcs.CalculateLCDGradientColor(LCDFilledColor,
  LCDClearedColor: TColor): TColor;
const
  Transparency = 60;  //Percent closer to LCDClearedColor
begin
  Result := Procs.TransparentColor(LCDFilledColor, LCDClearedColor, Transparency);
end;

procedure TLCDProcs.SetCellColor(ALCDGrid: TAdvStringGrid;
  ACol, ARow: Integer; Filled: Boolean;
  LCDFilledColor, LCDClearedColor: TColor; LCDUseSolidColors: Boolean);
var
  FilledCTValue: TColor;
begin
  if LCDUseSolidColors then
    FilledCTValue := LCDFilledColor
  else
    FilledCTValue := LCDProcs.CalculateLCDGradientColor(LCDFilledColor, LCDClearedColor);

  if ( Filled and (ALCDGrid.Colors[ACol, ARow] = LCDFilledColor) and
       (ALCDGrid.ColorsTo[ACol, ARow] = FilledCTValue) ) or
     ( not Filled and (ALCDGrid.Colors[ACol, ARow] = LCDClearedColor) and
       (ALCDGrid.ColorsTo[ACol, ARow] = LCDClearedColor) ) then
     //***It is not necessary to compare ColorsTo values
    Exit;  //No change will occur, so exit without settings the cell color to prevent repainting the cell

  if Filled then
  begin
    ALCDGrid.Colors[ACol, ARow] := LCDFilledColor;
    ALCDGrid.ColorsTo[ACol, ARow] := FilledCTValue;
  end
  else
  begin
    ALCDGrid.Colors[ACol, ARow] := LCDClearedColor;
    ALCDGrid.ColorsTo[ACol, ARow] := LCDClearedColor;
  end;
end;

procedure TLCDProcs.CheckLCDScrollBars(ALCDGrid: TAdvStringGrid);
var
  LeftCol, RightCol: Integer;
  TopRow, BottomRow: Integer;
  Horizontal, Vertical: Boolean;
begin
  //This procedure does not take fixed cols and rows into account
  LeftCol := ALCDGrid.LeftCol;
  TopRow := ALCDGrid.TopRow;
  RightCol := LeftCol + ALCDGrid.VisibleColCount - 1;
  BottomRow := TopRow + ALCDGrid.VisibleRowCount - 1;

  Horizontal := (LeftCol > 0) or (RightCol < (ALCDGrid.ColCount - 1) );
  Vertical := (TopRow > 0) or (BottomRow < (ALCDGrid.RowCount - 1 - 1{because of TAdvStringGrid}) );

  if not( Horizontal or Vertical) then
    ALCDGrid.ScrollBars := ssNone
  else if Horizontal and Vertical then
    ALCDGrid.ScrollBars := ssBoth
  else if Horizontal and not Vertical then
    ALCDGrid.ScrollBars := ssHorizontal
  else
    ALCDGrid.ScrollBars := ssVertical;
end;

function TLCDProcs.ReadUserMappedChars(DesGrid: TAdvStringGrid): Boolean;
  //Value pair format: CHAR_XXXX = MAP_XXXX
  function IsMapEntry(const ValueName: String): Boolean;
  begin
    Result := (LowerCase(LeftStr(ValueName, 4)) = 'map_') and
              Procs.IsValidInt(RightStr(ValueName, Length(ValueName) - 4));
  end;

  function IsCharEntry(const ValueName: String): Boolean;
  begin
    Result := (LowerCase(LeftStr(ValueName, 5)) = 'char_') and
              Procs.IsValidInt(RightStr(ValueName, Length(ValueName) - 5));
  end;

  function GetPairValueName(const AValueName: String): String;
  begin
    if IsMapEntry(AValueName) then
      Result := 'CHAR_' + RightStr(AValueName, Length(AValueName) - 4)
    else
      Result := 'MAP_' + RightStr(AValueName, Length(AValueName) - 5);
  end;

  var
    Reg: TRegistry;
    CList: TStringList;
    CharName, FileName: String;
    NextRow: Integer;
  begin
    Result := False;
    //Open with write permission, because if we can't get this access level, we
    // won't be able to write the values back to the registry and all the
    // editions the user makes will be lost.
    Reg := TRegistry.Create;
    CList := TStringList.Create;
    DesGrid.RowCount := 2;
    NextRow := 1;

    try
      Reg.RootKey := HKEY_CURRENT_USER;
      if Reg.OpenKey(REG_USER_SETTINGS_PATH + '\User-Mapped Chars', True) then
      begin
        Reg.GetValueNames(CList);

        while CList.Count > 0 do
        begin
          if (Reg.GetDataType(CList.Strings[0]) <> rdString) or
             not (IsMapEntry(CList.Strings[0]) or IsCharEntry(CList.Strings[0]) ) then
          begin
            CList.Delete(0);
            Continue;
          end;
          if CList.IndexOf(GetPairValueName(CList.Strings[0])) < 0 then
          begin
            CList.Delete(0);
            Continue;
          end;
          if Reg.GetDataType(GetPairValueName(CList.Strings[0])) <> rdString then
          begin
            CList.Delete(CList.IndexOf(GetPairValueName(CList.Strings[0])));
            CList.Delete(0);
            Continue;
          end;

          if IsCharEntry(CList.Strings[0]) then
          begin
            CharName := Reg.ReadString(CList.Strings[0]);
            FileName := Reg.ReadString(GetPairValueName(CList.Strings[0]));
          end
          else
          begin
            FileName := Reg.ReadString(CList.Strings[0]);
            CharName := Reg.ReadString(GetPairValueName(CList.Strings[0]));
          end;
          CList.Delete(CList.IndexOf(GetPairValueName(CList.Strings[0])));
          CList.Delete(0);

          DesGrid.Cells[0, NextRow] := CharName;
          DesGrid.Cells[1, NextRow] := FileName;
          NextRow := NextRow + 1;
          DesGrid.RowCount := DesGrid.RowCount + 1;
        end;

        Reg.CloseKey;
      end;

      CList.Free;
      Reg.Free;
      Result := True;
    except
      CList.Free;
      Reg.Free;
    end;
    DesGrid.DefaultRowHeight := DesGrid.DefaultRowHeight;
    DesGrid.RowHeights[DesGrid.RowCount - 1] := 0;  //Because of TAdvStringGrid 
end;

function TLCDProcs.WriteUserMappedChars(SrcGrid: TAdvStringGrid): Boolean;
  var
    Row: Integer;
    Reg: TRegistry;
    CList: TStringList;
    i: Integer;
  begin
    Result := False;

    Reg := TRegistry.Create;
    CList := TStringList.Create;
    try
      if Reg.OpenKey(REG_USER_SETTINGS_PATH + '\User-Mapped Chars', True) then
      begin
        Reg.GetValueNames(CList);
        for i := 0 to CList.Count - 1 do
          Reg.DeleteValue(CList.Strings[i]);

        for Row := 1 to SrcGrid.RowCount - 2 do  //Minus 2 because of TAdvStringGrid
        begin
          Reg.WriteString('CHAR_' + IntToStr(Row - 1 {Starting from 0}), SrcGrid.Cells[0, Row]);
          Reg.WriteString('MAP_' + IntToStr(Row - 1 {Starting from 0}), SrcGrid.Cells[1, Row]);
        end;

        Reg.CloseKey;
        Result := True;
      end;

      CList.Free;
      Reg.Free;
    except
      CList.Free;
      Reg.Free;
    end;
end;

  { LCD clipboard routines }

function TLCDProcs.ClipboardContainsLCD: Boolean;
const
  COLUMN_SEPARATORS = [' ', #09 {TAB}];

type
  CharSet = Set of Char;

  function StrOnlyContains(const Str: String; CharList: CharSet): Boolean;
  var
    i: Integer;
  begin
    Result := False;
    for i:=1 to Length(Str) do
      if not(Str[i] in CharList) then
        Exit;
    Result := True;
  end;

var
  LCDBinText: String;
begin
  Result := False;
  if Clipboard.HasFormat(CF_TEXT) then
  begin
    LCDBinText := Clipboard.AsText;
    Result := StrOnlyContains(LCDBinText, COLUMN_SEPARATORS + ['0', '1', #$0D {CR}, #$0A {LF}]);
  end;
end;

procedure TLCDProcs.CopyLCDToClipboard(ALCD: TAdvStringGrid;
  LCDFilledColor: TColor; OnlySelection: Boolean);

  function GetBinDigit(CellColor: TColor): String;
  begin
    if CellColor = LCDFilledColor then
      Result := '1'
    else
      Result := '0';
  end;

const
  COLUMN_SEP = #09;  {TAB}
  ROW_SEP    = #$0D#$0A;  {CR/LF}
var
  LCDBinText: String;
  Row, Col: Integer;
  FromRow, ToRow, FromCol, ToCol: Integer;
begin
  if OnlySelection then
  begin
    FromRow := ALCD.Selection.Top;
    ToRow := ALCD.Selection.Bottom;
    FromCol := ALCD.Selection.Left;
    ToCol := ALCD.Selection.Right;
  end
  else
  begin
    FromRow := 0;
    ToRow := ALCD.RowCount - 2;
    FromCol := 0;
    ToCol := ALCD.ColCount - 1;
  end;

  LCDBinText := '';
  for Row := FromRow to ToRow do
  begin
    LCDBinText := LCDBinText + GetBinDigit(ALCD.Colors[FromCol, Row]);
    for Col := FromCol + 1 to ToCol do
    begin
      LCDBinText := LCDBinText + COLUMN_SEP + GetBinDigit(ALCD.Colors[Col, Row]);
    end;
    //if Row < ToRow then  --> Always add the row separator after the last row
    LCDBinText := LCDBinText + ROW_SEP
  end;

  Clipboard.AsText := LCDBinText;
end;

function TLCDProcs.PasteLCDFromClipboard(ALCD: TAdvStringGrid): Boolean;
const
  COLUMN_SEPARATORS = [' ', #09 {TAB}];
  ROW_SEPARATOR = #$0D#$0A;  {CR/LF}

  procedure ExtractLines(const Text: String; LineSep: String; LineList: TStrings);
  var
    TextTemp: String;
    OldPos, NextPos: Integer;
  begin
    LineList.Clear;
    TextTemp := Text;
    OldPos := 1;
    while Length(TextTemp) > 0 do
    begin
      NextPos := Pos(LineSep, TextTemp);
      if NextPos <= 0 then
        NextPos := Length(TextTemp) + 1;
      LineList.Append(Copy(TextTemp, OldPos, NextPos - 1));
      TextTemp := Copy(TextTemp, NextPos + 2, Length(TextTemp) - NextPos - 1);
    end;
  end;

  procedure NormalizeLines(LineList: TStrings);
    function CleanSpaces(const Text: String): String;
    var
      i: Integer;
    begin
      Result := '';
      for i:=1 to Length(Text) do
        if not(Text[i] in COLUMN_SEPARATORS) then
          Result := Result + Text[i];
    end;

  var
    i: Integer;
    MaxLineLen: Integer;
  begin
    MaxLineLen := 0;
    for i:=0 to LineList.Count - 1 do
    begin
      LineList.Strings[i] := CleanSpaces(LineList.Strings[i]);
      if Length(LineList.Strings[i]) > MaxLineLen then
        MaxLineLen := Length(LineList.Strings[i]);
    end;

    for i:=0 to LineList.Count - 1 do
      if Length(LineList.Strings[i]) < MaxLineLen then
        LineList.Strings[i] := LineList.Strings[i] + StringOfChar('0', MaxLineLen - Length(LineList.Strings[i]));
  end;

  procedure PutLinesOnLCD(ALCD: TAdvStringGrid; LineList: TStrings);
  var
    Row, Col: Integer;
  begin
    ALCD.RowCount := LineList.Count + 1;  //Plus 1 only for compatibility with TAdvStringGrid
    ALCD.ColCount := Length(LineList.Strings[0]);  //All the strings are of the same length

    for Row := 0 to ALCD.RowCount - 2 do
      for Col:=0 to ALCD.ColCount - 1 do
        ALCD.Cells[Col, Row] := LineList.Strings[Row][Col + 1];
  end;

var
  LCDLines: TStringList;
  LCDBinText: String;
begin
  Result := False;
  if ClipboardContainsLCD then
  begin
    LCDBinText := Clipboard.AsText;
    LCDLines := TStringList.Create;
    try
      ExtractLines(LCDBinText, ROW_SEPARATOR, LCDLines);
      NormalizeLines(LCDLines);
      PutLinesOnLCD(ALCD, LCDLines);
    finally
      LCDLines.Free;
    end;
    Result := True;
  end;
end;

  { unit initialization and finalization }

function TLCDProcs.IsLCDCompletelyCleared(ALCDGrid: TAdvStringGrid;
  ALCDClearedColor: TColor): Boolean;
var
  Row, Col: Integer;
begin
  Result := False;
  for Col := 0 to ALCDGrid.ColCount - 1 do  //Scan column by column
    for Row := 0 to ALCDGrid.RowCount - 2 do  //Minus 2 because of TAdvStringGrid
      //***It is not necessary to compare ColorsTo values
      if ALCDGrid.Colors[Col, Row] <> ALCDClearedColor then
        Exit;
  Result := True;
end;

initialization
  LCDProcs := TLCDProcs.Create;

finalization
  LCDProcs.Free;

end.
