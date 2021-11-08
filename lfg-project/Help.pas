unit Help;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  ProcsUnit, Windows, ShellAPI, Dialogs, TntDialogs, Classes, Language,
  TntSystem, SoundDialogs;

  procedure GetAvailableHelpLanguages(HelpLangList: TStrings);
  procedure ShowHelpFile(const Language: String);
  function HelpExists(const Language: String): Boolean;

  procedure SetLanguage(LanguageInfo: TLanguageInfo; LangInstance: THandle);

implementation

uses
  MainUnit, SysUtils;

const
//  STATIC_LANG_RESID_START_NUM = 6500;  --> Not applicable here
  DYNAMIC_LANG_RESID_START_NUM = 6750;
  DYNAMIC_TEXTS_COUNT = 1;

var
  Dyn_Texts: array[1..DYNAMIC_TEXTS_COUNT] of WideString;

procedure GetAvailableHelpLanguages(HelpLangList: TStrings);
var
  FSR:TSearchRec;
begin
  HelpLangList.Clear;

  if FindFirst(ApplicationPath + HELP_FOLDER_NAME + '\*.*', faAnyFile, FSR)=0 then
  begin
    repeat
      if ((FSR.Attr and faSysFile)=0) and
         ((FSR.Attr and faSymLink)=0) and
         ((FSR.Attr and faVolumeID)=0) then
      begin
        if (FSR.Attr and faDirectory)=0 then
        begin
          if (LowerCase(ExtractFileExt(FSR.Name)) = '.pdf') or
             (LowerCase(ExtractFileExt(FSR.Name)) = '.exe') then
          begin
            if HelpLangList.IndexOf(Procs.ExtractFileNameWithoutExt(FSR.Name)) < 0 then
              HelpLangList.Append(Procs.ExtractFileNameWithoutExt(FSR.Name));
          end;
        end;
      end;
    until FindNext(FSR)<>0;
  end;
  SysUtils.FindClose(FSR);
end;

procedure ShowHelpFile(const Language: String);
var
  HelpPath: String;
  Help_File_Err_Msg: WideString;
begin
  Help_File_Err_Msg := Dyn_Texts[1];  //'Help file not found.';

  HelpPath := ApplicationPath + HELP_FOLDER_NAME + '\';

  if ( Length(Procs.GetAssociation('.pdf')) > 0 ) and
     FileExists(HelpPath + Language + '.pdf') then
  begin
    if ShellExecute(MainForm.Handle, 'open', PChar(HelpPath + Language + '.pdf'), nil, nil, SW_SHOW) <= 32 then
    begin
      if FileExists(HelpPath + Language + '.exe') then
        WinExec(PChar(HelpPath + Language + '.exe'), SW_SHOW)
      else
        WideMessageDlgSoundTop(Help_File_Err_Msg, mtCustom, [mbOK], 0);
    end;
  end
  else if FileExists(HelpPath + Language + '.exe') then
      WinExec(PChar(HelpPath + Language + '.exe'), SW_SHOW)
  else
    WideMessageDlgSoundTop(Help_File_Err_Msg, mtCustom, [mbOK], 0);
end;

function HelpExists(const Language: String): Boolean;
var
  HelpList: TStringList;
begin
  Result := False;
  HelpList := TStringList.Create;
  try
    GetAvailableHelpLanguages(HelpList);
    HelpList.CaseSensitive := False;
    Result := HelpList.IndexOf(Language) >= 0;
    HelpList.Free;
  except
    HelpList.Free;
  end;
end;

//===========================================================================
//***************************************************************************
//Multilanguage
//***************************************************************************
//===========================================================================
procedure SetDynamicTexts(LangInstance: THandle);  //Forward procedure declaration

  procedure SetDefaultDynamicTexts;
  begin
    Dyn_Texts[1] := 'Help file not found.';
  end;

var
  i: Integer;
  S: WideString;
  ResStringRec: TResStringRec;
begin
  if LangInstance = 0 then
  begin
    SetDefaultDynamicTexts;
    Exit;
  end;

  ResStringRec.Module := @LangInstance;
  for i := 1 to DYNAMIC_TEXTS_COUNT do
  begin
    ResStringRec.Identifier := i + DYNAMIC_LANG_RESID_START_NUM;
    S := MainForm.ReplaceInvalidUnicodeChars(WideLoadResString(@ResStringRec));
    if Length(S) > 0 then
      Dyn_Texts[i] := S;
  end;
end;

procedure SetLanguage(LanguageInfo: TLanguageInfo; LangInstance: THandle);
begin
  //No static texts are available.
  //////////////////////////////
  SetDynamicTexts(LangInstance);
  //////////////////////////////
//  if LangInstance = 0 then
//    Exit;
end;

//===========================================================================
//***************************************************************************
//***************************************************************************
//===========================================================================

end.
