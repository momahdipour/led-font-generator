//By. M. Mahdipour
//Implements a unicode TToolDockForm to be used with TTntToolBar or any other
// unicode controls

unit TntToolWin;

{$R-,H+,X+}

interface

uses {$IFDEF LINUX} WinUtils, {$ENDIF} Windows, Messages, Classes, Controls,
  Forms, TntForms, TntWideStrUtils, TntExtCtrls, TntControls;

type

{ TTntDockForm }

  TTntDockForm = class(TTntForm)
  private
    procedure WMNCHitTest(var Message: TWMNCHitTest); message WM_NCHITTESt;
    procedure WMNCLButtonDown(var Message: TWMNCLButtonDown); message WM_NCLBUTTONDOWN;
    procedure CMControlListChange(var Message: TMessage); message CM_CONTROLLISTCHANGE;
    procedure CMDockNotification(var Message: TCMDockNotification); message CM_DOCKNOTIFICATION;
    procedure CMUnDockClient(var Message: TCMUnDockClient); message CM_UNDOCKCLIENT;
    procedure CMVisibleChanged(var Message: TMessage); message CM_VISIBLECHANGED;
  protected
    procedure DoAddDockClient(Client: TControl; const ARect: TRect); override;
    procedure DoRemoveDockClient(Client: TControl); override;
    procedure GetSiteInfo(Client: TControl; var InfluenceRect: TRect;
      MousePos: TPoint; var CanDock: Boolean); override;
    procedure Loaded; override;
  public
    constructor Create(AOwner: TComponent); override;
    property AutoScroll default False;
    property BorderStyle default bsSizeToolWin;
    property FormStyle default fsStayOnTop;
  published
    property PixelsPerInch;
  end;

{ TTntToolDockForm }

  TSizingOrientation = (soNone, soHorizontal, soVertical);

  TTntToolDockForm = class(TTntDockForm)
  private
    FPrevWidth: Integer;
    FPrevHeight: Integer;
    FSizingAdjustH: Integer;
    FSizingAdjustW: Integer;
    FSizingOrientation: TSizingOrientation;
    FUpdatingSize: Boolean;
  protected
    function CanResize(var NewWidth, NewHeight: Integer): Boolean; override;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure DoAddDockClient(Client: TControl; const ARect: TRect); override;
    procedure WMNCCreate(var Message: TWMNCCreate); message WM_NCCREATE;
    procedure WMNCHitTest(var Message: TWMNCHitTest); message WM_NCHITTEST;
    procedure WMNCLButtonDown(var Message: TWMNCLButtonDown); message WM_NCLBUTTONDOWN;
    procedure WMSize(var Message: TWMSize); message WM_SIZE;
    procedure WMSysCommand(var Message: TWMSysCommand); message WM_SYSCOMMAND;
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses SysUtils;

{ TTntDockForm }

constructor TTntDockForm.Create(AOwner: TComponent);
begin
  CreateNew(AOwner);
  AutoScroll := False;
  BorderStyle := bsSizeToolWin;
  DockSite := True;
  FormStyle := fsStayOnTop;
  Self.Font.Name := 'Tahoma';
end;

procedure TTntDockForm.DoAddDockClient(Client: TControl; const ARect: TRect);
//var
//  S: WideString;
//  I: Integer;
begin
  if DockClientCount = 1 then
  begin
    { Use first docked control }
//    with Client do
//    begin
//      SetString(S, nil, Length((Client as TTntPanel).Caption))
//      SetString(S, nil, GetTextLen + 1);
//      GetTextBuf(PChar(S), Length(S));
      { Search for first CR/LF and end string there }
//      for I := 1 to Length(S) do
//        if S[I] in [#13, #10] then
//        begin
//          SetLength(S, I - 1);
//          Break;
//        end;
//    end;
    TntControl_SetText(Self, TntControl_GetText(Client));
    Self.BiDiMode := Client.BiDiMode;
  end;
  inherited DoAddDockClient(Client, ARect);
  Client.Align := alClient;
  if not (csLoading in ComponentState) then
    Visible := True;
