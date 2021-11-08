unit AboutFormUnit;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, ShellAPI, TntStdCtrls, ProcsUnit, HowToBuyFormUnit,
  TntForms, LCDConsts;

type
  TAboutForm = class(TTntForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    OKBtn: TTntButton;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    LicenseStatusLabel: TLabel;
    Bevel1: TBevel;
    InfoMemo: TMemo;
    HowToBuyBtn: TBitBtn;
    Label5: TLabel;
    Label3: TLabel;
    MailLabel: TLabel;
    Bevel2: TBevel;
    Label6: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Image1: TImage;
    procedure HowToBuyBtnClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label4MouseEnter(Sender: TObject);
    procedure Label4MouseLeave(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TntFormCreate(Sender: TObject);
    procedure InfoMemoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutForm: TAboutForm;

implementation

uses
  MainUnit, License4, StrUtils;

{$R *.dfm}

procedure TAboutForm.HowToBuyBtnClick(Sender: TObject);
begin
  HowToBuyForm := THowToBuyForm.Create(nil);
  try
    HowToBuyForm.ShowModal;
  finally
    HowToBuyForm.Free;
  end;
end;

procedure TAboutForm.Label1Click(Sender: TObject);
begin
  Procs.OpenUrlInDefaultBrowser(SOFTWARE_HOME_PAGE);
end;

procedure TAboutForm.Label4MouseEnter(Sender: TObject);
begin
  (Sender as TLabel).Caption := 'mailto: mo.mahdipour@gmail.com';
end;

procedure TAboutForm.Label4MouseLeave(Sender: TObject);
begin
  (Sender as TLabel).Caption := 'Direct Contact';
end;

procedure TAboutForm.FormShow(Sender: TObject);
begin
  InfoMemo.SelLength := 0;
  OKBtn.SetFocus;

  //License
  if License4.CheckLicenseStatus then
  begin
    LicenseStatusLabel.Caption := 'Registered';
    LicenseStatusLabel.Font.Color := clWindowText;
    LicenseStatusLabel.Font.Style := [];
  end
  else
  begin
    LicenseStatusLabel.Caption := 'UNREGISTERED';
    LicenseStatusLabel.Font.Color := clRed;
    LicenseStatusLabel.Font.Style := [fsBold];
  end;
end;

procedure TAboutForm.TntFormCreate(Sender: TObject);
var
  ExeVersion: String;
begin
  ExeVersion := Procs.GetFileVersionString(Application.ExeName);
  if ExeVersion <> EmptyStr then
    InfoMemo.Lines[1] := InfoMemo.Lines[1] + ' (' + ExeVersion + ')';
end;

procedure TAboutForm.InfoMemoKeyPress(Sender: TObject; var Key: Char);
begin
  if (Ord(Key) = VK_RETURN) or
     (Ord(Key) = VK_ESCAPE) then
    OKBtn.Click;
end;

end.

