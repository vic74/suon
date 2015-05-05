unit RequestFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxLayoutcxEditAdapters, cxDropDownEdit, cxSpinEdit, cxTimeEdit, cxTextEdit,
  cxMaskEdit, cxCalendar, cxCheckBox, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, Data.DB,
  cxDBData, cxImageComboBox, cxGridLevel, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomTableView, cxGridTableView,
  uADCompClient, FIBQuery, pFIBCacheQueries, pFIBProps, DateUtils,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, dxmdaset, FIBDataSet,
  pFIBDataSet, dxSkinsdxBarPainter, dxBar, dxSkinDevExpressStyle, cxNavigator,
  dxSkinVS2010;

type
  TRequestForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    lgrplc1Group1: TdxLayoutGroup;
    lgrplc1Group2: TdxLayoutGroup;
    filterGroup: TdxLayoutGroup;
    dataGroup: TdxLayoutGroup;
    lgrplc1Group3: TdxLayoutGroup;
    lgrplc1Group4: TdxLayoutGroup;
    dt1: TcxDateEdit;
    LItemlc1Item1: TdxLayoutItem;
    dt2: TcxDateEdit;
    LItemlc1Item11: TdxLayoutItem;
    tm1: TcxTimeEdit;
    LItemlc1Item12: TdxLayoutItem;
    lgrplc1Group5: TdxLayoutGroup;
    lgrplc1Group6: TdxLayoutGroup;
    tm2: TcxTimeEdit;
    LItemlc1Item13: TdxLayoutItem;
    cbb_AcceptAt: TcxComboBox;
    LItemlc1Item14: TdxLayoutItem;
    cbb_JobType: TcxLookupComboBox;
    LItemlc1Item2: TdxLayoutItem;
    lgrplc1Group7: TdxLayoutGroup;
    LItemlc1Item3: TdxLayoutItem;
    LItemlc1Item4: TdxLayoutItem;
    cbb_JobSubtype: TcxLookupComboBox;
    cbb_Location: TcxLookupComboBox;
    LItemlc1Item5: TdxLayoutItem;
    cbb_Status: TcxLookupComboBox;
    lgrplc1Group9: TdxLayoutGroup;
    lgrplc1Group10: TdxLayoutGroup;
    lgrplc1Group12: TdxLayoutGroup;
    lgrplc1Group13: TdxLayoutGroup;
    lgrplc1Group15: TdxLayoutGroup;
    chk_IsEmergency: TcxCheckBox;
    LItemlc1Item6: TdxLayoutItem;
    LItemlc1Item7: TdxLayoutItem;
    LItemlc1Item8: TdxLayoutItem;
    chk_IsPaid: TcxCheckBox;
    chk_IsOutdated: TcxCheckBox;
    lgrplc1Group16: TdxLayoutGroup;
    lgrplc1Group14: TdxLayoutGroup;
    cbb_Street: TcxLookupComboBox;
    LItemlc1Item15: TdxLayoutItem;
    cbb_House: TcxLookupComboBox;
    LItemlc1Item16: TdxLayoutItem;
    txt_Flat: TcxTextEdit;
    LItemlc1Item17: TdxLayoutItem;
    lgrplc1Group8: TdxLayoutGroup;
    lgrplc1Group11: TdxLayoutGroup;
    chk_NoTime: TcxCheckBox;
    LItemlc1Item18: TdxLayoutItem;
    lgrplc1Group17: TdxLayoutGroup;
    lgrplc1Group18: TdxLayoutGroup;
    btn_Exec: TcxButton;
    LItemlc1Item19: TdxLayoutItem;
    btn_Clear: TcxButton;
    LItemlc1Item110: TdxLayoutItem;
    src_RQ: TDataSource;
    LItemlc1Item9: TdxLayoutItem;
    grd6: TcxGrid;
    v6: TcxGridDBTableView;
    clv6SuonID: TcxGridDBColumn;
    clv1RequestId: TcxGridDBColumn;
    clv1HouseCompany_Title: TcxGridDBColumn;
    clv1CreatedAtUtc: TcxGridDBColumn;
    clv1WorkType: TcxGridDBColumn;
    clv1Addr: TcxGridDBColumn;
    clv1LocationTitle: TcxGridDBColumn;
    clv1State: TcxGridDBColumn;
    clv1NOTE: TcxGridDBColumn;
    clv1Price: TcxGridDBColumn;
    clv6Status: TcxGridDBColumn;
    vb1: TcxGridDBBandedTableView;
    clvb1RequestId: TcxGridDBBandedColumn;
    clvb1DU: TcxGridDBBandedColumn;
    clvb1Added: TcxGridDBBandedColumn;
    clvb1WorkType: TcxGridDBBandedColumn;
    clvb1Addr: TcxGridDBBandedColumn;
    clvb1LocationTitle: TcxGridDBBandedColumn;
    clvb1State: TcxGridDBBandedColumn;
    clvb1NOTE: TcxGridDBBandedColumn;
    clvb1Price: TcxGridDBBandedColumn;
    clvb1HouseCompany_Title: TcxGridDBBandedColumn;
    clvb1LocalId: TcxGridDBBandedColumn;
    clvb1CreatedAtUtc: TcxGridDBBandedColumn;
    clvb1CreatedBy_UserName: TcxGridDBBandedColumn;
    clvb1CreatedBy_Company_Title: TcxGridDBBandedColumn;
    l6: TcxGridLevel;
    md_RQ: TdxMemData;
    Repository1: TcxStyleRepository;
    Style1: TcxStyle;
    Style2: TcxStyle;
    Style3: TcxStyle;
    Style4: TcxStyle;
    Style5: TcxStyle;
    Style6: TcxStyle;
    Style7: TcxStyle;
    Style8: TcxStyle;
    Style9: TcxStyle;
    lgrplc1Group19: TdxLayoutGroup;
    clv6HOUSE: TcxGridDBColumn;
    ds_worklist: TpFIBDataSet;
    BarManager1: TdxBarManager;
    br1: TdxBar;
    btn_OpenOrder: TdxBarButton;
    doc1: TdxBarDockControl;
    LItemlc1Item111: TdxLayoutItem;
    btn_openRQ: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbb_StreetPropertiesEditValueChanged(Sender: TObject);
    procedure cbb_JobTypePropertiesEditValueChanged(Sender: TObject);
    procedure chk_NoTimePropertiesEditValueChanged(Sender: TObject);
    procedure btn_ExecClick(Sender: TObject);
    procedure clv1StateStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure btn_OpenOrderClick(Sender: TObject);
    procedure v6CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_openRQClick(Sender: TObject);
  private
    { Private declarations }
    DISPvsSUON: TStringList; //код заявки = код работы
    DISP_ID: Variant;
    Q_RQ: TADQuery;
    fHouseIdList, fStreetHouseList: WideString;
    function Get_LinkWork(ID: Variant): Variant;
    procedure GetAttirePeriod(var d1, d2: TDateTime);
    procedure OpenAttire;
    procedure Get_DISP_ID(fHouse: Variant);
    procedure OpenDispQuery;
    procedure CreateMemDataRQ;
    procedure PrepareDataSet;
    procedure OpenRQByCode;
    function Get_houseIDListByDog: WideString;
    procedure Get_StreetHouseListByDog;
  public
    { Public declarations }
  end;

