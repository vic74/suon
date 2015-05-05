unit TaskEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxSkinsdxBarPainter, cxClasses,
  dxBar, cxMemo, cxListBox, cxRichEdit, cxDropDownEdit, cxCalendar, cxMaskEdit,
  cxTextEdit, dxLayoutLookAndFeels, dxLayoutControl, DB, FIBDataSet, pFIBDataSet,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, dxmdaset,
  cxGridLevel, cxGridCustomView, cxGrid, Menus, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxSpinEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  BaseForm,
  cxPropertiesStore, dxSkinDevExpressStyle, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxNavigator;

type
  TTaskEditForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc_1: TdxLayoutControl;
    lf_1: TdxLayoutLookAndFeelList;
    llf_1: TdxLayoutWebLookAndFeel;
    grp__1Group1: TdxLayoutGroup;
    grp__1Group2: TdxLayoutGroup;
    TASKHEAD: TcxTextEdit;
    itm__1Item1: TdxLayoutItem;
    TASKPRIORITY: TcxComboBox;
    itm__1Item11: TdxLayoutItem;
    TASKBEGIN: TcxDateEdit;
    itm__1Item12: TdxLayoutItem;
    TASKEND: TcxDateEdit;
    itm__1Item13: TdxLayoutItem;
    grp__1Group4: TdxLayoutGroup;
    TASKBODY: TcxRichEdit;
    itm__1Item14: TdxLayoutItem;
    grp__1Group5: TdxLayoutGroup;
    spl_1: TdxLayoutSplitterItem;
    grp__1Group6: TdxLayoutGroup;
    grp__1Group3: TdxLayoutGroup;
    grp__1Group7: TdxLayoutGroup;
    TASKUSER: TcxTextEdit;
    itm__1Item16: TdxLayoutItem;
    TASKSTATUS: TcxMemo;
    itm__1Item17: TdxLayoutItem;
    txt_TASKPRIORITY: TcxTextEdit;
    itm__1Item18: TdxLayoutItem;
    bar1: TdxBarManager;
    br1: TdxBar;
    doc_1: TdxBarDockControl;
    itm__1Item19: TdxLayoutItem;
    grp__1Group8: TdxLayoutGroup;
    btn_AddFile: TdxBarButton;
    btn_DelFile: TdxBarButton;
    doc2: TdxBarDockControl;
    itm__1Item110: TdxLayoutItem;
    br2: TdxBar;
    btn_Save: TdxBarButton;
    btn_Cancel: TdxBarButton;
    lfo_1: TdxLayoutOfficeLookAndFeel;
    lcf_1: TdxLayoutCxLookAndFeel;
    m2: TcxMemo;
    itm__1Item112: TdxLayoutItem;
    doc3: TdxBarDockControl;
    itm__1Item113: TdxLayoutItem;
    rch_1: TcxRichEdit;
    itm__1Item111: TdxLayoutItem;
    br3: TdxBar;
    btn_AddComment: TdxBarButton;
    ds_TASKCOMMENT: TpFIBDataSet;
    ds_TASKFILES: TpFIBDataSet;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm__1Item114: TdxLayoutItem;
    md1: TdxMemData;
    src_md1: TDataSource;
    fld_md1CODE: TIntegerField;
    fld_md1TASKCODE: TIntegerField;
    fld_md1TASKUSER: TIntegerField;
    fld_md1DATAFILE: TDateField;
    fld_md1TASKFILENAME: TStringField;
    cl_CODE: TcxGridDBColumn;
    cl_TASKCODE: TcxGridDBColumn;
    cl_TASKUSER: TcxGridDBColumn;
    cl_DATAFILE: TcxGridDBColumn;
    cl_TASKFILENAME: TcxGridDBColumn;
    pm_1: TPopupMenu;
    N1: TMenuItem;
    gpop_1: TcxGridPopupMenu;
    TASKCOMPLETE: TcxSpinEdit;
    itm__1Item15: TdxLayoutItem;
    cbb_TASKSTATUS: TcxLookupComboBox;
    itm__1Item115: TdxLayoutItem;
    ds_TASKSTATUS: TpFIBDataSet;
    src_TASKSTATUS: TDataSource;
    prop1: TcxPropertiesStore;
    spl_2: TdxLayoutSplitterItem;
    dlg: TOpenDialog;
    sdlg: TSaveDialog;
    procedure btn_SaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_AddFileClick(Sender: TObject);
    procedure btn_DelFileClick(Sender: TObject);
    procedure btn_AddCommentClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure SetModified(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btn_CancelClick(Sender: TObject);
  private
    { Private declarations }
    modified : boolean;
    NewTaskCode: Variant;
    FileList : TStringList;
    procedure SaveTask;
    function CheckParams: boolean;
    procedure AddFile(FileName: string);
    procedure SaveFile;
    procedure OpenDS;
    procedure ReopenTASKCOMMENT;
    procedure Reopen_TASKFILES;
    procedure DelFile;
    procedure AddComment;
    procedure FillControl;
    procedure GetAndSave(CODE, FName: Variant);

  public
    { Public declarations }
    TASKCODE, vTASKSTATUS: Variant; //код задачи
    DS: TpFIBDataSet;
    isEdit: Boolean;
  end;

var
  TaskEditForm: TTaskEditForm;

implementation

uses cmDBUnit, AppUtils, dezCommon;

{$R *.dfm}

procedure AddColoredLine(ARichEdit: TcxRichEdit; AText: string; AColor: TColor);
begin
 with ARichEdit do
 begin
   SelStart := Length(Text);
   SelAttributes.Color := AColor;
   SelAttributes.Size := 8;
   SelAttributes.Name := 'MS Sans Serif';
   SelAttributes.Style:= [fsBold] + [fsUnderline];
   Lines.Add(AText);
 end;
end;

function GetFileSizeMB(AFileName : String) : Double;
var
  F : TSearchRec;
begin
  Try
    If FindFirst(AFileName,faAnyFile,F) <> 0 Then
      Raise Exception.Create('File not found.');
    Result := F.Size / (1024*1024);
  Finally
    FindClose(F);
  End;
end;

{ TTaskEditForm }

procedure TTaskEditForm.AddComment;
begin
  if m2.EditingValue = null then
    raise EMyException.Create('Нечего добавлять!');
  if TASKCODE = null then
    raise EMyException.Create('Сначала нужно создать (сохранить) задачу,'+#10#13+
                              ' а уже потом комментировать ее!');
  with ds_TASKCOMMENT do begin
    Append;
    FN('TASKCODE').AsVariant := TASKCODE;
    FN('COMMENT').AsVariant:= m2.EditingValue;
    FN('TASKUSER').AsVariant := ActiveWorker;
    Post;
    m2.Clear;
  end;
  ReopenTASKCOMMENT;
end;

procedure TTaskEditForm.AddFile(FileName: string);
begin
  FileList.Add(FileName);
  md1.Append;
  md1.FieldByName('TASKFILENAME').AsVariant:=ExtractFileName(FileName);
  md1.Post;
  modified := true;
end;

procedure TTaskEditForm.btn_AddCommentClick(Sender: TObject);
begin
  AddComment;
end;

procedure TTaskEditForm.btn_AddFileClick(Sender: TObject);
begin
  if dlg.Execute then begin
     if GetFileSizeMB(dlg.FileName) > 30 then
      raise EMyException.Create('Слишком большой размер файла!'+#10#13+'Загрузка отменена.');
     //ShowMessage(FloatToStr(GetFileSizeMB(dlg.FileName)));
     AddFile(dlg.FileName);
  end;
end;

procedure TTaskEditForm.btn_CancelClick(Sender: TObject);
begin
  ModalResult:= mrCancel;
end;

procedure TTaskEditForm.btn_DelFileClick(Sender: TObject);
begin
  DelFile;
end;

procedure TTaskEditForm.btn_SaveClick(Sender: TObject);
begin
  SaveTask;
  SaveFile;
  modified:= false;
  ModalResult:= mrOk;
end;

function TTaskEditForm.CheckParams: boolean;
begin
  Result:= false;
  if Trim(TASKHEAD.Text)= '' then
    raise EMyException.Create('Укажите название задачи!');
  if TASKBEGIN.EditingValue = null then
    raise EMyException.Create('Укажите планируемую дату начала задачи!');
  if TASKEND.EditingValue = null then
    raise EMyException.Create('Укажите планируемую дату окончания задачи!');
  Result:= true;
end;

procedure TTaskEditForm.DelFile;
var
  CODE :Variant;
begin
  if Application.MessageBox('Вы действительно хотите удалить файл?',
    'Предупреждение', MB_YESNO + MB_ICONQUESTION) = IDYES then
  begin
    CODE:= v1.GetColumnByFieldName('CODE').EditValue;
    if (CODE <> null) then
    begin
      if ds_TASKFILES.Locate('CODE',CODE,[]) then begin
         ds_TASKFILES.Delete;
         md1.Delete;
      end;
    end else
      md1.Delete;
  end;
end;

procedure TTaskEditForm.FillControl;
var
  Stream :TMemoryStream;
begin
  Stream:=TMemoryStream.Create;
  try
    with ds do begin
      TASKHEAD.EditValue := FN('TASKHEAD').AsVariant;
      TASKPRIORITY.ItemIndex := FN('TASKPRIORITY').AsVariant;
      TASKBEGIN.EditValue := FN('TASKBEGIN').AsVariant;
      TASKEND.EditValue := FN('TASKEND').AsVariant;
      //
      TBlobField(FN('TASKBODY')).SaveToStream(Stream);
      if Stream.Size>0 then
      begin
        Stream.Position:=0;
        TASKBODY.Properties.PlainText:= false;
        TASKBODY.Lines.LoadFromStream(Stream);
      end;
      TASKUSER.EditValue:= FN('FIO').AsVariant;
      TASKSTATUS.Clear;
      TASKSTATUS.Lines.Add(FN('tsName').AsString);
      TASKSTATUS.Lines.Add('   c '+DateTimeToStr(FN('LASTEDITTIME').AsDateTime));
      case FN('TASKPRIORITY').AsInteger of
        0:  txt_TASKPRIORITY.EditValue:='Низкий';
        1:  txt_TASKPRIORITY.EditValue:='Нормальный';
        2:  txt_TASKPRIORITY.EditValue:='Высокий';
      end;
      cbb_TASKSTATUS.EditValue := FN('TASKSTATUS').AsVariant;
      TASKCOMPLETE.EditValue := FN('TASKCOMPLETE').AsVariant;
    end;
    // load comment
    ReopenTASKCOMMENT;
    // load file
    Reopen_TASKFILES;
  finally
    Stream.Free;
  end;
end;

procedure TTaskEditForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FileList.Free;
end;

procedure TTaskEditForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if modified = true then begin
    if Application.MessageBox('Вы действительно хотите выйти без сохранения изменений?',
      'Предупреждение', MB_YESNO + MB_ICONQUESTION) = IDYES then
    begin
      CanClose:= true;
    end else
      CanClose:= false;
  end else
      CanClose:= true;
end;

procedure TTaskEditForm.FormCreate(Sender: TObject);
begin
  FileList:= TStringList.Create;
  //LoadForm(prop1,Self.Name);
  OpenDS;
  modified:= false;
end;

procedure TTaskEditForm.FormShow(Sender: TObject);
begin
  if isEdit then FillControl;
  modified:= false;
end;

procedure TTaskEditForm.GetAndSave(CODE, FName: Variant);
var
  ext: string;
begin
  with ds_TASKFILES do begin
    if Locate('CODE',CODE,[]) then begin
      sdlg.FileName:= VarToStr(FName);
      sdlg.DefaultExt:= ExtractFileExt(FName);
      sdlg.DefaultExt := Copy(sdlg.DefaultExt,2,Length(sdlg.DefaultExt)-1);
      if sdlg.Execute then
          TBlobField(FN('TASKFILE')).SaveToFile(sdlg.FileName);
    end;
  end;
end;

procedure TTaskEditForm.N1Click(Sender: TObject);
begin
  GetAndSave(v1.GetColumnByFieldName('CODE').EditValue,
             v1.GetColumnByFieldName('TASKFILENAME').EditValue);
end;

procedure TTaskEditForm.OpenDS;
begin
  DSOptoins(ds_TASKCOMMENT,'','TASKCOMMENT','CODE','TASKCOMMENT_GEN',false);
  ReopenTASKCOMMENT;
  DSOptoins(ds_TASKFILES,'','TASKFILES','CODE','TASKFILES_GEN',false);
  Reopen_TASKFILES;
  ds_TASKSTATUS.CloseOpen(true);
end;

procedure TTaskEditForm.ReopenTASKCOMMENT;
var
  aHead: string;
begin
  with ds_TASKCOMMENT do begin
    close;
    MainWhereClause:='TASKCODE=:TASKCODE';
    ParamByName('TASKCODE').AsVariant:= TASKCODE;
    Open;
    //
    rch_1.Clear;
    while not Eof do begin
      aHead:= DateTimeToStr(FN('DATECOMMENT').AsDateTime)+': '+FN('FIO').AsString;
      AddColoredLine(rch_1,aHead, clBlue);
      rch_1.Lines.Add('   '+FN('COMMENT').AsString);
      rch_1.Lines.Add(' ');
      Next;
    end;
  end;
end;

procedure TTaskEditForm.Reopen_TASKFILES;
begin
  with ds_TASKFILES do begin
    Close;
    MainWhereClause:='TASKCODE=:TASKCODE';
    ParamByName('TASKCODE').AsVariant:= TASKCODE;
    Open;
  end;
  md1.LoadFromDataSet(ds_TASKFILES);
end;

procedure TTaskEditForm.SaveFile;
var
  i: Integer;
  Code : Variant;
begin
  if isEdit then Code:= TASKCODE else
                 Code:= NewTaskCode;
  with ds_TASKFILES do begin
    for i:=0 to FileList.Count -1 do begin
      Append;
      FN('TASKCODE').AsVariant := Code;
      FN('TASKUSER').AsVariant := ActiveWorker;
      FN('TASKFILENAME').AsVariant := ExtractFileName(FileList[i]);
      TBlobField(FN('TASKFILE')).LoadFromFile(FileList[i]);
      Post;
    end;
  end;
end;

procedure TTaskEditForm.SaveTask;
var
  Stream :TMemoryStream;
begin
  if Not CheckParams then Exit;
  Stream:=TMemoryStream.Create;
  try
    with DS do begin
      if isEdit then Edit else
      Append;
      FN('TASKPRIORITY').AsVariant:= TASKPRIORITY.ItemIndex;
      if not isEdit then cbb_TASKSTATUS.EditValue := 6;
      FN('TASKSTATUS').AsVariant := cbb_TASKSTATUS.EditValue; //Новая
      FN('TASKCOMPLETE').AsVariant := TASKCOMPLETE.EditingValue;
      if not isEdit then FN('TASKUSER').AsVariant := ActiveWorker else
      if FN('TASKUSER').AsVariant = null then
      FN('TASKUSER').AsVariant := ActiveWorker;
      FN('TASKASSIGNEDTO').AsVariant := 6;
      FN('TASKBEGIN').AsVariant := TASKBEGIN.EditingValue;
      FN('TASKEND').AsVariant := TASKEND.EditingValue;
      FN('TASKHEAD').AsVariant := TASKHEAD.Text;
      TASKBODY.Lines.SaveToStream(Stream);
      if Stream.Size>0 then
      begin
        Stream.Position:=0;
        TBlobField(FN('TASKBODY')).LoadFromStream(Stream);
      end;
      if cbb_TASKSTATUS.EditValue<> vTASKSTATUS then
         FN('LASTEDITTIME').AsVariant := Now;
      Post;
      if not isEdit then
        NewTaskCode := FN('CODE').AsVariant; //новый сгенерированный код
    end;
  finally
    Stream.Free;
  end;
end;

procedure TTaskEditForm.SetModified(Sender: TObject);
begin
  modified:= true;
end;

end.
