program PolyEx;

uses
  Forms,
  Polygons_Ex in 'Polygons_Ex.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
