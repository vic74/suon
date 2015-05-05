unit JWorkFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, dxLayoutControl,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPropertiesStore,
  FIBQuery,pFIBCacheQueries,pFIBProps,
  dxLayoutLookAndFeels, AppUtils, dxSkinsdxBarPainter, dxBar, FIBDataSet,
  pFIBDataSet, cxGridExportLink, cxImageComboBox, ImgList, BaseForm,
  cxDBLookupComboBox, dxLayoutContainer, dxScreenTip, dxSkinDevExpressStyle,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxContainer, Menus, StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxButtonEdit,
  cxCheckBox, Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinsDefaultPainters,
  dxSkinVS2010;

type
  TJWORKForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    ds_JWork: TpFIBDataSet;
    src_JWork: TDataSource;
    brm1: TdxBarManager;
    brm1Bar1: TdxBar;
    btn_Add: TdxBarButton;
    btn_Edit: TdxBarButton;
    btn_Delete: TdxBarButton;
    clv1CODE: TcxGridDBColumn;
    clv1JWORKTYPE: TcxGridDBColumn;
    clv1JTNAME: TcxGridDBColumn;
    clv1REGDATE: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1KONTRNAME: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1DESCRIPTION: TcxGridDBColumn;
    clv1PLACE: TcxGridDBColumn;
    clv1PLANDATE: TcxGridDBColumn;
    clv1FACTDATE: TcxGridDBColumn;
    clv1NOTE: TcxGridDBColumn;
    clv1SHOWRESULT: TcxGridDBColumn;
    clv1WORKSPECLIST: TcxGridDBColumn;
    clv1STREET: TcxGridDBColumn;
    clv1STREETNAME: TcxGridDBColumn;
    btn_excel: TdxBarButton;
    tip1: TdxBarScreenTipRepository;
    tip1_insert: TdxBarScreenTip;
    tip1_edit: TdxBarScreenTip;
    tip1_delete: TdxBarScreenTip;
    tip1_excel: TdxBarScreenTip;
    dlgSave: TSaveDialog;
    il1: TcxImageList;
    stl1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    ds_JWORKTYPE: TpFIBDataSet;
    src_JWORKTYPE: TDataSource;
    clv1showhouse: TcxGridDBColumn;
    grplc1Group1: TdxLayoutGroup;
    grplc1Group2: TdxLayoutGroup;
    grplc1Group3: TdxLayoutGroup;
    grplc1Group4: TdxLayoutGroup;
    dt1: TcxDateEdit;
    itmlc1Item1: TdxLayoutItem;
    dt2: TcxDateEdit;
    itmlc1Item11: TdxLayoutItem;
    btn_exec: TcxButton;
    itmlc1Item12: TdxLayoutItem;
    clv1ToArh: TcxGridDBColumn;
    ds_JWORKARC: TpFIBDataSet;
    src_JWORKARC: TDataSource;
    grd2: TcxGrid;
    v2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cl_SHOWRESULT: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cl_JWORKTYPE: TcxGridDBColumn;
    clREGDATE: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    l2: TcxGridLevel;
    itmlc1Item2: TdxLayoutItem;
    grplc1Group5: TdxLayoutGroup;
    dt3: TcxDateEdit;
    itmlc1Item13: TdxLayoutItem;
    dt4: TcxDateEdit;
    itmlc1Item14: TdxLayoutItem;
    chk_ark: TcxCheckBox;
    itmlc1Item15: TdxLayoutItem;
    btn_arh: TcxButton;
    itmlc1Item16: TdxLayoutItem;
    clv1WORKSPECLIST1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_AddClick(Sender: TObject);
    procedure v1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_EditClick(Sender: TObject);
    procedure btn_DeleteClick(Sender: TObject);
    procedure ds_JWorkBeforeDelete(DataSet: TDataSet);
    procedure btn_excelClick(Sender: TObject);
    procedure clv1PLANDATECustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure v1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btn_execClick(Sender: TObject);
    procedure clv1ToArhPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure chk_arkPropertiesEditValueChanged(Sender: TObject);
    procedure btn_arhClick(Sender: TObject);
    procedure cxGridDBColumn19PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure grplc1Group2TabChanged(Sender: TObject);
    procedure v1StylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
  private
    { Private declarations }
    MoveInArhiv: Boolean;
    procedure OpenDS;
    procedure AddJRecord;
    procedure EditJRecord;
    procedure SetRight;
    procedure OpenJWork;
    procedure GetArhiv(forInsert: Boolean = false);
    procedure RecInArhiv(code: Variant);
    procedure RecInJurnal(code: Variant);
  public
    { Public declarations }
  end;

