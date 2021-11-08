unit License5;

interface

uses
  LCDConsts, BiDiSoundDialogs, Classes;

  function CheckLicenseStatus: Boolean;
  function RegisterSoftware(const ActivationCode: String): Boolean;
  procedure GenerateCUID(var CUIDWord1, CUIDWord2, CUIDWord3, CUIDWord4: String);

implementation

uses
  DCPcast128, DCPsha1, cls_id, SysUtils, Dialogs, Registry,
  Windows, MainUnit, StrUtils;

const
  LICENSE_REG_PATH = 'SOFTWARE\' + SOFTWARE_NAME + '\' + MAJOR_VERSION_NUMBER_STR +'.' + MINOR_VERSION_NUMBER_STR;
  GLOBAL_ENCRYPTION_KEY = 'S0D9y$2!6oOQH';
  REG_ENCODE_KEY = 'rD!40@We&s1cZ';

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

function HexToInt(HexDigit: Char): Integer;
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
    else
      Result := 0; 
  end;
end;

function RegEncode(const S: String): String;
var
  Cipher: TDCP_cast128;
begin
  Cipher := TDCP_cast128.Create(nil);
  Cipher.InitStr(REG_ENCODE_KEY, TDCP_sha1);
  Result := Cipher.EncryptString(ReverseString(S));
  Cipher.Burn;
  Cipher.Free;
  Result := ReverseString(Result);
end;

function RegDecode(const S: String): String;
var
  Cipher: TDCP_cast128;
begin
  Cipher := TDCP_cast128.Create(nil);
  Cipher.InitStr(REG_ENCODE_KEY, TDCP_sha1);
  Result := Cipher.DecryptString(ReverseString(S));
  Cipher.Burn;
  Cipher.Free;
  Result := ReverseString(Result);
end;

function GenerateMainCUID: String;
var
  MyCPU: TCPUID;
  S, S2: String;
  i: Integer;
begin
  Result := '';
  MyCPU := TCPUID.Create;
  if MyCPU.IDAvailable then
  begin
    S := IntToHex(MyCPU.ID1, 8) + IntToHex(MyCPU.ID2, 8) +
         IntToHex(MyCPU.ID3, 8) + IntToHex(MyCPU.ID4, 8);

    S2 := '';
    for i := Length(S) downto 1 do
      if S[i] <> '0' then
        S2 := S2 + Copy(S, i, 1);
    if Length(S2) >= 6 then
      S2 := Copy(S2, 1, 6)
    else
      S2 := S2 + StringOfChar('0', 6 - Length(S2));

    if S2 = StringOfChar('0', Length(S2)) then
    begin
      MessageDlgBiDiSoundTop('Unable to create a valid CUID for this machine.', mtError, [mbOK], 0, bdLeftToRight);
      Halt;
    end;

    Result := S2;
  end;
  MyCPU.Free;
end;

procedure GenerateCUID(var CUIDWord1, CUIDWord2, CUIDWord3, CUIDWord4: String);
var
  S, S2: String;
  i: Integer;
  Cipher: TDCP_cast128;
begin
  S2 := GenerateMainCUID;

  Cipher := TDCP_cast128.Create(nil);
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

function ValidateCUID(const CUIDWord1, CUIDWord2, CUIDWord3, CUIDWord4: String): Boolean;
var
  CW1, CW2, CW3, CW4: String;
begin
  Result := (Length(CUIDWord1) = 4) and
            (Length(CUIDWord2) = 4) and
            (Length(CUIDWord3) = 4) and
            (Length(CUIDWord4) = 4);
  if not Result then
    Exit;
  GenerateCUID(CW1, CW2, CW3, CW4);
  Result := (CUIDWord1 = CW1) and
            (CUIDWord2 = CW2) and
            (CUIDWord3 = CW3) and
            (CUIDWord4 = CW4);
end;

function ValidateActivationCode(const ACWord1, ACWord2, ACWord3, ACWord4: String): Boolean;

  function HexStrToStr(const HexStr: String): String;
  var
    i: Integer;
  begin
    Result := StringOfChar(' ', Trunc(Length(HexStr) / 2));
    for i := 1 to Length(Result) do
      Result[i] := Chr(HexToInt(HexStr[i * 2 - 1]) * 16 + HexToInt(HexStr[i * 2]));
  end;

var
  Cipher: TDCP_cast128;
  CUIDWord1, CUIDWord2, CUIDWord3, CUIDWord4: String;
  DecryptionKey: String;
  ActivationCode: String;
