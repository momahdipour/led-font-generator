unit PopupSpinEdit;

interface

uses
  SysUtils, Classes, Controls, ExtCtrls, StdCtrls, Buttons, TntButtons,
  TntComCtrls, TntStdCtrls, Forms, Types, Dialogs, ComCtrls, Windows, Messages;

type
  TPopupSpinEdit = class(TTntBitBtn)
  private
    { Private declarations }
    PopupForm: TForm;
    BackPanel: TPanel;
    FTrackBar: TTntTrackBar;
    FTitleLabel: TTntStaticText;

    FFullCaption: WideString;
    FAutoCaption: Boolean;
    FSuffix: WideString;
    FPrefix: WideString;
    FTitle: WideString;
    FMin: Integer;
    FMax: Integer;
    FOnChange: TNotifyEvent;

    DelayTimer: TTimer;
    FChangeDelay: Cardinal;  //in millisecinds
    FOnDelayedChange: TNotifyEvent;

    procedure SetChangeDelay(const AChangeDelay: Cardinal);
    procedure DelayTimerReached(Sender: TObject);

    procedure SetPrefix(APrefix: WideString);
    procedure SetSuffix(ASuffix: WideString);
    procedure SetTitle(ATitle: WideString);
    function GetTitle: WideString;
    procedure SetAutoCaption(AAutoCaption: Boolean);

    procedure TrackBarChange(Sender: TObject);
    procedure TrackBarKeyPress(Sender: TObject; var Key: Char);
    procedure PopupFormDeactivate(Sender: TObject);

    procedure PrepareFormLayout;
    procedure UpdateCaption;

    function GetMin: Integer;
    procedure SetMin(const AMin: Integer);
    function GetMax: Integer;
    procedure SetMax(const AMax: Integer);
    function GetPosition: Integer;
    procedure SetPosition(const APosition: Integer);
    function GetFrequncy: Integer;
    procedure SetFrequency(const AFrequncy: Integer);
    function GetLineSize: Integer;
    procedure SetLineSize(ALineSize: Integer);
    function GetThumbLength: Integer;
    function GetTickMarks: TTickMark;
    procedure SetThumbLength(const AThumbLength: Integer);
    procedure SetTickMarks(const ATickMarks: TTickMark);
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Click; override;
    procedure CancelPendingDelay;
  published
    { Published declarations }
    property Prefix: WideString read FPrefix write SetPrefix;
    property Suffix: WideString read FSuffix write SetSuffix;

    property AutoCaption: Boolean read FAutoCaption write SetAutoCaption;
    property FullCaption: WideString read FFullCaption;
    property Title: WideString read GetTitle write SetTitle;
    property Min: Integer read GetMin write SetMin;
    property Max: Integer read GetMax write SetMax;
    property Position: Integer read GetPosition write SetPosition;
    property Frequency: Integer read GetFrequncy write SetFrequency;
    property LineSize: Integer read GetLineSize write SetLineSize;
    property ThumbLength: Integer read GetThumbLength write SetThumbLength;
    property TickMarks: TTickMark read GetTickMarks write SetTickMarks;

    property TrackBar: TTntTrackBar read FTrackBar stored True;
    property TitleLable: TTntStaticText read FTitleLabel stored True;

    property ChangeDelay: Cardinal read FChangeDelay write SetChangeDelay;  //in milliseconds

    property OnChange: TNotifyEvent read FOnChange write FOnChange;
    property OnDelayedChange: TNotifyEvent read FOnDelayedChange write FOnDelayedChange;
  end;

procedure Register;

implementation

uses Math;

procedure Register;
begin
  RegisterComponents('[LCD Designer]', [TPopupSpinEdit]);
end;

{ TPopupSpinEdit }

procedure TPopupSpinEdit.CancelPendingDelay;
begin
  DelayTimer.Enabled := False;
end;

procedure TPopupSpinEdit.Click;
var
  P: TPoint;
