unit CheckForUpdatesFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ScktComp, TntDialogs, IniFiles, StdCtrls, TntStdCtrls,
  ProcsUnit, Buttons, TntButtons, TntForms, LCDConsts, SoundDialogs;

type
  TCheckForUpdatesForm = class(TTntForm)
    ConnectionPanel: TPanel;
    ResultPanel: TPanel;
    UpdateMessageMemo: TMemo;
    UpdateMessageTitleLabel: TStaticText;
    UpdateUrlLabel: TTntLabel;
    OKBtn: TTntBitBtn;
    CancelBtn: TTntBitBtn;
    TntLabel1: TTntLabel;
    StartCheckTimer: TTimer;
    StatusLabel: TTntLabel;
    ProgressImage: TImage;
    procedure FormShow(Sender: TObject);
    procedure UpdateUrlLabelMouseEnter(Sender: TObject);
    procedure UpdateUrlLabelMouseLeave(Sender: TObject);
    procedure UpdateUrlLabelClick(Sender: TObject);
    procedure StartCheckTimerTimer(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    UpdateUserUrl: String;
    CancelCheck: Boolean;
    procedure ProcessUpdateFile;
  public
    { Public declarations }
    function DownloadFile(strHost, strRemoteFileName: String;
      OutFile: TFileStream; ClientSocket: TClientSocket;
      var ErrMsg: WideString): Boolean;
    procedure CheckForUpdates;
  end;

var
  CheckForUpdatesForm: TCheckForUpdatesForm;

implementation

uses
  MainUnit, GIFImage;

{$R *.dfm}

procedure TCheckForUpdatesForm.FormShow(Sender: TObject);
begin
  ProgressImage.Show;
  ConnectionPanel.Show;
  ResultPanel.Hide;
  StartCheckTimer.Enabled := True;
  StatusLabel.Hide;
end;

function TCheckForUpdatesForm.DownloadFile(strHost, strRemoteFileName: String;
  OutFile: TFileStream; ClientSocket: TClientSocket;
  var ErrMsg: WideString): Boolean;
var
  intReturnCode: Integer;
  S: String;
  szBuffer: array[0..128] of Char;
begin
  Result := False;

  if strRemoteFileName[1] <> '/' then
    strRemoteFileName := '/' + strRemoteFileName;
  try
    with ClientSocket do
    begin
      Host := strHost;
      ClientType := ctBlocking;
      Port := 80;
      try
        Open;
        {send query}
        S := 'GET ' + strRemoteFileName + '  HTTP/1.0'#13#10 +
             'Host: ' + strHost + #13#10#13#10;
        intReturnCode := Socket.SendBuf(Pointer(S)^, Length(S));
        if intReturnCode > 0 then
        begin
          {receive the answer}
          { iterate until no more data}
          while (intReturnCode > 0) do
          begin
            { clear buffer before each iteration }
            FillChar(szBuffer, SizeOf(szBuffer), 0);
            { try to receive some data }
            intReturnCode := Socket.ReceiveBuf(szBuffer, SizeOf(szBuffer));
            { if received a some data, then add this data to the
              result string }
            if intReturnCode > 0 then
              OutFile.Write(szBuffer, intReturnCode);
          end;
          Result := True;
        end
        else
          ErrMsg := 'Error: No answer from server';
        Close;
      except
        ErrMsg := 'Error: No connection';
      end;
    end;
  except
  end;
end;

{$WARNINGS OFF}
procedure TCheckForUpdatesForm.ProcessUpdateFile;
var
  IniFile: TIniFile;
  IniFileSection: String;
  LineCount: Integer;
  i: Integer;
  S: String;
begin
  try
    IniFile := TIniFile.Create(ApplicationPath + 'update.ini');
  except
    WideMessageDlgSoundTop('Unable to access to the file ''update.ini''.', mtError, [mbOK], 0);
    Self.ModalResult := mrCancel;
    Self.Close;
  end;
  IniFileSection := IntToStr(MAJOR_VERSION_NUMBER) + '.' +
      IntToStr(MINOR_VERSION_NUMBER);
  if IniFile.ReadBool(IniFileSection, 'Updates Available', False) then
  begin
    //Updates are available
    UpdateUserUrl := IniFile.ReadString(IniFileSection, 'Update User Url', SOFTWARE_DEFAULT_UPDATE_URL);
    UpdateMessageTitleLabel.Caption := IniFile.ReadString(IniFileSection, 'Update Message Title', 'Updates are available for download');
    MainForm.MainStatusBar.SimpleText := UpdateMessageTitleLabel.Caption;
    LineCount := IniFile.ReadInteger(IniFileSection, 'Update Message Length', 0);
    UpdateMessageMemo.Clear;
    for i := 1 to LineCount do
    begin
      S := IniFile.ReadString(IniFileSection, 'Message ' + IntToStr(i), '');
      if Length(S) > 0 then
        UpdateMessageMemo.Lines.Append(S);
    end;
    IniFile.Free;
    ResultPanel.Show;
    ConnectionPanel.Hide;
  end
  else
  begin
    WideShowMessageSoundTop('No updates are available.');
    MainForm.MainStatusBar.SimpleText := 'No updates are available.';
    Close;
  end;
end;
{$WARNINGS ON}

procedure TCheckForUpdatesForm.UpdateUrlLabelMouseEnter(Sender: TObject);
begin
  UpdateUrlLabel.Font.Color := clBlue;
  UpdateUrlLabel.Font.Style := [fsUnderline];
end;

procedure TCheckForUpdatesForm.UpdateUrlLabelMouseLeave(Sender: TObject);
begin
  UpdateUrlLabel.Font.Color := clWindowText;
  UpdateUrlLabel.Font.Style := [];
end;

procedure TCheckForUpdatesForm.UpdateUrlLabelClick(Sender: TObject);
begin
  Procs.OpenUrlInDefaultBrowser(UpdateUserUrl);  
end;

procedure TCheckForUpdatesForm.StartCheckTimerTimer(Sender: TObject);
begin
  StartCheckTimer.Enabled := False;
  CheckForUpdates;
end;

procedure TCheckForUpdatesForm.CheckForUpdates;
var
  FileStream: TFileStream;
  ClientSocket: TClientSocket;
  UpdateInfDone: Boolean;
  ErrMsg: WideString;
begin
  ConnectionPanel.Show;
  ResultPanel.Hide;

  try
    FileStream := TFileStream.Create(ApplicationPath + 'update.ini' , fmCreate);
  except
    StatusLabel.Show;
    StatusLabel.Caption := 'Error: Unable to create the file ''update.ini''.';
    Exit;
  end;

  MainForm.MainStatusBar.SimplePanel := True;
  MainForm.MainStatusBar.SimpleText := 'Checking for updates...';
  ClientSocket := TClientSocket.Create(nil);
  try
    CancelCheck := False;
    repeat
      UpdateInfDone := DownloadFile(SOFTWARE_WEBSITE_ROOT_URL,
                           '/update' + IntToStr(MAJOR_VERSION_NUMBER) + 'x.ini',
                           FileStream, ClientSocket, ErrMsg);
      StatusLabel.Visible := not UpdateInfDone;
      StatusLabel.Caption := ErrMsg;
      Application.ProcessMessages;
      Sleep(50);
    until CancelCheck or UpdateInfDone;
  finally
    FileStream.Free;
    ClientSocket.Free;
  end;

  if UpdateInfDone and not CancelCheck then
    ProcessUpdateFile
  else
    Self.Close;
end;

procedure TCheckForUpdatesForm.CancelBtnClick(Sender: TObject);
begin
  CancelCheck := True;
end;

procedure TCheckForUpdatesForm.FormHide(Sender: TObject);
begin
  ProgressImage.Hide;
end;

procedure TCheckForUpdatesForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MainForm.MainStatusBar.SimplePanel := False;
end;

procedure TCheckForUpdatesForm.FormCreate(Sender: TObject);
var
  GIFImage: TGIFImage;
  rs: TResourceStream;
const
  GIFResourceName ='PROGRESS_GIF';
begin
  try
    //Load GIF Image from the resources
    GIFImage := TGIFImage.Create;
    rs := TResourceStream.Create(HInstance, GIFResourceName, 'GIF');
    GIFImage.LoadFromStream(rs);
    ProgressImage.Picture.Graphic := GIFImage;
    rs.Free;
    GIFImage.Free;
  except
  end;
end;

end.
