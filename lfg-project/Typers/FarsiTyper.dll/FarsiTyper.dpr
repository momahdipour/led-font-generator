library FarsiTyper;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

const
  TYPER_VERSION = '2.0.0.0';

type
  TFarsiCharTypeInf = record
    BasicCharCode: WideChar;
    IsolatedForm, FinalForm, InitialForm, MedialForm: WideChar;
    InitialCommonCharGroup, FinalCommonCharGroup: Integer;
    InitialFormChars: WideString;
    FinalFormChars: WideString;
  end;

const
  CommonCharGroups : array[1..3, 1..40] of Word = (
    //**IMPORTANT NOTE 1: Mark the end of the char sequence with $0000.
    //**IMPORTANT NOTE 2: Upon reaching a $0000 code (end marker), all codes to the end of the char sequence is ignored.
    //for InitialForm: 1
    ($0626, $0628, $067E, $062A, $062B, $062C, $062D, $062E, $0633, $0634, $0635, $0636, $0637, $0638, $0639, $063A, $0641, $0642, $0643, $06A9, $06AF, $0644, $0645, $0646, $0647, $064A, $06CC, $0686, $0622, $0623, $0624, $0625, $0627, $062F, $0630, $0631, $0632, $0698, $0648, $0000),
    //for FinalForm: 2
    ($0626, $0628, $067E, $062A, $062B, $062C, $062D, $062E, $0633, $0634, $0635, $0636, $0637, $0638, $0639, $063A, $0641, $0642, $0643, $06A9, $06AF, $0644, $0645, $0646, $0647, $064A, $06CC, $0686, $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000),
    //for FinalForm: 3
    ($0626, $0628, $067E, $062A, $062B, $062C, $062D, $062E, $0633, $0634, $0635, $0636, $0637, $0638, $0639, $063A, $0641, $0642, $0643, $06A9, $06AF, $0644, $0645, $0646, $0647, $064A, $06CC, $0686, $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000)
  );
  FarsiTypeTable : array[1..50] of TFarsiCharTypeInf = (
    //HAMZA
    (BasicCharCode: #$0621; IsolatedForm: #$0621; FinalForm: #$FFFF; InitialForm: #$FFFF; MedialForm: #$FFFF;
     InitialCommonCharGroup: 0; FinalCommonCharGroup: 0;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER ALEF WITH MADDA ABOVE
    (BasicCharCode: #$0622; IsolatedForm: #$FE81; FinalForm: #$FE82; InitialForm: #$FFFF; MedialForm: #$FFFF;
     InitialCommonCharGroup: 0; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER ALEF
    (BasicCharCode: #$0627; IsolatedForm: #$FE8D; FinalForm: #$FE8E; InitialForm: #$FFFF; MedialForm: #$FFFF;
     InitialCommonCharGroup: 0; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER ALEF WITH HAMZA ABOVE
    (BasicCharCode: #$0623; IsolatedForm: #$FE83; FinalForm: #$FE84; InitialForm: #$FFFF; MedialForm: #$FFFF;
     InitialCommonCharGroup: 0; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),
    // ARABIC LETTER ALEF WITH HAMZA BELOW
    (BasicCharCode: #$0625; IsolatedForm: #$FE87; FinalForm: #$FE88; InitialForm: #$FFFF; MedialForm: #$FFFF;
     InitialCommonCharGroup: 0; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER BEH
    (BasicCharCode: #$0628; IsolatedForm: #$FE8F; FinalForm: #$FE90; InitialForm: #$FE91; MedialForm: #$FE92;
     InitialCommonCharGroup: 1; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

     // ARABIC LETTER PEH
    (BasicCharCode: #$067E; IsolatedForm: #$FB56; FinalForm: #$FB57; InitialForm: #$FB58; MedialForm: #$FB59;
     InitialCommonCharGroup: 1; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER TEH
    (BasicCharCode: #$062A; IsolatedForm: #$FE95; FinalForm: #$FE96; InitialForm: #$FE97; MedialForm: #$FE98;
     InitialCommonCharGroup: 1; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER THEH
    (BasicCharCode: #$062B; IsolatedForm: #$FE99; FinalForm: #$FE9A; InitialForm: #$FE9B; MedialForm: #$FE9C;
     InitialCommonCharGroup: 1; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER JEEM
    (BasicCharCode: #$062C; IsolatedForm: #$FE9D; FinalForm: #$FE9E; InitialForm: #$FE9F; MedialForm: #$FEA0;
     InitialCommonCharGroup: 1; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER TCHEH
    (BasicCharCode: #$0686; IsolatedForm: #$FB7A; FinalForm: #$FB7B; InitialForm: #$FB7C; MedialForm: #$FB7D;
     InitialCommonCharGroup: 1; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER HAH
    (BasicCharCode: #$062D; IsolatedForm: #$FEA1; FinalForm: #$FEA2; InitialForm: #$FEA3; MedialForm: #$FEA4;
     InitialCommonCharGroup: 1; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER KHAH
    (BasicCharCode: #$062E; IsolatedForm: #$FEA5; FinalForm: #$FEA6; InitialForm: #$FEA7; MedialForm: #$FEA8;
     InitialCommonCharGroup: 1; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER DAL
    (BasicCharCode: #$062F; IsolatedForm: #$FEA9; FinalForm: #$FEAA; InitialForm: #$FFFF; MedialForm: #$FFFF;
     InitialCommonCharGroup: 0; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER THAL
    (BasicCharCode: #$0630; IsolatedForm: #$FEAB; FinalForm: #$FEAC; InitialForm: #$FFFF; MedialForm: #$FFFF;
     InitialCommonCharGroup: 0; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER REH
    (BasicCharCode: #$0631; IsolatedForm: #$FEAD; FinalForm: #$FEAE; InitialForm: #$FFFF; MedialForm: #$FFFF;
     InitialCommonCharGroup: 0; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER ZAIN
    (BasicCharCode: #$0632; IsolatedForm: #$FEAF; FinalForm: #$FEB0; InitialForm: #$FFFF; MedialForm: #$FFFF;
     InitialCommonCharGroup: 0; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER JEH
    (BasicCharCode: #$0698; IsolatedForm: #$FB8A; FinalForm: #$FB8B; InitialForm: #$FFFF; MedialForm: #$FFFF;
     InitialCommonCharGroup: 0; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER SEEN
    (BasicCharCode: #$0633; IsolatedForm: #$FEB1; FinalForm: #$FEB2; InitialForm: #$FEB3; MedialForm: #$FEB4;
     InitialCommonCharGroup: 1; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER SHEEN
    (BasicCharCode: #$0634; IsolatedForm: #$FEB5; FinalForm: #$FEB6; InitialForm: #$FEB7; MedialForm: #$FEB8;
     InitialCommonCharGroup: 1; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER SAD
    (BasicCharCode: #$0635; IsolatedForm: #$FEB9; FinalForm: #$FEBA; InitialForm: #$FEBB; MedialForm: #$FEBC;
     InitialCommonCharGroup: 1; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER DAD
    (BasicCharCode: #$0636; IsolatedForm: #$FEBD; FinalForm: #$FEBE; InitialForm: #$FEBF; MedialForm: #$FEC0;
     InitialCommonCharGroup: 1; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER TAH
    (BasicCharCode: #$0637; IsolatedForm: #$FEC1; FinalForm: #$FEC2; InitialForm: #$FEC3; MedialForm: #$FEC4;
     InitialCommonCharGroup: 1; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER ZAH
    (BasicCharCode: #$0638; IsolatedForm: #$FEC5; FinalForm: #$FEC6; InitialForm: #$FEC7; MedialForm: #$FEC8;
     InitialCommonCharGroup: 1; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER AIN
    (BasicCharCode: #$0639; IsolatedForm: #$FEC9; FinalForm: #$FECA; InitialForm: #$FECB; MedialForm: #$FECC;
     InitialCommonCharGroup: 1; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER GHAIN
    (BasicCharCode: #$063A; IsolatedForm: #$FECD; FinalForm: #$FECE; InitialForm: #$FECF; MedialForm: #$FED0;
     InitialCommonCharGroup: 1; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER FEH
    (BasicCharCode: #$0641; IsolatedForm: #$FED1; FinalForm: #$FED2; InitialForm: #$FED3; MedialForm: #$FED4;
     InitialCommonCharGroup: 1; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER QAF
    (BasicCharCode: #$0642; IsolatedForm: #$FED5; FinalForm: #$FED6; InitialForm: #$FED7; MedialForm: #$FED8;
     InitialCommonCharGroup: 1; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER KAF
    (BasicCharCode: #$0643; IsolatedForm: #$FED9; FinalForm: #$FEDA; InitialForm: #$FEDB; MedialForm: #$FEDC;
     InitialCommonCharGroup: 1; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER KEHEH
    (BasicCharCode: #$06A9; IsolatedForm: #$FB8E; FinalForm: #$FB8F; InitialForm: #$FB90; MedialForm: #$FB91;
     InitialCommonCharGroup: 1; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

     // ARABIC LETTER GAF
    (BasicCharCode: #$06AF; IsolatedForm: #$FB92; FinalForm: #$FB93; InitialForm: #$FB94; MedialForm: #$FB95;
     InitialCommonCharGroup: 1; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER LAM
    (BasicCharCode: #$0644; IsolatedForm: #$FEDD; FinalForm: #$FEDE; InitialForm: #$FEDF; MedialForm: #$FEE0;
     InitialCommonCharGroup: 1; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER MEEM
    (BasicCharCode: #$0645; IsolatedForm: #$FEE1; FinalForm: #$FEE2; InitialForm: #$FEE3; MedialForm: #$FEE4;
     InitialCommonCharGroup: 1; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER NOON
    (BasicCharCode: #$0646; IsolatedForm: #$FEE5; FinalForm: #$FEE6; InitialForm: #$FEE7; MedialForm: #$FEE8;
     InitialCommonCharGroup: 1; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER WAW
    (BasicCharCode: #$0648; IsolatedForm: #$FEED; FinalForm: #$FEEE; InitialForm: #$FFFF; MedialForm: #$FFFF;
     InitialCommonCharGroup: 0; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    //ARABIC LETTER WAW WITH HAMZA ABOVE
    (BasicCharCode: #$0624; IsolatedForm: #$FE85; FinalForm: #$FE86; InitialForm: #$FFFF; MedialForm: #$FFFF;
     InitialCommonCharGroup: 0; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER HEH
    (BasicCharCode: #$0647; IsolatedForm: #$FEE9; FinalForm: #$FEEA; InitialForm: #$FEEB; MedialForm: #$FEEC;
     InitialCommonCharGroup: 1; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER YEH
    (BasicCharCode: #$064A; IsolatedForm: #$FEF1; FinalForm: #$FEF2; InitialForm: #$FEF3; MedialForm: #$FEF4;
     InitialCommonCharGroup: 1; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER FARSI YEH
    (BasicCharCode: #$06CC; IsolatedForm: #$FBFC; FinalForm: #$FBFD; InitialForm: #$FBFE; MedialForm: #$FBFF;
     InitialCommonCharGroup: 1; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    // ARABIC LETTER YEH WITH HAMZA ABOVE
    (BasicCharCode: #$0626; IsolatedForm: #$FE89; FinalForm: #$FE8A; InitialForm: #$FE8B; MedialForm: #$FE8C;
     InitialCommonCharGroup: 1; FinalCommonCharGroup: 3;
     InitialFormChars: '';
     FinalFormChars: ''),

    //Digits
    // ARABIC-INDIC DIGIT ZERO
    (BasicCharCode: #$0660; IsolatedForm: #$0660; FinalForm: #$FFFF; InitialForm: #$FFFF; MedialForm: #$FFFF;
     InitialCommonCharGroup: 0; FinalCommonCharGroup: 0;
     InitialFormChars: '';
     FinalFormChars: ''),
    // ARABIC-INDIC DIGIT ONE
    (BasicCharCode: #$0661; IsolatedForm: #$0661; FinalForm: #$FFFF; InitialForm: #$FFFF; MedialForm: #$FFFF;
     InitialCommonCharGroup: 0; FinalCommonCharGroup: 0;
     InitialFormChars: '';
     FinalFormChars: ''),
    // ARABIC-INDIC DIGIT TWO
    (BasicCharCode: #$0662; IsolatedForm: #$0662; FinalForm: #$FFFF; InitialForm: #$FFFF; MedialForm: #$FFFF;
     InitialCommonCharGroup: 0; FinalCommonCharGroup: 0;
     InitialFormChars: '';
     FinalFormChars: ''),
    // ARABIC-INDIC DIGIT THREE
    (BasicCharCode: #$0663; IsolatedForm: #$0663; FinalForm: #$FFFF; InitialForm: #$FFFF; MedialForm: #$FFFF;
     InitialCommonCharGroup: 0; FinalCommonCharGroup: 0;
     InitialFormChars: '';
     FinalFormChars: ''),
    // ARABIC-INDIC DIGIT FOUR
    (BasicCharCode: #$0664; IsolatedForm: #$0664; FinalForm: #$FFFF; InitialForm: #$FFFF; MedialForm: #$FFFF;
     InitialCommonCharGroup: 0; FinalCommonCharGroup: 0;
     InitialFormChars: '';
     FinalFormChars: ''),
    // ARABIC-INDIC DIGIT FIVE
    (BasicCharCode: #$0665; IsolatedForm: #$0665; FinalForm: #$FFFF; InitialForm: #$FFFF; MedialForm: #$FFFF;
     InitialCommonCharGroup: 0; FinalCommonCharGroup: 0;
     InitialFormChars: '';
     FinalFormChars: ''),
    // ARABIC-INDIC DIGIT SIX
    (BasicCharCode: #$0666; IsolatedForm: #$0666; FinalForm: #$FFFF; InitialForm: #$FFFF; MedialForm: #$FFFF;
     InitialCommonCharGroup: 0; FinalCommonCharGroup: 0;
     InitialFormChars: '';
     FinalFormChars: ''),
    // ARABIC-INDIC DIGIT SEVEN
    (BasicCharCode: #$0667; IsolatedForm: #$0667; FinalForm: #$FFFF; InitialForm: #$FFFF; MedialForm: #$FFFF;
     InitialCommonCharGroup: 0; FinalCommonCharGroup: 0;
     InitialFormChars: '';
     FinalFormChars: ''),
    // ARABIC-INDIC DIGIT EIGHT
    (BasicCharCode: #$0668; IsolatedForm: #$0668; FinalForm: #$FFFF; InitialForm: #$FFFF; MedialForm: #$FFFF;
     InitialCommonCharGroup: 0; FinalCommonCharGroup: 0;
     InitialFormChars: '';
     FinalFormChars: ''),
    // ARABIC-INDIC DIGIT NINE
    (BasicCharCode: #$0669; IsolatedForm: #$0669; FinalForm: #$FFFF; InitialForm: #$FFFF; MedialForm: #$FFFF;
     InitialCommonCharGroup: 0; FinalCommonCharGroup: 0;
     InitialFormChars: '';
     FinalFormChars: '')
  );

{$R *.res}

function IsCompatible(const Version: ShortString; var CompatibilityMsg: ShortString): Boolean;
begin
  Result := Version = '2.0.0.0';
  CompatibilityMsg := '';
end;

function GetVersion: ShortString;
begin
  Result := TYPER_VERSION;
end;

function WideCharPos(CharCode: WideChar; const S: WideString): Boolean;
var
  i: Integer;
begin
  Result := False;
  for i:=1 to Length(S) do
    if S[i] = CharCode then
    begin
      Result := True;
      Exit;
    end;
end;

function WideCharInGroup(CharCode:Widechar; CharGroupIndex: Integer): Boolean;
var
  i: Integer;
begin
  Result := False;
  for i:=1 to Length(CommonCharGroups[CharGroupIndex]) do
    if CommonCharGroups[CharGroupIndex, i] = $0000 then
      Exit
    else if Word(CharCode) = CommonCharGroups[CharGroupIndex, i] then
    begin
      Result := True;
      Exit;
    end;
end;

function TypeChar(PrevChar, MainChar, NextChar: Widechar;
  var ProperChar: Widechar; var RightToLef: Boolean): Boolean;
var
  i: Integer;
  FinalForm, InitialForm: Boolean;
begin
  Result := False;

  for i := 1 to Length(FarsiTypeTable) do
  begin
    if MainChar = FarsiTypeTable[i].BasicCharCode then
    begin
      if FarsiTypeTable[i].FinalCommonCharGroup > 0 then
        FinalForm := WideCharInGroup(PrevChar, FarsiTypeTable[i].FinalCommonCharGroup) or WideCharPos(PrevChar, FarsiTypeTable[i].FinalFormChars)
      else
        FinalForm := WideCharPos(PrevChar, FarsiTypeTable[i].FinalFormChars);

      if FarsiTypeTable[i].InitialCommonCharGroup > 0 then
        InitialForm := WideCharInGroup(NextChar, FarsiTypeTable[i].InitialCommonCharGroup) or WideCharPos(NextChar, FarsiTypeTable[i].InitialFormChars)
      else
        InitialForm := WideCharPos(NextChar, FarsiTypeTable[i].InitialFormChars);

      if FinalForm and InitialForm then
        ProperChar := FarsiTypeTable[i].MedialForm
      else if FinalForm then
        ProperChar := FarsiTypeTable[i].FinalForm
      else if InitialForm then
        ProperChar := FarsiTypeTable[i].InitialForm
      else
        ProperChar := FarsiTypeTable[i].IsolatedForm;

      Result := True;
      RightToLef := True;
      Exit;
    end;
  end;
end;

exports
  IsCompatible,
  GetVersion,
  TypeChar;

begin
end.

