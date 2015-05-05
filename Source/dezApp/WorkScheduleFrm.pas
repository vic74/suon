unit WorkScheduleFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, Data.DB,
  cxDBData, dxLayoutcxEditAdapters, cxContainer,
   dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  FIBDataSet, pFIBDataSet, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxEditRepositoryItems, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinsDefaultPainters, dxSkinDevExpressStyle, cxNavigator,
  KontragentRepository;

type
  TWorkScheduleForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    group1: TdxLayoutGroup;
    group2: TdxLayoutGroup;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    dt1: TcxDateEdit;
    itmlc1Item1: TdxLayoutItem;
    dt2: TcxDateEdit;
    itmlc1Item11: TdxLayoutItem;
    btn_exec: TcxButton;
    itmlc1Item12: TdxLayoutItem;
    ds_TRDOP: TpFIBDataSet;
    src_TRDOP: TDataSource;
    cbb_kontr: TcxLookupComboBox;
    itmlc1Item2: TdxLayoutItem;
    src_kontr: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1TRFACT: TcxGridDBColumn;
    clv1MLIST: TcxGridDBColumn;
    clv1MNAME: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1STREET: TcxGridDBColumn;
    clv1SNAME: TcxGridDBColumn;
    clv1SUMMA: TcxGridDBColumn;
    clv1NSUMMA: TcxGridDBColumn;
    clv1DPLACE: TcxGridDBColumn;
    clv1TRDOP: TcxGridDBColumn;
    clv1NCALC: TcxGridDBColumn;
    clv1D1: TcxGridDBColumn;
    clv1D2: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1ZD: TcxGridDBColumn;
    clv1PODATA: TcxGridDBColumn;
    clv1STATE: TcxGridDBColumn;
    clv1DURATION: TcxGridDBColumn;
    clv1NDOP: TcxGridDBColumn;
    clv1KNAME: TcxGridDBColumn;
    btn_clearkontr: TcxButton;
    itmlc1Item13: TdxLayoutItem;
    clv1LOCK: TcxGridDBColumn;
    EditRepository1: TcxEditRepository;
    DateItem_write: TcxEditRepositoryDateItem;
    DateItem_Read: TcxEditRepositoryDateItem;
    clv1DPlan: TcxGridDBColumn;
    clv1DFact: TcxGridDBColumn;
    cbb_type: TcxComboBox;
    LItemlc1Item1: TdxLayoutItem;
    ds_TRLDOP: TpFIBDataSet;
    src_TRLDOP: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_execClick(Sender: TObject);
    procedure btn_clearkontrClick(Sender: TObject);
    procedure v1StylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure clv1PODATAGetProperties(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
    procedure DateItem_writePropertiesEditValueChanged(Sender: TObject);
    procedure ds_TRDOPBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    fController: TKontragentController;
    procedure MakeData;
    function CheckParams: Boolean;
    procedure OpenDS;
    procedure SetRight;
  public
    { Public declarations }
  end;

var
  WorkScheduleForm: TWorkScheduleForm;

implementation

uses cmDBUnit, dezCommon, GraphListFrm;

{$R *.dfm}


procedure TWorkScheduleForm.btn_clearkontrClick(Sender: TObject);
begin
  cbb_kontr.EditValue:= null;
end;

procedure TWorkScheduleForm.btn_execClick(Sender: TObject);
begin
  MakeData;
end;

function TWorkScheduleForm.CheckParams: Boolean;
begin
  Result:= false;
  if dt1.EditValue = null then
     raise dezException.Create('Укажите дату начала периода!');
  if dt2.EditValue = null then
     raise dezException.Create('Укажите дату окончания!');
  if ActiveUserType = 1 then
  if cbb_kontr.EditValue = null then
     raise dezException.Create('Не указан контрагент!');
  Result:= True;
end;

procedure TWorkScheduleForm.clv1PODATAGetProperties(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if ActiveUserType = 0 then Exit;
  if ARecord.Values[clv1ZD.Index] = null then begin
      AProperties:= DateItem_write.Properties;

     end else
     AProperties:= DateItem_Read.Properties;
end;

procedure TWorkScheduleForm.DateItem_writePropertiesEditValueChanged(
  Sender: TObject);
begin
  v1.DataController.Post();
end;

procedure TWorkScheduleForm.ds_TRDOPBeforePost(DataSet: TDataSet);
begin
  if clv1PODATA.EditValue <> null then
    if (clv1PODATA.EditValue < v1.FN('D1')) or
       (clv1PODATA.EditValue > v1.FN('D2')) then begin
         v1.DataController.Cancel;
         raise dezException.Create('Дата не может выходить за рамки периода начала и окончания выполнения работ!');
       end;
end;

procedure TWorkScheduleForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fController.Free;
  Action:= caFree;
end;

procedure TWorkScheduleForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  fController:= TKontragentController.Create;
  src_kontr.DataSet:= fController.GetActiveKontrShort();
  SetRight;
  OpenDS;
end;

procedure TWorkScheduleForm.MakeData;
var
  i: Integer;

  procedure Open_DOPSOG(ds: TpFIBDataSet);
  begin
    with ds do begin
      Close;
       v1.DataController.DataSource.DataSet:= ds;
        if (ActiveUserType = 0) and (cbb_kontr.EditValue = null) then
        MainWhereClause:='td.D1 between :d1 and :d2 and tr.STATE>2' else
        MainWhereClause:='td.D1 between :d1 and :d2 and tr.KONTRAGENT =:kontr and tr.STATE>2';
        ParamByName('D1').AsVariant:= dt1.EditValue;
        ParamByName('D2').AsVariant:= dt2.EditValue;
        if ParamExist('kontr', i) then
         ParamByName('kontr').AsVariant:= cbb_kontr.EditValue;
        OrderClause:='tr.KONTRAGENT, s.NAME, h.NOMER, m.NAME';
      Open;
      //ShowMessage(ds.Name+#10#13+ds.SelectSQL.Text+#10#13+ds.MainWhereClause);
      //src_TRDOP.DataSet:=ds;
    end;
  end;
begin
  if not CheckParams then Exit;
  //
  case cbb_type.ItemIndex of
    0: Open_DOPSOG(ds_TRDOP);   //общестрой
    1: Open_DOPSOG(ds_TRLDOP);  //лифт
  end;
end;

procedure TWorkScheduleForm.OpenDS;
begin
  DSOptoins(ds_TRDOP,'','TRDOPSOG','CODE','TRDOPSOG_GEN', false);
  DSOptoins(ds_TRLDOP,'','TRLDOPSOG','CODE','TRLDOPSOG_GEN', false);
end;

procedure TWorkScheduleForm.SetRight;
begin
  if ActiveUserType = 0 then begin
    clv1PODATA.Options.Editing:= False;
    clv1PODATA.Options.ShowEditButtons:= isebNever;
  end else begin
    clv1PODATA.Options.Editing:= true;
    clv1PODATA.Options.ShowEditButtons:= isebDefault;
    cbb_kontr.EditValue:= ActiveKontragent;
    cbb_kontr.Properties.ReadOnly:= True;
  end;
  btn_clearkontr.Enabled:= ActiveUserType = 0;
  v1.GetColumnByFieldName('KNAME').Visible:= ActiveUserType = 0;
end;

procedure TWorkScheduleForm.v1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
 if ARecord.Values[clv1ZD.Index] <> null then
   AStyle := cmDb.stl_ReadOnly;
end;

initialization
 RegisterClass(TWorkScheduleForm);
end.