begin
  Result := False;

  if (Length(ACWord1) <> 4) or
     (Length(ACWord2) <> 4) or
     (Length(ACWord3) <> 4) or
     (Length(ACWord4) <> 4) then
    Exit;

  GenerateCUID(CUIDWord1, CUIDWord2, CUIDWord3, CUIDWord4);
  ActivationCode := HexStrToStr(ACWord1) +
                    HexStrToStr(ACWord2) +
                    HexStrToStr(ACWord3) +
                    HexStrToStr(ACWord4);

  DecryptionKey := ENCRYPTION_KEYS[HexToInt(CUIDWord4[4])];

  Cipher := TDCP_cast128.Create(nil);
  Cipher.InitStr(DecryptionKey, TDCP_sha1);
  ActivationCode := Cipher.DecryptString(ActivationCode);
  Cipher.Burn;
  Cipher.Free;

  Result := ActivationCode = GenerateMainCUID;
end;

function MultiplyTexts(const Text1, Text2: String): String;
var
  i: Integer;
  MinLen, MaxLen: Integer;
begin
  if Length(Text1) > Length(Text2) then
  begin
    MaxLen := Length(Text1);
    MinLen := Length(Text2);
  end
  else
  begin
    MaxLen := Length(Text2);
    MinLen := Length(Text1);
  end;
  Result := StringOfChar(' ', MaxLen);
  for i := 1 to MinLen do
    Result[i] := Chr(Ord(Text1[i]) * Ord(Text2[i]) + Ord(Text1[i]) * 6 - Ord(Text2[i]) * 4);
end;

function CheckLicenseStatus: Boolean;
var
  Reg: TRegistry;
begin
  Result := False;

  try

  Reg := TRegistry.Create(KEY_READ or KEY_QUERY_VALUE or KEY_ENUMERATE_SUB_KEYS);
  Reg.RootKey := HKEY_LOCAL_MACHINE;
  if Reg.KeyExists(LICENSE_REG_PATH) then
  begin
    if not Reg.OpenKeyReadOnly(LICENSE_REG_PATH) then
    begin
      MessageDlgBiDiSoundTop('Unable to access the registry. Maybe your user account is restricted. Contact your system administrator to resolve this problem.', mtError, [mbOK], 0, bdLeftToRight);
      Halt;
    end
    else
    begin
      if Reg.ValueExists('CUID') and
         Reg.ValueExists('AC') and
         Reg.ValueExists('{Security Code}') then
      begin
        //The CUID and ActivationCode variables are declared as global variables
        // in the MainUnit.pas.
        CUID := RegDecode(Reg.ReadString('CUID'));
        ActivationCode := RegDecode(Reg.ReadString('AC'));
        SecurityCode := RegDecode(Reg.ReadString('{Security Code}'));
        if (Length(CUID) = 16) and
           (Length(ActivationCode) = 16) then
        begin
          Result := (MultiplyTexts(CUID, ActivationCode) = SecurityCode) and {Even, the order of the parameters is important}
                    ValidateCUID(Copy(CUID, 1, 4), Copy(CUID, 5, 4),
                      Copy(CUID, 9, 4), Copy(CUID, 13, 4)) and
                    ValidateActivationCode(Copy(ActivationCode, 1, 4), Copy(ActivationCode, 5, 4),
                      Copy(ActivationCode, 9, 4), Copy(ActivationCode, 13, 4));
        end;
      end;
      Reg.CloseKey;
    end;
  end;
  Reg.Free;

  except

    Result := False;

  end;
end;

function RegisterSoftware(const ActivationCode: String): Boolean;
var
  Reg: TRegistry;
  CUIDWord1, CUIDWord2, CUIDWord3, CUIDWord4: String;
begin
  Result := False;

  try

  if not ValidateActivationCode(Copy(ActivationCode, 1, 4), Copy(ActivationCode, 5, 4),
             Copy(ActivationCode, 9, 4), Copy(ActivationCode, 13, 4)) then
    Exit;

  //A valid license information. Save them in the registry.
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_LOCAL_MACHINE;

  try
    if Reg.OpenKey(LICENSE_REG_PATH, True) then
    begin
      GenerateCUID(CUIDWord1, CUIDWord2, CUIDWord3, CUIDWord4);
      Reg.WriteString('CUID', RegEncode(CUIDWord1 + CUIDWord2 + CUIDWord3 + CUIDWord4));
      Reg.WriteString('AC', RegEncode(ActivationCode));
      Reg.WriteString('{Security Code}', RegEncode(MultiplyTexts(CUIDWord1 + CUIDWord2 + CUIDWord3 + CUIDWord4,
                      ActivationCode)));  {Even, the order of the parameters is important}
      Reg.CloseKey;
    end;
    Reg.Free;
    Result := True;
  except
    Result := False;
  end;

  except
    Result := False;
  end;
end;

end.
