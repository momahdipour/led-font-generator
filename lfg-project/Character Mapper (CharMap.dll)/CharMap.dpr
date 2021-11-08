library CharMap;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

{$R 'CharTable Names Resource\EnglishTranslation.res' 'CharTable Names Resource\EnglishTranslation.rc'}

uses
  CharMapTables in 'CharMapTables.pas';

{$R *.res}

function IsMultiByteChar(CharCode: WideChar): Boolean;
var
  S: String;
begin
  S := WideChar(CharCode);
  Result := Integer(S[1]) <> Integer(CharCode);
end;

function MapCharToFile(CharCode: WideChar; var CanBeMappedByUser: Boolean): ShortString;
begin
  if FindCharFileName(CharCode, Result, CanBeMappedByUser) then
    Exit;

  //Other characters
  if IsMultiByteChar(CharCode) then
    Result := ''
  else
    Result := WideString(CharCode);  //Implicit conversion to ShortString
  CanBeMappedByUser := True;
end;

exports
  MapCharToFile,
  GetCharMapTablesList,
  GetCharTableCharacters,
  FindCharFileName;

begin
end.
