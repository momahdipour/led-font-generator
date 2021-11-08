unit MMAdvancedGrid;

interface

uses
  SysUtils, Classes, Controls, Grids;

type
  TMMAdvancedGrid = class(TStringGrid)
  private
    function GetColors(ACol, ARow: Integer): TColor;
    function GetColorsTo(ACol, ARow: Integer): TColor;
    procedure SetColors(ACol, ARow: Integer; const Value: TColor);
    procedure SetColorsTo(ACol, ARow: Integer; const Value: TColor);
    { Private declarations }
  protected
    { Protected declarations }
    procedure DrawCell(ACol, ARow: Longint; ARect: TRect;
      AState: TGridDrawState); override;
  public
    { Public declarations }
  published
    { Published declarations }
    property Colors[ACol, ARow: Integer]: TColor read GetColors write SetColors;
    property ColorsTo[ACol, ARow: Integer]: TColor read GetColorsTo write SetColorsTo;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('[LCD Designer]', [TMMAdvancedGrid]);
end;

{ TMMAdvancedGrid }

procedure TMMAdvancedGrid.DrawCell(ACol, ARow: Integer; ARect: TRect;
  AState: TGridDrawState);
begin
  inherited;

end;

function TMMAdvancedGrid.GetColors(ACol, ARow: Integer): TColor;
begin

end;

function TMMAdvancedGrid.GetColorsTo(ACol, ARow: Integer): TColor;
begin

end;

procedure TMMAdvancedGrid.SetColors(ACol, ARow: Integer;
  const Value: TColor);
begin

end;

procedure TMMAdvancedGrid.SetColorsTo(ACol, ARow: Integer;
  const Value: TColor);
begin

end;

end.