var
  JWORKForm: TJWORKForm;

implementation

uses cmDBUnit, dezCommon, AddJWorkFrm, cmUtils;
{$R *.dfm}

procedure TJWORKForm.AddJRecord;
var
  F: TAddJWorkForm;
begin
  try
    F := TAddJWorkForm.Create(Application);
    F.SetDefParam;
    if F.ShowModal = mrOk then
      with ds_JWork do
      begin
        Append;
        FN('JWorkType').AsVariant := F.cbb_WorkType.EditValue;
        FN('RegDate').AsVariant := F.dt_RegDate.EditValue;
        FN('Kontragent').AsVariant := F.cbb_Kontr.EditValue;
        FN('STREET').AsVariant := F.cbb_street.EditValue;
        FN('House').AsVariant := F.cbb_house.EditValue;
        FN('Description').AsVariant := F.mmo_desc.EditValue;
        FN('Place').AsVariant := F.txt_place.EditValue;
        FN('PlanDate').AsVariant := F.dt_PlanDate.EditValue;
        Post;
      end;
  finally
    F.Free;
  end;
end;

procedure TJWORKForm.btn_AddClick(Sender: TObject);
begin
  AddJRecord;
end;

procedure TJWORKForm.btn_arhClick(Sender: TObject);
begin
  GetArhiv;
end;

procedure TJWORKForm.btn_DeleteClick(Sender: TObject);
begin
  ds_JWork.Delete;
  { v1.DataController.DeleteRecord(v1.DataController.GetFocusedRowIndex);
    v1.DataController.Post(true); }
end;

procedure TJWORKForm.btn_EditClick(Sender: TObject);
begin
  // edit
  EditJRecord;
end;

procedure TJWORKForm.btn_excelClick(Sender: TObject);
begin
  if dlgSave.Execute then
    ExportGridToExcel(dlgSave.FileName, grd1, True, True, True, 'xls');
end;

procedure TJWORKForm.btn_execClick(Sender: TObject);
begin
  OpenJWork;
end;

procedure TJWORKForm.chk_arkPropertiesEditValueChanged(Sender: TObject);
begin
  chk_ark.PostEditValue;
  dt3.Enabled:= not chk_ark.Checked;
  dt4.Enabled:= not chk_ark.Checked;
end;

procedure TJWORKForm.clv1PLANDATECustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.Value < Date) and
    (AViewInfo.GridRecord.Values[clv1FACTDATE.Index] = null) then
  begin
    ACanvas.Font.Style := [fsBold];
    ACanvas.Brush.Color := clRed;
  end;
end;

procedure TJWORKForm.clv1ToArhPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if AButtonIndex = 0 then begin
    if v1.FN('FACTDATE') = null then
    if Application.MessageBox('Вы действительно хотите переместить запись в архив?',
      'Внимание', MB_YESNO + MB_ICONQUESTION + MB_TOPMOST) = IDYES then
    begin
      RecInArhiv(v1.FN('CODE'));
    end;
  end;
end;

procedure TJWORKForm.cxGridDBColumn19PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if AButtonIndex = 0 then
  if Application.MessageBox('Вы действительно хотите вернуть запись в журнал?',
    'Внимание', MB_YESNO + MB_ICONQUESTION + MB_TOPMOST) = IDYES then
  begin
    RecInJurnal(v2.FN('CODE'));
  end;
end;

procedure TJWORKForm.ds_JWorkBeforeDelete(DataSet: TDataSet);
var
  Q :TFIBQuery;
begin
  if not MoveInArhiv then
  if not cmMessageBox('Удалить запись?') then
    Abort else
  begin
    if ds_JWork.FN('SHOWRESULT').AsVariant<>null then
    begin
      Q:=GetQueryForUse(cmDB.WT,'update SHOWRESULT ' + #13#10 +
                                'set JWORK = null' + #13#10 +
                                'where (CODE = :CODE)');
      Q.Options:=[qoStartTransaction,qoAutoCommit];
      Q.ParamByName('CODE').AsVariant:=ds_JWork.FN('SHOWRESULT').AsVariant;
      Q.ExecQuery;
      Q.Close;
    end;
      Q:=GetQueryForUse(cmDB.WT,'update WORKSPECLIST' + #13#10 +
                                'set JWORK = null' + #13#10 +
                                'where (JWORK = :JWORK)');
      Q.Options:=[qoStartTransaction,qoAutoCommit];
      Q.ParamByName('JWORK').AsVariant:=ds_JWork.FN('CODE').AsVariant;
      Q.ExecQuery;
  end;
  MoveInArhiv:= False;
