unit OpenCharacterDialogFormUnit;

{$WARN UNIT_PLATFORM OFF}
{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, TntButtons, ComCtrls,
  MMFolderTreeView, ShellCtrls, TntStdCtrls, TntDialogs, TntExtCtrls,
  Grids, BaseGrid, AdvGrid, AppEvnts, TntForms, WheelListBox, SoundDialogs,
  MMAdvancedGrid;

type
  TOpenCharacterDialogSettings = record
    DialogWidth: Integer;
    DialogHeight: Integer;
    PreviewSectionHeight: Integer;

    LCDZoom: Integer;
    ShowLCDGrid: Boolean;
  end;

  TOpenCharacterDialogForm = class(TTntForm)
    Panel3: TPanel;
    CancelBtn: TTntBitBtn;
    OpenBtn: TTntBitBtn;
    LookInGroup: TTntGroupBox;
    ShellTreeView1: TShellTreeView;
    SelectedFolderEdit: TEdit;
    OtherPlacesRadio: TTntRadioButton;
    CharacterLibraryRadio: TTntRadioButton;
    CategoryFolderTreeView: TMMFolderTreeView;
    CharactersPanel: TPanel;
    CharactersGroup: TTntGroupBox;
    CharactersListBox: TWheelListBox;
    PreviewGroup: TGroupBox;
    CharPreviewToolPanel: TPanel;
    PreviewZoomLabel: TLabel;
    CharPreviewGridLinesCheck: TTntCheckBox;
    PreviewZoomTrackBar: TTrackBar;
    CharPreviewGridStatusBar: TStatusBar;
    Splitter1: TSplitter;
    MainSplitter: TSplitter;
    CharPreviewGrid: TMMAdvancedGrid;
    LicenseStatusLabel: TLabel;
    procedure OtherPlacesRadioClick(Sender: TObject);
    procedure CharacterLibraryRadioClick(Sender: TObject);
    procedure ShellTreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure CategoryFolderTreeViewFolderChange(Sender: TObject;
      Node: TTreeNode);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure SelectedFolderEditChange(Sender: TObject);
    procedure ShellTreeView1KeyPress(Sender: TObject; var Key: Char);
    procedure ShellTreeView1Enter(Sender: TObject);
    procedure ShellTreeView1Exit(Sender: TObject);
    procedure CharPreviewGridLinesCheckClick(Sender: TObject);
    procedure PreviewZoomTrackBarChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Splitter1Moved(Sender: TObject);
    procedure OpenBtnClick(Sender: TObject);
    procedure MainSplitterCanResize(Sender: TObject; var NewSize: Integer;
      var Accept: Boolean);
  private
    { Private declarations }
    CharListWheelEvent: Boolean;  //Used to preview the character under the mouse when user scrolls the list by using mouse wheel button
    LastPreviewFile: String;

    procedure ColorizeLCDGrid(ALCDGrid: TAdvStringGrid; FilledColor,
      ClearedColor: TColor; ClearText: Boolean = True);
    function ReadCategoryCharacter(ALCDGrid: TAdvStringGrid;
      const FName: String): Boolean;
    function PreviewCharacter(ItemIndex: Integer; ShowErrorMessage: Boolean): Boolean;
    procedure CategoryChanged;
  public
    { Public declarations }
    OtherPlacesPath: String;  //This is to browse to the specified path only if Other Places is selected.
    CharacterFileExtension: String;  //e.g. '.chr'

    LCDFilledColor: TColor;
    LCDCLearedColor: TColor;
    LCDUseSolidColors: Boolean;

    MessageStrings: array[1..1] of WideString;

    procedure GetCategoryCharacters(const CategoryPath: String; CharacterList: TStringList;
      const CharacterExtension: String = '.chr');

    procedure ApplySettings(const OpenCharacterDialogSettings: TOpenCharacterDialogSettings);
    procedure GetSettings(var OpenCharacterDialogSettings: TOpenCharacterDialogSettings);
  end;

implementation

uses Math, ProcsUnit, LCDProcsUnit;

{$R *.dfm}

procedure TOpenCharacterDialogForm.OtherPlacesRadioClick(Sender: TObject);
var
  OldPath: String;
begin
  if OtherPlacesRadio.Checked and (Length(OtherPlacesPath) > 0) then
  begin
    OldPath := ShellTreeView1.Path;
    ShellTreeView1.Path := OtherPlacesPath;
    OtherPlacesPath := '';
    //Refresh the folder tree if the path is the old path (because it is not
    // automatically refreshed if the path is the same as the old path.
    if ShellTreeView1.Items.Count > 0 then
      ShellTreeView1.Refresh(ShellTreeView1.Items[0]);
  end;

  CategoryFolderTreeView.Visible := CharacterLibraryRadio.Checked;
  ShellTreeView1.Visible := OtherPlacesRadio.Checked;
  SelectedFolderEdit.Text := ShellTreeView1.Path;

  CategoryChanged;
end;

procedure TOpenCharacterDialogForm.CharacterLibraryRadioClick(
  Sender: TObject);
begin
  CategoryFolderTreeView.Visible := CharacterLibraryRadio.Checked;
  ShellTreeView1.Visible := not CharacterLibraryRadio.Checked;
  SelectedFolderEdit.Text := CategoryFolderTreeView.SelectedFolderFullPath;

  CategoryChanged;
end;

procedure TOpenCharacterDialogForm.ShellTreeView1Change(Sender: TObject;
  Node: TTreeNode);
begin
  CategoryChanged;
end;

procedure TOpenCharacterDialogForm.CategoryFolderTreeViewFolderChange(
  Sender: TObject; Node: TTreeNode);
begin
  CategoryChanged;
end;

procedure TOpenCharacterDialogForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := ( (CharactersListBox.ItemIndex >= 0) and
      (Length(Trim(SelectedFolderEdit.Text)) > 0) ) or (Self.ModalResult = mrCancel);

  if not CanClose then
    CharactersListBox.SetFocus;
end;

procedure TOpenCharacterDialogForm.FormShow(Sender: TObject);
begin
  CharactersListBox.SetFocus;
  OpenBtn.Enabled := CharactersListBox.ItemIndex >= 0;
end;

procedure TOpenCharacterDialogForm.SelectedFolderEditChange(
  Sender: TObject);
begin
  SelectedFolderEdit.Hint := SelectedFolderEdit.Text;
  //Make end of the string visible
  SelectedFolderEdit.SelStart := Length(SelectedFolderEdit.Text);
  SelectedFolderEdit.SelLength := 0; 
end;

procedure TOpenCharacterDialogForm.ShellTreeView1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
  begin
    CharactersListBox.SetFocus;
    Key := Chr(0);
  end;
end;

procedure TOpenCharacterDialogForm.ShellTreeView1Enter(Sender: TObject);
begin
  OpenBtn.Default := False;
end;

procedure TOpenCharacterDialogForm.ShellTreeView1Exit(Sender: TObject);
begin
  OpenBtn.Default := True;
end;

procedure TOpenCharacterDialogForm.GetCategoryCharacters(const CategoryPath: String;
  CharacterList: TStringList; const CharacterExtension: String);
var
  FSR:TSearchRec;
begin
  //CharacterExtension = '.x'
  //e.g. '.chr'
  CharacterList.Clear;
end;

procedure TOpenCharacterDialogForm.ColorizeLCDGrid(ALCDGrid: TAdvStringGrid; FilledColor,
  ClearedColor: TColor; ClearText: Boolean = True);
var
  Col, Row: Integer;
begin
  for Row := 0 to ALCDGrid.RowCount - 1 do
    for Col:=0 to ALCDGrid.ColCount - 1 do
    begin
      if ALCDGrid.Cells[Col, Row] = '1' then
        LCDProcs.SetCellColor(ALCDGrid, Col, Row, True, FilledColor, ClearedColor, LCDUseSolidColors)
      else
        LCDProcs.SetCellColor(ALCDGrid, Col, Row, False, FilledColor, ClearedColor, LCDUseSolidColors);
      if ClearText then
        ALCDGrid.Cells[Col, Row] := '';
    end;
end;

function TOpenCharacterDialogForm.ReadCategoryCharacter(ALCDGrid: TAdvStringGrid;
  const FName: String): Boolean;
begin
  Result := False;
  if FileExists(FName) then
  begin
    ALCDGrid.DefaultRowHeight := ALCDGrid.DefaultRowHeight;
    ALCDGrid.RowHeights[ALCDGrid.RowCount - 1] := 0;
    ColorizeLCDGrid(ALCDGrid, LCDFilledColor, LCDClearedColor);
    LCDProcs.CheckLCDScrollBars(ALCDGrid);
    Result := True;
  end;
end;

function TOpenCharacterDialogForm.PreviewCharacter(
  ItemIndex: Integer; ShowErrorMessage: Boolean): Boolean;

  function GetCharFileName: String;
  begin
    if OtherPlacesRadio.Checked then
      Result := SelectedFolderEdit.Text
    else
    begin
      Result := CategoryFolderTreeView.Root;
      if Length(SelectedFolderEdit.Text) > 0 then
        Result := Result + '\' + SelectedFolderEdit.Text;
    end;

    Result := Result + '\' + CharactersListBox.Items.Strings[ItemIndex] + CharacterFileExtension;
  end;

begin
  if GetCharFileName = LastPreviewFile then
  begin
    Result := True;
    Exit;
  end;

  LastPreviewFile := GetCharFileName;
  Result := ReadCategoryCharacter(CharPreviewGrid, LastPreviewFile);
  if not Result and ShowErrorMessage then
    WideMessageDlgSound(WideFormat(MessageStrings[1] {'Error in reading the character file ''%s''.'}, [#13 + CharactersListBox.Items.Strings[ItemIndex]]),
      mtError, [mbOK], 0);

  CharPreviewGridStatusBar.SimpleText := WideFormat('%s : %d x %d', [CharactersListBox.Items.Strings[ItemIndex], CharPreviewGrid.RowCount - 1, CharPreviewGrid.ColCount]);
end;

procedure TOpenCharacterDialogForm.CharPreviewGridLinesCheckClick(
  Sender: TObject);
begin
  if CharPreviewGridLinesCheck.Checked then
    CharPreviewGrid.Options := CharPreviewGrid.Options + [goVertLine, goHorzLine]
  else
    CharPreviewGrid.Options := CharPreviewGrid.Options - [goVertLine, goHorzLine];
end;

procedure TOpenCharacterDialogForm.PreviewZoomTrackBarChange(
  Sender: TObject);
begin
  CharPreviewGrid.DefaultRowHeight := PreviewZoomTrackBar.Position;
  CharPreviewGrid.DefaultColWidth := PreviewZoomTrackBar.Position;
  CharPreviewGrid.RowHeights[CharPreviewGrid.RowCount - 1] := 0;
end;

procedure TOpenCharacterDialogForm.CategoryChanged;
var
  CategoryPath:String;
  List:TStringList;
begin
  LastPreviewFile := '';
  if CharacterLibraryRadio.Checked then
    SelectedFolderEdit.Text := CategoryFolderTreeView.SelectedFolderFullPath
  else if OtherPlacesRadio.Checked then
    SelectedFolderEdit.Text := ShellTreeView1.Path
  else
    SelectedFolderEdit.Text := '';
  OpenBtn.Enabled := False;

end;

procedure TOpenCharacterDialogForm.ApplySettings(
  const OpenCharacterDialogSettings: TOpenCharacterDialogSettings);
begin
  with OpenCharacterDialogSettings do
  begin
    Width := IfThen(DialogWidth > 0, DialogWidth, Width);
    Height := IfThen(DialogHeight > 0, DialogHeight, Height);
    PreviewGroup.Height := IfThen(PreviewSectionHeight > 0, PreviewSectionHeight, PreviewGroup.Height);

    PreviewZoomTrackBar.Position := IfThen(LCDZoom > 0, LCDZoom + 1, PreviewZoomTrackBar.Position + 1);  //Force update
    PreviewZoomTrackBar.Position := IfThen(LCDZoom > 0, LCDZoom, PreviewZoomTrackBar.Position);

    CharPreviewGridLinesCheck.Checked := ShowLCDGrid;
  end;
end;

procedure TOpenCharacterDialogForm.GetSettings(
  var OpenCharacterDialogSettings: TOpenCharacterDialogSettings);
begin
  with OpenCharacterDialogSettings do
  begin
    DialogWidth := Width;
    DialogHeight := Height;
    PreviewSectionHeight := PreviewGroup.Height;

    LCDZoom := PreviewZoomTrackBar.Position;
    ShowLCDGrid := CharPreviewGridLinesCheck.Checked;
  end;
end;

procedure TOpenCharacterDialogForm.FormResize(Sender: TObject);
begin
  if CharactersGroup.Height < 100 then
    PreviewGroup.Height := PreviewGroup.Height -
        (100 - CharactersGroup.Height);
  LCDProcs.CheckLCDScrollBars(CharPreviewGrid);  //Prevent potential software bugs
end;

procedure TOpenCharacterDialogForm.Splitter1Moved(Sender: TObject);
begin
  LCDProcs.CheckLCDScrollBars(CharPreviewGrid);
end;

procedure TOpenCharacterDialogForm.OpenBtnClick(Sender: TObject);
begin
  if CharactersListBox.ItemIndex < 0 then
    ModalResult := mrCancel;
end;

procedure TOpenCharacterDialogForm.MainSplitterCanResize(Sender: TObject;
  var NewSize: Integer; var Accept: Boolean);
begin
  Accept := (LookInGroup.Width - (NewSize - CharactersPanel.Width)) >= 266;
end;

end.
