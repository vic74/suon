unit BDR1FactDocFrm;

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
  cxDBLookupComboBox, dxLayoutcxEditAdapters, cxContainer, Menus, StdCtrls,
  cxButtons, cxLookupEdit, cxDBLookupEdit, cxMaskEdit, cxTextEdit,
  cxDropDownEdit, cxCalc, dxSkinsdxBarPainter, dxBar, EXLReportExcelTLB,
  EXLReportBand, EXLReport, dxLayoutControlAdapters, dxLayoutContainer,
  dxSkinDevExpressStyle, cxCheckBox, cxGridCustomPopupMenu, cxGridPopupMenu,
  cxButtonEdit, dxSkinsDefaultPainters, cxNavigator, dxSkinVS2010;

type
  TBDR1FactDocForm = class(TDezForm)
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
    clv2FACT1DOC: TcxGridDBColumn;
    clv2PLANSUM: TcxGridDBColumn;
    clv2FACTSUM: TcxGridDBColumn;
    clv2CORRECT: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2NOMER: TcxGridDBColumn;
    clv2STNAME: TcxGridDBColumn;
    grp2: TdxLayoutGroup;
    grp3: TdxLayoutGroup;
    grplc1Group1: TdxLayoutGroup;
    ds_HOUSESRV: TpFIBDataSet;
    src_HOUSESRV: TDataSource;
    cbb_month: TcxComboBox;
    itm_month: TdxLayoutItem;
    msk_Y: TcxMaskEdit;
    itm_Y: TdxLayoutItem;
    cbb_srv: TcxLookupComboBox;
    itm_srv: TdxLayoutItem;
    btn_add: TcxButton;
    itm_add: TdxLayoutItem;
    m_Srv: TdxMemData;
    src_Srv: TDataSource;
    brm1: TdxBarManager;
    bar1: TdxBar;
    btn_fill: TdxBarButton;
    btn_correct: TdxBarButton;
    btn_penalt: TdxBarButton;
    btn_akt: TdxBarButton;
    doc1: TdxBarDockControl;
    itm_doc1: TdxLayoutItem;
    ds_Sanc: TpFIBDataSet;
    ds_SancSum: TpFIBDataSet;
    m_Title: TdxMemData;
    m_Data: TdxMemData;
    xl1: TEXLReport;
    xl_sub: TEXLReport;
    btn_EditSumm: TdxBarButton;
    clv1SHB: TcxGridDBColumn;
    clv2SQ1: TcxGridDBColumn;
    clv2SQ2: TcxGridDBColumn;
    clv2SQ3: TcxGridDBColumn;
    clv1PRV: TcxGridDBColumn;
    clv2KNAME: TcxGridDBColumn;
    clv2KONTRAGENT: TcxGridDBColumn;
    pm1: TPopupMenu;
    N1: TMenuItem;
    ppm1: TcxGridPopupMenu;
    clv1History: TcxGridDBColumn;
    clv1FIRM: TcxGridDBColumn;
    brm1Bar1: TdxBar;
    btn_AddSRV: TdxBarButton;
    btn_EditSrv: TdxBarButton;
    btn_DeleteSrv: TdxBarButton;
    cbb_Firm: TcxLookupComboBox;
    litm_Firm: TdxLayoutItem;
    btn_SrvClear: TcxButton;
    litm_lc1Item1: TdxLayoutItem;
    lGrplc1Group1: TdxLayoutGroup;
    litm_lc1Item2: TdxLayoutItem;
    lGrplc1Group2: TdxLayoutGroup;
    litm_lc1Item3: TdxLayoutItem;
    lGrplc1Group3: TdxLayoutGroup;
    litm_lc1Item4: TdxLayoutItem;
    lGrplc1Group4: TdxLayoutGroup;
    btn_YClear: TcxButton;
    btn_MClear: TcxButton;
    btn_FirmClear: TcxButton;
    lGrplc1Group5: TdxLayoutGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_addClick(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure btn_delClick(Sender: TObject);
    procedure btn_fillClick(Sender: TObject);
    procedure btn_correctClick(Sender: TObject);
    procedure btn_penaltClick(Sender: TObject);
    procedure btn_aktClick(Sender: TObject);
    procedure btn_EditSummClick(Sender: TObject);
    procedure clv1SHBPropertiesEditValueChanged(Sender: TObject);
    procedure clv1PRVPropertiesEditValueChanged(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure clv1HistoryPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btn_AddSRVClick(Sender: TObject);
    procedure btn_EditSrvClick(Sender: TObject);
    procedure btn_DeleteSrvClick(Sender: TObject);
    procedure btn_SrvClearClick(Sender: TObject);
    procedure btn_YClearClick(Sender: TObject);
    procedure btn_MClearClick(Sender: TObject);
    procedure btn_FirmClearClick(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDs;
    procedure CreateMonth;
    procedure Open_FACTDOCLIST;
    procedure FillEditor;
    procedure AddRec(isEdit :boolean);
    function CheckParam :Boolean;
    procedure DelRec;
    procedure CreateSrv;
    procedure FillBtn;
    procedure GetParamBDR(var bdr,srv,tbl,fld :Variant);
    procedure Correct;
    procedure PrintSmeta;
    function GetDogCod(var dc,kontr :Variant) :Variant;
    function GetHouse(dog :variant) :WideString;
    function GetCodBDR :Variant;
    procedure CreatePrintMem;
    procedure ExportAct;
    procedure GetODS;
    //
    procedure SumFactEdit;
    //
    procedure SetGrant;
    procedure OpenHistory;

    procedure EditSRV(isEdit: Boolean);
    procedure DeleteSrv;
    procedure OpenDefaultData;
    procedure SearchData;
    //
    procedure Localize;
  public
    { Public declarations }
  end;

var
  BDR1FactDocForm: TBDR1FactDocForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, LoadingSplash, GetDogFrm, Bkp1Doc, BkpDoc,
  BDRFactEditFrm, dezCommon, POActSmetaFrm, FactDocHistoryFrm,
  BDRFactDocEditFrm, resStr;

{$R *.dfm}

procedure TBDR1FactDocForm.FillEditor;
begin
//  cbb_month.ItemIndex:=v1.GetColumnByFieldName('M').EditValue;
//  cbb_srv.EditValue:=v1.GetColumnByFieldName('HOUSESRV').EditValue;
//  msk_Y.EditValue:=v1.GetColumnByFieldName('Y').EditValue;
end;

procedure TBDR1FactDocForm.AddRec(isEdit :boolean);
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

procedure TBDR1FactDocForm.DeleteSrv;
begin
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Предупреждение', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
  begin
    ds_FACTDOC.Delete;
  end;
end;

procedure TBDR1FactDocForm.DelRec;
begin
  if cmMessageBox('Вы действительно хотите удалить запись?') then
  ds_FACTDOC.Delete;
end;

procedure TBDR1FactDocForm.btn_addClick(Sender: TObject);
begin
  SearchData;
end;

procedure TBDR1FactDocForm.btn_AddSRVClick(Sender: TObject);
begin
  EditSRV(false);
end;

procedure TBDR1FactDocForm.btn_aktClick(Sender: TObject);
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
    akt.srvName:= v1.GetColumnByFieldName('HOUSESRVNAME').EditValue;
    akt.kontr:= kontr;
    akt.Dog:= dc;
      case v1.GetColumnByFieldName('HOUSESRV').EditValue of
        0 :  akt.PrintAktBDR('SMETABDR2');
        1 :  akt.PrintAktBDR('SMETABDR2');
        5 :  akt.PrintAktBDR('SMETABDR2');
        6 :  akt.PrintAktBDR('SMETABDR2');
        //
        2 :  akt.PrintAktBDR('SMETABDR3');
        7 :  akt.PrintAktBDR('SMETABDR3');
        12 : akt.PrintAktBDR('SMETABDR3');
      end;
  finally
    akt.Free;
  end;
end;

procedure TBDR1FactDocForm.btn_correctClick(Sender: TObject);
begin
  Correct;
end;

procedure TBDR1FactDocForm.btn_delClick(Sender: TObject);
begin
  DelRec;
end;

procedure TBDR1FactDocForm.btn_DeleteSrvClick(Sender: TObject);
begin
  if VarIsType(v1.GetColumnByFieldName('CODE').EditValue,[varEmpty, varNull]) then
    Exit;
  DeleteSrv;
end;

procedure TBDR1FactDocForm.btn_editClick(Sender: TObject);
begin
  AddRec(True);
end;

procedure TBDR1FactDocForm.btn_EditSrvClick(Sender: TObject);
begin
  EditSRV(true);
end;

procedure TBDR1FactDocForm.btn_EditSummClick(Sender: TObject);
begin
  SumFactEdit;
end;

procedure TBDR1FactDocForm.btn_fillClick(Sender: TObject);
begin
  FillBtn;
end;

procedure TBDR1FactDocForm.btn_FirmClearClick(Sender: TObject);
begin
  cbb_Firm.Clear;
end;

procedure TBDR1FactDocForm.btn_MClearClick(Sender: TObject);
begin
  cbb_month.ItemIndex :=0;
end;

procedure TBDR1FactDocForm.btn_penaltClick(Sender: TObject);
var
  smeta :TBkpObj;
  dc,kontr, srv :Variant;
  F: TPOActSmetaForm;
begin
  srv:='1_'+cbb_srv.EditValue;

  F:=TPOActSmetaForm.Create(self);
  //F.ExKontr:= v1.FN('kCODE');
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
    smeta.srvName:= v1.GetColumnByFieldName('HOUSESRVNAME').EditValue;
    smeta.kontr:= kontr;
    smeta.Dog:= dc;
    //
    case v1.GetColumnByFieldName('HOUSESRV').EditValue of
      0 :  smeta.PrintSmetaBDR2;
      1 :  smeta.PrintSmetaBDR2;
      5 :  smeta.PrintSmetaBDR2;
      6 :  smeta.PrintSmetaBDR2;
      //
      2 :  smeta.PrintSmetaBDR3;
      7 :  smeta.PrintSmetaBDR3;
      12 : smeta.PrintSmetaBDR3;
    end;
  finally
    smeta.Free;
  end;}
end;

procedure TBDR1FactDocForm.btn_SrvClearClick(Sender: TObject);
begin
  cbb_srv.Clear;
end;

procedure TBDR1FactDocForm.btn_YClearClick(Sender: TObject);
begin
  msk_Y.Clear;
end;

function TBDR1FactDocForm.CheckParam :Boolean;
begin
  Result:=True;
  if (msk_Y.EditValue=null) or (cbb_srv.EditValue=null) or
                                                    (cbb_month.ItemIndex=0) then
  begin
    cmShowMessage('Не заполнены обязательные параметры',true);
    Result:=False;
  end;
end;
procedure TBDR1FactDocForm.clv1HistoryPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  OpenHistory;
end;

procedure TBDR1FactDocForm.clv1PRVPropertiesEditValueChanged(Sender: TObject);
begin
  v1.DataController.Post();
end;

procedure TBDR1FactDocForm.clv1SHBPropertiesEditValueChanged(Sender: TObject);
begin

end;

{------------------------------------------------------------------------------
 Коррекция
-------------------------------------------------------------------------------}
procedure TBDR1FactDocForm.Correct;
var
  bdr,srv,tbl,fld,housesrv :Variant;
  d1 ,d2 :TDateTime;

  procedure ClearFact;
  var
    Q1:TFIBQuery;
  begin
    Q1:=GetQueryForUse(cmDB.WT,'update FACT1DOCLIST set FACTSUM = 0' + #13#10 +
                              'where (FACT1DOC = :CODE)');
    Q1.Options:=[qoStartTransaction,qoAutoCommit];
    Q1.ParamByName('CODE').AsVariant:=v1.GetColumnByFieldName('CODE').EditValue;
    Q1.ExecQuery;
    FreeQueryForUse(Q1);
  end;

  procedure GetFact0(table :string);
  var
    Q :TFIBQuery;
    cnt :Integer;
  begin
    SplashVisibility(True,'Дождитесь окончания операции');
    v2.BeginUpdate;
    try
      Q:=GetQueryForUse(cmDB.RT,'SELECT sum(tw.SUMMA) summa,tw.house' + #13 +
                                #10 + 'FROM TRWORKBDR tw' + #13#10 +
                                'left outer join mlist m on m.code=tw.mlist' +
                                #13#10 +
                                'left outer join mgroup mg on mg.code=m.mgroup'
                                + #13#10 +
                                'where tw.DATA between :d1 and :d2' + #13#10 +
                                'and mg.code=3' + #13#10 +
                                'group by tw.house');
      //Q.ParamByName('hs').AsVariant:=FN('HOUSE').AsVariant;
      Q.ParamByName('d1').AsDateTime:=d1;
      Q.ParamByName('d2').AsDateTime:=d2;
      Q.ExecQuery;
      with ds_FACTDOCLIST do begin
        DisableControls;
        First;
        while not EOF do begin
          Edit;
          FN('FACTSUM').AsVariant:=0;
          Post;
          Next;
        end;
        EnableControls;
      end;

      while not Q.Eof do
      with ds_FACTDOCLIST do begin
        if Locate('HOUSE',Q.FN('HOUSE').AsVariant,[]) then
        begin
          Edit;
          FN('FACTSUM').AsVariant:=0;
          Post;
          if (Q.FN('SUMMA').AsVariant<>0) and (Q.FN('SUMMA').AsVariant<>null) then
          begin
            Edit;
             FN('FACTSUM').AsVariant:=Q.FN('SUMMA').AsVariant;
             FN('CORRECT').AsVariant:=FN('PLANSUM').AsVariant-Q.FN('SUMMA').AsVariant;
            Post;
          end;
        end else
        begin
          Append;
            FN('FACT1DOC').AsVariant:=v1.GetColumnByFieldName('CODE').EditValue;
            FN('PLANSUM').AsVariant:=0;
            FN('FACTSUM').AsVariant:=Q.FN('SUMMA').AsVariant;
            FN('CORRECT').AsVariant:=0-Q.FN('SUMMA').AsVariant;
            FN('HOUSE').AsVariant:=Q.FN('HOUSE').AsVariant;
          Post;
        end;
        Q.Next;
      end;
      {with ds_FACTDOCLIST do begin
        cnt:=RecordCount;
        DisableControls;
        First;
        while not EOF do begin
          Q.ParamByName('hs').AsVariant:=FN('HOUSE').AsVariant;
          Q.ParamByName('d1').AsDateTime:=d1;
          Q.ParamByName('d2').AsDateTime:=d2;
          Q.ExecQuery;
          SetCapt(IntToStr(RecNo)+' - '+IntToStr(cnt));
          Edit;
          FN('FACTSUM').AsVariant:=0;
          Post;
          if (Q.FN('SUMMA').AsVariant<>0) and (Q.FN('SUMMA').AsVariant<>null) then
          begin
            Edit;
             FN('FACTSUM').AsVariant:=Q.FN('SUMMA').AsVariant;
             FN('CORRECT').AsVariant:=FN('PLANSUM').AsVariant-Q.FN('SUMMA').AsVariant;
            Post;
          end;
          Next;
        end;
        EnableControls;
      end;}
    finally
      SplashVisibility(false);
      FreeQueryForUse(Q);
      v2.EndUpdate;
    end;
  end;

  procedure GetFact1(table :string);
  var
    Q :TFIBQuery;
    cnt :Integer;
  begin
    SplashVisibility(True,'Дождитесь окончания операции');
    try
      v2.BeginUpdate;
      Q:=GetQueryForUse(cmDB.RT,'SELECT sum(tw.SUMMA) summa,tw.house' + #13 +
                                #10 + 'FROM TRWORKBDR tw' + #13#10 +
                                'left outer join mlist m on m.code=tw.mlist' +
                                #13#10 +
                                'left outer join mgroup mg on mg.code=m.mgroup'
                                + #13#10 +
                                'where tw.DATA between :d1 and :d2' + #13#10 +
                                'and mg.code=1' + #13#10 +
                                'group by tw.house');

      Q.ParamByName('d1').AsDateTime:=d1;
      Q.ParamByName('d2').AsDateTime:=d2;
      Q.ExecQuery;
      with ds_FACTDOCLIST do begin
        DisableControls;
        First;
        while not EOF do begin
          Edit;
          FN('FACTSUM').AsVariant:=0;
          Post;
          Next;
        end;
        EnableControls;
      end;

      while not Q.Eof do
      with ds_FACTDOCLIST do begin
        if Locate('HOUSE',Q.FN('HOUSE').AsVariant,[]) then
        begin
          if (Q.FN('SUMMA').AsVariant<>0) and (Q.FN('SUMMA').AsVariant<>null) then
          begin
            Edit;
             FN('FACTSUM').AsVariant:=Q.FN('SUMMA').AsVariant;
             FN('CORRECT').AsVariant:=FN('PLANSUM').AsVariant-Q.FN('SUMMA').AsVariant;
            Post;
          end;
        end else
        begin
          Append;
            FN('FACT1DOC').AsVariant:=v1.GetColumnByFieldName('CODE').EditValue;
            FN('PLANSUM').AsVariant:=0;
            FN('FACTSUM').AsVariant:=Q.FN('SUMMA').AsVariant;
            FN('CORRECT').AsVariant:=0-Q.FN('SUMMA').AsVariant;
            FN('HOUSE').AsVariant:=Q.FN('HOUSE').AsVariant;
          Post;
        end;
        Q.Next;
      end;
    finally
      SplashVisibility(false);
      FreeQueryForUse(Q);
      v2.EndUpdate;
    end;

  end;

  procedure GetFact(table :string);
  var
    Q :TFIBQuery;
    cnt :Integer;
  begin
    SplashVisibility(True,'Дождитесь окончания операции');
    try
      v2.BeginUpdate;
      Q:=GetQueryForUse(cmDB.RT,'SELECT sum(tw.SUMMA) summa,tw.house' + #13 +
                                #10 + 'FROM TRLWORKBDR tw' + #13#10 +
                                'where tw.DATA between :d1 and :d2' + #13#10 +
                                'group by tw.house');

      Q.ParamByName('d1').AsDateTime:=d1;
      Q.ParamByName('d2').AsDateTime:=d2;
      Q.ExecQuery;
      with ds_FACTDOCLIST do begin
        DisableControls;
        First;
        while not EOF do begin
          Edit;
          FN('FACTSUM').AsVariant:=0;
          Post;
          Next;
        end;
        EnableControls;
      end;

      while not Q.Eof do
      with ds_FACTDOCLIST do begin
        if Locate('HOUSE',Q.FN('HOUSE').AsVariant,[]) then
        begin
          if (Q.FN('SUMMA').AsVariant<>0) and (Q.FN('SUMMA').AsVariant<>null) then
          begin
            Edit;
             FN('FACTSUM').AsVariant:=Q.FN('SUMMA').AsVariant;
             FN('CORRECT').AsVariant:=FN('PLANSUM').AsVariant-Q.FN('SUMMA').AsVariant;
            Post;
          end;
        end else
        begin
          Append;
            FN('FACT1DOC').AsVariant:=v1.GetColumnByFieldName('CODE').EditValue;
            FN('PLANSUM').AsVariant:=0;
            FN('FACTSUM').AsVariant:=Q.FN('SUMMA').AsVariant;
            FN('CORRECT').AsVariant:=0-Q.FN('SUMMA').AsVariant;
            FN('HOUSE').AsVariant:=Q.FN('HOUSE').AsVariant;
          Post;
        end;
        Q.Next;
      end;
    finally
      SplashVisibility(false);
      FreeQueryForUse(Q);
      v2.EndUpdate;
    end;
  end;

begin
  //определяем тип услуги (6- общестрой,8 - лифт)
  //GetParamBDR(bdr,srv,tbl,fld);
  housesrv:=v1.GetColumnByFieldName('HOUSESRV').EditValue;
  d1:=StartOfAMonth(v1.GetColumnByFieldName('Y').EditValue,
                                        v1.GetColumnByFieldName('m').EditValue);
  d2:=EndOfAMonth(v1.GetColumnByFieldName('Y').EditValue,
                                      v1.GetColumnByFieldName('m').EditValue);
  //согласно услуги получаем факт (6-TRWORKBDR, 8-TRLWORKBDR) по дому
  case housesrv of
    0 : GetFact0('TRWORKBDR');
    1 : GetFact1('TRWORKBDR');
    2 : GetFact('TRLWORKBDR');
    3 : GetODS;
  end;
end;

procedure TBDR1FactDocForm.GetODS;
var
  ODCode,SumNum,Summa, CostNum :Variant;
  d1,d2 :TDateTime;
  //код документа ODSDOC
  function Get_ODSDOC_Code :Variant;
  var
    Q :TFIBQuery;
  begin
    Q:=GetQueryForUse(cmDB.RT,'SELECT CODE FROM ODSDOC' + #13#10 +
                              'where Y=:Y and M=:M');
    Q.ParamByName('Y').AsVariant:=v1.GetColumnByFieldName('Y').EditValue;
    Q.ParamByName('M').AsVariant:=v1.GetColumnByFieldName('M').EditValue;
    Q.ExecQuery;
    Result:=Q.FN('CODE').AsVariant;
    FreeQueryForUse(Q);
  end;

  function CompareQuery :Boolean;
  var
    Q,Q1 :TpFIBDataSet;
  begin
    Result:=true;
    Q := TpFIBDataSet.Create(Self);
    Q.Transaction := cmDB.RT;
    Q.Database := cmDB.DB;
    Q.UpdateTransaction := cmDB.WT;
    Q.SelectSQL.Text:='select f1d.house from fact1doclist f1d' + #13 +
                              #10 + 'where f1d.fact1doc=:fd';
    Q.ParamByName('fd').AsVariant:=v1.GetColumnByFieldName('CODE').EditValue;
    Q.OrderClause:='f1d.house';
    Q.Open;

    Q1 := TpFIBDataSet.Create(Self);
    Q1.Transaction := cmDB.RT;
    Q1.Database := cmDB.DB;
    Q1.UpdateTransaction := cmDB.WT;
    Q1.SelectSQL.Text:='SELECT OD.HOUSE FROM ODSDOCLIST OD' + #13#10 +
                              'where od.odsdoc=:cod';
    Q1.ParamByName('cod').AsVariant:=OdCode;
    Q1.OrderClause:='OD.HOUSE';
    Q1.Open;

    //
    if q.RecordCountFromSrv<>q1.RecordCountFromSrv then Result:=false else
    begin
      while not Q.eof do begin
        if Q.FN('house').asvariant<>Q1.FN('house').asvariant then
        begin
          Result:=false;
          Break;
        end;
        Q1.Next;
        Q.Next;
      end;
    end;

    Q.Free;
    Q1.Free;
  end;

  function GetSumNum :Variant;
  var
    Q :TFIBQuery;
  begin
    Q:=GetQueryForUse(cmDB.RT,'SELECT sum(NUM) num FROM ODSDOCLIST' + #13#10 +
                              'where ODSDOC=:doc');
    Q.ParamByName('doc').AsVariant:=OdCode;
    Q.ExecQuery;
    Result:=Q.FN('num').AsVariant;
    FreeQueryForUse(Q);
  end;

  procedure MakeDate;
  begin
    D1:=StartOfAMonth(v1.GetColumnByFieldName('Y').EditValue,
                      v1.GetColumnByFieldName('M').EditValue);
    D2:=EndOfAMonth(v1.GetColumnByFieldName('Y').EditValue,
                    v1.GetColumnByFieldName('M').EditValue);
  end;

  function GetSumma :Variant;
  var
    Q1 :TFIBQuery;
  begin
    MakeDate;
    Q1:=GetQueryForUse(cmDB.RT,'SELECT SUMMA FROM ODSFACT' + #13#10 +
                              ' where data>=:d1 and data<=:d2');
    Q1.ParamByName('d1').AsDateTime:=D1;
    Q1.ParamByName('d2').AsDateTime:=D2;
    Q1.ExecQuery;
    Result:=Q1.FN('SUMMA').AsVariant;
    FreeQueryForUse(Q1);
  end;

  procedure CorrectODS;
  var
    Q,Q1 :TFIBQuery;
    sum1,sum2 :Variant;
    cnt :Integer;
  begin
    SetCapt('Получаем список обращений');
    Q:=GetQueryForUse(cmDB.RT,'SELECT HOUSE,NUM' + #13#10 +
                              'FROM ODSDOCLIST where ODSDOC=:doc');
    Q.ParamByName('doc').AsVariant:=OdCode;
    Q.ExecQuery;
    //
    Q1:=GetQueryForUse(cmDB.WT,'update FACT1DOCLIST set FACTSUM = 0' + #13#10 +
                              'where (FACT1DOC = :CODE)');
    Q1.Options:=[qoStartTransaction,qoAutoCommit];
    Q1.ParamByName('CODE').AsVariant:=v1.GetColumnByFieldName('CODE').EditValue;
    Q1.ExecQuery;
    SetCapt('Очищаем факт');
    ds_FACTDOCLIST.DisableControls;
    {with ds_FACTDOCLIST do begin
      while not EOF do begin
        Edit;
        FN('FACTSUM').AsVariant:=0;
        Post;
        Next;
      end;
    end;}
    //
    SetCapt('Формируем документ');
    while not Q.Eof do begin
      with ds_FACTDOCLIST do begin

        if Locate('HOUSE',Q.FN('HOUSE').AsVariant,[]) then
        begin
          Edit;
           FN('FACTSUM').AsVariant:=CostNum * Q.FN('NUM').AsVariant;
           FN('CORRECT').AsVariant:=FN('PLANSUM').AsVariant-
                                              (CostNum * Q.FN('NUM').AsVariant);
          Post;
        end else
        begin
          Append;
            FN('FACT1DOC').AsVariant:=v1.GetColumnByFieldName('CODE').EditValue;
            FN('PLANSUM').AsVariant:=CostNum * Q.FN('NUM').AsVariant;
            FN('FACTSUM').AsVariant:=CostNum * Q.FN('NUM').AsVariant;
            FN('CORRECT').AsVariant:=0;
            FN('HOUSE').AsVariant:=Q.FN('HOUSE').AsVariant;
          Post;
        end;

      end;
      Q.Next;
    end;
    ds_FACTDOCLIST.EnableControls;

    FreeQueryForUse(Q);
    //коррекция суммы
    sum1:=SumNum * CostNum;  //общее кол-во обращений * сумма за обращение
    sum2:=Summa - sum1;
      with ds_FACTDOCLIST do begin
        DisableControls;
        First;
        Edit;
        FN('FACTSUM').AsVariant:=FN('FACTSUM').AsVariant+sum2;
        Post;
        EnableControls;
      end;
  end;

begin
  try
    SplashVisibility(True,'Получаем данные');
    OdCode:=Get_ODSDOC_Code;
    if ODCode=null then Exit;
    //сравнение запросов к ODSDOCLIST и fact1doclist  (не проверяю)
    ///if not CompareQuery then Exit;
    // получаем общее кол-во обращений за период
    SumNum:=GetSumNum;
    if (SumNum=null) or (SumNum=0) then Exit;
    // получаем сумму за период
    Summa:=GetSumma;
    if (Summa=null) or (Summa=0) then Exit;
    //сумма за обращение = сумма за период /кол-во обращений
    CostNum:=Summa div SumNum;
    //
    v2.BeginUpdate;
    CorrectODS;
    Open_FACTDOCLIST;
    v2.EndUpdate;
  finally
    SplashVisibility(false);
  end;
end;

procedure TBDR1FactDocForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TBDR1FactDocForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  Localize;
  OpenDs;
  SetGrant;
end;

procedure TBDR1FactDocForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F7: OpenHistory;
  end;
end;

procedure TBDR1FactDocForm.OpenDefaultData;
begin
  v1.BeginUpdate(lsimImmediate);
  try
    with ds_FACTDOC do begin
      Close;
      MainWhereClause:='M = :M and Y = :Y';
      ParamByName('M').AsVariant:= System.DateUtils.MonthOf(Date);
      ParamByName('Y').AsVariant:= System.DateUtils.YearOf(Date);
      Open;
    end;
  finally
    v1.EndUpdate;
  end;
end;

procedure TBDR1FactDocForm.OpenDs;
begin
  CreateMonth;
  //CreateSrv;
  if cmDb.ds_SRV.State = dsInactive then
     cmDb.ds_SRV.Open;
  //firm
  if cmDb.ds_FIRM.State = dsInactive then
     cmDb.ds_FIRM.Open;
  CreatePrintMem;
  try
    //SplashVisibility(True);
    ds_HOUSESRV.Open;
    DSOptoins(ds_FACTDOC,'','FACT1DOC','CODE','FACT1DOC_GEN', False);
    DSOptoins(ds_FACTDOCLIST,'','FACT1DOCLIST','CODE','FACT1DOCLIST_GEN',false);
    Open_FACTDOCLIST;
    SearchData;
  finally
    //SplashVisibility(false);
  end;
  FillEditor;
end;

procedure TBDR1FactDocForm.OpenHistory;
var
  F: TFactDocHistoryForm;
begin
  if v1.FN('CODE')= null then Exit;
  F:= TFactDocHistoryForm.Create(self);
  try
    F.fDocType:=1;
    F.fDocCode:= v1.FN('CODE');
    F.ShowModal;
  finally
    FreeAndNil(F);
  end;
end;

procedure TBDR1FactDocForm.Open_FACTDOCLIST;
begin
  SetGrant;
end;

//получаем договор
function TBDR1FactDocForm.GetDogCod(var dc,kontr :Variant) :Variant;
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
// дома из договора
function TBDR1FactDocForm.GetHouse(dog :variant) :WideString;
var
  Q :TFibQuery;
begin
  Q:=GetQueryForUse(cmDB.RT,'select '',''||list(sd.HOUSE,'','')||'','' house'
                            + #13#10 +
                            'FROM SRVDOGHOUSE sd' + #13#10 +
                            'WHERE sd.SRVDOG=:DOG');
  Q.ParamByName('DOG').AsVariant:=dog;
  Q.ExecQuery;
  Result:=Q.FN('house').AsWideString;
  FreeQueryForUse(Q);
end;
//код БДР
function TBDR1FactDocForm.GetCodBDR :Variant;
var
  Q1 :TFibQuery;
begin
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
 Печать сметы
-------------------------------------------------------------------------------}
procedure TBDR1FactDocForm.PrintSmeta;
var
  dc,kontr,bdr,srv,tbl,fld :Variant;
  hs :WideString;
  d1 ,d2 :TDateTime;
  TblFact :string;

  procedure GetData;
  var
    ngF :string;
  begin
    if tbl='PBDR2' then ngF:='fb1.F16';
    if tbl='PBDR3' then ngF:='fb1.F18';
    with ds_Sanc do
    begin
      Close;
      SelectSQL.Text:=
      'select' + #13#10 +
      '    FB1.HOUSE, FB1.f4 GArea,FB1.'+fld+' GSumma,fb1.f11 NGArea,0 ' +
      'NGSumma,' + #13#10 +
      '    (FB1.f4+'+ngF+') Area,(FB1.'+fld+') Summa,' + #13#10 +
      '    h.nomer,s.code street, s.name SNAME,' + #13#10 +
      '    d.code DU,iif(d.code in ' +
      '(2,3,9,11,13,14),d.name,trim(RIGHT(d.name,2))) DNAME' + #13#10 +
      'from '+tbl+' FB1' + #13#10 +
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
  var
    ngF :string;
  begin
    if tbl='PBDR2' then ngF:='fb1.F16';
    if tbl='PBDR3' then ngF:='fb1.F18';

    with ds_SancSum do begin
      Close;
      SelectSQL.Text:=
      'select' + #13#10 +
      '    d.code DU,iif(d.code in (2,3,9,11,13,14),' + #13#10 +
      '    d.name,trim(RIGHT(d.name,2))) DNAME,' + #13#10 +
      '   sum(FB1.f4+'+ngF+') SArea, sum(FB1.'+fld+') SSUM' + #13#10 +
      'from '+tbl+' FB1' + #13#10 +
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
  m_Title.Close; m_Title.Open;
  m_Data.Close; m_Data.Open;
  //получаем код договора и контрагента
  if GetDogCod(dc,kontr)=null then Exit;
  //список домов по договору
  hs:=GetHouse(dc);
  if hs=null then Exit;
  //бдр код
  GetParamBDR(bdr,srv,tbl,fld);

  if bdr=null then Exit;
  d1:=StartOfAMonth(v1.GetColumnByFieldName('Y').EditValue,
                    v1.GetColumnByFieldName('m').EditValue);
  d2:=EndOfAMonth(v1.GetColumnByFieldName('Y').EditValue,
                    v1.GetColumnByFieldName('m').EditValue)-1;
  //
  GetTitle;
  //
  GetData;
  if ds_Sanc.isEmpty then
  begin
    ShowMessage('Данные отсутсвуют');
    Exit;
  end;
  //
  xl1.Template:='rep\smeta1.xls';
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

procedure TBDR1FactDocForm.SearchData;
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
         MainWhereClause:= 'FIRM = :FIRM';
      if cbb_month.ItemIndex>0 then
         MainWhereClause :=GetClause + 'M = :M';
      if Trim(msk_Y.EditText)<>'' then
         MainWhereClause :=GetClause + 'Y = :Y';
      if not VarIsType(cbb_srv.EditValue,[varEmpty, varNull])  then
         MainWhereClause :=GetClause + 'HOUSESRV = :SRV';
      //params
      if ParamExist('FIRM', i) then
         ParamByName('FIRM').AsVariant:= cbb_Firm.EditValue;
      if ParamExist('M',i) then
         ParamByName('M').AsVariant:= cbb_month.ItemIndex;
      if ParamExist('Y',i) then
         ParamByName('Y').AsVariant:= msk_Y.EditValue;
      if ParamExist('SRV',i) then
         ParamByName('SRV').AsVariant:= cbb_srv.EditValue;
      if MainWhereClause = '' then
      begin
        OpenDefaultData;
        Exit;
      end;
      Open;
    end;
  finally
    v1.EndUpdate;
    SetGrant;
  end;
end;

procedure TBDR1FactDocForm.SetGrant;
begin
  // Code=600; Name='ПДУ документы. Блокировка документов корректировок.';
  clv1PRV.Options.Editing:= DezCommon.IsGrant(600);
  //
  if (v1.FN('SHB')=1) then begin
    btn_EditSrv.Enabled:= False;
    btn_editSumm.Enabled:= False;
    v2.OptionsData.Editing:= false;
    btn_penalt.Enabled:= true;
  end else begin
    btn_EditSrv.Enabled:= not (v1.FN('PRV')=1);
    btn_editSumm.Enabled:= not (v1.FN('PRV')=1);
    v2.OptionsData.Editing:= not (v1.FN('PRV')=1);
    btn_penalt.Enabled:= False;
  end;
end;

procedure TBDR1FactDocForm.SumFactEdit;
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
    f.HouseSrv:= v1.FN('HOUSESRV');
    f.TableName:='FACT1DOCLIST';
    f.SrvName:=VarToStrDef(gFN(v1,'HOUSESRVNAME'),'');
    if F.ShowModal = mrOk then
      Open_FACTDOCLIST else //переоткрываем документ
    if F.isEditing = true then
      Open_FACTDOCLIST;
  finally
    f.Free;
  end;
end;

procedure TBDR1FactDocForm.EditSRV(isEdit: Boolean);
var
  F: TBDRFactDocEditForm;
begin
  if ds_FACTDOC.State = dsInactive then
    raise dezException.Create('Набор данных не открыт!'+#10#13+'Выполните поиск.');
  F:= TBDRFactDocEditForm.Create(Self,ds_FACTDOC,false,isEdit);
  try
    F.ShowModal;
  finally
    FreeAndNil(F);
  end;
end;

{------------------------------------------------------------------------------
 Печать акта
-------------------------------------------------------------------------------}
procedure TBDR1FactDocForm.ExportAct;
var
  Q :TFIBQuery;
  dc,kontr,bdr,month,srv,tbl,fld :Variant;
  hs :WideString;
  d1 :TDateTime;
  //----------------------------------------
  procedure GetData;
    var
    ngF :string;
  begin
    if tbl='PBDR2' then ngF:='fb1.F16';
    if tbl='PBDR3' then ngF:='fb1.F18';
    with ds_Sanc do
    begin
      Close;
      SelectSQL.Text:=
      'select' + #13#10 +
      '    FB1.HOUSE, FB1.f4 GArea,FB1.'+fld+' GSumma,'+ngF+' NGArea,0 ' +
      'NGSumma,' + #13#10 +
      '    (FB1.f4+'+ngF+') Area,(FB1.'+fld+') Summa,' + #13#10 +
      '    h.nomer,s.code street, s.name SNAME,' + #13#10 +
      '    d.code DU,iif(d.code in ' +
      '(2,3,9,11,13,14),d.name,trim(RIGHT(d.name,2))) DNAME' + #13#10 +
      ' ,fd.plansum,fd.factsum,fd.correct, (fd.factsum-fd.correct) S1 ' + #13#10 +
      ' ,((FB1.'+fld+'-fd.correct) ) Itog ' + #13#10 +
      'from '+tbl+' FB1' + #13#10 +
      'left outer join house h on h.code=fb1.house' + #13#10 +
      'left outer join street s on s.code=h.street' + #13#10 +
      'left outer join du d on d.code=h.du' + #13#10 +
      'left outer join fact1doclist fd on fd.house=fb1.house and ' +
      'fd.fact1doc=:fd'+ #13#10 +
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
      'from '+tbl+' FB1' + #13#10 +
      'left outer join house h on h.code=fb1.house' + #13#10 +
      'left outer join street s on s.code=h.street' + #13#10 +
      'left outer join du d on d.code=h.du' + #13#10 +
      'left outer join fact1doclist fd on fd.house=fb1.house and fd.fact1doc=:fd'
      + #13#10 +
      'where FB1.PBDR = :fbd' + #13#10 +
      '  and ('#39+hs+#39' containing '','' || FB1.HOUSE || '','')' + #13#10 +
      'group by 1,2';
      ShowMessage(SelectSQL.Text);
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
    GetParamBDR(bdr,srv,tbl,fld);
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
  xl1.Template:='rep\akt1.xls';
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

procedure TBDR1FactDocForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  Open_FACTDOCLIST;
  FillEditor;
end;

procedure TBDR1FactDocForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP : begin
              Open_FACTDOCLIST;
              FillEditor;
            end;
    VK_DOWN : begin
                Open_FACTDOCLIST;
                FillEditor;
              end;
  end;
end;

procedure TBDR1FactDocForm.CreateMonth;
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

procedure TBDR1FactDocForm.CreatePrintMem;
begin
  CreateField(m_Title,'DU',ftInteger);
  CreateField(m_Title,'DNAME',ftString,256);
  CreateField(m_Title,'SUM',ftFloat);
  CreateField(m_Title,'SAREA',ftFloat);
  m_title.Open;
  CreateField(m_Data,'SNAME',ftString,256);
  CreateField(m_Data,'NOMER',ftString,32);
  CreateField(m_Data,'DNAME',ftString,256);
  CreateField(m_Data,'GAREA',ftFloat);
  CreateField(m_Data,'S1',ftFloat);
  CreateField(m_Data,'NGAREA',ftFloat);
  CreateField(m_Data,'F15',ftFloat);
  CreateField(m_Data,'AREA',ftFloat);
  CreateField(m_Data,'Itog',ftFloat);
  m_Data.Open;
end;

procedure TBDR1FactDocForm.CreateSrv;
  procedure AddRec(ACode: Integer; AName,APBDR,AFPBDR: string);
  begin
    with m_srv do
    begin
      Append;
      FieldByName('Code').AsInteger := ACode;
      FieldByName('Name').AsString := AName;
      FieldByName('TABLE').AsString := APBDR;
      FieldByName('FN').AsString := AFPBDR;
      Post;
    end;
  end;
begin
  CreateField(m_Srv ,'Code',ftInteger);
  CreateField(m_Srv ,'Name',ftString,64);
  CreateField(m_Srv ,'TABLE',ftString,64);
  CreateField(m_Srv ,'FN',ftString,64);
  m_Srv.Open;
  //AddRec(0,'не указана','');
  AddRec(0,'ТР электрика','PBDR2','F34');
  AddRec(1,'ТР общестрой','PBDR2','F34');
  AddRec(2,'ТР лифт','PBDR3','F28');
  AddRec(3,'ОДС','PBDR2','F12');
  AddRec(4,'Дератизация','PBDR2','F10');
  AddRec(5,'ТО общестрой','PBDR2','F30');
  AddRec(6,'ТО электромонтаж','PBDR2','F32');
  AddRec(7,'Уборка кабины лифта','PBDR3','F13');
  AddRec(8,'Техосвид. лифта','PBDR3','F14');
  AddRec(9,'Экспертиза лифта','PBDR3','F15');
  AddRec(10,'АВС','PBDR3','F25');
  AddRec(11,'ЛДСС','PBDR3','F26');
  AddRec(12,'ТО лифт','PBDR3','F27');
  AddRec(13,'Дезинсекция','PBDR2','F37');
end;

procedure TBDR1FactDocForm.GetParamBDR(var bdr,srv,tbl,fld :Variant);
var
  housesrv :Variant;

  procedure SetParam(tb,fn,s :variant);
  begin
    tbl:=tb;
    fld:=fn;
    srv:=s;
  end;

  function GetBDRCode :Variant;
  var
    Q :TFIBQuery;
  begin
    Q:=GetQueryForUse(cmDB.RT,'SELECT fb.CODE,fb.Y,fb.M,fb.HOUSESRV' + #13 +
                              #10 + 'FROM PBDR fb' + #13#10 +
                              'where fb.y=:y and fb.M=:M and fb.HOUSESRV=:srv');
    Q.ParamByName('Y').AsVariant:=v1.GetColumnByFieldName('Y').EditValue;
    Q.ParamByName('M').AsVariant:=v1.GetColumnByFieldName('M').EditValue;
    Q.ParamByName('srv').AsVariant:=srv;
    Q.ExecQuery;
    Result:=Q.FN('CODE').AsVariant;
    FreeQueryForUse(Q);
  end;

begin
  //определяем услугу
  housesrv:=v1.GetColumnByFieldName('HOUSESRV').EditValue;
  case housesrv of
    0 : SetParam('PBDR2','F32',6); //ТР электрика  ---
    1 : SetParam('PBDR2','F30',6); //ТР общестрой  ---
    2 : SetParam('PBDR3','F28',8); //ТР лифт  ---
    3 : SetParam('PBDR2','F12',6); //ОДС ---
    4 : SetParam('PBDR2','F10',6); //дератизаця
    5 : SetParam('PBDR2','F30',6); //ТО общестрой
    6 : SetParam('PBDR2','F32',6); //ТО электрика
    7 : SetParam('PBDR3','F13',8); //уборка кабины лифта
    8 : SetParam('PBDR3','F14',8); //техосвидетельствование
    9 : SetParam('PBDR3','F15',8); //экспертиза
    10 : SetParam('PBDR3','F25',8);//АВС
    11 : SetParam('PBDR3','F26',8);//LDSS
    12 : SetParam('PBDR3','F27',8);//ТО лифт
    13 : SetParam('PBDR2','F37',6);//дезинсекция
  end;
  bdr:=GetBDRCode;
end;

procedure TBDR1FactDocForm.Localize;
begin
  litm_Firm.Caption:= CaptionFirm;
end;

procedure TBDR1FactDocForm.N1Click(Sender: TObject);
begin
  OpenHistory;
end;

procedure TBDR1FactDocForm.FillBtn;
var
  srv,bdr,tbl,fld :Variant;

  function ClearTable :Boolean;
  var
    Q2 :TFIBQuery;
  begin
    Result:=False;
    //очищаем таблицу перед заполнением
    Q2:=GetQueryForUse(cmDB.WT,'delete from FACT1DOCLIST' + #13#10 +
                              'where (FACT1DOC = :FD)');
    Q2.Options:=[qoStartTransaction,qoAutoCommit];
    if Application.MessageBox('Перед заполнением имеющиеся данные будут очищенны!' +
      #13#10 + '                       Продолжить?', 'Предупреждение',
      MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDNO then
    begin
      FreeQueryForUse(Q2);
      Exit;
    end;
    Q2.ParamByName('FD').AsVariant:=v1.GetColumnByFieldName('CODE').EditValue;
    Q2.ExecQuery;
    Result:=True;
  end;

  procedure FillData;
  var
    Q3 :TFIBQuery;
  begin
    //заполняем данные
    Q3:=GetQueryForUse(cmDB.RT,'select HOUSE, '+fld+' from '+tbl+' ' + #13#10 +
                               'where PBDR = :FBD');
    Q3.ParamByName('FBD').AsVariant:=bdr;
    //Q3.ParamByName('HSE').AsWideString:=#39+hs+#39;
    Q3.ExecQuery;
    //insert data
    ds_FACTDOCLIST.DisableControls;
    while not Q3.Eof do begin
      if Q3.FN(fld).AsVariant>0 then
      with ds_FACTDOCLIST do begin
        Append;
        FN('FACT1DOC').AsVariant:=v1.GetColumnByFieldName('CODE').EditValue;
        FN('PLANSUM').AsVariant:=Q3.FN(fld).AsVariant;
        FN('FACTSUM').AsVariant:=Q3.FN(fld).AsVariant;
        FN('CORRECT').AsVariant:=0;
        FN('HOUSE').AsVariant:=Q3.FN('HOUSE').AsVariant;
        Post;
      end;
      Q3.Next;
    end;
    ds_FACTDOCLIST.EnableControls;
    FreeQueryForUse(Q3);
  end;
begin
  if (v1.GetColumnByFieldName('CODE').EditValue=Unassigned) or
     (v1.GetColumnByFieldName('CODE').EditValue=Null) then Exit;
   GetParamBDR(bdr,srv,tbl,fld);
   if bdr=null then Exit;
   try
     SplashVisibility(True,'Заполняем данные...');
     //
     if not ClearTable then Exit;
     //
     FillData;
     Open_FACTDOCLIST;
   finally
      SplashVisibility(false);
   end;
end;

initialization
 RegisterClass(TBDR1FactDocForm);
end.














