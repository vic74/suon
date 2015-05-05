unit ShowHouseFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  FIBQuery, pFIBCacheQueries, frxFIBComponents,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxClasses, dxRibbon, dxLayoutControl, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxBarPainter, dxBar,
  cxPropertiesStore, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, AppUtils, dxLayoutLookAndFeels,
  FIBDataSet, pFIBDataSet, FIBDatabase, pFIBDatabase, cxSpinEdit,pFIBProps,
  cxDropDownEdit, dxmdaset, cxBarEditItem, cxDBLookupComboBox, cmDBUnit,
  cmUtils,
  frxExportXLS, frxExportRTF, frxClass, frxExportPDF, OutPlanFrm, BaseForm,
  cxCheckBox, Menus, StdCtrls, cxButtons, dxLayoutContainer,
  dxLayoutControlAdapters, frxDBSet, cxShellBrowserDialog,
  dxSkinDevExpressStyle, dxSkinsDefaultPainters, dxRibbonSkins, cxButtonEdit,
  KontragentRepository, dxSkinVS2010;

type
  TShowHouseForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lcntr1: TdxLayoutControl;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    Itm1: TdxLayoutItem;
    prop1: TcxPropertiesStore;
    bm1: TdxBarManager;
    bar1: TdxBar;
    btn1: TdxBarButton;
    LSkin1: TdxLayoutLookAndFeelList;
    LCxSkin1: TdxLayoutCxLookAndFeel;
    ds_osm: TpFIBDataSet;
    src_osm: TDataSource;
    edit_year: TcxBarEditItem;
    mt_type: TdxMemData;
    mt_state: TdxMemData;
    editm_type: TcxBarEditItem;
    src_type: TDataSource;
    src_state: TDataSource;
    ds_SrvDog: TpFIBDataSet;
    src_srvdog: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1SRVDOG: TcxGridDBColumn;
    clv1SHOWDATE: TcxGridDBColumn;
    clv1STYPE: TcxGridDBColumn;
    clv1SYEAR: TcxGridDBColumn;
    clv1STATE: TcxGridDBColumn;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    Item2: TdxLayoutItem;
    splt2: TdxLayoutSplitterItem;
    lcntr1Group2: TdxLayoutGroup;
    ds_HousePlan: TpFIBDataSet;
    src_HousePlan: TDataSource;
    clv2CODE: TcxGridDBColumn;
    clv2SHOWHOUSE: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2D1: TcxGridDBColumn;
    clv2D2: TcxGridDBColumn;
    clv2SHOWDATE: TcxGridDBColumn;
    bar2: TdxBar;
    doc1: TdxBarDockControl;
    Itm_doc: TdxLayoutItem;
    btn_sync: TdxBarButton;
    ds_house: TpFIBDataSet;
    src_house: TDataSource;
    frReport: TfrxReport;
    pdf1: TfrxPDFExport;
    frxrtfxprt1: TfrxRTFExport;
    frxlsxprt1: TfrxXLSExport;
    btn_rep: TdxBarButton;
    btn_rep2: TdxBarButton;
    rep: TfrxReport;
    clv2StreetName: TcxGridDBColumn;
    clv1Kontragent: TcxGridDBColumn;
    src_kontagent: TDataSource;
    clv2Lock: TcxGridDBColumn;
    clv1SHOWPRIKAZPO: TcxGridDBColumn;
    clv1NUM: TcxGridDBColumn;
    clv1graphlist: TcxGridDBColumn;
    clv2LOCKDATA: TcxGridDBColumn;
    btn_print: TdxBarButton;
    fr: TfrxReport;
    clv2Nomer: TcxGridDBColumn;
    clv1KName: TcxGridDBColumn;
    grp_head: TdxLayoutGroup;
    grplcntr1Group1: TdxLayoutGroup;
    ds_GRAPHLIST: TpFIBDataSet;
    v3: TcxGridDBTableView;
    l3: TcxGridLevel;
    grd3: TcxGrid;
    itm_grd3: TdxLayoutItem;
    btn_create: TcxButton;
    itm_create: TdxLayoutItem;
    src_GRAPHLIST: TDataSource;
    clv3CODE: TcxGridDBColumn;
    clv3YEAR: TcxGridDBColumn;
    clv3KONTRAGENT: TcxGridDBColumn;
    clv3KNAME: TcxGridDBColumn;
    clv3GRAPHTO: TcxGridDBColumn;
    clv3GTNAME: TcxGridDBColumn;
    clv3NOTE: TcxGridDBColumn;
    clv3SHOWPRIKAZPO: TcxGridDBColumn;
    clv3ALOCK: TcxGridDBColumn;
    btn_OutPlan: TcxButton;
    itm_OutPlan: TdxLayoutItem;
    grplcntr1Group2: TdxLayoutGroup;
    clv3SRVDOG: TcxGridDBColumn;
    spl3: TdxLayoutSplitterItem;
    clv1ALOCK: TcxGridDBColumn;
    md_kr: TdxMemData;
    fld__krKR: TStringField;
    fld__krTO: TStringField;
    fld__krV: TStringField;
    fld__krTR: TStringField;
    frds_1: TfrxDBDataset;
    cl_v2structdefect: TcxGridDBColumn;
    btn_passAkt: TdxBarButton;
    cl_v2stat: TcxGridDBColumn;
    btn_pdf: TdxBarButton;
    dlg1: TcxShellBrowserDialog;
    clv1ATYPE: TcxGridDBColumn;
    dxbrsbtm1: TdxBarSubItem;
    btn_PrintAktEx: TdxBarButton;
    v2Column1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn1Click(Sender: TObject);
    procedure ds_osmBeforePost(DataSet: TDataSet);
    procedure btn_syncClick(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_repClick(Sender: TObject);
    procedure pdf1BeginExport(Sender: TObject);
    procedure frxrtfxprt1BeginExport(Sender: TObject);
    procedure frxlsxprt1BeginExport(Sender: TObject);
    procedure btn_rep2Click(Sender: TObject);
    procedure clv1SRVDOGPropertiesEditValueChanged(Sender: TObject);
    procedure v1EditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure ds_HousePlanBeforePost(DataSet: TDataSet);
    procedure clv2LockPropertiesEditValueChanged(Sender: TObject);
    procedure btn_printClick(Sender: TObject);
    procedure grp_headCaptionClick(Sender: TObject);
    procedure grp_headCollapsed(Sender: TObject);
    procedure btn_createClick(Sender: TObject);
    procedure btn_OutPlanClick(Sender: TObject);
    procedure clv1ALOCKPropertiesEditValueChanged(Sender: TObject);
    procedure ds_osmAfterInsert(DataSet: TDataSet);
    procedure btn_passAktClick(Sender: TObject);
    procedure v2StylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure v2CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_pdfClick(Sender: TObject);
    procedure btn_PrintAktExClick(Sender: TObject);
    procedure v2Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    fController: TKontragentController;
    procedure MemTypeCreate;
    procedure StateTypeCreate;
    procedure OpenDs;
    //
    procedure CreateOsmotr;
    function GetIncludeDg: string;
    procedure AddData(Q: TFIBQuery);
    procedure InsertData(SRVDOG, STYPE, SYEAR, ASTATE, KONTRAGENT: Integer;
                                  SHOWPRIKAZPO, GRAPHLIST :Variant);
    function IsExistDog(STYPE, SYEAR, SRVDOG: Integer): Boolean;
    procedure OpenHousePlan;
    procedure SyncHouse;
    procedure SyncFromGraph(graphlist,ShowHouse :Variant);
    function GetHoseStr(dog: Integer): string;
    function GetGraphHoseStr(graph: Integer): string;
    procedure MakeInsertData(houselist: string);
    procedure InsertHouse(ShowHouse, House: Integer; D1, D2: TDate);
    procedure DeleteMissing(houselist: string);
    procedure GetRepData;
    procedure CreateOutPlan;
    procedure HideAutobtn(hide: Boolean = true);
    function isLockActRight: Boolean;
    function isLinkAll(sh: variant): Boolean;
    procedure DisableControl;
    function GetExistPrikaz :string;
    procedure PrintAkt(ExportPDF: Boolean = false);
    procedure PrintAktEx;
    procedure GetTypeTR;
    function  GetNoStruct(house :variant) :WideString;
    procedure CreatePlan;
    function SetParam(var SRVDOG,SHOWDATE,STYPE,SYEAR,STATE,SHOWPRIKAZPO,
                                                  GRAPHLIST :Variant) :Boolean;
    procedure SetRight;
    function closeplan :Boolean;
    procedure Right_ReadOnly;
    procedure Pass_Akt;
    //
    procedure ExportInPDF(showhouse: Variant);
  public
    { Public declarations }
  end;

var
  ShowHouseForm: TShowHouseForm;

implementation

uses dezCommon, LoadingSplash, dezInfo;
{$R *.dfm}

procedure TShowHouseForm.btn1Click(Sender: TObject);
begin
  {if editm_type.EditValue = 2 then  //внеплановый
    CreateOutPlan
  else
  if ActiveUserType=1 then
    CreateOsmotr else
    cmShowMessage('Вы можете создавать только внеплановый осмотр');}
end;

{ -------------------------------------------------------------------------------
  CreateOutPlan|Создаем внеплановый осмотр
  ------------------------------------------------------------------------------- }
procedure TShowHouseForm.CreateOutPlan;
var
  F: TOutPlanForm;
begin
  F := TOutPlanForm.Create(Application);
  F.SYEAR := edit_year.EditValue;
  F.ShowModal;
  if F.ModalResult = mrOk then
    ds_osm.CloseOpen(true);
  F.Free;
end;
{------------------------------------------------------------------------------
 Создание осмотра
-------------------------------------------------------------------------------}
function TShowHouseForm.SetParam(var SRVDOG,SHOWDATE,STYPE,SYEAR,STATE,
                                     SHOWPRIKAZPO, GRAPHLIST :Variant) :Boolean;
begin
  Result:=True;
  SRVDOG :=v3.GetColumnByFieldName('SRVDOG').EditValue;
  if SRVDOG=null then begin
    Application.MessageBox('Отсутствует договор в приказе ПО.' + #13#10 +
      'Создание акта осмотра отменено.', 'Внимание', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
    Result:=False;
    Exit;
  end;
  SHOWDATE :=Date;
  case v3.GetColumnByFieldName('GRAPHTO').EditValue of
    15 : STYPE :=0;
    16 : STYPE :=1;
    else STYPE :=2;
  end;
  SYEAR := v3.GetColumnByFieldName('YEAR').EditValue;
  STATE :=0;
  SHOWPRIKAZPO := v3.GetColumnByFieldName('SHOWPRIKAZPO').EditValue;
  if SHOWPRIKAZPO=null then begin
    Application.MessageBox('В графике отсутствует номер приказа ПО.' + #13#10 +
      'Создание акта осмотра отменено.', 'Внимание', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
    Result:=False;
    Exit;
  end;
  GRAPHLIST :=v3.GetColumnByFieldName('CODE').EditValue;
  if ds_osm.Locate('graphlist',GRAPHLIST,[]) then begin
    Application.MessageBox('На основании данного графика уже создан осмотр' +
    #13#10 +'Создание акта осмотра отменено.', 'Внимание', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
    Result:=False;
    Exit;
  end;
  // проверить на имеющийся уже в списке данный осмотр Locate
  with ds_GRAPHLIST do
    if IsExistDog(STYPE, SYEAR, SRVDOG) then
    begin
      Application.MessageBox('Данный осмотр уже имеется в списке!'
      , 'Ошибка', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
      Result:=False;
      Exit;
    end;
end;

procedure TShowHouseForm.SetRight;
begin
  case ActiveRole of   //блокировка акта
    1 :clv1ALOCK.Options.Editing:=True;
    3 :clv1ALOCK.Options.Editing:=True;
    7 :clv1ALOCK.Options.Editing:=True;
    22 :clv1ALOCK.Options.Editing:=True;
    else clv1ALOCK.Options.Editing:=false;
  end;
  if ActiveUserType = 1 then begin
     btn_passAkt.Enabled := true;
     clv1SHOWDATE.Options.Editing:= false;
  end else begin
     btn_passAkt.Enabled := false;
     clv1SHOWDATE.Options.Editing:= True;
  end;
end;

procedure TShowHouseForm.CreatePlan;
var
  SRVDOG,SHOWDATE,STYPE,SYEAR,STATE,SHOWPRIKAZPO,GRAPHLIST :Variant;
begin
  if SetParam(SRVDOG,SHOWDATE,STYPE,SYEAR,STATE,SHOWPRIKAZPO,GRAPHLIST) then
  with ds_osm do begin
    Append;
      FN('SRVDOG').AsVariant:=SRVDOG;
      FN('SHOWDATE').AsVariant:=SHOWDATE;
      FN('STYPE').AsVariant:=STYPE;
      FN('SYEAR').AsVariant:=SYEAR;
      FN('STATE').AsVariant:=STATE;
      FN('SHOWPRIKAZPO').AsVariant:=SHOWPRIKAZPO;
      FN('GRAPHLIST').AsVariant:=GRAPHLIST;
    Post;
  end;
  with ds_GRAPHLIST do begin
    Close;
    if ActiveUserType = 1 then begin// подрядчик
      MainWhereClause:='GL.KONTRAGENT=:kontr and GL.alock=1 and '+
      'GL.GRAPHTO in(15,16) and '+
      'gl.code not in (select iif(graphlist is null, -1,graphlist) '+
      'cod from SHOWHOUSE)';
      ParamByName('kontr').AsVariant:=ActiveKontragent;
    end else
      MainWhereClause:='GL.alock=1 and '+
      'GL.GRAPHTO in(15,16) and '+
      'gl.code not in (select iif(graphlist is null, -1,graphlist) '+
      'cod from SHOWHOUSE)';
    Open;
  end;
end;

procedure TShowHouseForm.btn_createClick(Sender: TObject);
begin
  if Application.MessageBox('Вы действительно хотите создать осмотр?',
    'Внимание', MB_OKCANCEL + MB_ICONQUESTION + MB_DEFBUTTON2 + MB_TOPMOST) =
    IDOK then
  begin
    CreatePlan;
  end;
end;

procedure TShowHouseForm.btn_OutPlanClick(Sender: TObject);
begin
  if Application.MessageBox('Вы действительно хотите создать ВНЕПЛАНОВЫЙ осмотр?',
    'Внимание', MB_OKCANCEL + MB_ICONQUESTION + MB_DEFBUTTON2 + MB_TOPMOST) =
    IDOK then
  begin
    CreateOutPlan;
  end;
end;

procedure TShowHouseForm.btn_passAktClick(Sender: TObject);
begin
  Pass_Akt;
end;

procedure TShowHouseForm.btn_pdfClick(Sender: TObject);
begin
  if v1.GetColumnByFieldName('CODE').EditValue = null then Exit;
  ExportInPDF(v1.GetColumnByFieldName('CODE').EditValue);
end;

procedure TShowHouseForm.btn_PrintAktExClick(Sender: TObject);
begin
  PrintAktEx;
end;

procedure TShowHouseForm.btn_printClick(Sender: TObject);
begin
  PrintAkt;
end;

function  TShowHouseForm.GetNoStruct(house :variant) :WideString;
var
  Q :TFIBQuery;
  sql: string;
begin
  Result:='';
  sql:='SELECT LIST(structdefect, '#39','#39') sd FROM HOUSESTRUCT' + #13#10 +
      'where house=:hs';
    Q:=GetQueryForUse(cmDB.RT,sql);
    Q.ParamByName('hs').AsVariant:=house;
    Q.ExecQuery;
  if Q.FN('sd').AsVariant<>null then
  Result:=','+Q.FN('sd').AsWideString+',';
end;
{ -------------------------------------------------------------------------------
  btn_repClick|Печать отчета
  ------------------------------------------------------------------------------- }
procedure TShowHouseForm.Pass_Akt;
var
  Akt :Variant;
begin
  Akt:= v2.GetColumnByFieldName('CODE').EditValue;
  if Akt = null then Exit;
  // проверка блокирования акта
  if v1.GetColumnByFieldName('ALOCK').EditValue = 1 then
    raise EMyException.Create('   Акт заблокирован!'+#10#13+
                              'Редактирование запрещено.');
  if v2.GetColumnByFieldName('LOCK').EditValue = 1 then
    raise EMyException.Create('    Акт закрыт СЭ!'+#10#13+
                              'Редактирование запрещено.');
  // проверка уже установленной даты
  if ActiveUserType = 1 then  begin
    if v2.GetColumnByFieldName('SHOWDATE').EditValue <> null then
      raise EMyException.Create('    Акт закрыт СЭ!'+#10#13+
                                'Редактирование запрещено.');

    if Application.MessageBox('Будет установлена текущая дата на указанный акт.'
      + #13#10 + 'Вы не сможете в дальнейшем изменить дату сдачи акта.' + #13#10
      + 'Установить дату сдачи акта?', 'Внимание!', MB_YESNO + MB_ICONWARNING) =
      IDYES then
    begin
      // Установка даты
      with ds_HousePlan do begin
        Edit;
        FN('SHOWDATE').AsDateTime:=Date;
        Post;
      end;
    end;
  end else begin
    // только ДЕЗ может изменить дату
    if Application.MessageBox('Вы действительно хотите изменить дату сдачи акта?',
      'Предупреждение', MB_YESNO + MB_ICONQUESTION) = IDYES then
    begin
      // Установка даты
      with ds_HousePlan do begin
        Edit;
        FN('SHOWDATE').AsDateTime:=Date;
        Post;
      end;
    end;
  end;
end;

procedure TShowHouseForm.PrintAkt(ExportPDF: Boolean);
var
  fdb: TfrxFIBDatabase;
  Qfr, Gl, Q_zam :TfrxFIBQuery;
  Q: TFIBQuery;
  Kr :string;
  def :WideString;

  function GetKRList :string;
  var
    Q1 :TFIBQuery;
    s: string;
    ATYPE: Variant;
  begin
    s:='';
    ATYPE:= v1.GetColumnByFieldName('ATYPE').EditValue;
    Q1:=GetQueryForUse(cmDB.RT,
     'SELECT hw.CODE, ' + #13#10 +
    '       hw.HOUSE, ' + #13#10 +
    '       hw.MLIST, m.name MName,' + #13#10 +
    '       hw.Y, ' + #13#10 +
    '       hw.ENT, ' + #13#10 +
    '       hw.STREET' + #13#10 +
    'FROM HOUSEKWORK hw' + #13#10 +
    'left outer join mlist m on m.code=hw.mlist');
    if ATYPE<>null then
    Q1.MainWhereClause:= 'hw.house=:house and ((hw.SRVDOGTYPE=:ATYPE) or (hw.SRVDOGTYPE is null))' else
    Q1.MainWhereClause:= 'hw.house=:house';
    Q1.ParamByName('house').AsVariant:=
                                    v2.GetColumnByFieldName('House').EditValue;
    if ATYPE<>null then
      Q1.ParamByName('ATYPE').AsVariant:= ATYPE;
    Q1.ExecQuery;
    while not Q1.Eof do
    begin
      s:=s+'     '+Q1.FN('Y').AsString+' '+Q1.FN('MName').AsString+' '
          +Q1.FN('ENT').AsString+#13#10;
      Q1.Next;
    end;
    Result:=s;
    FreeQueryForUse(Q1);
  end;

  //менеджер СЭ
  function GetMSE :Variant;
  var
    Q :TFIBQuery;
  begin
    Q:=GetQueryForUse(cmDB.RT,'select (p.f||'' ''||p.i||'' ''||p.o) mse' +
                              #13#10 +
                              'from mhouse mh' + #13#10 +
                              'left outer join worker w on w.code=mh.worker' +
                              #13#10 +
                              'left outer join piple p on p.code=w.piple' +
                              #13#10 +
                              'where mh.kontragent=1 and mh.house=:house');
    Q.ParamByName('house').AsVariant:=v2.GetColumnByFieldName('House').EditValue;
    Q.ExecQuery;
    if Q.FN('mse').AsVariant=null then
    Result:=' ' else
    Result:=Q.FN('mse').AsVariant;
  end;

  //сотрудник ПО закрепленный за домом
  function GetPSE :Variant;
  var
    Q :TFIBQuery;
  begin
    Q:=GetQueryForUse(cmDB.RT,'select (p.f||'' ''||p.i||'' ''||p.o) pse' +
                              #13#10 +
                              'from mhouse mh' + #13#10 +
                              'left outer join worker w on w.code=mh.worker' +
                              #13#10 +
                              'left outer join piple p on p.code=w.piple' +
                              #13#10 +
                              'where mh.kontragent=:kontr and mh.house=:house');
    Q.ParamByName('kontr').AsVariant:=
                                v1.GetColumnByFieldName('kontragent').EditValue;
    Q.ParamByName('house').AsVariant:=v2.GetColumnByFieldName('House').EditValue;
    Q.ExecQuery;
    if Q.FN('pse').AsVariant=null then
    Result:=' ' else
    Result:=Q.FN('pse').AsVariant;
  end;

begin
  if v2.GetColumnByFieldName('House').EditValue = null then Exit;
  def:=GetNoStruct(v2.GetColumnByFieldName('House').EditValue);
  fr.LoadFromFile(ExtractFilePath(Application.ExeName)+'rep\rep1.fr3');
  fr.Variables['varRep'] := 1;

  //with TcxLookupComboBoxProperties(clv2HOUSE.Properties).Grid.DataController do
  //fr.Variables['varHouse'] := #39 + Values[FocusedRecordIndex, 1] + #39;
  fr.Variables['varHouse'] := #39 + v2.GetColumnByFieldName('NOMER')
    .EditValue + #39;
  fr.Variables['varHouseCod'] := v2.GetColumnByFieldName('House').EditValue;
  fr.Variables['varStreet'] := #39 + v2.GetColumnByFieldName('STREETNAME')
    .EditValue + #39;
  fr.Variables['varAkt'] := v2.GetColumnByFieldName('SHOWHOUSE').EditValue;
  Kr:= GetKRList;
  if Kr<>'' then
  fr.Variables['varKR'] := Kr else
  fr.Variables['varKR'] := #39'...'#39;
  Q := GetQueryForUse(cmDB.RT, 'select ATYPE' + #13#10 +
                              'from SRVDOG' + #13#10 +
                              'where KONTRAGENT=:KONTRAGENT and "ACTIVE"=1');
  Q.ParamByName('KONTRAGENT').AsInteger := v1.GetColumnByFieldName('KONTRAGENT').EditValue;
  Q.ExecQuery;
  //get director for kontragent
  dzPO.GetInfo(v1.GetColumnByFieldName('KONTRAGENT').EditValue);
  fr.Variables['varDir'] := #39 +dzPO.Dir + #39;

  //if Q.FN('ATYPE').AsInteger = 1 then fr.Variables['varSType'] := 1 else
  //   fr.Variables['varSType'] :=0;
  //fr.Variables['varSType'] := Q.FN('ATYPE').AsInteger;
  if v1.FN('ATYPE') = null then
     fr.Variables['varSType'] :=0 else
  case v1.GetColumnByFieldName('ATYPE').EditValue of
    1: fr.Variables['varSType'] :=1;  //инженерного оборудования (электрическая часть
    4: fr.Variables['varSType'] :=3;  //инженерного оборудования (внутридомовое газовое оборудование
    2: fr.Variables['varSType'] :=2;  //инженерного оборудования (Лифтовое оборудование)
    else fr.Variables['varSType'] :=0;  //строительных конструкций и инженерного оборудования
  end;
  //fr.Variables['varSType'] :=v1.GetColumnByFieldName('STYPE').EditValue;

  with TcxLookupComboBoxProperties(clv1STYPE.Properties).Grid.DataController do
  fr.Variables['varASType'] :=#39+ Values[FocusedRecordIndex, 1] +#39;

  fr.Variables['varMSE'] :=#39+GetMSE+#39;
  fr.Variables['varPSE'] :=#39+GetPSE+#39;

  //with TcxLookupComboBoxProperties(clv1KONTRAGENT.Properties).Grid.DataController do
  // fr.Variables['varKontrName'] :=#39 + Values[FocusedRecordIndex, 1]+ #39;
   fr.Variables['varKontrName'] :=#39 + v1.GetColumnByFieldName('KName').EditValue+ #39;
  //
  Gl := fr.FindObject('Gl') as TfrxFIBQuery;
  Gl.Close;
  Gl.SQL.Text:='SELECT g.D3 FROM GRAPHSPEC g' + #13#10 +
              'where g.GRAPHLIST=:gl and g.HOUSE=:house';
  Gl.ParamByName('gl').Value:=v1.GetColumnByFieldName('graphlist').EditValue;
  Gl.ParamByName('house').Value:=v2.GetColumnByFieldName('HOUSE').EditValue;
  GetTypeTR;
    //
  Qfr := fr.FindObject('QDef') as TfrxFIBQuery;
  if def<>'' then
  begin
    Qfr.Close;
    Qfr.SQL.Text:='select CODE, SHOWSTRUCT, NAME, NUM, ED' + #13#10 +
                  'from STRUCTDEFECT' + #13#10 +
                  'where SHOWSTRUCT=:mas_code' + #13#10 +
                  ' and ( '#39+def+#39'not containing '','' || CODE || '','')';
  end else
  begin
    Qfr.Close;
    Qfr.SQL.Text:='select CODE, SHOWSTRUCT, NAME, NUM, ED' + #13#10 +
                  'from STRUCTDEFECT' + #13#10 +
                  'where SHOWSTRUCT=:mas_code';
  end;
    //
  Q_zam := fr.FindObject('Q_zam') as TfrxFIBQuery;
  Q_zam.ParamByName('sh').Value:=v2.GetColumnByFieldName('SHOWHOUSE').EditValue;
  Q_zam.ParamByName('h').Value:=v2.GetColumnByFieldName('House').EditValue;
  //
  fdb := fr.FindObject('FIBDatabase1') as TfrxFIBDatabase;
  with fdb do
  begin
    DatabaseName := cmDB.DB.DBName;
    Params.Values['user_name'] := cmDB.DB.DBParams.Values['user_name'];
    Params.Values['password'] := cmDB.DB.DBParams.Values['password'];
    Params.Values['sql_role_name'] := cmDB.DB.DBParams.Values['sql_role_name'];
    SQLDialect := 3;
    Connected := true;
  end;
  fr.ShowReport();
  //FreeQueryForUse(Q);
end;

procedure TShowHouseForm.PrintAktEx;
var
  fdb: TfrxFIBDatabase;
  Q: TFIBQuery;
  Qfr, Gl :TfrxFIBQuery;
  def :WideString;
  d1,d2, STYPE, SYEAR, GRAPHLIST, HOUSE:Variant;
begin
  STYPE:= v1.GetColumnByFieldName('STYPE').EditValue;
  SYEAR:= v1.GetColumnByFieldName('SYEAR').EditValue;
  GRAPHLIST:= v1.GetColumnByFieldName('GRAPHLIST').EditValue;
  HOUSE:= v2.GetColumnByFieldName('HOUSE').EditValue;
  def:=GetNoStruct(HOUSE);
  fr.LoadFromFile('rep\rep1.fr3');
  fr.Variables['varRep'] := 2;
  fr.Variables['varHouse'] := #39 + v2.GetColumnByFieldName('NOMER')
    .EditValue + #39;
  fr.Variables['varHouseCod'] := v2.GetColumnByFieldName('House').EditValue;
  fr.Variables['varStreet'] := #39 + v2.GetColumnByFieldName('STREETNAME')
    .EditValue + #39;
  fr.Variables['varAkt'] := v2.GetColumnByFieldName('SHOWHOUSE').EditValue;
  Q := GetQueryForUse(cmDB.RT, 'select s.STYPE from SHOWSTRUCT s' +
      ' left outer join structdefect sd on s.code=sd.showstruct' +
      ' where sd.code=:cod');
  Q.ParamByName('cod').AsInteger := v2.GetColumnByFieldName('STRUCTDEFECT')
    .EditValue;
  Q.ExecQuery;
  fr.Variables['varSType'] := Q.FN('STYPE').AsInteger;
  //
  Qfr := fr.FindObject('QDef') as TfrxFIBQuery;
  if def<>'' then
  begin
    Qfr.Close;
    Qfr.SQL.Text:='select CODE, SHOWSTRUCT, NAME, NUM, ED' + #13#10 +
                  'from STRUCTDEFECT' + #13#10 +
                  'where SHOWSTRUCT=:mas_code' + #13#10 +
                  ' and ( '#39+def+#39'not containing '','' || CODE || '','')';
  end else
  begin
    Qfr.Close;
    Qfr.SQL.Text:='select CODE, SHOWSTRUCT, NAME, NUM, ED' + #13#10 +
                  'from STRUCTDEFECT' + #13#10 +
                  'where SHOWSTRUCT=:mas_code';
  end;
  //
  if STYPE='весна' then
     fr.Variables['varD2'] :=#39+String('31.07.'+VarToStr(SYEAR))+#39;
  if STYPE='осень' then
     fr.Variables['varD2'] :=#39+String('31.12.'+VarToStr(SYEAR))+#39;
  //
  if GRAPHLIST <> null then begin
    Gl := fr.FindObject('Gl') as TfrxFIBQuery;
    Gl.Close;
    Gl.SQL.Text:='SELECT g.D3 FROM GRAPHSPEC g' + #13#10 +
                'where g.GRAPHLIST=:gl and g.HOUSE=:house';
    Gl.ParamByName('gl').Value:=GRAPHLIST;
    Gl.ParamByName('house').Value:=v2.GetColumnByFieldName('House').EditValue;
  end;
 { case STYPE of
    0 : begin
          d1:=String('01.01.'+VarToStr(SYEAR));
          fr.Variables['varD2'] :=#39+String('31.07.'+VarToStr(SYEAR))+#39;
        end;
    1 : begin
          d1:=String('01.08.'+VarToStr(SYEAR));
          fr.Variables['varD2'] :=#39+String('31.12.'+VarToStr(SYEAR))+#39;
        end;
  end;}
  //
  fdb := fr.FindObject('FIBDatabase1') as TfrxFIBDatabase;
  with fdb do
  begin
    DatabaseName := cmDB.DB.DBName;
    Params.Values['user_name'] := cmDB.DB.DBParams.Values['user_name'];
    Params.Values['password'] := cmDB.DB.DBParams.Values['password'];
    Params.Values['sql_role_name'] := cmDB.DB.DBParams.Values['sql_role_name'];
    SQLDialect := 3;
    Connected := true;
  end;

  fr.ShowReport();
  FreeQueryForUse(Q);
end;

procedure TShowHouseForm.Right_ReadOnly;
var
  i :Integer;
begin
  for i:=0 to self.ComponentCount -1 do begin
    if Self.Components[i].ClassType = TcxGridDBTableView then
      with (Self.Components[i] as TcxGridDBTableView) do begin
        OptionsData.Editing :=false;
        OptionsData.Inserting:= false;
        OptionsData.Deleting:= false;
        OptionsData.Appending:= false;
      end;
  end;
  btn_sync.Visible:= ivNever;
  grp_head.Visible:= false;
end;

procedure TShowHouseForm.btn_rep2Click(Sender: TObject);
begin
  GetRepData;
end;

procedure TShowHouseForm.GetRepData;
var
  fdb: TfrxFIBDatabase;
begin
  rep.LoadFromFile('rep\repPO.fr3');
  rep.Variables['varOsm'] := v1.GetColumnByFieldName('SRVDOG').EditValue;
  rep.Variables['varAct'] := v1.GetColumnByFieldName('CODE').EditValue;
  fdb := rep.FindObject('FIBDatabase1') as TfrxFIBDatabase;
  with fdb do
  begin
    DatabaseName := cmDB.DB.DBName;
    Params.Values['user_name'] := cmDB.DB.DBParams.Values['user_name'];
    Params.Values['password'] := cmDB.DB.DBParams.Values['password'];
    Params.Values['sql_role_name'] := cmDB.DB.DBParams.Values['sql_role_name'];
    SQLDialect := 3;
    Connected := true;
  end;
  rep.ShowReport();
end;

procedure TShowHouseForm.GetTypeTR;
var
  Q_TR, Q_KR,Q_TO: TFIBQuery;
  house, showhouse: Variant;
begin
  md_kr.Close; md_kr.Open;
  house:= gFN(v2,'HOUSE');
  showhouse:= gFN(v2,'SHOWHOUSE');
  Q_TR:= GetQueryForUse(cmDB.RT,
      'select m.name TR, s.v' + #13#10 +
      'from showresult s' + #13#10 +
      'left outer join mlist m on s.mlist=m.code' + #13#10 +
      'left outer join STRUCTDEFECT sd on s.structdefect=sd.code' + #13#10 +
      'left outer join showstruct ss on sd.showstruct=ss.code' + #13#10 +
      'where s.SHOWHOUSE=:srvHouse and s.house=:house and s.rtype = 1' + #13 +
      #10 + 'and s.v>0 order by s.v');
  Q_TR.ParamByName('srvHouse').AsVariant:=showhouse;
  Q_TR.ParamByName('house').AsVariant:= house;
  Q_TR.ExecQuery;
  //
  Q_KR:= GetQueryForUse(cmDB.RT,
      'select m.name KR' + #13#10 +
      'from showresult s' + #13#10 +
      'left outer join mlist m on s.mlist=m.code' + #13#10 +
      'left outer join STRUCTDEFECT sd on s.structdefect=sd.code' + #13#10 +
      'left outer join showstruct ss on sd.showstruct=ss.code' + #13#10 +
      'where s.SHOWHOUSE=:srvHouse and s.house=:house and s.rtype = 2');
  Q_KR.ParamByName('srvHouse').AsVariant:=showhouse;
  Q_KR.ParamByName('house').AsVariant:= house;
  Q_KR.ExecQuery;
  //
  Q_TO:= GetQueryForUse(cmDB.RT,
      'select m.name STO' + #13#10 +
      'from showresult s' + #13#10 +
      'left outer join mlist m on s.mlist=m.code' + #13#10 +
      'left outer join STRUCTDEFECT sd on s.structdefect=sd.code' + #13#10 +
      'left outer join showstruct ss on sd.showstruct=ss.code' + #13#10 +
      'where s.SHOWHOUSE=:srvHouse and s.house=:house and s.rtype = 0');
  Q_TO.ParamByName('srvHouse').AsVariant:=showhouse;
  Q_TO.ParamByName('house').AsVariant:= house;
  Q_TO.ExecQuery;
  //
  with Q_TR do
  while not Eof do begin
    md_kr.Append;
    md_kr.FieldByName('TR').AsString:= FN('TR').AsString;
    md_kr.FieldByName('V').AsVariant:= FN('V').AsVariant;
    md_kr.Post;
    Next;
  end;
  md_kr.First;
  with Q_KR do
  while not Eof do begin
    if md_kr.Eof then md_kr.Append else
    md_kr.Edit;
    md_kr.FieldByName('KR').AsString:= FN('KR').AsString;
    md_kr.Post;
    Next;
    if not md_kr.Eof then md_kr.Next;
  end;
  md_kr.First;
  with Q_TO do
  while not Eof do begin
    if md_kr.Eof then md_kr.Append else
    md_kr.Edit;
    md_kr.FieldByName('TO').AsString:= FN('STO').AsString;
    md_kr.Post;
    Next;
    if not md_kr.Eof then md_kr.Next;
  end;
  FreeQueryForUse(Q_TR);
  FreeQueryForUse(Q_KR);
  FreeQueryForUse(Q_TO);
end;

procedure TShowHouseForm.grp_headCaptionClick(Sender: TObject);
begin
  grp_head.Expanded:=not grp_head.Expanded;
end;

procedure TShowHouseForm.grp_headCollapsed(Sender: TObject);
begin
  if grp_head.Expanded then
  grp_head.CaptionOptions.Text:='Графики проведения осмотров' else
  grp_head.CaptionOptions.Text:='';
end;

procedure TShowHouseForm.btn_repClick(Sender: TObject);
var
  fdb: TfrxFIBDatabase;
  function KontName :Variant;
  var
    Q :TFIBQuery;
  begin
    Q:=GetQueryForUse(cmDB.RT,'select name from kontragent where code=:cod');
    Q.Options:=[qoStartTransaction];
    Q.ParamByName('cod').AsVariant:=
                                v1.GetColumnByFieldName('kontragent').EditValue;
    Q.ExecQuery;
    Result:=Q.FN('name').AsVariant;
    FreeQueryForUse(Q);
  end;

begin
  frReport.LoadFromFile('rep\ShowHouse.fr3');
  frReport.Variables['varOsm'] := v1.GetColumnByFieldName('Code').EditValue;
  frReport.Variables['varKont'] :=#39+KontName+#39;
  fdb := frReport.FindObject('DB') as TfrxFIBDatabase;
  with fdb do
  begin
    DatabaseName := cmDB.DB.DBName;
    Params.Values['user_name'] := cmDB.DB.DBParams.Values['user_name'];
    Params.Values['password'] := cmDB.DB.DBParams.Values['password'];
    Params.Values['sql_role_name'] := cmDB.DB.DBParams.Values['sql_role_name'];
    SQLDialect := 3;
    Connected := true;
  end;
  frReport.ShowReport();
end;

procedure TShowHouseForm.btn_syncClick(Sender: TObject);
begin
  if ds_osm.FN('ALOCK').AsVariant=1 then begin
    Application.MessageBox('            Акт заблокирован. ' + #13#10 +
      '  Синхронизация не возможна!', 'Ошибка', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
    Exit;
  end;
  // синхронизировать
  if ds_osm.FN('STYPE').AsVariant=2 then
  SyncHouse else
  if (ds_osm.FN('STYPE').AsVariant=0) or (ds_osm.FN('STYPE').AsVariant=1) then
  SyncFromGraph(ds_osm.FN('GRAPHLIST').AsVariant,ds_osm.FN('CODE').AsVariant);
end;

function TShowHouseForm.closeplan: Boolean;
begin
  Result:=true;
  v2.BeginUpdate;
  SplashVisibility(true,'проверяем акты...');
  try
    with ds_HousePlan do begin
      First;
      while not Eof do begin
        if FN('lock').AsVariant<>1 then begin
          Result:=false;
          Exit;
        end;
        Next;
      end;
    end;
  finally
    SplashVisibility(false);
    v2.EndUpdate;
  end;
end;

procedure TShowHouseForm.clv1ALOCKPropertiesEditValueChanged(Sender: TObject);
begin
  if not closeplan then begin
    Application.MessageBox('Не все планы осмотров закрыты!', 'Ошибка', MB_OK +
      MB_ICONSTOP + MB_DEFBUTTON2 + MB_TOPMOST);
    v1.DataController.Cancel;
  end else
  v1.DataController.Post();
end;

procedure TShowHouseForm.clv1SRVDOGPropertiesEditValueChanged(Sender: TObject);
begin
  { if v1.GetColumnByFieldName('SRVDOG').EditValue = null then
    Exit; }
  with TcxLookupComboBox(v1.Controller.EditingController.Edit)
    .Properties.Grid.DataController do
    v1.GetColumnByFieldName('Kontragent').EditValue := Values
      [FocusedRecordIndex, 4];
   //Self.Restore;
end;

procedure TShowHouseForm.clv2LockPropertiesEditValueChanged(Sender: TObject);
begin
  if clv2Lock.EditValue=1 then
  clv2LOCKDATA.EditValue:=Date;
  if clv2Lock.EditValue=0 then
  clv2LOCKDATA.EditValue:=null;
 // if ds_HousePlan.FN('LOCK').AsVariant = 1 then
    {if not isLinkAll(ds_HousePlan.FN('SHOWHOUSE').AsVariant) then
    begin
      cmShowMessage('Не для всех записей акта установленна связь с журналом!',
        true);
      //Abort;
      clv2Lock.EditValue:=0;
    end;}
  v2.DataController.Post();
end;

procedure TShowHouseForm.SyncFromGraph(graphlist,ShowHouse :Variant);
var
  House, D1, D2 :Variant;
 Q :TFIBQuery;

 procedure NotExistHouse;
 var
   houseStr :Variant;
   Q1,Q2 :TFIBQuery;
 begin
   try
     Q1:=GetQueryForUse(cmDB.RT,
      'SELECT List(sh.code, '','') cod' + #13#10 +
      'FROM SHOWHOUSEPLAN sh' + #13#10 +
      'left outer join GRAPHSPEC GS on gs.house=sh.house and gs.graphlist=:gls'
      + #13#10 + 'where sh.showhouse=:shs and gs.house IS NULL');
     Q1.Options:=[qoStartTransaction];
     Q1.ParamByName('gls').AsVariant:=graphlist;
     Q1.ParamByName('shs').AsVariant:=ShowHouse;
     Q1.ExecQuery;
     houseStr:=Q1.FN('cod').AsVariant;
     Q2:=GetQueryForUse(cmDB.WT,
          'delete from SHOWHOUSEPLAN where code in ('+VarToStr(houseStr)+')');
     Q2.Options:=[qoStartTransaction,qoAutoCommit];
     If houseStr=null then Exit;
     Q2.ExecQuery;
   finally
     FreeQueryForUse(Q1);
     FreeQueryForUse(Q2);
   end;

 end;

begin
  if graphlist=null then
  if (v1.GetColumnByFieldName('graphlist').EditValue = null) or
     (v1.GetColumnByFieldName('graphlist').EditValue = Unassigned)
  then Exit;
  //удаляем отсутствующие в графике дома
  NotExistHouse;
  //добавляем отсутствующие в акте дома
  Q:=GetQueryForUse(cmDB.RT,'select GS.CODE, GS.GRAPHLIST, GS.STREET, ' +
                              ' GS.HOUSE,' + #13#10 +
                              ' GS.D1, GS.D2, GS.D3' + #13#10 +
                              ' from GRAPHSPEC GS');
  Q.MainWhereClause:='GS.GRAPHLIST = :cod';
  Q.ParamByName('cod').AsVariant:=graphlist;
  Q.ExecQuery;
  while not Q.Eof do
  begin
    House:=Q.FN('HOUSE').AsVariant;
    D1:=Q.FN('D1').AsVariant;
    D2:=Q.FN('D2').AsVariant;
    InsertHouse(ShowHouse, House, D1, D2);
    Q.Next;
  end;
  OpenHousePlan;
  FreeQueryForUse(Q);
end;

procedure TShowHouseForm.SyncHouse;
var
  houselist: string;
begin
  SplashVisibility(true,'Сихронизируем с договором');
  try
  // получаем дома по договору
  if v1.GetColumnByFieldName('SRVDOG').EditValue = null then
    Exit;
  houselist := GetHoseStr(v1.GetColumnByFieldName('SRVDOG').EditValue);
  // формируем данные для вставки
  if houselist <> '' then
    MakeInsertData(houselist);
  //else
    //Exit;
  // вставляем
  finally
    SplashVisibility(false);
  end;
end;

procedure TShowHouseForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  OpenHousePlan;
end;

procedure TShowHouseForm.v1EditKeyDown(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
  Shift: TShiftState);
begin
  with Sender.Controller do
    if FocusedItem.IsLast and (Key = VK_RETURN) then
    begin
      Key := 0;
      Sender.DataController.Post;
    end;
end;

procedure TShowHouseForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_UP) or (Key = vk_down) then
    OpenHousePlan;
  case key of
    VK_UP :OpenHousePlan;
    vk_down :OpenHousePlan;
    VK_INSERT :grp_head.Expanded:=true;
  end;
end;

procedure TShowHouseForm.v2CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  {dzAct.ShowHouse:=v2.GetColumnByFieldName('SHOWHOUSE').EditValue;
  dzAct.SaveRepPDF(v2.GetColumnByFieldName('CODE').EditValue,fr,pdf1,
                   md_kr,'rep\rep1.fr3','c:\tmp\'); }
end;

procedure TShowHouseForm.v2Column1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Pass_Akt;
end;

procedure TShowHouseForm.v2StylesGetContentStyle(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  out AStyle: TcxStyle);
begin
 if ARecord.Values[cl_v2stat.Index] = 1 then
   AStyle := cmDb.styl1;
end;

function TShowHouseForm.GetGraphHoseStr(graph: Integer): string;
var
  Q: TFIBQuery;
  sql: string;
begin
  Result := '';
  sql := 'select LIST(HOUSE,'#39','#39') HouseList from SRVDOGHOUSE' +
    ' where SRVDOG = :graph';
  Q := GetQueryForUse(cmDB.RT, sql);
  Q.ParamByName('graph').AsInteger := graph;
  Q.ExecQuery;
  Result := Q.FN('HouseList').AsWideString;
  FreeQueryForUse(Q);
end;
{ -------------------------------------------------------------------------------
  GetHoseStr|Получаем дома по договору
  ------------------------------------------------------------------------------- }
function TShowHouseForm.GetHoseStr(dog: Integer): string;
var
  Q: TFIBQuery;
  sql: string;
begin
  Result := '';
  sql := 'select LIST(HOUSE,'#39','#39') HouseList from SRVDOGHOUSE' +
    ' where SRVDOG = :dog';
  Q := GetQueryForUse(cmDB.RT, sql);
  Q.ParamByName('dog').AsInteger := dog;
  Q.ExecQuery;
  Result := Q.FN('HouseList').AsWideString;
  FreeQueryForUse(Q);
end;

{ -------------------------------------------------------------------------------
  MakeInsertData|Формируем данные для вставки/обновления
  ------------------------------------------------------------------------------- }
procedure TShowHouseForm.MakeInsertData(houselist: string);
var
  i: Integer;
  ShowHouse, House: Integer;
  D1, D2: TDate;
begin
  // удаляем
  DeleteMissing(houselist);
  // ссылка на план осмотра
  ShowHouse := v1.GetColumnByFieldName('CODE').EditValue;
  // даты
    if v1.GetColumnByFieldName('STYPE').EditValue = 0 then // весна
    begin
      D1 := StrToDate('01.03.2011');
      D2 := StrToDate('01.06.2011');
    end
    else
    begin
      D1 := StrToDate('01.08.2011');
      D2 := StrToDate('01.11.2011');
    end;

  for i := 1 to cmWordCount(houselist, ',') do
  begin
    House := StrToInt(cmGetWord(houselist, i, ','));
    InsertHouse(ShowHouse, House, D1, D2);
  end;
  // переоткрывем датасет
  OpenHousePlan;
end;

{ -------------------------------------------------------------------------------
  DeleteMissing|Удаляем отсутствующие
  ------------------------------------------------------------------------------- }
procedure TShowHouseForm.DeleteMissing(houselist: string);
var
  Q: TFIBQuery;
  sql: string;
begin
  sql :=
    'DELETE FROM SHOWHOUSEPLAN  where showhouse=:sh and house not in ('
    + houselist + ')';
  if not cmDB.WT.Active then
    cmDB.WT.StartTransaction;
  Q := GetQueryForUse(cmDB.WT, sql);
  Q.ParamByName('sh').AsInteger := v1.GetColumnByFieldName('CODE').EditValue;
  Q.ExecQuery;
  cmDB.WT.Commit;
  FreeQueryForUse(Q);
end;

procedure TShowHouseForm.DisableControl;
begin
  edit_year.Visible:=ivNever;
  btn1.Visible:=ivNever;
  editm_type.Visible:=ivNever;
end;

{ -------------------------------------------------------------------------------
  InsertHouse|Вставляем /обновляем данные
  ------------------------------------------------------------------------------- }
procedure TShowHouseForm.InsertHouse(ShowHouse, House: Integer; D1, D2: TDate);
var
  Q: TFIBQuery;
  sql: string;
begin
  sql := 'UPDATE OR INSERT INTO SHOWHOUSEPLAN' +
    ' ( SHOWHOUSE, HOUSE, D1, D2)' +
    ' values ( :SHOWHOUSE, :HOUSE, :D1, :D2)' + ' MATCHING (SHOWHOUSE, HOUSE);';
  if not cmDB.WT.Active then
    cmDB.WT.StartTransaction;
  Q := GetQueryForUse(cmDB.WT, sql);
  Q.ParamByName('SHOWHOUSE').AsInteger := ShowHouse;
  Q.ParamByName('HOUSE').AsInteger := House;
  Q.ParamByName('D1').AsDate := D1;
  Q.ParamByName('D2').AsDate := D2;
  Q.ExecQuery;
  cmDB.WT.Commit;
  FreeQueryForUse(Q);
end;

function TShowHouseForm.GetExistPrikaz :string;
var
  s: string;
begin
  s := '';
  with ds_osm do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
        if FN('GRAPHLIST').AsVariant<>null then
        s := s + FN('GRAPHLIST').AsString + ',';
      Next;
    end;
    EnableControls;
  end;
  if s <> '' then
    Delete(s, Length(s), 1);
  Result := s;
end;

procedure TShowHouseForm.CreateOsmotr;
var
  Q, Q1: TFIBQuery;
  sql, notin: string;

  function GetAType :Variant;
  begin
    case editm_type.EditValue of
      0 :Result:=15;
      1 :Result:=16;
      else Result:=null;
    end;
  end;

begin
  // получаем список графиков по параметрам из GRAPHLIST
  sql :='SELECT gl.CODE,gl."YEAR",gl.KONTRAGENT,' +
        '       gl.GRAPHTO,gl.NOTE,gl.SHOWPRIKAZPO,gl.ALOCK' +
        ' FROM GRAPHLIST gl' +
        ' where gl.kontragent=:kontr and gl.alock=1 and gl."YEAR"=:year' +
        ' and gl.graphto=:atype';
   notin:=GetExistPrikaz;
   if notin<>'' then sql:=sql+' and gl.CODE not in('+notin+')';
   Q:=GetQueryForUse(cmDB.RT,sql);
   Q.ParamByName('kontr').AsVariant:=ActiveKontragent;
   Q.ParamByName('year').AsVariant:=edit_year.EditValue;
   Q.ParamByName('atype').AsVariant:=GetAType;
   Q.ExecQuery;
  // получаем записи графика из GrapSpec
   Q1:=GetQueryForUse(cmDB.RT,'select GS.CODE, GS.GRAPHLIST, GS.STREET, ' +
                              ' GS.HOUSE,' + #13#10 +
                              ' GS.D1, GS.D2, GS.D3' + #13#10 +
                              ' from GRAPHSPEC GS');
   Q1.MainWhereClause:='GS.GRAPHLIST = :cod';
    while not Q.Eof do
    begin
      //Q1.ParamByName('cod').AsVariant:=Q.FN('CODE').AsVariant;
      //Q1.ExecQuery;
        // добавляем в таблицу
       AddData(Q);
      Q.Next;
    end;


  { TODO :
      Переделать запрос к графикам
      заполнение акта домами из графика и установка дат из графика
      SHOWHOUSE.SHOWPRIKAZPO использовать как код графика}
  {Q := GetQueryForUse(cmDB.RT,
      'SELECT sp.CODE,sp.SHOWPRIKAZ, sp.NUM,' + #13#10 +
      ' sp.DATA, sp.SHOWTYPE, sp.GENDIR,' + #13#10 +
      ' sp.ISPOLNIT, sp.CONTROL, sp.KONTRAGENT, sp.SRVDOG' + #13#10 +
      ' FROM SHOWPROKAZPO sp' + #13#10 +
      ' left outer join srvdog sd on sd.code=sp.srvdog');
  Q.MainWhereClause := 'sd."ACTIVE"=1 and sp.kontragent=:kontr and sp.SHOWTYPE=:st';

  // получаем список договоров за исключением договоров в осмотрах
  //Q := GetQueryForUse(cmDB.RT, 'select CODE,KONTRAGENT from SRVDOG');
  //Q.MainWhereClause := ' Active=1';
  notin := GetIncludeDg;
  if notin <> '' then
    Q.MainWhereClause:=Q.MainWhereClause+' and sp.SRVDOG not in(' + notin + ')';
  Q.ParamByName('kontr').AsVariant:=ActiveKontragent;
  Q.ParamByName('st').AsVariant:=editm_type.EditValue;
  Q.ExecQuery;
  // добавляем в таблицу
  AddData(Q);}
  //
  FreeQueryForUse(Q);
  FreeQueryForUse(Q1);
end;

procedure TShowHouseForm.ds_HousePlanBeforePost(DataSet: TDataSet);
begin
  // проверка 100% связи с журналом
  {if ds_HousePlan.FN('LOCK').AsVariant = 1 then
    if not isLinkAll(ds_HousePlan.FN('SHOWHOUSE').AsVariant) then
    begin
      cmShowMessage('Не для всех записей акта установленна связь с журналом!',
        true);
      Abort;
      clv2Lock.Properties.EndUpdate(true);
    end;}
end;

function TShowHouseForm.isLinkAll(sh: variant): Boolean;
var
  Q :TFIBQuery;
begin
  Result:=True;
  Q:=GetQueryForUse(cmDB.RT,
  'select count(*) cnt from showresult where showhouse=:sh and jwork is null');
  Q.ParamByName('sh').AsVariant:=sh;
  Q.ExecQuery;
  if Q.FN('cnt').AsVariant>0 then
  Result:=False;
  FreeQueryForUse(Q);
end;

procedure TShowHouseForm.ds_osmAfterInsert(DataSet: TDataSet);
begin
  // синхронизировать
  if ds_osm.FN('STYPE').AsVariant=2 then
  SyncHouse else
  if (ds_osm.FN('STYPE').AsVariant=0) or (ds_osm.FN('STYPE').AsVariant=1) then
  SyncFromGraph(ds_osm.FN('GRAPHLIST').AsVariant,ds_osm.FN('CODE').AsVariant);
end;

procedure TShowHouseForm.ds_osmBeforePost(DataSet: TDataSet);
var
  i: Integer;
begin
  {for i := 0 to ds_osm.FieldCount - 3 do
  begin
    if ds_osm.Fields[i].AsVariant = null then
    begin
      ShowMessage('Не запонены обязательные параметры!');
      Abort;
    end;
  end;}
  //if DataSet.State = dsEdit then Exit;
end;

procedure TShowHouseForm.ExportInPDF(showhouse: Variant);
begin
  if dlg1.Execute then begin
    //v2.BeginUpdate(lsimImmediate);
    try
      dzAct.ShowHouse:= showhouse;
      dzAct.SaveRepPDF(null,fr,pdf1,md_kr,'rep\rep1.fr3',dlg1.Path);
    finally
      //v2.EndUpdate;
    end;
  end;
end;

function TShowHouseForm.IsExistDog(STYPE, SYEAR, SRVDOG: Integer): Boolean;
var
  Q: TFIBQuery;
begin
  Result := False;
  Q := GetQueryForUse(cmDB.RT, 'select CODE from SHOWHOUSE' +
      ' where STYPE= :STYPE and SYEAR =:SYEAR and SRVDOG=:SRVDOG');
  Q.ParamByName('STYPE').AsInteger := STYPE;
  Q.ParamByName('SYear').AsInteger := SYEAR;
  Q.ParamByName('SrvDog').AsInteger := SRVDOG;
  Q.ExecQuery;

  if Q.FN('CODE').AsVariant <> null then
    Result := true;
  FreeQueryForUse(Q);
  { ds_osm.DisableControls;
    if ds_osm.Locate('SType;SYear;SrvDog',
    VarArrayOf([SType,SYear,SrvDog]),[loPartialKey]) then
    Result:=True;
    ds_osm.EnableControls; }
end;

{ -------------------------------------------------------------------------------
  GetIncludeDg|получем имеющиеся договора в осмотрах
  ------------------------------------------------------------------------------- }
function TShowHouseForm.GetIncludeDg: string;
var
  s: string;
begin
  s := '';
  with ds_osm do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      if (edit_year.EditValue = FN('SYEAR').AsVariant) and
        (editm_type.EditValue = FN('STYPE').AsVariant) then
        s := s + FN('SRVDOG').AsString + ',';
      Next;
    end;
    EnableControls;
  end;
  if s <> '' then
    Delete(s, Length(s), 1);
  Result := s;
end;

{ -------------------------------------------------------------------------------
  AddData|Добавляем данные в таблицу
  ------------------------------------------------------------------------------- }
procedure TShowHouseForm.AddData(Q: TFIBQuery);
var
  SRVDOG: Variant; // договор
  STYPE: Integer; // тип осмотра
  SYEAR: Integer; // год
  ASTATE: Integer; // статус списка
  KONTRAGENT: Variant;
  SHOWPRIKAZPO, GRAPHLIST :Variant;
  i: Integer;

  function GetSrvDog :Variant;
  var
    Q :TFIBQuery;
  begin
    Q:=GetQueryForUse(cmDB.RT,'select CODE' + #13#10 +
                              'from SRVDOG' + #13#10 +
                              'where KONTRAGENT=:kontr and "ACTIVE"=1');
    Q.ParamByName('kontr').AsVariant:=ActiveKontragent;
    Q.ExecQuery;
    Result:=Q.FN('CODE').AsVariant;
  end;

begin
  if Q.Eof then
    ShowMessage('Все возможные осмотры добавлены!');  //не найдены графики
  while not Q.Eof do
  begin
    SRVDOG := GetSrvDog;  //переделать на код графика
    STYPE := editm_type.EditValue;
    SYEAR := edit_year.EditValue;
    SHOWPRIKAZPO:=Q.FN('SHOWPRIKAZPO').AsVariant;
    KONTRAGENT:=Q.FN('KONTRAGENT').AsVariant;
    GRAPHLIST :=Q.FN('CODE').AsVariant;
    ASTATE := 0;
    //
    InsertData(SRVDOG, STYPE, SYEAR, ASTATE, KONTRAGENT,SHOWPRIKAZPO,GRAPHLIST);
    //
    Q.Next;
  end;
end;

{ -------------------------------------------------------------------------------
  InsertData|Вставляем данные в табдицу
  ------------------------------------------------------------------------------- }
procedure TShowHouseForm.InsertData(SRVDOG, STYPE, SYEAR, ASTATE,
  KONTRAGENT: Integer; SHOWPRIKAZPO, GRAPHLIST :Variant);
begin
  with ds_osm do
  begin
    // DisableControls;
    Append;
    FN('SRVDOG').AsInteger := SRVDOG;
    FN('SHOWDATE').AsDateTime := Date;
    FN('STYPE').AsInteger := STYPE;
    FN('SYEAR').AsInteger := SYEAR;
    FN('STATE').AsInteger := ASTATE;
    FN('KONTRAGENT').AsInteger := KONTRAGENT;
    FN('SHOWPRIKAZPO').AsVariant:=SHOWPRIKAZPO;
    FN('GRAPHLIST').AsVariant:=GRAPHLIST;
    Post;
    // EnableControls;
  end;
  SyncFromGraph(ds_osm.FN('GRAPHLIST').AsVariant,ds_osm.FN('CODE').AsVariant);
end;

procedure TShowHouseForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fController.Free;
  Action := caFree;
end;

procedure TShowHouseForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1, Self.Name);
  fController:= TKontragentController.Create;
  MemTypeCreate;
  StateTypeCreate;
  SetRight;
  //
  OpenDs;
  GridOptionsDef(v1);
  if ActiveUserType <> 1 then
     HideAutobtn;
  if isLockActRight then
    clv2Lock.Properties.ReadOnly := False
  else
    clv2Lock.Properties.ReadOnly := true;
  { case ActiveRole of
    1 : clv2Lock.Properties.ReadOnly:=False;  //Системный администратор
    3 : clv2Lock.Properties.ReadOnly:=False;  //Начальник СЭ.
    4 : clv2Lock.Properties.ReadOnly:=False;  //Менеджер СЭ.
    5 : clv2Lock.Properties.ReadOnly:=False;  //Ст. Менеджер СЭ.
    else clv2Lock.Properties.ReadOnly:=True;
    end; }
   // editm_type.EditValue:=2;
   // editm_type.Properties.ReadOnly:=True;
   if ActiveRole = 58  then Right_ReadOnly; //режим только для чтения
end;



function TShowHouseForm.isLockActRight: Boolean;
var
  Q: TFIBQuery;
begin
  Result := False;
  Q := GetQueryForUse(cmDB.RT,
    'select AROLE from RIGHTS where ARIGHT=47 and AROLE=:AR');
  Q.ParamByName('AR').AsVariant := ActiveRole;
  Q.ExecQuery;
  if Q.FN('AROLE').AsVariant = ActiveRole then
    Result := true;
  FreeQueryForUse(Q);
end;

procedure TShowHouseForm.HideAutobtn(hide: Boolean = true);
begin
  if hide then
  begin
   // btn1.Visible := ivNever;
   // edit_year.Visible:=ivNever;
   // editm_type.Visible:=ivNever;
    clv2Lock.Properties.ReadOnly := true;
  end;
end;

procedure TShowHouseForm.frxlsxprt1BeginExport(Sender: TObject);
begin
  frxlsxprt1.FileName := ExtractFilePath(Application.ExeName)
    + 'tem_rep/' + 'список осмотров.xls';
end;

procedure TShowHouseForm.pdf1BeginExport(Sender: TObject);
begin
  pdf1.FileName := ExtractFilePath(Application.ExeName)
    + 'tem_rep/' + 'список осмотров.pdf';
end;

procedure TShowHouseForm.frxrtfxprt1BeginExport(Sender: TObject);
begin
  frxlsxprt1.FileName := ExtractFilePath(Application.ExeName)
    + 'tem_rep/' + 'список осмотров.rtf';
end;

procedure TShowHouseForm.OpenDs;
begin
  with ds_GRAPHLIST do begin
    Close;
    if ActiveUserType = 1 then begin// подрядчик
      MainWhereClause:='GL.KONTRAGENT=:kontr and GL.alock=1 and '+
      'GL.GRAPHTO in(15,16) and '+
      'gl.code not in (select iif(graphlist is null, -1,graphlist) '+
      'cod from SHOWHOUSE)';
      ParamByName('kontr').AsVariant:=ActiveKontragent;
    end else
      MainWhereClause:='GL.alock=1 and '+
      'GL.GRAPHTO in(15,16) and '+
      'gl.code not in (select iif(graphlist is null, -1,graphlist) '+
      'cod from SHOWHOUSE)';
    Open;
  end;
  DSOptoins(ds_osm, '', 'SHOWHOUSE', 'CODE', 'SHOWHOUSE_GEN', False);
  if ActiveUserType = 1 then // подрядчик
  begin

    ds_osm.MainWhereClause := 'sd.kontragent=:kontr';
    ds_osm.ParamByName('kontr').AsInteger := Activekontragent;
  end;
  ds_osm.Open;
  DSOptoins(ds_HousePlan, '', 'SHOWHOUSEPLAN', 'CODE', 'SHOWHOUSEPLAN_GEN');
  {$REGION 'Kontragent'}
  src_kontagent.DataSet:= fController.DS;
  if ActiveUserType = 1 then // подрядчик
  begin
    fController.GetById(ActiveKontragent);
    //ds_kontr.MainWhereClause := 'CODE=:kontr';
    //ds_kontr.ParamByName('kontr').AsVariant := Activekontragent;
  end else
    fController.LoadKontragents('',True, True);
  {$ENDREGION}
  if ActiveUserType = 1 then // подрядчик
  begin
    ds_SrvDog.MainWhereClause := 's.KONTRAGENT=:kontr';
    ds_SrvDog.ParamByName('kontr').AsVariant := Activekontragent;
  end;
  ds_SrvDog.CloseOpen(true);

  ds_house.CloseOpen(true);
  OpenHousePlan;

end;

procedure TShowHouseForm.OpenHousePlan;
begin
  v2.BeginUpdate(lsimImmediate);
  try
    with ds_HousePlan do
    begin
      Close;
      if v1.GetColumnByFieldName('CODE').EditValue = null then
        Exit;
      MainWhereClause := 'sd.SHOWHOUSE=:HousePlan';
      ParamByName('HousePlan').AsInteger := v1.GetColumnByFieldName('CODE').EditValue;
      Open;
    end;
    btn_pdf.Enabled:= v1.FN('ALOCK') = 1;
  finally
    v2.EndUpdate;
  end;
end;

procedure TShowHouseForm.MemTypeCreate;
  procedure AddType(Acode: Integer; Aname: string);
  begin
    with mt_type do
    begin
      Append;
      FieldByName('Code').AsInteger := Acode;
      FieldByName('Name').AsString := Aname;
      Post;
    end;
  end;

begin
  CreateField(mt_type, 'Code', ftInteger);
  CreateField(mt_type, 'Name', ftString, 64);
  mt_type.Open;
  // если подрядчик то только AddType(2,'внеплановый');

  // if ActiveUserType <> 1 then
  AddType(0, 'весна');
  // if ActiveUserType <> 1 then
  AddType(1, 'осень');
  AddType(2, 'внеплановый');
end;

procedure TShowHouseForm.StateTypeCreate;
  procedure AddState(Acode: Integer; Aname: string);
  begin
    with mt_state do
    begin
      Append;
      FieldByName('Code').AsInteger := Acode;
      FieldByName('Name').AsString := Aname;
      Post;
    end;
  end;

begin
  CreateField(mt_state, 'Code', ftInteger);
  CreateField(mt_state, 'Name', ftString, 64);
  mt_state.Open;
  AddState(0, 'создан');
  AddState(1, 'утвержден техническим директором');
  AddState(2, 'издан приказ ПО');
  AddState(3, 'приказ ПО утвержден');
  AddState(4, 'составлен график осмотра');
  AddState(5, 'осмотр завершен');
end;

initialization

RegisterClass(TShowHouseForm);

end.








