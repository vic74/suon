unit BDRFactEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxPropertiesStore,
  dxLayoutLookAndFeels, dxLayoutControl, cxContainer, cxEdit,
  FibQuery, pFIBCacheQueries, pFIBProps,
  dxLayoutcxEditAdapters, dxSkinsdxBarPainter, dxBar, cxClasses, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cmDBUnit, AppUtils, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, FIBDataSet, pFIBDataSet, dxmdaset, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, dezCommon, cxCalc, dxLayoutContainer, dxScreenTip,
  BaseForm,
  dxSkinDevExpressStyle, cxCheckBox, dxBarExtItems;

type
  TBDRFactEditForm = class(TDezModalForm)
    gr1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    cbb_dog: TcxLookupComboBox;
    itmlc1Item1: TdxLayoutItem;
    grlc1Group1: TdxLayoutGroup;
    grlc1Group2: TdxLayoutGroup;
    brm1: TdxBarManager;
    bar1: TdxBar;
    btn_exec: TdxBarButton;
    doc1: TdxBarDockControl;
    itmlc1Item11: TdxLayoutItem;
    btn_save: TdxBarButton;
    stip1: TdxBarScreenTipRepository;
    tip_load: TdxBarScreenTip;
    tip_save: TdxBarScreenTip;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itmlc1Item12: TdxLayoutItem;
    m1: TdxMemData;
    src_m1: TDataSource;
    ds1: TpFIBDataSet;
    ds_srvdog: TpFIBDataSet;
    src_srvdog: TDataSource;
    clv1HOUSE: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1STNAME: TcxGridDBColumn;
    clv1FACTSUM: TcxGridDBColumn;
    cbb1: TcxComboBox;
    itmlc1Item13: TdxLayoutItem;
    cci1: TdxBarControlContainerItem;
    grplc1Group1: TdxLayoutGroup;
    mskY: TcxMaskEdit;
    itmlc1Item14: TdxLayoutItem;
    chk1: TcxCheckBox;
    itmlc1Item15: TdxLayoutItem;
    ds_house: TpFIBDataSet;
    chk_all: TcxCheckBox;
    itmlc1Item16: TdxLayoutItem;
    grplc1Group2: TdxLayoutGroup;
    clv1SQ1: TcxGridDBColumn;
    clv1SQ2: TcxGridDBColumn;
    chk_lift: TcxCheckBox;
    itm_lift: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure m1AfterEdit(DataSet: TDataSet);
    procedure chk1PropertiesEditValueChanged(Sender: TObject);
    procedure chk_allPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    isEditTable: Boolean; //признак редактирования таблицы
    fFactDoc: Integer;
    fHouseSrv: Variant;
    fSrvName: String;
    fisEditing: Boolean;
    fTableName: string;
    fFieldName: string;
    fSQL: string;
    procedure openDS;
    procedure SetfFactDoc(const Value: Integer);
    procedure SetSrvName(const Value: string);
    procedure SetTableName(const Value: string);
    procedure CreateMem;
    procedure LoadData;
    procedure SaveData;
    procedure MakeSQL;
    procedure AddToHistory(cod, doctype, opertype: Variant);
  public
    { Public declarations }
    property FactDoc: Integer read fFactDoc write SetfFactDoc;
    property SrvName: string read fSrvName write SetSrvName;
    property isEditing: Boolean read fisEditing;
    property TableName: string read fTableName write SetTableName;
    property HouseSrv: Variant read fHouseSrv write fHouseSrv;
  end;

var
  BDRFactEditForm: TBDRFactEditForm;

implementation

uses LoadingSplash;

{$R *.dfm}

{ TBDRFactEditForm }

procedure TBDRFactEditForm.AddToHistory(cod, doctype, opertype: Variant);
var
  Q: TFIBQuery;
begin
  Q:= GetQueryForUse(cmDb.WT,'execute procedure ADD_FACTDOCHISTORY(:COD, :DOCTYPE, :OPERTYPE);');
  Q.Options:= [qoStartTransaction, qoAutoCommit];
  try
    Q.ParamByName('COD').AsVariant:= cod;
    Q.ParamByName('DOCTYPE').AsVariant:= doctype;
    Q.ParamByName('OPERTYPE').AsVariant:= opertype;
    Q.ExecQuery;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TBDRFactEditForm.btn_execClick(Sender: TObject);
begin
  LoadData;
end;

procedure TBDRFactEditForm.btn_saveClick(Sender: TObject);
begin
  if Application.MessageBox('Вы действительно хотите сохранить данные?',
    'Внимание', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2 + MB_TOPMOST) =
    IDYES then
  begin
    SaveData; //сохраняем данные
    if Application.MessageBox('         Данные сохранены. ' + #13#10#13#10
      + '         Закрыть это окно?             ', 'Информация', MB_YESNO +
      MB_ICONINFORMATION + MB_DEFBUTTON2 + MB_TOPMOST) = IDYES then
    begin
      isEditTable:=False;
      ModalResult:=mrOk;
    end;
  end;
