unit CorrectCostFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  FIBQuery,pFIBCacheQueries,pFIBProps,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutcxEditAdapters,
  cxContainer, Menus, StdCtrls, cxButtons, FIBDataSet, pFIBDataSet, cxCheckBox,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxmdaset, cxCalc,
  dxLayoutControlAdapters, dxLayoutContainer, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxCurrencyEdit, dxSkinDevExpressStyle;

type
  TCorrectCostForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    grp_top: TdxLayoutGroup;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_grd2: TdxLayoutItem;
    spl1: TdxLayoutSplitterItem;
    dt1: TcxDateEdit;
    itm_dt1: TdxLayoutItem;
    dt2: TcxDateEdit;
    itm_dt2: TdxLayoutItem;
    chk1: TcxCheckBox;
    itm_chk: TdxLayoutItem;
    ds_WORKLIST: TpFIBDataSet;
    src_WORKLIST: TDataSource;
    clv1CLASSMAT: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    clv1ED: TcxGridDBColumn;
    clv1PRICE: TcxGridDBColumn;
    clv1KSNAME: TcxGridDBColumn;
    btn_exec: TcxButton;
    itm_btn_exec: TdxLayoutItem;
    ds_attire: TpFIBDataSet;
    src_attire: TDataSource;
    m_attire: TdxMemData;
    clv2ATTIRE: TcxGridDBColumn;
    clv2SERVISWORK: TcxGridDBColumn;
    clv2SNAME: TcxGridDBColumn;
    clv2QUANTITY: TcxGridDBColumn;
    clv2PRICE: TcxGridDBColumn;
    clv2FLAG: TcxGridDBColumn;
    grp_set: TdxLayoutGroup;
    grplc1Group1: TdxLayoutGroup;
    ced1: TcxCalcEdit;
    itm_ced1: TdxLayoutItem;
    cbb_set: TcxComboBox;
    itm_set: TdxLayoutItem;
    btn_setprice: TcxButton;
    itm_setprice: TdxLayoutItem;
    clv2CODE: TcxGridDBColumn;
    str_indicator: TcxStyleRepository;
    styl__indicator: TcxStyle;
    clv2SUMMA: TcxGridDBColumn;
    clv2STREET: TcxGridDBColumn;
    clv2STREETNAME: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2NOMER: TcxGridDBColumn;
    clv2DU: TcxGridDBColumn;
    clv2DUName: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_setpriceClick(Sender: TObject);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure clv2PRICEPropertiesEditValueChanged(Sender: TObject);
    procedure clv2FLAGPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    procedure GetMaterial;
    procedure Getattire;
    procedure CreateMem;
    procedure SetPrice(AType :integer);
    procedure SetAll;
    procedure SetSelected;
    procedure SetNull;
    function CheckParam :Boolean;
    procedure SetRunTime;
  public
    { Public declarations }
  end;

var
  CorrectCostForm: TCorrectCostForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, dezCommon, LoadingSplash;

{$R *.dfm}

procedure TCorrectCostForm.btn_execClick(Sender: TObject);
begin
  GetMaterial;
end;

procedure TCorrectCostForm.btn_setpriceClick(Sender: TObject);
begin
  if not CheckParam then Exit;
  SetPrice(cbb_set.ItemIndex);
end;

function TCorrectCostForm.CheckParam: Boolean;
begin
  Result:=True;
  if ced1.EditValue=null then
  begin
    ShowMessage('Укажите цену!');
    Result:=False;
    Exit;
  end;
end;

procedure TCorrectCostForm.clv2FLAGPropertiesEditValueChanged(Sender: TObject);
begin
  v2.DataController.Post();
end;

procedure TCorrectCostForm.clv2PRICEPropertiesEditValueChanged(Sender: TObject);
begin
  v2.DataController.Post();
  SetRunTime;
end;

procedure TCorrectCostForm.SetRunTime;
var
  Q :TFIBQuery;
  AIndex: Integer;
begin
  AIndex := v2.Controller.FocusedRowIndex; // запоминаем позицию
  m_attire.DisableControls;
  Q:=GetQueryForUse(cmDB.WT,'update WORKSPECMATERIAL' + #13#10 +
                            'set PRICE = :PRICE' + #13#10 +
                            'where (CODE = :CODE)');
  Q.Options:=[qoStartTransaction,qoAutoCommit];
  with m_attire do begin
        Q.ParamByName('CODE').AsVariant:=FieldByName('CODE').AsVariant;
        Q.ParamByName('PRICE').AsVariant:=FieldByName('PRICE').AsVariant;
        Q.ExecQuery;
  end;
  m_attire.EnableControls;
  FreeQueryForUse(Q);
  Getattire;
  v2.Controller.FocusRecord(AIndex, true); // возвращаемся на позицию
end;

procedure TCorrectCostForm.CreateMem;
begin
  CreateField(m_attire,'Flag',ftInteger);
  CreateField(m_attire,'CODE',ftInteger);
  CreateField(m_attire,'ATTIRE',ftString,32);
  CreateField(m_attire,'CLASSMAT',ftInteger);
  CreateField(m_attire,'SNAME',ftString,256);
  CreateField(m_attire,'QUANTITY',ftBCD);
  CreateField(m_attire,'PRICE',ftBCD);
  CreateField(m_attire,'SUMMA',ftBCD);
  CreateField(m_attire,'STREET',ftInteger);
  CreateField(m_attire,'STREETNAME',ftString,257);
  CreateField(m_attire,'HOUSE',ftinteger);
  CreateField(m_attire,'NOMER',ftString,32);
  CreateField(m_attire,'DU',ftinteger);
  CreateField(m_attire,'DUNAME',ftString,128);
  m_attire.Open;
