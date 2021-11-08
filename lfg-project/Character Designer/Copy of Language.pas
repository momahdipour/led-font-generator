unit Language;

interface

uses
  Graphics, Classes, SysUtils, Windows, TntDialogs, Dialogs, TntSystem;

const
  LANGUAGES_FOLDER_NAME = 'Languages';

type
  TLanguageInfo = record
    LanguageName: WideString;
    Revision: ShortString;
    Author: WideString;
    Description: WideString;
    Icon: TIcon;
    FileVersion: ShortString;
    RightToLeft: Boolean;
    FlipControls: Boolean;
  end;

  TGetLanguageInfo = procedure (var LanguageInfo: TLanguageInfo);

  TLanguageList = array of TLanguageInfo;
  function SwitchLanguage(const SelectedLanguageInfo: TLanguageInfo;
    Prompt: Boolean = True): Boolean;
  function SwitchLanguageInfo(const SelectedLanguageInfo: TLanguageInfo): Boolean;

  function TranslateWord(const WordToTranslate: WideString): WideString;

var
  ActiveLangInstance: THandle = Cardinal(nil);
  ActiveLanguage: TLanguageInfo;

implementation

uses
  MainUnit;

const
  InternalLanguageInfo: TLanguageInfo = (
        LanguageName : 'English (Default)';
        Revision : '2.0';
        Author : 'LCD Designer Developers';
        Description : '(Internal)';
        FileVersion : '2.0.0.0';
        RightToLeft : False
        );

var
  GetLanguageInfo: TGetLanguageInfo;

procedure GetFullList(const Path:String; FileList: TStringList);
var
  List:TStringList;
  FSR:TSearchRec;
  i:Integer;
