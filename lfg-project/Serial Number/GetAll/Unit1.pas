unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XPMan, cls_id, magwmi;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    XPManifest1: TXPManifest;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  MyCPU: TCPUID;
begin
  MyCPU := TCPUID.Create;
  if MyCPU.IDAvailable then
  begin
    Edit1.Text := IntToHex(MyCPU.ID1, 8) + ' ' + IntToHex(MyCPU.ID2, 8) + ' ' +
        IntToHex(MyCPU.ID3, 8) + ' ' + IntToHex(MyCPU.ID4, 8);
    Edit3.Text := IntToStr(MyCPU.ProcessorType);
    Edit4.Text := IntToStr(MyCPU.Family);
    Edit5.Text := IntToStr(MyCPU.Model);
    Edit6.Text := IntToStr(MyCPU.Stepping);
    Edit7.Text := MyCPU.Vendor;
  end;
  MyCPU.Free;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit2.Text := MagWmiGetDiskSerial(0);
end;

end.