end;

procedure TCorrectCostForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TCorrectCostForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  CreateMem;
end;


procedure TCorrectCostForm.Getattire;
begin
  //SplashVisibility(true,'Дождитесь окончания операции.');
  try
    m_attire.close; m_attire.open;
    with ds_attire do begin
      Close;
      if chk1.Checked then
      MainWhereClause:='ws.CLASSMAT=:sm and ws.data between :d1 and :d2'+
                                   ' and ws.price=0 and ws.kontragent=:kontr' else
      MainWhereClause:='ws.CLASSMAT=:sm and ws.data between :d1 and :d2'+
                                                      ' and ws.kontragent=:kontr';
      ParamByName('sm').AsVariant:=v1.GetColumnByFieldName('CLASSMAT').EditValue;
      ParamByName('d1').AsDateTime:=dt1.Date;
      ParamByName('d2').AsDateTime:=dt2.Date;
      ParamByName('kontr').AsVariant:=ActiveKontragent;
      Open;
    end;
    m_attire.LoadFromDataSet(ds_attire);
  finally
    //SplashVisibility(false);
  end;
end;

procedure TCorrectCostForm.GetMaterial;
begin
  SplashVisibility(true,'Дождитесь окончания операции.');
  try
    with ds_WORKLIST do begin
    //сообщение если ДЕЗ (нет нарядов по дезу)
      Close;
      if ActiveUserType = 0 then
         raise dezException.Create('Коррекция выполняется только подрядными организации!');
      if chk1.Checked then
      MainWhereClause:='wm.data between :d1 and :d2 and wm.kontragent=:kontr'+
                       ' and wm.CLASSMAT is not null and wm.price=0' else
      MainWhereClause:='wm.data between :d1 and :d2 and wm.kontragent=:kontr'+
                       ' and wm.CLASSMAT is not null';
      ParamByName('d1').AsDateTime:=dt1.Date;
      ParamByName('d2').AsDateTime:=dt2.Date;
      ParamByName('kontr').AsVariant:=ActiveKontragent;
      OrderClause:='sm.name';
      Open;
    end;
    Getattire;
  finally
    SplashVisibility(false);
  end;
end;

procedure TCorrectCostForm.SetAll;
var
  Q :TFIBQuery;
begin
  m_attire.DisableControls;
  Q:=GetQueryForUse(cmDB.WT,'update WORKSPECMATERIAL' + #13#10 +
                            'set PRICE = :PRICE' + #13#10 +
                            'where (CODE = :CODE)');
  Q.Options:=[qoStartTransaction,qoAutoCommit];
  with m_attire do begin
    First;
    while not Eof do begin
      Q.ParamByName('CODE').AsVariant:=FieldByName('CODE').AsVariant;
      Q.ParamByName('PRICE').AsVariant:=ced1.EditValue;
      Q.ExecQuery;
      SetCapt(IntToStr(RecNo)+' - '+IntToSTr(RecordCount));
      Next;
    end;
  end;
  m_attire.EnableControls;
  FreeQueryForUse(Q);
  Getattire;
end;

procedure TCorrectCostForm.SetNull;
var
  Q :TFIBQuery;
begin
  m_attire.DisableControls;
  Q:=GetQueryForUse(cmDB.WT,'update WORKSPECMATERIAL' + #13#10 +
                            'set PRICE = :PRICE' + #13#10 +
                            'where (CODE = :CODE)');
  Q.Options:=[qoStartTransaction,qoAutoCommit];
  with m_attire do begin
    First;
    while not Eof do begin
      if FieldByName('PRICE').AsVariant=0 then begin
        Q.ParamByName('CODE').AsVariant:=FieldByName('CODE').AsVariant;
        Q.ParamByName('PRICE').AsVariant:=ced1.EditValue;
        Q.ExecQuery;
      end;
      SetCapt(IntToStr(RecNo)+' - '+IntToSTr(RecordCount));
      Next;
    end;
  end;
  m_attire.EnableControls;
  FreeQueryForUse(Q);
  Getattire;
end;

procedure TCorrectCostForm.SetSelected;
var
  Q :TFIBQuery;
begin
  m_attire.DisableControls;
  Q:=GetQueryForUse(cmDB.WT,'update WORKSPECMATERIAL' + #13#10 +
                            'set PRICE = :PRICE' + #13#10 +
                            'where (CODE = :CODE)');
  Q.Options:=[qoStartTransaction,qoAutoCommit];
  with m_attire do begin
    First;
    while not Eof do begin
      if FieldByName('FLAG').AsVariant=1 then begin
        Q.ParamByName('CODE').AsVariant:=FieldByName('CODE').AsVariant;
        Q.ParamByName('PRICE').AsVariant:=ced1.EditValue;
        Q.ExecQuery;
      end;
      SetCapt(IntToStr(RecNo)+' - '+IntToSTr(RecordCount));
      Next;
    end;
  end;
  m_attire.EnableControls;
  FreeQueryForUse(Q);
  Getattire;
end;

procedure TCorrectCostForm.SetPrice(AType: integer);
begin
  v2.BeginUpdate;
  SplashVisibility(True,'Устанавливаем цены...');
  try
    case AType of
      0 : SetAll;
      1 : SetSelected;
      2 : SetNull;
    end;
  finally
    SplashVisibility(false);
  end;
  v2.EndUpdate;
end;

procedure TCorrectCostForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  Getattire;
end;

procedure TCorrectCostForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_UP :Getattire;
    VK_DOWN :Getattire;
  end;
end;

initialization
 RegisterClass(TCorrectCostForm);
end.

