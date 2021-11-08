unit CharMapTables;

{
  The names of the CharMapTables are included as widestring resource strings in
  the dll file. These resource strings are used in the GetCharMapTablesList and
  GetCharTableCharacters procedures.
}

interface

uses
  TntClasses, TntSystem, TntSysUtils;

type
  TCharMapEntry = record
    Unicode: Widechar;
    FileName: ShortString;
  end;

  TCharMapTable = array of TCharMapEntry;
  PCharMapTable = ^TCharMapTable;

  procedure GetCharMapTablesList(List: TTntStrings);

  procedure GetCharTableCharacters(CharTableName: WideString; List: TTntStrings);
  
  function FindCharFileName(CharCode: WideChar;
    var FileName: ShortString; var CanBeMappedByUser: Boolean): Boolean;

implementation

uses SysUtils;

{
Notes:
  1. Both of "ARABIC LETTER YEH" ($064A) and  "ARABIC LETTER FARSI YEH" ($06CC)
     are mapped to the same file names (YEH, YEH_, _YEH, _YEH_) in the
     FarsiCharMapTable for Farsi language.
}

const
  EnglishCapitalCharMapTable : array[1..26] of TCharMapEntry = (
    (Unicode:#$0041; FileName: 'A'),   // LATIN CAPITAL LETTER A
    (Unicode:#$0042; FileName: 'B'),   // LATIN CAPITAL LETTER B
    (Unicode:#$0043; FileName: 'C'),   // LATIN CAPITAL LETTER C
    (Unicode:#$0044; FileName: 'D'),   // LATIN CAPITAL LETTER D
    (Unicode:#$0045; FileName: 'E'),   // LATIN CAPITAL LETTER E
    (Unicode:#$0046; FileName: 'F'),   // LATIN CAPITAL LETTER F
    (Unicode:#$0047; FileName: 'G'),   // LATIN CAPITAL LETTER G
    (Unicode:#$0048; FileName: 'H'),   // LATIN CAPITAL LETTER H
    (Unicode:#$0049; FileName: 'I'),   // LATIN CAPITAL LETTER I
    (Unicode:#$004A; FileName: 'J'),   // LATIN CAPITAL LETTER J
    (Unicode:#$004B; FileName: 'K'),   // LATIN CAPITAL LETTER K
    (Unicode:#$004C; FileName: 'L'),   // LATIN CAPITAL LETTER L
    (Unicode:#$004D; FileName: 'M'),   // LATIN CAPITAL LETTER M
    (Unicode:#$004E; FileName: 'N'),   // LATIN CAPITAL LETTER N
    (Unicode:#$004F; FileName: 'O'),   // LATIN CAPITAL LETTER O
    (Unicode:#$0050; FileName: 'P'),   // LATIN CAPITAL LETTER P
    (Unicode:#$0051; FileName: 'Q'),   // LATIN CAPITAL LETTER Q
    (Unicode:#$0052; FileName: 'R'),   // LATIN CAPITAL LETTER R
    (Unicode:#$0053; FileName: 'S'),   // LATIN CAPITAL LETTER S
    (Unicode:#$0054; FileName: 'T'),   // LATIN CAPITAL LETTER T
    (Unicode:#$0055; FileName: 'U'),   // LATIN CAPITAL LETTER U
    (Unicode:#$0056; FileName: 'V'),   // LATIN CAPITAL LETTER V
    (Unicode:#$0057; FileName: 'W'),   // LATIN CAPITAL LETTER W
    (Unicode:#$0058; FileName: 'X'),   // LATIN CAPITAL LETTER X
    (Unicode:#$0059; FileName: 'Y'),   // LATIN CAPITAL LETTER Y
    (Unicode:#$005A; FileName: 'Z')    // LATIN CAPITAL LETTER Z
  );

  EnglishCharMapTable : array[1..26] of TCharMapEntry = (
    (Unicode:#$0061; FileName: 'a'),   // LATIN SMALL LETTER A
    (Unicode:#$0062; FileName: 'b'),   // LATIN SMALL LETTER B
    (Unicode:#$0063; FileName: 'c'),   // LATIN SMALL LETTER C
    (Unicode:#$0064; FileName: 'd'),   // LATIN SMALL LETTER D
    (Unicode:#$0065; FileName: 'e'),   // LATIN SMALL LETTER E
    (Unicode:#$0066; FileName: 'f'),   // LATIN SMALL LETTER F
    (Unicode:#$0067; FileName: 'g'),   // LATIN SMALL LETTER G
    (Unicode:#$0068; FileName: 'h'),   // LATIN SMALL LETTER H
    (Unicode:#$0069; FileName: 'i'),   // LATIN SMALL LETTER I
    (Unicode:#$006A; FileName: 'j'),   // LATIN SMALL LETTER J
    (Unicode:#$006B; FileName: 'k'),   // LATIN SMALL LETTER K
    (Unicode:#$006C; FileName: 'l'),   // LATIN SMALL LETTER L
    (Unicode:#$006D; FileName: 'm'),   // LATIN SMALL LETTER M
    (Unicode:#$006E; FileName: 'n'),   // LATIN SMALL LETTER N
    (Unicode:#$006F; FileName: 'o'),   // LATIN SMALL LETTER O
    (Unicode:#$0070; FileName: 'p'),   // LATIN SMALL LETTER P
    (Unicode:#$0071; FileName: 'q'),   // LATIN SMALL LETTER Q
    (Unicode:#$0072; FileName: 'r'),   // LATIN SMALL LETTER R
    (Unicode:#$0073; FileName: 's'),   // LATIN SMALL LETTER S
    (Unicode:#$0074; FileName: 't'),   // LATIN SMALL LETTER T
    (Unicode:#$0075; FileName: 'u'),   // LATIN SMALL LETTER U
    (Unicode:#$0076; FileName: 'v'),   // LATIN SMALL LETTER V
    (Unicode:#$0077; FileName: 'w'),   // LATIN SMALL LETTER W
    (Unicode:#$0078; FileName: 'x'),   // LATIN SMALL LETTER X
    (Unicode:#$0079; FileName: 'y'),   // LATIN SMALL LETTER Y
    (Unicode:#$007A; FileName: 'z')    // LATIN SMALL LETTER Z
  );

  FarsiCharMapTable : array[1..145] of TCharMapEntry = (
    (Unicode:#$FE80; FileName: 'HAMZA'),  //Á           // ARABIC LETTER HAMZA ISOLATED FORM

    (Unicode:#$FE81; FileName: 'AlefMAD'),  //            // ARABIC LETTER ALEF WITH MADDA ABOVE ISOLATED FORM
    (Unicode:#$FE82; FileName: 'AlefMAD_'),  //               // ARABIC LETTER ALEF WITH MADDA ABOVE FINAL FORM

    (Unicode:#$FE8D; FileName: 'ALEF'),  //            // ARABIC LETTER ALEF ISOLATED FORM
    (Unicode:#$FE8E; FileName: 'ALEF_'),  //               // ARABIC LETTER ALEF FINAL FORM

    (Unicode:#$FE83; FileName: 'AlefHamzaAbove'),  //            // ARABIC LETTER ALEF WITH HAMZA ABOVE ISOLATED FORM
    (Unicode:#$FE84; FileName: 'AlefHamzaAbove_'),  //               // ARABIC LETTER ALEF WITH HAMZA ABOVE FINAL FORM

    (Unicode:#$FE87; FileName: 'AlefHamzaBelow'),  //            // ARABIC LETTER ALEF WITH HAMZA BELOW ISOLATED FORM
    (Unicode:#$FE88; FileName: 'AlefHamzaBelow_'),  //               // ARABIC LETTER ALEF WITH HAMZA BELOW FINAL FORM

    (Unicode:#$FE8F; FileName: 'BEH'),  //            // ARABIC LETTER BEH ISOLATED FORM
    (Unicode:#$FE90; FileName: 'BEH_'),  //               // ARABIC LETTER BEH FINAL FORM
    (Unicode:#$FE91; FileName: '_BEH'),  //             // ARABIC LETTER BEH INITIAL FORM
    (Unicode:#$FE92; FileName: '_BEH_'),  //              // ARABIC LETTER BEH MEDIAL FORM

    (Unicode:#$FB56; FileName: 'PEH'),            // ARABIC LETTER PEH ISOLATED FORM
    (Unicode:#$FB57; FileName: 'PEH_'),               // ARABIC LETTER PEH FINAL FORM
    (Unicode:#$FB58; FileName: '_PEH'),             // ARABIC LETTER PEH INITIAL FORM
    (Unicode:#$FB59; FileName: '_PEH_'),              // ARABIC LETTER PEH MEDIAL FORM

//    (Unicode:#$FE93; FileName: ''),  //            // ARABIC LETTER TEH MARBUTA ISOLATED FORM
//    (Unicode:#$FE94; FileName: ''),  //               // ARABIC LETTER TEH MARBUTA FINAL FORM

    (Unicode:#$FE95; FileName: 'TEH'),  //            // ARABIC LETTER TEH ISOLATED FORM
    (Unicode:#$FE96; FileName: 'TEH_'),  //               // ARABIC LETTER TEH FINAL FORM
    (Unicode:#$FE97; FileName: '_TEH'),  //             // ARABIC LETTER TEH INITIAL FORM
    (Unicode:#$FE98; FileName: '_TEH_'),  //              // ARABIC LETTER TEH MEDIAL FORM

    (Unicode:#$FE99; FileName: 'THEH'),  //            // ARABIC LETTER THEH ISOLATED FORM
    (Unicode:#$FE9A; FileName: 'THEH_'),  //               // ARABIC LETTER THEH FINAL FORM
    (Unicode:#$FE9B; FileName: '_THEH'),  //             // ARABIC LETTER THEH INITIAL FORM
    (Unicode:#$FE9C; FileName: '_THEH_'),  //              // ARABIC LETTER THEH MEDIAL FORM

    (Unicode:#$FE9D; FileName: 'JEEM'),  //            // ARABIC LETTER JEEM ISOLATED FORM
    (Unicode:#$FE9E; FileName: 'JEEM_'),  //               // ARABIC LETTER JEEM FINAL FORM
    (Unicode:#$FE9F; FileName: '_JEEM'),  //             // ARABIC LETTER JEEM INITIAL FORM
    (Unicode:#$FEA0; FileName: '_JEEM_'),  //              // ARABIC LETTER JEEM MEDIAL FORM

    (Unicode:#$FB7A; FileName: 'CHEH'),            // ARABIC LETTER TCHEH ISOLATED FORM
    (Unicode:#$FB7B; FileName: 'CHEH_'),               // ARABIC LETTER TCHEH FINAL FORM
    (Unicode:#$FB7C; FileName: '_CHEH'),             // ARABIC LETTER TCHEH INITIAL FORM
    (Unicode:#$FB7D; FileName: '_CHEH_'),              // ARABIC LETTER TCHEH MEDIAL FORM

    (Unicode:#$FEA1; FileName: 'HAH'),  //            // ARABIC LETTER HAH ISOLATED FORM
    (Unicode:#$FEA2; FileName: 'HAH_'),  //               // ARABIC LETTER HAH FINAL FORM
    (Unicode:#$FEA3; FileName: '_HAH'),  //             // ARABIC LETTER HAH INITIAL FORM
    (Unicode:#$FEA4; FileName: '_HAH_'),  //              // ARABIC LETTER HAH MEDIAL FORM

    (Unicode:#$FEA5; FileName: 'KHAH'),  //            // ARABIC LETTER KHAH ISOLATED FORM
    (Unicode:#$FEA6; FileName: 'KHAH_'),  //               // ARABIC LETTER KHAH FINAL FORM
    (Unicode:#$FEA7; FileName: '_KHAH'),  //             // ARABIC LETTER KHAH INITIAL FORM
    (Unicode:#$FEA8; FileName: '_KHAH_'),  //              // ARABIC LETTER KHAH MEDIAL FORM

    (Unicode:#$FEA9; FileName: 'DAL'),  //            // ARABIC LETTER DAL ISOLATED FORM
    (Unicode:#$FEAA; FileName: 'DAL_'),  //               // ARABIC LETTER DAL FINAL FORM

    (Unicode:#$FEAB; FileName: 'ZAL'),  //            // ARABIC LETTER THAL ISOLATED FORM
    (Unicode:#$FEAC; FileName: 'ZAL_'),  //               // ARABIC LETTER THAL FINAL FORM

    (Unicode:#$FEAD; FileName: 'REH'),  //            // ARABIC LETTER REH ISOLATED FORM
    (Unicode:#$FEAE; FileName: 'REH_'),  //               // ARABIC LETTER REH FINAL FORM

    (Unicode:#$FEAF; FileName: 'ZEH'),  //            // ARABIC LETTER ZAIN ISOLATED FORM
    (Unicode:#$FEB0; FileName: 'ZEH_'),  //               // ARABIC LETTER ZAIN FINAL FORM

    (Unicode:#$FB8A; FileName: 'ZHEH'),            // ARABIC LETTER JEH ISOLATED FORM
    (Unicode:#$FB8B; FileName: 'ZHEH_'),               // ARABIC LETTER JEH FINAL FORM

    (Unicode:#$FEB1; FileName: 'SEEN'),  //            // ARABIC LETTER SEEN ISOLATED FORM
    (Unicode:#$FEB2; FileName: 'SEEN_'),  //               // ARABIC LETTER SEEN FINAL FORM
    (Unicode:#$FEB3; FileName: '_SEEN'),  //             // ARABIC LETTER SEEN INITIAL FORM
    (Unicode:#$FEB4; FileName: '_SEEN_'),  //              // ARABIC LETTER SEEN MEDIAL FORM

    (Unicode:#$FEB5; FileName: 'SHEEN'),  //            // ARABIC LETTER SHEEN ISOLATED FORM
    (Unicode:#$FEB6; FileName: 'SHEEN_'),  //               // ARABIC LETTER SHEEN FINAL FORM
    (Unicode:#$FEB7; FileName: '_SHEEN'),  //             // ARABIC LETTER SHEEN INITIAL FORM
    (Unicode:#$FEB8; FileName: '_SHEEN_'),  //              // ARABIC LETTER SHEEN MEDIAL FORM

    (Unicode:#$FEB9; FileName: 'SAD'),  //            // ARABIC LETTER SAD ISOLATED FORM
    (Unicode:#$FEBA; FileName: 'SAD_'),  //               // ARABIC LETTER SAD FINAL FORM
    (Unicode:#$FEBB; FileName: '_SAD'),  //             // ARABIC LETTER SAD INITIAL FORM
    (Unicode:#$FEBC; FileName: '_SAD_'),  //              // ARABIC LETTER SAD MEDIAL FORM

    (Unicode:#$FEBD; FileName: 'ZAD'),  //            // ARABIC LETTER DAD ISOLATED FORM
    (Unicode:#$FEBE; FileName: 'ZAD_'),  //               // ARABIC LETTER DAD FINAL FORM
    (Unicode:#$FEBF; FileName: '_ZAD'),  //             // ARABIC LETTER DAD INITIAL FORM
    (Unicode:#$FEC0; FileName: '_ZAD_'),  //              // ARABIC LETTER DAD MEDIAL FORM

    (Unicode:#$FEC1; FileName: 'TAH'),  //            // ARABIC LETTER TAH ISOLATED FORM
    (Unicode:#$FEC2; FileName: 'TAH_'),  //               // ARABIC LETTER TAH FINAL FORM
    (Unicode:#$FEC3; FileName: '_TAH'),  //             // ARABIC LETTER TAH INITIAL FORM
    (Unicode:#$FEC4; FileName: '_TAH_'),  //              // ARABIC LETTER TAH MEDIAL FORM

    (Unicode:#$FEC5; FileName: 'ZAH'),  //            // ARABIC LETTER ZAH ISOLATED FORM
    (Unicode:#$FEC6; FileName: 'ZAH_'),  //               // ARABIC LETTER ZAH FINAL FORM
    (Unicode:#$FEC7; FileName: '_ZAH'),  //             // ARABIC LETTER ZAH INITIAL FORM
    (Unicode:#$FEC8; FileName: '_ZAH_'),  //              // ARABIC LETTER ZAH MEDIAL FORM

    (Unicode:#$FEC9; FileName: 'AIN'),  //            // ARABIC LETTER AIN ISOLATED FORM
    (Unicode:#$FECA; FileName: 'AIN_'),  //               // ARABIC LETTER AIN FINAL FORM
    (Unicode:#$FECB; FileName: '_AIN'),  //             // ARABIC LETTER AIN INITIAL FORM
    (Unicode:#$FECC; FileName: '_AIN_'),  //              // ARABIC LETTER AIN MEDIAL FORM

    (Unicode:#$FECD; FileName: 'GHAIN'),  //            // ARABIC LETTER GHAIN ISOLATED FORM
    (Unicode:#$FECE; FileName: 'GHAIN_'),  //               // ARABIC LETTER GHAIN FINAL FORM
    (Unicode:#$FECF; FileName: '_GHAIN'),  //             // ARABIC LETTER GHAIN INITIAL FORM
    (Unicode:#$FED0; FileName: '_GHAIN_'),  //              // ARABIC LETTER GHAIN MEDIAL FORM

    (Unicode:#$FED1; FileName: 'FEH'),  //            // ARABIC LETTER FEH ISOLATED FORM
    (Unicode:#$FED2; FileName: 'FEH_'),  //               // ARABIC LETTER FEH FINAL FORM
    (Unicode:#$FED3; FileName: '_FEH'),  //             // ARABIC LETTER FEH INITIAL FORM
    (Unicode:#$FED4; FileName: '_FEH_'),  //              // ARABIC LETTER FEH MEDIAL FORM

    (Unicode:#$FED5; FileName: 'QAF'),  //            // ARABIC LETTER QAF ISOLATED FORM
    (Unicode:#$FED6; FileName: 'QAF_'),  //               // ARABIC LETTER QAF FINAL FORM
    (Unicode:#$FED7; FileName: '_QAF'),  //             // ARABIC LETTER QAF INITIAL FORM
    (Unicode:#$FED8; FileName: '_QAF_'),  //              // ARABIC LETTER QAF MEDIAL FORM

    (Unicode:#$FED9; FileName: 'KAF'),  //            // ARABIC LETTER KAF ISOLATED FORM
    (Unicode:#$FEDA; FileName: 'KAF_'),  //               // ARABIC LETTER KAF FINAL FORM
    (Unicode:#$FEDB; FileName: '_KAF'),  //             // ARABIC LETTER KAF INITIAL FORM
    (Unicode:#$FEDC; FileName: '_KAF_'),  //              // ARABIC LETTER KAF MEDIAL FORM

    (Unicode:#$FB8E; FileName: 'KAF'),  //            // ARABIC LETTER KEHEH ISOLATED FORM
    (Unicode:#$FB8F; FileName: 'KAF_'),  //               // ARABIC LETTER KEHEH FINAL FORM
    (Unicode:#$FB90; FileName: '_KAF'),  //             // ARABIC LETTER KEHEH INITIAL FORM
    (Unicode:#$FB91; FileName: '_KAF_'),  //              // ARABIC LETTER KEHEH MEDIAL FORM

    (Unicode:#$FB92; FileName: 'GAF'),            // ARABIC LETTER GAF ISOLATED FORM
    (Unicode:#$FB93; FileName: 'GAF_'),               // ARABIC LETTER GAF FINAL FORM
    (Unicode:#$FB94; FileName: '_GAF'),             // ARABIC LETTER GAF INITIAL FORM
    (Unicode:#$FB95; FileName: '_GAF_'),              // ARABIC LETTER GAF MEDIAL FORM

    (Unicode:#$FEDD; FileName: 'LAM'),  //            // ARABIC LETTER LAM ISOLATED FORM
    (Unicode:#$FEDE; FileName: 'LAM_'),  //               // ARABIC LETTER LAM FINAL FORM
    (Unicode:#$FEDF; FileName: '_LAM'),  //             // ARABIC LETTER LAM INITIAL FORM
    (Unicode:#$FEE0; FileName: '_LAM_'),  //              // ARABIC LETTER LAM MEDIAL FORM

    (Unicode:#$FEE1; FileName: 'MEEM'),  //            // ARABIC LETTER MEEM ISOLATED FORM
    (Unicode:#$FEE2; FileName: 'MEEM_'),  //               // ARABIC LETTER MEEM FINAL FORM
    (Unicode:#$FEE3; FileName: '_MEEM'),  //             // ARABIC LETTER MEEM INITIAL FORM
    (Unicode:#$FEE4; FileName: '_MEEM_'),  //              // ARABIC LETTER MEEM MEDIAL FORM

    (Unicode:#$FEE5; FileName: 'NOON'),  //            // ARABIC LETTER NOON ISOLATED FORM
    (Unicode:#$FEE6; FileName: 'NOON_'),  //               // ARABIC LETTER NOON FINAL FORM
    (Unicode:#$FEE7; FileName: '_NOON'),  //             // ARABIC LETTER NOON INITIAL FORM
    (Unicode:#$FEE8; FileName: '_NOON_'),  //              // ARABIC LETTER NOON MEDIAL FORM

    (Unicode:#$FEED; FileName: 'WAW'),  //            // ARABIC LETTER WAW ISOLATED FORM
    (Unicode:#$FEEE; FileName: 'WAW_'),  //               // ARABIC LETTER WAW FINAL FORM

    (Unicode:#$FE85; FileName: 'WawHamzaAbove'),  //            // ARABIC LETTER WAW WITH HAMZA ABOVE ISOLATED FORM
    (Unicode:#$FE86; FileName: 'WawHamzaAbove_'),  //               // ARABIC LETTER WAW WITH HAMZA ABOVE FINAL FORM

    (Unicode:#$FEE9; FileName: 'HEH'),  //            // ARABIC LETTER HEH ISOLATED FORM
    (Unicode:#$FEEA; FileName: 'HEH_'),  //               // ARABIC LETTER HEH FINAL FORM
    (Unicode:#$FEEB; FileName: '_HEH'),  //             // ARABIC LETTER HEH INITIAL FORM
    (Unicode:#$FEEC; FileName: '_HEH_'),  //              // ARABIC LETTER HEH MEDIAL FORM

//    (Unicode:#$FEEF; FileName: ''),  //            // ARABIC LETTER ALEF MAKSURA ISOLATED FORM
//    (Unicode:#$FEF0; FileName: ''),  //               // ARABIC LETTER ALEF MAKSURA FINAL FORM

    (Unicode:#$FBFC; FileName: 'YEH'),  //            // ARABIC LETTER FARSI YEH ISOLATED FORM
    (Unicode:#$FBFD; FileName: 'YEH_'),  //               // ARABIC LETTER FARSI YEH FINAL FORM
    (Unicode:#$FBFE; FileName: '_YEH'),  //             // ARABIC LETTER FARSI YEH INITIAL FORM
    (Unicode:#$FBFF; FileName: '_YEH_'),  //              // ARABIC LETTER FARSI YEH MEDIAL FORM

    (Unicode:#$FEF1; FileName: 'YEH'),  //            // ARABIC LETTER YEH ISOLATED FORM
    (Unicode:#$FEF2; FileName: 'YEH_'),  //               // ARABIC LETTER YEH FINAL FORM
    (Unicode:#$FEF3; FileName: '_YEH'),  //             // ARABIC LETTER YEH INITIAL FORM
    (Unicode:#$FEF4; FileName: '_YEH_'),  //              // ARABIC LETTER YEH MEDIAL FORM

    (Unicode:#$FE89; FileName: 'YehHamzaAbove'),  //            // ARABIC LETTER YEH WITH HAMZA ABOVE ISOLATED FORM
    (Unicode:#$FE8A; FileName: 'YehHamzaAbove_'),  //               // ARABIC LETTER YEH WITH HAMZA ABOVE FINAL FORM
    (Unicode:#$FE8B; FileName: '_YehHamzaAbove'),  //             // ARABIC LETTER YEH WITH HAMZA ABOVE INITIAL FORM
    (Unicode:#$FE8C; FileName: '_YehHamzaAbove_'),  //              // ARABIC LETTER YEH WITH HAMZA ABOVE MEDIAL FORM

    (Unicode:#$0660; FileName: '0'),              // ARABIC-INDIC DIGIT ZERO
    (Unicode:#$0661; FileName: '1'),              // ARABIC-INDIC DIGIT ONE
    (Unicode:#$0662; FileName: '2'),              // ARABIC-INDIC DIGIT TWO
    (Unicode:#$0663; FileName: '3'),              // ARABIC-INDIC DIGIT THREE
    (Unicode:#$0664; FileName: '4'),              // ARABIC-INDIC DIGIT FOUR
    (Unicode:#$0665; FileName: '5'),              // ARABIC-INDIC DIGIT FIVE
    (Unicode:#$0666; FileName: '6'),              // ARABIC-INDIC DIGIT SIX
    (Unicode:#$0667; FileName: '7'),              // ARABIC-INDIC DIGIT SEVEN
    (Unicode:#$0668; FileName: '8'),              // ARABIC-INDIC DIGIT EIGHT
    (Unicode:#$0669; FileName: '9')               // ARABIC-INDIC DIGIT NINE
  );

function ReplaceInvalidUnicodeChars(const Str: WideString): WideString;
const
  NUM_OF_CHARS = 2;

const
{
  Notes:
        1. In WIN98 the $ 6A9 unicode character (ARABI CLETTER KEHEH) is not displayed correctly, but the $0643 unicode character (ARABIC LETTER KAF) is displayed correctly. Always replace KEHEH with KAF.
        2. The $064A (ARABIC LETTER YEH) has 2 dots under it, but the standard farsi YEH does not have it. So if the active language is Farsi, replace the ARABIC LETTER YEH with the unicode character $06CC (ARABIC LETTER FARSI YEH).
}
  OldCharCodes: array[1..NUM_OF_CHARS] of Integer = (
    $06A9 {ARABIC LETTER KEHEH},
    $064A {ARABIC LETTER YEH}
  );
  NewCharCodes: array[1..NUM_OF_CHARS] of Integer = (
    $0643 {ARABIC LETTER KAF},
    $06CC {ARABIC LETTER FARSI YEH}
  );
var
  i: Integer;
  ReplaceChar: Boolean;
begin
  //Don't check the Win32Platform variable
  Result := Str;
  for i := 1 to Length(OldCharCodes) do
  begin
    ReplaceChar := True;
    if ReplaceChar then
      Result := Tnt_WideStringReplace(Result, WideChar(OldCharCodes[i]), WideChar(NewCharCodes[i]), [rfReplaceAll, rfIgnoreCase]);
  end;
end;

function GetStaticText(ResID: Integer): WideString;
var
  ResStringRec: TResStringRec;
begin
  ResStringRec.Identifier := ResID;
  ResStringRec.Module := @HInstance;
  Result := ReplaceInvalidUnicodeChars(WideLoadResString(@ResStringRec));
end;

procedure GetCharMapTablesList(List: TTntStrings);
begin
  List.Clear;
  List.Append(GetStaticText(1));  //'ÝÇÑÓí');  --> But with ARABIC LETTER FARSI YEH unicode character
  List.Append(GetStaticText(2));  //'CAPITAL English');
  List.Append(GetStaticText(3));  //'Small English');
end;

function FindCharMapEntry(CharCode: Widechar;
  out CharMapEntry: TCharMapEntry; out CanBeMappedByUser: Boolean): Boolean;
var
  i: Integer;
begin
  //EnglishCapitalCharMapTable
  for i := 1 to High(EnglishCapitalCharMapTable) do
  begin
    if EnglishCapitalCharMapTable[i].Unicode = CharCode then
    begin
      CharMapEntry := EnglishCapitalCharMapTable[i];
      Result := True;
      CanBeMappedByUser := True;
      Exit;
    end;
  end;
  //EnglishCharMapTable
  for i := 1 to High(EnglishCharMapTable) do
  begin
    if EnglishCharMapTable[i].Unicode = CharCode then
    begin
      CharMapEntry := EnglishCharMapTable[i];
      Result := True;
      CanBeMappedByUser := True;
      Exit;
    end;
  end;
  //FarsiCharMapTable
  for i := 1 to High(FarsiCharMapTable) do
  begin
    if FarsiCharMapTable[i].Unicode = CharCode then
    begin
      CharMapEntry := FarsiCharMapTable[i];
      CanBeMappedByUser := False;
      Result := True;
      Exit;
    end;
  end;
  Result := False;
end;

function FindCharFileName(CharCode: WideChar;
  var FileName: ShortString; var CanBeMappedByUser: Boolean): Boolean;
var
  CharMapEntry: TCharMapEntry;
begin
  Result := False;

  if FindCharMapEntry(CharCode, CharMapEntry, CanBeMappedByUser) then
  begin
    FileName := CharMapEntry.FileName;
    Result := True;
  end;
end;

procedure GetCharTableCharacters(CharTableName: WideString; List: TTntStrings);
var
  i: Integer;
begin
  List.Clear;
  if WideSameStr(CharTableName, GetStaticText(2) {'CAPITAL English'}) then
  begin
    for i := 1 to High(EnglishCapitalCharMapTable) do
      List.Append(EnglishCapitalCharMapTable[i].Unicode);
  end
  else if WideSameStr(CharTableName, GetStaticText(3) {'Small English'}) then
  begin
    for i := 1 to High(EnglishCharMapTable) do
      List.Append(EnglishCharMapTable[i].Unicode);
  end
  else if WideSameStr(CharTableName, GetStaticText(1) {'ÝÇÑÓí' --> But with ARABIC LETTER FARSI YEH unicode character}) then
  begin
    for i := 1 to High(FarsiCharMapTable) do
      List.Append(FarsiCharMapTable[i].Unicode);
  end;
end;

end.