begin
  inherited;
  if PopupForm.Showing then
    PopupForm.Hide
  else if Assigned(Self.Parent) then
  begin
    P := Self.Parent.ClientToScreen(Point(Self.Left, Self.Top));

    PrepareFormLayout;
    PopupForm.Show;
//    PopupForm.Hide;

    if (P.X + PopupForm.Width) <= Screen.Width then
      PopupForm.Left := P.X
    else
      PopupForm.Left := P.X - (PopupForm.Width - Self.Width);

    if (P.Y + Self.Height + PopupForm.Height) <= Screen.Height then
      PopupForm.Top := P.Y + Self.Height
    else
      PopupForm.Top := P.Y;

//    PrepareFormLayout;
//    PopupForm.Show;
    FTrackBar.SetFocus;
  end;
end;

constructor TPopupSpinEdit.Create(AOwner: TComponent);

  procedure PreparePopupForm;
  begin
    PopupForm := TForm.Create(Self);
    with PopupForm do
    begin
      BorderStyle := bsNone;
      BorderWidth := 1;
      Visible := False;
      FormStyle := fsStayOnTop;
      Font.Name := 'Tahoma';

      OnDeactivate := PopupFormDeactivate;
    end;
  end;

  procedure PrepareControls;
  begin
    BackPanel := TPanel.Create(Self);
    BackPanel.Parent := PopupForm;
    BackPanel.BevelInner := bvSpace;
    BackPanel.BevelOuter := bvNone;
    BackPanel.BorderStyle := bsSingle;

    FTitleLabel := TTntStaticText.Create(Self);
    FTitleLabel.Transparent := False;
    FTitleLabel.Parent := BackPanel;

    FTrackBar := TTntTrackBar.Create(Self);
    FTrackBar.TickStyle := tsManual;
    FTrackBar.Height := 30;
    FTrackBar.Width := 170;
    FTrackBar.OnChange := TrackBarChange;
    FTrackBar.OnKeyPress := TrackBarKeyPress;
    FTrackBar.Parent := BackPanel;
  end;

begin
  inherited;

  PreparePopupForm;
  PrepareControls;

  FPrefix := '';
  FSuffix := '%';
  FOnChange := nil;
  FAutoCaption := True;
  Title := 'Select value:';
  FMin := FTrackBar.Min;
  FMax := FTrackBar.Max;

  FChangeDelay := 500;

  DelayTimer := TTimer.Create(Self);
  DelayTimer.Enabled := False;
  DelayTimer.OnTimer := DelayTimerReached;
  DelayTimer.Interval := FChangeDelay;

  if csLoading in ComponentState then
    Exit;
  TrackBarChange(FTrackBar);
end;

procedure TPopupSpinEdit.DelayTimerReached(Sender: TObject);
begin
  if csLoading in ComponentState then
    Exit;
  DelayTimer.Enabled := False;
  if Assigned(FOnDelayedChange) then
    FOnDelayedChange(Self);
end;

destructor TPopupSpinEdit.Destroy;
begin
  DelayTimer.Enabled := False;
  DelayTimer.Free;

  FTrackBar.Free;
  TitleLable.Free;
  PopupForm.Free;

  inherited;
end;

function TPopupSpinEdit.GetFrequncy: Integer;
begin
  Result := FTrackBar.Frequency;
end;

function TPopupSpinEdit.GetLineSize: Integer;
begin
  Result := FTrackBar.LineSize;
end;

function TPopupSpinEdit.GetMax: Integer;
begin
  FMax := FTrackBar.Max;
  Result := FMax;
end;

function TPopupSpinEdit.GetMin: Integer;
begin
  FMin := FTrackBar.Min;
  Result := FMin;
end;

function TPopupSpinEdit.GetPosition: Integer;
begin
  Result := FTrackBar.Position;
end;

function TPopupSpinEdit.GetThumbLength: Integer;
begin
  Result := FTrackBar.ThumbLength;
end;

function TPopupSpinEdit.GetTickMarks: TTickMark;
begin
  Result := FTrackBar.TickMarks;
end;

function TPopupSpinEdit.GetTitle: WideString;
begin
  Result := FTitleLabel.Caption;
