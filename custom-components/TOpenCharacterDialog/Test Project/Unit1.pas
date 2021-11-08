unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OpenCharacterDialog, StdCtrls, XPMan, ComCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    XPManifest1: TXPManifest;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    oc: TOpenCharacterDialog;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  oc := TOpenCharacterDialog.Create(nil);
  oc.CharacterFileExtension := '.chr';
  oc.LibraryPath := 'G:\AMohammad\Delphi\LCD Designer\Main\LCD Designer\LCD Designer-MAIN [CUSTOM]\Character Library';
  oc.LCDFilledColor := clRed;
  oc.LCDClearedColor := clYellow;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if oc.Execute then
    Label1.Caption := oc.FileName;
end;

end.
 