var
  RequestForm: TRequestForm;

implementation

uses cmDBUnit, RQ_DM, common, dezCommon, OrderSpecFrm, RqDetailFrm;

{$R *.dfm}


procedure TRequestForm.btn_ExecClick(Sender: TObject);
begin
  OpenDispQuery;
end;

procedure TRequestForm.btn_OpenOrderClick(Sender: TObject);
begin
  OpenAttire;
end;

procedure TRequestForm.btn_openRQClick(Sender: TObject);
begin
  OpenRQByCode;
end;

procedure TRequestForm.cbb_JobTypePropertiesEditValueChanged(Sender: TObject);
begin
  if cbb_JobType.EditValue<>null then
  RQ_DModule.src_JobSubtype.DataSet:= RQ.JobSubtype(cbb_JobType.EditValue);
end;

procedure TRequestForm.cbb_StreetPropertiesEditValueChanged(Sender: TObject);
begin
  RQ_DModule.src_HOUSE.DataSet:= RQ.Get_House(cbb_STreet.EditValue, null, fHouseIdList);
end;

procedure TRequestForm.chk_NoTimePropertiesEditValueChanged(Sender: TObject);
begin
  tm1.Enabled:= not chk_NoTime.Checked;
  tm2.Enabled:= not chk_NoTime.Checked;
