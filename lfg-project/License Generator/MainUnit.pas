unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, cls_id, DCPcast128, DCPsha1,
  Clipbrd, ExtCtrls;

const
  GLOBAL_ENCRYPTION_KEY = 'S0D9y$2!6oOQH';
  HexDigits = ['0', '1', '2', '3', '4', '5', '6', '7', '8',
               '9', 'A', 'B', 'C', 'D', 'E', 'F'];

  //Encryption keys
  ENCRYPTION_KEYS : array[0..15] of String[13] = (
    'hZYjKlEt78vBM',
    's2fDs3`ogTyCx',
    'cXsqW-L5dJhwi',
    '2deTc~cFrQznv',
    'uJiOdffefgtHy',
    'xSaz5Reg8Gflt',
    'bKvlscYvIo3Da',
    'w4eRgHuIcV!zX',
    '3Er@vKhlsadFr',
    'lPoJkiuTyhgFg',
    'dErWvbGf6bs4Z',
    'loPreTy5md1wE',
    'GfSLplD5sw7hp',
    'dkio^lkvbqa2o',
    'mjNgVbmbafi7d',
    'xDn0Ace%1gv7d'
  );

type
  TMainForm = class(TForm)
    MainPanel: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    CUIDWord4: TEdit;
    CUIDWord3: TEdit;
    CUIDWord2: TEdit;
    CUIDWord1: TEdit;
    ACWord1: TEdit;
    ACWord2: TEdit;
    ACWord3: TEdit;
    ACWord4: TEdit;
    PSWPanel: TPanel;
    PSWLabel: TLabel;
    PSWEdit: TEdit;
    GenerateCUIDBtn: TBitBtn;
    GenerateACBtn: TBitBtn;
    CopyACToClipboardBtn: TBitBtn;
    procedure GenerateCUIDBtnClick(Sender: TObject);
    procedure GenerateACBtnClick(Sender: TObject);
    procedure CopyACToClipboardBtnClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CUIDWord1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CUIDWord1KeyPress(Sender: TObject; var Key: Char);
    procedure PSWEditKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function HexToInt(HexDigit: Char): Integer;
    procedure GenerateCUID(var CUIDWord1, CUIDWord2, CUIDWord3, CUIDWord4: String);
    procedure GenerateActivationCode(const CUIDWord1, CUIDWord2, CUIDWord3, CUIDWord4: String;
      var ACWord1, ACWord2, ACWord3, ACWord4: String);

    function CheckPassword(const PSW: String): Boolean;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses StrUtils;

{$R *.dfm}

procedure TMainForm.GenerateCUID(var CUIDWord1, CUIDWord2, CUIDWord3, CUIDWord4: String);
var
  MyCPU: TCPUID;
  S, S2: String;
  i: Integer;
  Cipher: TDCP_cast128;
begin
  MyCPU := TCPUID.Create;
  if MyCPU.IDAvailable then
  begin
    S := IntToHex(MyCPU.ID1, 8) + IntToHex(MyCPU.ID2, 8) +
         IntToHex(MyCPU.ID3, 8) + IntToHex(MyCPU.ID4, 8);

    S2 := '';
    for i:=Length(S) downto 1 do
      if S[i] <> '0' then
        S2 := S2 + Copy(S, i, 1);
    if Length(S2) >= 6 then
      S2 := Copy(S2, 1, 6)
    else
      S2 := S2 + StringOfChar('0', 6 - Length(S2));

    if S2 = StringOfChar('0', Length(S2)) then
    begin
      Application.MessageBox('Unable to create a valis CUID for this machine.', 'Critical Error');
      Exit;
    end;

    Cipher := TDCP_cast128.Create(Self);
    Cipher.InitStr(GLOBAL_ENCRYPTION_KEY, TDCP_sha1);
    S2 := Cipher.EncryptString(S2);
    Cipher.Burn;
    Cipher.Free;

    S := '';
    for i := 1 to Length(S2) do
      S := S + IntToHex(Ord(S2[i]), 2);

    CUIDWord1 := Copy(S, 1, 4);
    CUIDWord2 := Copy(S, 5, 4);
    CUIDWord3 := Copy(S, 9, 4);
    CUIDWord4 := Copy(S, 13, 4);
  end;
  MyCPU.Free;
end;

procedure TMainForm.GenerateCUIDBtnClick(Sender: TObject);
var
  Word1, Word2, Word3, Word4: String;
begin
  GenerateCUID(Word1, Word2, Word3, Word4);
  CUIDWord1.Text := Word1;
  CUIDWord2.Text := Word2;
  CUIDWord3.Text := Word3;
  CUIDWord4.Text := Word4;
end;

procedure TMainForm.GenerateACBtnClick(Sender: TObject);
var
  Word1, Word2, Word3, Word4: String;
