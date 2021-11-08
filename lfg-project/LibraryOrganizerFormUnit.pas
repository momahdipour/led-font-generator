unit LibraryOrganizerFormUnit;

{$WARN UNIT_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, MMFolderTreeView,
  Grids, BaseGrid, AdvGrid, Menus, ProcsUnit, TntButtons,
  TntStdCtrls, TntMenus, SpecialCharNamesDialog, TntDialogs, TntXPMenu,
  TntSystem, Language, FileCtrl, TntForms, WheelListBox, TntExtCtrls,
  SoundDialogs, MMAdvancedGrid;

const
  STATIC_LANG_RESID_START_NUM = 4500;
  DYNAMIC_LANG_RESID_START_NUM = 4750;
  DYNAMIC_TEXTS_COUNT = 25;

type
  TLibraryOrganizerForm = class(TTntForm)
    TopSectionPanel: TPanel;
    LeftMainPanel: TPanel;
    CategoryPanel1: TPanel;
    Splitter1: TSplitter;
    CharacterListPanel: TPanel;
    Splitter2: TSplitter;
    ButtonPanel1: TPanel;
    Panel8: TPanel;
    CategoryFolderTreeView1: TMMFolderTreeView;
    CharactersListBox: TWheelListBox;
    BottomSectionGroup: TTntGroupBox;
    Panel6: TPanel;
    Panel11: TPanel;
    PreviewZoomTrackBar: TTrackBar;
    BottomPanel: TPanel;
    RightMainPanel: TPanel;
    Panel10: TPanel;
    CategoryFolderTreeView2: TMMFolderTreeView;
    Splitter3: TSplitter;
    CharLibPathPanel1: TPanel;
    CharLibPathPanel2: TPanel;
    RenameCharacterBtn: TTntBitBtn;
    DeleteCharacterBtn: TTntBitBtn;
    ShowPreviewCheck: TTntCheckBox;
    LCDGridLinesCheck: TTntCheckBox;
    CloseBtn: TTntBitBtn;
    ZoomLabel: TTntLabel;
    NewCategoryPopup: TTntPopupMenu;
    DropPopupMenu: TTntPopupMenu;
    CancelDropMenuItem: TTntMenuItem;
    N2: TTntMenuItem;
    MoveHereMenuItem: TTntMenuItem;
    CopyHereMenuItem: TTntMenuItem;
    NewSubcategoryMenuItem: TTntMenuItem;
    NewMainCategoryMenuItem: TTntMenuItem;
    DeleteCategoryBtn: TTntBitBtn;
    RenameCategoryBtn: TTntBitBtn;
    NewCategoryBtn: TTntBitBtn;
    MoveToBtn: TTntBitBtn;
    CopyToBtn: TTntBitBtn;
    RenameCharacterPopup: TTntPopupMenu;
    SpecialNamesMenuItem: TTntMenuItem;
    CustomNameMenuItem: TTntMenuItem;
    TntXPMenu1: TTntXPMenu;
    CharLibPathLabel1: TTntLabel;
    CharLibPathLabel2: TTntLabel;
    CharListPreviewTimer: TTimer;
    CharPreviewGridStatusBar: TStatusBar;
    TntPanel1: TTntPanel;
    TntPanel2: TTntPanel;
    HintLabel: TTntLabel;
    TntImage1: TTntImage;
    CharPreviewGrid: TMMAdvancedGrid;
    procedure LCDGridLinesCheckClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CategoryFolderTreeView1FolderChange(Sender: TObject;
      Node: TTreeNode);
    procedure CharactersListBoxClick(Sender: TObject);
    procedure ShowPreviewCheckClick(Sender: TObject);
    procedure NewCategoryBtnClick(Sender: TObject);
    procedure DeleteCategoryBtnClick(Sender: TObject);
    procedure NewMainCategoryMenuItemClick(Sender: TObject);
    procedure NewSubcategoryMenuItemClick(Sender: TObject);
    procedure RenameCategoryBtnClick(Sender: TObject);
    procedure RenameCharacterBtnClick(Sender: TObject);
    procedure DeleteCharacterBtnClick(Sender: TObject);
    procedure MoveToBtnClick(Sender: TObject);
    procedure CopyToBtnClick(Sender: TObject);
    procedure Splitter1Moved(Sender: TObject);
    procedure LeftMainPanelResize(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure NewCategoryPopupPopup(Sender: TObject);
    procedure CategoryFolderTreeView2FolderChange(Sender: TObject;
      Node: TTreeNode);
    procedure CharactersListBoxMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure CategoryFolderTreeView2DragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure CategoryFolderTreeView2DragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure DropPopupMenuPopup(Sender: TObject);
    procedure CopyHereMenuItemClick(Sender: TObject);
    procedure MoveHereMenuItemClick(Sender: TObject);
    procedure CategoryFolderTreeView1DragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure PreviewZoomTrackBarChange(Sender: TObject);
    procedure CustomNameMenuItemClick(Sender: TObject);
    procedure SpecialNamesMenuItemClick(Sender: TObject);
    procedure Splitter2CanResize(Sender: TObject; var NewSize: Integer;
      var Accept: Boolean);
    procedure CharLibPathPanel1Resize(Sender: TObject);
    procedure CharLibPathPanel2Resize(Sender: TObject);
    procedure CharactersListBoxMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure CharListPreviewTimerTimer(Sender: TObject);
    procedure CharactersListBoxMouseWheel(Sender: TObject;
      Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
      var Handled: Boolean);
    procedure TntPanel1Resize(Sender: TObject);
    procedure TntFormHide(Sender: TObject);
  private
    { Private declarations }
    ShowDropMenu:Boolean;
    RefreshCharactersList:Boolean;
    OldSelectedCategoryPath1,OldSelectedCategoryPath2:String;
    SourceCharPath, DestinationCharPath:String;

    CharListWheelEvent: Boolean;  //Used to preview the character under the mouse when user scrolls the list by using mouse wheel button
    LastPreviewFile: String;

    //Multilanguage
    Dyn_Texts: array[1..DYNAMIC_TEXTS_COUNT] of WideString;
    ControlsFlipped: Boolean;
    procedure SetDynamicTexts(LangInstance: THandle);
    ///////////////
    
    procedure NormalCharRename;
  public
    { Public declarations }
    CharacterLibraryPath:String;
    LibraryChanged:Boolean;
    function CreateCategory(const CategoryFullPath:String):Boolean;
    function DeleteCategory(const CategoryFullPath:String):Boolean;
    function RenameCategory(const OldCategoryFullPath,NewCategoryFullPath:String):Boolean;
    procedure UpdateControlButtons;

    procedure SetLanguage(LanguageInfo: TLanguageInfo;
      LanguageOptions: TLanguageOptions; LangInstance: THandle);
  end;

var
  LibraryOrganizerForm: TLibraryOrganizerForm;

implementation

{$R *.dfm}

uses
  MainUnit, SpecialProcsUnit, LCDProcsUnit;

procedure TLibraryOrganizerForm.LCDGridLinesCheckClick(Sender: TObject);
begin
  if (Sender as TTntCheckBox).Checked then
    CharPreviewGrid.Options:=CharPreviewGrid.Options+[goVertLine,goHorzLine]
  else
    CharPreviewGrid.Options:=CharPreviewGrid.Options-[goVertLine,goHorzLine];
end;

procedure TLibraryOrganizerForm.FormCreate(Sender: TObject);
begin
  if (Win32Platform = VER_PLATFORM_WIN32s) or
     (Win32Platform = VER_PLATFORM_WIN32_WINDOWS) then
  begin
    //This windows version is a windows older than NT (and maybe not unicode)
  end;

  CharPreviewGrid.RowHeights[CharPreviewGrid.RowCount-1]:=0;
  RefreshCharactersList := True;
end;

procedure TLibraryOrganizerForm.FormShow(Sender: TObject);
begin
  //Update the CategoryFolderTreeView cancel dialog properties form the main form
  CategoryFolderTreeView1.CancelDialog.BiDiMode := MainForm.CategoryFolderTreeView.CancelDialog.BiDiMode;
  CategoryFolderTreeView1.CancelTitle := MainForm.CategoryFolderTreeView.CancelTitle;
  CategoryFolderTreeView1.CancelDescription := MainForm.CategoryFolderTreeView.CancelDescription;
  CategoryFolderTreeView1.CancelDialog.CancelCaption := MainForm.CategoryFolderTreeView.CancelDialog.CancelCaption;
  /////

  CharListPreviewTimer.Enabled := True;
  LibraryChanged := False;
  try
    CategoryFolderTreeView1.Root := CharacterLibraryPath;
    CategoryFolderTreeView1.RefreshFolderTree;
    CategoryFolderTreeView2.Root := CharacterLibraryPath;
    CategoryFolderTreeView2.Items.Assign(CategoryFolderTreeView1.Items);
  except
    CategoryFolderTreeView1.Items.Clear;
    CategoryFolderTreeView2.Items.Clear;
  end;
  UpdateControlButtons;
end;

procedure TLibraryOrganizerForm.CategoryFolderTreeView1FolderChange(
  Sender: TObject; Node: TTreeNode);
var
  List:TStringList;
  CategoryPath:String;
begin
  CharLibPathLabel1.Caption := MinimizeName(CategoryFolderTreeView1.SelectedFolderFullPath, CharLibPathLabel1.Canvas, CharLibPathLabel1.Width);
  CharLibPathLabel1.Hint := CategoryFolderTreeView1.SelectedFolderFullPath;
  SourceCharPath:=CategoryFolderTreeView1.SelectedFolderFullPath;
  if not RefreshCharactersList then
    Exit;
  CategoryPath:=CategoryFolderTreeView1.Root+'\'+CategoryFolderTreeView1.SelectedFolderFullPath;
  if DirectoryExists(CategoryPath) then
  begin
    List:=TStringList.Create;
    MainForm.GetCategoryCharacters(CategoryPath,List);
    CharactersListBox.Items.Assign(List);
    List.Free;
    if CharactersListBox.Items.Count>0 then
    begin
      CharactersListBox.ItemIndex:=0;
      //if Assigned(CharactersListBox.OnClick) then
      //  CharactersListBox.OnClick(CharactersListBox);
    end;
    UpdateControlButtons;
  end;
  CharactersListBox.OnClick(CharactersListBox);
end;

procedure TLibraryOrganizerForm.CharactersListBoxClick(Sender: TObject);
begin
  UpdateControlButtons;
  if not ShowPreviewCheck.Checked then
    Exit;
  if CharactersListBox.ItemIndex >= 0 then
  begin
    if not MainForm.ReadCategoryCharacter(CharPreviewGrid,CategoryFolderTreeView1.SelectedFolderFullPath,CharactersListBox.Items.Strings[CharactersListBox.ItemIndex]) then
    begin
      WideShowMessageSoundTop(WideFormat(Dyn_Texts[1], [CharactersListBox.Items.Strings[CharactersListBox.ItemIndex]]));  //{'Error in reading the character file ''%s''.'}
      CharactersListBox.EndDrag(False);
    end
    else
      CharPreviewGridStatusBar.SimpleText := WideFormat('%s : %d x %d', [CharactersListBox.Items.Strings[CharactersListBox.ItemIndex], CharPreviewGrid.RowCount - 1, CharPreviewGrid.ColCount]);
  end
  else
    LCDProcs.ClearLCD(CharPreviewGrid, MainForm.LCDOptions.LCDClearedColor);
end;

procedure TLibraryOrganizerForm.ShowPreviewCheckClick(Sender: TObject);
begin
  if ShowPreviewCheck.Checked then
    CharactersListBox.OnClick(CharactersListBox)
  else
    LCDProcs.ClearLCD(CharPreviewGrid, MainForm.LCDOptions.LCDClearedColor);
end;

procedure TLibraryOrganizerForm.NewCategoryBtnClick(Sender: TObject);
begin
  SpecialProcs.PopupMenuAtControl(NewCategoryBtn, NewCategoryPopup);
end;

function TLibraryOrganizerForm.CreateCategory(const CategoryFullPath:String): Boolean;
begin
  Result:=CreateDir(CategoryFullPath);
end;

function TLibraryOrganizerForm.DeleteCategory(
  const CategoryFullPath: String): Boolean;
begin
  Result:=RemoveDir(CategoryFullPath);
end;

procedure TLibraryOrganizerForm.DeleteCategoryBtnClick(Sender: TObject);
var
  CategoryFullPath: String;
  ErrMsg1: WideString;
begin
  ErrMsg1 := Dyn_Texts[2];  //'This category contains characters (or it may contain other files) and cannot be deleted.';

  CategoryFullPath:=CategoryFolderTreeView1.Root+'\'+CategoryFolderTreeView1.SelectedFolderFullPath;
  if CharactersListBox.Items.Count>0 then
    WideShowMessageSoundTop(ErrMsg1)
  else
  begin
    if WideMessageDlgSoundTop(WideFormat(Dyn_Texts[3], [CategoryFolderTreeView1.SelectedFolderName]) {'Are you sure you want to delete the category ''%s''?'},
           mtWarning,[mbYes,mbNo],0)=mrNo then
      Exit;
    if not DeleteCategory(CategoryFullPath) then
      WideShowMessageSoundTop(ErrMsg1)
    else
    begin
      LibraryChanged := True;
      CategoryFolderTreeView1.RefreshFolderTree;
      CategoryFolderTreeView2.Items.Assign(CategoryFolderTreeView1.Items);
    end;
  end;
end;

procedure TLibraryOrganizerForm.NewSubcategoryMenuItemClick(
  Sender: TObject);
var
  WideCategoryName: WideString;
  CategoryName, CategoryFullPath: String;
  Done: Boolean;
begin
  CategoryName:='';
  Done := False;
  repeat
    WideCategoryName := CategoryName;
    if not SpecialProcs.WideInputQueryWithFont(Dyn_Texts[5] {'New Subcategory...'}, Dyn_Texts[6] {'Enter subcategory name:'},
             Self.Font, WideCategoryName, MainForm.Dyn_Texts[32], MainForm.Dyn_Texts[33]) then
      Break;
    CategoryName := WideCategoryName;
    CategoryFullPath:=CategoryFolderTreeView1.Root+'\'+CategoryFolderTreeView1.SelectedFolderFullPath+'\'+CategoryName;
    Done:=CreateCategory(CategoryFullPath);
    if not Done then
      WideShowMessageSoundTop(WideFormat(Dyn_Texts[4], [CategoryName]) {'Unable to create the category ''%s''.'})
    else
    begin
      LibraryChanged := True;
      CategoryFolderTreeView1.RefreshFolderTree;
      CategoryFolderTreeView2.Items.Assign(CategoryFolderTreeView1.Items);
    end;
  until Done;
end;

procedure TLibraryOrganizerForm.NewMainCategoryMenuItemClick(
  Sender: TObject);
var
  WideCategoryName: WideString;
  CategoryName,CategoryFullPath:String;
  Done:Boolean;
begin
  CategoryName:='';
  CategoryFolderTreeView1.StorePath;
  CategoryFolderTreeView2.StorePath;
  Done := False;
  repeat
    WideCategoryName := CategoryName;
    if not SpecialProcs.WideInputQueryWithFont(Dyn_Texts[7] {'New Main Category...'}, Dyn_Texts[8] {'Enter main category name:'},
             Self.Font, WideCategoryName, MainForm.Dyn_Texts[32], MainForm.Dyn_Texts[33]) then
      Break;
    CategoryName := WideCategoryName;
    CategoryFullPath:=CategoryFolderTreeView1.Root+'\'+CategoryName;
    Done:=CreateCategory(CategoryFullPath);
    if not Done then
      WideShowMessageSoundTop(WideFormat(Dyn_Texts[9], [CategoryName]) {'Unable to create the category ''%s''.'})
    else
    begin
      LibraryChanged := True;
      CategoryFolderTreeView1.RefreshFolderTree;
      CategoryFolderTreeView2.Items.Assign(CategoryFolderTreeView1.Items);
      CategoryFolderTreeView1.RestorePath;
      CategoryFolderTreeView2.RestorePath;
    end;
  until Done;
end;

procedure TLibraryOrganizerForm.RenameCategoryBtnClick(Sender: TObject);
var
  WideCategoryName: WideString;
  CategoryName:String;
  OldCategoryFullPath,NewCategoryFullPath:String;
  Done:Boolean;
begin
  CategoryName:=CategoryFolderTreeView1.SelectedFolderName;
  Done := False;
  repeat
    WideCategoryName := CategoryName;
    if not SpecialProcs.WideInputQueryWithFont(Dyn_Texts[10] {'Rename Category'}, Dyn_Texts[11] {'Enter new name:'},
             Self.Font, WideCategoryName, MainForm.Dyn_Texts[32], MainForm.Dyn_Texts[33]) then
      Break;
    CategoryName := WideCategoryName;
    OldCategoryFullPath:=CategoryFolderTreeView1.Root+'\'+CategoryFolderTreeView1.SelectedFolderFullPath;
    NewCategoryFullPath:=CategoryFolderTreeView1.Root+'\'+ExtractFilePath(CategoryFolderTreeView1.SelectedFolderFullPath)+CategoryName;
    Done:=RenameCategory(OldCategoryFullPath,NewCategoryFullPath);
    if not Done then
      WideShowMessageSoundTop(WideFormat(Dyn_Texts[12], [CategoryFolderTreeView1.SelectedFolderName, CategoryName])  {'Unable to rename the category ''%s'' to ''%s''.'})
    else
    begin
      LibraryChanged := True;
      CategoryFolderTreeView1.RefreshFolderTree;
      CategoryFolderTreeView2.Items.Assign(CategoryFolderTreeView1.Items);
      CharactersListBox.Clear;
      CharLibPathLabel1.Caption := '';
      CharLibPathLabel1.Hint := '';
      UpdateControlButtons;
    end;
  until Done;
end;

function TLibraryOrganizerForm.RenameCategory(const OldCategoryFullPath,
  NewCategoryFullPath: String): Boolean;
begin
  Result := RenameFile(OldCategoryFullPath,NewCategoryFullPath);
end;

procedure TLibraryOrganizerForm.RenameCharacterBtnClick(Sender: TObject);
begin
  if CharactersListBox.ItemIndex<0 then
    Exit;
  SpecialProcs.PopupMenuAtControl(RenameCharacterBtn, RenameCharacterPopup);
end;

procedure TLibraryOrganizerForm.DeleteCharacterBtnClick(Sender: TObject);
var
  CharName:String;
  OldSelectedChar:Integer;
begin
  if CharactersListBox.ItemIndex<0 then
    Exit;
  CharName:=CharactersListBox.Items.Strings[CharactersListBox.ItemIndex];
  if WideMessageDlgSoundTop(WideFormat(Dyn_Texts[13], [CharName]) {'Are you sure you want to delete the character ''%s''?'},
         mtWarning, [mbYes,mbNo],0)=mrNo then
    Exit;
  if not DeleteFile(CategoryFolderTreeView1.Root+'\'+CategoryFolderTreeView1.SelectedFolderFullPath+'\'+CharName+'.chr') then
    WideShowMessageSoundTop(WideFormat(Dyn_Texts[14], [CharName])  {'Unable to delete the character ''%s''.'})
  else
  begin
    LibraryChanged := True;
    OldSelectedChar:=CharactersListBox.ItemIndex;
    CategoryFolderTreeView1.OnFolderChange(CategoryFolderTreeView1,nil);
    if CharactersListBox.Items.Count>OldSelectedChar then
    begin
      CharactersListBox.ItemIndex:=OldSelectedChar;
      CharactersListBox.OnClick(CharactersListBox);
    end;
  end;
end;

procedure TLibraryOrganizerForm.MoveToBtnClick(Sender: TObject);
var
  OldCharPath,NewCharPath:String;
  CharName:String;
  OldItemIndex: Integer;
begin
  if CharactersListBox.ItemIndex < 0 then  //--> Prevent potential software bugs
  begin
    UpdateControlButtons;
    Exit;
  end;
  OldCharPath:=SourceCharPath;  //CategoryFolderTreeView1.SelectedFolderFullPath;
  NewCharPath:=DestinationCharPath;  //CategoryFolderTreeView2.SelectedFolderFullPath;
  if OldCharPath=NewCharPath then
  begin
    WideShowMessageSoundTop(Dyn_Texts[15]);  //'The new category is the same as the old category.'
    Exit;
  end;
  CharName:=CharactersListBox.Items.Strings[CharactersListBox.ItemIndex];
  if FileExists(CategoryFolderTreeView1.Root+'\'+NewCharPath+'\'+CharName+'.chr') then
  begin
    WideShowMessageSoundTop(WideFormat(Dyn_Texts[16], [CharName]) {'The destination category already have a character named ''%s''.'});
    Exit;
  end;
  if not Procs.FileMove(CategoryFolderTreeView1.Root+'\'+OldCharPath+'\'+CharName+'.chr',CategoryFolderTreeView1.Root+'\'+NewCharPath+'\'+CharName+'.chr') then
    WideShowMessageSoundTop(WideFormat(Dyn_Texts[17], [CharName]) {'Unable to move the character ''%s'' to the destination category.'})
  else
  begin
    LibraryChanged := True;
    OldItemIndex := CharactersListBox.ItemIndex;
    CharactersListBox.Items.Delete(CharactersListBox.ItemIndex);
    if CharactersListBox.Items.Count > 0 then
    begin
      if OldItemIndex < CharactersListBox.Items.Count then
        CharactersListBox.ItemIndex := OldItemIndex
      else
        CharactersListBox.ItemIndex := CharactersListBox.Items.Count - 1;
    end;
  end;
  UpdateControlButtons;
end;

procedure TLibraryOrganizerForm.CopyToBtnClick(Sender: TObject);
var
  OldCharPath,NewCharPath:String;
  CharName:String;
begin
  if CharactersListBox.ItemIndex < 0 then  //--> Prevent potential software bugs
  begin
    UpdateControlButtons;
    Exit;
  end;
  OldCharPath:=SourceCharPath;  //CategoryFolderTreeView1.SelectedFolderFullPath;
  NewCharPath:=DestinationCharPath;  //CategoryFolderTreeView2.SelectedFolderFullPath;
  if OldCharPath=NewCharPath then
  begin
    WideShowMessageSoundTop(Dyn_Texts[15]);
    Exit;
  end;
  CharName:=CharactersListBox.Items.Strings[CharactersListBox.ItemIndex];
  if FileExists(CategoryFolderTreeView1.Root+'\'+NewCharPath+'\'+CharName+'.chr') then
  begin
    WideShowMessageSoundTop(WideFormat(Dyn_Texts[18], [CharName]) {'The destination category already have a character named ''%s''.'});
    Exit;
  end;
  if not Procs.FileCopy(CategoryFolderTreeView1.Root+'\'+OldCharPath+'\'+CharName+'.chr',CategoryFolderTreeView1.Root+'\'+NewCharPath+'\'+CharName+'.chr') then
    WideShowMessageSoundTop(WideFormat(Dyn_Texts[19], [CharName]) {'Unable to copy the character ''%s'' to the destination category.'})
  else
  begin
    LibraryChanged := True;
  end;
  UpdateControlButtons;
end;

procedure TLibraryOrganizerForm.Splitter1Moved(Sender: TObject);
begin
  if CategoryPanel1.Width < 196 then
    CategoryPanel1.Width:=196
  else if CharacterListPanel.Width<118 then
      CategoryPanel1.Width:=CategoryPanel1.Width-(118-CharacterListPanel.Width);
end;

procedure TLibraryOrganizerForm.LeftMainPanelResize(Sender: TObject);
begin
  if CharacterListPanel.Width < 118 then
    LeftMainPanel.Width := LeftMainPanel.Width + (119 - CharacterListPanel.Width )
  else if LeftMainPanel.Width < (CategoryPanel1.Width + CharacterListPanel.Width) then
    LeftMainPanel.Width := CategoryPanel1.Width + CharacterListPanel.Width;
end;

procedure TLibraryOrganizerForm.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TLibraryOrganizerForm.NewCategoryPopupPopup(Sender: TObject);
begin
  NewSubcategoryMenuItem.Enabled:=CategoryFolderTreeView1.Selected<>nil;
end;

procedure TLibraryOrganizerForm.UpdateControlButtons;
begin
  NewCategoryBtn.Enabled := DirectoryExists(CategoryFolderTreeView1.Root);
  RenameCategoryBtn.Enabled := DirectoryExists(CategoryFolderTreeView1.Root + '\' + CategoryFolderTreeView1.SelectedFolderFullPath);
  DeleteCategoryBtn.Enabled := RenameCategoryBtn.Enabled;

  RenameCharacterBtn.Enabled:=CharactersListBox.ItemIndex>=0;
  DeleteCharacterBtn.Enabled:=RenameCharacterBtn.Enabled;

  MoveToBtn.Enabled:=RenameCharacterBtn.Enabled and (Length(CategoryFolderTreeView2.SelectedFolderFullPath)>0);
  CopyToBtn.Enabled:=RenameCharacterBtn.Enabled and (Length(CategoryFolderTreeView2.SelectedFolderFullPath)>0);
end;

procedure TLibraryOrganizerForm.CategoryFolderTreeView2FolderChange(
  Sender: TObject; Node: TTreeNode);
begin
  CharLibPathLabel2.Caption := MinimizeName(CategoryFolderTreeView2.SelectedFolderFullPath, CharLibPathLabel2.Canvas, CharLibPathLabel2.Width);
  CharLibPathLabel2.Hint := CategoryFolderTreeView2.SelectedFolderFullPath;
  DestinationCharPath := CategoryFolderTreeView2.SelectedFolderFullPath;
  UpdateControlButtons;
end;

procedure TLibraryOrganizerForm.CharactersListBoxMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (Button=mbLeft) or (Button=mbRight) then
    if CharactersListBox.ItemAtPos(Point(X,Y),True)>=0 then
    begin
      CharactersListBox.ItemIndex:=CharactersListBox.ItemAtPos(Point(X,Y),True);
      CharactersListBox.BeginDrag(False);
      CharListPreviewTimer.Enabled := False;  //Disable the timer, because the current folder may be changed during dragging of the character
      ShowDropMenu:=Button=mbRight;
    end;
end;

procedure TLibraryOrganizerForm.CategoryFolderTreeView2DragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
var
  NodeTemp:TTreeNode;
  i:Integer;
begin
  Accept := Source is TListBox;
  if State = dsDragEnter then
  begin
    (Sender as TMMFolderTreeView).SetFocus;
    RefreshCharactersList:=False;
    OldSelectedCategoryPath1:=CategoryFolderTreeView1.SelectedFolderFullPath;
    OldSelectedCategoryPath2:=CategoryFolderTreeView2.SelectedFolderFullPath;
    SourceCharPath:=CategoryFolderTreeView1.SelectedFolderFullPath;
    DestinationCharPath:=(Sender as TMMFolderTreeView).SelectedFolderFullPath;
  end
  else if State=dsDragMove then
  begin
    NodeTemp:=(Sender as TMMFolderTreeView).GetNodeAt(X,Y);
    if Assigned(NodeTemp) then
    begin
      if not(NodeTemp.getFirstChild = nil) then
      begin
        for i:=0 to (Sender as TMMFolderTreeView).Items.Count-1 do
          if (Sender as TMMFolderTreeView).Items[i].Parent=NodeTemp then
            (Sender as TMMFolderTreeView).Selected:=(Sender as TMMFolderTreeView).Items[i];
      end;
      (Sender as TMMFolderTreeView).Selected:=NodeTemp;
    end;
    DestinationCharPath:=(Sender as TMMFolderTreeView).SelectedFolderFullPath;
  end
  else if State=dsDragLeave then
  begin
    //First select, then activate refresh
    CategoryFolderTreeView1.Selected:=MainForm.FindTreeViewNode(CategoryFolderTreeView1.Items,OldSelectedCategoryPath1);
    RefreshCharactersList:=True;
    //don't preserve old selected category for CategoryFolderTreeView2
    //CategoryFolderTreeView2.Selected:=MainForm.FindTreeViewNode(CategoryFolderTreeView2.Items,OldSelectedCategoryPath2);
  end;
end;

procedure TLibraryOrganizerForm.CategoryFolderTreeView2DragDrop(Sender,
  Source: TObject; X, Y: Integer);
begin
  if Source is TListBox then
  begin
    if ShowDropMenu then
    begin
      DropPopupMenu.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
    end
    else
    begin
      MoveToBtn.Click;
      CharactersListBox.SetFocus;
    end;
  end;
end;

procedure TLibraryOrganizerForm.DropPopupMenuPopup(Sender: TObject);
begin
  CopyHereMenuItem.Caption := WideFormat(Dyn_Texts[20], [ExtractFileName(DestinationCharPath)]);  //'Copy Character to ''%s'''
  MoveHereMenuItem.Caption := WideFormat(Dyn_Texts[21], [ExtractFileName(DestinationCharPath)]);  //'Move Character to ''%s'''
end;

procedure TLibraryOrganizerForm.CopyHereMenuItemClick(Sender: TObject);
begin
  CopyToBtn.Click;
  CharactersListBox.SetFocus;
end;

procedure TLibraryOrganizerForm.MoveHereMenuItemClick(Sender: TObject);
begin
  MoveToBtn.Click;
  CharactersListBox.SetFocus;
end;

procedure TLibraryOrganizerForm.CategoryFolderTreeView1DragDrop(Sender,
  Source: TObject; X, Y: Integer);
begin
  if Source is TListBox then
  begin
    if ShowDropMenu then
    begin
      DropPopupMenu.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
    end
    else
    begin
      MoveToBtn.Click;
      CharactersListBox.SetFocus;
    end;
  end;
end;

procedure TLibraryOrganizerForm.PreviewZoomTrackBarChange(Sender: TObject);
begin
  CharPreviewGrid.DefaultRowHeight:=PreviewZoomTrackBar.Position;
  CharPreviewGrid.DefaultColWidth:=PreviewZoomTrackBar.Position;
  CharPreviewGrid.RowHeights[CharPreviewGrid.RowCount-1]:=0;
end;

procedure TLibraryOrganizerForm.NormalCharRename;
var
  WideNewCharName: WideString;
  OldCharName,NewCharName,CharPath:String;
  Done:Boolean;
begin
  OldCharName:=CharactersListBox.Items.Strings[CharactersListBox.ItemIndex];
  NewCharName:=OldCharName;
  CharPath:=CategoryFolderTreeView1.Root+'\'+CategoryFolderTreeView1.SelectedFolderFullPath+'\';
  Done := False;
  repeat
    WideNewCharName := NewCharName;
    if  not SpecialProcs.WideInputQueryWithFont(Dyn_Texts[22] {'Rename Character'}, Dyn_Texts[23] {'Enter new name of the character:'},
              Self.Font, WideNewCharName, MainForm.Dyn_Texts[32], MainForm.Dyn_Texts[33]) then
      Break;
    NewCharName := WideNewCharName;
    Done:=RenameFile(CharPath+OldCharName+'.chr',CharPath+NewCharName+'.chr');
    if not Done then
      WideShowMessageSoundTop(WideFormat(Dyn_Texts[24], [OldCharName]) {'Unable to rename the character ''%s''.'})
    else
    begin
      LibraryChanged := True;
      CharactersListBox.Items.Strings[CharactersListBox.ItemIndex]:=NewCharName;
    end;
  until Done;
end;

procedure TLibraryOrganizerForm.CustomNameMenuItemClick(Sender: TObject);
begin
  NormalCharRename;
end;

procedure TLibraryOrganizerForm.SpecialNamesMenuItemClick(Sender: TObject);
var
  OldCharName,NewCharName,CharPath:String;
  SpecialCharNamesDialog: TSpecialCharNamesDialog;
begin

  SpecialCharNamesDialog := TSpecialCharNamesDialog.Create(nil);
  with SpecialCharNamesDialog do
  begin
    CancelBtnCaption := MainForm.Dyn_Texts[2];  //'Cancel';
    OKBtnCaption := MainForm.Dyn_Texts[27]; {'&OK';}
    CharacterGroupsWord := MainForm.Dyn_Texts[28];  {'Character Groups';}
    CharactersInTheGroupWord := MainForm.Dyn_Texts[29];  {'Characters In the Group';}
    UserMappedCharsBtnCaption := MainForm.Dyn_Texts[31];  {'&User-Mapped Chars...'}
    UserMappedCharsFormCaption := MainForm.Dyn_Texts[36];  //'User-Mapped Character Names';
    Title := Dyn_Texts[25];  //'Special Character Name';
  end;

  try
   if SpecialCharNamesDialog.Execute then
    begin
      OldCharName := CharactersListBox.Items.Strings[CharactersListBox.ItemIndex];
      NewCharName := SpecialCharNamesDialog.CharacterFileName;
      CharPath := CategoryFolderTreeView1.Root+'\'+CategoryFolderTreeView1.SelectedFolderFullPath+'\';
      if not RenameFile(CharPath + OldCharName + '.chr', CharPath + NewCharName + '.chr') then
        WideShowMessageSoundTop(WideFormat(Dyn_Texts[24], [OldCharName]))  {'Unable to rename the character ''%s''.'}
      else
      begin
        LibraryChanged := True;
        CharactersListBox.Items.Strings[CharactersListBox.ItemIndex] := NewCharName;
      end;
    end;
  finally
    SpecialCharNamesDialog.Free;
  end;
end;

procedure TLibraryOrganizerForm.Splitter2CanResize(Sender: TObject;
  var NewSize: Integer; var Accept: Boolean);
begin
  Accept := ((TopSectionPanel.Height - (NewSize - BottomSectionGroup.Height)) >= TopSectionPanel.Constraints.MinHeight) and
            (NewSize >= BottomSectionGroup.Constraints.MinHeight);
end;

procedure TLibraryOrganizerForm.CharLibPathPanel1Resize(Sender: TObject);
begin
  //The Hint property is set to the selected path
  CharLibPathLabel1.Caption := MinimizeName(CharLibPathLabel1.Hint, CharLibPathLabel1.Canvas, CharLibPathLabel1.Width);
end;

procedure TLibraryOrganizerForm.CharLibPathPanel2Resize(Sender: TObject);
begin
  //The Hint property is set to the selected path
  CharLibPathLabel2.Caption := MinimizeName(CharLibPathLabel2.Hint, CharLibPathLabel2.Canvas, CharLibPathLabel2.Width);
end;

procedure TLibraryOrganizerForm.CharactersListBoxMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
  procedure PreviewCharacter(
    ItemIndex: Integer; ShowErrorMessage: Boolean);
  var
    NewCharFName: String;
  begin
    NewCharFName := CategoryFolderTreeView1.SelectedFolderFullPath + '\' + CharactersListBox.Items.Strings[ItemIndex];
    if NewCharFName = LastPreviewFile then
      Exit;

    LastPreviewFile := NewCharFName;
    try
      MainForm.ReadCategoryCharacter(CharPreviewGrid, CategoryFolderTreeView1.SelectedFolderFullPath, CharactersListBox.Items.Strings[ItemIndex]);
    except
    end;

    CharPreviewGridStatusBar.SimpleText := WideFormat('%s : %d x %d', [CharactersListBox.Items.Strings[ItemIndex], CharPreviewGrid.RowCount - 1, CharPreviewGrid.ColCount]);
    LCDProcs.CheckLCDScrollBars(CharPreviewGrid);
  end;

var
  ItemAtPosIndex: Integer;
begin
  if not ShowPreviewCheck.Checked then
    Exit;
  //Use Mouse.CursorPos instead of X and Y paarmeters because this procedure also is invoked with dummy parameter values
  ItemAtPosIndex := CharactersListBox.ItemAtPos(CharactersListBox.ScreenToClient(Mouse.CursorPos), True);
  if ItemAtPosIndex >= 0 then
  begin
    //CharactersListBox.Cursor := crHandPoint;  --> Don't change the cursor
    PreviewCharacter(ItemAtPosIndex, False);
    CharListPreviewTimer.Enabled := True;
  end
  else
  begin
    //CharactersListBox.Cursor := crDefault;  --> Cursor is not changed
    if CharactersListBox.ItemIndex >= 0 then
      PreviewCharacter(CharactersListBox.ItemIndex, False);
//    else  --> Not necessary, althought causes a message processing bug
//      LCDProcs.ClearLCD(CharPreviewGrid, MainForm.LCDOptions.LCDClearedColor);
  end;
end;

procedure TLibraryOrganizerForm.CharListPreviewTimerTimer(Sender: TObject);
var
  ItemAtPosIndex: Integer;
begin
  if CharactersListBox.ItemIndex < 0 then
  begin
    CharListPreviewTimer.Enabled := False;
    Exit;
  end;
  ItemAtPosIndex := CharactersListBox.ItemAtPos(CharactersListBox.ScreenToClient(Mouse.CursorPos), True);
  if ItemAtPosIndex < 0 then
  begin
    CharListPreviewTimer.Enabled := False;
    if Assigned(CharactersListBox.OnCLick) then
      CharactersListBox.OnClick(CharactersListBox);
  end
  else if CharListWheelEvent then
  begin
    CharactersListBox.OnMouseMove(CharactersListBox, [], 0, 0);  //Dummy parameters
    CharListWheelEvent := False;
  end;
end;

procedure TLibraryOrganizerForm.CharactersListBoxMouseWheel(
  Sender: TObject; Shift: TShiftState; WheelDelta: Integer;
  MousePos: TPoint; var Handled: Boolean);
begin
  CharListWheelEvent := True;
end;

procedure TLibraryOrganizerForm.TntPanel1Resize(Sender: TObject);
begin
  LCDProcs.CheckLCDScrollBars(CharPreviewGrid);
end;

procedure TLibraryOrganizerForm.TntFormHide(Sender: TObject);
begin
  CharListPreviewTimer.Enabled := False;
end;

//***************************************************************************
//Multilanguage
//***************************************************************************
procedure TLibraryOrganizerForm.SetLanguage(LanguageInfo: TLanguageInfo;
  LanguageOptions: TLanguageOptions; LangInstance: THandle);

  function GetStaticText(ResID: Integer): WideString;
  var
    ResStringRec: TResStringRec;
  begin
    ResStringRec.Identifier := ResID + STATIC_LANG_RESID_START_NUM;
    ResStringRec.Module := @LangInstance;
    Result := MainForm.ReplaceInvalidUnicodeChars(WideLoadResString(@ResStringRec));
  end;

var
  FormVisible: Boolean;
  FlipOperation: Boolean;
begin
  //////////////////////////////
  SetDynamicTexts(LangInstance);

  FormVisible := Self.Visible;
  try
    if (LangInstance <> 0) or LanguageOptions.LanguageOptionsChanged then
      if FormVisible then
        Self.Visible := False;
  except
  end;

  MainForm.ApplyLanguageOptions(Self, LanguageInfo, LanguageOptions);
  //Exceptions
  CharLibPathLabel1.BiDiMode := bdLeftToRight;
  CharLibPathLabel2.BiDiMode := bdLeftToRight;
  MoveToBtn.BiDiMode := bdLeftToRight;
  CopyToBtn.BiDiMode := bdLeftToRight;
  ////////////
  FlipOperation := False;
  if LanguageInfo.RightToLeft and LanguageInfo.FlipControls and
    LanguageOptions.ApplyRTLToAppearance then
  begin
    if not ControlsFlipped then
    begin
      SpecialProcs.FlipChildrenExcept(Self, FlipExcludedControlsList, True);
      FlipOperation := True;
    end;
    ControlsFlipped := True;
  end
  else if ControlsFlipped then
  begin
    SpecialProcs.FlipChildrenExcept(Self, FlipExcludedControlsList, True);
    ControlsFlipped := False;
    FlipOperation := True;
  end;
  if FlipOperation then
  begin
    SpecialProcs.FlipControls([]);
    SpecialProcs.FlipChildrenExcept(TopSectionPanel, FlipExcludedControlsList, True);
    SpecialProcs.FlipChildrenExcept(BottomPanel, FlipExcludedControlsList, False);
  end;
  //////////////////////////////
  if LangInstance = 0 then
  begin
    MainForm.ShowForm(Self, FormVisible);
    Exit;
  end;

  Self.Caption := GetStaticText(0);

  /////////////////
  //Menu Items

  //NewCategoryPopup
  NewMainCategoryMenuItem.Caption := GetStaticText(1);
  NewSubcategoryMenuItem.Caption := GetStaticText(2);

  //RenameCharacterPopup
  SpecialNamesMenuItem.Caption := GetStaticText(3);
  CustomNameMenuItem.Caption := GetStaticText(4);

  //DropPopupMenu
  CopyHereMenuItem.Caption := GetStaticText(5);  //Not needed
  MoveHereMenuItem.Caption := GetStaticText(6);  //Not needed
  CancelDropMenuItem.Caption := GetStaticText(7);

  //Menu Items Done
  /////////////////

  ////////////////////
  //Left Section
  NewCategoryBtn.Caption := GetStaticText(8);
  RenameCategoryBtn.Caption := GetStaticText(9);
  DeleteCategoryBtn.Caption := GetStaticText(10);

  ////////////////////
  //Middle Section
  RenameCharacterBtn.Caption := GetStaticText(11);
  DeleteCharacterBtn.Caption := GetStaticText(12);

  ////////////////////
  //Right Section
  MoveToBtn.Caption := GetStaticText(13);
  CopyToBtn.Caption := GetStaticText(14);

  ////////////////////
  //Bottom Section
  BottomSectionGroup.Caption := GetStaticText(15);
  ShowPreviewCheck.Caption := GetStaticText(16);
  ZoomLabel.Caption := GetStaticText(17);
  LCDGridLinesCheck.Caption := GetStaticText(18);

  ////////////////////
  CloseBtn.Caption := GetStaticText(19);

  //-----------------
  //Change Hints
  //-----------------
  ////////////////////
  NewCategoryBtn.Hint := GetStaticText(20);
  RenameCategoryBtn.Hint := GetStaticText(21);
  DeleteCategoryBtn.Hint := GetStaticText(22);

  ////////////////////
  RenameCharacterBtn.Hint := GetStaticText(23);
  DeleteCharacterBtn.Hint := GetStaticText(24);

  ////////////////////
  MoveToBtn.Hint := GetStaticText(25);
  CopyToBtn.Hint := GetStaticText(26);
  CategoryFolderTreeView2.Hint := GetStaticText(27);

  ////////////////////
  CloseBtn.Hint := GetStaticText(28);

  //HintLabel
  HintLabel.Caption := GetStaticText(29);

  MainForm.ShowForm(Self, FormVisible);
end;

procedure TLibraryOrganizerForm.SetDynamicTexts(LangInstance: THandle);

  procedure SetDefaultDynamicTexts;
  begin
    Dyn_Texts[1] := 'Error in reading the character file ''%s''.';
    Dyn_Texts[2] := 'This category contains characters (or it may contain other files) and cannot be deleted.';
    Dyn_Texts[3] := 'Are you sure you want to delete the category ''%s''?';
    Dyn_Texts[4] := 'Unable to create the category ''%s''.';
    Dyn_Texts[5] := 'New Subcategory...';
    Dyn_Texts[6] := 'Enter subcategory name:';
    Dyn_Texts[7] := 'New Main Category...';
    Dyn_Texts[8] := 'Enter main category name:';
    Dyn_Texts[9] := 'Unable to create the category ''%s''.';
    Dyn_Texts[10] := 'Rename Category';
    Dyn_Texts[11] := 'Enter new name:';
    Dyn_Texts[12] := 'Unable to rename the category ''%s'' to ''%s''.';
    Dyn_Texts[13] := 'Are you sure you want to delete the character ''%s''?';
    Dyn_Texts[14] := 'Unable to delete the character ''%s''.';
    Dyn_Texts[15] := 'The new category is the same as the old category.';
    Dyn_Texts[16] := 'The destination category already have a character named ''%s''.';
    Dyn_Texts[17] := 'Unable to move the character ''%s'' to the destination category.';
    Dyn_Texts[18] := 'The destination category already have a character named ''%s''.';
    Dyn_Texts[19] := 'Unable to copy the character ''%s'' to the destination category.';
    Dyn_Texts[20] := 'Co&py Character to ''%s''';
    Dyn_Texts[21] := '&Move Character to ''%s''';
    Dyn_Texts[22] := 'Rename Character';
    Dyn_Texts[23] := 'Enter new name of the character:';
    Dyn_Texts[24] := 'Unable to rename the character ''%s''.';
    Dyn_Texts[25] := 'Special Character Name';
  end;

var
  i: Integer;
  S: WideString;
  ResStringRec: TResStringRec;
begin
  SetDefaultDynamicTexts;
  if LangInstance = 0 then
    Exit;

  ResStringRec.Module := @LangInstance;
  for i := 1 to DYNAMIC_TEXTS_COUNT do
  begin
    ResStringRec.Identifier := i + DYNAMIC_LANG_RESID_START_NUM;
    S := MainForm.ReplaceInvalidUnicodeChars(WideLoadResString(@ResStringRec));
    if Length(S) > 0 then
      Dyn_Texts[i] := S;
  end;
end;
//***************************************************************************
//***************************************************************************
//***************************************************************************

end.

