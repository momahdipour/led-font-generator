library EngTyper;

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

function TypeChar(LeftChar, MainChar, RightChar: Widechar;
  var ProperChar: Widechar; var RightToLeft: Boolean): Boolean;
begin
  Result := False;

  if Word(Mainchar) <= $00FF then
  begin
    ProperChar := MainChar;
    Result := True;
    RightToLeft := False;
  end;
end;

exports
  IsCompatible,
  GetVersion,
  TypeChar;

begin
end.
