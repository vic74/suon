unit PlanToFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinDevExpressStyle, cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, Data.DB, cxDBData, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxSkinsdxBarPainter, EXLReportExcelTLB,
  EXLReportBand, EXLReport, dxBar, cxClasses, frxExportRTF, frxClass,
  frxExportXLS, cxGridCustomPopupMenu, cxGridPopupMenu, FIBDataSet, pFIBDataSet,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, cxDropDownEdit,
  FIBQuery, pFIBCacheQueries, pFIBProps,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxMaskEdit,
  cxCurrencyEdit, PlanTOUnit, dxmdaset, dxSkinVS2010;

type
  TPlanToForm = class(TDezForm)
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    lc2: TdxLayoutControl;
    cbb_street: TcxLookupComboBox;
    btn_exec: TcxButton;
    grd1: TcxGrid;
    v1: TcxGridDBTableView;
    clv1SNAME: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1STREET: TcxGridDBColumn;
    clv1SUMOST: TcxGridDBColumn;
    clv1SUMY: TcxGridDBColumn;
    clvAllSum: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    l1: TcxGridLevel;
    btn_print: TcxButton;
    cbb_manager: TcxLookupComboBox;
    doc1: TdxBarDockControl;
    btn_Excel: TcxButton;
    lGrp1: TdxLayoutGroup;
    grp2: TdxLayoutGroup;
    itmlc1Item1: TdxLayoutItem;
    litm_exec: TdxLayoutItem;
    litm_print: TdxLayoutItem;
    litm_itmlc1Item11: TdxLayoutItem;
    litm_grd: TdxLayoutItem;
    litm_street: TdxLayoutItem;
    litm_itmlc1Item12: TdxLayoutItem;
    ppm1: TcxGridPopupMenu;
    fr: TfrxReport;
    frxls1: TfrxXLSExport;
    Exp1: TfrxRTFExport;
    brm1: TdxBarManager;
    bar1: TdxBar;
    btn_delhouse: TdxBarButton;
    btn_AddHouse: TdxBarButton;
    btn_Calc: TdxBarButton;
    xlr1: TEXLReport;
    cbb_Y: TcxComboBox;
    litm_lc2Item1: TdxLayoutItem;
    ds_FinPlanTO: TpFIBDataSet;
    src_FinPlanTO: TDataSource;
    md_FinPlan: TdxMemData;
    src_FinPlan: TDataSource;
    ds_HouseList: TpFIBDataSet;
    clv1SUMM1: TcxGridDBColumn;
    ds_TOFINPLAN: TpFIBDataSet;
    btn_Save: TcxButton;
    litm_lc2Item11: TdxLayoutItem;
    clv1SUMM2: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbb_YPropertiesEditValueChanged(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
    procedure btn_SaveClick(Sender: TObject);
    procedure cbb_managerPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    procedure GetFinPlan;
    procedure CreateMemData;
    procedure GetHouseList;
    procedure LoadData;
    procedure SaveData;
    procedure SetRight;
  public
    { Public declarations }
  end;

var
  PlanToForm: TPlanToForm;

implementation

uses cmDBUnit, dezCommon;

{$R *.dfm}


procedure TPlanToForm.btn_execClick(Sender: TObject);
begin
  v1.BeginUpdate(lsimImmediate);
  try
    LoadData;
    btn_Save.Enabled:= not md_FinPlan.IsEmpty;
  finally
    v1.EndUpdate;
  end;
  //GetFinPlan;
end;

procedure TPlanToForm.btn_SaveClick(Sender: TObject);
begin
  SaveData;
end;

procedure TPlanToForm.cbb_managerPropertiesEditValueChanged(Sender: TObject);
begin
  btn_Save.Enabled:= False;
end;

procedure TPlanToForm.cbb_YPropertiesEditValueChanged(Sender: TObject);
begin
  if ActiveUserType = 0 then
    PlanTo.LoadDogovor(cbb_Y.EditValue) else
    PlanTO.LoadDogovor(cbb_Y.EditValue, ActiveKontragent);
  btn_Save.Enabled:= False;
end;

procedure TPlanToForm.CreateMemData;
begin
  CreateField(md_FinPlan, 'Y', ftInteger);
  CreateField(md_FinPlan, 'SRVDOG', ftInteger);
  CreateField(md_FinPlan, 'HOUSE', ftInteger);
  CreateField(md_FinPlan, 'NOMER', ftString, 32);
  CreateField(md_FinPlan, 'STREET', ftInteger);
  CreateField(md_FinPlan, 'STREETNAME', ftString, 128);
  CreateField(md_FinPlan, 'SQUARE', ftFloat);
  CreateField(md_FinPlan, 'SUMM', ftFloat);
  CreateField(md_FinPlan, 'SUMM1', ftFloat);
  CreateField(md_FinPlan, 'SUMM2', ftFloat);
  md_FinPlan.Open;
end;

procedure TPlanToForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TPlanToForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  SetRight;
end;

procedure TPlanToForm.GetFinPlan;
var
  d: TDateTime;
  srv: Variant;
begin
  d:= StrToDate('01.01.'+VarToStr(cbb_Y.EditValue));
  srv:= cbb_manager.EditValue;
  if VarIsType(srv,[varNull, varEmpty]) then
     raise Exception.Create('Не указан договор!');
  v1.BeginUpdate(lsimImmediate);
  try
    with ds_FinPlanTO do begin
      Close;
      ParamByName('DATA').AsVariant:= d;
      ParamByName('SRV').AsVariant:= srv;
      Open;
    end;
  finally
    v1.EndUpdate;
  end;
end;

procedure TPlanToForm.GetHouseList;
begin
  with ds_HouseList do begin
    Close;
    ParamByName('srv').AsVariant:= cbb_manager.EditValue;
    ParamByName('Y').AsVariant:= cbb_Y.EditValue;
    Open;
  end;
end;

procedure TPlanToForm.LoadData;
var
  i, n, r: Integer;
begin
  //очищаем временную таблицу
  md_FinPlan.ClearField;
  CreateMemData;
  md_FinPlan.DisableControls;
  try
    i:= md_FinPlan.RecordCount;
    n:= md_FinPlan.FieldCount;
    //получаем список домов
    GetHouseList;
    //добавляем список во временную таблицу
    md_FinPlan.LoadFromDataSet(ds_HouseList);
    //загружаем расчетные данные
    GetFinPlan;
    //добавляем во временную таблицу
    md_FinPlan.First;
    ds_FinPlanTO.First;
    while not md_FinPlan.Eof do
    begin
      if md_FinPlan.FieldByName('HOUSE').AsVariant = ds_FinPlanTO.FN('HOUSE').AsVariant then
      begin
        r:= md_FinPlan.RecNo;
        md_FinPlan.Edit;
        md_FinPlan.FieldByName('NOMER').AsVariant:= ds_FinPlanTO.FN('NOMER').AsVariant;
        md_FinPlan.FieldByName('STREET').AsVariant:= ds_FinPlanTO.FN('STREET').AsVariant;
        md_FinPlan.FieldByName('STREETNAME').AsVariant:= ds_FinPlanTO.FN('STREETNAME').AsVariant;
        md_FinPlan.FieldByName('SQUARE').AsVariant:= ds_FinPlanTO.FN('SQUARE').AsVariant;
        md_FinPlan.FieldByName('SUMM1').AsVariant:= ds_FinPlanTO.FN('SUMM').AsVariant;
        if VarIsType(md_FinPlan.FieldByName('SUMM1').AsVariant,[varNull, varEmpty]) then
           md_FinPlan.FieldByName('SUMM1').AsVariant:= 0;
        md_FinPlan.FieldByName('SUMM').AsVariant:= 0;
        md_FinPlan.FieldByName('SUMM2').AsVariant:= 0;
        md_FinPlan.FieldByName('Y').AsVariant:= cbb_Y.EditValue;
        md_FinPlan.FieldByName('SRVDOG').AsVariant:= cbb_manager.EditValue;
        md_FinPlan.Post;
        if ds_FinPlanTO.Eof then
           Break;
        md_FinPlan.Next;
        ds_FinPlanTO.Next;
      end else
      md_FinPlan.Next;
    end;

    //загружаем записи из таблицы TOFINPLAN
    with ds_TOFINPLAN do begin
      Close;
      ParamByName('SRVDOG').AsVariant:= cbb_manager.EditValue;
      ParamByName('Y').AsVariant:= cbb_Y.EditValue;
      Open;
    end;
    //добавляем во временную таблицу
    md_FinPlan.First;
    ds_TOFINPLAN.First;
    while not md_FinPlan.Eof do
    begin
      if md_FinPlan.FieldByName('HOUSE').AsVariant = ds_TOFINPLAN.FN('HOUSE').AsVariant then
      begin
        md_FinPlan.Edit;
        md_FinPlan.FieldByName('NOMER').AsVariant:= ds_TOFINPLAN.FN('NOMER').AsVariant;
        md_FinPlan.FieldByName('STREET').AsVariant:= ds_TOFINPLAN.FN('STREET').AsVariant;
        md_FinPlan.FieldByName('STREETNAME').AsVariant:= ds_TOFINPLAN.FN('STREETNAME').AsVariant;
        md_FinPlan.FieldByName('SQUARE').AsVariant:= ds_TOFINPLAN.FN('SQUARE').AsVariant;
        md_FinPlan.FieldByName('SUMM').AsVariant:= ds_TOFINPLAN.FN('SUMY').AsVariant;
        if VarIsType(md_FinPlan.FieldByName('SUMM').AsVariant,[varNull, varEmpty]) then
           md_FinPlan.FieldByName('SUMM').AsVariant:= 0;
        md_FinPlan.FieldByName('SUMM2').AsVariant:= md_FinPlan.FieldByName('SUMM').AsVariant -
                                                    md_FinPlan.FieldByName('SUMM1').AsVariant;
        md_FinPlan.Post;
        if ds_TOFINPLAN.Eof then
           Break;
        md_FinPlan.Next;
        ds_TOFINPLAN.Next;
      end else begin
        md_FinPlan.Edit;
          md_FinPlan.FieldByName('SUMM').AsVariant:= 0;
          md_FinPlan.FieldByName('SUMM2').AsVariant:= md_FinPlan.FieldByName('SUMM').AsVariant -
                                                      md_FinPlan.FieldByName('SUMM1').AsVariant;
        md_FinPlan.Post;
        md_FinPlan.Next;
      end;
    end;
    //reload data
    //LoadData;  ?????????
  finally
    md_FinPlan.EnableControls;
  end;

end;

procedure TPlanToForm.SaveData;
var
  Q: TFIBQuery;
  aSQL: string;
  sum: Variant;

  procedure Exec;
  begin
    Q.ParamByName('Y').AsVariant:=md_FinPlan.FieldByName('Y').AsVariant;
    Q.ParamByName('SRVDOG').AsVariant:=md_FinPlan.FieldByName('SRVDOG').AsVariant;
    Q.ParamByName('HOUSE').AsVariant:=md_FinPlan.FieldByName('HOUSE').AsVariant;
    Q.ParamByName('SUMY').AsVariant:=md_FinPlan.FieldByName('SUMM1').AsVariant;
    Q.ParamByName('SUMOST').AsVariant:=0; //!!!!!!!!!!!!!!!!!!!!
    Q.ParamByName('SQUARE').AsVariant:=md_FinPlan.FieldByName('SQUARE').AsVariant;
    Q.ExecQuery;
  end;

  procedure ClearData;
  var
    Q1: TFIBQuery;
  begin
    Q1:= GetQueryForUse(cmDb.WT,'delete from TOFINPLAN where Y=:Y and SRVDOG=:SRVDOG');
    Q1.Options:=[qoStartTransaction, qoAutoCommit];
    try
      Q1.ParamByName('Y').AsVariant:= cbb_Y.EditValue;
      Q1.ParamByName('SRVDOG').AsVariant:= cbb_manager.EditValue;
      Q1.ExecQuery;
    finally
      FreeQueryForUse(Q1);
    end;
  end;

begin
  if Application.MessageBox('ВНИМАНИЕ!' + #13#10 +
    'Текущий фин.план будет перезаписан. ' + #13#10 +
    'Сохранятся только те записи у которых "план на год расчетный" больше 0!',
    'Предупреждение', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDNO then
  Exit;

  //очищаем финплан
  ClearData;
  //
  aSQL:= 'insert into TOFINPLAN (Y, SRVDOG, HOUSE, SUMY, SUM1, SUM2, SUM3, SUM4, SUMOST, SQUARE)'+#10#13+
         ' values (:Y, :SRVDOG, :HOUSE, :SUMY, :SUM1, :SUM2, :SUM3, :SUM4, :SUMOST, :SQUARE);';
  v1.BeginUpdate(lsimImmediate);
  try
    Q:= GetQueryForUse(cmDb.WT,aSQL);
    Q.Options:=[qoStartTransaction, qoAutoCommit];
    md_FinPlan.First;
    while not md_FinPlan.Eof do
    begin
      sum:= md_FinPlan.FieldByName('SUMM1').AsVariant;
      if (not VarIsType(sum,[varNull, varEmpty]) or (sum>0) ) then
      Exec;
      md_FinPlan.Next;
    end;
    //reload data
    LoadData;
  finally
    v1.EndUpdate;
  end;
end;

procedure TPlanToForm.SetRight;
begin
  if ActiveUserType = 1 then
    btn_Save.Visible:= False;
end;

initialization
 RegisterClass(TPlanToForm);
end.
