unit CurRemTOFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinDevExpressStyle, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, Data.DB, cxDBData, cxImageComboBox, Vcl.Menus,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.ImgList, FIBDataSet,
  FibQuery, pFIBCacheQueries, pFIBProps, ClipBrd,
  pFIBDataSet, Vcl.StdCtrls, cxButtons, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxMaskEdit, PlanTOUnit, dxSkinsdxBarPainter,
  dxBar, cxButtonEdit, cxMemo, dxSkinVS2010;

type
  TCurRemTOForm = class(TDezForm)
    lc1: TdxLayoutControl;
    cbb_house: TcxLookupComboBox;
    grd1: TcxGrid;
    v1: TcxGridDBTableView;
    clv1CODE: TcxGridDBColumn;
    clv1Y: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1STREETNAME: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1STREET: TcxGridDBColumn;
    clv1MLIST: TcxGridDBColumn;
    clv1KONTNAME: TcxGridDBColumn;
    clv1MLISTNAME: TcxGridDBColumn;
    clv1SUMY: TcxGridDBColumn;
    clv1SUM1: TcxGridDBColumn;
    clv1SUM2: TcxGridDBColumn;
    clv1SUM3: TcxGridDBColumn;
    clv1SUM4: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1MANAGER: TcxGridDBColumn;
    clv1FIO: TcxGridDBColumn;
    clv1NOTE: TcxGridDBColumn;
    cl_v1FACTCODE: TcxGridDBColumn;
    l1: TcxGridLevel;
    ce_sumy: TcxCurrencyEdit;
    ce_sumost: TcxCurrencyEdit;
    ce_sumfact: TcxCurrencyEdit;
    grd2: TcxGrid;
    v2: TcxGridDBTableView;
    clv2Img: TcxGridDBColumn;
    clv2V: TcxGridDBColumn;
    clv2trplan: TcxGridDBColumn;
    clv2CODE: TcxGridDBColumn;
    clv2Act: TcxGridDBColumn;
    clv2SYEAR: TcxGridDBColumn;
    clv2STYPE: TcxGridDBColumn;
    clv2STREET: TcxGridDBColumn;
    clv2KONRNAME: TcxGridDBColumn;
    clv2STREETNAME: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2NOMER: TcxGridDBColumn;
    clv2NOTE: TcxGridDBColumn;
    clv2MLIST: TcxGridDBColumn;
    clv2MLISTNAME: TcxGridDBColumn;
    clv2MNOTE: TcxGridDBColumn;
    clv2KONTRAGENT: TcxGridDBColumn;
    clv2mse: TcxGridDBColumn;
    clv2SHOWHOUSE: TcxGridDBColumn;
    l2: TcxGridLevel;
    btn_exec: TcxButton;
    ce_proc: TcxCurrencyEdit;
    ce_ost: TcxCurrencyEdit;
    btn_save: TcxButton;
    ce_proc4: TcxCurrencyEdit;
    ce_razn: TcxCurrencyEdit;
    ce_wsum: TcxCurrencyEdit;
    btn1: TcxButton;
    grd3: TcxGrid;
    v4: TcxGridDBTableView;
    clv4V: TcxGridDBColumn;
    clv4STRUCTDEFECT: TcxGridDBColumn;
    clv4SDNAME: TcxGridDBColumn;
    clv4NOTE: TcxGridDBColumn;
    clv4QUANTITY: TcxGridDBColumn;
    clv4ed: TcxGridDBColumn;
    clv4MNOTE: TcxGridDBColumn;
    clv4SHOWHOUSE: TcxGridDBColumn;
    clv4HOUSE: TcxGridDBColumn;
    clv4MLIST: TcxGridDBColumn;
    l4: TcxGridLevel;
    grp1: TdxLayoutGroup;
    grp2: TdxLayoutGroup;
    litm__house: TdxLayoutItem;
    litm_exec: TdxLayoutItem;
    litm_grd1: TdxLayoutItem;
    spl1: TdxLayoutSplitterItem;
    grp3: TdxLayoutGroup;
    litm_sumost: TdxLayoutItem;
    litm_sumy: TdxLayoutItem;
    litm_sumfact: TdxLayoutItem;
    litm_wsum: TdxLayoutItem;
    litm_ost: TdxLayoutItem;
    litm_save: TdxLayoutItem;
    grlc1Group2: TdxLayoutGroup;
    litm_grd2: TdxLayoutItem;
    spl2: TdxLayoutSplitterItem;
    grlc1Group1: TdxLayoutGroup;
    litm_itm4: TdxLayoutItem;
    litm_razn: TdxLayoutItem;
    litm_proc: TdxLayoutItem;
    litm_itmlc1Item1: TdxLayoutItem;
    litm_proc4: TdxLayoutItem;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    ds_toplan: TpFIBDataSet;
    src_toplan: TDataSource;
    ds_showhouse: TpFIBDataSet;
    src_showhouse: TDataSource;
    prop1: TcxPropertiesStore;
    ds_house: TpFIBDataSet;
    src_house: TDataSource;
    ds_trfinplan: TpFIBDataSet;
    src_trfinplan: TDataSource;
    il1: TcxImageList;
    ds_dedail: TpFIBDataSet;
    src_detail: TDataSource;
    cbb_SrvDog: TcxLookupComboBox;
    litm_lc1Item1: TdxLayoutItem;
    cbb_Y: TcxComboBox;
    litm_lc1Item11: TdxLayoutItem;
    barM1: TdxBarManager;
    lGrplc1Group1: TdxLayoutGroup;
    lGrplc1Group2: TdxLayoutGroup;
    lGrplc1Group3: TdxLayoutGroup;
    lGrplc1Group4: TdxLayoutGroup;
    doc1: TdxBarDockControl;
    litm_lc1Item12: TdxLayoutItem;
    brM1Bar1: TdxBar;
    btn_Add: TdxBarButton;
    btn_Edit: TdxBarButton;
    btn_Delete: TdxBarButton;
    ds_SrvDog: TpFIBDataSet;
    src_SrvDog: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbb_YPropertiesEditValueChanged(Sender: TObject);
    procedure cbb_SrvDogPropertiesEditValueChanged(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
    procedure v2CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1NavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure btn_AddClick(Sender: TObject);
    procedure btn_EditClick(Sender: TObject);
    procedure btn_DeleteClick(Sender: TObject);
    procedure ds_toplanAfterOpen(DataSet: TDataSet);
    procedure ds_toplanAfterPost(DataSet: TDataSet);
    procedure cbb_housePropertiesEditValueChanged(Sender: TObject);
    procedure clv4NOTEPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ds_dedailBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure PrepareDS;
    procedure LoadHouseByDog(srvDog: Variant);
    procedure OpenInspection(year, house: Variant);
    procedure LoadData;
    procedure GetSum;
    function GetKontrBySrvDog(srvDog: Variant): Variant;
    procedure ShowEditForm(mlist: Variant; isEdit: Boolean = False);
    procedure OpenWorkByAddr(srvdog, house, year: Variant);
    procedure BtnEnable;
    procedure RecalcSum;
  public
    { Public declarations }
  end;

var
  CurRemTOForm: TCurRemTOForm;

implementation

uses cmDBUnit, dezCommon, CurRemTOAddFrm;

{$R *.dfm}


procedure TCurRemTOForm.BtnEnable;
var
  rec: Variant;
begin
  rec:= v1.FN('CODE');
  btn_Add.Enabled:= not (ds_toplan.State in [dsInactive]);
  btn_Edit.Enabled:= not VarIsType(rec, [varNull, varEmpty]);
  btn_Delete.Enabled:= not VarIsType(rec, [varNull, varEmpty]);

end;

procedure TCurRemTOForm.btn_AddClick(Sender: TObject);
begin
  ShowEditForm(null, false);
end;

procedure TCurRemTOForm.btn_DeleteClick(Sender: TObject);
begin
  if Application.MessageBox('¬ы действительно хотите удалить запись?',
    'ѕредупреждение', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
  begin
    v1.DataController.DeleteFocused;
  end;
end;

procedure TCurRemTOForm.btn_EditClick(Sender: TObject);
begin
  ShowEditForm(null, True);
end;

procedure TCurRemTOForm.btn_execClick(Sender: TObject);
begin
  GetSum;
  //
  LoadData;
end;

procedure TCurRemTOForm.cbb_housePropertiesEditValueChanged(Sender: TObject);
begin
  btn_exec.Enabled:= not VarIsType(cbb_house.EditValue, [varNull, varEmpty]);
end;

procedure TCurRemTOForm.cbb_SrvDogPropertiesEditValueChanged(Sender: TObject);
begin
  LoadHouseByDog(cbb_SrvDog.EditValue);
  cbb_house.EditValue:= null;
end;

procedure TCurRemTOForm.cbb_YPropertiesEditValueChanged(Sender: TObject);
begin
  if ActiveUserType = 0 then
  PlanTO.LoadDogovor(cbb_Y.EditValue) else
  PlanTO.LoadDogovor(cbb_Y.EditValue, ActiveKontragent);
  try
    cbb_SrvDog.ItemIndex:= 0;
  except
    on E: Exception do
      cbb_SrvDog.EditValue:= null;
  end;
end;

procedure TCurRemTOForm.clv4NOTEPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Clipboard.AsText :=(v4.GetColumnByFieldName('NOTE').EditValue);
end;

procedure TCurRemTOForm.ds_dedailBeforePost(DataSet: TDataSet);
begin
  ds_dedail.Cancel;
end;

procedure TCurRemTOForm.ds_toplanAfterOpen(DataSet: TDataSet);
begin
  BtnEnable;
  RecalcSum;
end;

procedure TCurRemTOForm.ds_toplanAfterPost(DataSet: TDataSet);
begin
  BtnEnable;
  RecalcSum;
end;

procedure TCurRemTOForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TCurRemTOForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  PrepareDS;
end;

function TCurRemTOForm.GetKontrBySrvDog(srvDog: Variant): Variant;
var
  aSQL: string;
begin
  aSQL:= 'select KONTRAGENT from SRVDOG where CODE =:CODE';
  Result:= cmDb.DB.QueryValue(aSQL,0,[srvDog],cmDb.RT, True);
end;

procedure TCurRemTOForm.GetSum;
var
  Q: TFibQuery;
  aSQL: string;
  sumY: Variant;
  data: TDate;
begin
  //сумма на год
  //aSQL:= 'select SUMM from GET_FINPLAN_TO(:DATA, :SRV) where house = :house';
  aSQL:= 'select SUMY, SUMOST from TOFINPLAN where Y=:Y and SRVDOG=:SRV and HOUSE=:house';
  Q:= GetQueryForUse(cmDb.RT,aSQL);
  try
    Q.ParamByName('Y').AsVariant:= cbb_Y.EditValue;
    Q.ParamByName('SRV').AsVariant:= cbb_SrvDog.EditValue;
    Q.ParamByName('house').AsVariant:= cbb_house.EditValue;
    Q.ExecQuery;
      ce_sumy.EditValue:= Q.FN('SUMY').AsVariant;
      ce_sumost.EditValue:= Q.FN('SUMOST').AsVariant;
  finally
    FreeQueryForUse(Q);
  end;
  //data:= StrToDate('01.01.'+VarToStr(cbb_Y.EditValue));
  //sumY:=cmDb.DB.QueryValue(aSQL,0,[data,cbb_SrvDog.EditValue, cbb_house.EditValue],cmDb.RT,True);
  //ce_sumy.EditValue:= sumY;
  //
end;

procedure TCurRemTOForm.LoadData;
begin
  v1.BeginUpdate(lsimImmediate);
  v2.BeginUpdate(lsimImmediate);
  v4.BeginUpdate(lsimImmediate);
  try
    //открываем обходы и осмотры
    OpenInspection(cbb_Y.EditValue, cbb_house.EditValue);
    //открываем список работ
    OpenWorkByAddr(cbb_SrvDog.EditValue, cbb_house.EditValue, cbb_Y.EditValue);
  finally
    v1.EndUpdate;
    v2.EndUpdate;
    v4.EndUpdate;
    BtnEnable;
  end;
end;

procedure TCurRemTOForm.LoadHouseByDog(srvDog: Variant);
begin
  with ds_house do begin
    Close;
    ParamByName('DOG').AsVariant:= srvDog;
    Open;
  end;
end;

procedure TCurRemTOForm.OpenInspection(year, house: Variant);
begin
    with ds_showhouse do
    begin
      Close;                        //RTYPE=0 тех. обслуживание
      MainWhereClause:='sh.syear>=:Y and SR.HOUSE=:HOUSE and sh.stype=1 and sr.RTYPE=0';
      //if ActiveUserType=1 then
      MainWhereClause:=MainWhereClause+' and sd.kontragent=:kontr';
      ParamByName('Y').AsVariant:=year-1;
      ParamByName('HOUSE').AsVariant:=house;
      //if ActiveUserType=1 then
      ParamByName('kontr').AsVariant:=GetKontrBySrvDog(cbb_SrvDog.EditValue);
      GroupByClause:='SR.MLIST,m.name,SR.SHOWHOUSE, sh.syear,7, s.code,s.name,'+
      ' SR.HOUSE,h.nomer, sd.kontragent, k.name, sd.nomer';
      Open;
    end;
end;

procedure TCurRemTOForm.OpenWorkByAddr(srvdog, house, year: Variant);
begin
  try
    with ds_toplan do begin
      Close;
      MainWhereClause:= 'TP.srvdog =:srv and TP.HOUSE =:house and TP.Y = :Y';
      ParamByName('srv').AsVariant:= srvdog;
      ParamByName('house').AsVariant := house;
      ParamByName('Y').AsVariant := year;
      Open;
    end;
  finally

  end;
end;

procedure TCurRemTOForm.PrepareDS;
begin
  DSOptoins(ds_toplan,'','TOPLAN','CODE','GEN_TOPLAN_ID',false);
  BtnEnable;
end;

procedure TCurRemTOForm.RecalcSum;
var
  AIndex: Integer;
  sum, sumY, sumOst: Variant;
begin
  AIndex:=v1.Controller.FocusedRowIndex; //запоминаем позицию
  ds_toplan.DisableControls;
  try
    sum:= 0; sumY:=0; sumOst:=0;
    if not VarIsType(ce_sumy.EditValue,[varNull,varEmpty]) then
       sumY:= ce_sumy.EditValue;
    ds_toplan.First;
    while not ds_toplan.Eof do begin
      sum:= sum+ds_toplan.FN('SUMY').AsVariant;
      ds_toplan.Next;
    end;
    //сумма работ
    ce_wsum.EditValue:= sum;
    //остаток
    ce_ost.EditValue:= ce_sumy.EditValue - sum;
  finally
    ds_toplan.EnableControls;
    v1.Controller.FocusRecord(AIndex, true); // возвращаемс€ на позицию
  end;
end;

procedure TCurRemTOForm.ShowEditForm(mlist: Variant; isEdit: Boolean);
var
  F: TCurRemTOAddForm;

  procedure SaveRec;
  begin
    with ds_toplan do begin
      FN('Y').AsVariant:= cbb_Y.EditValue;
      FN('SRVDOG').AsVariant:= cbb_SrvDog.EditValue;
      FN('HOUSE').AsVariant:= cbb_house.EditValue;
      FN('MLIST').AsVariant:= F.cbb_mlist.EditValue;
      FN('SUMY').AsVariant:= F.CurrencyEdit_sum.EditValue;
      FN('SUM1').AsVariant:= F.CurrencyEdit_sum1.EditValue;
      FN('SUM2').AsVariant:= F.CurrencyEdit_sum2.EditValue;
      FN('SUM3').AsVariant:= F.CurrencyEdit_sum3.EditValue;
      FN('SUM4').AsVariant:= F.CurrencyEdit_sum4.EditValue;
      FN('NOTE').AsVariant:= F.txt1.EditValue;
      //FN('SHOWCODE').AsVariant:= mlist;
      Post;
      Refresh;
    end;
  end;

  procedure EditRec;
  begin
    with ds_toplan do begin
      FN('MLIST').AsVariant:= F.cbb_mlist.EditValue;
      FN('SUMY').AsVariant:= F.CurrencyEdit_sum.EditValue;
      FN('SUM1').AsVariant:= F.CurrencyEdit_sum1.EditValue;
      FN('SUM2').AsVariant:= F.CurrencyEdit_sum2.EditValue;
      FN('SUM3').AsVariant:= F.CurrencyEdit_sum3.EditValue;
      FN('SUM4').AsVariant:= F.CurrencyEdit_sum4.EditValue;
      FN('NOTE').AsVariant:= F.txt1.EditValue;
      Post;
      Refresh;
    end;
  end;

begin
  if isEdit then
    ds_toplan.Edit else
    ds_toplan.Append;
  if mlist<>null then
    ds_toplan.FN('MLIST').AsVariant:= mlist;
  F:= TCurRemTOAddForm.Create(Application.MainForm, ds_toplan);
  try
    if F.ShowModal = mrOk then
    begin
      case ds_toplan.State of
        dsEdit: EditRec;
        dsInsert: SaveRec;
        dsNewValue: SaveRec;
      end;
    end else
      ds_toplan.Cancel;
  finally
    if Assigned(F) then
    FreeAndNil(F);
  end;
end;

procedure TCurRemTOForm.v1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  ShowEditForm(null, True);
end;

procedure TCurRemTOForm.v1NavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  case AButtonIndex of
    0: ShowEditForm(null, false);
    1: ADone := True;
    2: ShowEditForm(null, True);
  end;
end;

procedure TCurRemTOForm.v2CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  ShowEditForm(v2.FN('MLIST'));
end;

initialization
 RegisterClass(TCurRemTOForm);
end.
