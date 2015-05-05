unit HouseTarifFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, dxLayoutControl,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridExportLink,DateUtils, FibQuery, pFIBCacheQueries, pFIBProps,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutLookAndFeels, BaseForm,
  FIBDataSet, pFIBDataSet, cxPropertiesStore, Menus,
  cxGridCustomPopupMenu, cxGridPopupMenu, StdCtrls, cxButtons,
  dxLayoutContainer, dxLayoutControlAdapters, dxSkinDevExpressStyle;

type
  THouseTarifForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_grd2: TdxLayoutItem;
    spl1: TdxLayoutSplitterItem;
    ds_HouseTarif: TpFIBDataSet;
    ds_HouseTarifList: TpFIBDataSet;
    src_HouseTarifList: TDataSource;
    src_HouseTarif: TDataSource;
    prop1: TcxPropertiesStore;
    clv1CODE: TcxGridDBColumn;
    clv1DATA: TcxGridDBColumn;
    clv2CODE: TcxGridDBColumn;
    clv2HOUSETARIF: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2NOMER: TcxGridDBColumn;
    clv2HOUSESRV: TcxGridDBColumn;
    clv2HSNAME: TcxGridDBColumn;
    clv2STREET: TcxGridDBColumn;
    clv2STREETNAME: TcxGridDBColumn;
    clv2TOT_SPACE: TcxGridDBColumn;
    clv2TARIF_TAXA: TcxGridDBColumn;
    ppm2: TcxGridPopupMenu;
    pm1: TPopupMenu;
    Excel1: TMenuItem;
    v3: TcxGridDBTableView;
    l3: TcxGridLevel;
    grd3: TcxGrid;
    itm_grd3: TdxLayoutItem;
    grplc1Group1: TdxLayoutGroup;
    ds_OUTHOUSETARIFLIST: TpFIBDataSet;
    src_OUTHOUSETARIFLIST: TDataSource;
    clv3CODE: TcxGridDBColumn;
    clv3HOUSETARIF: TcxGridDBColumn;
    clv3HOUSE: TcxGridDBColumn;
    clv3NOMER: TcxGridDBColumn;
    clv3HOUSESRV: TcxGridDBColumn;
    clv3HSNAME: TcxGridDBColumn;
    clv3STREET: TcxGridDBColumn;
    clv3STREETNAME: TcxGridDBColumn;
    clv3TOT_SPACE: TcxGridDBColumn;
    clv3TARIF_TAXA: TcxGridDBColumn;
    cxButton1: TcxButton;
    lc1Item2: TdxLayoutItem;
    btn_copy: TcxButton;
    itmlc1Item1: TdxLayoutItem;
    grlc1Group1: TdxLayoutGroup;
    pm2: TPopupMenu;
    N1: TMenuItem;
    dlgSave1: TSaveDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Excel1Click(Sender: TObject);
    procedure ds_HouseTarifListAfterDelete(DataSet: TDataSet);
    procedure ds_OUTHOUSETARIFLISTAfterDelete(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
    procedure btn_copyClick(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDs;
    procedure OpenTarif;
    procedure CopyData;
    function ClearByYM(DATA: TDateTime) :boolean;
    procedure CopyTo(d1, d2: Variant);
    function CreateHead(data :Variant): Variant;
  public
    { Public declarations }
  end;

var
  HouseTarifForm: THouseTarifForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, LoadingSplash, GetPeriodShbSrvFrm,
  HouseTarifPeriodFrm;

{$R *.dfm}

procedure THouseTarifForm.btn_copyClick(Sender: TObject);
begin
  CopyData;
end;

function THouseTarifForm.ClearByYM(DATA: TDateTime): boolean;
var
  Q : TFibQuery;
begin
  Result:=false;
  Q:=GetQueryForUse(cmDB.WT,'delete from HOUSETARIF' + #13#10 +
                            'where (DATA=:DATA)');
  try
    Q.Options:=[qoStartTransaction, qoAutoCommit];
    Q.ParamByName('DATA').AsVariant:=DATA;
    Q.ExecQuery;
    Result:=True;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure THouseTarifForm.CopyData;
var
  F: THouseTarifPeriodForm;
  mes : string;
  dFrom, dTo: TDateTime;
begin
  F:= THouseTarifPeriodForm.Create(self);
  try
    if F.ShowModal=mrOk then begin
      dFrom:=VarToDateTime(gFN(v1,'DATA'));
      dTo:=F.dt1.Date;
      If (dFrom=dTo) then begin
        Application.MessageBox('Не верно указан период!', 'Ошибка', MB_OK +
          MB_ICONSTOP + MB_DEFBUTTON2 + MB_TOPMOST);
        Exit;
      end;
      mes := 'Вы действительно хотите копировать данные '+#10#13+
             '     на '+DateToStr(dTo)+' ?'+#10#13+
             'Все записи на эту дату будут перезаписаны!';
      if Application.MessageBox(PChar(mes), 'Внимание', MB_YESNO + MB_ICONWARNING
        + MB_DEFBUTTON2 + MB_TOPMOST) = IDYES then
      begin
        if not ClearByYM(dTo) then Exit;
        v1.BeginUpdate;
        try
          CopyTo(dFrom, dTo);
        finally
          v1.EndUpdate;
        end;
      end;
    end;
  finally
    FreeAndNil(F);
  end;
end;

procedure THouseTarifForm.CopyTo(d1, d2: Variant);
var
  Q: TFibQuery;
  FromCode,code: Variant;
begin
  FromCode:=gFN(v1,'CODE');
  //создаем заголовок
  code:=CreateHead(d2);
  //
  Q:=GetQueryForUse(cmDB.WT,
    'insert into HOUSETARIFLIST (HOUSETARIF, HOUSE, HOUSESRV, TOT_SPACE, ' +
    'TARIF_TAXA)' + #13#10 +
    'select '+VarToStr(code)+' HOUSETARIF, HOUSE, HOUSESRV, TOT_SPACE, TARIF_TAXA' + #13#10 +
    'from HOUSETARIFLIST' + #13#10 +
    'where HOUSETARIF=:FromCode');
  Q.Options:=[qoStartTransaction,qoAutoCommit];
  Q.ParamByName('FromCode').AsVariant:=FromCode;
  try  
    Q.ExecQuery;
  finally
    FreeQueryForUse(Q);
  end;
  OpenTarif;
end;

function THouseTarifForm.CreateHead(data: Variant): Variant;
var
  Q: TFibQuery;
begin
  with ds_HouseTarif do begin
    Append;
    FN('DATA').AsVariant:=Data;
    Post;
  end;
  Result:=ds_HouseTarif.FN('CODE').AsVariant;
end;

procedure THouseTarifForm.cxButton1Click(Sender: TObject);
var
  Code: integer;
begin
  if Application.MessageBox('Корректировать список тарифов?','',1)<>idOk then Exit;
  Code:=v1.GetColumnByFieldName('CODE').EditValue;
  cmDB.ExecQuery('execute procedure ScanMusorTarif('+IntToStr(Code)+')', cmDB.WT);
  cmDB.WT.Commit;
  ds_OutHouseTarifList.CloseOpen(false);
  ds_HouseTarifList.CloseOpen(false);
end;

procedure THouseTarifForm.ds_HouseTarifListAfterDelete(DataSet: TDataSet);
begin
  with ds_OutHouseTarifList do begin
    Close;
    MainWhereClause:='ht.housetarif=:ht';
    ParamByName('ht').AsVariant:=v1.GetColumnByFieldName('CODE').EditValue;
    OrderClause:='ht.HOUSE,hs.name';
    Open;
  end;
end;

procedure THouseTarifForm.ds_OUTHOUSETARIFLISTAfterDelete(DataSet: TDataSet);
begin
  with ds_HouseTarifList do begin
    Close;
    MainWhereClause:='ht.housetarif=:ht';
    ParamByName('ht').AsVariant:=v1.GetColumnByFieldName('CODE').EditValue;
    OrderClause:='ht.HOUSE,hs.name';
    Open;
  end;
end;

procedure THouseTarifForm.Excel1Click(Sender: TObject);
begin
  if dlgSave1.Execute then
    ExportGridToExcel(dlgSave1.FileName, grd2, True, True, True, 'xls');
end;

procedure THouseTarifForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure THouseTarifForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1, Self.Name);
  OpenDs;
end;

procedure THouseTarifForm.OpenDs;
begin
  DSOptoins(ds_HouseTarif,'','HOUSETARIF','CODE','HOUSETARIF_GEN');
  DSOptoins(ds_HouseTarifList,'','HOUSETARIFLIST','CODE','HOUSETARIFLIST_GEN',false);
  DSOptoins(ds_OutHouseTarifList,'','OUTHOUSETARIFLIST','CODE','OUTHOUSETARIFLIST_GEN',false);
end;

procedure THouseTarifForm.OpenTarif;
var
  m,y: Variant;
begin
  if v1.GetColumnByFieldName('CODE').EditValue=Unassigned then Exit;
  try
    SplashVisibility(true, 'Загружаются данные');
    with ds_HouseTarifList do begin
      Close;
      MainWhereClause:='ht.housetarif=:ht';
      ParamByName('ht').AsVariant:=v1.GetColumnByFieldName('CODE').EditValue;
      OrderClause:='ht.HOUSE,hs.name';
      Open;
    end;
    with ds_OutHouseTarifList do begin
      Close;
      MainWhereClause:='ht.housetarif=:ht';
      ParamByName('ht').AsVariant:=v1.GetColumnByFieldName('CODE').EditValue;
      OrderClause:='ht.HOUSE,hs.name';
      Open;
    end;
    m:=MonthOf(VarToDateTime(gFN(v1,'DATA')));
    y:= YearOf(VarToDateTime(gFN(v1,'DATA')));
    itm_grd2.Caption:= LongMonthNames[Integer(m)]+ ' ' + VarToStr(y);
  finally
    SplashVisibility(False);
  end;
end;

procedure THouseTarifForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  OpenTarif;
end;

procedure THouseTarifForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP :OpenTarif;
    VK_DOWN :OpenTarif;
  end;
end;


initialization
RegisterClass(THouseTarifForm);
end.