end;

procedure TRequestForm.clv1StateStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);

  function ConvertHtmlHexToTColor(Color: string):TColor ;
  var
    rColor: TColor;
  begin
    if (length(color) >= 6) then
    begin
      color := '$00' + copy(color,5,2) + copy(color,3,2) + copy(color,1,2);
      rColor := StrToInt(color);
    end;
    result := rColor;
  end;

  procedure SetColor(Style: TcxStyle; FontColor, BrushColor: TColor);
  begin
    //Style:= TcxStyle.Create(self);
    Style.Font.Style := [fsBold];
    Style.Color := BrushColor;
    Style.TextColor := FontColor;
    AStyle:= Style;
  end;

begin
  case ARecord.Values[clv6Status.Index] of
    1 : SetColor(Style1, clBlack, ConvertHtmlHexToTColor('FFB6C1'));  //Не рассмотрена
    2 : SetColor(Style2, clBlack, ConvertHtmlHexToTColor('FFFFB3'));  //В процессе
    3 : SetColor(Style3, clBlack, ConvertHtmlHexToTColor('90EE90'));  //Выполнена
    4 : SetColor(Style4, clBlack, ConvertHtmlHexToTColor('FFB6C1'));  //Возвращена
    5 : SetColor(Style5, clWhite, clBlue);                            //Снята
    6 : SetColor(Style6, clWhite, clGreen);                           //Закрыта
    7 : SetColor(Style7, clBlack, ConvertHtmlHexToTColor('87CEEB'));  //Отложена
    8 : SetColor(Style8, clBlack, ConvertHtmlHexToTColor('6699CC'));  //Текущий ремонт
    9 : SetColor(Style9, clBlack, ConvertHtmlHexToTColor('336699'));  //Запрос в СЭ
  end;
end;

