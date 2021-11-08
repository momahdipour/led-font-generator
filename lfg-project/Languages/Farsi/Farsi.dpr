library Farsi;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }




{$R 'Translation\EnglishTranslation.res' 'Translation\EnglishTranslation.rc'}
{$R 'Translation\Images\FarsiImages.res' 'Translation\Images\FarsiImages.rc'}

const
  LANGUAGES_FILE_VERSION = '2.0.0.0';

{$R *.res}

type
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

procedure GetLanguageInfo(var LanguageInfo: TLanguageInfo);
begin
  with LanguageInfo do
  begin
    FileVersion := LANGUAGES_FILE_VERSION;
    LanguageName := '›«—”Ì';
    InternationalName := 'Farsi';
    Revision := '2.0';
    Author := 'LCD Designer Developers (http://www.lcddesigner.com)';
    Description := 'Farsi standard user interface';
    RightToLeft := True;
    FlipControls := True;
  end;
end;

exports
  GetLanguageInfo;

begin
end.
