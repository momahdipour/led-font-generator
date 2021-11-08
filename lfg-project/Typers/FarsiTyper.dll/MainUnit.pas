unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TntStdCtrls;

type
  TForm1 = class(TForm)
    TntEdit1: TTntEdit;
    TntEdit2: TTntEdit;
    TypeItBtn: TButton;
    Edit1: TEdit;
    procedure TypeItBtnClick(Sender: TObject);
    procedure TntEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

  function GetVersion: ShortString; external 'FarsiTyper.dll';
  function TypeChar(LeftChar, MainChar, RightChar: Widechar;
    var ProperChar: Widechar; var RightToLef: Boolean): Boolean; external 'FarsiTyper.dll';

implementation

{$R *.dfm}

procedure TForm1.TypeItBtnClick(Sender: TObject);
var
  s: WideString;
  c: WideChar;
  b: Boolean;
begin
  s := TntEdit1.Text;
  if TypeChar(s[1], s[2], s[3], c, b) then
  begin
    TntEdit2.Text := c;
    Edit1.Text := IntToHex(Word(c), 4);
    ShowMessage('OK');
  end;
end;

procedure TForm1.TntEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = Chr(13) then
    TypeItBtn.Click;
end;

end.
