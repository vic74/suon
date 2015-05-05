unit GraphListFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxBar, BaseForm, cmDBUnit,
  cxMaskEdit, cxDBLookupComboBox, FIBDataSet, pFIBDataSet, dezCommon,
  cxBarEditItem, FIBQuery, pFIBCacheQueries, pFIBQuery, pFIBProps, QExport4,
  QExport4XLS, ShellAPI, frxClass, FIBDatabase, pFIBDatabase,
  frxFIBComponents, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, dxLayoutcxEditAdapters, cxContainer, Menus, StdCtrls,
  cxButtons, cxMemo, cxDropDownEdit, cxTextEdit, cxLookupEdit, cxDBLookupEdit,
  cxCheckBox, dxmdaset, cxCalendar, EXLReportExcelTLB, EXLReportBand, EXLReport,
  frxDBSet, dxLayoutContainer, dxLayoutControlAdapters, cxProgressBar,
  cxImageComboBox, dxSkinsdxDockControlPainter, cxPC, dxDockControl, dxDockPanel,
  cxSpinEdit, dxSkinDevExpressStyle, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinsDefaultPainters, frxExportRTF, frxExportXLS, dxSkinVS2010;

type
  TGraphListForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    brm1: TdxBarManager;
    brm1Bar1: TdxBar;
    spl1: TdxLayoutSplitterItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_grd2: TdxLayoutItem;
    ds_GraphList: TpFIBDataSet;
    src_GraphList: TDataSource;
    ds_kontr: TpFIBDataSet;
    src_kontr: TDataSource;
    ds_GRAPHTO: TpFIBDataSet;
    src_GRAPHTO: TDataSource;
    ds_GrapSpec: TpFIBDataSet;
    src_GrapSpec: TDataSource;
    doc_br1: TdxBarDockControl;
    itm_doc: TdxLayoutItem;
    brm1Bar2: TdxBar;
    btn_sync: TdxBarButton;
    lb_copy: TcxBarEditItem;
    btn_copy: TdxBarButton;
    ds_copy: TpFIBDataSet;
    src_copy: TDataSource;
    clv2CODE: TcxGridDBColumn;
    clv2GRAPHLIST: TcxGridDBColumn;
    clv2STREET: TcxGridDBColumn;
    clv2STName: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2nomer: TcxGridDBColumn;
    clv2D1: TcxGridDBColumn;
    clv2D2: TcxGridDBColumn;
    btn_insert: TdxBarButton;
    btn_edit: TdxBarButton;
    btn_delete: TdxBarButton;
    xls1: TQExport4XLS;
    btn_xls: TdxBarButton;
    fr: TfrxReport;
    btn_rep: TdxBarButton;
    clv2D3: TcxGridDBColumn;
    grp_left: TdxLayoutGroup;
    grplc1Group1: TdxLayoutGroup;
    spl: TdxLayoutSplitterItem;
    cbb_SHOWPRIKAZPO: TcxLookupComboBox;
    itm_SHOWPRIKAZPO: TdxLayoutItem;
    edt_year: TcxMaskEdit;
    itm_year: TdxLayoutItem;
    cbb_type: TcxComboBox;
    itm_type: TdxLayoutItem;
    m_note: TcxMemo;
    itm_note: TdxLayoutItem;
    btn_ok: TcxButton;
    itm_ok: TdxLayoutItem;
    btn_ed: TcxButton;
    itm_edit: TdxLayoutItem;
    btn_del: TcxButton;
    itm_del: TdxLayoutItem;
    grplc1Group2: TdxLayoutGroup;
    ds_SHOWPROKAZPO: TpFIBDataSet;
    src_SHOWPROKAZPO: TDataSource;
    clv2Flag: TcxGridDBColumn;
    grlc1Group1: TdxLayoutGroup;
    grlc1Group2: TdxLayoutGroup;
    dt1: TcxDateEdit;
    itm_D1: TdxLayoutItem;
    dt2: TcxDateEdit;
    itm_D2: TdxLayoutItem;
    dt3: TcxDateEdit;
    itm_D3: TdxLayoutItem;
    btn_post: TcxButton;
    itm_post: TdxLayoutItem;
    xlr: TEXLReport;
    grlc1Group3: TdxLayoutGroup;
    msk_Y: TcxMaskEdit;
    itmlc1Item1: TdxLayoutItem;
    cbb_Dog: TcxLookupComboBox;
    itmlc1Item11: TdxLayoutItem;
    cbb_gtype: TcxLookupComboBox;
    itmlc1Item12: TdxLayoutItem;
    txt_prim: TcxTextEdit;
    itmlc1Item13: TdxLayoutItem;
    doc1: TdxBarDockControl;
    itmlc1Item14: TdxLayoutItem;
    ds_dog: TpFIBDataSet;
    src_dog: TDataSource;
    txt_app: TcxTextEdit;
    itmlc1Item15: TdxLayoutItem;
    cl_PROSR: TcxGridDBColumn;
    cl_ACTFACT: TcxGridDBColumn;
    cl_FLAT_CNT: TcxGridDBColumn;
    cl_PROC: TcxGridDBColumn;
    DetailGroup: TdxLayoutGroup;
    grplc1Group4: TdxLayoutGroup;
    v3: TcxGridDBTableView;
    l3: TcxGridLevel;
    grd3: TcxGrid;
    itm_grd3: TdxLayoutItem;
    ds_GRAPHSPECM: TpFIBDataSet;
    src_GRAPHSPECM: TDataSource;
    grplc1Group3: TdxLayoutGroup;
    grplc1Group5: TdxLayoutGroup;
    cbb_Month: TcxComboBox;
    itmlc1Item16: TdxLayoutItem;
    btn_AddMonth: TcxButton;
    itmlc1Item17: TdxLayoutItem;
    spl4: TdxLayoutSplitterItem;
    clv3CODE: TcxGridDBColumn;
    clv3GRAPHSPEC: TcxGridDBColumn;
    clv3M: TcxGridDBColumn;
    clv3MName: TcxGridDBColumn;
    clv3FLATPLAN: TcxGridDBColumn;
    clv3FLAT: TcxGridDBColumn;
    fr2: TfrxReport;
    btn_GRep: TdxBarButton;
    docs1: TdxDockSite;
    itmlc1Item18: TdxLayoutItem;
    pnl1: TdxDockPanel;
    docs3: TdxLayoutDockSite;
    pnl2: TdxDockPanel;
    docs4: TdxTabContainerDockSite;
    grd1: TcxGrid;
    v1: TcxGridDBTableView;
    cl_v1POALOCK: TcxGridDBColumn;
    clv1alock: TcxGridDBColumn;
    clv1CODE: TcxGridDBColumn;
    clv1YEAR: TcxGridDBColumn;
    clv1KNAME: TcxGridDBColumn;
    clv1GTNAME: TcxGridDBColumn;
    clv1NOTE: TcxGridDBColumn;
    clv1SRVDOG: TcxGridDBColumn;
    clv1APP: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1GRAPHTO: TcxGridDBColumn;
    cl_v1GLTCODE: TcxGridDBColumn;
    cl_v1GLTNAME: TcxGridDBColumn;
    cl_v1PROCFACT: TcxGridDBColumn;
    cl_v1PREDDATA: TcxGridDBColumn;
    l1: TcxGridLevel;
    docm1: TdxDockingManager;
    v4: TcxGridDBTableView;
    l4: TcxGridLevel;
    grd4: TcxGrid;
    clv2CNT: TcxGridDBColumn;
    ds_orderSpec: TpFIBDataSet;
    src_orderspec: TDataSource;
    clv4KNAME: TcxGridDBColumn;
    clv4DATA: TcxGridDBColumn;
    clv4SNAME: TcxGridDBColumn;
    clv4NOTE: TcxGridDBColumn;
    clv4FDATA: TcxGridDBColumn;
    clv1GRAPHTYPE: TcxGridDBColumn;
    docm2: TdxBarDockControl;
    brm1Bar3: TdxBar;
    itm_dt1: TcxBarEditItem;
    itm_dt2: TcxBarEditItem;
    clv1GTCODE: TcxGridDBColumn;
    clv2PROC_EN: TcxGridDBColumn;
    clv2ENTRANCE_CNT: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1D1: TcxGridDBColumn;
    clv1D2: TcxGridDBColumn;
    fr_ds1: TfrxDBDataset;
    btn_Smeta: TdxBarButton;
    btn_Act: TdxBarButton;
    xls2: TfrxXLSExport;
    rtf1: TfrxRTFExport;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_syncClick(Sender: TObject);
    procedure btn_copyClick(Sender: TObject);
    procedure btn_insertClick(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure btn_deleteClick(Sender: TObject);
    procedure btn_xlsClick(Sender: TObject);
    procedure btn_repClick(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
    procedure btn_edClick(Sender: TObject);
    procedure btn_delClick(Sender: TObject);
    procedure clv2FlagPropertiesEditValueChanged(Sender: TObject);
    procedure btn_postClick(Sender: TObject);
    procedure ds_GraphListAfterOpen(DataSet: TDataSet);
    procedure clv1alockPropertiesEditValueChanged(Sender: TObject);
    procedure ds_GrapSpecBeforeDelete(DataSet: TDataSet);
    procedure v2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v2StylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure cl_v1POALOCKPropertiesEditValueChanged(Sender: TObject);
    procedure clv2D1StylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure clv2D2StylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure btn_AddMonthClick(Sender: TObject);
    procedure clv3FLATPLANPropertiesEditValueChanged(Sender: TObject);
    procedure clv3FLATPropertiesEditValueChanged(Sender: TObject);
    procedure ds_GRAPHSPECMAfterPost(DataSet: TDataSet);
    procedure ds_GRAPHSPECMAfterDelete(DataSet: TDataSet);
    procedure btn_GRepClick(Sender: TObject);
    procedure docs4ActiveChildChanged(Sender: TdxContainerDockSite;
      Child: TdxCustomDockControl);
    procedure itm_dt1PropertiesEditValueChanged(Sender: TObject);
    procedure itm_dt2PropertiesEditValueChanged(Sender: TObject);
    procedure btn_SmetaClick(Sender: TObject);
    procedure btn_ActClick(Sender: TObject);
    procedure v1FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    { Private declarations }
    procedure OpenDS;
    procedure LoadFromDog;
    procedure LoadSpec;
    procedure AddGRAPHSPECMMonth;
    procedure CopyFrom;
    procedure clear_gspec(gl: Variant);
    procedure ExitportXls;
    procedure PrintRep;
    function GetRepPath(GRAPHTO: Variant): Variant;
    function CheckParam :Boolean;
    procedure AddRec(isEdit :boolean=False);
    procedure FillEdit;
    procedure SetRight;
    //
    procedure Agreed(isLock: Variant);
    procedure RightGraphRec(isClosed: Variant);
    //
    procedure AddMissingHouse;
    procedure DelExcessHouse;
    procedure RefreshMaster;
    procedure PrintGRep;
    procedure OpenOrder;
  public
    { Public declarations }
  end;

var
  GraphListForm: TGraphListForm;

implementation

uses AppUtils, cmUtils, LoadingSplash, dezInfo, BkpDoc;
{$R *.dfm}

procedure TGraphListForm.AddGRAPHSPECMMonth;
var
  fGRAPHSPEC: Variant;
begin
  fGRAPHSPEC:= v2.FN('CODE');
  if fGRAPHSPEC = null then Exit;
  with ds_GRAPHSPECM do begin
    Append;
    FN('GRAPHSPEC').AsVariant:= fGRAPHSPEC;
    FN('M').AsVariant:= cbb_Month.ItemIndex+1;
    FN('GRAPHTYPE').AsVariant:= v1.FN('GRAPHTYPE');
    Post;
  end;
end;

procedure TGraphListForm.AddMissingHouse;
var
  Q: TFIBQuery;

  function GetClause: string;
  begin
    case v1.FN('GRAPHTO') of
      32: Result:= 'SD.SRVDOG = :DOG and gs.house is null and h.GARBAGE_CNT>0';  //Обходы и осмотры жилого фонда: мусоропровод.
      else Result:= 'SD.SRVDOG = :DOG and gs.house is null';
    end;
  end;

begin
  if v1.GetColumnByFieldName('CODE').EditValue = null then Exit;
  Q:=GetQueryForUse(cmDb.WT,
    'insert into GRAPHSPEC (graphlist, street, HOUSE, D1, D2, D3)' + #13#10 +
    'select :gl,h.street, SD.HOUSE, current_date D1, current_date D2, ' +
    'current_date D3' + #13#10 +
    'from SRVDOGHOUSE SD' + #13#10 +
    'left outer join HOUSE H on H.CODE = SD.HOUSE' + #13#10 +
    'left outer join graphspec gs on gs.house=sd.house and gs.graphlist=:gl');
    Q.Options:=[qoStartTransaction, qoAutoCommit];
  try
    Q.MainWhereClause:= GetClause;
    Q.ParamByName('gl').AsVariant:= v1.GetColumnByFieldName('CODE').EditValue;
    Q.ParamByName('DOG').AsVariant:=v1.GetColumnByFieldName('SRVDOG').EditValue;
    Q.ExecQuery;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TGraphListForm.AddRec(isEdit: boolean=false);
  function GetKontr :variant;
  var
    Kontr: variant;
  begin
    cbb_dog.SetFocus;
    with TcxLookupComboBox(cbb_dog).Properties.Grid.DataController do
    begin
      Kontr := Values[FocusedRecordIndex,1];
      Result:= Kontr;
    end;
  end;
begin
  if not CheckParam then Exit;
  with ds_GraphList do
  begin
    DisableControls;
    try
      if isEdit then Edit else
      Append;
      FN('YEAR').AsVariant:=msk_Y.EditingValue;
      FN('KONTRAGENT').AsVariant:=GetKontr;
      FN('GRAPHTO').AsVariant:=cbb_gtype.EditValue;
      FN('SRVDOG').AsVariant:= cbb_Dog.EditValue;
      //FN('SHOWPRIKAZPO').AsVariant:=cbb_SHOWPRIKAZPO.EditValue;
      FN('APP').AsVariant:=txt_app.EditingValue;
      FN('ALOCK').AsVariant:=0;
      FN('NOTE').AsVariant:=txt_prim.EditingValue;
      Post;
    finally
      EnableControls;
    end;
  end;
  FillEdit;
  LoadSpec;
end;

procedure TGraphListForm.btn_ActClick(Sender: TObject);
var
  bkp: TBkpObj;
begin
  bkp:= TBkpObj.Create;
  try
    bkp.VentilationReport(v1.GetColumnByFieldName('CODE').EditValue, TExportType.etAct);
  finally
    FreeAndNil(bkp);
  end;
end;

procedure TGraphListForm.btn_AddMonthClick(Sender: TObject);
begin
  AddGRAPHSPECMMonth;
end;

procedure TGraphListForm.btn_copyClick(Sender: TObject);
begin
  //
  CopyFrom;
end;

procedure TGraphListForm.CopyFrom;
var
  Q: TFIBQuery;
  newY: Variant;
  function GetNeDate(d: TDateTime; y: Variant): Variant;
  var
    year, month, data: Word;
  begin
    DecodeDate(d, year, month, data);
    Result := EncodeDate(y, month, data);
  end;

begin
  SplashVisibility(True, 'Копируем данные.');
  try
    clear_gspec(v1.GetColumnByFieldName('CODE').EditValue);
    Q := GetQueryForUse(cmDB.RT,
      'select * from graphspec where GRAPHLIST=:cod');

    Q.ParamByName('cod').AsVariant := lb_copy.EditValue;
    Q.ExecQuery;
    newY := v1.GetColumnByFieldName('YEAR').EditValue;
    while not Q.Eof do
    begin
      with ds_GrapSpec do
      begin
        Append;
        FN('GRAPHLIST').AsVariant := v1.GetColumnByFieldName('CODE').EditValue;
        FN('STREET').AsVariant := Q.FN('STREET').AsVariant;
        FN('HOUSE').AsVariant := Q.FN('HOUSE').AsVariant;
        FN('D1').AsVariant := GetNeDate(Q.FN('D1').AsVariant, newY);
        FN('D2').AsVariant := GetNeDate(Q.FN('D2').AsVariant, newY);
        Post;
      end;
      Q.Next;
    end;
  finally
    SplashVisibility(False);
  end;
  LoadSpec;
end;

procedure TGraphListForm.DelExcessHouse;
var
  Q, Q1: TFIBQuery;

  function MakeClause: string;
  begin
    case v1.FN('GRAPHTO') of
      32: Result:= ' or (gs.graphlist=:gl and h.GARBAGE_CNT=0)';  //Обходы и осмотры жилого фонда: мусоропровод.
      else Result:= '';
    end;
  end;

begin
  if v1.GetColumnByFieldName('CODE').EditValue = null then Exit;
  // получаем дома отсутствующие в договоре
  Q:=GetQueryForUse(cmDb.RT,
    'SELECT LIST(GS.CODE,'','') CODE' +#13#10+
    '    FROM GRAPHSPEC GS' +#13#10+
    '    LEFT OUTER JOIN SRVDOGHOUSE SD ON SD.HOUSE=GS.HOUSE AND SD.SRVDOG=:DOG' +#13#10+
    '    LEFT OUTER JOIN HOUSE H ON H.CODE = GS.HOUSE');
  Q.Options:=[qoStartTransaction];
  try                                                         //только незакрытые, закрытые не удаляем
    Q.MainWhereClause:='(gs.graphlist=:gl and sd.house is null and gs.ISCLOSED<>1)'+MakeClause;
    Q.ParamByName('gl').AsVariant:= v1.GetColumnByFieldName('CODE').EditValue;
    Q.ParamByName('DOG').AsVariant:=v1.GetColumnByFieldName('SRVDOG').EditValue;
    Q.ExecQuery;
    if Q.FN('CODE').AsVariant<>null then begin
      Q1:=GetQueryForUse(cmDb.WT,
        'delete from GRAPHSPEC where CODE in ('+Q.FN('CODE').AsString+')');
      try
        Q1.Options:=[qoStartTransaction, qoAutoCommit];
        Q1.ExecQuery;
      finally
        FreeQueryForUse(Q1);
      end;
    end;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TGraphListForm.docs4ActiveChildChanged(Sender: TdxContainerDockSite;
  Child: TdxCustomDockControl);
begin
  if docs4.ActiveChildIndex = 0 then Exit;
  OpenOrder;
end;

procedure TGraphListForm.ds_GraphListAfterOpen(DataSet: TDataSet);
begin
  FillEdit;
end;

procedure TGraphListForm.ds_GRAPHSPECMAfterDelete(DataSet: TDataSet);
begin
  RefreshMaster;
end;

procedure TGraphListForm.ds_GRAPHSPECMAfterPost(DataSet: TDataSet);
begin
  RefreshMaster;
end;

procedure TGraphListForm.ds_GrapSpecBeforeDelete(DataSet: TDataSet);
begin
  if gFN(v1,'alock') = 1 then begin
    v2.DataController.Cancel;
    raise EMyException.Create('График заблокирован!');
  end;
end;

procedure TGraphListForm.btn_delClick(Sender: TObject);
begin
  if v1.GetColumnByFieldName('CODE').EditValue=Unassigned then Exit;
  if cmMessageBox('Удалить запись?') then
  ds_GraphList.Delete;
end;

procedure TGraphListForm.btn_deleteClick(Sender: TObject);
begin
  if (v1.GetColumnByFieldName('CODE').EditValue = null) or
    (v1.GetColumnByFieldName('CODE').EditValue = Unassigned) then
    Exit;

  if cmMessageBox('Вы действительно хотите удалить график № ' +
      v1.GetColumnByFieldName('Code').EditValue) then
  begin
    ds_GraphList.Delete;
    FillEdit;
    LoadSpec;
  end;
end;

procedure TGraphListForm.btn_edClick(Sender: TObject);
begin
  if v1.GetColumnByFieldName('CODE').EditValue=Unassigned then Exit;
  AddRec(True);
end;

procedure TGraphListForm.btn_editClick(Sender: TObject);
begin
  AddRec(true);
end;

procedure TGraphListForm.btn_GRepClick(Sender: TObject);
begin
  PrintGRep;
end;

procedure TGraphListForm.btn_insertClick(Sender: TObject);
begin
  AddRec;
end;

procedure TGraphListForm.btn_okClick(Sender: TObject);
begin
  AddRec;
end;

procedure TGraphListForm.btn_postClick(Sender: TObject);
var
  i :Integer;
begin
  with v2.DataController do begin
    for I := 0 to FilteredRecordCount - 1 do
      if v2.ViewData.Rows[I].Selected then  begin
        DataSet.RecNo := FilteredRecordIndex[I] + 1;
        with DataSet do begin
          if FieldByName('ISCLOSED').AsVariant<>1 then begin
            Edit;
              if dt1.EditValue<>null then
              FieldByName('D1').AsVariant:=dt1.EditValue;
              if dt2.EditValue<>null then
              FieldByName('D2').AsVariant:=dt2.EditValue;
              if dt3.EditValue<>null then
              FieldByName('D3').AsVariant:=dt3.EditValue;
            Post;
          end;
        end;
      end;
  end;
end;

procedure TGraphListForm.btn_repClick(Sender: TObject);
begin
  PrintRep;
end;

procedure TGraphListForm.btn_SmetaClick(Sender: TObject);
var
  bkp: TBkpObj;
begin
  bkp:= TBkpObj.Create;
  try
    bkp.VentilationReport(v1.GetColumnByFieldName('CODE').EditValue, TExportType.etSmeta);
  finally
    FreeAndNil(bkp);
  end;
end;

procedure TGraphListForm.btn_syncClick(Sender: TObject);
begin
  if v1.GetColumnByFieldName('alock').EditValue = 1 then
    raise EMyException.Create('График заблокирован!');
  LoadFromDog;
end;

procedure TGraphListForm.btn_xlsClick(Sender: TObject);
begin
  // xls
  ExitportXls;
end;

function TGraphListForm.CheckParam: Boolean;
begin
  Result:=True;
  if cbb_Dog.EditValue=null then
  begin
    Result:=False;
    raise EMyException.Create('Не указан договор!');
  end;
  if edt_year.EditValue=null then
  begin
    Result:=False;
    raise EMyException.Create('Не указан год!');
  end;
  if cbb_gtype.EditValue=null then begin
    Result:=false;
    raise EMyException.Create('Error Message');
  end;
end;

procedure TGraphListForm.ExitportXls;
var
  Path: string;
begin
  Path := ExtractFilePath(Application.ExeName) + 'tem_rep\';
  xls1.FileName := Path + 'графики.xls';
  { xls1.Options.PageHeader:=
    '№ '+v1.GetColumnByFieldName('Code').EditValue+#32
    +'год - '+v1.GetColumnByFieldName('YEAR').EditValue+#32
    +' ПО -'+v1.DataController.DisplayTexts[v1.Controller.FocusedRecordIndex,
    clv1KONTRAGENT.Index]; }

  xls1.Header.Add('График технического обслуживания.');
  xls1.Header.Add('№' + v1.GetColumnByFieldName('Code')
      .EditValue + #32 + ' год-' + v1.GetColumnByFieldName('YEAR')
      .EditValue + #32 + ' ПО-' + v1.DataController.DisplayTexts
      [v1.Controller.FocusedRecordIndex, clv1KONTRAGENT.Index]);
  xls1.HeaderRows := 2;
  // поля
  with xls1.ExportedFields do
  begin
    Clear;
    Add('STName');
    Add('nomer');
    Add('D1');
    Add('D2');
  end;
  // заголовки
  with xls1.Captions do
  begin
    Clear;
    Add('STName=Улица');
    Add('nomer=Дом');
    Add('D1=Дата начала осмотра');
    Add('D2=Дата завершения осмотра');
  end;
  // ширина
  with xls1.ColumnsWidth do
  begin
    Clear;
    Add('STName=25');
    Add('nomer=5');
    Add('D1=21');
    Add('D2=25');
  end;

  xls1.Execute;
end;

procedure TGraphListForm.FillEdit;
begin
  btn_sync.Enabled:= not ds_GraphList.IsEmpty;
  with ds_GraphList do
  begin
    msk_Y.EditValue:=FN('YEAR').AsVariant;
    cbb_gtype.EditValue:=FN('GRAPHTO').AsVariant;
    cbb_dog.EditValue:=FN('SRVDOG').AsVariant;
    txt_app.EditValue:=FN('APP').AsVariant;
    txt_prim.EditValue:=FN('NOTE').AsVariant;
  end;
end;

procedure TGraphListForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TGraphListForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1, Self.Name);
  OpenDS;
  SetRight;
  // set order date
  if itm_dt1.EditValue = null then
     itm_dt1.EditValue:= Date;
  if itm_dt2.EditValue = null then
     itm_dt2.EditValue:= Date;
end;

function TGraphListForm.GetRepPath(GRAPHTO: Variant): Variant;
var
  Q: TFIBQuery;
begin
  Q := GetQueryForUse(cmDB.RT, 'select SHABLON from GRAPHTO where code=:cod');
  Q.ParamByName('cod').AsVariant := GRAPHTO;
  Q.ExecQuery;
  if Q.FN('SHABLON').AsVariant = null then
    Result := null
  else
    Result := ExtractFilePath(Application.ExeName) + 'rep\' + Q.FN('SHABLON')
      .AsVariant;
  FreeQueryForUse(Q);
end;

procedure TGraphListForm.itm_dt1PropertiesEditValueChanged(Sender: TObject);
begin
  TcxDateEdit(Sender).PostEditValue;
  OpenOrder;
end;

procedure TGraphListForm.itm_dt2PropertiesEditValueChanged(Sender: TObject);
begin
  TcxDateEdit(Sender).PostEditValue;
  OpenOrder;
end;

procedure TGraphListForm.Agreed(isLock: Variant);
begin
  //у согласованных графиков нельзя менять период запланированных работ
  clv2D1.Options.Editing := isLock <> 1;
  clv2D2.Options.Editing := isLock <> 1;
  //групповое изменение дат
  grlc1Group1.Enabled := isLock <> 1;
  clv2D1.Options.ShowEditButtons:= TcxGridItemShowEditButtons(isLock = 1);
  clv2D2.Options.ShowEditButtons:= TcxGridItemShowEditButtons(isLock = 1);
end;

procedure TGraphListForm.clear_gspec(gl: Variant);
var
  Q: TFIBQuery;
begin
  Q := GetQueryForUse(cmDB.WT, 'delete from graphspec where GRAPHLIST=:gl');
  Q.Options := [qoStartTransaction, qoAutoCommit];
  Q.ParamByName('gl').AsVariant := gl;
  Q.ExecQuery;
  FreeQueryForUse(Q);
end;

procedure TGraphListForm.clv1alockPropertiesEditValueChanged(Sender: TObject);
var
  i: variant;
begin
  v1.DataController.Post;
  i:= gFN(v1,'alock');
  if i=null then i:=0;
  Agreed(i);
  {v2.BeginUpdate(lsimImmediate);
  Screen.Cursor:= crSQLWait;
  try
    with ds_GrapSpec do begin
      First;
      while not Eof do begin
        Edit;
        FN('ISCLOSED').AsVariant:=i;
        Post;
        Next;
      end;
    end;
  finally
    Screen.Cursor:= crDefault;
    v2.EndUpdate;
  end;}
end;

procedure TGraphListForm.clv2D1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if v1.GetColumnByFieldName('ALOCK').EditValue = 1 then
  AStyle := cmDb.stl_ReadOnly;
end;

procedure TGraphListForm.clv2D2StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if v1.GetColumnByFieldName('ALOCK').EditValue = 1 then
  AStyle := cmDb.stl_ReadOnly;
end;

procedure TGraphListForm.clv2FlagPropertiesEditValueChanged(Sender: TObject);
begin
  {if gFN(v1,'alock') = 1 then begin
    v2.DataController.Cancel;
    raise EMyException.Create('График заблокирован!');
  end;}
  v2.DataController.Post();
end;

procedure TGraphListForm.clv3FLATPLANPropertiesEditValueChanged(
  Sender: TObject);
  var
  AIndex: Integer;
begin
  AIndex := v2.Controller.FocusedRowIndex; // запоминаем позицию
  try
    v3.DataController.Post(True);
  finally
    v2.Controller.FocusRecord(AIndex, true); // возвращаемся на позицию
  end;
end;

procedure TGraphListForm.clv3FLATPropertiesEditValueChanged(Sender: TObject);
var
  AIndex: Integer;
begin
  AIndex := v2.Controller.FocusedRowIndex; // запоминаем позицию
  try
    v3.DataController.Post(True);
  finally
    v2.Controller.FocusRecord(AIndex, true); // возвращаемся на позицию
  end;
end;

procedure TGraphListForm.cl_v1POALOCKPropertiesEditValueChanged(
  Sender: TObject);
begin
  v1.DataController.Post;
end;

procedure TGraphListForm.LoadFromDog;
var
  Dog: Variant;
  Q: TFIBQuery;
begin
  Application.ProcessMessages;
  SplashVisibility(True, 'Загружаются данные.');
  //добавляем дома из договора если отсутствуют в графике
  AddMissingHouse;
  //Удаляем дома из графика если отсутствуют в договоре
  DelExcessHouse;
  //очистка графика
  //clear_gspec(v1.GetColumnByFieldName('CODE').EditValue);
  try
  {  Q := GetQueryForUse(cmDB.RT,
      'SELECT sd.SRVDOG, sd.HOUSE, s.code FROM SRVDOGHOUSE sd' +
        ' left outer join house h on h.code=sd.house' +
        ' left outer join street s on s.code=h.street' +
        ' where sd.srvdog=:dog');
    Q.ParamByName('dog').AsVariant := gFN(v1,'SRVDOG');
    Q.ExecQuery;
    while not Q.Eof do
    begin
      with ds_GrapSpec do
      begin
        Append;
        FN('GRAPHLIST').AsVariant := v1.GetColumnByFieldName('CODE').EditValue;
        FN('STREET').AsVariant := Q.FN('CODE').AsVariant;
        FN('HOUSE').AsVariant := Q.FN('HOUSE').AsVariant;
        FN('D1').AsVariant := Date;
        FN('D2').AsVariant := Date;
        FN('D3').AsVariant := Date;
        Post;
      end;
      Q.Next;
    end;}
  finally
    SplashVisibility(False);
    //FreeQueryForUse(Q);
    LoadSpec;
  end;
end;

procedure TGraphListForm.OpenDS;
begin
  DSOptoins(ds_GraphList, '', 'GRAPHLIST', 'CODE', 'GRAPHLIST_GEN', False);
  DSOptoins(ds_GRAPHSPECM,'','GRAPHSPECM','CODE','GRAPHSPECM_GEN',false);
  if ActiveUserType = 1 then
  begin
    ds_GraphList.MainWhereClause := 'GL.KONTRAGENT=:kontr';
    ds_GraphList.ParamByName('kontr').AsVariant := ActiveKontragent;
    ds_GraphList.Open;

    {ds_kontr.MainWhereClause := 'CODE=:kontr';
    ds_kontr.ParamByName('kontr').AsVariant := ActiveKontragent;
    ds_kontr.OrderClause := 'name';
    ds_kontr.Open;}
    with ds_dog do begin
      Close;
      MainWhereClause:='sd."ACTIVE"=1 and sd.KONTRAGENT=:kontr';
      ParamByName('kontr').AsVariant:=ActiveKontragent;
      OrderClause:='10';
      Open;
    end;
  end
  else
  begin
    ds_GraphList.Open;
    //ds_kontr.Open;
    with ds_dog do begin
      Close;
      OrderClause:='10';
      Open;
    end;
  end;
  ds_GRAPHTO.Open;
  DSOptoins(ds_GrapSpec, '', 'GRAPHSPEC', 'CODE', 'GRAPHSPEC_GEN', False);
  LoadSpec;
end;

procedure TGraphListForm.OpenOrder;
var
  n: Variant;
begin
  if docs4.ActiveChildIndex = 0 then Exit;
  if itm_dt1.EditValue = null then Exit;
  if itm_dt2.EditValue = null then Exit;
  n:= v2.FN('CNT');
  //if pnl2.Active then
  ds_orderSpec.Close;
  //if v2.FN('CNT') > 0 then begin
    v4.BeginUpdate(lsimImmediate);
    try
      with ds_orderSpec do begin
        Close;
        ParamByName('D1').AsVariant:= itm_dt1.EditValue; //v2.FN('D1');
        ParamByName('D2').AsVariant:= itm_dt2.EditValue; //v2.FN('D2') + 14;
        ParamByName('HOUSE').AsVariant:= v2.FN('HOUSE');
        //ParamByName('gtype').AsVariant:= v1.FN('GRAPHTYPE');
        ParamByName('KONTRAGENT').AsVariant:= v1.FN('KONTRAGENT');
        Open;
      end;
    finally
       v4.EndUpdate;
    end;
  //end;
end;

procedure TGraphListForm.PrintGRep;
var
  fdb: TfrxFIBDatabase;
  Q: TFIBQuery;
begin
  fr2.LoadFromFile(ExtractFilePath(Application.ExeName)+'rep\Graph_Rep.fr3');
  fr2.Variables['varYEAR'] := v1.GetColumnByFieldName('YEAR').EditValue;
  fr2.Variables['varM'] :=v1.FN('CODE');
  fr2.Variables['varGName'] :=#39+v1.FN('GLTNAME')+#39;
  // наименование по
  fr2.Variables['varPO'] :=#39+v1.FN('KNAME')+#39;
  // директор по
  if dzPO.COD <> v1.FN('KONTRAGENT') then
     dzPO.GetInfo(v1.FN('KONTRAGENT'));
  fr2.Variables['varPODir'] :=#39+dzPO.Dir+#39;
  // получить тип по (электрика / общестрой)
  fr2.Variables['varPOType'] :=dzPO.POType;
  //
  fdb := fr2.FindObject('fdb') as TfrxFIBDatabase;
  with fdb do
  begin
    DatabaseName := cmDB.DB.DBName;
    Params.Values['user_name'] := cmDB.DB.DBParams.Values['user_name'];
    Params.Values['password'] := cmDB.DB.DBParams.Values['password'];
    Params.Values['sql_role_name'] := cmDB.DB.DBParams.Values['sql_role_name'];
    SQLDialect := 3;
    Connected := True;
  end;
  fr2.ShowReport();
end;

procedure TGraphListForm.PrintRep;
var
  fdb: TfrxFIBDatabase;
  Q: TFIBQuery;
  Path: Variant;
begin
  Path := GetRepPath(v1.GetColumnByFieldName('GRAPHTO').EditValue);
  if Path = null then
    Exit;
  fr.LoadFromFile(Path);
  fr.Variables['varGraph'] := v1.GetColumnByFieldName('CODE').EditValue;
  fr.Variables['varYEAR'] := v1.GetColumnByFieldName('YEAR').EditValue;
  fr.Variables['varKontr'] :=#39+gFN(v1,'KNAME')+#39;
  fr.Variables['varAPP'] :=#39+VarToStrDef(gFN(v1,'APP'),'')+#39;
  fr.Variables['varDOG'] :=#39+v1.FN('NOMER')+#39;
  fr.Variables['varD1'] :=#39+VarToStr(v1.FN('D1'))+#39;
  fr.Variables['varD2'] :=#39+VarToStr(v1.FN('D2'))+#39;
    with TcxLookupComboBoxProperties(cbb_Dog.Properties).Grid.DataController do
    begin
      fr.Variables['vardog']:=#39+VarToStr(Values[FocusedRecordIndex,3])+#39;
      fr.Variables['varDogDate']:=#39+VarToStr(Values[FocusedRecordIndex,6])+#39;
    end;
  fr.Variables['varGrafName']:=#39+VarToStr(gFN(v1,'GTNAME'))+#39;
  case gFN(v1,'KONTRAGENT') of
    13 : fr.Variables['varRole'] :=#39'энергетик'#39;
    15 : fr.Variables['varRole'] :=#39'энергетик'#39;
    else fr.Variables['varRole'] :=#39'ст. менеджер'#39;
  end;
  fdb := fr.FindObject('fdb') as TfrxFIBDatabase;
  with fdb do
  begin
    DatabaseName := cmDB.DB.DBName;
    Params.Values['user_name'] := cmDB.DB.DBParams.Values['user_name'];
    Params.Values['password'] := cmDB.DB.DBParams.Values['password'];
    Params.Values['sql_role_name'] := cmDB.DB.DBParams.Values['sql_role_name'];
    SQLDialect := 3;
    Connected := True;
  end;
  fr.ShowReport();
end;

procedure TGraphListForm.RefreshMaster;
var
  AIndex, BIndex: Integer;
begin
  AIndex:= v2.Controller.FocusedRowIndex;
  BIndex:= v3.Controller.FocusedRowIndex;
  try
    ds_GrapSpec.CloseOpen(false);
  finally
    v2.Controller.FocusRecord(AIndex, true);
    v3.Controller.FocusRecord(BIndex, true);
  end;
end;

procedure TGraphListForm.RightGraphRec(isClosed: Variant);
begin
  if v1.GetColumnByFieldName('ALOCK').EditValue = 1 then begin
    clv2D1.Options.Editing := false;
    clv2D2.Options.Editing := false;
  end else
      begin
        clv2D1.Options.Editing := isClosed <> 1;
        clv2D2.Options.Editing := isClosed <> 1;
      end;
  clv2D3.Options.Editing := isClosed <> 1;
  cl_PROSR.Options.Editing := isClosed <> 1;
  cl_ACTFACT.Options.Editing := isClosed <> 1;
end;

procedure TGraphListForm.SetRight;
  procedure SetEditRight(isEdit: boolean);
  begin
    clv2Flag.Options.Editing:=isEdit;  //Ст. Менеджер СЭ.
    clv1alock.Options.Editing:= isEdit;
    cl_v1POALOCK.Options.Editing:= not isEdit;
    cl_v1POALOCK.Options.ShowEditButtons:= TcxGridItemShowEditButtons(isEdit);
  end;

  procedure EngineerSE;
  begin
    clv1alock.Options.Editing:= false;
    cl_v1POALOCK.Options.Editing:= false;
    clv2Flag.Options.Editing:= true;
    btn_insert.Enabled := false;
    btn_edit.Enabled := false;
    btn_delete.Enabled := false;
    grlc1Group1.Enabled := false;
  end;
begin
  if ActiveUserType=1 then begin
    SetEditRight(False);
  end else begin
    case ActiveRole of
      1  : SetEditRight(True); //admin
      7  : SetEditRight(True); //Ст. Менеджер СЭ.
      3  : SetEditRight(True); //Начальник СЭ.
      22 : SetEditRight(True); //зам. начальника СЭ
      53 : EngineerSE;         //Инженер СЭ
      4  : SetEditRight(True);  //Менеджер СЭ.
    end;
  end;
end;

procedure TGraphListForm.v1FocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  if ds_GraphList.State in [dsInsert, dsNewValue] then
    Exit;
  FillEdit;
  LoadSpec;
  case v1.GetColumnByFieldName('GRAPHTO').EditValue of
    21: begin
          btn_Smeta.Visible:= ivAlways;
          btn_Act.Visible:= ivAlways;
        end;
    22: begin
          btn_Smeta.Visible:= ivAlways;
          btn_Act.Visible:= ivAlways;
        end;
    else begin
           btn_Smeta.Visible:= ivNever;
           btn_Act.Visible:= ivNever;
         end;
  end;
end;

procedure TGraphListForm.v2CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  RightGraphRec(v2.GetColumnByFieldName('ISCLOSED').EditValue);
  OpenOrder;
end;

procedure TGraphListForm.v2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP : RightGraphRec(v2.GetColumnByFieldName('ISCLOSED').EditValue);
    VK_DOWN : RightGraphRec(v2.GetColumnByFieldName('ISCLOSED').EditValue);
  end;
end;

procedure TGraphListForm.v2StylesGetContentStyle(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  out AStyle: TcxStyle);
begin
 if ARecord.Values[clv2Flag.Index] = 1 then
   AStyle := cmDb.stl_ReadOnly;
end;

procedure TGraphListForm.LoadSpec;

 //видимость полей по коду графика
 procedure SetColumnForGraphTO(code: variant);
 begin
   if code=null then
      code:=0;
   case code of
     5: begin  //Технического освидетельствования лифтов
           cl_ACTFACT.Caption:='осмотренных лифтов';
           cl_ACTFACT.Visible := true;
           cl_FLAT_CNT.Caption:='кол-во лифтов';
           cl_FLAT_CNT.Visible:= true;
           cl_PROC.Visible:= true;
           clv2PROC_EN.Visible:= false;
           clv2ENTRANCE_CNT.Visible:= false;
           DetailGroup.Expanded:= True;
         end;
     10: begin  //экспертизы лифтов отработавших свой нормативный срок
           cl_ACTFACT.Caption:='осмотренных лифтов';
           cl_ACTFACT.Visible := true;
           cl_FLAT_CNT.Caption:='кол-во лифтов';
           cl_FLAT_CNT.Visible:= true;
           cl_PROC.Visible:= true;
           clv2PROC_EN.Visible:= false;
           clv2ENTRANCE_CNT.Visible:= false;
           DetailGroup.Expanded:= True;
         end;
     12: begin  //обслуживания внутридомовых газопроводов и газового оборудования
           cl_ACTFACT.Caption:='осмотренных квартир';
           cl_ACTFACT.Visible := true;
           cl_FLAT_CNT.Caption:='кол-во кв.';
           cl_FLAT_CNT.Visible:= true;
           cl_PROC.Visible:= true;
           clv2PROC_EN.Visible:= false;
           clv2ENTRANCE_CNT.Visible:= false;
           DetailGroup.Expanded:= True;
         end;
     36: begin  //Бетонирование приямков крылец
           cl_ACTFACT.Caption:='выполнено подъездов';
           cl_ACTFACT.Visible := true;
           clv2ENTRANCE_CNT.Visible:= true;
           clv2PROC_EN.Visible:= true;
            cl_FLAT_CNT.Visible:= false;
            cl_PROC.Visible:= false;
           DetailGroup.Expanded:= True;
         end;
     13: begin  //Обходы и осмотры этажных щитков.
           cl_ACTFACT.Caption:='осмотренных квартир';
           cl_ACTFACT.Visible := true;
           cl_FLAT_CNT.Caption:='кол-во кв.';
           cl_FLAT_CNT.Visible:= true;
           cl_PROC.Visible:= true;
           clv2PROC_EN.Visible:= false;
           clv2ENTRANCE_CNT.Visible:= false;
           DetailGroup.Expanded:= True;
         end;
     19: begin  //Обходы и осмотры поквартирно (ХГВС,КНЛ,отопление - 1 раз в год).
           cl_ACTFACT.Caption:='осмотренных квартир';
           cl_ACTFACT.Visible := true;
           cl_FLAT_CNT.Caption:='кол-во кв.';
           cl_FLAT_CNT.Visible:= true;
           cl_PROC.Visible:= true;
           clv2PROC_EN.Visible:= false;
           clv2ENTRANCE_CNT.Visible:= false;
           DetailGroup.Expanded:= True;
         end;
     21: begin  //Переодическая проверка технического состояния вентиляционных каналов (жилые дома с газом).
           cl_ACTFACT.Caption:='осмотренных квартир';
           cl_ACTFACT.Visible := true;
           cl_FLAT_CNT.Caption:='кол-во кв.';
           cl_FLAT_CNT.Visible:= true;
           cl_PROC.Visible:= true;
           clv2PROC_EN.Visible:= false;
           clv2ENTRANCE_CNT.Visible:= false;
           DetailGroup.Expanded:= False;
         end;
     22: begin  //Переодическая проверка технического состояния вентиляционных каналов (жилые дома с элетроплитами).
           cl_ACTFACT.Caption:='осмотренных квартир';
           cl_ACTFACT.Visible := true;
           cl_FLAT_CNT.Caption:='кол-во кв.';
           cl_FLAT_CNT.Visible:= true;
           cl_PROC.Visible:= true;
           clv2PROC_EN.Visible:= false;
           clv2ENTRANCE_CNT.Visible:= false;
           DetailGroup.Expanded:= False;
         end;

     else begin
            cl_ACTFACT.Visible := false;
            clv2ENTRANCE_CNT.Visible:= false;
            clv2PROC_EN.Visible:= false;
            cl_FLAT_CNT.Visible:= false;
            cl_PROC.Visible:= false;
            DetailGroup.Expanded:= false;
          end;
   end;
 end;

 function GetDataSet_ID: Integer;
 var
  code: Variant;
 begin
   if v1.FN('GRAPHTO') = null then code:=0 else
      code:= v1.FN('GRAPHTO');
   case code of
     5: Result:= 26;   //Графики выполнения работ ТО (лифт)
     10: Result:= 26;  // ...
     12: Result:= 26;  // ...
     else Result:= 25; //Графики выполнения работ ТО (основной)
   end;
 end;

begin
  v2.BeginUpdate(lsimImmediate);
  try
    with ds_GrapSpec do
    begin
      Close;
      DataSet_ID:=GetDataSet_ID;
      Prepare;
      MainWhereClause := 'GS.GRAPHLIST=:cod';
      ParamByName('cod').AsVariant := v1.GetColumnByFieldName('CODE').EditValue;
      OrderClause := 's.name,h.nomer';
      Open;
    end;
    with ds_copy do
    begin
      Close;
      MainWhereClause := 'gl.kontragent=:kontr and gl."YEAR"<>:y';
      ParamByName('kontr').AsVariant := v1.GetColumnByFieldName('kontragent')
        .EditValue;
      ParamByName('y').AsVariant := v1.GetColumnByFieldName('YEAR').EditValue;
      Open;
    end;
    Agreed(v1.GetColumnByFieldName('ALOCK').EditValue);
    //
    SetColumnForGraphTO(v1.FN('GTCODE'));
  finally
    v2.EndUpdate;
  end;
  OpenOrder;
 { if v1.GetColumnByFieldName('ALOCK').EditValue = 1 then begin
    clv2D1.Options.Editing:= false;
    clv2D2.Options.Editing:= false;
    clv2D3.Options.Editing:= false;
    btn_post.Enabled := false;
    clv2D1.Options.ShowEditButtons:= isebNever;
    clv2D1.Options.ShowEditButtons:= isebNever;
    clv2D1.Options.ShowEditButtons:= isebNever;
  end else begin
    clv2D1.Options.Editing:= true;
    clv2D2.Options.Editing:= true;
    clv2D3.Options.Editing:= true;
    btn_post.Enabled := true;
    clv2D1.Options.ShowEditButtons:= isebDefault;
    clv2D1.Options.ShowEditButtons:= isebDefault;
    clv2D1.Options.ShowEditButtons:= isebDefault;
  end;}
end;

initialization

RegisterClass(TGraphListForm);

end.





