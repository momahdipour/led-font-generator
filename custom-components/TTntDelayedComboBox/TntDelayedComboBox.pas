unit TntDelayedComboBox;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, TntStdCtrls, ExtCtrls;

type
  TTntDelayedComboBox = class(TTntComboBox)
  private
    { Private declarations }
    DelayTimer: TTimer;
    FChangeDelay: Cardinal;  //in millisecinds
    FOnDelayedChange: TNotifyEvent;
    procedure SetChangeDelay(const AChangeDelay: Cardinal);
    procedure DelayTimerReached(Sender: TObject);
  protected
    { Protected declarations }
    procedure Change; override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure CancelPendingDelay;
  published
    { Published declarations }
    property ChangeDelay: Cardinal read FChangeDelay write SetChangeDelay;  //in milliseconds
    property OnDelayedChange: TNotifyEvent read FOnDelayedChange write FOnDelayedChange;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('[LCD Designer]', [TTntDelayedComboBox]);
end;

{ TTntDelayedComboBox }

procedure TTntDelayedComboBox.CancelPendingDelay;
begin
  DelayTimer.Enabled := False;
end;

procedure TTntDelayedComboBox.Change;
begin
  inherited;
  if csLoading in ComponentState then
    Exit;
  DelayTimer.Enabled := False;
  DelayTimer.Enabled := True;
end;

constructor TTntDelayedComboBox.Create(AOwner: TComponent);
begin
  inherited;

  FChangeDelay := 500;

  DelayTimer := TTimer.Create(Self);
  DelayTimer.Enabled := False;
  DelayTimer.OnTimer := DelayTimerReached;
  DelayTimer.Interval := FChangeDelay;
end;

procedure TTntDelayedComboBox.DelayTimerReached(Sender: TObject);
begin
  DelayTimer.Enabled := False;
  if Assigned(FOnDelayedChange) then
    FOnDelayedChange(Self);
end;

destructor TTntDelayedComboBox.Destroy;
begin
  DelayTimer.Enabled := False;
  DelayTimer.Free;

  inherited;
end;

procedure TTntDelayedComboBox.SetChangeDelay(const AChangeDelay: Cardinal);
var
  TimerEnabled: Boolean;
begin
  TimerEnabled := DelayTimer.Enabled;
  if FChangeDelay <> AChangeDelay then
    DelayTimer.Enabled := False;
  FChangeDelay := AChangeDelay;
  DelayTimer.Interval := FChangeDelay;
  DelayTimer.Enabled := TimerEnabled;
end;

end.