end;

procedure TJWORKForm.EditJRecord;
var
  F: TAddJWorkForm;
begin
  try
    F := TAddJWorkForm.Create(Application);
    F.SetEditParam;

    F.cbb_WorkType.EditValue := v1.GetColumnByFieldName('JWorkType').EditValue;
    F.cbb_Kontr.EditValue := v1.GetColumnByFieldName('Kontragent').EditValue;
    F.cbb_street.EditValue := v1.GetColumnByFieldName('STREET').EditValue;
    F.cbb_house.EditValue := v1.GetColumnByFieldName('HOUSE').EditValue;
    F.dt_RegDate.EditValue := v1.GetColumnByFieldName('RegDate').EditValue;
    F.dt_PlanDate.EditValue := v1.GetColumnByFieldName('PlanDate').EditValue;
    F.dt_FactDate.EditValue := v1.GetColumnByFieldName('FactDate').EditValue;
    F.chk_fakt.Checked:= v1.FN('FactDate') <> null;
    F.mmo_desc.EditValue := v1.GetColumnByFieldName('Description').EditValue;
    F.txt_place.EditValue := v1.GetColumnByFieldName('Place').EditValue;
    F.mmo_Note.EditValue := v1.GetColumnByFieldName('Note').EditValue;
    if F.ShowModal = mrOk then
      with ds_JWork do
      begin
        Edit;
        FN('JWorkType').AsVariant:=F.cbb_WorkType.EditValue;
        FN('RegDate').AsVariant := F.dt_RegDate.EditValue;
        // FN('Kontragent').AsVariant:=F.cbb_Kontr.EditValue;
        // FN('STREET').AsVariant:=f.cbb_street.EditValue;
        // FN('House').AsVariant:=F.cbb_house.EditValue;
        FN('Description').AsVariant := F.mmo_desc.EditValue;
        FN('Place').AsVariant := F.txt_place.EditValue;
        FN('PlanDate').AsVariant := F.dt_PlanDate.EditValue;
        if F.chk_fakt.Checked then
          FN('FactDate').AsVariant := F.dt_FactDate.EditValue
        else
          FN('FactDate').AsVariant := null;
        FN('NOTE').AsVariant := F.mmo_Note.EditValue;
        Post;
      end;
  finally
    F.Free;
  end;
end;

procedure TJWORKForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TJWORKForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1, Self.Name);
  OpenDS;
  SetRight;
end;

procedure TJWORKForm.GetArhiv(forInsert: Boolean);
var
  d1, d2: Variant;
begin
  if (forInsert = true) then begin
    d1:=Date;
    d2:=Date;
  end else begin
    d1:= dt3.EditValue;
    d2:= dt4.EditValue;
  end;
  with ds_JWORKARC do begin
    Close;
      MainWhereClause:='';
      if not chk_ark.Checked then begin
        MainWhereClause:= 'JW.REGDATE between :d1 and :d2';
        ParamByName('d1').AsVariant:= d1;
        ParamByName('d2').AsVariant:= d2;
      end;
    Open;
  end;
end;

procedure TJWORKForm.grplc1Group2TabChanged(Sender: TObject);
begin
  brm1Bar1.Visible:= grplc1Group2.ItemIndex = 0;
end;

procedure TJWORKForm.OpenDS;
begin
  ds_JWORKTYPE.Open;
  DSOptoins(ds_JWork, '', 'JWORK', 'CODE', 'JWORK_GEN', False);
  DSOptoins(ds_JWORKARC,'','JWORK_ARC','CODE','JWORK_ARC_GEN', false);
  OpenJWork;
end;

procedure TJWORKForm.OpenJWork;
begin
  if ActiveUserType = 0 then
    with ds_JWork do begin
      Close;
        MainWhereClause:='JW.REGDATE between :d1 and :d2';
        ParamByName('d1').AsVariant:= dt1.EditValue;
        ParamByName('d2').AsVariant:= dt2.EditValue;
      Open;
    end
  else
    with ds_JWork do
    begin
      Close;
      MainWhereClause := 'JW.REGDATE between :d1 and :d2 and JW.KONTRAGENT=:Kontr';
        ParamByName('Kontr').AsVariant := ActiveKontragent;
        ParamByName('d1').AsVariant:= dt1.EditValue;
        ParamByName('d2').AsVariant:= dt2.EditValue;
      Open;
    end;
