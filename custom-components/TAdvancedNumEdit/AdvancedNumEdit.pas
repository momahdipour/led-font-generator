unit AdvancedNumEdit;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, Windows, StrUtils;

type
  TAdvancedNumEdit = class(TEdit)
  private
    { Private declarations }
    FPrefix: String;
    FSuffix: String;
    FMaskActive: Boolean;
    FMaskedChangeEvent: TNotifyEvent;
    FProperChange: TNotifyEvent;
    FValue: Integer;
    FMin: Integer;
    FMax: Integer;
    function IsValidInt(const S: String): Boolean;
    procedure SetPrefix(APrefix: String);
    procedure SetSuffix(ASuffix: String);
    procedure AdvancedEditKeyPress(Sender: TObject; var Key: Char);
    procedure SetValue(AValue: Integer);
    procedure SetMaskActive(AMaskActive: Boolean);
  protected
    { Protected declarations }
    procedure KeyPress(var Key: Char); override;
    procedure DoExit; override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure RefreshText;
  published
    { Published declarations }
    property Prefix: String read FPrefix write SetPrefix stored True;
    property Suffix: String read FSuffix write SetSuffix stored True;
    property Min: Integer read FMin write FMin;
    property Max: Integer read FMax write FMax;
    property Value: Integer read FValue write SetValue;
    property MaskActive: Boolean read FMaskActive write SetMaskActive;
    property OnMaskedChange: TNotifyEvent read FMaskedChangeEvent write FMaskedChangeEvent;
    property OnProperChange: TNotifyEvent read FProperChange write FProperChange;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('[LCD Designer]', [TAdvancedNumEdit]);
end;

{ TTntAdvancedNumEdit }

constructor TAdvancedNumEdit.Create(AOwner: TComponent);
begin
  inherited;

  FMaskedChangeEvent:=nil;
  FMaskActive := True;
  FPrefix:='';
  FSuffix:='%';
  FMin := 0;
  FMax := 10;
  FValue := 0;
  RefreshText;
end;

destructor TAdvancedNumEdit.Destroy;
begin

  inherited;
end;

function TAdvancedNumEdit.IsValidInt(const S: String): Boolean;
begin
  try
    StrToInt(S);
    Result := True;
  except
    Result := False;
  end;
end;

procedure TAdvancedNumEdit.KeyPress(var Key: Char);
begin
  inherited;
  AdvancedEditKeyPress(Self, Key);
end;

procedure TAdvancedNumEdit.RefreshText;
begin
  Self.Text := FPrefix + IntToStr(FValue) + FSuffix;
end;

procedure TAdvancedNumEdit.SetMaskActive(AMaskActive: Boolean);
var
  Key: Char;
begin
  if not FMaskActive and AMaskActive then
  begin
    Key := Chr(VK_RETURN);
    AdvancedEditKeyPress(Self, Key);
  end;
  FMaskActive := AMaskActive;
end;

procedure TAdvancedNumEdit.SetPrefix(APrefix: String);
begin
  FPrefix:=APrefix;
  RefreshText;
end;

procedure TAdvancedNumEdit.SetSuffix(ASuffix: String);
begin
  FSuffix:=ASuffix;
  RefreshText;
end;

procedure TAdvancedNumEdit.SetValue(AValue: Integer);
begin
  if FValue = AValue then
    Exit;
  FValue := AValue;
  RefreshText;
end;

procedure TAdvancedNumEdit.AdvancedEditKeyPress(Sender: TObject;
  var Key: Char);
var
  ZoomValue, OldValue: Integer;
  TextValue: String;
begin
  if FMaskActive then
  begin
    if Ord(Key) = VK_RETURN then
    begin
      Key := Chr(0);
      TextValue := Trim(Self.Text);
      //Process prefix
      if (Length(TextValue) > Length(FPrefix)) and
         (LowerCase(LeftStr(TextValue, Length(FPrefix))) = LowerCase(FPrefix)) then
        TextValue := RightStr(TextValue, Length(TextValue) - Length(FPrefix))
      else if (Length(TextValue) > Length(TrimRight(FPrefix))) and
              (LowerCase(LeftStr(TextValue, Length(TrimRight(FPrefix)))) = LowerCase(TrimRight(FPrefix))) then
        TextValue := RightStr(TextValue, Length(TextValue) - Length(TrimRight(FPrefix)));
      //Process suffix
      if (Length(TextValue) > Length(FSuffix)) and
         (LowerCase(RightStr(TextValue, Length(FSuffix))) = LowerCase(FSuffix)) then
        TextValue := LeftStr(TextValue, Length(TextValue) - Length(FSuffix))
      else if (Length(TextValue) > Length(TrimLeft(FSuffix))) and
              (LowerCase(RightStr(TextValue, Length(TrimLeft(FSuffix)))) = LowerCase(TrimLeft(FSuffix))) then
        TextValue := LeftStr(TextValue, Length(TrimLeft(TextValue)) - Length(TrimLeft(FSuffix)));

      if IsValidInt(TextValue) then
        ZoomValue:=StrToInt(TextValue)
      else
        ZoomValue:=FValue;
      if ZoomValue > FMax then
        ZoomValue:=FMax
      else if ZoomValue < FMin then
        ZoomValue:=FMin;
      OldValue := FValue;
      FValue := ZoomValue;
      RefreshText;
      if (FValue <> OldValue) and Assigned(FMaskedChangeEvent) then
        FMaskedChangeEvent(Self);
    end
    else if Ord(Key) = VK_ESCAPE then
    begin
      Key := Chr(0);
      RefreshText;
    end;
  end;
end;

procedure TAdvancedNumEdit.DoExit;
var
  Key: Char;
begin
  inherited;
  Key := Chr(VK_RETURN);
  AdvancedEditKeyPress(Self, Key);
end;

end.
