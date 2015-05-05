unit BDRFactDocFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  System.DateUtils,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxmdaset, FIBDataSet, pFIBDataSet,
  FIBQuery,pFIBCacheQueries,pFIBProps,
  cxDBLookupComboBox, dxSkinsdxBarPainter, dxBar, EXLReportExcelTLB,
  EXLReportBand, EXLReport, dxLayoutcxEditAdapters, cxContainer, cxLookupEdit,
  cxDBLookupEdit, cxMaskEdit, cxTextEdit, cxDropDownEdit, Menus, StdCtrls,
  cxButtons, cxCalc, dxLayoutControlAdapters, dxLayoutContainer,
  dxSkinDevExpressStyle, cxCheckBox, cxGridCustomPopupMenu, cxGridPopupMenu,
  cxButtonEdit, dxSkinsDefaultPainters, dxSkinVS2010;

type
  TBDRFactDocForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_grd2: TdxLayoutItem;
    spl1: TdxLayoutSplitterItem;
    ds_FACTDOC: TpFIBDataSet;
    src_FACTDOC: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1M: TcxGridDBColumn;
    clv1Y: TcxGridDBColumn;
    clv1HOUSESRV: TcxGridDBColumn;
    clv1HSNAME: TcxGridDBColumn;
    m_month: TdxMemData;
    src_month: TDataSource;
    ds_FACTDOCLIST: TpFIBDataSet;
    src_FACTDOCLIST: TDataSource;
    clv2CODE: TcxGridDBColumn;
    clv2FACTDOC: TcxGridDBColumn;
    clv2PLANSUM: TcxGridDBColumn;
    clv2FACTSUM: TcxGridDBColumn;
    clv2CORRECT: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2NOMER: TcxGridDBColumn;
    clv2STNAME: TcxGridDBColumn;
    grp2: TdxLayoutGroup;
    brm1: TdxBarManager;
    doc1: TdxBarDockControl;
    itm_doc: TdxLayoutItem;
    bar1: TdxBar;
    btn_fill: TdxBarButton;
    btn_correct: TdxBarButton;
    ds_Sanc: TpFIBDataSet;
    xl1: TEXLReport;
    xl_sub: TEXLReport;
    ds_SancSum: TpFIBDataSet;
    btn_penalt: TdxBarButton;
    btn_akt: TdxBarButton;
    grp_left: TdxLayoutGroup;
    grp_2: TdxLayoutGroup;
    cbb_month: TcxComboBox;
    itm_month: TdxLayoutItem;
    msk_Y: TcxMaskEdit;
    itm_Y: TdxLayoutItem;
    cbb_srv: TcxLookupComboBox;
    itm_srv: TdxLayoutItem;
    ds_HOUSESRV: TpFIBDataSet;
    src_HOUSESRV: TDataSource;
    btn_add: TcxButton;
    itm_add: TdxLayoutItem;
    grplc1Group2: TdxLayoutGroup;
    btn_editSumm: TdxBarButton;
    clv1SHB: TcxGridDBColumn;
    clv2SQ1: TcxGridDBColumn;
    clv2SQ2: TcxGridDBColumn;
    clv2SQ3: TcxGridDBColumn;
    clv1PRV: TcxGridDBColumn;
    clv2KONTRAGENT: TcxGridDBColumn;
    clv2KNAME: TcxGridDBColumn;
    pm1: TPopupMenu;
    ppm1: TcxGridPopupMenu;
    N1: TMenuItem;
    clv1History: TcxGridDBColumn;
    clv1Firm: TcxGridDBColumn;
    brm1Bar1: TdxBar;
    btn_AddSrv: TdxBarButton;
    btn_EditSrv: TdxBarButton;
    btn_DeleteSrv: TdxBarButton;
    cbb_Firm: TcxLookupComboBox;
    litm_Firm: TdxLayoutItem;
    btn_SrvClear: TcxButton;
    litm_lc1Item1: TdxLayoutItem;
    lGrplc1Group1: TdxLayoutGroup;
    btn_YClear: TcxButton;
    litm_lc1Item11: TdxLayoutItem;
    lGrplc1Group2: TdxLayoutGroup;
    btn_MClear: TcxButton;
    litm_lc1Item12: TdxLayoutItem;
    lGrplc1Group3: TdxLayoutGroup;
    btn_FirmClear: TcxButton;
    litm_lc1Item13: TdxLayoutItem;
    lGrplc1Group4: TdxLayoutGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_fillClick(Sender: TObject);
    procedure btn_correctClick(Sender: TObject);
    procedure btn_penaltClick(Sender: TObject);
    procedure xl_subFormatCell(Sender: TObject; Band: TEXLReportBand;
      RowInTemplate, RowInReport, ColumnInReport: Integer; Report: _Worksheet;
      const CellValue: OleVariant);
    procedure xl_subBeforeBuild(Sender: TObject);
    procedure btn_aktClick(Sender: TObject);
    procedure btn_addClick(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure btn_delClick(Sender: TObject);
    procedure btn_editSummClick(Sender: TObject);
    procedure clv1SHBPropertiesEditValueChanged(Sender: TObject);
    procedure clv1PRVPropertiesEditValueChanged(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure N1Click(Sender: TObject);
    procedure clv1HistoryPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btn_AddSrvClick(Sender: TObject);
    procedure btn_EditSrvClick(Sender: TObject);
    procedure btn_DeleteSrvClick(Sender: TObject);
    procedure btn_SrvClearClick(Sender: TObject);
    procedure btn_YClearClick(Sender: TObject);
    procedure btn_MClearClick(Sender: TObject);
    procedure btn_FirmClearClick(Sender: TObject);
  private
    { Private declarations }
    FCounter :integer;
    rdu :string;
    procedure PrepareContr;
    procedure OpenDs;
    procedure CreateMonth;
    procedure Open_FACTDOCLIST;
    procedure FillFact;
    procedure Correct;
    procedure penalties;
    procedure ExportAct;
    function GetDogCod(var dc,kontr :Variant) :Variant;
    function GetHouse(dog :variant) :WideString;
    function GetCodBDR :Variant;
    procedure AddRec(isEdit :boolean);
    procedure DelRec;
    function CheckParam :Boolean;
    //
    procedure SumFactEdit;
    procedure SetGrant;
    //
    procedure OpenHistory;

    procedure EditSrv(isEdit: Boolean);
    procedure DeleteSrv;
    procedure SearchData;
    procedure OpenDefaultData;
  public
    { Public declarations }
  end;

var
  BDRFactDocForm: TBDRFactDocForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, LoadingSplash, GetDogFrm, BkpDoc,
  BDRFactEditFrm, dezCommon, POActSmetaFrm, FactDocHistoryFrm,
  BDRFactDocEditFrm, resStr;

{$R *.dfm}

procedure TBDRFactDocForm.AddRec(isEdit :boolean);
begin
  if not CheckParam then Exit;
  if not isEdit then
  begin
    if ds_FACTDOC.Locate('M;Y;HOUSESRV',
                          VarArrayOf([cbb_month.ItemIndex,
                                      msk_Y.EditValue,
                                      cbb_srv.EditValue]),[]) then
    begin
      ShowMessage('Данная запись уже существует');
      Exit;
    end;
  end;
  with ds_FACTDOC do begin
    if isEdit then Edit else
    Append;
    FN('M').AsVariant:=cbb_month.ItemIndex;
    FN('Y').AsVariant:=msk_Y.EditValue;
    FN('HOUSESRV').AsVariant:=cbb_srv.EditValue;
    Post;
  end;

end;

procedure TBDRFactDocForm.DeleteSrv;
begin
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Предупреждение', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
  begin
    ds_FACTDOC.Delete;
  end;
end;

procedure TBDRFactDocForm.DelRec;
begin
  if cmMessageBox('Вы действительно хотите удалить запись?') then
  ds_FACTDOC.Delete;
end;

function TBDRFactDocForm.CheckParam :Boolean;
begin
  Result:=True;
  if (msk_Y.EditValue=null) or (cbb_srv.EditValue=null) or
                                                    (cbb_month.ItemIndex=0) then
  begin
    cmShowMessage('Не заполнены обязательные параметры',true);
    Result:=False;
  end;
end;

procedure TBDRFactDocForm.clv1HistoryPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  OpenHistory;
end;

procedure TBDRFactDocForm.clv1PRVPropertiesEditValueChanged(Sender: TObject);
begin
  v1.DataController.Post();
end;

procedure TBDRFactDocForm.clv1SHBPropertiesEditValueChanged(Sender: TObject);
begin

end;

{------------------------------------------------------------------------------
 Кнопка заполнить
-------------------------------------------------------------------------------}
procedure TBDRFactDocForm.FillFact;
var
  Q,Q1,Q2,Q3 :TFibQuery;
  hs :WideString;
  dg :Variant;
  //
  procedure MakeSQL;
  begin
    // дома из договора
    Q:=GetQueryForUse(cmDB.RT,'select '',''||list(sd.HOUSE,'','')||'','' house'
                              + #13#10 +
                              'FROM SRVDOGHOUSE sd' + #13#10 +
                              'WHERE sd.SRVDOG=:DOG');
    //код БДР
    Q1:=GetQueryForUse(cmDB.RT,'SELECT fb.CODE,fb.Y,fb.M,fb.HOUSESRV' + #13 +
                              #10 + 'FROM PBDR fb' + #13#10 +
                              'where fb.y=:y and fb.M=:M and fb.HOUSESRV=:srv');
    //очищаем таблицу перед заполнением
    Q2:=GetQueryForUse(cmDB.WT,'delete from FACTDOCLIST' + #13#10 +
                              'where (FACTDOC = :FD)');
    Q2.Options:=[qoStartTransaction,qoAutoCommit];
  end;
  //
  procedure FreeSQL;
  begin
    FreeQueryForUse(Q);
    FreeQueryForUse(Q1);
    FreeQueryForUse(Q2);
    FreeQueryForUse(Q3);
  end;
  //
  function GetCodBDR(m,y,srv :Variant) :Variant;
  begin
    Q1.ParamByName('Y').AsVariant:=Y;
    Q1.ParamByName('M').AsVariant:=M;
    Q1.ParamByName('srv').AsVariant:=SRV;
    Q1.ExecQuery;
    Result:=Q1.FN('CODE').AsVariant;
  end;
  //
  function GetHouse(dog :variant) :WideString;
  begin
    Q.ParamByName('DOG').AsVariant:=dog;
    Q.ExecQuery;
    Result:=Q.FN('house').AsWideString;
  end;
  //
  function ClearFDoc :Boolean;
  begin
    if v1.GetColumnByFieldName('CODE').EditValue=Unassigned then
    begin
     Result:=False;
     Exit;
    end;
    if Application.MessageBox('Перед заполнением данные будут очищенны!' +
      #13#10 + '                       Продолжить?', 'Предупреждение',
      MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDNO then
    begin
      Result:=False;
      Exit;
    end;
    Q2.ParamByName('FD').AsVariant:=v1.GetColumnByFieldName('CODE').EditValue;
    Q2.ExecQuery;
    Result:=True;
  end;

  procedure FillData;
  var
    FBD :variant;
  begin
    FBD :=GetCodBDR( v1.GetColumnByFieldName('M').EditValue,
                     v1.GetColumnByFieldName('Y').EditValue,
                     v1.GetColumnByFieldName('HOUSESRV').EditValue);
    if FBD=null then Exit;
    //hs:=#39+GetHouse(dg)+#39;
    //заполняем данные
    Q3:=GetQueryForUse(cmDB.RT,'select HOUSE, F22 from PBDR1 ' + #13#10 +
                               'where PBDR = :FBD');
    Q3.ParamByName('FBD').AsVariant:=FBD;
    //Q3.ParamByName('HSE').AsWideString:=#39+hs+#39;
    Q3.ExecQuery;
    //insert data
    ds_FACTDOCLIST.DisableControls;
    while not Q3.Eof do begin
      with ds_FACTDOCLIST do begin
        Append;
        FN('FACTDOC').AsVariant:=v1.GetColumnByFieldName('CODE').EditValue;
        FN('PLANSUM').AsVariant:=Q3.FN('F22').AsVariant;
        FN('FACTSUM').AsVariant:=Q3.FN('F22').AsVariant;
        FN('CORRECT').AsVariant:=0;
        FN('HOUSE').AsVariant:=Q3.FN('HOUSE').AsVariant;
        Post;
      end;
      Q3.Next;
    end;
    ds_FACTDOCLIST.EnableControls;
  end;

begin
  try
    SplashVisibility(True,'Заполняем данные...');
    //формируем запросы
    MakeSQL;
    //получаем код договора
    //dg:=GetDogCod;
    //if dg=null then Exit;
    SetCapt('Очищаем таблицу');
    //чистим таблицу
    if not ClearFDoc then
    begin
      FreeSQL;
      Exit;
    end;
    SetCapt('формируем таблицу');
    FillData;
    Open_FACTDOCLIST;
    // чистим
    FreeSQL;
  finally
    SplashVisibility(false);
  end;
end;


{------------------------------------------------------------------------------
 Кнопка штрафные санкции
-------------------------------------------------------------------------------}
procedure TBDRFactDocForm.Correct;
var
  Q,Q1,Q2,Q3 :TFibQuery;
  srv,cod :Variant;
  hs :WideString;
  //
  procedure MakeSQL;
  begin
    // дома из БДР
    Q:=GetQueryForUse(cmDB.RT,'select '',''||list(sd.HOUSE,'','')||'','' house'
                              + #13#10 +
                              'FROM PBDR1 sd' + #13#10 +
                              'WHERE sd.PBDR = :FBD');
    //код БДР
    Q1:=GetQueryForUse(cmDB.RT,'SELECT fb.CODE,fb.Y,fb.M,fb.HOUSESRV' + #13 +
                              #10 + 'FROM PBDR fb' + #13#10 +
                              'where fb.y=:y and fb.M=:M and fb.HOUSESRV=:srv');
    //очищаем поле CORRECT  FACTSUM = PLANSUM
    Q2:=GetQueryForUse(cmDB.WT,'update FACTDOCLIST' + #13#10 +
                              'set FACTSUM = PLANSUM,' + #13#10 +
                              '    CORRECT = 0' + #13#10 +
                              'where (FACTDOC = :FD)');
    Q2.Options:=[qoStartTransaction,qoAutoCommit];
  end;
  //
  procedure FreeSQL;
  begin
    FreeQueryForUse(Q);
    FreeQueryForUse(Q1);
    FreeQueryForUse(Q2);
    FreeQueryForUse(Q3);
  end;

  function GetCodBDR :Variant;
  begin
    Q1.ParamByName('Y').AsVariant:=v1.GetColumnByFieldName('Y').EditValue;
    Q1.ParamByName('M').AsVariant:=v1.GetColumnByFieldName('M').EditValue;
    Q1.ParamByName('srv').AsVariant:=v1.GetColumnByFieldName('HOUSESRV').EditValue;
    Q1.ExecQuery;
    Result:=Q1.FN('CODE').AsVariant;
  end;

  function GetHouse :WideString;
  begin
    Result:='';
    Q.ParamByName('FBD').AsVariant:=cod;
    Q.ExecQuery;
    if Q.FN('house').AsVariant<>null then
    result:=Q.FN('house').AsWideString;
  end;

  procedure GetSum;
  var
    d1,d2 :TDateTime;
  begin
    d1:=StartOfAMonth(v1.GetColumnByFieldName('Y').EditValue,
                      v1.GetColumnByFieldName('m').EditValue);
    d2:=EndOfAMonth(v1.GetColumnByFieldName('Y').EditValue,
                    v1.GetColumnByFieldName('m').EditValue)-1;

    Q3:=GetQueryForUse(cmDB.RT,
        'select OC.HOUSE, Sum(OC.SUMMA) SUMMA' + #13#10 +
        'from OUTCASHBDR OC' + #13#10 +
        'where OC.DATA between :D1 and :D2 and oc.housesrv=:srv and' + #13#10 +
        '('+hs+' containing '','' || OC.HOUSE || '','')' + #13#10 +
        'group by oc.house');
    Q3.ParamByName('D1').AsVariant:=d1;
    Q3.ParamByName('D2').AsVariant:=d2;
    Q3.ParamByName('srv').AsVariant:=srv;
    Q3.ExecQuery;
    ds_FACTDOCLIST.DisableControls;
    while not Q3.Eof do begin
      with ds_FACTDOCLIST do begin
        if Locate('HOUSE',Q3.FN('HOUSE').AsVariant,[]) then
        begin
          Edit;
          FN('CORRECT').AsVariant:= Q3.FN('SUMMA').AsVariant;
          FN('FACTSUM').AsVariant:=
                    FN('PLANSUM').AsVariant-Q3.FN('SUMMA').AsVariant;
          Post;
        end;
      end;
      Q3.Next;
    end;
    ds_FACTDOCLIST.EnableControls;
  end;

begin
  try
    SplashVisibility(True,'Дождитесь окончания операции.');
    //формируем запросы
    MakeSQL;
    //код БДР
    cod:=GetCodBDR;
    //услуга
    srv:=v1.GetColumnByFieldName('HOUSESRV').EditValue;
    if (srv=null) or (srv=6) or (srv=8) then
    begin
      FreeSQL;
      Exit;
    end;
    SetCapt('Получаем список домов');
    //список домов
    hs:=GetHouse;
    if hs<>'' then hs:=#39+hs+#39 else
    begin
      FreeSQL;
      Exit;
    end;
    //очищаем поле CORRECT  FACTSUM = PLANSUM
    Q2.ParamByName('FD').AsVariant:=v1.GetColumnByFieldName('CODE').EditValue;
    Q2.ExecQuery;
    SetCapt('Получаем суммы');
    //получаем суммы и корректируем
    GetSum;
    Open_FACTDOCLIST;
    //
    FreeSQL;
  finally
    SplashVisibility(false);
  end;
end;

//получаем договор
function TBDRFactDocForm.GetDogCod(var dc,kontr :Variant) :Variant;
var
  Form: TGetDogForm;
begin
  Result:=null;
  Form := TGetDogForm.Create(Application);
  if Form.ShowModal=mrOk then
  begin
    dc:=Form.v1.GetColumnByFieldName('CODE').EditValue;
    kontr:=Form.v1.GetColumnByFieldName('KName').EditValue;
    Result:=Form.v1.GetColumnByFieldName('CODE').EditValue;
  end;
  Form.Free;
end;

function TBDRFactDocForm.GetHouse(dog :variant) :WideString;
var
  Q :TFibQuery;
begin
    // дома из договора
  Q:=GetQueryForUse(cmDB.RT,'select '',''||list(sd.HOUSE,'','')||'','' house'
                            + #13#10 +
                            'FROM SRVDOGHOUSE sd' + #13#10 +
                            'WHERE sd.SRVDOG=:DOG');
  Q.ParamByName('DOG').AsVariant:=dog;
  Q.ExecQuery;
  Result:=Q.FN('house').AsWideString;
  FreeQueryForUse(Q);
end;

procedure TBDRFactDocForm.N1Click(Sender: TObject);
begin
  OpenHistory;
end;

function TBDRFactDocForm.GetCodBDR :Variant;
var
  Q1 :TFibQuery;
begin
  //код БДР
  Q1:=GetQueryForUse(cmDB.RT,'SELECT fb.CODE,fb.Y,fb.M,fb.HOUSESRV' + #13 +
                            #10 + 'FROM PBDR fb' + #13#10 +
                            'where fb.y=:y and fb.M=:M and fb.HOUSESRV=:srv');
  Q1.ParamByName('Y').AsVariant:=v1.GetColumnByFieldName('Y').EditValue;
  Q1.ParamByName('M').AsVariant:=v1.GetColumnByFieldName('M').EditValue;
  Q1.ParamByName('srv').AsVariant:=v1.GetColumnByFieldName('HOUSESRV').EditValue;
  Q1.ExecQuery;
  Result:=Q1.FN('CODE').AsVariant;
  FreeQueryForUse(Q1);
end;

{------------------------------------------------------------------------------
 Смета
-------------------------------------------------------------------------------}
procedure TBDRFactDocForm.penalties;
var
  dc,kontr,bdr :Variant;
  hs :WideString;
  d1 :Variant;
  //-------------------------------------------
  procedure GetData;
  begin
    with ds_Sanc do
    begin
      Close;
      SelectSQL.Text:=
      'select' + #13#10 +
      '    FB1.HOUSE, FB1.f4 GArea,FB1.f10 GSumma,fb1.f11 NGArea,fb1.f15 ' +
      'NGSumma,' + #13#10 +
      '    (FB1.f4+fb1.f11) Area,(FB1.f10+fb1.f15) Summa,' + #13#10 +
      '    h.nomer,s.code street, s.name SNAME,' + #13#10 +
      '    d.code DU,iif(d.code in ' +
      '(2,3,9,11,13,14),d.name,trim(RIGHT(d.name,2))) DNAME' + #13#10 +
      'from PBDR1 FB1' + #13#10 +
      'left outer join house h on h.code=fb1.house' + #13#10 +
      'left outer join street s on s.code=h.street' + #13#10 +
      'left outer join du d on d.code=h.du' + #13#10 +
      'where FB1.PBDR = :FBD' + #13#10 +
      '     and ('#39+hs+#39' containing '','' || FB1.HOUSE || '','')';
      ParamByName('FBD').AsVariant:=bdr;
      Open;
    end;
  end;
  //---------------------------------------------
  procedure GetTitle;
  begin
    with ds_SancSum do begin
      Close;
      SelectSQL.Text:=
      'select' + #13#10 +
      '    d.code DU,iif(d.code in (2,3,9,11,13,14),' + #13#10 +
      '    d.name,trim(RIGHT(d.name,2))) DNAME,' + #13#10 +
      '    sum(FB1.f4+fb1.f11) SArea,sum(FB1.f10+fb1.f15) SSum' + #13#10 +
      'from PBDR1 FB1' + #13#10 +
      'left outer join house h on h.code=fb1.house' + #13#10 +
      'left outer join du d on d.code=h.du' + #13#10 +
      'where FB1.PBDR = :FBD' + #13#10 +
      '     and ('#39+hs+#39' containing '','' || FB1.HOUSE || '','')' + #13#10 +
      'group by 1,2';
      ParamByName('FBD').AsVariant:=bdr;
      Open;
    end;
  end;
begin
  //получаем код договора и контрагента
  if GetDogCod(dc,kontr)=null then Exit;
  //список домов по договору
  hs:=GetHouse(dc);
  if hs=null then Exit;
  //бдр код
  bdr:=GetCodBDR;
  if bdr=null then Exit;

  d1:=StartOfAMonth(v1.GetColumnByFieldName('Y').EditValue,
                    v1.GetColumnByFieldName('m').EditValue);
  //
  GetTitle;
  GetData;
  if ds_Sanc.isEmpty then
  begin
    ShowMessage('Данные отсутсвуют');
    Exit;
  end;
  //
  xl1.Template:='rep\smeta.xls';
  xl1.TemplSheet:='Заголовок';
  xl1.Bands.Clear;
  with xl1.Bands.AddBand(xlrbtTitle) do
    Range:='A1:I13';
  with xl1.Bands.AddBand(xlrbtMasterData) do
    Range:='A14:I14';
  with xl1.Bands.AddBand(xlrbtSummary) do
    Range:='A15:I22';
  //------------------
  xl1.Dictionary.Clear;
  with xl1.Dictionary.Add do
  begin
    FieldName:='year';
    ValueAsString:=VarToStr(d1);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='Kontr';
    ValueAsString:=VarToStr(kontr);
  end;

  //Данные
  //xl_sub.Template:='rep\smeta.xls';
  xl_sub.TemplSheet:='Данные';
  xl_sub.Bands.Clear;
  with xl_sub.Bands.AddBand(xlrbtTitle) do
    Range:='A1:J7';
  with (xl_sub.Bands.AddBand(xlrbtGroupFooter) as TEXLReportGroupFooterBand) do
  begin
    Name:='GroupFooter1';
    Range:='A10:J10';
  end;
  with (xl_sub.Bands.AddBand(xlrbtGroupHeader) as TEXLReportGroupHeaderBand) do
  begin
    Range:='A9:J9';
    FieldName:='DNAME';
    FooterBand:='GroupFooter1';
  end;
  with xl_sub.Bands.AddBand(xlrbtMasterData) do
    Range:='A8:J8';
  with xl_sub.Bands.AddBand(xlrbtSummary) do
    Range:='A11:J11';
  //------------------
  xl_sub.Dictionary.Clear;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='year';
    ValueAsString:=VarToStr(d1);
  end;
  xl1.Show();
end;

procedure TBDRFactDocForm.PrepareContr;
begin
  litm_Firm.Caption:= CaptionFirm;
end;

procedure TBDRFactDocForm.SearchData;
var
  i: Integer;

  function GetClause: string;
  begin
    if ds_FACTDOC.MainWhereClause<>'' then
       Result:= ds_FACTDOC.MainWhereClause+' and ' else
       Result:= ds_FACTDOC.MainWhereClause;
  end;

begin
  v1.BeginUpdate(lsimImmediate);
  try
    with ds_FACTDOC do begin
      Close;
         MainWhereClause:= '';
      if not VarIsType(cbb_Firm.EditValue,[varEmpty, varNull]) then
         MainWhereClause:= 'f.FIRM = :FIRM';
      if cbb_month.ItemIndex>0 then
         MainWhereClause :=GetClause + 'f.M = :M';
      if Trim(msk_Y.EditText)<>'' then
         MainWhereClause :=GetClause + 'f.Y = :Y';
      if not VarIsType(cbb_srv.EditValue,[varEmpty, varNull])  then
         MainWhereClause :=GetClause + 'f.HOUSESRV = :SRV';
      //params
      if ParamExist('FIRM', i) then
         ParamByName('FIRM').AsVariant:= cbb_Firm.EditValue;
      if ParamExist('M',i) then
         ParamByName('M').AsVariant:= cbb_month.ItemIndex;
      if ParamExist('Y',i) then
         ParamByName('Y').AsVariant:= msk_Y.EditValue;
      if ParamExist('SRV',i) then
         ParamByName('SRV').AsVariant:= cbb_srv.EditValue;
      Open;
    end;
  finally
    v1.EndUpdate;
  end;
end;

procedure TBDRFactDocForm.SetGrant;
begin
  // Code=600; Name='ПДУ документы. Блокировка документов корректировок.';
  clv1PRV.Options.Editing:= DezCommon.IsGrant(600);
  //
  if (v1.FN('SHB')=1) then begin
    btn_EditSrv.Enabled:= False;
    btn_editSumm.Enabled:= False;
    v2.OptionsData.Editing:= false;
  end else begin
    btn_EditSrv.Enabled:= not (v1.FN('PRV')=1);
    btn_editSumm.Enabled:= not (v1.FN('PRV')=1);
    v2.OptionsData.Editing:= not (v1.FN('PRV')=1);
  end;
end;

procedure TBDRFactDocForm.SumFactEdit;
var
  code: Variant;
  f: TBDRFactEditForm;
begin
  code:=gFN(v1,'CODE');
  if code = null then
     raise EMyException.Create('Не выбран документ!');
  f:=TBDRFactEditForm.Create(self);
  try
    f.FactDoc:=code;
    F.HouseSrv:= v1.FN('HOUSESRV');
    f.TableName:='FACTDOCLIST';
    f.SrvName:=VarToStrDef(gFN(v1,'HSNAME'),'');
    if F.ShowModal = mrOk then 
      Open_FACTDOCLIST else //переоткрываем документ
    if F.isEditing = true then 
      Open_FACTDOCLIST;
  finally
    f.Free;
  end;
end;

procedure TBDRFactDocForm.EditSrv(isEdit: Boolean);
var
  F: TBDRFactDocEditForm;
begin
  if ds_FACTDOC.State = dsInactive then
    raise dezException.Create('Набор данных не открыт!'+#10#13+'Выполните поиск.');
  F:= TBDRFactDocEditForm.Create(Self,ds_FACTDOC,true,isEdit);
  try
    F.ShowModal;
  finally
    FreeAndNil(F);
  end;
end;
{------------------------------------------------------------------------------
 Печать акта
-------------------------------------------------------------------------------}
procedure TBDRFactDocForm.ExportAct;
var
  Q :TFIBQuery;
  dc,kontr,bdr,month :Variant;
  hs :WideString;
  d1 :TDateTime;
  //----------------------------------------
  procedure GetData;
  begin
    with ds_Sanc do
    begin
      Close;
      SelectSQL.Text:=
      'select' + #13#10 +
      '    FB1.HOUSE, FB1.f4 GArea,FB1.f10 GSumma,fb1.f11 NGArea,fb1.f15 ' +
      'NGSumma,' + #13#10 +
      '    (FB1.f4+fb1.f11) Area,(FB1.f10+fb1.f15) Summa,' + #13#10 +
      '    h.nomer,s.code street, s.name SNAME,' + #13#10 +
      '    d.code DU,iif(d.code in ' +
      '(2,3,9,11,13,14),d.name,trim(RIGHT(d.name,2))) DNAME' + #13#10 +
      ' ,fd.plansum,fd.factsum,fd.correct, (FB1.f10-fd.correct) S1 ' + #13#10 +
      ' ,((FB1.f10-fd.correct) + f15) Itog ' + #13#10 +
      'from PBDR1 FB1' + #13#10 +
      'left outer join house h on h.code=fb1.house' + #13#10 +
      'left outer join street s on s.code=h.street' + #13#10 +
      'left outer join du d on d.code=h.du' + #13#10 +
      'left outer join factdoclist fd on fd.house=fb1.house and ' +
      'fd.factdoc=:fd'+ #13#10 +
      'where FB1.PBDR = :FBD' + #13#10 +
      '     and ('#39+hs+#39' containing '','' || FB1.HOUSE || '','')';
      ParamByName('FBD').AsVariant:=bdr;
      ParamByName('fd').AsVariant:=v1.GetColumnByFieldName('CODE').EditValue;
      Open;
    end;
  end;
  //---------------------------------------------
  procedure GetTitle;
  begin
    with ds_SancSum do begin
      Close;
      SelectSQL.Text:=
      'select' + #13#10 +
      '    d.code DU,iif(d.code in ' +
      '(2,3,9,11,13,14),d.name,trim(RIGHT(d.name,2))) DNAME' + #13#10 +
      '    ,sum(fd.plansum) plansum,sum(fd.factsum) factsum,sum(fd.correct) ' +
      'correct' + #13#10 +
      'from PBDR1 FB1' + #13#10 +
      'left outer join house h on h.code=fb1.house' + #13#10 +
      'left outer join street s on s.code=h.street' + #13#10 +
      'left outer join du d on d.code=h.du' + #13#10 +
      'left outer join factdoclist fd on fd.house=fb1.house and fd.factdoc=:fd'
      + #13#10 +
      'where FB1.PBDR = :fbd' + #13#10 +
      '  and ('#39+hs+#39' containing '','' || FB1.HOUSE || '','')' + #13#10 +
      'group by 1,2';
      ParamByName('FBD').AsVariant:=bdr;
      ParamByName('fd').AsVariant:=v1.GetColumnByFieldName('CODE').EditValue;
      Open;
    end;
  end;

begin
  //получаем код договора и контрагента
  if GetDogCod(dc,kontr)=null then Exit;
  //список домов по договору
  hs:=GetHouse(dc);
  if hs=null then Exit;
  //бдр код
  bdr:=GetCodBDR;
  if bdr=null then Exit;
  d1:=EndOfAMonth(v1.GetColumnByFieldName('Y').EditValue,
                    v1.GetColumnByFieldName('m').EditValue)-1;
  month := LongMonthNames[Integer(v1.GetColumnByFieldName('m').EditValue)];

  GetTitle;
  GetData;
  if ds_Sanc.isEmpty then
  begin
    ShowMessage('Данные отсутсвуют');
    Exit;
  end;
  //
  xl1.Template:='rep\akt.xls';
  xl1.TemplSheet:='Заголовок';
  xl1.Bands.Clear;
  with xl1.Bands.AddBand(xlrbtTitle) do
    Range:='A1:I13';
  with xl1.Bands.AddBand(xlrbtMasterData) do
    Range:='A14:I14';
  with xl1.Bands.AddBand(xlrbtSummary) do
    Range:='A16:I33';
  with xl1.Bands.AddBand(xlrbtSummary) do
    Range:='A15:I15';

  //-----------------------------------------
  xl1.Dictionary.Clear;
  with xl1.Dictionary.Add do
  begin
    FieldName:='d1';
    ValueAsString:=VarToStr(d1);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='Kontr';
    ValueAsString:=VarToStr(kontr);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='month';
    ValueAsString:=VarToStr(month);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='year';
    ValueAsString:=VarToStr(v1.GetColumnByFieldName('Y').EditValue);
  end;

  //Данные-------------------------------------
  xl_sub.TemplSheet:='Данные';
  xl_sub.Bands.Clear;
  with xl_sub.Bands.AddBand(xlrbtTitle) do
    Range:='A1:J7';
  with (xl_sub.Bands.AddBand(xlrbtGroupFooter) as TEXLReportGroupFooterBand) do
  begin
    Name:='GroupFooter1';
    Range:='A10:J10';
  end;
  with (xl_sub.Bands.AddBand(xlrbtGroupHeader) as TEXLReportGroupHeaderBand) do
  begin
    Range:='A9:J9';
    FieldName:='DNAME';
    FooterBand:='GroupFooter1';
  end;
  with xl_sub.Bands.AddBand(xlrbtMasterData) do
    Range:='A8:J8';
  with xl_sub.Bands.AddBand(xlrbtSummary) do
    Range:='A11:J11';
  //--------------------------------------------
  xl_sub.Dictionary.Clear;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='year';
    ValueAsString:=VarToStr(d1);
  end;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='month';
    ValueAsString:=VarToStr(month);
  end;
  xl1.Show();
end;

procedure TBDRFactDocForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TBDRFactDocForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  PrepareContr;
  OpenDs;
end;

procedure TBDRFactDocForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F7: OpenHistory;
  end;
end;

procedure TBDRFactDocForm.OpenDefaultData;
begin
  v1.BeginUpdate(lsimImmediate);
  try
    with ds_FACTDOC do begin
      Close;
      MainWhereClause:='f.M = :M and f.Y = :Y';
      ParamByName('M').AsVariant:= System.DateUtils.MonthOf(Date);
      ParamByName('Y').AsVariant:= System.DateUtils.YearOf(Date);
      Open;
    end;
  finally
    v1.EndUpdate;
  end;
end;

procedure TBDRFactDocForm.OpenDs;
begin
  CreateMonth;
  if cmDb.src_FIRM.State = dsInactive then  cmDb.ds_FIRM.CloseOpen(False);
  try
    //SplashVisibility(True);
    ds_HOUSESRV.Open;
    DSOptoins(ds_FACTDOC,'','FACTDOC','CODE','FACTDOC_GEN', False);
    DSOptoins(ds_FACTDOCLIST,'','FACTDOCLIST','CODE','FACTDOCLIST_GEN',false);
    Open_FACTDOCLIST;
    OpenDefaultData;
  finally
    //SplashVisibility(false);
  end;
end;

procedure TBDRFactDocForm.OpenHistory;
var
  F: TFactDocHistoryForm;
begin
  if v1.FN('CODE')= null then Exit;
  F:= TFactDocHistoryForm.Create(self);
  try
    F.fDocType:=0;
    F.fDocCode:= v1.FN('CODE');
    F.ShowModal;
  finally
    FreeAndNil(F);
  end;
end;

procedure TBDRFactDocForm.Open_FACTDOCLIST;
begin
  btn_penalt.Enabled:= v1.FN('SHB')=1;
end;

procedure TBDRFactDocForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  Open_FACTDOCLIST;
  SetGrant;
end;

procedure TBDRFactDocForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP : begin
              Open_FACTDOCLIST;

            end;
    VK_DOWN : begin
                Open_FACTDOCLIST;
              end;
    //VK_F7: OpenHistory;
  end;
end;

procedure TBDRFactDocForm.xl_subBeforeBuild(Sender: TObject);
begin
  FCounter:=1;
  rdu:='';
end;

procedure TBDRFactDocForm.xl_subFormatCell(Sender: TObject;
  Band: TEXLReportBand; RowInTemplate, RowInReport, ColumnInReport: Integer;
  Report: _Worksheet; const CellValue: OleVariant);
var
  R1: String;
begin
  if (Band.BandType = xlrbtMasterData) and (ColumnInReport = 4) then
  begin
    R1 := 'A' + IntToStr(RowInReport);
    if CellValue = rdu then
    begin
      Inc(FCounter);
      Report.Range[R1, R1].Value:=FCounter;
    end
    else if CellValue <> rdu then
    begin
      FCounter:=1;
      rdu:=CellValue;
      Report.Range[R1, R1].Value:=FCounter;
      //Report.Range[R1, R2].Font.Color := clWhite;
      //Report.Range[R1, R2].Interior.Color := clRed;
    end;
  end;
end;

procedure TBDRFactDocForm.btn_addClick(Sender: TObject);
begin
  SearchData;
end;

procedure TBDRFactDocForm.btn_AddSrvClick(Sender: TObject);
begin
  EditSrv(false);
end;

procedure TBDRFactDocForm.btn_aktClick(Sender: TObject);
var
  akt :TBkpObj;
  dc,kontr :Variant;
begin
  if GetDogCod(dc,kontr)=null then Exit;
  akt:=TBkpObj.Create;
  try
    akt.Y:= v1.GetColumnByFieldName('Y').EditValue;
    akt.M:= v1.GetColumnByFieldName('M').EditValue;
    akt.SRV:= v1.GetColumnByFieldName('HOUSESRV').EditValue;
    akt.srvName:= v1.GetColumnByFieldName('HSNAME').EditValue;
    akt.kontr:= kontr;
    akt.Dog:= dc;
    akt.PrintAktBDR('SMETABDR1');
  finally
    akt.Free;
  end;
  //ExportAct;
end;

procedure TBDRFactDocForm.btn_correctClick(Sender: TObject);
begin
  Correct;
end;

procedure TBDRFactDocForm.btn_delClick(Sender: TObject);
begin
  DelRec;
end;

procedure TBDRFactDocForm.btn_DeleteSrvClick(Sender: TObject);
begin
  if VarIsType(v1.GetColumnByFieldName('CODE').EditValue,[varEmpty, varNull]) then
    Exit;
  DeleteSrv;
end;

procedure TBDRFactDocForm.btn_editClick(Sender: TObject);
begin
  AddRec(True);
end;

procedure TBDRFactDocForm.btn_EditSrvClick(Sender: TObject);
begin
  EditSrv(True);
end;

procedure TBDRFactDocForm.btn_editSummClick(Sender: TObject);
begin
  SumFactEdit;
end;

procedure TBDRFactDocForm.btn_fillClick(Sender: TObject);
begin
  FillFact;
end;

procedure TBDRFactDocForm.btn_FirmClearClick(Sender: TObject);
begin
 cbb_Firm.Clear;
end;

procedure TBDRFactDocForm.btn_MClearClick(Sender: TObject);
begin
  cbb_month.ItemIndex :=0;
end;

procedure TBDRFactDocForm.btn_penaltClick(Sender: TObject);
var
  smeta :TBkpObj;
  dc,kontr, srv :Variant;
  F: TPOActSmetaForm;
begin
  srv:='0_'+cbb_srv.EditValue;
  F:=TPOActSmetaForm.Create(self);
  F.ExDoc:= v1.FN('CODE');
  F.ExM:= v1.FN('M');
  F.ExY:= v1.FN('Y');
  F.ExSRV:= srv;
  F.msk_Y.Enabled:= False;
  F.cbb_month.Enabled:= False;
  F.cbb_srv.Enabled:= False;
  F.ShowModal;

  {if GetDogCod(dc,kontr)=null then Exit;
  smeta:=TBkpObj.Create;
  try
    smeta.Y:= v1.GetColumnByFieldName('Y').EditValue;
    smeta.M:= v1.GetColumnByFieldName('M').EditValue;
    smeta.SRV:= v1.GetColumnByFieldName('HOUSESRV').EditValue;
    smeta.srvName:= v1.GetColumnByFieldName('HSNAME').EditValue;
    smeta.kontr:= kontr;
    smeta.Dog:= dc;
    //
    smeta.PrintSmetaBDR1;
  finally
    smeta.Free;
  end; }
  //penalties;
end;

procedure TBDRFactDocForm.btn_SrvClearClick(Sender: TObject);
begin
  cbb_srv.Clear;
end;

procedure TBDRFactDocForm.btn_YClearClick(Sender: TObject);
begin
  msk_Y.Clear;
end;

procedure TBDRFactDocForm.CreateMonth;
var
  i :Integer;
  procedure AddRec(ACode: Integer; AName: string);
  begin
    with m_month do
    begin
      Append;
      FieldByName('Code').AsInteger := ACode;
      FieldByName('Name').AsString := AName;
      Post;
    end;
  end;
begin
  CreateField(m_month,'Code',ftInteger);
  CreateField(m_month,'Name',ftString,64);
  m_month.Open;
  for I := 1 to 12 do
  AddRec(i,LongMonthNames[i]);
end;

 initialization
 RegisterClass(TBDRFactDocForm);
end.














