unit POShablonSmetaFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinDevExpressStyle, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxBarPainter, dxBar,
  FIBQuery, pFIBProps, pFIBCacheQueries, cxDataUtils,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, FIBDataSet,
  pFIBDataSet, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxDropDownEdit,
  cxMaskEdit, cxBarEditItem, dxmdaset, cxCheckBox, Vcl.StdCtrls, cxCurrencyEdit,
  Vcl.Menus, cxGridCustomPopupMenu, cxGridPopupMenu, dxLayoutControlAdapters,
  cxButtons, cxContainer, cxCheckListBox, Vcl.ImgList, dxSkinsDefaultPainters,
  cxNavigator, cxDBLookupComboBox, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TPOShablonSmetaForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grplc1Group1: TdxLayoutGroup;
    grplc1Group2: TdxLayoutGroup;
    spl1: TdxLayoutSplitterItem;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itmlc1Item1: TdxLayoutItem;
    ds_MAKESMETASHABLON: TpFIBDataSet;
    src_MAKESMETASHABLON: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1SRVDOG: TcxGridDBColumn;
    clv1HOUSESRV: TcxGridDBColumn;
    clv1SRV: TcxGridDBColumn;
    clv1SUMMA: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1KONTRAGENTNAME: TcxGridDBColumn;
    clv1HOUSESRVNAME: TcxGridDBColumn;
    clv1SRVNAME: TcxGridDBColumn;
    bm1: TdxBarManager;
    ds_MAKESMETASHABLONSPEC: TpFIBDataSet;
    src_MAKESMETASHABLONSPEC: TDataSource;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_grd2: TdxLayoutItem;
    clv2CODE: TcxGridDBColumn;
    clv2MAKESMETASHABLON: TcxGridDBColumn;
    clv2STREETNAME: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2NOMER: TcxGridDBColumn;
    clv2SUMMA: TcxGridDBColumn;
    doc1: TdxBarDockControl;
    itmlc1Item11: TdxLayoutItem;
    bar1: TdxBar;
    btn_AdDog: TdxBarButton;
    bar2: TdxBar;
    btn_Akt: TdxBarButton;
    btn_Smeta: TdxBarButton;
    clv2LIVING_SQ: TcxGridDBColumn;
    clv2TOTAL_SQ: TcxGridDBColumn;
    clv2NG: TcxGridDBColumn;
    clv2srvdog: TcxGridDBColumn;
    btn_CreateDoc: TdxBarButton;
    clv2commerce_sq: TcxGridDBColumn;
    grplc1Group3: TdxLayoutGroup;
    grplc1Group4: TdxLayoutGroup;
    doc2: TdxBarDockControl;
    itmlc1Item12: TdxLayoutItem;
    v3: TcxGridDBTableView;
    l3: TcxGridLevel;
    grd3: TcxGrid;
    itm_grd3: TdxLayoutItem;
    bar3: TdxBar;
    bitm_M: TcxBarEditItem;
    bitm_Y: TcxBarEditItem;
    btn_LoadBdr: TdxBarButton;
    btn_ChangeTemplate: TdxBarButton;
    md1: TdxMemData;
    src_md1: TDataSource;
    clv3CODE: TcxGridDBColumn;
    clv3STNAME: TcxGridDBColumn;
    clv3NOMER: TcxGridDBColumn;
    clv3FLAG: TcxGridDBColumn;
    clv3F3: TcxGridDBColumn;
    clv3BSUM: TcxGridDBColumn;
    clv3SHSUM: TcxGridDBColumn;
    clv3DSUM: TcxGridDBColumn;
    clv3SSUM: TcxGridDBColumn;
    ds_BDR: TpFIBDataSet;
    doc3: TdxBarDockControl;
    itmlc1Item13: TdxLayoutItem;
    grplc1Group5: TdxLayoutGroup;
    bar4: TdxBar;
    btn_SelectAll: TdxBarButton;
    btn_UnSelect: TdxBarButton;
    clv1kCODE: TcxGridDBColumn;
    btn_arhiv: TdxBarButton;
    btn_LoadSmeta: TdxBarButton;
    clv1A: TcxGridDBColumn;
    ppm1: TcxGridPopupMenu;
    pm1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    clv3SQ1: TcxGridDBColumn;
    clv3SQ2: TcxGridDBColumn;
    CompareGroup: TdxLayoutGroup;
    DiffInfo: TcxCheckListBox;
    lc1Item1: TdxLayoutItem;
    lc1Group1: TdxLayoutGroup;
    cxButton1: TcxButton;
    lc1Item2: TdxLayoutItem;
    cxButton2: TcxButton;
    lc1Item3: TdxLayoutItem;
    cxButton3: TcxButton;
    lc1Item4: TdxLayoutItem;
    cxButton4: TcxButton;
    lc1Item5: TdxLayoutItem;
    clv1FIRM: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_AdDogClick(Sender: TObject);
    procedure v2StylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure v2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_CreateDocClick(Sender: TObject);
    procedure v2NavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure bitm_MPropertiesEditValueChanged(Sender: TObject);
    procedure btn_LoadBdrClick(Sender: TObject);
    procedure btn_SelectAllClick(Sender: TObject);
    procedure btn_UnSelectClick(Sender: TObject);
    procedure btn_ChangeTemplateClick(Sender: TObject);
    procedure btn_SmetaClick(Sender: TObject);
    procedure btn_arhivClick(Sender: TObject);
    procedure btn_LoadSmetaClick(Sender: TObject);
    procedure clv1APropertiesEditValueChanged(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDS;
    procedure OpenSpec;
    procedure AddData;
    procedure AddFromDog;
    procedure AddAllHouse;
    procedure AddFromPeriod(M,Y: Variant);
    procedure GridEnabled(isEnable: boolean = false);
    procedure ClearShablon(code: variant);
    procedure AddHouse;
    procedure CreateDoc;
    function GetPBDRDoc(Y,M,SRV: Variant): Variant;
    procedure MakeBDRData;
    procedure CreateMem;
    procedure SelectRecord(value: boolean);
    procedure UpdateTemplate;
    procedure PrintSmeta;
    procedure OpenArhiv;
    procedure CheckAll(isCheck: Boolean = true);
    function GetMonth: Integer;
    procedure SETSHABLONSQ;
    procedure InsertItoHistory;
  public
    { Public declarations }
  end;

var
  POShablonSmetaForm: TPOShablonSmetaForm;

implementation

uses cmDBUnit, dezCommon, AddSmetaDataFrm, AddShablonSmetaHouseFrm, DocCostFrm,
  cmUtils, BkpDoc, POShablonSmetaArhivFrm, LoadSmetaShablonFrm, POActSmetaFrm;

{$R *.dfm}

procedure TPOShablonSmetaForm.CheckAll(isCheck: Boolean);
var
  i: Integer;
begin
  v1.BeginUpdate(lsimImmediate);
  try
    with ds_MAKESMETASHABLON do begin
      First;
      while not EOF do begin
        Edit;
        FN('A').AsVariant:= Integer(isCheck);
        Post;
        Next;
      end;
    end;
  finally
    v1.EndUpdate;
  end;
end;

// очищаем шаблон
procedure TPOShablonSmetaForm.ClearShablon(code: variant);
var
  Q: TFIBQuery;
begin
  Q:= GetQueryForUse(cmDb.WT,
    'delete from MAKESMETASHABLONSPEC' + #13#10 +
    'where (MAKESMETASHABLON = :CODE)');
  Q.Options:=[qoStartTransaction, qoAutoCommit];
  try
    Q.ParamByName('CODE').AsVariant:= code;
    Q.ExecQuery;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TPOShablonSmetaForm.clv1APropertiesEditValueChanged(Sender: TObject);
begin
  v1.DataController.Post();
end;

procedure TPOShablonSmetaForm.CreateDoc;
var
  F: TDocCostForm;
begin
  F:=TDocCostForm.Create(self);
  try

    if F.ShowModal=mrOk then begin

    end;
  finally
    FreeAndNil(F);
  end;
end;

procedure TPOShablonSmetaForm.CreateMem;
begin
  md1.Close;
  CreateField(md1, 'CODE', ftInteger);       //template record code
  CreateField(md1, 'STNAME', ftString, 256); // street name
  CreateField(md1, 'NOMER', ftString, 32);   // house nomer
  CreateField(md1, 'FLAG',ftBoolean);        // checkBox
  CreateField(md1, 'F3', ftBCD);             //rate
  CreateField(md1, 'BSUM', ftBCD);           //sum bdr
  CreateField(md1, 'SHSUM', ftBCD);          //template sum
  CreateField(md1, 'DSUM',ftBCD);            // deviation sum
  CreateField(md1, 'SSUM', ftBCD);           // self sum
  CreateField(md1, 'SQ1', ftBCD);            //GP
  CreateField(md1, 'SQ2', ftBCD);            //NGP
  md1.Open;
end;

procedure TPOShablonSmetaForm.cxButton1Click(Sender: TObject);
var
  Q: TFIBQuery;
  AItem: TcxCheckListBoxItem;
begin
  //список расхождений: договор - шаблон
  Q:=cmDB.GetQuery(
    'select a.ShbCode, a.SrvDog, a.HouseSrv, a.Srv, a.Kontragent, a.Op, a.House, '+
    'k.Name KontragentName, h.Nomer Nomer, s.Name StreetName, d.Nomer DNomer, '+
    'hsrv.Name HSrvName, srv.Name SrvName '+
    'from ScanShablonDiff a '+
    'left outer join Kontragent k on (k.Code=a.Kontragent) '+
    'left outer join House h on (h.Code=a.House) '+
    'left outer join Street s on (s.Code=h.Street) '+
    'left outer join SrvDog d on (d.Code=a.SrvDog) '+
    'left outer join HouseSrv HSrv on (HSrv.Code=a.HouseSrv) '+
    'left outer join Srv Srv on (Srv.Code=a.Srv)'
    , cmDB.WT);
  DiffInfo.Items.BeginUpdate;
  try
    Q.ExecQuery;
    DiffInfo.Clear;
    while not Q.Eof do
    begin
      AItem:=DiffInfo.Items.Add;
      //формируем текст
      AItem.Text:=Q.FN('ShbCode').AsString+'  '+
        Q.FN('StreetName').AsString+','+
        Q.FN('Nomer').AsString+'  '+
        Q.FN('KontragentName').AsString+'  '+
        Q.FN('DNomer').AsString+'  ';
      if Q.FN('HouseSrv').AsInteger>0 then
        AItem.Text:=AItem.Text+Q.FN('HSrvName').AsString
      else
        AItem.Text:=AItem.Text+Q.FN('SrvName').AsString;
      //картинка
      AItem.ImageIndex:=Q.FN('Op').AsInteger;
      //код дома
      AItem.Tag:=Q.FN('House').AsInteger;
      //к след. записи
      Q.Next;
    end;
  finally
    DiffInfo.Items.EndUpdate;
    cmDB.FreeQuery(Q);
  end;
end;

procedure TPOShablonSmetaForm.cxButton2Click(Sender: TObject);
var
  Q, Q1, Q2: TFIBQuery;
  i: integer;
  AItem: TcxCheckListBoxItem;
begin
  if not cmMessageBox('Выполнить коррекцию по всем помеченным записям ?') then Exit;
  Q1:=cmDB.GetQuery('delete from MakeSmetaShablonSpec where '+
    'MakeSmetaShablon=:MakeSmetaShablon and House=:House', cmDB.WT);
  Q2:=cmDB.GetQuery('insert into MakeSmetaShablonSpec(MakeSmetaShablon, House) '+
    'VALUES(:MakeSmetaShablon, :House)', cmDB.WT);
  try
    for i:=0 to DiffInfo.Count-1 do
    begin
      AItem:=DiffInfo.Items[i];
      if AItem.Checked then
      begin
        if AItem.ImageIndex=0 then
          Q:=Q1
        else
          Q:=Q2;
        Q.ParamByName('MakeSmetaShablon').AsString:=cmGetWord(AItem.Text,1,' ');
        Q.ParamByName('House').AsInteger:=AItem.Tag;
        Q.ExecQuery;
      end;
    end;
  finally
    cmDB.WT.Commit;
    cmDB.FreeQuery(Q1);
    cmDB.FreeQuery(Q2);
  end;
  //обновляем список расхождений
  cxButton1Click(nil);
end;

procedure TPOShablonSmetaForm.cxButton3Click(Sender: TObject);
var
  i: integer;
begin
  DiffInfo.Items.BeginUpdate;
  for i:=0 to DiffInfo.Count-1 do
    DiffInfo.Items[i].Checked:=true;
  DiffInfo.Items.EndUpdate;
end;

procedure TPOShablonSmetaForm.cxButton4Click(Sender: TObject);
var
  i: integer;
begin
  DiffInfo.Items.BeginUpdate;
  for i:=0 to DiffInfo.Count-1 do
    DiffInfo.Items[i].Checked:=false;
  DiffInfo.Items.EndUpdate;
end;

procedure TPOShablonSmetaForm.AddAllHouse;
var
  Q: TFIBQuery;
  shablon: Variant;
begin
  shablon:= v1.FN('CODE');
  if shablon = null then
     raise dezException.Create('Не указан шаблон!');
  if Application.MessageBox('Данные в шаблоне будут перезаписаны!' + #13#10 +
    '                   Продолжить?', 'Внимание', MB_YESNO + MB_ICONQUESTION +
    MB_TOPMOST) = IDYES then
  begin
    v2.BeginUpdate(lsimImmediate);
    // очищаем шаблон
    ClearShablon(shablon);
    // заполняем данными
    Q:= GetQueryForUse(cmDb.WT,
      'insert into MAKESMETASHABLONSPEC (MAKESMETASHABLON, HOUSE, SUMMA)'#13#10+
      'select :SHABLON, CODE, 0' + #13#10 +
      'from HOUSE where A=1');
    Q.Options:=[qoStartTransaction, qoAutoCommit];
    try
      Q.ParamByName('SHABLON').AsVariant:= shablon;
      Q.ExecQuery;
      OpenSpec;
    finally
      FreeQueryForUse(Q);
      v2.EndUpdate;
    end;
  end;
end;

procedure TPOShablonSmetaForm.AddData;
var
  F: TAddSmetaDataForm;
  Q: TFIBQuery;
begin
  Q:= GetQueryForUse(cmDb.WT,'execute procedure ADD_HISTORY$ARCSHBHEAD(:COD, :OPERTYPE)');
  Q.Options:=[qoStartTransaction, qoAutoCommit];
  F:=TAddSmetaDataForm.Create(Self);
  try
    if F.ShowModal = mrOk then begin
      case F.aType of
        1: AddFromDog;  //заполняем данные из договора
        2: AddAllHouse; //заполняем данные из жилфонда
        3: AddFromPeriod(F.cbb_M.ItemIndex, F.msk_Y.EditingText); // за период
      end;
      SETSHABLONSQ;     //заполняем площади из последнего документа БДР
      //Q.ParamByName('COD').AsVariant:=
      //Q.ParamByName('OPERTYPE').AsVariant:=
    end;

  finally
    FreeAndNil(F);
    FreeQueryForUse(Q);
  end;
end;

// добавляем данные из договора
procedure TPOShablonSmetaForm.AddFromDog;
var
  dog, shablon: Variant;
  Q: TFIBQuery;
begin
  dog:= v1.FN('SRVDOG');
  shablon:= v1.FN('CODE');
  if dog = null then
     raise dezException.Create('Не указан договор!');
  if Application.MessageBox('Данные в шаблоне будут перезаписаны!' + #13#10 +
    '                   Продолжить?', 'Внимание', MB_YESNO + MB_ICONQUESTION +
    MB_TOPMOST) = IDYES then
  begin
    v2.BeginUpdate(lsimImmediate);
    ClearShablon(shablon);
    // -----------
    Q:=GetQueryForUse(cmDb.WT,
      'insert into MAKESMETASHABLONSPEC (MAKESMETASHABLON, HOUSE, SUMMA)'#13#10+
      'select :SHABLON, HOUSE, 0' + #13#10 +
      'from SRVDOGHOUSE' + #13#10 +
      'where SRVDOG=:Dog');
    Q.Options:=[qoStartTransaction, qoAutoCommit];
    try
      Q.ParamByName('SHABLON').AsVariant:= shablon;
      Q.ParamByName('Dog').AsVariant:= dog;
      Q.ExecQuery;
      OpenSpec;
    finally
      FreeQueryForUse(Q);
      v2.EndUpdate;
    end;
  end;
end;

procedure TPOShablonSmetaForm.AddFromPeriod(M, Y: Variant);
var
  shablon, srv, HouseSrv, fDoc, fKontr: Variant;
  // 6,8,4,7  FACTDOCLIST
  // 1,2,3,5,9,10,11,12  FACT1DOCLIST

  function GetDocCode(code: Variant; TableName: string): Variant;
  var
    Q: TFIBQuery;
  begin
    Q:=GetQueryForUse(cmDb.RT,
      'select CODE' + #13#10 +
      'from '+TableName + #13#10 +
      'where M=:M and Y=:Y and HOUSESRV=:SRV and SHB=1');
    Q.Options:=[qoStartTransaction];
    try
      Q.ParamByName('M').AsVariant:=M;
      Q.ParamByName('Y').AsVariant:=Y;
      Q.ParamByName('SRV').AsVariant:=code;
      Q.ExecQuery;
      Result:=Q.FN('CODE').AsVariant;
    finally
      FreeQueryForUse(Q);
    end;
  end;

  procedure InsertData(TableName, TableHead: string);
  var
    Q: TFIBQuery;
  begin
    Q:=GetQueryForUse(cmDb.WT,
      'insert into MAKESMETASHABLONSPEC (MAKESMETASHABLON, HOUSE, SUMMA)'#13#10+
      'select :SHABLON, HOUSE, FACTSUM' + #13#10 +
      'from '+TableName + #13#10 +
      'where '+TableHead+'=:doc');
    Q.Options:=[qoStartTransaction,qoAutoCommit];
    try
      Q.ParamByName('SHABLON').AsVariant:=shablon;
      Q.ParamByName('doc').AsVariant:=fDoc;
      Q.ExecQuery;
    finally
      FreeQueryForUse(Q);
    end;
  end;

  procedure UpdateSum;
  var
    Q: TFIBQuery;
  begin
    Q:= GetQueryForUse(cmDb.WT,
        'update MAKESMETASHABLONSPEC' + #13#10 +
        'set SUMMA = :SUMMA' + #13#10 +
        'where (MAKESMETASHABLON = :MAKESMETASHABLON)');
    Q.Options:=[qoStartTransaction, qoAutoCommit];
    try
      Q.ParamByName('MAKESMETASHABLON').AsVariant:= v1.FN('CODE');
      Q.ExecQuery;
    finally
      FreeQueryForUse(Q);
    end;
  end;

  procedure UpdateData(TableName, TableHead: string);
  var
    sql: string;
    Q, Q1: TFIBQuery;

  begin
    sql:=
      'SELECT fd.FACTSUM,' + #13#10 +
      '       fd.HOUSE,' + #13#10 +
      '       ms.code, fd.SQ1, fd.SQ2' + #13#10 +
      'FROM '+TableName+' fd' + #13#10 +
      'left outer join makesmetashablonspec ms on ms.house = fd.house and ' +
      'ms.makesmetashablon =:shablon' + #13#10 +
      'where fd.'+TableHead+' =:doc and ms.code is not null and fd.KONTRAGENT=:kontr';
    Q:= GetQueryForUse(cmDb.RT, sql);
    Q.Options:=[qoStartTransaction];
    Q1:= GetQueryForUse(cmDb.WT,
        'update MAKESMETASHABLONSPEC' + #13#10 +
        'set SUMMA = :SUMMA,' + #13#10 +
        '    SQ1 = :SQ1,' +#13#10+
        '    SQ2 = :SQ2' +#13#10+
        'where (CODE = :CODE)');
    Q1.Options:=[qoStartTransaction, qoAutoCommit];
    try
      // получаем данные
      Q.ParamByName('doc').AsVariant:= fDoc;
      Q.ParamByName('shablon').AsVariant:= shablon;
      Q.ParamByName('kontr').AsVariant:= fKontr;
      Q.ExecQuery;
      while not Q.Eof do begin
        // обновляем
        Q1.ParamByName('CODE').AsVariant:= Q.FN('CODE').AsVariant;
        Q1.ParamByName('SUMMA').AsVariant:= Q.FN('FACTSUM').AsVariant;
        Q1.ParamByName('SQ1').AsVariant:= Q.FN('SQ1').AsVariant;
        Q1.ParamByName('SQ2').AsVariant:= Q.FN('SQ2').AsVariant;
        Q1.ExecQuery;
        Q.Next;
      end;
    finally
      FreeQueryForUse(Q);
      FreeQueryForUse(Q1);
    end;
  end;

begin
  shablon:= v1.FN('CODE');
  HouseSrv:= v1.FN('HOUSESRV');
  srv:= v1.FN('SRV');
  fKontr:= v1.FN('kCODE');
  if ds_MAKESMETASHABLONSPEC.IsEmpty then
     raise dezException.Create('Сначала требуется заполнить шаблон!'+#10#13+
                               '       одним из способов:'+#10#13+
                               '     - Добавить из договора'+#10#13+
                               '     - Добавить все дома');
  if (srv = -1) and (HouseSrv = -1) then
     raise dezException.Create('Не указана услуга!');
  if Application.MessageBox('Суммы в шаблоне будут перезаписаны!' + #13#10 +
    '                   Продолжить?', 'Внимание', MB_YESNO + MB_ICONQUESTION +
    MB_TOPMOST) = IDYES then
  begin
    v1.BeginUpdate(lsimImmediate);
    try
      // поиск кода документа в зависимости от услуги
      if srv > 0 then
         fDoc:=GetDocCode(Srv,'FACT1DOC') else
         fDoc:=GetDocCode(HouseSrv,'FACTDOC');
      if fDoc = null then
         raise dezException.Create('Не найден код документа за указанный период!');
      // обнуляем сумму
      UpdateSum;
      // обновляем сумму
      if srv >0  then
         UpdateData('FACT1DOCLIST','FACT1DOC') else
         UpdateData('FACTDOCLIST','FACTDOC');
      OpenSpec;
    finally
      v1.EndUpdate;
    end;
  end;
end;

procedure TPOShablonSmetaForm.AddHouse;
var
  houseEx: WideString;
  F: TAddShablonSmetaHouseForm;
begin
  houseEx:='';
  v2.BeginUpdate(lsimImmediate);
  try
    // формируем список имеющихся домов
    with ds_MAKESMETASHABLONSPEC do begin
      First;
      while not EOF do begin
           houseEx:=houseEx+','+FN('HOUSE').AsString;
        Next;
      end;
      if houseEx<>'' then
         houseEx:=houseEx+',';
    end;
    // открываем форму добавления дома
    F:= TAddShablonSmetaHouseForm.Create(self);
    try
      F.houseEx:= houseEx;
      if F.ShowModal = mrOk then begin
        //вставляем дом
        if F.v1.FN('CODE')<> null then
        with ds_MAKESMETASHABLONSPEC do begin
          Append;
          FN('MAKESMETASHABLON').AsVariant:=v1.FN('CODE');
          FN('HOUSE').AsVariant:= F.v1.FN('CODE');
          FN('SUMMA').AsVariant:=0;
          Post;
        end;
      end;
    finally
      FreeAndNil(F);
    end;
  finally
    v2.EndUpdate;
  end;
end;

procedure TPOShablonSmetaForm.bitm_MPropertiesEditValueChanged(Sender: TObject);
Var
 AComboBox: TcxComboBox;
begin
  bitm_M.SetFocus();
  //AComboBox :=  TcxBarEditItemControl(bitm_M.Links[0].Control).Edit as TcxComboBox;
  //ShowMessage(IntToStr(AComboBox.ItemIndex));
end;

procedure TPOShablonSmetaForm.btn_AdDogClick(Sender: TObject);
begin
  AddData;
end;

procedure TPOShablonSmetaForm.btn_arhivClick(Sender: TObject);
begin
  OpenArhiv;
end;

procedure TPOShablonSmetaForm.btn_ChangeTemplateClick(Sender: TObject);
begin
  if Application.MessageBox('Вы действительно хотите изменить суммы в шаблоне по отмеченным адресам?',
    'Внимание', MB_YESNO + MB_ICONQUESTION + MB_TOPMOST) = IDYES then
  begin
    UpdateTemplate;
  end;
end;

procedure TPOShablonSmetaForm.btn_CreateDocClick(Sender: TObject);
begin
  CreateDoc;
end;

procedure TPOShablonSmetaForm.btn_LoadBdrClick(Sender: TObject);
begin
  MakeBDRData;
end;

procedure TPOShablonSmetaForm.btn_LoadSmetaClick(Sender: TObject);
var
  AForm: TLoadSmetaShablonForm;
begin
  if ds_MakeSmetaShablon.Eof then Exit;
  AForm:=TLoadSmetaShablonForm.Create(Application);
  AForm.MakeSmetaCode:=ds_MakeSmetaShablon.FN('Code').AsInteger;
  AForm.ShowModal;
  OpenSpec;
  AForm.Free;
end;

procedure TPOShablonSmetaForm.btn_SelectAllClick(Sender: TObject);
begin
  SelectRecord(true);
end;

procedure TPOShablonSmetaForm.btn_SmetaClick(Sender: TObject);
begin
  if v1.FN('CODE')<> null then
    PrintSmeta;
end;

procedure TPOShablonSmetaForm.btn_UnSelectClick(Sender: TObject);
begin
  SelectRecord(false);
end;

procedure TPOShablonSmetaForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TPOShablonSmetaForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  OpenDS;
  GridEnabled(ActiveUserType = 0);
  CreateMem;
  btn_arhiv.Enabled:= IsGrant(355);
  btn_CreateDoc.Enabled:=btn_arhiv.Enabled;
  btn_LoadSmeta.Enabled:=btn_arhiv.Enabled;
end;

function TPOShablonSmetaForm.GetMonth: Integer;
var
  AComboBox: TcxComboBox;
begin
  bitm_M.SetFocus();
  AComboBox :=  TcxBarEditItemControl(bitm_M.Links[0].Control).Edit as TcxComboBox;
  Result:= AComboBox.ItemIndex;
end;

function TPOShablonSmetaForm.GetPBDRDoc(Y, M, SRV: Variant): Variant;
var
  Q: TFIBQuery;
begin
  Q:= GetQueryForUse(cmDb.RT,
    'SELECT CODE FROM PBDR' + #13#10 +
    'where Y=:Y and M=:M and HOUSESRV=:SRV');
  Q.Options:=[qoStartTransaction];
  try
    Q.ParamByName('Y').AsVariant:= Y;
    Q.ParamByName('M').AsVariant:= M;
    Q.ParamByName('SRV').AsVariant:= SRV;
    Q.ExecQuery;
    Result:= Q.FN('CODE').AsVariant;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TPOShablonSmetaForm.GridEnabled(isEnable: boolean);
begin
  with v2.OptionsData do begin
    Appending:= isEnable;
    Deleting:= isEnable;
    Editing:= isEnable;
    //Inserting:= isEnable;
  end;
  v2.Navigator.Visible:= isEnable;
end;

procedure TPOShablonSmetaForm.InsertItoHistory;
var
  Q: TFIBQuery;
begin
  Q:= GetQueryForUse(cmDb.WT,'execute procedure ADD_HISTORY$ARCSHBHEAD(:COD, :OPERTYPE)');
  Q.Options:=[qoStartTransaction, qoAutoCommit];
  try
    Q.ParamByName('COD').AsVariant:= v1.GetColumnByFieldName('CODE').EditValue;
    Q.ParamByName('OPERTYPE').AsVariant:= 1;//редактирование
    Q.ExecQuery;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TPOShablonSmetaForm.MakeBDRData;
var
  srv, HouseSrv, Y, M, PBDR, ShCode: Variant;
  AComboBox: TcxComboBox;
  BDRTable, BDRField, vTemp: string;

  function GetHouseSrv(n: integer) : Integer;
  const
    srv6: array[1..6] of integer = (0,1,2,4,5,6);
    srv8: array[1..7] of integer = (3,7,8,9,10,11,12);
  var
    i: Integer;
  begin
    Result:= -1;
    for i := Low(srv6) to High(srv6) do
      if n = srv6[i] then begin
        Result:= 6;
        Exit;
      end;
    for i := Low(srv8) to High(srv8) do
      if n = srv8[i] then begin
        Result:= 8;
        Exit;
      end;
  end;

  function GetTableName: string;
  begin
    Result:= '';
    if HouseSrv>-1 then begin
      case HouseSrv of
        1: Result:= 'PBDR1_F22'; // ВЫВОЗ ТБО
        2: Result:= 'PBDR1_F22'; // УБОРКА ДВОРА
        3: Result:= 'PBDR1_F22'; // УБОРКА ПОДЪЕЗДА
        5: Result:= 'PBDR1_F22'; // ГАЗОВОЕ ОБОРУДОВАНИЕ
        9: Result:= 'PBDR1_F22'; // МУСОРОПРОВОД
       14: Result:= 'PBDR1_F22'; // ОБСЛУЖИВАНИЕ И ПОВЕРКА ИПУ
      end;
    end else begin
      case v1.FN('SRV') of
        3: Result:= 'PBDR2_F12'; // ОДС
        4: Result:= 'PBDR2_F10'; // Дератизация
        5: Result:= 'PBDR2_F30'; // ТО общестрой
        6: Result:= 'PBDR2_F32'; // ТО электромонтаж
        13: Result:= 'PBDR2_F37'; //дезинсекция

        7: Result:= 'PBDR3_F13'; // Уборка кабины лифта
        8: Result:= 'PBDR3_F14'; // Техосвид. лифта
        9: Result:= 'PBDR3_F15'; // Экспертиза лифта
        10: Result:= 'PBDR3_F25';// АВС
        11: Result:= 'PBDR3_F26';// ЛДСС
        12: Result:= 'PBDR3_F27';// ТО лифт
      end;
    end;
  end;

  procedure GetBDRData;
  begin
    with ds_BDR do begin
      Close;
      SelectSQL.Text:=
          'SELECT M.CODE, M.HOUSE,' + #13#10 +
          '       S.NAME SNAME, H.NOMER, M.SQ1, M.SQ2,' + #13#10 +
          '       M.SUMMA, F4 F3, P.'+BDRField+' PSUM' + #13#10 +   //SQ1 SQ2
          'FROM MAKESMETASHABLONSPEC M' + #13#10 +
          'LEFT OUTER JOIN '+BDRTable+' P ON P.HOUSE = M.HOUSE AND P.PBDR=:PBDR' +
          #13#10 +
          'LEFT OUTER JOIN HOUSE H ON H.CODE = M.HOUSE' + #13#10 +
          'LEFT OUTER JOIN STREET S ON S.CODE = H.STREET' + #13#10 +
          'WHERE M.MAKESMETASHABLON =:CODE';
      ParamByName('PBDR').AsVariant:= PBDR;
      ParamByName('CODE').AsVariant:= ShCode;
      Open;
    end;
  end;

  procedure FillMem;
  begin
    md1.Close; md1.Open;
    with ds_BDR do begin
      First;
      while not Eof do begin
        md1.Append;
        md1.FieldByName('FLAG').AsBoolean:= False;
        md1.FieldByName('CODE').AsVariant:= FN('CODE').AsVariant;
        md1.FieldByName('STNAME').AsVariant:= FN('SNAME').AsVariant;
        md1.FieldByName('NOMER').AsVariant:= FN('NOMER').AsVariant;
        md1.FieldByName('F3').AsVariant:= FN('F3').AsCurrency;
        md1.FieldByName('BSUM').AsBCD:= FN('PSUM').AsCurrency;
        md1.FieldByName('SHSUM').AsBCD:= FN('SUMMA').AsCurrency;
        md1.FieldByName('DSUM').AsCurrency:= (FN('PSUM').AsCurrency- FN('SUMMA').AsCurrency);
        md1.FieldByName('SSUM').AsCurrency:= FN('PSUM').AsCurrency;
        md1.FieldByName('SQ1').AsCurrency:= FN('SQ1').AsCurrency;
        md1.FieldByName('SQ2').AsCurrency:= FN('SQ2').AsCurrency;
        md1.Post;
        Next;
      end;
    end;
  end;

begin
  v3.BeginUpdate(lsimImmediate);
  try
    bitm_M.SetFocus();
    AComboBox :=  TcxBarEditItemControl(bitm_M.Links[0].Control).Edit as TcxComboBox;
    M:= AComboBox.ItemIndex;
    Y:= bitm_Y.EditValue;
    //
    HouseSrv:= v1.FN('HOUSESRV');
    srv:= v1.FN('SRV');
    if HouseSrv>-1 then
       srv:= HouseSrv else
       srv:= GetHouseSrv(v1.FN('SRV'));
    // получаем код документа PBDR
    PBDR:= GetPBDRDoc(Y,M,srv);
    if PBDR = null then
       raise dezException.Create('Код документа БДР за данный период не найден! '#10#13+
                                 '          Формирорвание отменено.');
    //получаем спецификацию бдр в зависимости от услуги
    vTemp:= GetTableName;
    if vTemp = '' then
       raise dezException.Create('Не удалось определить таблицу БДР!');
    BDRTable:= cmGetWord(vTemp,1,'_');
    BDRField:= cmGetWord(vTemp,2,'_');
    ShCode:= v1.FN('CODE');  //код шаблона
    if ShCode = null then
      raise dezException.Create('Не выбран шаблон!');
    GetBDRData;
    FillMem;
  finally
    v3.EndUpdate;
  end;
end;

procedure TPOShablonSmetaForm.N1Click(Sender: TObject);
begin
  CheckAll;
end;

procedure TPOShablonSmetaForm.N2Click(Sender: TObject);
begin
  CheckAll(false);
end;

procedure TPOShablonSmetaForm.OpenArhiv;
var
  F: TPOShablonSmetaArhivForm;
begin
  if v1.FN('CODE') = null then
     raise dezException.Create('Не выбран шаблон сметы!');
  F:=TPOShablonSmetaArhivForm.Create(Self, v1.FN('CODE'));
  try
    if F.ShowModal = mrOk then
    OpenSpec;
  finally
    FreeAndNil(F);
  end;
end;

procedure TPOShablonSmetaForm.OpenDS;
begin
  if cmDb.ds_FIRM.State = dsInactive then
     cmDb.ds_FIRM.Open;
  DSOptoins(ds_MAKESMETASHABLON,'','MAKESMETASHABLON','CODE','MAKESMETASHABLON_GEN', ActiveUserType = 0);
  if ActiveUserType = 1 then
  with ds_MAKESMETASHABLON do begin
    Close;
    MainWhereClause:='d.kontragent=:kontr';
    ParamByName('kontr').AsVariant:= ActiveKontragent;
    Open;
  end;
  DSOptoins(ds_MAKESMETASHABLONSPEC,'','MAKESMETASHABLONSPEC','CODE','MAKESMETASHABLONSPEC_GEN', false);
  OpenSpec;
end;

procedure TPOShablonSmetaForm.OpenSpec;
begin
  with ds_MAKESMETASHABLONSPEC do begin
    Close;
    MainWhereClause:='MS.MAKESMETASHABLON=:shablon';
    ParamByName('shablon').AsVariant:= ds_MAKESMETASHABLON.FN('CODE').AsVariant;
    ParamByName('dog').AsVariant:= ds_MAKESMETASHABLON.FN('SrvDog').AsVariant;
    GroupByClause:='MS.CODE, MS.MAKESMETASHABLON, S.name, MS.HOUSE,' + #13#10 +
                  '         H.nomer,  MS.SQ1, MS.SQ2, MS.SUMMA, ' +
                  'sh.srvdog';
         //ShowMessage(ReadySelectText);
    Open;
  end;
  md1.Close; md1.Open;
end;

procedure TPOShablonSmetaForm.PrintSmeta;
var
  smeta :TBkpObj;
  HouseSrv, srv: Variant;
  SNAME: Variant;
  F: TPOActSmetaForm;

  function GetHouseSrv(n: integer) : Integer;
  const
    srv6: array[1..6] of integer = (0,1,2,4,5,6);
    srv8: array[1..7] of integer = (3,7,8,9,10,11,12);
  var
    i: Integer;
  begin
    Result:= -1;
    for i := Low(srv6) to High(srv6) do
      if n = srv6[i] then begin
        Result:= 6;
        Exit;
      end;
    for i := Low(srv8) to High(srv8) do
      if n = srv8[i] then begin
        Result:= 8;
        Exit;
      end;
  end;

begin
  //smeta:=TBkpObj.Create;
  try
    HouseSrv:= v1.FN('HOUSESRV');
    srv:= v1.FN('SRV');
    if HouseSrv>-1 then begin
      srv:= '0_'+HouseSrv;
      SNAME:= v1.FN('HOUSESRVNAME');
    end else begin
      srv:= '1_'+v1.FN('SRV');
      SNAME:= v1.FN('SRVNAME');
    end;
    F:=TPOActSmetaForm.Create(self);
    F.ExKontr:= v1.FN('kCODE');
    F.ExSRV:= srv;
    F.ShowModal;
    {smeta.M:= null;
    smeta.SRV:= srv;
    smeta.srvName:= SNAME;
    smeta.kontr:= v1.FN('KONTRAGENTNAME');
    smeta.Dog:= v1.FN('SRVDOG');
    smeta.PrinSmetaTemplate(v1.FN('CODE'));}
  finally
    //FreeAndNil(smeta);
  end;
end;

procedure TPOShablonSmetaForm.SelectRecord(value: boolean);
var
  i: Integer;
begin
  v3.BeginUpdate(lsimImmediate);
  try
    for i:=0 to v3.ViewData.RowCount -1 do
    begin
      v3.ViewData.Rows[i].Focused:= True;
      v3.DataController.SetEditValue(clv3FLAG.Index, value, evsValue);
      v3.DataController.Post;
    end;
  finally
    v3.EndUpdate;
  end;
end;

procedure TPOShablonSmetaForm.SETSHABLONSQ;
var
  Q1: TFIBQuery;
begin
  Q1:= GetQueryForUse(cmDb.WT, 'execute procedure SETSHABLONSQ(:CODESHABLON, :M, :Y)');
  Q1.Options:=[qoStartTransaction, qoAutoCommit];
  try
    Q1.ParamByName('CODESHABLON').AsVariant:= v1.FN('CODE');
    Q1.ParamByName('M').AsVariant:= null;
    Q1.ParamByName('Y').AsVariant:= null;
    Q1.ExecQuery;
    ds_MAKESMETASHABLONSPEC.CloseOpen(false);
    //add to history
    InsertItoHistory;
  finally
    FreeQueryForUse(Q1);
  end;
end;

procedure TPOShablonSmetaForm.UpdateTemplate;
var
  Q, Q1: TFIBQuery;
  SHBCode: Variant;

  procedure _UpdateRecord;
  begin
    Q.ParamByName('SUMMA').AsVariant:= md1.FieldByName('SSUM').AsVariant;
    Q.ParamByName('CODE').AsVariant:= md1.FieldByName('CODE').AsVariant;
    Q.ExecQuery;
  end;

  procedure UpdateSQ;
  begin
    Q1.ParamByName('CODESHABLON').AsVariant:= v1.FN('CODE');
    Q1.ParamByName('M').AsVariant:= GetMonth;
    Q1.ParamByName('Y').AsVariant:= bitm_Y.EditValue;
    Q1.ExecQuery;
    cmDB.WT.Commit;
  end;

begin
  v3.BeginUpdate(lsimImmediate);
  try
    Q:= GetQueryForUse(cmDb.WT,
      'update MAKESMETASHABLONSPEC' + #13#10 +
      'set SUMMA = :SUMMA' + #13#10 +
      'where (CODE = :CODE)');
    Q1:= GetQueryForUse(cmDb.WT, 'execute procedure SETSHABLONSQ(:CODESHABLON, :M, :Y)');
    Q1.Options:=[qoStartTransaction, qoAutoCommit];
    Q.Options:=[qoStartTransaction, qoAutoCommit];
    with md1 do begin
      First;
      while not Eof do begin
        if FieldByName('FLAG').AsBoolean = true then
           _UpdateRecord;
        Next;
      end;
    end;
    // записываем площади
    UpdateSQ;
    OpenSpec;
    MakeBDRData;
  finally
    FreeQueryForUse(Q);
    FreeQueryForUse(Q1);
    v3.EndUpdate;
  end;
end;

procedure TPOShablonSmetaForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  OpenSpec;
end;

procedure TPOShablonSmetaForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_UP : OpenSpec;
    VK_DOWN : OpenSpec;
  end;
end;

procedure TPOShablonSmetaForm.v2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_INSERT :AddHouse;
  end;
end;

procedure TPOShablonSmetaForm.v2NavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  if AButtonIndex = 7 then begin
    AddHouse;
    Abort;
  end;
end;

procedure TPOShablonSmetaForm.v2StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
 if ARecord.Values[clv2srvdog.Index] = null then
   AStyle := cmDb.stl_ReadOnly;
end;

initialization
 RegisterClass(TPOShablonSmetaForm);
end.