begin
  if (Length(CUIDWord1.Text) <> 4) or
     (Length(CUIDWord2.Text) <> 4) or
     (Length(CUIDWord3.Text) <> 4) or
     (Length(CUIDWord4.Text) <> 4) then
    Exit;

  GenerateActivationCode(UpperCase(CUIDWord1.Text), UpperCase(CUIDWord2.Text),
                         UpperCase(CUIDWord3.Text), UpperCase(CUIDWord4.Text),
                         Word1, Word2, Word3, Word4);

  ACWord1.Text := Word1;
  ACWord2.Text := Word2;
  ACWord3.Text := Word3;
  ACWord4.Text := Word4;
end;

{$WARNINGS OFF}
function TMainForm.HexToInt(HexDigit: Char): Integer;
begin
  case HexDigit of
    '0': Result := 0;
    '1': Result := 1;
    '2': Result := 2;
    '3': Result := 3;
    '4': Result := 4;
    '5': Result := 5;
    '6': Result := 6;
    '7': Result := 7;
    '8': Result := 8;
    '9': Result := 9;
    'A': Result := 10;
    'B': Result := 11;
    'C': Result := 12;
    'D': Result := 13;
    'E': Result := 14;
    'F': Result := 15;
  end;
end;
{$WARNINGS ON}

procedure TMainForm.GenerateActivationCode(const CUIDWord1, CUIDWord2,
  CUIDWord3, CUIDWord4: String; var ACWord1, ACWord2, ACWord3,
  ACWord4: String);

  function HexStrToStr(const HexStr: String): String;
  var
    i: Integer;
  begin
    Result := StringOfChar(' ', Trunc(Length(HexStr) / 2));
    for i := 1 to Length(Result) do
      Result[i] := Chr(HexToInt(HexStr[i * 2 - 1]) * 16 + HexToInt(HexStr[i * 2]));
  end;
var
  CUID, ActivationCode, S: String;
  Cipher: TDCP_cast128;
  EncryptionKey: String;
  i: Integer;
begin
  CUID := HexStrToStr(CUIDWord1) +
          HexStrToStr(CUIDWord2) +
          HexStrToStr(CUIDWord3) +
          HexStrToStr(CUIDWord4);

  if not(CUIDWord4[4] in Hexdigits) then
  begin
    MessageDlg('Invalid CUID.', mtError, [mbOK], 0);
    Exit;
  end;
  EncryptionKey := ENCRYPTION_KEYS[HexToInt(CUIDWord4[4])];

  Cipher := TDCP_cast128.Create(Self);
  Cipher.InitStr(GLOBAL_ENCRYPTION_KEY, TDCP_sha1);
  CUID := Cipher.DecryptString(CUID);
  Cipher.Burn;

  Cipher.InitStr(EncryptionKey, TDCP_sha1);
  S := Cipher.EncryptString(CUID);
  Cipher.Burn;
  Cipher.Free;

  ActivationCode := '';
  for i := 1 to Length(S) do
    ActivationCode := ActivationCode + IntToHex(Ord(S[i]), 2);

  ACWord1 := Copy(ActivationCode, 1, 4);
  ACWord2 := Copy(ActivationCode, 5, 4);
  ACWord3 := Copy(ActivationCode, 9, 4);
  ACWord4 := Copy(ActivationCode, 13, 4);
end;

procedure TMainForm.CopyACToClipboardBtnClick(Sender: TObject);
begin
  Clipboard.AsText := ACWord1.Text + '-' +
                      ACWord2.Text + '-' +
                      ACWord3.Text + '-' +
                      ACWord4.Text;
end;

procedure TMainForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (ssShift in Shift) and
     (Key = VK_F1) then
    GenerateCUIDBtn.Visible := not GenerateCUIDBtn.Visible;
end;

procedure TMainForm.CUIDWord1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Sender as TEdit).SelStart = 4 then
    SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
end;

procedure TMainForm.CUIDWord1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Ord(Key) >= 97) and
     (Ord(Key) <= 122) then
    Key := Chr(Ord(Key) - 32);
end;

procedure TMainForm.PSWEditKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Application.Terminate;
  end
  else if Key = Chr(VK_ESCAPE) then
  begin
    Key := #0;
    if CheckPassword(PSWEdit.Text) then
    begin
      Self.Visible := False;
      PSWEdit.Text := '6876 87v87b68 87678';
      PSWEdit.Text := '';
      PSWLabel.Free;
      PSWEdit.Free;
      PSWPanel.Hide;
      MainPanel.Show;
      Self.Visible := True;
    end;
  end;
end;

function TMainForm.CheckPassword(const PSW: String): Boolean;
var
  tmp: String;
begin
  //Password: NOORSUN7425583
  Result := False;
  if (Length(PSW) <> 14) or
     (UpperCase(PSW) <> PSW) then
    Exit;
  tmp := LowerCase(ReverseString(PSW));
  if Copy(tmp, 1, 3) <> '385' then
    Exit;
  if Copy(tmp, 3, 3) <> '552' then
    Exit;
  if Copy(tmp, 5, 2) <> '24' then
    Exit;
  if Copy(tmp, 7, 3) <> '7nu' then
    Exit;
  if Copy(tmp, 9, 3) <> 'usr' then
    Exit;
  if tmp[12] <> 'o' then
    Exit;
  if tmp[13] <> 'o' then
    Exit;
  Result := tmp[Length(tmp)] = 'n';
end;

end.
