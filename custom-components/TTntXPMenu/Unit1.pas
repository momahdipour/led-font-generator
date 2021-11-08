unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TntXPMenu, Menus, TntMenus, StdCtrls;

type
  TForm1 = class(TForm)
    TntMainMenu1: TTntMainMenu;
    N1: TTntMenuItem;
    N2: TTntMenuItem;
    N3: TTntMenuItem;
    N4: TTntMenuItem;
    N5: TTntMenuItem;
    N6: TTntMenuItem;
    N7: TTntMenuItem;
    N8: TTntMenuItem;
    N9: TTntMenuItem;
    N10: TTntMenuItem;
    N11: TTntMenuItem;
    N12: TTntMenuItem;
    N13: TTntMenuItem;
    N14: TTntMenuItem;
    N15: TTntMenuItem;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    {Private declarations }
    m: TTntXPMenu;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  m := TTntXPMenu.Create(Self);
  m.Active := True;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if TntMainMenu1 is TMainMenu then
    ShowMessage('sss');
end;

end.
