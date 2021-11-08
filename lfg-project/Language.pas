unit Language;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Classes, SysUtils, TntDialogs, Dialogs,
  TntSystem, Forms, Controls, ImgList, LCDConsts, SoundDialogs;

const
  LANGUAGES_FOLDER_NAME = 'Languages';

type

  {TLanguageInfo}
  {If you change this struct, the changes may also be necessary to be applied to:
    InternalLanguageInfo (Language.pas),
    SameLanguageInfos procedure (Language.pas),
    Reading and writing the language settings from/to the registry,
    UpdateRealTimeRegistrySettings (MainUnit.pas),
    ChooseLanguageForm,
    and maybe other places in this project as well as the CharacterDesigner
    project and English.dll/Farsi.dll projects.
  }
  TLanguageInfo = record
    LanguageName: WideString;
    InternationalName: ShortString;
    Revision: ShortString;
    Author: WideString;
    Description: WideString;
    FileVersion: ShortString;
    RightToLeft: Boolean;
    FlipControls: Boolean;
  end;

  TLanguageOptions = record
    ApplyRTLToAppearance: Boolean;
    //----------------------------
    LanguageOptionsChanged: Boolean;
  end;

  TGetLanguageInfo = procedure (var LanguageInfo: TLanguageInfo);

  TLanguageList = array of TLanguageInfo;
  procedure GetAvailableLanguages(var LanguageList: TLanguageList;
    LanguageImages: TImageList);
  function SwitchLanguage(const SelectedLanguageInfo: TLanguageInfo;
    const SelectedLanguageOptions: TLanguageOptions;
    Prompt: Boolean = True;
    ForceApplyLanguageOptions: Boolean = False): Boolean;
  function SwitchLanguageInfo(const SelectedLanguageInfo: TLanguageInfo;
    const SelectedLanguageOptions: TLanguageOptions): Boolean;

  function TranslateWord(const WordToTranslate: WideString): WideString;

var
  ActiveLangInstance: THandle = Cardinal(nil);
  ActiveLanguage: TLanguageInfo;
  ActiveLanguageOptions: TLanguageOptions;

implementation

uses
  MainUnit, CharacterMapFormUnit,
  CodeToLCDFormUnit, ErrorLogFormUnit, ExportLCDFormUnit,
  ImportGraphicsFormUnit, LCDAnimatorFormUnit,
  LCDPicturePreviewFormUnit, LibraryOrganizerFormUnit, NewDesignFormUnit,
  LCDOptionsUnit, ProgramOptionsFormUnit, Help, FullScreenFormUnit;

