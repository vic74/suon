unit SGFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxBar, BaseForm, cmDBUnit,
  cxMaskEdit, cxDBLookupComboBox, FIBDataSet, pFIBDataSet, dezCommon,
  cxBarEditItem, FIBQuery, pFIBCacheQueries, pFIBQuery, pFIBProps,
  ShellAPI, frxClass, FIBDatabase, pFIBDatabase,
  frxFIBComponents, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, dxLayoutcxEditAdapters, cxContainer, Menus, StdCtrls,
  cxButtons, cxMemo, cxDropDownEdit, cxTextEdit, cxLookupEdit, cxDBLookupEdit,
  cxCheckBox, cxCalendar, dxLayoutControlAdapters, dxLayoutContainer,
  dxSkinDevExpressStyle, frxExportRTF, frxExportXLS, Vcl.ComCtrls, dxCore,
  cxDateUtils, frxDBSet, KontragentRepository;

type
  TSGForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    brm1: TdxBarManager;
    brm1Bar1: TdxBar;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    spl1: TdxLayoutSplitterItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_grd2: TdxLayoutItem;
    ds_GraphList: TpFIBDataSet;
    src_GraphList: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1YEAR: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1GRAPHTO: TcxGridDBColumn;
    clv1NOTE: TcxGridDBColumn;
    src_kontr: TDataSource;
    ds_GRAPHTO: TpFIBDataSet;
    src_GRAPHTO: TDataSource;
    ds_GrapSpec: TpFIBDataSet;
    src_GrapSpec: TDataSource;
    doc_br1: TdxBarDockControl;
    itm_doc: TdxLayoutItem;
    brm1Bar2: TdxBar;
    btn_sync: TdxBarButton;
    lb_copy: TcxBarEditItem;
    btn_copy: TdxBarButton;
    ds_copy: TpFIBDataSet;
    src_copy: TDataSource;
    clv2CODE: TcxGridDBColumn;
    clv2GRAPHLIST: TcxGridDBColumn;
    clv2STREET: TcxGridDBColumn;
    clv2STName: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2nomer: TcxGridDBColumn;
    clv2D1: TcxGridDBColumn;
    clv2D2: TcxGridDBColumn;
    btn_insert: TdxBarButton;
    btn_edit: TdxBarButton;
    btn_delete: TdxBarButton;
    btn_xls: TdxBarButton;
    fr: TfrxReport;
    btn_rep: TdxBarButton;
    clv2D3: TcxGridDBColumn;
    grplc1Group1: TdxLayoutGroup;
    grplc1Group2: TdxLayoutGroup;
    spl: TdxLayoutSplitterItem;
    cbb_showprikazpo: TcxLookupComboBox;
    itm_showprikazpo: TdxLayoutItem;
    edt_year: TcxMaskEdit;
    itm_year: TdxLayoutItem;
    m_note: TcxMemo;
    itm_note: TdxLayoutItem;
    btn_ok: TcxButton;
    itm_ok: TdxLayoutItem;
    btn_ed: TcxButton;
    itm_ed: TdxLayoutItem;
    btn_del: TcxButton;
    itm_del: TdxLayoutItem;
    grplc1Group3: TdxLayoutGroup;
    ds_SHOWPROKAZPO: TpFIBDataSet;
    src_SHOWPROKAZPO: TDataSource;
    cbb_type: TcxLookupComboBox;
    itm_type: TdxLayoutItem;
    clv1SHOWPRIKAZPO: TcxGridDBColumn;
    clv1ALOCK: TcxGridDBColumn;
    clv2duName: TcxGridDBColumn;
    grlc1Group1: TdxLayoutGroup;
    grlc1Group2: TdxLayoutGroup;
    grlc1Group3: TdxLayoutGroup;
    dt_begin: TcxDateEdit;
    itm_begin: TdxLayoutItem;
    dt_end: TcxDateEdit;
    itm_end: TdxLayoutItem;
    dt_close: TcxDateEdit;
    itm_close: TdxLayoutItem;
    btn_setD: TcxButton;
    itm_SetD: TdxLayoutItem;
    Xexp1: TfrxXLSExport;
    wexp1: TfrxRTFExport;
    clv1SRVDOG: TcxGridDBColumn;
    fr_ds1: TfrxDBDataset;
    clv1NOMER: TcxGridDBColumn;
    clv1D1: TcxGridDBColumn;
    clv1D2: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_syncClick(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_copyClick(Sender: TObject);
    procedure btn_insertClick(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure btn_deleteClick(Sender: TObject);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_xlsClick(Sender: TObject);
    procedure btn_repClick(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
    procedure btn_edClick(Sender: TObject);
    procedure btn_delClick(Sender: TObject);
    procedure cbb_showprikazpoPropertiesChange(Sender: TObject);
    procedure ds_GrapSpecBeforePost(DataSet: TDataSet);
    procedure clv1ALOCKPropertiesEditValueChanged(Sender: TObject);
    procedure btn_setDClick(Sender: TObject);
  private
    fController: TKontragentController;
    procedure OpenDS;
    procedure LoadFromDog;
    procedure LoadSpec;
    procedure CopyFrom;
    procedure clear_gspec(gl: Variant);
    procedure ExitportXls;
    procedure PrintRep;
    function GetRepPath(GRAPHTO: Variant): Variant;
    //
    function CheckParam :Boolean;
    procedure AddRec(isEdit :boolean=False);
    procedure FillEdit;
    function isUnique :Boolean;
    {$REGION 'Блокировка графика'}
    ///<summary>Функция проверяет блокировку графика менеджерами СЭ</summary>
    {$ENDREGION}
    function GraphLock :Boolean;
    procedure RightForEdit;
    function GetAktCode(graph :Variant) :Variant;
		{$REGION 'установка даты'}
		///<summary>устанавливаем даты на выделенные записи</summary>
		{$ENDREGION}
    procedure SetDateSelRec;
  public
    { Public declarations }
  end;

var
  SGForm: TSGForm;

implementation

uses AppUtils, cmUtils, LoadingSplash;
{$R *.dfm}
{ DONE -cПроверка на уникальность : Контрагент| Тип | год | }
procedure TSGForm.AddRec(isEdit: boolean);
begin
  if not CheckParam then Exit;
  if not isUnique then
  begin
    ShowMessage('Данный график уже присутствует!');
    Exit;
  end;
  with ds_GraphList do
  begin
    if isEdit then Edit else
    Append;
    FN('YEAR').AsVariant:=edt_year.EditValue;
    FN('KONTRAGENT').AsVariant:=ActiveKontragent;
    FN('GRAPHTO').AsVariant:=cbb_type.EditValue;
    FN('SHOWPRIKAZPO').AsVariant:=cbb_SHOWPRIKAZPO.EditValue;
    FN('ALOCK').AsVariant:=0;
    FN('NOTE').AsVariant:=m_note.EditValue;
    Post;
  end;
end;

function TSGForm.isUnique: Boolean;
var
  AIndex :Integer;
begin
  Result:=True;
  AIndex:=v1.Controller.FocusedRowIndex; //запоминаем позицию

  with ds_GraphList do
  begin
    // если изменили год или тип проверяем на совпадение с имеющимися
    if (FN('YEAR').AsVariant<>edt_year.EditValue) or
       (FN('GRAPHTO').AsVariant<>cbb_type.EditValue) then begin
         DisableControls;
          if Locate('YEAR;KONTRAGENT;GRAPHTO',
                            VarArrayOf([edt_year.EditValue,
                                       ActiveKontragent,
                                       cbb_type.EditValue]),[]) then
          Result:=False;
         EnableControls;
       end;
  end;
  v1.Controller.FocusRecord(AIndex,true); //возвращаемся на позицию
end;

procedure TSGForm.btn_copyClick(Sender: TObject);
begin
  if GraphLock then Exit;
  CopyFrom;
end;

procedure TSGForm.CopyFrom;
var
  Q: TFIBQuery;
  newY: Variant;
  function GetNeDate(d: TDateTime; y: Variant): Variant;
  var
    year, month, data: Word;
  begin
    DecodeDate(d, year, month, data);
    Result := EncodeDate(y, month, data);
  end;

begin
  if lb_copy.EditValue=null then
  begin
    ShowMessage('Не указан график осмотра.');
    lb_copy.SetFocus();
    Exit;
  end else
  if not cmMessageBox('Перед копированием текущий график будет очищен!'+#13#10+
                  'Продолжить?') then Exit;

  SplashVisibility(True, 'Копируем данные.');
  try
    clear_gspec(v1.GetColumnByFieldName('CODE').EditValue);
    Q := GetQueryForUse(cmDB.RT,
      'select * from graphspec where GRAPHLIST=:cod');
    Q.ParamByName('cod').AsVariant := lb_copy.EditValue;
    Q.ExecQuery;
    newY := v1.GetColumnByFieldName('YEAR').EditValue;
    while not Q.Eof do
    begin
      with ds_GrapSpec do
      begin
        Append;
        FN('GRAPHLIST').AsVariant := v1.GetColumnByFieldName('CODE').EditValue;
        FN('STREET').AsVariant := Q.FN('STREET').AsVariant;
        FN('HOUSE').AsVariant := Q.FN('HOUSE').AsVariant;
        FN('D1').AsVariant := GetNeDate(Q.FN('D1').AsVariant, newY);
        FN('D2').AsVariant := GetNeDate(Q.FN('D2').AsVariant, newY);
        Post;
      end;
      Q.Next;
    end;
  finally
    SplashVisibility(False);
  end;
  LoadSpec;
end;
procedure TSGForm.ds_GrapSpecBeforePost(DataSet: TDataSet);
begin
  if v1.GetColumnByFieldName('ALOCK').EditValue=1 then
  begin
    cmShowMessage('График закрыт! Изменения вносить запрещено.');
    Abort;
  end;
end;

{ TODO -cПроверка ссылочной целосности : Проверка на существование акта
                                                созданного по данному графику }
procedure TSGForm.btn_delClick(Sender: TObject);
begin
  if GraphLock then Exit;
  if (v1.GetColumnByFieldName('CODE').EditValue = null) or
    (v1.GetColumnByFieldName('CODE').EditValue = Unassigned) then
    Exit;

  if cmMessageBox('Вы действительно хотите удалить график № ' +
      v1.GetColumnByFieldName('Code').EditValue) then
  begin
    ds_GraphList.Delete;
    LoadSpec;
  end;
end;

procedure TSGForm.btn_deleteClick(Sender: TObject);
begin
  if (v1.GetColumnByFieldName('CODE').EditValue = null) or
    (v1.GetColumnByFieldName('CODE').EditValue = Unassigned) then
    Exit;

  if cmMessageBox('Вы действительно хотите удалить график № ' +
      v1.GetColumnByFieldName('Code').EditValue) then
  begin
    ds_GraphList.Delete;
    LoadSpec;
  end;
end;

procedure TSGForm.btn_edClick(Sender: TObject);
begin
  if GraphLock then Exit;
  AddRec(true);
end;

procedure TSGForm.btn_editClick(Sender: TObject);
begin
  v1.DataController.Edit;
end;

procedure TSGForm.btn_insertClick(Sender: TObject);
begin
  v1.DataController.Append;
end;

procedure TSGForm.btn_okClick(Sender: TObject);
begin
  AddRec;
end;

procedure TSGForm.btn_repClick(Sender: TObject);
begin
  PrintRep;
end;

procedure TSGForm.btn_setDClick(Sender: TObject);
begin
  SetDateSelRec;
end;

procedure TSGForm.SetDateSelRec;
var
  i :integer;
begin
  if (dt_begin.EditValue=null) or (dt_end.EditValue=null) then begin
        Application.MessageBox('Не все параметры заполнены!', 'Ошибка', MB_OK
          + MB_ICONSTOP + MB_DEFBUTTON2 + MB_TOPMOST);
        Exit;
  end;

  with v2.DataController do begin
    for I := 0 to FilteredRecordCount - 1 do
      if v2.ViewData.Rows[I].Selected then  begin
        DataSet.RecNo := FilteredRecordIndex[I] + 1;
        with DataSet do begin
          Edit;
            FieldByName('D1').AsVariant:=dt_begin.EditValue;
            FieldByName('D2').AsVariant:=dt_end.EditValue;
            FieldByName('D3').AsVariant:=dt_close.EditValue;
          Post;
        end;
      end;
  end;
end;

procedure TSGForm.btn_syncClick(Sender: TObject);
begin
  if GraphLock then Exit;

  {if cmMessageBox(
    'Перед заполнением будут удалены имеющиеся записи из текущего графика!' +
      #10#13 + 'Продолжить?') then}
    LoadFromDog;
end;


procedure TSGForm.btn_xlsClick(Sender: TObject);
begin
  // xls
 // ExitportXls;
end;

procedure TSGForm.cbb_showprikazpoPropertiesChange(Sender: TObject);
var
  AType :Variant;
begin
  with cbb_showprikazpo.Properties.Grid.DataController do
    AType := Values[FocusedRecordIndex, 3];
   case AType of
     0 :cbb_type.EditValue:=15;
     1 :cbb_type.EditValue:=16;
   end;

  // cbb_type.EditValue:=AType;
end;

function TSGForm.CheckParam: Boolean;
begin
  Result:=True;
  if cbb_SHOWPRIKAZPO.EditValue=null then
  begin
    cmShowMessage('Не указан номер приказа!',true);
    Result:=False;
    Exit;
  end;
  if edt_year.EditValue=null then
  begin
    cmShowMessage('Не указан год!',true);
    Result:=False;
    Exit;
  end;
end;

procedure TSGForm.ExitportXls;
var
  Path: string;
begin
 { Path := ExtractFilePath(Application.ExeName) + 'tem_rep\';
  xls1.FileName := Path + 'графики.xls';

  xls1.Header.Add('График технического обслуживания.');
  xls1.Header.Add('№' + v1.GetColumnByFieldName('Code')
      .EditValue + #32 + ' год-' + v1.GetColumnByFieldName('YEAR')
      .EditValue + #32 + ' ПО-' + v1.DataController.DisplayTexts
      [v1.Controller.FocusedRecordIndex, clv1KONTRAGENT.Index]);
  xls1.HeaderRows := 2;
  // поля
  with xls1.ExportedFields do
  begin
    Clear;
    Add('STName');
    Add('nomer');
    Add('D1');
    Add('D2');
  end;
  // заголовки
  with xls1.Captions do
  begin
    Clear;
    Add('STName=Улица');
    Add('nomer=Дом');
    Add('D1=Дата начала осмотра');
    Add('D2=Дата завершения осмотра');
  end;
  // ширина
  with xls1.ColumnsWidth do
  begin
    Clear;
    Add('STName=25');
    Add('nomer=5');
    Add('D1=21');
    Add('D2=25');
  end;
  xls1.Execute; }
end;

procedure TSGForm.FillEdit;
begin
  with ds_GraphList do
  begin
    edt_year.EditValue:=FN('YEAR').AsVariant;
    cbb_type.EditValue:=FN('GRAPHTO').AsVariant;
    cbb_SHOWPRIKAZPO.EditValue:=FN('SHOWPRIKAZPO').AsVariant;
    m_note.EditValue:=FN('NOTE').AsVariant;
    //cbb_showprikazpo.EditValue:= FN('CODE').AsVariant;
  end;
  if ActiveUserType=1 then
  if v1.GetColumnByFieldName('ALOCK').EditValue=1 then
  begin
    btn_ed.Enabled:=False;
    btn_del.Enabled:=False;
  end;

end;

procedure TSGForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fController.Free;
  Action := caFree;
end;

procedure TSGForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1, Self.Name);
  fController:= TKontragentController.Create;
  OpenDS;
  RightForEdit;
end;

procedure TSGForm.RightForEdit;
begin
  if (ActiveRole=3) or      //Шалимова (Начальник СЭ.)
     (ActiveRole=1) or
     (ActiveRole=7) or      //ст. менеджер
     (ActiveWorker=13) or   //Осипенко
     (ActiveWorker=36) or   //Суворов
     (ActiveRole=22) then   //Колегова (зам. начальника СЭ)
     v1.OptionsData.Editing:=True else
     v1.OptionsData.Editing:=False;
end;

function TSGForm.GetAktCode(graph: Variant): Variant;
var
  Q: TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.RT,'SELECT CODE FROM SHOWHOUSE' + #13#10 +
                            'where GRAPHLIST=:gl');
  Q.Options:=[qoStartTransaction];
  Q.ParamByName('gl').AsVariant:=graph;
  Q.ExecQuery;
  Result:=Q.FN('CODE').AsVariant;
end;

function TSGForm.GetRepPath(GRAPHTO: Variant): Variant;
var
  Q: TFIBQuery;
begin
  Q := GetQueryForUse(cmDB.RT, 'select SHABLON from GRAPHTO where code=:cod');
  Q.ParamByName('cod').AsVariant := GRAPHTO;
  Q.ExecQuery;
  if Q.FN('SHABLON').AsVariant = null then
    Result := null
  else
    Result := ExtractFilePath(Application.ExeName) + 'rep\' + Q.FN('SHABLON')
      .AsVariant;
  FreeQueryForUse(Q);
end;
{$REGION 'Documentation'}
///<summary>Функция проверяет блокировку графика менеджерами СЭ</summary>
{$ENDREGION}
function TSGForm.GraphLock: Boolean;
begin
  Result:=False;
  if v1.GetColumnByFieldName('ALOCK').EditValue=1 then
  begin
    cmShowMessage('График закрыт! Изменения вносить запрещено.');
    Result:=True;
  end;
end;

{$REGION 'Очистка графика'}
 //Процедура полной очиски графика
{$ENDREGION}
procedure TSGForm.clear_gspec(gl: Variant);
var
  Q: TFIBQuery;
begin
  Q := GetQueryForUse(cmDB.WT, 'delete from graphspec where GRAPHLIST=:gl');
  Q.Options := [qoStartTransaction, qoAutoCommit];
  Q.ParamByName('gl').AsVariant := gl;
  Q.ExecQuery;
  FreeQueryForUse(Q);
end;

procedure TSGForm.clv1ALOCKPropertiesEditValueChanged(Sender: TObject);
begin
  v1.DataController.Post();
end;

procedure TSGForm.LoadFromDog;
var
  Dog: Variant;
  Q: TFIBQuery;
  Q_1, Q_2 :TFIBQuery;
  house :WideString;
  sql :string;
  AIndex :Integer;

  procedure PrepareQuery;
  begin
    Q_1:=GetQueryForUse(cmDB.WT,'delete from SHOWHOUSEPLAN' + #13#10 +
                              'where (SHOWHOUSE = :SHOWHOUSE and ' +
                              'HOUSE=:HOUSE)');
    Q_1.Options:=[qoStartTransaction,qoAutoCommit];

    Q_2:=GetQueryForUse(cmDB.WT,'delete from SHOWRESULT' + #13#10 +
                              'where (SHOWHOUSE = :SHOWHOUSE and ' +
                              'HOUSE=:HOUSE)');
    Q_2.Options:=[qoStartTransaction,qoAutoCommit];
  end;

  procedure FreeQuery;
  begin
    FreeQueryForUse(Q_1);
    FreeQueryForUse(Q_2);
  end;

  function getExistHoiuse :WideString;
  begin
    Result:='';
    if ds_GrapSpec.IsEmpty then Exit;
    //получаем имеющиеся дома в графике из GRAPHSPEC
    with ds_GrapSpec do
    begin
      DisableControls;
      First;
      while not Eof do
      begin
        Result:=Result+','+FN('HOUSE').AsString;
        Next;
      end;
      if Result<>'' then Result:=Result+',';
      EnableControls;
    end;
  end;

  procedure DeleteFromAkt(SHOWHOUSE ,HOUSE :Variant);
  begin
    Q_1.ParamByName('SHOWHOUSE').AsVariant:=SHOWHOUSE;
    Q_1.ParamByName('HOUSE').AsVariant:=HOUSE;
    Q_1.ExecQuery;

    Q_2.ParamByName('SHOWHOUSE').AsVariant:=SHOWHOUSE;
    Q_2.ParamByName('HOUSE').AsVariant:=HOUSE;
    Q_2.ExecQuery;
  end;

  procedure DelHouse;
  var
    Q,Q1 :TFIBQuery;
    akt :Variant;
  begin
    if ds_GrapSpec.IsEmpty then Exit;

    Q:=GetQueryForUse(cmDB.WT,
                      'select SD.SRVDOG from SRVDOGHOUSE SD'+ #13#10+
                      'where SD.SRVDOG = (select CODE' + #13#10 +
                      'from SRVDOG' + #13#10 +
                      'where KONTRAGENT = :KONTR)'+ #13#10 +
                      'and SD.HOUSE=:House');
    Q.ParamByName('KONTR').AsVariant:=ActiveKontragent;
    Q.Options:=[qoStartTransaction,qoAutoCommit];
    with ds_GrapSpec do
    begin
      DisableControls;
      First;
      while not Eof do
      begin
        Q.ParamByName('House').AsVariant:=FN('HOUSE').AsVariant;
        Q.ExecQuery;
        if Q.FN('SRVDOG').AsVariant=null then
        begin
          {akt:=GetAktCode(gFN(v1,'CODE'));
          if akt<>null then begin
            //удаляем дома из актов осмотров
            DeleteFromAkt(akt,FN('HOUSE').AsVariant);
          end;}
          Delete;
        end;
        Next;
      end;
      EnableControls;
    end;
    FreeQueryForUse(Q);
  end;

begin
  Application.ProcessMessages;
  SplashVisibility(True, 'Загружаются данные.');
  AIndex:=v2.Controller.FocusedRowIndex; //запоминаем позицию
  PrepareQuery;
  DelHouse; //удаляем дома отсутствующие в договоре
  house:=getExistHoiuse; // получаем список домов в гафике
  Dog := v1.FN('SRVDOG');

  v2.Controller.FocusRecord(AIndex,true); //возвращаемся на позицию
    //clear_gspec(v1.GetColumnByFieldName('CODE').EditValue);
  sql :='select SD.SRVDOG, SD.HOUSE, S.CODE' + #13#10 +
        'from SRVDOGHOUSE SD' + #13#10 +
        'left outer join HOUSE H on H.CODE = SD.HOUSE' + #13#10 +
        'left outer join STREET S on S.CODE = H.STREET' + #13#10 +
        'where SD.SRVDOG = :DOG';
  if house<>'' then sql:= sql+ #13#10 +
    'and ( '#39+House+#39' not containing '#39','#39'||SD.HOUSE||'#39','#39')';
  try
    Q := GetQueryForUse(cmDB.RT,sql);
    Q.ParamByName('DOG').AsVariant := DOG;
    Q.ExecQuery;
    while not Q.Eof do
    begin
      with ds_GrapSpec do
      begin
        Append;
        FN('GRAPHLIST').AsVariant := v1.GetColumnByFieldName('CODE').EditValue;
        FN('STREET').AsVariant := Q.FN('CODE').AsVariant;
        FN('HOUSE').AsVariant := Q.FN('HOUSE').AsVariant;
        FN('D1').AsVariant := Date;
        FN('D2').AsVariant := Date;
        FN('D3').AsVariant := Date;
        Post;
      end;
      Q.Next;
    end;
  finally
    SplashVisibility(False);
    FreeQueryForUse(Q);
    LoadSpec;
    FreeQuery;
  end;
end;


procedure TSGForm.OpenDS;
begin
  src_kontr.DataSet:= fController.DS;
  DSOptoins(ds_GraphList, '', 'GRAPHLIST', 'CODE', 'GRAPHLIST_GEN', False);
  if ActiveUserType = 1 then
  begin
    ds_GraphList.MainWhereClause :=
                                'GL.KONTRAGENT=:kontr and GL.GRAPHTO in(15,16)';
    ds_GraphList.ParamByName('kontr').AsVariant := ActiveKontragent;
    ds_GraphList.Open;

    fController.GetById(ActiveKontragent);
    clv1ALOCK.Options.Editing:=False;
  end
  else
  begin
    ds_GraphList.MainWhereClause :='GL.GRAPHTO in(15,16)';
    ds_GraphList.Open;
    fController.GetActiveKontrShort();
    grplc1Group1.Enabled:=False;
    clv1ALOCK.Options.Editing:=true;
  end;
  ds_GRAPHTO.Open;
  DSOptoins(ds_GrapSpec, '', 'GRAPHSPEC', 'CODE', 'GRAPHSPEC_GEN', False);
  with ds_SHOWPROKAZPO do
  begin
    Close;
    MainWhereClause:='sp.kontragent=:kontr';
    ParamByName('kontr').AsVariant:=ActiveKontragent;
    Open;
  end;
  LoadSpec;
end;

procedure TSGForm.PrintRep;
var
  fdb: TfrxFIBDatabase;
  Q: TFIBQuery;
  Path: Variant;

  function KontName :Variant;
  var
    Q :TFIBQuery;
  begin
    Q:=GetQueryForUse(cmDB.RT,'select name from kontragent where code=:cod');
    Q.Options:=[qoStartTransaction];
    Q.ParamByName('cod').AsVariant:=
                                v1.GetColumnByFieldName('KONTRAGENT').EditValue;
    Q.ExecQuery;
    Result:=Q.FN('name').AsVariant;
    FreeQueryForUse(Q);
  end;

begin
  Path := GetRepPath(v1.GetColumnByFieldName('GRAPHTO').EditValue);
  if Path = null then
    Exit;
  fr.LoadFromFile(Path);
  fr.Variables['varGraph'] := v1.GetColumnByFieldName('CODE').EditValue;
  fr.Variables['varYEAR'] := v1.GetColumnByFieldName('YEAR').EditValue;
  fr.Variables['varApp'] :=3;
  fr.Variables['varDOG'] :=#39+v1.FN('NOMER')+#39;
  fr.Variables['varD1'] :=#39+VarToStr(v1.FN('D1'))+#39;
  fr.Variables['varD2'] :=#39+VarToStr(v1.FN('D2'))+#39;
  case gFN(v1,'KONTRAGENT') of
    13 : fr.Variables['varRole'] :=#39'энергетик'#39;
    15 : fr.Variables['varRole'] :=#39'энергетик'#39;
    else fr.Variables['varRole'] :=#39'ст. менеджер'#39;
  end;
 // TcxLookupComboBoxProperties(clv1KONTRAGENT.Properties).GridMode:=True;
 //  with TcxLookupComboBoxProperties(clv1KONTRAGENT.Properties).Grid.DataController do
   fr.Variables['varKontr'] :=#39+KontName+#39;
  fdb := fr.FindObject('fdb') as TfrxFIBDatabase;
  with fdb do
  begin
    DatabaseName := cmDB.DB.DBName;
    Params.Values['user_name'] := cmDB.DB.DBParams.Values['user_name'];
    Params.Values['password'] := cmDB.DB.DBParams.Values['password'];
    Params.Values['sql_role_name'] := cmDB.DB.DBParams.Values['sql_role_name'];
    SQLDialect := 3;
    Connected := True;
  end;
  fr.ShowReport();
end;

procedure TSGForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  FillEdit;
  LoadSpec;
end;

procedure TSGForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_UP) or (Key = VK_DOWN) then
  begin
    FillEdit;
    LoadSpec;
  end;
end;

procedure TSGForm.LoadSpec;
begin
  with ds_GrapSpec do
  begin
    Close;
    MainWhereClause := 'GS.GRAPHLIST=:cod';
    ParamByName('cod').AsVariant := v1.GetColumnByFieldName('CODE').EditValue;
    OrderClause := 's.name,h.nomer';
    Open;
  end;
  with ds_copy do
  begin
    Close;
    MainWhereClause := 'gl.kontragent=:kontr and gl."YEAR"<>:y';
    ParamByName('kontr').AsVariant := v1.GetColumnByFieldName('kontragent')
      .EditValue;
    ParamByName('y').AsVariant := v1.GetColumnByFieldName('YEAR').EditValue;
    Open;
  end;
end;

initialization

RegisterClass(TSGForm);

end.




