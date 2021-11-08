unit MMAdvancedGrid;

interface

uses
  SysUtils, Classes, Controls, Grids, AdvGrid;

type
  TMMAdvancedGrid = class(TAdvStringGrid)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('[LCD Designer]', [TMMAdvancedGrid]);
end;

end.
