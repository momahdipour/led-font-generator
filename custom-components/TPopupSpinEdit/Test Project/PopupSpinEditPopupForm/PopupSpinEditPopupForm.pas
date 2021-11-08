unit PopupSpinEditPopupForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, TntComCtrls, StdCtrls, TntStdCtrls, ExtCtrls;

type
  TPopupForm = class(TForm)
    Panel1: TPanel;
    TntTrackBar1: TTntTrackBar;
    TitleLabel: TTntStaticText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PopupForm: TPopupForm;

implementation

{$R *.dfm}

end.
