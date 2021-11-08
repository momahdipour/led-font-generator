unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvancedNumEdit, StdCtrls, Spin;

type
  TForm1 = class(TForm)
    Button1: TButton;
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    AdvancedNumEdit: TAdvancedNumEdit;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  AdvancedNumEdit := TAdvancedNumEdit.Create(Self);
  AdvancedNumEdit.Left := 5;
  AdvancedNumEdit.Top := 5;
  AdvancedNumEdit.Font.Name := 'Tahoma';
  AdvancedNumEdit.Parent := Self;
  AdvancedNumEdit.MaskActive := False;
  AdvancedNumEdit.MaskActive := True;
  AdvancedNumEdit.Suffix := ' Cells';
  AdvancedNumEdit.OnMaskedChange := Button1Click;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Label1.Caption := IntToStr(AdvancedNumEdit.Value)
end;

end.
 