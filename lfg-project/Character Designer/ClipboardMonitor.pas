unit ClipboardMonitor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Clipbrd;

type
  TClipboardMonitorForm = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    NextClipboardViewer: THandle;
    procedure WMDrawClipboard(var msg: TWMDrawClipboard); message WM_DRAWCLIPBOARD;
    procedure WMChangeCBChain(var msg: TWMChangeCBChain); message WM_CHANGECBCHAIN;
  public
    { Public declarations }
  end;

var
  ClipboardMonitorForm: TClipboardMonitorForm;

implementation

uses
  //Units that need the clipboard change event
  MainUnit;

{$R *.dfm}

{ TClipboardMonitorForm }

procedure TClipboardMonitorForm.WMChangeCBChain(var msg: TWMChangeCBChain);
begin
  if msg.Remove = NextClipboardViewer then
    NextClipboardViewer := msg.Next
  else
    SendMessage(NextClipboardViewer, WM_CHANGECBCHAIN, msg.Remove, msg.Next);
end;

procedure TClipboardMonitorForm.WMDrawClipboard(var msg: TWMDrawClipboard);
begin
  //Invoke the event procedures
  if Assigned(MainForm) then
    MainForm.ClipboardChanged;

  //Proceed to the next clipboard viewer in the clipboard chain  
  SendMessage(NextClipboardViewer, WM_DRAWCLIPBOARD, 0, 0);
end;

procedure TClipboardMonitorForm.FormCreate(Sender: TObject);
begin
  NextClipboardViewer := SetClipboardViewer(Self.Handle);
end;

procedure TClipboardMonitorForm.FormDestroy(Sender: TObject);
begin
  ChangeClipboardChain(Self.Handle, NextClipboardViewer);
end;

end.
