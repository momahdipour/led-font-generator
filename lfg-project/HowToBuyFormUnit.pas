unit HowToBuyFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, TntForms, TntButtons;

type
  THowToBuyForm = class(TTntForm)
    OKBtn: TTntBitBtn;
    EnglishInfoPanel: TPanel;
    ToBuyLabelEn: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    FarsiInfoPanel: TPanel;
    Image1: TImage;
    ChangeLangLabel: TLabel;
    SoftwareNameLabelEn: TLabel;
    procedure ChangeLangLabelClick(Sender: TObject);
    procedure TntFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HowToBuyForm: THowToBuyForm;

implementation

uses MainUnit;

{$R *.dfm}

procedure THowToBuyForm.ChangeLangLabelClick(Sender: TObject);
begin
  if EnglishInfoPanel.Visible then
  begin
    FarsiInfoPanel.Show;
    EnglishInfoPanel.Hide;
    ChangeLangLabel.Caption := 'English';
//    OKBtn.Caption := ' √ÌÌœ';
  end
  else
  begin
    EnglishInfoPanel.Show;
    FarsiInfoPanel.Hide;
    ChangeLangLabel.Caption := 'Farsi';
//    OKBtn.Caption := 'OK';
  end;
end;

procedure THowToBuyForm.TntFormShow(Sender: TObject);
begin
  SoftwareNameLabelEn.Left := ToBuyLabelEn.Left + ToBuyLabelEn.Width + 5;
end;

end.