end;

procedure TPopupSpinEdit.PopupFormDeactivate(Sender: TObject);
begin
  PopupForm.Hide;
  SendMessage(FTrackBar.Handle, WM_LBUTTONUP, 0, MakeWord(Mouse.CursorPos.X, Mouse.CursorPos.Y));
end;

procedure TPopupSpinEdit.PrepareFormLayout;
begin
  if FTitleLabel.Caption = EmptyWideStr then
    FTitleLabel.Visible := False;
  FTitleLabel.Align := alNone;
  FTrackBar.Align := alNone;

  BackPanel.AutoSize := True;
  BackPanel.AutoSize := False;

  BackPanel.Width := FTrackBar.Width + BackPanel.BorderWidth * 2 + BackPanel.BevelWidth * 2 + 4;
  BackPanel.Height := FTrackBar.Height + IfThen(FTitleLabel.Visible, FTitleLabel.Height, 0) + BackPanel.BorderWidth * 2 + BackPanel.BevelWidth * 2 + 5;

  FTrackBar.Align := alTop;
  FTitleLabel.Align := alTop;

  PopupForm.AutoSize := False;
  PopupForm.AutoSize := True;
end;

procedure TPopupSpinEdit.SetAutoCaption(AAutoCaption: Boolean);
begin
  FAutoCaption := AAutoCaption;
  if FAutoCaption then
    UpdateCaption;
end;

procedure TPopupSpinEdit.SetChangeDelay(const AChangeDelay: Cardinal);
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

procedure TPopupSpinEdit.SetFrequency(const AFrequncy: Integer);
begin
  FTrackBar.Frequency := AFrequncy;
end;

procedure TPopupSpinEdit.SetLineSize(ALineSize: Integer);
begin
  FTrackBar.LineSize := ALineSize;
end;

procedure TPopupSpinEdit.SetMax(const AMax: Integer);
begin
  FMax := AMax;
  FTrackBar.Max := FMax;
end;

procedure TPopupSpinEdit.SetMin(const AMin: Integer);
begin
  FMin := AMin;
  FTrackBar.Min := FMin;
end;

procedure TPopupSpinEdit.SetPosition(const APosition: Integer);
begin
  FTrackBar.Position := APosition;
  //Invoke UpdateCaption to force caption update even if the new Position value is the same as the old value.
  UpdateCaption;
end;

procedure TPopupSpinEdit.SetPrefix(APrefix: WideString);
begin
  FPrefix := APrefix;
  UpdateCaption;
end;

procedure TPopupSpinEdit.SetSuffix(ASuffix: WideString);
begin
  FSuffix := ASuffix;
  UpdateCaption;
end;

procedure TPopupSpinEdit.SetThumbLength(const AThumbLength: Integer);
begin
  FTrackBar.ThumbLength := AThumbLength;
end;

procedure TPopupSpinEdit.SetTickMarks(const ATickMarks: TTickMark);
begin
  FTrackBar.TickMarks := ATickMarks;
end;

procedure TPopupSpinEdit.SetTitle(ATitle: WideString);
begin
  FTitle := ATitle;
  TitleLable.Caption := FTitle;
  if FTitle = EmptyWideStr then
    FTitleLabel.Hide
  else
  begin
    FTitleLabel.Show;
  end;
end;

procedure TPopupSpinEdit.TrackBarChange(Sender: TObject);
begin
  if csLoading in ComponentState then
    Exit;
  DelayTimer.Enabled := False;
  UpdateCaption;
  if Assigned(FOnDelayedChange) then
    DelayTimer.Enabled := True;
  if Assigned(FOnChange) then
    FOnChange(Self);
end;

procedure TPopupSpinEdit.TrackBarKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_ESCAPE then
    PopupForm.Hide;
end;

procedure TPopupSpinEdit.UpdateCaption;
begin
  FFullCaption := FPrefix + IntToStr(FTrackBar.Position) + FSuffix;
  if FAutoCaption then
    Self.Caption := FFullCaption;
end;

end.