end;

procedure TBDRFactEditForm.chk1PropertiesEditValueChanged(Sender: TObject);
begin
  cbb1.Enabled:= chk1.Checked;
  mskY.Enabled:= chk1.Checked;
end;

procedure TBDRFactEditForm.chk_allPropertiesEditValueChanged(Sender: TObject);
begin
  if chk_all.Checked then begin
    cbb_dog.EditValue:= null;
    chk1.Checked:= False;
  end else begin
    chk_lift.Checked:= false;
  end;
  cbb_dog.Enabled:= not chk_all.Checked;
  chk1.Enabled:= not chk_all.Checked;
end;

procedure TBDRFactEditForm.CreateMem;
begin
  CreateField(m1,'HOUSE',ftInteger);
  CreateField(m1,'NOMER',ftString,32);
  CreateField(m1,'STNAME',ftString,256);
  CreateField(m1,'FACTSUM',ftBCD);
  CreateField(m1,'SQ1',ftBCD);
  CreateField(m1,'SQ2',ftBCD);
  m1.Open;
end;

procedure TBDRFactEditForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if isEditTable = true then
  if Application.MessageBox('           Данные в таблице изменены!' + #13#10 +
    'Вы хотите сохранить изменения перед закрытием?', 'Внимание', MB_YESNO +
    MB_ICONWARNING + MB_TOPMOST) = IDYES then
  begin
    SaveData; //сохраняем данные
    if Application.MessageBox('         Данные сохранены. ' + #13#10#13#10
      + '         Закрыть это окно?             ', 'Информация', MB_YESNO +
      MB_ICONINFORMATION + MB_DEFBUTTON2 + MB_TOPMOST) = IDYES then
    begin
      isEditTable:=False;
      ModalResult:=mrOk;
    end;
  end;
end;

procedure TBDRFactEditForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,self.Name);
  openDS;
  CreateMem;
end;

procedure TBDRFactEditForm.FormShow(Sender: TObject);
begin
  Caption:='Редактирование сумм по услуге '+ SrvName;
  MakeSQL;
end;

procedure TBDRFactEditForm.LoadData;
var
  dog: Variant;

  function MakeSql: string;
  begin
    if (dog = null) and (chk1.Checked) then
     Result:= 'select fd.house, h.nomer, s.name StName, fd.factsum, h.TOTAL_SQ SQ1, h.COMMERCE_SQ SQ2  ' + #13#10 +
              'from '+TableName+' fd' + #13#10 +
              'left outer join house h on h.code=fd.house' + #13#10 +
              'left outer join street s on s.code=h.street' + #13#10 +
              'where  fd.'+fFieldName+'=:factdoc' else
    Result:=
        'SELECT sh.HOUSE, h.nomer,s.name StName, fd.factsum, h.TOTAL_SQ SQ1, h.COMMERCE_SQ SQ2 ' + #13#10 +
        'FROM SRVDOGHOUSE sh' + #13#10 +
        'left  join '+TableName+' fd on fd.house=sh.house and ' +
        'fd.'+fFieldName+'=:factdoc' + #13#10 +
        'left outer join house h on h.code=sh.house' + #13#10 +
        'left outer join street s on s.code=h.street' + #13#10 +
        'where sh.srvdog=:dog';
  end;

  function GetFactDocCode: Variant;
  var
    Q: TFIBQuery;
  begin
    if HouseSrv = null then
       raise dezException.Create('Код услуги равен null!');
    Q:=GetQueryForUse(cmDb.RT,
      'select CODE from '+fFieldName + #13#10 +
      'where M=:M and  Y=:Y and HOUSESRV=:SRV');
    try
      Q.ParamByName('M').AsVariant:= cbb1.ItemIndex;
      Q.ParamByName('Y').AsVariant:= mskY.EditingText;
      Q.ParamByName('SRV').AsVariant:= HouseSrv;
      Q.ExecQuery;
      Result:= Q.FN('CODE').AsVariant;
    finally
      FreeQueryForUse(Q);
    end;
  end;

  procedure LoadDefault;
  var i: Integer;
  begin
    with ds1 do begin
      Close;
       SelectSQL.Text:=MakeSql;
       ParamByName('factdoc').AsVariant:=FactDoc;
       if ParamExist('dog',i) then
       ParamByName('dog').AsVariant:=dog;
      Open;
    end;
  end;

  procedure LoadByParam;
  var
    FDoc: Variant;
    i: Integer;
  begin
    FDoc:= GetFactDocCode;
    with ds1 do begin
      Close;
       SelectSQL.Text:= MakeSql;
       ParamByName('factdoc').AsVariant:=FDoc;
       if ParamExist('dog',i) then
       ParamByName('dog').AsVariant:=dog;
      Open;
    end;
  end;

  procedure OpenHouse;
  begin
    with ds_house do begin
      Close;
      MainWhereClause:= 'h.a = 1 ';
      if chk_lift.Checked then
         MainWhereClause:= MainWhereClause+ 'and LIFT_CNT>0';
      Open;
    end;
  end;