end;

procedure TJWORKForm.RecInArhiv(code: Variant);
var
  Q: TFIBQuery;
begin
  if code = null then
     raise dezException.Create('Код записи не может быть пустым!');
  //if ds_JWORKARC.State in [dsInactive] then GetArhiv(true);
  // insert record
  Q:= GetQueryForUse(cmDb.WT,
      'insert into JWORK_ARC (CODE,JWORKTYPE, REGDATE, KONTRAGENT, HOUSE, ' +
      'DESCRIPTION,' + #13#10 +
      '                       PLACE, PLANDATE, FACTDATE, NOTE, SHOWRESULT,' +
      #13#10 +
      '                       WORKSPECLIST, STREET)' + #13#10 +
      'select CODE,JWORKTYPE, REGDATE, KONTRAGENT, HOUSE, DESCRIPTION, PLACE, ' +
      'PLANDATE,' + #13#10 +
      '       FACTDATE, NOTE, SHOWRESULT, WORKSPECLIST, STREET' + #13#10 +
      'from JWORK' + #13#10 +
      'where CODE=:CODE');
  Q.Options:=[qoStartTransaction, qoAutoCommit];
  try
    Q.ParamByName('CODE').AsVariant:= code;
    Q.ExecQuery;
    // delete record
    MoveInArhiv:= True;
    ds_JWork.Delete;
    //refresh arhiv
    if ds_JWORKARC.State in [dsInactive] then GetArhiv(true)
                                         else GetArhiv;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TJWORKForm.RecInJurnal(code: Variant);
var
  Q: TFIBQuery;
begin
  if code = null then
     raise dezException.Create('Код записи не может быть пустым!');
  //if ds_JWORKARC.State in [dsInactive] then GetArhiv(true);
  // insert record
  Q:= GetQueryForUse(cmDb.WT,
      'insert into JWORK (CODE,JWORKTYPE, REGDATE, KONTRAGENT, HOUSE, ' +
      'DESCRIPTION,' + #13#10 +
      '                       PLACE, PLANDATE, FACTDATE, NOTE, SHOWRESULT,' +
      #13#10 +
      '                       WORKSPECLIST, STREET)' + #13#10 +
      'select CODE,JWORKTYPE, REGDATE, KONTRAGENT, HOUSE, DESCRIPTION, PLACE, ' +
      'PLANDATE,' + #13#10 +
      '       FACTDATE, NOTE, SHOWRESULT, WORKSPECLIST, STREET' + #13#10 +
      'from JWORK_ARC' + #13#10 +
      'where CODE=:CODE');
  Q.Options:=[qoStartTransaction, qoAutoCommit];
  try
    Q.ParamByName('CODE').AsVariant:= code;
    Q.ExecQuery;
    // delete record
    ds_JWORKARC.Delete;
    //refresh arhiv
    OpenJWork;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TJWORKForm.SetRight;
begin
  case ActiveRole of
    53 : begin  //Инженер СЭ
           btn_Add.Visible := ivNever;
           btn_Edit.Visible := ivNever;
           btn_Delete.Visible := ivNever;
           //
           v1.OptionsData.Editing := false;
           v1.OptionsData.Deleting := false;
         end;
  end;
  cxGridDBColumn19.Visible:= ActiveUserType = 0; //в журнал
  clv1ToArh.Visible:= ActiveUserType = 0; //в архив
end;

procedure TJWORKForm.v1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var
  Plan, Fact: Variant;
begin
  { Plan:=AViewInfo.GridRecord.Values[clv1PLANDATE.Index];
    Fact:=AViewInfo.GridRecord.Values[clv1FACTDATE.Index];
    //AViewInfo.Item.Index=clv1PLANDATE.Index
    if (Plan>Date) and (Fact=null) then
    begin
    ACanvas.Font.Style := [fsBold];
    ACanvas.Brush.Color := clRed;
    end; }
end;

procedure TJWORKForm.v1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ActiveRole = 53 then Exit;
  if Key = VK_INSERT then
    AddJRecord;
  if Key = VK_RETURN then
    EditJRecord;
end;

procedure TJWORKForm.v1StylesGetContentStyle(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  out AStyle: TcxStyle);
begin
 if ARecord.Values[clv1FACTDATE.Index]<> null then
   AStyle := cmDb.stl_ReadOnly;
end;

initialization

RegisterClass(TJWORKForm);

end.



