unit Umain;

(** ////////////////////////////////////////////////////////////////////// **)
(**(c) NPS, 1997 	- Idea, realisation, adoptation IsCPUID_Available) **)
(**                       kvk@estpak.ee                                    **)
(**(c) Alex Abreu, 1997 - IsCPUID_Available source and idea                **)
(**                       simonet@bhnet.com.br                             **)
(**Gordon Bamber,June1998 Converted into a class                           **)
(**                       gbamber@mistral.co.uk                            **)
(** ///////////////////////////////////////////////////////////////////////**)

interface

uses
  Windows,
  Messages,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  ExtCtrls,
  StdCtrls,
  Buttons;

type
  TDemoForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    GetButton: TBitBtn;
    CloseButton: TBitBtn;
    Bevel1: TBevel;
    Label5: TLabel;
    FLabel: TLabel;
    MLabel: TLabel;
    PLabel: TLabel;
    SLabel: TLabel;
    PValue: TLabel;
    FValue: TLabel;
    MValue: TLabel;
    SValue: TLabel;
    procedure GetButtonClick(Sender: TObject);
  end;

var
  DemoForm: TDemoForm;
implementation
Uses cls_ID;
{$R *.DFM}


procedure TDemoForm.GetButtonClick(Sender: TObject);
Var
  MYCPUID:TCPUID;
begin
MYCPUID:=TCPUID.Create;
 With MYCPUID do
 begin
  if IDAvailable then
   begin
    Label1.Caption := 'CPUID[1] = ' + IntToHex(ID1,8);
    Label2.Caption := 'CPUID[2] = ' + IntToHex(ID2,8);
    Label3.Caption := 'CPUID[3] = ' + IntToHex(ID3,8);
    Label4.Caption := 'CPUID[4] = ' + IntToHex(ID4,8);
    PValue.Caption := IntToStr(ProcessorType);
    FValue.Caption := IntToStr(Family);
    MValue.Caption := IntToStr(Model);
    SValue.Caption := IntToStr(Stepping);
    Label5.Caption := 'Vendor: ' + Vendor;
   end
   else
    Label5.Caption := 'CPUID not available';
 end;
MYCPUID.Free;
end;

end.