procedure TRequestForm.CreateMemDataRQ;
begin
  with md_RQ do begin
    AddField('RequestId',ftInteger);
    AddField('DU', ftString,'ДУ', 128);
    AddField('Added',ftString, 'Добавлена', 128);
    AddField('WorkType', ftString,'Вид работ', 128);
    AddField('Addr', ftString, 'Адрес', 128);
    AddField('LocationTitle', ftString, 'Локализация', 32);
    AddField('State', ftString, 'Статус', 32);
    AddField('NOTE', ftString, 'Коментарии', 128);
    AddField('Price', ftString, 'Цена', 32);
    // no visible
    AddField('SuonID', ftInteger, 'Код работы(СУОН)', 32);
    AddField('Status', ftString, 'Статус'+#10#13+'Код', 32);
    AddField('House', ftInteger, 'Дом СУОН');
    Open;
  end;
end;

procedure TRequestForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  RQ.Free;
  FreeAndNil(DISPvsSUON);
  Action:= caFree;
end;

procedure TRequestForm.FormCreate(Sender: TObject);
begin
  dt1.Date := Date;
  dt2.Date := Date;
  LoadForm(prop1,Self.Name);
  PrepareDataSet;
  DISPvsSUON:= TStringList.Create;
end;

procedure TRequestForm.GetAttirePeriod(var d1, d2: TDateTime);
var
  d_temp: TDateTime;
begin
  if DayOf(Now)< 26 then begin
    {$REGION 'если текущая дата меньше 26 то это месяц закрытия наряда
              и поэтому ищем наряд за период с 25 предыдущего месяца по
              26 текущего месяца'}
    d_temp:= SysUtils.IncMonth(Now, -1);
    d1:= EncodeDate(YearOf(d_temp),MonthOf(d_temp),25);
    d2:= EncodeDate(YearOf(Now), MonthOf(Now),26);
    {$ENDREGION}
  end else begin
    {$REGION 'есл текущая дата больше или равна 26 то это дата начала нового периода
             и поэтому ищем наряд с 26 текущего месяца по 25 следующего месяца'}
    d_temp:= SysUtils.IncMonth(Now, 1);
    d1:= EncodeDate(YearOf(Now), MonthOf(Now),26);
    d2:= EncodeDate(YearOf(d_temp),MonthOf(d_temp),25);
    {$ENDREGION}
  end;
end;

procedure TRequestForm.Get_DISP_ID(fHouse: Variant);
var
  Q: TFIBQuery;
begin
  Q:= GetQueryForUse(cmDb.RT,'SELECT DISP_ID FROM HOUSE WHERE CODE=:COD');
  Q.Options:=[qoStartTransaction];
  try
    Q.ParamByName('COD').AsVariant:= fHouse;
    Q.ExecQuery;
    DISP_ID:= Q.FN('DISP_ID').AsVariant;
  finally
    FreeQueryForUse(Q);
  end;
end;

function TRequestForm.Get_houseIDListByDog: WideString;
var
  Q: TFIBQuery;
begin
  Q:= GetQueryForUse(cmDb.RT,'select DISP_ID from GET_DISPHOUSEBYKONTRAGENT(:KONTR)');
  Q.Options:=[qoStartTransaction];
  try
    Q.ParamByName('KONTR').AsVariant:= ActiveKontragent;
    Q.ExecQuery;
    fHouseIdList:= Q.FN('DISP_ID').AsWideString;
    Result:= Q.FN('DISP_ID').AsWideString;
  finally
    FreeQueryForUse(Q);
  end;
end;

function TRequestForm.Get_LinkWork(ID: Variant): Variant;
var
  Q: TFIBQuery;
begin
  Q:= GetQueryForUse(cmDb.RT, 'SELECT CODE FROM WORKSPECLIST where REQUESTID = :ID');
  Q.Options:=[qoStartTransaction];
  try
    Q.ParamByName('ID').AsVariant:= ID;
    Q.ExecQuery;
    Result:= Q.FN('CODE').AsVariant;
    if Result <> null then begin
       DISPvsSUON.Add(Result);
       DISPvsSUON.Values[Result]:= ID;
    end;
  finally
    FreeQueryForUse(Q);
  end;
end;
{$REGION 'Получаем список улиц по контрагенту'}
procedure TRequestForm.Get_StreetHouseListByDog;
begin
  if fHouseIdList = '' then
     Get_houseIDListByDog;
  if fHouseIdList <> '' then begin
    fStreetHouseList:= RQ.GetStreetHouseList(fHouseIdList);
  end else
  fStreetHouseList:= '';
end;
{$ENDREGION}
{$REGION 'ищем наряд и открываем форму редакт. наряда по адресу'}
procedure TRequestForm.OpenAttire;
var
  d1, d2: TDateTime;
  house: Variant;

  procedure OpenOrder;
  var
    F: TOrderSpecForm;
  begin
    grd6.LockedStateImageOptions.Text:='Загружаем спецификацию...';
    v6.BeginUpdate(lsimImmediate);
    F:=TOrderSpecForm.Create(Self);
    try
      F.fWorkList:=ds_worklist.FN('CODE').AsVariant;
      F.fStreetName:= VarToStr(ds_worklist.FN('streetname').AsVariant);
      F.fNomer:= VarToStr(ds_worklist.FN('nomer').AsVariant);
      F.fKontragent:= ds_worklist.FN('KONTRAGENT').AsVariant;
      F.fHouse:= ds_worklist.FN('HOUSE').AsVariant;
      F.fData:= ds_worklist.FN('DATA').AsVariant;
      F.fStreet:= ds_worklist.FN('STREET').AsVariant;
      F.ds:= ds_worklist;
      F.openFromRq:= True;
      F.ShowModal;
    finally
      FreeAndNil(F);
      v6.EndUpdate;
      grd6.LockedStateImageOptions.Text:='Получаем данные...';
    end;
  end;

  function CreateOrder: Integer;
  var
    code: Integer;
    Q: TFIBQuery;
  begin
    code:= cmDb.DB.Gen_Id('WORKLIST_GEN',1);
    Q:= GetQueryForUse(cmDb.WT,
      'insert into WORKLIST (CODE, DATA, KONTRAGENT, NOTE, HOUSE)' +sLineBreak+
      'values (:CODE, :DATA, :KONTRAGENT, :NOTE, :HOUSE)');
    Q.Options:=[qoStartTransaction, qoAutoCommit];
    try
      Q.ParamByName('CODE').AsVariant:= code;
      Q.ParamByName('DATA').AsVariant:= Date;
      Q.ParamByName('KONTRAGENT').AsVariant:= ActiveKontragent;
      Q.ParamByName('HOUSE').AsVariant:= house;
      //Q.ParamByName('NOTE').AsVariant:=
      Q.ExecQuery;
      Result:= code;
    finally
      FreeQueryForUse(Q);
    end;
  end;

  procedure SearchAttire;
  var
    code: Integer;
  begin
    with ds_worklist do begin
      Close;
        MainWhereClause:= 'wl.DATA between :d1 and :d2 and wl.HOUSE = :house ';
        if ActiveUserType = 1 then begin
          MainWhereClause:= MainWhereClause+ ' and wl.KONTRAGENT = :kontr';
          ParamByName('kontr').AsVariant:= ActiveKontragent;
        end;
        ParamByName('d1').AsVariant:= d1;
        ParamByName('d2').AsVariant:= d2;
        ParamByName('house').AsVariant:= house;
      Open;
    end;
    if ds_worklist.IsEmpty then begin
      if MessageBox(Handle,
        'Наряд по данному адресу в текущем периоде не найден!' + #13#10 +
        #13#10 + '                             Создать наряд?',
        'Предупреждение', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2 +
        MB_TOPMOST) = IDYES then
      begin
        code:= CreateOrder;
        with ds_worklist do begin
          Close;
           MainWhereClause:='wl.CODE = :CODE';
           ParamByName('CODE').AsVariant:= code;
          Open;
        end;
        //открываем наряд
        OpenOrder;
      end;
    end else
    //открываем наряд
    OpenOrder;
  end;

begin
  //получаем период наряда
  GetAttirePeriod(d1, d2);
  //параметры для наряда
  house:= v6.FN('HOUSE');
  if house = null then Exit;
  //
  SearchAttire;
end;
{$ENDREGION}
procedure TRequestForm.OpenDispQuery;
var
  clause: string;
  d1, d2: TDateTime;
  t1, t2: TTime;
  S: string;
  Q_House: TFIBQuery;

  procedure CreateClause;
  begin
    if fHouseIdList = '' then
       Get_houseIDListByDog;
    {$REGION 'Установка даты и времени'}
      if chk_NoTime.Checked then begin
        t1:= StrToTime('00:00:00');
        t2:= StrToTime('23:59:59');
      end else begin
        t1:= tm1.Time;
        t2:= tm2.Time;
      end;
      d1:= dt1.Date+t1;
      d2:= dt2.Date+t2;
      S:= 'rq.IssuedAtUtc between :d1 and :d2';
    {$ENDREGION}
    {$REGION 'Вид работ:'}
       if cbb_JobType.EditValue<>null then
       S:= S+' and rq.JobTypeId = :JobType';
    {$ENDREGION}
    {$REGION 'Подвид работ:'}
       if cbb_JobSubtype.EditValue<>null then
        S:=S+ ' and rq.JobSubtypeId= :SubJobType';
     {$ENDREGION}
    {$REGION 'Локализация'}
       if cbb_Location.EditValue<>null then
        S:=S+ ' and rq.Location= :Location';
    {$ENDREGION}
    {$REGION 'Состояние:'}
       if cbb_Status.EditValue<> null then
        S:=S+ ' and rq.[Status]= :Status';
    {$ENDREGION}
    {$REGION 'Аварийные, Платные, Просроченные'}
       if chk_IsEmergency.Checked then                //аварийные
          S:=S+ ' and rq.IsEmergency = 1';
       if chk_IsPaid.Checked then                     //платные
          S:= S+ ' and rq.IsPaid=1';
       if chk_IsOutdated.Checked then                 //просроченные
          S:=S+ ' and rq.DueDateUtc < GETDATE()';
    {$ENDREGION}
    {$REGION 'Дом:, Квартира:'}
      if cbb_HOUSE.EditValue <> null then            //дом
          S:= S+ ' and rq.HouseId = :HouseId' else
        if cbb_Street.EditValue <> null then
          S:= S+ ' and rq.HouseId in '+
          '(SELECT HouseId FROM Geo_House WHERE StreetId = '+
            VarToStr(cbb_Street.EditValue)+')' else
          S:= S+ ' and rq.HouseId in ('+fHouseIdList+')';
      if Trim(txt_Flat.EditingText)<> '' then           //квартира
          S:= S+ ' and rq.Apartment = :Apartment';
    {$ENDREGION}
    {$REGION 'Не используются.'}
        {if cbb_CanceledCompany.EditValue <> null then  //ор-ция снявшая заяаку
          S:= S+ ' and CanceledByCompanyId = :CanceledByCompanyId';
        if cbb_UserCanceled.EditValue <> null then     //поль-ль снявший заявку
          S:= S+ ' and CanceledBy = :CanceledByUser';
        if cbb_MgmtCompany.EditValue <> null then      //управляющая компания
          S:= S+ ' and WorkCompanyId = :WorkCompanyId' else
          S:= S+ ' and WorkCompanyId ='+VarToStr(Disp_Kontr);
        if cbb_DU.EditValue <> null then               // ДУ
          S:= S+ ' and HouseCompanyId = :HouseCompanyId';
        if Trim(txt_ExecutorName.EditingText)<>'' then    //Имя исполнителя
          S:= S+ ' and ExecutorName = :ExecutorName';
        if Trim(txt_RequesterPhone.EditingText)<>'' then  //Телефон заявителя
          S:= S+ ' and RequesterPhone = :RequesterPhone';
        if cbb_ClosedCompany.EditValue <> null then       //Орг-ция, закрывшая заявку
          S:= S+ ' and ClosedByCompanyId = :ClosedByCompanyId';
        if cbb_ClosedUser.EditValue <> null then         //Закрыл пользователь
          S:= S+ ' and ClosedBy = :ClosedByUser'; }
    {$ENDREGION}
  end;
  procedure AddParam(fName: string; Value: Variant);
  begin
    if Q_RQ.FindParam(fName)<>nil then
       Q_RQ.ParamByName(fName).AsInteger:= Value;
  end;

  function GetSuonHouse(DispHouse: Variant): Variant;
  begin
    if DispHouse = null then
       Result := null else
    begin
      try
        Q_House.ParamByName('COD').AsVariant:= DispHouse;
        Q_House.ExecQuery;
        Result:= Q_House.FN('CODE').AsVariant;
      except
        on e: Exception do
         raise dezException.Create(e.Message);
      end;
    end;
  end;

  procedure prepareQuery;
  begin
    Q_House:= GetQueryForUse(cmDb.RT,'SELECT CODE FROM HOUSE WHERE DISP_ID=:COD');
    Q_House.Options:=[qoStartTransaction];

  end;

  procedure FreeQuery;
  begin
    FreeQueryForUse(Q_House);
  end;

  procedure CreateParametrs;
  begin
    with Q_RQ do begin
      if FindParam('d1') <> nil then ParamByName('d1').AsDateTime:= d1;
      if FindParam('d2') <> nil then ParamByName('d2').AsDateTime:= d2;
      AddParam('JobType',cbb_JobType.EditValue);
      AddParam('SubJobType', cbb_JobSubtype.EditValue);
      AddParam('Location', cbb_Location.EditValue);
      AddParam('Status', cbb_Status.EditValue);
      AddParam('WorkCompanyId',Disp_Kontr);
      AddParam('HouseId', cbb_HOUSE.EditValue);
      if FindParam('Apartment') <> nil then
         ParamByName('Apartment').AsString:= Trim(txt_Flat.Text);
      {$REGION 'Не используются'}
       // AddParam('HouseCompanyId',F.cbb_MgmtCompany.EditValue);
       // AddParam('CanceledByCompanyId', cbb_CanceledCompany.EditValue);
       // AddParam('CanceledByUser', cbb_UserCanceled.EditValue);
       // if FindParam('ExecutorName') <> nil then
       //    ParamByName('ExecutorName').AsString:= Trim(txt_ExecutorName.EditingText);
       // if FindParam('RequesterPhone') <> nil then
       //    ParamByName('RequesterPhone').AsString:= Trim(txt_RequesterPhone.EditingText);
       // AddParam('ClosedByCompanyId', cbb_ClosedCompany.EditValue);
       // AddParam('ClosedByUser', cbb_ClosedUser.EditValue);
      {$ENDREGION}
      if Disp_Kontr = null then
      raise dezException.Create('Не установлена связь - ПО СУОН = ПО Диспетчер!');
      ParamByName('WorkCompanyId').AsInteger:= Disp_Kontr;
    end;
  end;

  procedure EnableBtn(isEnable: Boolean);
  begin
    btn_OpenOrder.Enabled:= isEnable;
    btn_openRQ.Enabled:= isEnable;
  end;

begin
  if not RQ.con.Connected = true then
  try
    RQ.Connect;
  except
    on E: Exception do begin
      raise dezException.Create('Не удается соедениться с сервером диспетчера!'+
      sLineBreak+'Проверте правильность ввода параметров авторизации'+sLineBreak+
      'на форме "Физические лица."');
      Exit;
    end;
  end;
  //
  prepareQuery;
  //
  v6.BeginUpdate(lsimImmediate);
  try

    CreateClause;
    clause:= S+' and rq.WorkCompanyId = :WorkCompanyId';
    Q_RQ:=RQ.GetRQ(clause, false);
    CreateParametrs;
    Q_RQ.Open;
    //
    md_RQ.ClearData;
    while not Q_RQ.Eof do begin
      md_RQ.Append;
      md_RQ.FN('RequestId').AsInteger:= Q_RQ.FieldByName('RequestId').AsInteger;
      md_RQ.FN('DU').AsString:= Q_RQ.FieldByName('DU').AsString;
      md_RQ.FN('Added').AsString:= Q_RQ.FieldByName('Added').AsString;
      md_RQ.FN('WorkType').AsString:= Q_RQ.FieldByName('WorkType').AsString;
      md_RQ.FN('Addr').AsString:= Q_RQ.FieldByName('Addr').AsString;
      md_RQ.FN('LocationTitle').AsString:= Q_RQ.FieldByName('LocationTitle').AsString;
      md_RQ.FN('State').AsString:= Q_RQ.FieldByName('State').AsString;
      md_RQ.FN('NOTE').AsString:= Q_RQ.FieldByName('NOTE').AsString;
      md_RQ.FN('Price').AsString:= Q_RQ.FieldByName('Price').AsString;
      md_RQ.FN('SuonID').AsVariant:= Get_LinkWork(Q_RQ.FieldByName('RequestId').AsInteger);
      md_RQ.FN('Status').AsVariant:= Q_RQ.FieldByName('Status').AsVariant;
      md_RQ.FN('HOUSE').AsVariant:= GetSuonHouse(Q_RQ.FieldByName('HouseId').AsVariant);
      md_RQ.Post;
      Q_RQ.Next;
    end;
    lgrplc1Group1.ItemIndex:=1;
    EnableBtn(not md_RQ.IsEmpty);
    //src_RQ.DataSet:= Q_RQ;
  finally
    v6.EndUpdate;
    FreeQuery;
  end;
end;

procedure TRequestForm.OpenRQByCode;
var
  F: TRqDetailForm;
begin
  F:= TRqDetailForm.Create(self);
  try
    F.isOpenFromRq:= True;
    F.ID:= v6.FN('RequestId');
    F.ShowModal;
  finally
    FreeAndNil(F);
  end;
end;

procedure TRequestForm.PrepareDataSet;
begin
  if not RQ.con.Connected = true then
  try
    RQ.Connect;
  except
    on E: Exception do begin
      raise dezException.Create('Не удается соедениться с сервером диспетчера!'+
      sLineBreak+'Проверте правильность ввода параметров авторизации'+sLineBreak+
      'на форме "Физические лица."');
      Exit;
    end;
  end;
  // получаем список улиц по контрагенту в переменную
  Get_StreetHouseListByDog;
  // создаем временную таблицу
  CreateMemDataRQ;
  // подготавливаем DataSet
  DSOptoins(ds_worklist, '', 'WORKLIST', 'CODE', 'WORKLIST_GEN', false);
  //
  with RQ_DModule do begin
    src_JobType.DataSet:= RQ.Get_JobType;
    src_Location.DataSet:= RQ.Location;
    src_Status.DataSet:= RQ.Status;
    //src_CanceledCompany.DataSet:= RQ.GetCanceledCompany;
    //src_Users.DataSet:= RQ.Get_Users(cbb_CanceledCompany.EditValue);
    //src_MgmtCompany.DataSet:= RQ.Get_MgmtCompany;
    //src_DU.DataSet:= RQ.Get_DU(cbb_MgmtCompany.EditValue);
    src_Street.DataSet:= RQ.Get_Street(fStreetHouseList);
    src_HOUSE.DataSet:= RQ.Get_House(cbb_STreet.EditValue, null);
  end;
end;

procedure TRequestForm.v6CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  OpenRQByCode;
end;

initialization
 RegisterClass(TRequestForm);
end.
