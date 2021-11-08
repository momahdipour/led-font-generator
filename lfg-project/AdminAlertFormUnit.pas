unit AdminAlertFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TntForms, StdCtrls, TntStdCtrls, ExtCtrls, TntExtCtrls;

type
  TAdminAlertForm = class(TTntForm)
    TntImage1: TTntImage;
    TntLabel1: TTntLabel;
    TntButton1: TTntButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AdminAlertForm: TAdminAlertForm;

implementation

{$R *.dfm}

end.
 