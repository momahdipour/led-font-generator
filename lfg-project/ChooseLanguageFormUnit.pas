unit ChooseLanguageFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, TntGrids, StdCtrls, TntStdCtrls, Buttons, TntButtons,
  Language, ComCtrls, TntComCtrls, TntForms, ImgList, Menus, SoundDialogs;

type
  TChooseLanguageForm = class(TTntForm)
    TntLabel1: TTntLabel;
    OKBtn: TTntBitBtn;
    CancelBtn: TTntBitBtn;
    LanguageListView: TTntListView;
    TntGroupBox1: TTntGroupBox;
    ApplyRTLToAppearanceCheck: TTntCheckBox;
    LanguageImages: TImageList;
    procedure FormShow(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LanguageListViewInfoTip(Sender: TObject; Item: TListItem;
      var InfoTip: String);
    procedure LanguageListViewDblClick(Sender: TObject);
    procedure LanguageListViewChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
  private
    { Private declarations }
    LanguageList: TLanguageList;
    ActiveLanguageIndex: Integer;
  public
    { Public declarations }
  end;

var
  ChooseLanguageForm: TChooseLanguageForm;

implementation

{$R *.dfm}

procedure TChooseLanguageForm.FormShow(Sender: TObject);

  function FindActiveLanguageIndex: Integer;
  var
    i: Integer;
  begin
    for i := 0 to Length(LanguageList) - 1 do
      if (LanguageList[i].LanguageName = ActiveLanguage.LanguageName) and
         (LanguageList[i].InternationalName = ActiveLanguage.InternationalName) and
         (LanguageList[i].Revision = ActiveLanguage.Revision) and
         (LanguageList[i].Author = ActiveLanguage.Author) and
         (LanguageList[i].Description = ActiveLanguage.Description) and
         (LanguageList[i].FileVersion = ActiveLanguage.FileVersion) and
         (LanguageList[i].RightToLeft = ActiveLanguage.RightToLeft) then
      begin
        Result := i;
        Exit;
      end;
    Result := -1;  //Not found
  end;

var
  i: Integer;
begin
  LanguageListView.Items.Clear;
  LanguageImages.Clear;
  GetAvailableLanguages(LanguageList, LanguageImages);
  if Length(LanguageList) = 0 then
  begin
    //This message is always in English so there is no need to use unicode version of ShowMessage.
    ShowMessageSound('No langauge files is installed in the ''Languages'' directory.');
    CancelBtn.SetFocus;
    OKBtn.Enabled := False;
  end
  else
  begin
    OKBtn.Enabled := True;
    for i := 0 to Length(LanguageList) - 1 do
      with LanguageListView.Items.Add do
      begin
        Caption := LanguageList[i].LanguageName;  //InternationalName is used in the hint text
        ImageIndex := i;
        SubItems.Add(LanguageList[i].Revision);
        SubItems.Add(LanguageList[i].Author);
        SubItems.Add(LanguageList[i].Description);
      end;
    ActiveLanguageIndex := FindActiveLanguageIndex;
    LanguageListView.ItemIndex := ActiveLanguageIndex;
    OKBtn.Enabled := LanguageListView.ItemIndex >= 0;
  end;

  with ActiveLanguageOptions do
  begin
    ApplyRTLToAppearanceCheck.Checked := ApplyRTLToAppearance;
  end;
end;

procedure TChooseLanguageForm.OKBtnClick(Sender: TObject);
var
  LanguageOptions: TLanguageOptions;
begin
  Hide;
  Application.ProcessMessages;
  LanguageOptions.ApplyRTLToAppearance := ApplyRTLToAppearanceCheck.Checked;
  SwitchLanguage(LanguageList[LanguageListView.ItemIndex], LanguageOptions);
end;

procedure TChooseLanguageForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SetLength(LanguageList, 0);
end;

procedure TChooseLanguageForm.LanguageListViewInfoTip(Sender: TObject;
  Item: TListItem; var InfoTip: String);
begin
  //Instead of displaying the LanguageName, display InternationalName because
  // the application does not support unicode hints yet.
  InfoTip := 'Language: ' + LanguageList[Item.Index].InternationalName + #13 +
             'Revision: ' + Item.SubItems[0] + #13 +
             'Author: ' + Item.SubItems[1] + #13 +
             'Description: ' + Item.SubItems[2];
end;

procedure TChooseLanguageForm.LanguageListViewDblClick(Sender: TObject);
var
  p: TPoint;
  tmp: TListItem;
begin
  p := LanguageListView.ScreenToClient(Mouse.CursorPos);
  tmp := LanguageListView.GetItemAt(p.X, p.Y);
  if Assigned(tmp) then
    OKBtn.Click;
end;

procedure TChooseLanguageForm.LanguageListViewChange(Sender: TObject;
  Item: TListItem; Change: TItemChange);
begin
  OKBtn.Enabled := LanguageListView.ItemIndex >= 0;
  if OKBtn.Enabled then
  begin
    ApplyRTLToAppearanceCheck.Enabled := LanguageList[LanguageListView.ItemIndex].RightToLeft;
  end
  else
  begin
    ApplyRTLToAppearanceCheck.Enabled := False;
  end;
end;

end.
