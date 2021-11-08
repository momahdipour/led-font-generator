unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Hurricane;

type
  TForm1 = class(TForm)
    EncryptionKeyEdit: TEdit;
    Label1: TLabel;
    TextToEncryptEdit: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    EncryptedTextEdit: TEdit;
    Panel1: TPanel;
    DecryptionKeyEdit: TEdit;
    Label4: TLabel;
    TextToDecryptEdit: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    DecryptedTextEdit: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    EncryptionResult: String;
    procedure StrToIdBytes(const Str: String; var IdBytes: TIdBytes);
    function IdBytesToStr(const IdBytes: TIdBytes): String;
  public
    { Public declarations }
    h: THBox;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  K: TIdBytes;
  Input: TIdBytes;
  Output: TIdBytes;
begin
  StrToIdBytes(EncryptionKeyEdit.Text, K);
  h.Init(False, False, K, 32);
  StrToIdBytes(TextToEncryptEdit.Text, Input);
  h.Encrypt(Input, Output);
  EncryptedTextEdit.Text := IdBytesToStr(Output);
  EncryptionResult := IdBytesToStr(Output);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  h := THBox.Create(nil);
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  h.Free;
end;

function TForm1.IdBytesToStr(const IdBytes: TIdBytes): String;
var
  i: Integer;
begin
  SetLength(Result, Length(IdBytes));
  for i:=1 to Length(Result) do
    Result[i] := Chr(IdBytes[i - 1]);
end;

procedure TForm1.StrToIdBytes(const Str: String; var IdBytes: TIdBytes);
var
  i: Integer;
begin
  SetLength(IdBytes, Length(Str));
  for i:=1 to Length(Str) do
    IdBytes[i - 1] := Ord(Str[i]);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  K, Input, Output: TIdBytes;
begin
  StrToIdBytes(DecryptionKeyEdit.Text, K);
  h.Init(False, False, K, 32);
//  StrToIdBytes(TextToDecryptEdit.Text, Input);
  StrToIdBytes(EncryptionResult, Input);
  h.Decrypt(Input, Output);
  DecryptedTextEdit.Text := IdBytesToStr(Output);
end;

end.