end;

procedure TTntDockForm.DoRemoveDockClient(Client: TControl);
begin
  inherited DoRemoveDockClient(Client);
  if DockClientCount = 0 then Release;
end;

procedure TTntDockForm.Loaded;
var
  I: Integer;
begin
  { Make sure we dock controls after streaming }
  for I := 0 to ControlCount - 1 do
    Controls[I].Dock(Self, ClientRect);
  inherited Loaded;
end;

procedure TTntDockForm.GetSiteInfo(Client: TControl;
  var InfluenceRect: TRect; MousePos: TPoint; var CanDock: Boolean);
begin
  CanDock := DockClientCount = 0;
end;

procedure TTntDockForm.WMNCHitTest(var Message: TWMNCHitTest);
begin
  inherited;
  if not (csDesigning in ComponentState) and (Message.Result = HTCLIENT) then
    Message.Result := HTCAPTION;
end;

procedure TTntDockForm.WMNCLButtonDown(var Message: TWMNCLButtonDown);
begin
  if (Message.HitTest = HTCAPTION) and (DragKind <> dkDock) and not
    (csDesigning in ComponentState) and not IsIconic(Handle) and
    (DockClientCount > 0) then
  begin
    { Activate window since we override WM_NCLBUTTON behavior }
    SetWindowPos(Handle, 0, 0, 0, 0, 0, SWP_NOZORDER or SWP_NOMOVE or
      SWP_NOSIZE);
    PostMessage(Handle, WM_NCLBUTTONUP, TMessage(Message).WParam,
      TMessage(Message).LParam);
    if Active then DockClients[0].BeginDrag(True);
  end
  else
    inherited;
end;

procedure TTntDockForm.CMControlListChange(var Message: TMessage);
begin
  inherited;
  if Message.LParam = 0 then
  begin
    Perform(CM_UNDOCKCLIENT, 0, Message.WParam);
    if TControl(Message.WParam).HostDockSite = Self then
      TControl(Message.WParam).Dock(NullDockSite, TControl(Message.WParam).BoundsRect);
  end;
end;

procedure TTntDockForm.CMDockNotification(var Message: TCMDockNotification);
//var
//  S: WideString;
//  I: Integer;
begin
  inherited;
  case Message.NotifyRec^.ClientMsg of
    CM_VISIBLECHANGED: Visible := Message.Client.Visible;
    WM_SETTEXT:
      begin
//        SetString(S, nil, Message.Client.GetTextLen + 1);
//        Message.Client.GetTextBuf(PChar(S), Length(S));
        { Search for first CR/LF and end string there }
//        for I := 1 to Length(S) do
//          if S[I] in [#13, #10] then
//          begin
//            SetLength(S, I - 1);
//            Break;
//          end;
        TntControl_SetText(Self, TntControl_GetText(Message.Client));
        Self.BiDiMode := Message.Client.BiDiMode;
      end;
  end;
end;

procedure TTntDockForm.CMUnDockClient(var Message: TCMUnDockClient);
begin
  inherited;
  Message.Client.Align := alNone;
end;

procedure TTntDockForm.CMVisibleChanged(var Message: TMessage);
var
  I: Integer;
begin
  inherited;
  if not (csDestroying in ComponentState) then
    for I := 0 to DockClientCount - 1 do
      DockClients[I].Visible := Visible;
end;

{ TTntToolDockForm }

constructor TTntToolDockForm.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  BorderWidth := 1;
end;

procedure TTntToolDockForm.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
    Style := Style or WS_POPUP;
end;

function TTntToolDockForm.CanResize(var NewWidth, NewHeight: Integer): Boolean;
var
  W, H, NcW, NcH: Integer;