const
  InternalLanguageInfo: TLanguageInfo = (
        LanguageName : 'English (Default)';
        InternationalName : 'Default program language (English)';
        Revision : '2.0';
        Author : 'LCD Designer Developers (http://www.lcddesigner.com)';
        Description : 'Default';
        FileVersion : '2.0.0.0';
        RightToLeft : False
        );

  InternalLanguageOptions: TLanguageOptions = (
        ApplyRTLToAppearance : True
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

procedure GetAvailableLanguages(var LanguageList: TLanguageList;
  LanguageImages: TImageList);
var
  ModuleList: TStringList;
  Handle: THandle;
  LanguageInfo: TLanguageInfo;
  i: Integer;
begin
  //LanguageList array already is cleared in ChooseLanguageForm.OnClose event
  ModuleList := TStringList.Create;
  ModuleList.Clear;
  GetFullList(ApplicationPath + LANGUAGES_FOLDER_NAME, ModuleList);

  //Add internal language to the available languages list
  SetLength(LanguageList, 1);
  LanguageList[0] := InternalLanguageInfo;
  LanguageImages.GetInstRes(HInstance, rtBitmap, 'INTERNAL_LANG_FLAG',
                            LanguageImages.Width, [lrTransparent], RGB(255, 0, 255));

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
            GetLanguageInfo(LanguageInfo);
            SetLength(LanguageList, Length(LanguageList) + 1);
            LanguageList[Length(LanguageList) - 1] := LanguageInfo;
            if not LanguageImages.GetInstRes(Handle, rtBitmap, 'LANGUAGE_FLAG',
                                             LanguageImages.Width, [lrTransparent], RGB(255, 0, 255)) then
              LanguageImages.GetInstRes(HInstance, rtBitmap, 'INTERNAL_LANG_NO_LANG_FLAG',
                                        LanguageImages.Width, [lrTransparent], RGB(255, 0, 255));
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

procedure InvokeLanguageProcedures(LanguageInfo: TLanguageInfo;
  LanguageOptions: TLanguageOptions; Handle: THandle);
begin
  ///////
  //Forms
  ///////
  MainForm.SetLanguage(LanguageInfo, LanguageOptions, Handle);
//  CharacterMapForm.SetLanguage(LanguageInfo, LanguageOptions, Handle);
  CodeToLCDForm.SetLanguage(LanguageInfo, LanguageOptions, Handle);
  ErrorLogForm.SetLanguage(LanguageInfo, LanguageOptions, Handle);
  ExportLCDForm.SetLanguage(LanguageInfo, LanguageOptions, Handle);
  ImportGraphicsForm.SetLanguage(LanguageInfo, LanguageOptions, Handle);
//  LCDAnimatorForm.SetLanguage(LanguageInfo, LanguageOptions, Handle);
  LCDOptionsForm.SetLanguage(LanguageInfo, LanguageOptions, Handle);
  LCDPicturePreviewForm.SetLanguage(LanguageInfo, LanguageOptions, Handle);
//  LibraryOrganizerForm.SetLanguage(LanguageInfo, LanguageOptions, Handle);
//  NewDesignForm.SetLanguage(LanguageInfo, LanguageOptions, Handle);
  ProgramOptionsForm.SetLanguage(LanguageInfo, LanguageOptions, Handle);

//  if Assigned(FullScreenForm) then  --> The form is autocreated at application startup
//  FullScreenForm.SetLanguage(LanguageInfo, LanguageOptions, Handle);

  ///////
  //Units
  ///////
  Help.SetLanguage(LanguageInfo, Handle);
end;

function SameLanguageInfos(const LangInfo1, LangInfo2: TLanguageInfo): Boolean;
begin
  Result := WideSameStr(LangInfo1.LanguageName, LangInfo2.LanguageName) and
            (LangInfo1.InternationalName = LangInfo2.InternationalName) and
            (LangInfo1.Revision = LangInfo2.Revision) and
            WideSameStr(LangInfo1.Author, LangInfo2.Author) and
            WideSameStr(LangInfo1.Description, LangInfo2.Description) and
            (LangInfo1.FileVersion = LangInfo2.FileVersion) and
            (LangInfo1.RightToLeft = LangInfo2.RightToLeft) and
            (LangInfo1.FlipControls = LangInfo2.FlipControls);
end;

function SameLanguageOptions(const LangOptions1, LangOptions2: TLanguageOptions): Boolean;
begin
  Result := (LangOptions1.ApplyRTLToAppearance = LangOptions2.ApplyRTLToAppearance);
end;

function SwitchLanguageInfo(const SelectedLanguageInfo: TLanguageInfo;
  const SelectedLanguageOptions: TLanguageOptions): Boolean;

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

  procedure UpdateApplicationDirection(LanguageInfo: TLanguageInfo;
    LanguageOptions: TLanguageOptions);
  begin
    //Right-to-Left takes effect
    SysLocale.MiddleEast := LanguageInfo.RightToLeft;
    if LanguageInfo.RightToLeft then
    begin
      if LanguageInfo.FlipControls and LanguageOptions.ApplyRTLToAppearance then
        Application.BiDiMode := bdRightToLeft
      else
        Application.BiDiMode := bdRightToLeftReadingOnly;
    end
    else
      Application.BiDiMode := bdLeftToRight;
    Application.ProcessMessages;
    ////////////////////////////
  end;

var
  ModuleName: String;
  Handle: THandle;
  LanguageOptionsChanged: Boolean;
begin
  //////////////////////////////
  if SameLanguageInfos(SelectedLanguageInfo, InternalLanguageInfo) then
  begin
    if ActiveLangInstance <> 0 then
      FreeLibrary(ActiveLangInstance);
    ActiveLanguage := InternalLanguageInfo;
    ActiveLanguageOptions := SelectedLanguageOptions;
    ActiveLangInstance := 0;
    UpdateApplicationDirection(SelectedLanguageInfo, SelectedLanguageOptions);
    Result := True;
    Exit;
  end;

  Result := FindModuleName(ModuleName);
  if not Result then
    Exit;

  UpdateApplicationDirection(SelectedLanguageInfo, SelectedLanguageOptions);

  LanguageOptionsChanged := not (SameLanguageOptions(ActiveLanguageOptions, SelectedLanguageOptions) and
                                  SameLanguageInfos(ActiveLanguage, SelectedLanguageInfo));
  ActiveLanguageOptions := SelectedLanguageOptions;
  ActiveLanguageOptions.LanguageOptionsChanged := LanguageOptionsChanged;

  ActiveLanguage := SelectedLanguageInfo;

  Handle := LoadLibrary(PChar(ModuleName));
  FreeLibrary(ActiveLangInstance);
  ActiveLangInstance := Handle;
end;

function SwitchLanguage(const SelectedLanguageInfo: TLanguageInfo;
  const SelectedLanguageOptions: TLanguageOptions; Prompt: Boolean;
  ForceApplyLanguageOptions: Boolean): Boolean;
var
  OldLanguageInfo: TLanguageInfo;
  OldLanguageOptions: TLanguageOptions;
  ShowPrompt: Boolean;
  SaveAppBiDiMode: TBiDiMode;
begin
  OldLanguageInfo:= ActiveLanguage;
  OldLanguageOptions := ActiveLanguageOptions;
  Result := SwitchLanguageInfo(SelectedLanguageInfo, SelectedLanguageOptions);
  if not Result then
    Exit;

  if ForceApplyLanguageOptions then
    ActiveLanguageOptions.LanguageOptionsChanged := True;
  InvokeLanguageProcedures(ActiveLanguage, ActiveLanguageOptions, ActiveLangInstance);
  ActiveLanguageOptions.LanguageOptionsChanged := False;

  ShowPrompt := SameLanguageInfos(SelectedLanguageInfo, InternalLanguageInfo) and
                not SameLanguageInfos(OldLanguageInfo, InternalLanguageInfo);
  ShowPrompt := ShowPrompt or
                (
                not SameLanguageOptions(OldLanguageOptions, ActiveLanguageOptions) or
                (OldLanguageInfo.RightToLeft <> ActiveLanguage.RightToLeft)
                );

  if ShowPrompt and Prompt then
  begin
    //Always show in English and Left-to-Right reading aligment
    SaveAppBiDiMode := Application.BiDiMode;
    try
      Application.BiDiMode := bdLeftToRight;
      MessageDlgSoundTop('You must restart the application to some language changes take effect.', mtInformation, [mbOK], 0);
    finally
      Application.BiDiMode := SaveAppBiDiMode;
    end;
  end;
  Application.MainForm.BringToFront;
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
  TranslationInfo := MainForm.ReplaceInvalidUnicodeChars(WideLoadResString(@ResStringRec));

  //Translate the word
  if not FindTranslation(TranslationInfo, Result) then
    Result := WordToTranslate;
end;

initialization
  ActiveLangInstance := 0;
  ActiveLanguage := InternalLanguageInfo;
  ActiveLanguageOptions := InternalLanguageOptions;

end.
