unit WheelListBox;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, Windows, Messages;

type
  TWheelListBox = class(TListBox)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
    property OnMouseWheel;
    property OnMouseWheelDown;
    property OnMouseWheelUp;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('[LCD Designer]', [TWheelListBox]);
end;

end.