begin
  Result := True;
  if FUpdatingSize or (FSizingOrientation = soNone) or (DockClientCount = 0) or
    (NewWidth = Width) and (NewHeight = Height) then Exit;
  W := NewWidth;
  H := NewHeight;
  case FSizingOrientation of
    soHorizontal: Inc(H, FSizingAdjustH);
    soVertical: Inc(W, FSizingAdjustW);
    soNone: Exit;
  else
    Result := False;
    Exit;
  end;
  FPrevWidth := Width;
  FPrevHeight := Height;
  with DockClients[0] do
  begin
    NcW := Self.Width - Width;
    NcH := Self.Height - Height;
    FUpdatingSize := True;
    try
      SetBounds(Left, Top, W - NcW, H - NcH);
    finally
      FUpdatingSize := False;
    end;
    NewWidth := Width + NcW;
    NewHeight := Height + NcH;
  end;
  Result := (Width <> NewWidth) or (Height <> NewHeight);
end;

procedure TTntToolDockForm.DoAddDockClient(Client: TControl; const ARect: TRect);
begin
  inherited DoAddDockClient(Client, ARect);
  Client.Align := alNone;
  AutoSize := True;
end;

procedure TTntToolDockForm.WMNCCreate(var Message: TWMNCCreate);

  procedure ModifySystemMenu;
  var
    SysMenu: HMENU;
  begin
    if (BorderStyle <> bsNone) and (biSystemMenu in BorderIcons) and
      (FormStyle <> fsMDIChild) then
    begin
      { Show only the Make the system menu look like a dialog which has only Move and Close }
      SysMenu := GetSystemMenu(Handle, False);
      DeleteMenu(SysMenu, SC_TASKLIST, MF_BYCOMMAND);
      DeleteMenu(SysMenu, SC_MAXIMIZE, MF_BYCOMMAND);
      DeleteMenu(SysMenu, SC_MINIMIZE, MF_BYCOMMAND);
      DeleteMenu(SysMenu, SC_RESTORE, MF_BYCOMMAND);
    end;
  end;

begin
  inherited;
  if not (csDesigning in ComponentState) then ModifySystemMenu;
end;

procedure TTntToolDockForm.WMNCHitTest(var Message: TWMNCHitTest);
var
  Bounds: TRect;
  CX, CY: Integer;
begin
  inherited;
  Bounds := BoundsRect;
  CX := GetSystemMetrics(SM_CXFRAME);
  CY := GetSystemMetrics(SM_CYFRAME);
  InflateRect(Bounds, -CX, -CY);
  with Message do
    case Result of
      HTTOPLEFT:
        if YPos < Bounds.Top then
          Result := HTTOP
        else
          Result := HTLEFT;
      HTTOPRIGHT:
        if YPos < Bounds.Top then
          Result := HTTOP
        else
          Result := HTRIGHT;
      HTCLIENT: Result := HTCAPTION;
      HTBOTTOMLEFT:
        if YPos > Bounds.Bottom then
          Result := HTBOTTOM
        else
          Result := HTLEFT;
      HTGROWBOX, HTBOTTOMRIGHT:
        if YPos > Bounds.Bottom then
          Result := HTBOTTOM
        else
          Result := HTRIGHT;
    end;
end;

procedure TTntToolDockForm.WMNCLButtonDown(var Message: TWMNCLButtonDown);
begin
  FSizingOrientation := soNone;
  case Message.HitTest of
    HTLEFT, HTRIGHT: FSizingOrientation := soHorizontal;
    HTTOP, HTBOTTOM: FSizingOrientation := soVertical;
  end;
  inherited;
end;

procedure TTntToolDockForm.WMSize(var Message: TWMSize);
begin
  inherited;
  case FSizingOrientation of
    soHorizontal: Inc(FSizingAdjustH, Height - FPrevHeight);
    soVertical: Inc(FSizingAdjustW, Width - FPrevWidth);
  end;
end;

procedure TTntToolDockForm.WMSysCommand(var Message: TWMSysCommand);
begin
  if Message.CmdType and $FFF0 = SC_SIZE then
  begin
    FSizingAdjustW := 0;
    FSizingAdjustH := 0;
  end;
  inherited;
  FSizingOrientation := soNone;
end;

end.
