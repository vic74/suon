unit RepWorkFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxLayoutcxEditAdapters, cxContainer, cxSpinEdit, cxCalendar, cxMemo,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, FIBDataSet, pFIBDataSet, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, dxSkinsdxBarPainter, ImgList, dxBar,
  dxLayoutControlAdapters, Menus, StdCtrls, cxButtons, cxButtonEdit, frxClass,
  frxDBSet, frxExportRTF, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxSkinDevExpressStyle, Vcl.ComCtrls,
  dxCore, cxDateUtils;

type
  TRepWorkForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grp_lc1Group1: TdxLayoutGroup;
    grp_lc1Group2: TdxLayoutGroup;
    grp_lc1Group3: TdxLayoutGroup;
    grp_lc1Group4: TdxLayoutGroup;
    lsi_1: TdxLayoutSplitterItem;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    ds_HISTORYAPP: TpFIBDataSet;
    src_HISTORYAPP: TDataSource;
    cl_v1ID: TcxGridDBColumn;
    cl_v1DATA: TcxGridDBColumn;
    cl_v1FORM: TcxGridDBColumn;
    cl_v1NAME: TcxGridDBColumn;
    cl_v1UNIT: TcxGridDBColumn;
    cl_v1UNIT_COMENT: TcxGridDBColumn;
    cl_v1RATE_HOUR: TcxGridDBColumn;
    dt1: TcxDateEdit;
    itm_dt1: TdxLayoutItem;
    txt_form: TcxTextEdit;
    itm_form: TdxLayoutItem;
    m_name: TcxMemo;
    itm_name: TdxLayoutItem;
    spn_1: TcxSpinEdit;
    itm_lc1Item11: TdxLayoutItem;
    grp_lc1Group5: TdxLayoutGroup;
    grp_lc1Group6: TdxLayoutGroup;
    txt_unit: TcxTextEdit;
    itm_lc1Item12: TdxLayoutItem;
    m_unitcomment: TcxMemo;
    itm_lc1Item13: TdxLayoutItem;
    bar1: TdxBarManager;
    br1: TdxBar;
    doc1: TdxBarDockControl;
    itm_lc1Item14: TdxLayoutItem;
    btn_Add: TdxBarButton;
    btn_Del: TdxBarButton;
    il_1: TcxImageList;
    br2: TdxBar;
    btn_zamadd: TdxBarButton;
    btn_zamdel: TdxBarButton;
    doc2: TdxBarDockControl;
    itm_lc1Item16: TdxLayoutItem;
    dt_1: TcxDateEdit;
    itm_lc1Item1: TdxLayoutItem;
    dt_2: TcxDateEdit;
    itm_lc1Item17: TdxLayoutItem;
    btn_exec: TcxButton;
    itm_lc1Item18: TdxLayoutItem;
    btn_txt_code: TcxButtonEdit;
    itm_lc1Item19: TdxLayoutItem;
    fr: TfrxReport;
    frdb: TfrxDBDataset;
    btn_print: TcxButton;
    itm_lc1Item15: TdxLayoutItem;
    rtf_1: TfrxRTFExport;
    cl_v1TASKCODE: TcxGridDBColumn;
    cl_v1TASKSTATUS: TcxGridDBColumn;
    cl_v1TSNAME: TcxGridDBColumn;
    cl_v1TASKCOMPLETE: TcxGridDBColumn;
    ds_TASKEDIT: TpFIBDataSet;
    TASKCODE: TcxTextEdit;
    itm_lc1Item110: TdxLayoutItem;
    grp_lc1Group7: TdxLayoutGroup;
    TASKSTATUS: TcxLookupComboBox;
    itm_lc1Item111: TdxLayoutItem;
    TASKCOMPLETE: TcxSpinEdit;
    itm_lc1Item112: TdxLayoutItem;
    ds_TASKSTATUS: TpFIBDataSet;
    src_TASKSTATUS: TDataSource;
    grp_lc1Group8: TdxLayoutGroup;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_lc1Item113: TdxLayoutItem;
    src_TASK: TDataSource;
    ds_TASK: TpFIBDataSet;
    cl_v2CODE: TcxGridDBColumn;
    cl_v2PRIORITY: TcxGridDBColumn;
    cl_v2TASKPRIORITY: TcxGridDBColumn;
    cl_v2TASKSTATUS: TcxGridDBColumn;
    cl_v2TSNAME: TcxGridDBColumn;
    cl_v2TASKCOMPLETE: TcxGridDBColumn;
    cl_v2TASKUSER: TcxGridDBColumn;
    cl_v2FIO: TcxGridDBColumn;
    cl_v2TASKASSIGNEDTO: TcxGridDBColumn;
    cl_v2TASKSIZE: TcxGridDBColumn;
    cl_v2TASKSIZEREAL: TcxGridDBColumn;
    cl_v2TASKFINISH: TcxGridDBColumn;
    cl_v2LASTTIME: TcxGridDBColumn;
    cl_v2TASKBEGIN: TcxGridDBColumn;
    cl_v2TASKEND: TcxGridDBColumn;
    cl_v2TASKHEAD: TcxGridDBColumn;
    cl_v2TASKBODY: TcxGridDBColumn;
    cl_v2LASTEDITTIME: TcxGridDBColumn;
    gpop_1: TcxGridPopupMenu;
    pm_1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    doc4: TdxBarDockControl;
    itm_lc1Item114: TdxLayoutItem;
    br3: TdxBar;
    btn_Update: TdxBarButton;
    doc5: TdxBarDockControl;
    itm_lc1Item115: TdxLayoutItem;
    grp_lc1Group9: TdxLayoutGroup;
    br_EditRec: TdxBar;
    btn_EditRec: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_AddClick(Sender: TObject);
    procedure btn_DelClick(Sender: TObject);
    procedure btn_zamaddClick(Sender: TObject);
    procedure btn_zamdelClick(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
    procedure btn_txt_codePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btn_printClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure btn_UpdateClick(Sender: TObject);
    procedure btn_txt_codePropertiesEditValueChanged(Sender: TObject);
    procedure v1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_EditRecClick(Sender: TObject);
    procedure grp_lc1Group6Button0Click(Sender: TObject);
  private
    { Private declarations }
    CODE: Variant;
    procedure AddWork;
    procedure DelWork;
    procedure AddZam;
    procedure DelZam;
    function CheckParams: boolean;
    procedure FillEdit(isClear: boolean = false);
    procedure MakeDS;
    procedure GetData;
    procedure PrintReport;
    procedure Reopen_TASK(Taskcode: variant);
    procedure ShowTask(Taskcode: variant);
    procedure CloseTask(vcode: variant);
    procedure RefreshTask;
  public
    { Public declarations }
  end;

var
  RepWorkForm: TRepWorkForm;

implementation

uses cmDBUnit, TaskEditFrm;

{$R *.dfm}


procedure TRepWorkForm.AddWork;
var
  vTaskCode: variant;
begin
  CODE:= btn_txt_code.EditValue;
  if not CheckParams then Exit;
  if CODE<>null then
  if Application.MessageBox('Вы действительно хотите изменить запись?',
    'Предупреждение', MB_YESNO + MB_ICONQUESTION) = IDNO then
    Exit;
    with ds_HISTORYAPP do begin
      if CODE = null then Append else
         Edit;
      FN('DATA').AsVariant:= dt1.EditValue;
      FN('FORM').AsVariant:= txt_form.EditingValue;
      FN('NAME').AsVariant:= m_name.EditingValue;
      FN('UNIT').AsVariant:= txt_unit.EditingValue;
      FN('RATE_HOUR').AsVariant:= spn_1.EditingValue;
      if Code = null then
        FN('TASKCODE').AsVariant:= TASKCODE.EditValue;
      FN('TASKSTATUS').AsVariant := 3;
      FN('TASKCOMPLETE').AsVariant:= 100;
      Post;
      vTaskCode:= FN('TASKCODE').AsVariant;
    end;
    if vTaskCode=null then exit;
    Reopen_TASK(vTaskCode);
    with ds_TASKEDIT do begin
      Edit;
      FN('TASKSTATUS').AsVariant := 3;
      FN('TASKCOMPLETE').AsVariant:= 100;
      FN('TASKFINISH').AsVariant:= dt1.EditValue;
      FN('TASKSIZEREAL').AsVariant:= spn_1.EditingValue;
      Post;
    end;
  FillEdit(true);
end;

procedure TRepWorkForm.AddZam;
begin
  CODE:= btn_txt_code.EditValue;
  if CODE = null then Exit;
  with ds_HISTORYAPP do begin
    Edit;
    FN('UNIT_COMENT').AsVariant:= m_unitcomment.EditingValue;
    Post;
  end;
end;

procedure TRepWorkForm.btn_AddClick(Sender: TObject);
begin
  AddWork;
end;

procedure TRepWorkForm.btn_DelClick(Sender: TObject);
begin
  DelWork;
end;

procedure TRepWorkForm.btn_EditRecClick(Sender: TObject);
begin
  FillEdit;
end;

procedure TRepWorkForm.btn_execClick(Sender: TObject);
begin
  GetData;
end;

procedure TRepWorkForm.btn_printClick(Sender: TObject);
begin
  if ds_HISTORYAPP.IsEmpty then Exit;
  PrintReport;
end;

procedure TRepWorkForm.btn_txt_codePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  btn_txt_code.EditValue := null;
end;

procedure TRepWorkForm.btn_txt_codePropertiesEditValueChanged(Sender: TObject);
begin
  btn_txt_code.PostEditValue;
  if btn_txt_code.EditValue = null  then
  btn_Add.ImageIndex:= 4 else
  btn_Add.ImageIndex:= 0;
end;

procedure TRepWorkForm.btn_UpdateClick(Sender: TObject);
begin
  RefreshTask;
end;

procedure TRepWorkForm.btn_zamaddClick(Sender: TObject);
begin
  AddZam;
end;

procedure TRepWorkForm.btn_zamdelClick(Sender: TObject);
begin
  DelZam;
end;

function TRepWorkForm.CheckParams: boolean;
begin
  Result:= false;
  if dt1.EditValue = null then
    raise EMyException.Create('Не указана дата!');
  if Trim(m_name.Text) = '' then
    raise EMyException.Create('Не указано наименование работ!');

  Result:= true;
end;

procedure TRepWorkForm.CloseTask(vcode: variant);
begin
  FillEdit(true);
  TASKCODE.EditValue:= vcode;
  TASKSTATUS.EditValue := v2.GetColumnByFieldName('TASKSTATUS').EditValue;
  TASKCOMPLETE.EditValue:= v2.GetColumnByFieldName('TASKCOMPLETE').EditValue;
  dt1.EditValue:= Date;
  btn_txt_code.EditValue := null;
  grp_lc1Group2.ItemIndex:= 0;
end;

procedure TRepWorkForm.DelWork;
begin
  CODE:= btn_txt_code.EditValue;
  if CODE = null then Exit;
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Предупреждение', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    ds_HISTORYAPP.Delete;
  end;
end;

procedure TRepWorkForm.DelZam;
begin
  CODE:= btn_txt_code.EditValue;
  if CODE = null then Exit;
  if Application.MessageBox('Вы действительно хотите удалить замечание?',
    'Предупреждение', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    with ds_HISTORYAPP do begin
      Edit;
      FN('UNIT_COMENT').AsVariant:= null;
      Post;
    end;
  end;
end;

procedure TRepWorkForm.FillEdit(isClear: boolean = false);
begin
  with ds_HISTORYAPP do begin
    if isClear then begin
      btn_txt_code.EditValue:= null;
      dt1.EditValue:= Date;
      txt_form.EditValue:= null;
      m_name.EditValue:= null;
      txt_unit.EditValue:= null;
      spn_1.EditValue:= null;
      m_unitcomment.EditValue:= null;
      TASKCODE.EditValue:= null;
      TASKSTATUS.EditValue:= null;
      TASKCOMPLETE.EditValue:= null;
    end else begin
      btn_txt_code.EditValue:= FN('ID').AsVariant;
      dt1.EditValue:= FN('DATA').AsVariant;
      txt_form.EditValue:= FN('FORM').AsVariant;
      m_name.EditValue:= FN('NAME').AsVariant;
      txt_unit.EditValue:= FN('UNIT').AsVariant;
      spn_1.EditValue:= FN('RATE_HOUR').AsVariant;
      m_unitcomment.EditValue:= FN('UNIT_COMENT').AsVariant;
      TASKCODE.EditValue:= FN('TASKCODE').AsVariant;
      TASKSTATUS.EditValue:= FN('TASKSTATUS').AsVariant;
      TASKCOMPLETE.EditValue:= FN('TASKCOMPLETE').AsVariant;
    end;
  end;
end;

procedure TRepWorkForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TRepWorkForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  MakeDS;
end;

procedure TRepWorkForm.GetData;
begin
  if dt_1.EditValue = null then
     raise EMyException.Create('Укажите дату начала периода');
  if dt_2.EditValue = null then
     dt_2.EditValue:= Date;
  with ds_HISTORYAPP do begin
    Close;
    MainWhereClause:= 'h.DATA between :d1 and :d2';
    ParamByName('d1').AsVariant:= dt_1.EditValue;
    ParamByName('d2').AsVariant:= dt_2.EditValue;
    OrderClause:='h.DATA';
    Open;
  end;
end;

procedure TRepWorkForm.grp_lc1Group6Button0Click(Sender: TObject);
begin
  FillEdit(true);
end;

procedure TRepWorkForm.MakeDS;
begin
  DSOptoins(ds_HISTORYAPP,'','HISTORYAPP','ID','HISTORYAPP_GEN', false);
  DSOptoins(ds_TASKEDIT,'','TASK','CODE','TASK_GEN',false);
  ds_TASKSTATUS.Open;
end;

procedure TRepWorkForm.N1Click(Sender: TObject);
begin
  if ds_HISTORYAPP.State in [dsInactive] then
  with ds_HISTORYAPP do begin
    Close;
    MainWhereClause:= 'h.DATA between :d1 and :d2';
    ParamByName('d1').AsVariant:= Date;
    ParamByName('d2').AsVariant:= Date;
    OrderClause:='h.DATA';
    Open;
  end;
  CloseTask(v2.GetColumnByFieldName('CODE').EditValue);
end;

procedure TRepWorkForm.N2Click(Sender: TObject);
begin
  ShowTask(v2.GetColumnByFieldName('CODE').EditValue);
end;

procedure TRepWorkForm.PrintReport;
begin
  fr.LoadFromFile('rep\repwork.fr3');
  fr.Variables['varD1'] := dt_1.EditValue;
  fr.Variables['varD2'] := dt_2.EditValue;
  fr.ShowReport(true);
end;

procedure TRepWorkForm.RefreshTask;
begin
  with ds_TASK do begin
    Close;
    MainWhereClause:='t.TASKSTATUS<>3';
    Open;
  end;
end;

procedure TRepWorkForm.Reopen_TASK(Taskcode: variant);
begin
  with ds_TASKEDIT do begin
    Close;
    MainWhereClause:='CODE =:CODE';
    ParamByName('CODE').AsVariant:= Taskcode;
    Open;
  end;
end;

procedure TRepWorkForm.ShowTask(Taskcode: variant);
var
  F: TTaskEditForm;
begin
  F:= TTaskEditForm.Create(self);
  try
    F.TASKBODY.Properties.ReadOnly := true;
    F.TASKHEAD.Properties.ReadOnly := true;
    F.TASKBEGIN.Properties.ReadOnly := true;
    F.TASKEND.Properties.ReadOnly := true;
    F.TASKPRIORITY.Properties.ReadOnly := true;
    F.btn_Save.Visible := ivNever;
    F.btn_DelFile.Enabled := false;
    F.TASKCOMPLETE.Properties.ReadOnly := true;
    F.cbb_TASKSTATUS.Properties.ReadOnly := true;
    F.vTASKSTATUS:= v2.GetColumnByFieldName('TASKSTATUS').EditValue;

    F.DS:= ds_TASK;
    F.TASKCODE := Taskcode;
    F.isEdit:= true;
    F.ShowModal;
  finally
    F.Free;
  end;
end;

procedure TRepWorkForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
 // FillEdit(true);
end;

procedure TRepWorkForm.v1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
 // FillEdit(false);
end;

procedure TRepWorkForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 // case key of
   // VK_UP: FillEdit(true);
   // VK_DOWN: FillEdit(true);
   // VK_RETURN :FillEdit;
 // end;
end;

initialization
 RegisterClass(TRepWorkForm);
end.
