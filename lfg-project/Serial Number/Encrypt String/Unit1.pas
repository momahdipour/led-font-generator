unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DCPrc4, DCPcrypt2, DCPsha1, DCPblockciphers, DCPrc6,
  DCPcast256;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    btnEncrypt: TButton;
    btnDecrypt: TButton;
    DCP_rc61: TDCP_rc6;
    DCP_cast2561: TDCP_cast256;
    procedure btnEncryptClick(Sender: TObject);
    procedure btnDecryptClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnEncryptClick(Sender: TObject);
  var
    i: integer;
    Cipher: TDCP_cast256;
    KeyStr: string;
  begin
    KeyStr:= '';
    if InputQuery('Passphrase','Enter passphrase',KeyStr) then  // get the passphrase
    begin
      Cipher:= TDCP_cast256.Create(Self);
      Cipher.InitStr(KeyStr,TDCP_sha1);         // initialize the cipher with a hash of the passphrase
      for i:= 0 to Memo1.Lines.Count-1 do       // encrypt the contents of the memo
        Memo1.Lines[i]:= Cipher.EncryptString(Memo1.Lines[i]);
      Cipher.Burn;
      Cipher.Free;
    end;
  end;

  procedure TForm1.btnDecryptClick(Sender: TObject);
  var
    i: integer;
    Cipher: TDCP_cast256;
    KeyStr: string;
  begin
    KeyStr:= '';
    if InputQuery('Passphrase','Enter passphrase',KeyStr) then  // get the passphrase
    begin
      Cipher:= TDCP_cast256.Create(Self);
      Cipher.InitStr(KeyStr,TDCP_sha1);         // initialize the cipher with a hash of the passphrase
      for i:= 0 to Memo1.Lines.Count-1 do       // decrypt the contents of the memo
        Memo1.Lines[i]:= Cipher.DecryptString(Memo1.Lines[i]);
      Cipher.Burn;
      Cipher.Free;
    end;
  end;

end.
