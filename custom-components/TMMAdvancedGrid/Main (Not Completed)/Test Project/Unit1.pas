unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MMAdvancedGrid, Grids, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    StringGrid1: TStringGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    MMGrid: TMMAdvancedGrid;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  MMGrid := TMMAdvancedGrid.Create(Self);
  MMGrid.Parent := Self;
  MMGrid.Align := alClient;
  MMGrid.DefaultRowHeight := 10;
  MMGrid.DefaultColWidth := 10;
  MMGrid.RowCount := 50;
  MMGrid.ColCount := 50;
end;

end.
 