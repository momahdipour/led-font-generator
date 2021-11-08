{
 Unicode CancelDialog
 By. M. Mahdipour
 Requires Tnt Unicode Controls Package
}

unit TntCancelDialog;

interface

uses
  SysUtils, Classes, Controls, Forms, TntForms, TntStdCtrls, Dialogs, Graphics;

type
  TTntCancelDialog = class(TControl)
  private
    { Private declarations }
    FBiDiMode: TBiDiMode;
    FCancelCaption: WideString;
    FOnCancel: TNotifyEvent;
    FCancelDialog: TTntForm;
    FFont: TFont;
    function GetVisible: Boolean;
    procedure SetFont(AFont: TFont);
    procedure CancelClicked(Sender: TObject);
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Execute(const Title: WideString = 'Processing'; const Description: WideString = 'Press Cancel to cancel the operation.');
    procedure Terminate;
  published
    { Published declarations }
    property OnCancel: TNotifyEvent read FOnCancel write FOnCancel;
    property BiDiMode: TBiDiMode read FBiDiMode write FBiDiMode;
    property CancelCaption: WideString read FCancelCaption write FCancelCaption;
    property Visible: Boolean read GetVisible;
    property Font: TFont read FFont write SetFont;
  end;

procedure Register;

implementation

uses StdCtrls;

procedure Register;
begin
  RegisterComponents('[LCD Designer]', [TTntCancelDialog]);
end;

{ TTntCancelDialog }

procedure TTntCancelDialog.CancelClicked(Sender: TObject);
begin
  if Assigned(FOnCancel) then
    FOnCancel(Self);
end;

constructor TTntCancelDialog.Create(AOwner: TComponent);
begin
  inherited;
  OnCancel := nil;
  FCancelCaption := 'Cancel';
  FBiDiMode := bdLeftToRight;
  FFont := TFont.Create;
  with FFont do
  begin
    Name := 'Tahoma';
    Size := 8;
    Color := clWindowText;
  end;
end;

destructor TTntCancelDialog.Destroy;
begin
  Terminate;
  FFont.Free;
  inherited;
end;

procedure TTntCancelDialog.Execute(const Title: WideString;
  const Description: WideString);
begin
  if Assigned(FCancelDialog) then
    raise Exception.Create('Cancel dialog already is shown.');
  FCancelDialog := TTntForm.Create(nil);
  with FCancelDialog do
  begin
    Font.Assign(FFont);
    Caption := Title;
    FormStyle := fsStayOnTop;
    BorderStyle := bsToolWindow;
    BorderIcons := [];
    BiDiMode := FBiDiMode;
    Position := poMainFormCenter;
    Width := 329;
    Height := 112;
    Visible := False;
  end;
  with TTntLabel.Create(FCancelDialog) do
  begin
    AutoSize := False;
    ParentFont := True;
    ParentBiDiMode := True;
    Caption := Description;
    Parent := FCancelDialog;
    Left := 12;
    Top := 10;
    Width := 293;
    Height := 38;
    WordWrap := True;
  end;
  with TTntButton.Create(FCancelDialog) do
  begin
    ParentFont := True;
    ParentBiDiMode := True;
    Caption := FCancelCaption;
    Parent := FCancelDialog;
    Left := 124;
    Top := 57;
    Width := 75;
    TabOrder := 0;
    Cancel := True;
    Default := True;
    OnClick := CancelClicked;
  end;

  FCancelDialog.Show;
//  Application.ProcessMessages;
end;

function TTntCancelDialog.GetVisible: Boolean;
begin
  if Assigned(FCancelDialog) then
    Result := FCancelDialog.Visible
  else
    Result := False;
end;

procedure TTntCancelDialog.SetFont(AFont: TFont);
begin
  FFont.Assign(AFont);
end;

procedure TTntCancelDialog.Terminate;
begin
  if Assigned(FCancelDialog) then
  begin
    FCancelDialog.Hide;
    FCancelDialog.Free;
    FCancelDialog := nil;
    Application.ProcessMessages;
  end;
end;

end.
