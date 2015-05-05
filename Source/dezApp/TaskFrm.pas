unit TaskFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinsdxBarPainter, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxCheckBox,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxBar, cxClasses,
  dxLayoutControlAdapters, Menus, StdCtrls, cxButtons, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGridLevel, cxGrid,
  FIBDataSet, pFIBDataSet, cxProgressBar, dxSkinsdxDockControlPainter,
  dxDockControl, dxSkinDevExpressStyle, cxPC, dxDockPanel, dxAlertWindow,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxNavigator;

type
  TTaskForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grp_lc1Group1: TdxLayoutGroup;
    grp_lc1Group2: TdxLayoutGroup;
    grp_lc1Group3: TdxLayoutGroup;
    bar_1: TdxBarManager;
    br1: TdxBar;
    doc_1: TdxBarDockControl;
    itm_lc1Item1: TdxLayoutItem;
    dt1: TcxDateEdit;
    itm_lc1Item11: TdxLayoutItem;
    dt2: TcxDateEdit;
    itm_lc1Item12: TdxLayoutItem;
    grp_lc1Group4: TdxLayoutGroup;
    chk_allPeriod: TcxCheckBox;
    itm_lc1Item13: TdxLayoutItem;
    btn_update: TcxButton;
    itm_lc1Item14: TdxLayoutItem;
    grp_lc1Group5: TdxLayoutGroup;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_lc1Item15: TdxLayoutItem;
    v1: TcxGridDBTableView;
    cl_CODE: TcxGridDBColumn;
    cl_TASKPRIORITY: TcxGridDBColumn;
    cl_TASKSTATUS: TcxGridDBColumn;
    cl_TASKCOMPLETE: TcxGridDBColumn;
    cl_TASKUSER: TcxGridDBColumn;
    cl_FIO: TcxGridDBColumn;
    cl_TASKASSIGNEDTO: TcxGridDBColumn;
    cl_TASKSIZE: TcxGridDBColumn;
    cl_TASKSIZEREAL: TcxGridDBColumn;
    cl_TASKFINISH: TcxGridDBColumn;
    cl_LASTTIME: TcxGridDBColumn;
    cl_TASKBEGIN: TcxGridDBColumn;
    cl_TASKHEAD: TcxGridDBColumn;
    cl_TASKBODY: TcxGridDBColumn;
    cl_LASTEDITTIME: TcxGridDBColumn;
    cl_TASKEND: TcxGridDBColumn;
    ds_TASK: TpFIBDataSet;
    src_TASK: TDataSource;
    btn_AddTask: TdxBarButton;
    btn_EdtitTask: TdxBarButton;
    btn_DelTask: TdxBarButton;
    cl_v1PRIORITY: TcxGridDBColumn;
    cl_v1tsName: TcxGridDBColumn;
    grp_lc1Group6: TdxLayoutGroup;
    chk_OnlyMy: TcxCheckBox;
    itm_lc1Item16: TdxLayoutItem;
    chk_OnlyOpen: TcxCheckBox;
    itm_lc1Item17: TdxLayoutItem;
    ds_TASKCOMMENT: TpFIBDataSet;
    src_TASKCOMMENT: TDataSource;
    sr_1: TcxStyleRepository;
    stl_1: TcxStyle;
    vst_1: TcxGridTableViewStyleSheet;
    stl_11: TcxStyle;
    stl_12: TcxStyle;
    stl_13: TcxStyle;
    stl_14: TcxStyle;
    vst_2: TcxGridTableViewStyleSheet;
    stl_15: TcxStyle;
    stl_16: TcxStyle;
    stl_17: TcxStyle;
    stl_18: TcxStyle;
    stl_19: TcxStyle;
    stl_110: TcxStyle;
    stl_111: TcxStyle;
    stl_112: TcxStyle;
    stl_113: TcxStyle;
    stl_114: TcxStyle;
    stl_115: TcxStyle;
    stl_116: TcxStyle;
    stl_117: TcxStyle;
    stl_118: TcxStyle;
    docm_1: TdxDockingManager;
    alert1: TdxAlertWindowManager;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chk_allPeriodPropertiesEditValueChanged(Sender: TObject);
    procedure btn_updateClick(Sender: TObject);
    procedure btn_AddTaskClick(Sender: TObject);
    procedure btn_EdtitTaskClick(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_DelTaskClick(Sender: TObject);
    procedure v1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ds_TASKCOMMENTAfterOpen(DataSet: TDataSet);
    procedure v1DataControllerDetailExpanded(
      ADataController: TcxCustomDataController; ARecordIndex: Integer);
    procedure cl_v1tsNameCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
    procedure GetTask;
    function CheckParams: boolean;
    procedure AddTask;
    procedure EdtitTask;
    procedure OpenDS;
    procedure SetReadOnlyTask;
    procedure SetEditTask;
    procedure DeleteTask;
    procedure CloseAlert;
    procedure ShowAlert(mes: WideString);
    procedure MakeMessage;
  public
    { Public declarations }
  end;

var
  TaskForm: TTaskForm;

implementation

uses cmDBUnit, TaskEditFrm, dezCommon;

{$R *.dfm}


procedure TTaskForm.AddTask;
var
  F: TTaskEditForm;
begin
  if ds_TASK.State in [dsInactive] then
    raise EMyException.Create('Сначала сформируйте набор данных!(кнопка "Обновить")');
  F:= TTaskEditForm.Create(self);
  F.Height:=482;
  F.Width:=754;
  try
    F.grp__1Group7.Visible := false;
    F.isEdit:= False;
    F.DS:= ds_TASK;
    F.ShowModal;
  finally
    F.Free;
  end;
end;

procedure TTaskForm.btn_AddTaskClick(Sender: TObject);
begin
  AddTask;
end;

procedure TTaskForm.btn_DelTaskClick(Sender: TObject);
begin
  DeleteTask;
end;

procedure TTaskForm.btn_EdtitTaskClick(Sender: TObject);
begin
  EdtitTask;
end;

procedure TTaskForm.btn_updateClick(Sender: TObject);
begin
  GetTask;
end;

function TTaskForm.CheckParams: boolean;
begin
  Result:= false;
  if chk_allPeriod.Checked then begin
    Result := true;
    Exit;
  end;
  if dt1.EditValue = null then
    raise EMyException.Create('Укажите дату начала преиода!');
  if dt2.EditValue = null then
    raise EMyException.Create('Укажите дату окончания периода!');
  Result:= true;
end;

procedure TTaskForm.chk_allPeriodPropertiesEditValueChanged(Sender: TObject);
begin
  grp_lc1Group4.Enabled := not chk_allPeriod.Checked;
end;

procedure TTaskForm.CloseAlert;
var
  i: Integer;
begin
  for I := 0 to alert1.Count - 1 do
  alert1.Items[i].Close;
end;

procedure TTaskForm.cl_v1tsNameCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  case AViewInfo.GridRecord.Values[cl_TASKSTATUS.Index] of
    0 : begin  //не принята
          ACanvas.Font.Style := [fsItalic, fsBold];
          ACanvas.Font.Color := clRed;
        end;
    3 : begin  //завершена
          ACanvas.Font.Style := [fsBold];
          ACanvas.Font.Color := clGreen;
        end;
  end;
end;

procedure TTaskForm.DeleteTask;
var
  Worker: Variant;
begin
  Worker:= v1.GetColumnByFieldName('TASKUSER').EditValue;
  if ((ActiveWorker = Worker) and (v1.GetColumnByFieldName('TASKSTATUS').EditValue<>3)
  and (v1.GetColumnByFieldName('TASKSTATUS').EditValue<>2)) or (ActiveUserName='SYSDBA') then begin
    if Application.MessageBox('Вы действительно хотите удалить свою задачу?',
      'Внимание!', MB_YESNO + MB_ICONQUESTION) = IDYES then
    begin
      ds_TASK.Delete;
    end;
  end else begin
    if (ActiveWorker <> Worker) then
    raise EMyException.Create('Вы можете удалять только свои задачи!');
    if v1.GetColumnByFieldName('TASKSTATUS').EditValue=3 then
    raise EMyException.Create('Задача завершена! удаление запрещено!');
    if v1.GetColumnByFieldName('TASKSTATUS').EditValue=2 then
    raise EMyException.Create('Задача в статусе выполнения! Удаление запрещено.');
  end;
  if ActiveUserName='SYSDBA' then btn_DelTask.Enabled:=true else
  btn_DelTask.Enabled := v1.GetColumnByFieldName('TASKUSER').EditValue = ActiveWorker;
end;

procedure TTaskForm.ds_TASKCOMMENTAfterOpen(DataSet: TDataSet);
begin
  //ShowMessage(ds_TASKCOMMENT.ReadySelectText);
end;

procedure TTaskForm.EdtitTask;
var
  Worker: Variant;
begin
  if ds_TASK.State in [dsInactive] then
    raise EMyException.Create('Сначала сформируйте набор данных!(кнопка "Обновить")');
  Worker:= v1.GetColumnByFieldName('TASKUSER').EditValue;
    //F.grp__1Group7.Visible := true;
  if ActiveUserName='SYSDBA' then begin
    SetEditTask;
    Exit;
  end;
  //
  if (ActiveWorker = Worker) and (v1.GetColumnByFieldName('TASKSTATUS').EditValue<>3) then begin
    SetEditTask;
  end else begin
    SetReadOnlyTask;
  end;
end;

procedure TTaskForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TTaskForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  OpenDS;
end;

procedure TTaskForm.GetTask;
begin
  if not CheckParams then Exit;
  with ds_TASK do begin
    Close;
    if chk_allPeriod.Checked then
      MainWhereClause:='' else begin
      MainWhereClause:='t.LASTTIME between :d1 and :d2';
      ParamByName('d1').AsVariant:= dt1.EditingValue;
      ParamByName('d2').AsVariant:= dt2.EditingValue;
    end;
    if chk_OnlyMy.Checked then begin   //только мои задачи
      if MainWhereClause = '' then
      MainWhereClause:='t.TASKUSER=:USR' else
      MainWhereClause:=MainWhereClause+' and t.TASKUSER=:USR';
      ParamByName('USR').AsVariant:= ActiveWorker;
    end;
    if chk_OnlyOpen.Checked then begin
      if MainWhereClause = '' then
      MainWhereClause:='t.TASKSTATUS not in(3,0,1)' else
      MainWhereClause:=MainWhereClause+' and t.TASKSTATUS not in(3,0,1)';
    end;
      //ShowMessage(MainWhereClause);
    OrderClause:='t.LASTTIME';
    Open;
  end;
  btn_DelTask.Enabled := v1.GetColumnByFieldName('TASKUSER').EditValue = ActiveWorker;
end;

procedure TTaskForm.MakeMessage;
var
  s: string;
begin
  s:='';
  with ds_TASKCOMMENT do begin
    while not Eof do begin
      s:=s+'  '+FN('DATECOMMENT').AsString+' '+FN('FIO').AsString+#10#13+
                                            FN('COMMENT').AsString+#10#13+#13;
      Next;
    end;
  end;
  CloseAlert;
  if Trim(s)<>'' then begin
    Delete(s,Length(s)-2,3);
    ShowAlert(s);
  end;
end;

procedure TTaskForm.OpenDS;
begin
  DSOptoins(ds_TASK,'','TASK','CODE','TASK_GEN',False);
end;

procedure TTaskForm.SetEditTask;
var
  F: TTaskEditForm;
begin
  F:= TTaskEditForm.Create(self);
  F.Height:=661;
  F.Width:=754;
  try
    F.TASKBODY.Properties.ReadOnly := true;
    F.TASKHEAD.Properties.ReadOnly := true;
    F.TASKBEGIN.Properties.ReadOnly := true;
    F.TASKEND.Properties.ReadOnly := false;
    F.btn_Save.Visible := ivAlways;
    F.TASKCOMPLETE.Properties.ReadOnly := False;
    F.cbb_TASKSTATUS.Properties.ReadOnly := false;
    F.vTASKSTATUS:= v1.GetColumnByFieldName('TASKSTATUS').EditValue;

    F.DS:= ds_TASK;
    F.TASKCODE := v1.GetColumnByFieldName('CODE').EditValue;
    F.isEdit:= true;
    F.ShowModal;
  finally
    F.Free;
  end;
end;

procedure TTaskForm.SetReadOnlyTask;
var
  F: TTaskEditForm;
begin
  F:= TTaskEditForm.Create(self);
  F.Height:=661;
  F.Width:=754;
  try
    F.TASKBODY.Properties.ReadOnly := true;
    F.TASKHEAD.Properties.ReadOnly := true;
    F.TASKBEGIN.Properties.ReadOnly := true;
    F.TASKEND.Properties.ReadOnly := true;
    F.TASKPRIORITY.Properties.ReadOnly := true;
    F.btn_Save.Visible := ivNever;
    F.btn_DelFile.Enabled := false;
    F.btn_AddFile.Enabled := false;
    F.TASKCOMPLETE.Properties.ReadOnly := true;
    F.cbb_TASKSTATUS.Properties.ReadOnly := true;
    F.vTASKSTATUS:= v1.GetColumnByFieldName('TASKSTATUS').EditValue;

    F.DS:= ds_TASK;
    F.TASKCODE := v1.GetColumnByFieldName('CODE').EditValue;
    F.isEdit:= true;
    F.ShowModal;
  finally
    F.Free;
  end;
end;

procedure TTaskForm.ShowAlert(mes: WideString);
begin
  CloseAlert;
  alert1.Show('Коментарии',mes);
end;

procedure TTaskForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if ActiveUserName='SYSDBA' then btn_DelTask.Enabled:=true else
  btn_DelTask.Enabled := v1.GetColumnByFieldName('TASKUSER').EditValue = ActiveWorker;
  MakeMessage;
end;

procedure TTaskForm.v1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  EdtitTask;
end;

procedure TTaskForm.v1DataControllerDetailExpanded(
  ADataController: TcxCustomDataController; ARecordIndex: Integer);
begin
  ds_TASKCOMMENT.CloseOpen(true);
end;

procedure TTaskForm.v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case key of
    VK_UP :btn_DelTask.Enabled := v1.GetColumnByFieldName('TASKUSER').EditValue = ActiveWorker;
    VK_DOWN: btn_DelTask.Enabled := v1.GetColumnByFieldName('TASKUSER').EditValue = ActiveWorker;
    VK_RETURN : EdtitTask;
  end;
end;

initialization
 RegisterClass(TTaskForm);
end.
