unit TarifUKFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  cxCalendar, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  DB, cxDBData, dxLayoutControl, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, dxBar,
  dxBarExtItems, cxBarEditItem, dxLayoutLookAndFeels, BaseForm, FIBDataSet,
  FIBQuery, pFIBCacheQueries, pFIBProps,
  pFIBDataSet, dxmdaset, dxLayoutcxEditAdapters, cxContainer, Menus, StdCtrls,
  cxButtons, cxCalc, cxDropDownEdit, cxTextEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxPropertiesStore, cxSpinEdit,
  dxLayoutContainer, dxLayoutControlAdapters, dxSkinDevExpressStyle,
  Vcl.ComCtrls, dxCore, cxDateUtils;

type
  TTarifUKForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    brm1: TdxBarManager;
    brm1Bar1: TdxBar;
    lb_data: TcxBarEditItem;
    btn_refresh: TdxBarButton;
    ed_tarif: TdxBarSpinEdit;
    btn_set: TdxBarButton;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_grd2: TdxLayoutItem;
    spl1: TdxLayoutSplitterItem;
    ds_HOUSEUK: TpFIBDataSet;
    src_HOUSEUK: TDataSource;
    ds_history: TpFIBDataSet;
    src_history: TDataSource;
    clv2DATA: TcxGridDBColumn;
    clv2PROC: TcxGridDBColumn;
    clv1CODE: TcxGridDBColumn;
    clv1DATA: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1PROC: TcxGridDBColumn;
    clv1STREET: TcxGridDBColumn;
    clv1STNAME: TcxGridDBColumn;
    m_HouseUK: TdxMemData;
    grp_right: TdxLayoutGroup;
    grp_2: TdxLayoutGroup;
    cbb_street: TcxLookupComboBox;
    itm_street: TdxLayoutItem;
    cbb_house: TcxLookupComboBox;
    itm_house: TdxLayoutItem;
    dt1: TcxDateEdit;
    itm_dt1: TdxLayoutItem;
    clc_proc: TcxCalcEdit;
    itm_proc: TdxLayoutItem;
    btn_add: TcxButton;
    itm_btn_add: TdxLayoutItem;
    btn_edit: TcxButton;
    itm_edit: TdxLayoutItem;
    grp_btn: TdxLayoutGroup;
    btn_del: TcxButton;
    itm_btn_del: TdxLayoutItem;
    prop1: TcxPropertiesStore;
    ds_street: TpFIBDataSet;
    src_street: TDataSource;
    ds_house: TpFIBDataSet;
    src_house: TDataSource;
    stl_indicator: TcxStyleRepository;
    cxstyl_indicator: TcxStyle;
    btn_fill: TdxBarButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_addClick(Sender: TObject);
    procedure btn_refreshClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbb_streetPropertiesChange(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_delClick(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure btn_setClick(Sender: TObject);
    procedure clv1PROCPropertiesEditValueChanged(Sender: TObject);
    procedure ds_historyBeforeDelete(DataSet: TDataSet);
    procedure btn_fillClick(Sender: TObject);
  private
    { Private declarations }
    procedure CreateMem;
    procedure FillMem;
    function CheckParam :Boolean;
    procedure OpenDS;
    procedure GetHouse;
    procedure FillEdit;
    procedure DeleteRec;
    procedure AppendRec(isEdit :Boolean);
    procedure SetProc;
    procedure EditProc(NewProc,H,S :Variant; reload :Boolean=true);
    procedure FillHouse;
    function GetHouseList :Variant;
  public
    { Public declarations }
  end;

var
  TarifUKForm: TTarifUKForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, LoadingSplash;

{$R *.dfm}

procedure TTarifUKForm.AppendRec(isEdit :Boolean);
begin
  if not CheckParam then Exit;
  with ds_HOUSEUK do
  if ds_HOUSEUK.Locate('CODE',m_HouseUK.FieldByName('CODE').AsVariant,[]) then
  begin
    if isEdit then Edit else
    Append;
    FN('DATA').AsVariant:=dt1.EditValue;
    FN('STREET').AsVariant:=cbb_street.EditValue;
    FN('HOUSE').AsVariant:=cbb_house.EditValue;
    FN('PROC').AsVariant:=clc_proc.EditValue;
    Post;
  end;
  FillMem;
end;

procedure TTarifUKForm.btn_addClick(Sender: TObject);
begin
  if not CheckParam then Exit;
  AppendRec(false);
end;

procedure TTarifUKForm.btn_delClick(Sender: TObject);
begin
  if not CheckParam then Exit;
  if cmMessageBox('Вы действительно хотите удалить запись?') then
  DeleteRec;
end;

procedure TTarifUKForm.btn_editClick(Sender: TObject);
begin
  if not CheckParam then Exit;
  AppendRec(true);
end;

procedure TTarifUKForm.btn_fillClick(Sender: TObject);
begin
  //ShowMessage(GetHouseList);
  if ds_HOUSEUK.State in [dsInactive] then Exit;
  if ed_tarif.Value=null then begin
    cmShowMessage('Укажите тариф!');
    Exit;
  end;

  FillHouse;
end;

procedure TTarifUKForm.FillHouse;
var
  Q :TFIBQuery;
  code :Variant;
  hlist :string;
  isAppend :Boolean;
begin
  isAppend:=False;
  //получаем код
  Q:=GetQueryForUse(cmDB.RT,'select code,m,y from houserecv'+
                            ' order by y desc, m desc');
  Q.ExecQuery;
  code:=Q.FN('CODE').AsVariant;
  if code=null then Exit;

  //получаем список домов
  Q.Close;
  hlist:=VarToStr(GetHouseList);
  //if hlist='' then Exit;
  Q.SQL.Text:=
  'select house from houserecvlist h'+
  ' where ('#39+hlist+#39' not containing '#39','#39'||h.house||'#39','#39')'+
  ' and h.houserecv=:hrec';
  Q.ParamByName('hrec').AsVariant:=code;
  Q.ExecQuery;
  try
    SplashVisibility(True,'Заполняем данные...');
    //заполняем таблицу
    while not Q.Eof do
    begin
      isAppend:=True;
      with ds_HOUSEUK do begin
        Append;
        FN('DATA').AsVariant:=lb_data.EditValue;
        //FN('STREET').AsVariant:=cbb_street.EditValue;
        FN('HOUSE').AsVariant:=Q.FN('HOUSE').AsVariant;
        FN('PROC').AsVariant:=ed_tarif.Value;
        Post;
      end;
      Q.Next;
      Application.ProcessMessages;
    end;
  finally
    SplashVisibility(false);
  end;
  if isAppend then
  fillMem;
end;

function TTarifUKForm.GetHouseList: Variant;
var
  CurCode: Variant;
begin
  Result:='';
  with m_HouseUK do
  begin
    DisableControls;
    CurCode:=FieldByName('CODE').AsVariant;
    First;
    while not Eof do begin
      Result:=Result+','+VarToStr(FieldByName('HOUSE').AsVariant);
      Next;
    end;
    if Result<>'' then Result:=Result+',';
    Locate('CODE',CurCode,[]);
    EnableControls;
  end;
end;

procedure TTarifUKForm.btn_refreshClick(Sender: TObject);
begin
  FillMem;
end;

procedure TTarifUKForm.btn_setClick(Sender: TObject);
begin
  SetProc;
end;

procedure TTarifUKForm.cbb_streetPropertiesChange(Sender: TObject);
begin
  GetHouse;
end;

function TTarifUKForm.CheckParam: Boolean;
begin
  Result:=True;
  if dt1.Date=null then
  begin
    cmShowMessage('Не указана дата.',true);
    Result:=False;
    Exit;
  end;
  if cbb_house.EditValue=null then
  begin
    cmShowMessage('Не указан дом.',true);
    Result:=False;
    Exit;
  end;
  if clc_proc.EditValue=null then
  begin
    cmShowMessage('Не указан тариф.',true);
    Result:=False;
    Exit;
  end;
end;

procedure TTarifUKForm.clv1PROCPropertiesEditValueChanged(Sender: TObject);
var
  Edit: TcxCustomEdit;
  NewValue, CurCode: Variant;
  function GetGen :variant;
  var
    Q :TFIBQuery;
  begin
    Result:=null;
    Q:=GetQueryForUse(cmDB.RT,'SELECT gen_id(houseuk_gen,0) from rdb$database');
    Q.ExecQuery;
    Result:=Q.FN('GEN_ID').AsVariant+1;
    FreeQueryForUse(Q);
  end;
begin
  Edit := Sender as TcxCustomEdit;
  NewValue := Edit.EditingValue;
  v1.DataController.Post;
  CurCode:=GetGen;
  //
  EditProc(NewValue,v1.GetColumnByFieldName('HOUSE').EditValue,
                    v1.GetColumnByFieldName('STREET').EditValue);
  m_HouseUK.Locate('CODE',CurCode,[]);
end;

procedure TTarifUKForm.CreateMem;
begin
  CreateField(m_HouseUK,'CODE',ftInteger);
  CreateField(m_HouseUK,'HOUSE',ftInteger);
  CreateField(m_HouseUK,'NOMER',ftString,32);
  CreateField(m_HouseUK,'PROC',ftFloat);
  CreateField(m_HouseUK,'STREET',ftInteger);
  CreateField(m_HouseUK,'StName',ftString,256);
  CreateField(m_HouseUK,'DATA',ftDate);
  m_HouseUK.Open;
end;

procedure TTarifUKForm.DeleteRec;
begin
  if ds_HOUSEUK.Locate('CODE',m_HouseUK.FieldByName('CODE').AsVariant,[]) then
  begin
    ds_HOUSEUK.Delete;
    FillMem;
  end;
end;

procedure TTarifUKForm.ds_historyBeforeDelete(DataSet: TDataSet);
begin
  if not cmMessageBox('Вы действительно хотите удалить запись?') then
  Abort;
end;

procedure TTarifUKForm.EditProc(NewProc,H,S: Variant; reload :Boolean=true);
var
  Q :TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.WT,
                   'delete from HOUSEUK where (DATA = :DATA and HOUSE=:HOUSE)');
  Q.Options:= [qoStartTransaction, qoAutoCommit];
  //
  Q.ParamByName('DATA').AsVariant:=lb_data.EditValue;
  Q.ParamByName('HOUSE').AsVariant:=H;
  Q.ExecQuery;
  //
  Q.Close;
  //
  if NewProc<>0 then
  begin
    Q.SQL.Text:='insert into HOUSEUK (DATA, HOUSE, PROC, STREET)'+
                ' values (:DATA, :HOUSE, :PROC, :STREET)';
    Q.ParamByName('DATA').AsVariant:=lb_data.EditValue;
    Q.ParamByName('HOUSE').AsVariant:=H;
    Q.ParamByName('PROC').AsVariant:=NewProc;
    Q.ParamByName('STREET').AsVariant:=S;
    Q.ExecQuery;
  end;
  //
  FreeQueryForUse(Q);
  //
  if reload then
  FillMem;
end;

procedure TTarifUKForm.FillEdit;
begin
  if v1.GetColumnByFieldName('CODE').EditValue=Unassigned then Exit;
  with m_HouseUK do
  begin
    dt1.EditValue:=FieldByName('DATA').AsVariant;
    cbb_street.EditValue:=FieldByName('STREET').AsVariant;
    cbb_house.EditValue:=FieldByName('HOUSE').AsVariant;
    clc_proc.EditValue:=FieldByName('PROC').AsVariant;
  end;
end;

procedure TTarifUKForm.FillMem;
var
  house :Variant;
begin
  house:=null;
  with ds_HOUSEUK do
  begin
    Close;
    if lb_data.EditValue=null then Exit;
    ParamByName('DATA_').AsVariant:=lb_data.EditValue;
    Open;
    m_HouseUK.Close;
    m_HouseUK.Open;
    m_HouseUK.DisableControls;
    while not Eof do
    begin
      if house<>FN('house').AsVariant then
      begin
        m_HouseUK.Append;
        m_HouseUK.FieldByName('CODE').AsVariant:=FN('CODE').AsVariant;
        m_HouseUK.FieldByName('HOUSE').AsVariant:=FN('HOUSE').AsVariant;
        m_HouseUK.FieldByName('NOMER').AsVariant:=FN('NOMER').AsVariant;
        m_HouseUK.FieldByName('PROC').AsVariant:=FN('PROC').AsVariant;
        m_HouseUK.FieldByName('STREET').AsVariant:=FN('STREET').AsVariant;
        m_HouseUK.FieldByName('StName').AsVariant:=FN('StName').AsVariant;
        m_HouseUK.FieldByName('DATA').AsVariant:=FN('DATA').AsVariant;
        m_HouseUK.Post;
      end;
      house:=FN('house').AsVariant;
      Next;
    end;
    m_HouseUK.EnableControls;
  end;
  //m_HouseUK.LoadFromDataSet(ds_HOUSEUK);
end;

procedure TTarifUKForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TTarifUKForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  CreateMem;
  OpenDS;
end;

procedure TTarifUKForm.GetHouse;
begin
  with ds_house do begin
    Close;
    if cbb_street.EditValue=null then Exit;
    ParamByName('str').AsVariant:=cbb_street.EditValue;
    Open;
  end;
end;

procedure TTarifUKForm.OpenDS;
begin
  ds_street.Open;
  DSOptoins(ds_HOUSEUK,'','HOUSEUK','CODE','HOUSEUK_GEN',false);
  DSOptoins(ds_history,'','HOUSEUK','CODE','HOUSEUK_GEN',false);
end;

procedure TTarifUKForm.SetProc;
var
  i, recIndex,colIndex,HIdx,SIdx :Integer;
  Value,H,S :Variant;
begin
  if ed_tarif.Value=null then Exit;

  for I := 0 to v1.Controller.SelectedRowCount - 1 do
  begin
    recIndex:=v1.Controller.SelectedRows[i].RecordIndex;
    colIndex:=v1.GetColumnByFieldName('CODE').Index;
    HIdx:=v1.GetColumnByFieldName('HOUSE').Index;
    SIdx:=v1.GetColumnByFieldName('STREET').Index;

    value:=v1.DataController.Values[recIndex,colIndex];
    H:=v1.DataController.Values[recIndex,HIdx];
    S:=v1.DataController.Values[recIndex,SIdx];

    EditProc(ed_tarif.Value,H,S,False);

    {with ds_HOUSEUK do
    if ds_HOUSEUK.Locate('CODE',value,[]) then
    begin
      Edit;
      FN('PROC').AsVariant:=ed_tarif.Value;
      Post;
    end;}
    //ShowMessage(VarToStr(v1.DataController.Values[recIndex,colIndex]));
  end;
  FillMem;
end;

procedure TTarifUKForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  FillEdit;
end;

initialization
RegisterClass(TTarifUKForm);
end.