begin
  if chk_all.Checked then begin
    SplashVisibility(true,'Загружаем данные...');
    try
      m1.Close; m1.Open;
      OpenHouse;
      m1.LoadFromDataSet(ds_house);
    finally
      SplashVisibility(false);
    end;
  end else begin
    dog:= cbb_dog.EditValue;
    //if dog= null then
    //  raise EMyException.Create('Укажите договор!');
    //проверка загрузки за другой период
    if chk1.Checked then begin
      if cbb1.ItemIndex<1 then
        raise dezException.Create('Не указан месяц!');
      if mskY.EditValue = null then
        raise dezException.Create('Не указан год!');
    end;
    SplashVisibility(true,'Загружаем данные...');
    try
      m1.Close; m1.Open;
      if chk1.Checked then
         LoadByParam else
         LoadDefault;
      m1.LoadFromDataSet(ds1);
    finally
      SplashVisibility(false);
    end;
  end;
end;

procedure TBDRFactEditForm.m1AfterEdit(DataSet: TDataSet);
begin
  isEditTable:= True;
end;

procedure TBDRFactEditForm.MakeSQL;
begin
  fSQL:=
    'SELECT sh.HOUSE, h.nomer,s.name StName, fd.factsum' + #13#10 +
    'FROM SRVDOGHOUSE sh' + #13#10 +
    'left  join '+TableName+' fd on fd.house=sh.house and fd.'+fFieldName+'=:factdoc' +
    #13#10 +
    'left outer join house h on h.code=sh.house' + #13#10 +
    'left outer join street s on s.code=h.street' + #13#10 +
    'where sh.srvdog=:dog';
  ds1.Close;
  ds1.SelectSQL.Text:=fSQL;
end;

procedure TBDRFactEditForm.openDS;
begin
  if ActiveUserType=1 then
  with ds_srvdog do begin
    Close;
    MainWhereClause:='sd."ACTIVE"=1 and sd.KONTRAGENT=:kontr';
    ParamByName('kontr').AsVariant:=ActiveKontragent;
    OrderClause:='k.NAME';
    Open;
  end else
  with ds_srvdog do begin
    Close;
    MainWhereClause:='sd."ACTIVE"=1';
    OrderClause:='k.NAME';
    Open;
  end;
end;

procedure TBDRFactEditForm.SaveData;
var
  Q: TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.WT,
    'update or insert into '+TableName+' ('+fFieldName+', PLANSUM, FACTSUM, HOUSE, SQ1, SQ2)' +
    #13#10 +
    'values (:'+fFieldName+', :PLANSUM, :FACTSUM, :HOUSE, :SQ1, :SQ2)' + #13#10 +
    'matching ('+fFieldName+',HOUSE)');
  Q.Options:=[qoStartTransaction,qoAutoCommit];
  v1.BeginUpdate;
  SplashVisibility(true,'Сохраняем данные...');
  try
    with m1 do begin
      First;
      while not Eof do begin
        Q.ParamByName(fFieldName).AsVariant:=FactDoc;
        Q.ParamByName('PLANSUM').AsCurrency:=FieldByName('FACTSUM').AsCurrency;
        Q.ParamByName('FACTSUM').AsCurrency:=FieldByName('FACTSUM').AsCurrency;
        Q.ParamByName('HOUSE').AsVariant:=FieldByName('HOUSE').AsVariant;
        Q.ParamByName('SQ1').AsVariant:=FieldByName('SQ1').AsVariant;
        Q.ParamByName('SQ2').AsVariant:=FieldByName('SQ2').AsVariant;
        Q.ExecQuery;
        Next;
      end;
    end;
    //добавляем запись в историю редактирования
    if fFieldName = 'FACTDOC' then
       AddToHistory(FactDoc, 0, 1);
    if fFieldName = 'FACT1DOC' then
       AddToHistory(FactDoc, 1, 1);
    fisEditing:=true;
  finally
    v1.EndUpdate;
    SplashVisibility(false);
    FreeQueryForUse(Q);
  end;
end;

procedure TBDRFactEditForm.SetfFactDoc(const Value: Integer);
begin
  fFactDoc:=Value;
end;

procedure TBDRFactEditForm.SetSrvName(const Value: string);
begin
  fSrvName:=Value;
end;

procedure TBDRFactEditForm.SetTableName(const Value: string);
begin
  fTableName:= Value;
  if Value = 'FACT1DOCLIST' then fFieldName:= 'FACT1DOC';
  if Value = 'FACTDOCLIST' then fFieldName:= 'FACTDOC';
end;

end.