begin
  List:=TStringList.Create;
  List.Clear;
  if FindFirst(Path+'\*.*', faAnyFile, FSR)=0 then
  begin
    repeat
      if ((FSR.Attr and faSysFile)=0) and
         ((FSR.Attr and faSymLink)=0) and
         ((FSR.Attr and faVolumeID)=0) then
      begin
        if (FSR.Attr and faDirectory)=0 then
        begin
          if LowerCase(ExtractFileExt(FSR.Name))='.dll' then
            List.Append(Path+'\'+FSR.Name);
        end
        else if FSR.Name[1]<>'.' then
          List.Append(Path+'\'+FSR.Name);
      end;
    until FindNext(FSR)<>0;
  end;
  SysUtils.FindClose(FSR);
  for i:=0 to List.Count-1 do
  begin
    if DirectoryExists(List.Strings[i]) then
      GetFullList(List.Strings[i], FileList)
    else
      FileList.Append(List.Strings[i]);
  end;
end;

function IsCompatibleLanguage(const LanguageVersion: ShortString): Boolean;
begin
  Result := LanguageVersion = '2.0.0.0';
end;

procedure InvokeLanguageProcedures(LanguageInfo: TLanguageInfo; Handle: THandle);
begin
  ///////
  //Forms
  ///////
  MainForm.SetLanguage(LanguageInfo, Handle);

  ///////
  //Units
  ///////
end;

function SameLanguageInfos(const LangInfo1, LangInfo2: TLanguageInfo): Boolean;
begin
  Result := WideSameStr(LangInfo1.LanguageName, LangInfo2.LanguageName) and
            (LangInfo1.Revision = LangInfo2.Revision) and
            WideSameStr(LangInfo1.Author, LangInfo2.Author) and
            WideSameStr(LangInfo1.Description, LangInfo2.Description) and
            (LangInfo1.FileVersion = LangInfo2.FileVersion) and
            (LangInfo1.RightToLeft = LangInfo2.RightToLeft) and
            (LangInfo1.FlipControls = LangInfo2.FlipControls);
end;

function SwitchLanguageInfo(const SelectedLanguageInfo: TLanguageInfo): Boolean;
  function FindModuleName(var ModuleName: String): Boolean;

  var
    ModuleList: TStringList;
    Handle: THandle;
    LanguageInfo: TLanguageInfo;
    i: Integer;
  begin
    Result := False;

    ModuleList := TStringList.Create;
    ModuleList.Clear;
    GetFullList(ApplicationPath + LANGUAGES_FOLDER_NAME, ModuleList);

    for i:=0 to ModuleList.Count - 1 do
    begin
      Handle := LoadLibrary(PChar(ModuleList.Strings[i]));
      if Handle <> 0 then
      begin
        try
          @GetLanguageInfo := Windows.GetProcAddress(Handle, 'GetLanguageInfo');
          if (@GetLanguageInfo <> nil) then
          begin
            GetLanguageInfo(LanguageInfo);
            if IsCompatibleLanguage(LanguageInfo.FileVersion) then
            begin
              if SameLanguageInfos(LanguageInfo, SelectedLanguageInfo) then
              begin
                Result := True;
                ModuleName := ModuleList.Strings[i];
                ModuleList.Free;
                Exit;
              end;
            end;
          end;
          FreeLibrary(Handle);
        except
          FreeLibrary(Handle);
        end;
      end;
    end;
    ModuleList.Free;
  end;

var
  ModuleName: String;
  Handle: THandle;
begin
  if SameLanguageInfos(SelectedLanguageInfo, InternalLanguageInfo) then
  begin
    if ActiveLangInstance <> 0 then
      FreeLibrary(ActiveLangInstance);
    ActiveLanguage := InternalLanguageInfo;
    ActiveLangInstance := 0;
    Result := True;
    Exit;
  end;

  Result := FindModuleName(ModuleName);
  if not Result then
    Exit;

  ActiveLanguage := SelectedLanguageInfo;
  Handle := LoadLibrary(PChar(ModuleName));
  FreeLibrary(ActiveLangInstance);
  ActiveLangInstance := Handle;
end;

function SwitchLanguage(const SelectedLanguageInfo: TLanguageInfo; Prompt: Boolean): Boolean;
var
  OldLanguageInfo: TLanguageInfo;
begin
  OldLanguageInfo:= ActiveLanguage;
  Result := SwitchLanguageInfo(SelectedLanguageInfo);
  if not Result then
    Exit;
  InvokeLanguageProcedures(SelectedLanguageInfo, ActiveLangInstance);

  if SameLanguageInfos(SelectedLanguageInfo, InternalLanguageInfo) and
     Prompt and
     not SameLanguageInfos(OldLanguageInfo, InternalLanguageInfo) then
    WideShowMessage('You must restart the application to these language changes take effect.');
end;

function TranslateWord(const WordToTranslate: WideString): WideString;

  //TranslationInfo format:
  //Word1|Translation1|Word2|Translation2...
  //Comparison is NOT case sensitive.
  function FindTranslation(const TranslationInfo: WideString; var Translation: WideString): Boolean;
  var
    Word1: WideString;
    i, j: Integer;
    SkipWord: Boolean;
  begin
    Word1 := '';
    SkipWord := False;
    for i:=1 to Length(TranslationInfo) do
    begin
      if TranslationInfo[i]=  '|' then
      begin
        if SkipWord then
        begin
          Word1 := '';
          SkipWord := False;
        end
        else
        begin
          if WideSameText(Word1, WordToTranslate) then
            Break;
          SkipWord := True;
          Word1 := '';
        end;
      end
      else
        Word1 := Word1 + TranslationInfo[i];
    end;
    if i < Length(TranslationInfo) then
    begin
      Result := True;
      Translation := '';
      for j := i + 1 to Length(TranslationInfo) do
      begin
        if TranslationInfo[j] = '|' then
          Exit;
        Translation := Translation + TranslationInfo[j];
      end;
    end
    else
      Result := False;
  end;

var
  TranslationInfo: WideString;
  ResStringRec: TResStringRec;
begin
  if ActiveLangInstance = 0 then
  begin
    Result := WordToTranslate;
    Exit;
  end;

  //Read translation info from language module
  ResStringRec.Identifier := EXTRA_LANG_INFO_RESID_START_NUM;
  ResStringRec.Module := @ActiveLangInstance;
  TranslationInfo := WideLoadResString(@ResStringRec);

  //Translate the word
  if not FindTranslation(TranslationInfo, Result) then
    Result := WordToTranslate;
end;

initialization
  ActiveLangInstance := 0;
  ActiveLanguage := InternalLanguageInfo;

end.
