unit POActSmetaFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, Menus, DB, FIBDataSet, pFIBDataSet, StdCtrls,
  FIBQuery, pFIBCacheQueries, pFIBProps,
  cxButtons, cxButtonEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxDropDownEdit, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxLayoutContainer, dxLayoutControlAdapters, dxSkinDevExpressStyle,
  dxSkinsDefaultPainters;

type
  TPOActSmetaForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    cbb_month: TcxComboBox;
    itm_month: TdxLayoutItem;
    cbb_srv: TcxLookupComboBox;
    itm_srv: TdxLayoutItem;
    msk_Y: TcxMaskEdit;
    itm_Y: TdxLayoutItem;
    btn_smeta: TcxButton;
    itm_smeta: TdxLayoutItem;
    btn_akt: TcxButton;
    itm_akt: TdxLayoutItem;
    btn_exit: TcxButton;
    itm_exit: TdxLayoutItem;
    grplc1Group1: TdxLayoutGroup;
    ds_srv: TpFIBDataSet;
    src_srv: TDataSource;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    ds_kontr: TpFIBDataSet;
    src_kontr: TDataSource;
    src_dog: TDataSource;
    ds_dog: TpFIBDataSet;
    clv1CODE: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1KNAME: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1D1: TcxGridDBColumn;
    clv1D2: TcxGridDBColumn;
    clv1ACTIVE: TcxGridDBColumn;
    clv1DATA: TcxGridDBColumn;
    clv1ATYPE: TcxGridDBColumn;
    clv1ATYPENAME: TcxGridDBColumn;
    ms_proc: TcxMaskEdit;
    itmlc1Item1: TdxLayoutItem;
    cbb_RepType: TcxComboBox;
    itmlc1Item11: TdxLayoutItem;
    cbb_kontr: TcxLookupComboBox;
    LItemlc1Item1: TdxLayoutItem;
    cbb_DogType: TcxLookupComboBox;
    LItemlc1Item11: TdxLayoutItem;
    ds_SRVDOGTYPE: TpFIBDataSet;
    src_SRVDOGTYPE: TDataSource;
    cbb_Y: TcxComboBox;
    litm_lc1Item1: TdxLayoutItem;
    lGrplc1Group1: TdxLayoutGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_smetaClick(Sender: TObject);
    procedure btn_aktClick(Sender: TObject);
    procedure btn_exitClick(Sender: TObject);
    procedure cbb_RepTypePropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbb_kontrPropertiesEditValueChanged(Sender: TObject);
    procedure cbb_srvPropertiesEditValueChanged(Sender: TObject);
    procedure cbb_monthPropertiesEditValueChanged(Sender: TObject);
    procedure cbb_YPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    function CheckParam :Boolean;
    procedure OpenDS;
    procedure FromTemplate(fType, srv: variant);
    procedure OpenDogType;
    procedure LoadKontragent;
  public
    { Public declarations }
    ExM, ExY, ExSRV, ExKontr, ExDoc: Variant;
  end;

var
  POActSmetaForm: TPOActSmetaForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, dezCommon, Bkp1Doc, BkpDoc, dezInfo;

{$R *.dfm}

procedure TPOActSmetaForm.btn_aktClick(Sender: TObject);
var
  akt :TBkpObj;
  akt1 :TBkp1Obj;
  kontr, rType, dog, srv, kontrCode :Variant;
begin
  if not CheckParam then Exit;
  rType:= cmGetWord(cbb_srv.EditValue,1,'_');
  srv:= cmGetWord(cbb_srv.EditValue,2,'_');
  {with cbb_srv.Properties.Grid.DataController do
  begin
    rType := Values[FocusedRecordIndex, 5];
    srv :=cmGetWord(VarToStr(Values[FocusedRecordIndex, 0]),1,'-');
  end;                                     }
  with cbb_kontr.Properties.Grid.DataController do
  begin
    kontr := Values[FocusedRecordIndex, 0];
  end;
  dzPO.GetInfo(cbb_kontr.EditValue);
  kontr:=dzPO.FullName;
  //kontr:=ds_kontr.FN('FULLNAME').AsVariant;
  kontrCode:= cbb_kontr.EditValue;
  //dog:=v1.GetColumnByFieldName('CODE').EditValue;

  akt:=TBkpObj.Create;
      akt.ReportType:= TReportType(cbb_RepType.ItemIndex);
      akt.Y:= cbb_Y.EditValue;
      akt.M:= cbb_month.ItemIndex;
      akt.SRV:= cbb_srv.EditValue;
      akt.srvName:= cbb_srv.Text;
      akt.kontr:= kontr;
      akt.Dog:= null;
      akt.KontrCode:= kontrCode;
      akt.PrintAKTByDoc(ExDoc,cbb_month.ItemIndex, cbb_Y.EditValue,
                            cbb_srv.EditValue, cbb_kontr.EditValue, cbb_DogType.EditValue);
  try
   {if rType=0 then
    begin
      case cbb_RepType.ItemIndex of
        0: akt.PrintAktBDR('SMETABDR1');
        1: akt.PrintAktBDR('SMETABDR1DOC');
        2: akt.PrintAktBDR('SMETABDR1DOC');
      end;

    end else
    begin
      case cbb_RepType.ItemIndex of
        0: begin
             case srv of
               0 :  akt.PrintAktBDR('SMETABDR2');
               1 :  akt.PrintAktBDR('SMETABDR2');
               5 :  akt.PrintAktBDR('SMETABDR2');
               6 :  akt.PrintAktBDR('SMETABDR2');
               //
               2 :  akt.PrintAktBDR('SMETABDR3');
               7 :  akt.PrintAktBDR('SMETABDR3');
               12 : akt.PrintAktBDR31;
             end;
           end;
        1: begin
             case srv of
               0 :  akt.PrintAktBDR('SMETABDR2DOC');
               1 :  akt.PrintAktBDR('SMETABDR2DOC');
               5 :  akt.PrintAktBDR('SMETABDR2DOC');
               6 :  akt.PrintAktBDR('SMETABDR2DOC');
               //
               2 :  akt.PrintAktBDR('SMETABDR2DOC');
               7 :  akt.PrintAktBDR('SMETABDR2DOC');
               12 : akt.PrintAktBDR31;
             end;
           end;
      end;
    end;}
  finally
    akt.Free;
  end;
end;

procedure TPOActSmetaForm.btn_exitClick(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure TPOActSmetaForm.btn_smetaClick(Sender: TObject);
var
  smeta :TBkpObj;
  smeta1 :TBkp1Obj;
  kontr,rType,dog,srv :Variant;
begin
  if not CheckParam then Exit;
  rType:= cmGetWord(cbb_srv.EditValue,1,'_');
  srv:= cmGetWord(cbb_srv.EditValue,2,'_');
  {with cbb_srv.Properties.Grid.DataController do
  begin
    rType := Values[FocusedRecordIndex, 5];
    srv :=cmGetWord(VarToStr(Values[FocusedRecordIndex, 0]),1,'-');
  end;}
  {if cbb_RepType.ItemIndex = 2 then begin
    FromTemplate(rType, srv);
    Exit;
  end;}
  // rType = 0 HOUSESRV
  dzPO.GetInfo(cbb_kontr.EditValue);
  kontr:=dzPO.FullName;
  //dog:=v1.GetColumnByFieldName('CODE').EditValue;

  smeta:=TBkpObj.Create;
  try
      smeta.ReportType:= TReportType(cbb_RepType.ItemIndex);
      smeta.Y:= cbb_Y.EditValue;
      smeta.M:= cbb_month.ItemIndex;
      smeta.SRV:= srv;
      smeta.srvName:= cbb_srv.Text;
      smeta.kontr:= kontr;
      smeta.Dog:= null;
      smeta.PrintSmetaByDoc(ExDoc,cbb_month.ItemIndex, cbb_Y.EditValue,
                            cbb_srv.EditValue, cbb_kontr.EditValue);
      {
      if ms_proc.EditValue = null then
      smeta.Proc:=50 else
      smeta.Proc:=ms_proc.EditValue;}
   { if rType=0 then
    begin
      smeta.PrintSmetaBDR1;
    end else
    begin
      case srv of
        0 :  smeta.PrintSmetaBDR2;
        1 :  smeta.PrintSmetaBDR2;
        5 :  smeta.PrintSmetaBDR2;
        6 :  smeta.PrintSmetaBDR2;
        //
        2 :  smeta.PrintSmetaBDR3;
        7 :  smeta.PrintSmetaBDR3;
        12 : smeta.PrintSmetaBDR31;  //переделать на  SMETABDR31
      end;
    end;}
  finally
    smeta.Free;
  end;
end;

procedure TPOActSmetaForm.cbb_kontrPropertiesEditValueChanged(Sender: TObject);
begin
  OpenDogType;
end;

procedure TPOActSmetaForm.cbb_monthPropertiesEditValueChanged(Sender: TObject);
begin
  LoadKontragent;
end;

procedure TPOActSmetaForm.cbb_RepTypePropertiesEditValueChanged(
  Sender: TObject);
begin
  btn_akt.Enabled:= cbb_RepType.ItemIndex<>2;
end;

procedure TPOActSmetaForm.cbb_srvPropertiesEditValueChanged(Sender: TObject);
begin
  LoadKontragent;
end;

procedure TPOActSmetaForm.cbb_YPropertiesEditValueChanged(Sender: TObject);
begin
  LoadKontragent;
end;

function TPOActSmetaForm.CheckParam: Boolean;
  procedure Rez(mes :string; ed :TcxCustomEdit);
  begin
    ShowMessage(mes);
    ed.SetFocus;
    Result:=False;
  end;
begin
  Result:=True;
  if cbb_month.ItemIndex=0 then begin
    Rez('”кажите мес€ц.',cbb_month);
    Exit;
  end;
  if cbb_srv.EditValue=null then begin
    Rez('”кажите услугу.',cbb_srv);
    Exit;
  end;
  if VarIsType(cbb_Y.EditValue,[0,1]) then begin
    Rez('”кажите год.',cbb_Y);
    Exit;
  end;
end;

procedure TPOActSmetaForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TPOActSmetaForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  OpenDS;
end;


procedure TPOActSmetaForm.FormShow(Sender: TObject);
begin
  if ExY<>null then cbb_Y.EditValue:= ExY;
  if ExM<>null then cbb_month.ItemIndex:=ExM;
  if ExSRV<>null then cbb_srv.EditValue:=ExSRV;
  if ExKontr<>null then cbb_kontr.EditValue:=ExKontr;
  if ActiveUserType = 1 then begin
    //cbb_kontr.EditValue:= ActiveKontragent;
    cbb_kontr.Enabled:= False;
  end;
end;

procedure TPOActSmetaForm.FromTemplate(fType, srv: variant);
var
  Q: TFIbQuery;
  Template, srv1: Variant;
  smeta :TBkpObj;

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
  Q:= GetQueryForUse(cmDb.RT,
      'select FIRST 1 (CODE)' + #13#10 +
      'from MAKESMETASHABLON');
  Q.Options:=[qoStartTransaction];
  try
    if fType = 0 then
      Q.MainWhereClause:='SRVDOG =:dog and HOUSESRV=:srv' else
      Q.MainWhereClause:='SRVDOG =:dog and SRV=:srv';
    if fType = 1 then
       srv1:= GetHouseSrv(srv) else
       srv1:=srv;
    Q.ParamByName('dog').AsVariant:= v1.FN('CODE');
    Q.ParamByName('srv').AsVariant:= srv;
    //
    Q.ExecQuery;
    Template:= Q.FN('CODE').AsVariant;
    if Template = null then
       raise dezException.Create('Ўаблон не найден!');
    smeta:=TBkpObj.Create;
    smeta.M:= null;
    smeta.SRV:= srv;
    smeta.srvName:= cbb_srv.Text;
    smeta.kontr:= v1.FN('KNAME');
    smeta.Dog:= v1.FN('CODE');
    smeta.PrinSmetaTemplate(Template);
  finally
    FreeAndNil(smeta);
    FreeQueryForUse(Q);
  end;
end;

procedure TPOActSmetaForm.LoadKontragent;
var
  rType, srv: Variant;
begin
  if ((cbb_month.ItemIndex<1)or (VarIsType(cbb_Y.EditValue,[0,1])) or (VarIsType(cbb_srv.EditValue,[0,1]))) then
  begin
    cbb_kontr.EditValue:= null;
    Exit;
  end;
  rType:= cmGetWord(cbb_srv.EditValue,1,'_');
  srv:= cmGetWord(cbb_srv.EditValue,2,'_');
  with ds_kontr do begin
    Close;
    MainWhereClause:='';
    ParamByName('M').AsVariant:= cbb_month.ItemIndex;
    ParamByName('Y').AsVariant:= cbb_Y.EditValue;
    ParamByName('HOUSESRV').AsVariant:= srv;
    ParamByName('REPTYPE').AsVariant:= rType;
    if ActiveUserType=1 then begin
      MainWhereClause:='KONTRAGENT=:kontr';
      ParamByName('kontr').AsVariant:=ActiveKontragent;
    end;
    Open;
  end;

  if ((ActiveUserType=1) and (not ds_kontr.IsEmpty)) then
    cbb_kontr.EditValue:= ActiveKontragent else
    cbb_kontr.EditValue:= null;
end;

procedure TPOActSmetaForm.OpenDogType;

  procedure SetBtnActive(isEnable: Boolean);
  begin
    btn_smeta.Enabled:= isEnable;
    btn_akt.Enabled:= isEnable;
  end;
begin
  if VarIsType(cbb_kontr.EditValue,[varNull, varEmpty]) then  begin
     SetBtnActive(false);
     ds_SRVDOGTYPE.Close;
  end else
  with ds_SRVDOGTYPE do begin
    Close;
    ParamByName('KONTR').AsVariant:= cbb_kontr.EditValue;
    Open;
    First;
    cbb_DogType.EditValue:= FN('ATYPE').AsVariant;
    SetBtnActive(true);
  end;
end;

procedure TPOActSmetaForm.OpenDS;
var
  sql :string;
  i :integer;
begin
  //ds_kontr.Open;
  if ActiveUserType=1 then
  with ds_dog do begin
    Close;
    MainWhereClause:='sd."ACTIVE"=1 and sd.KONTRAGENT=:kontr';
    ParamByName('kontr').AsVariant:=ActiveKontragent;
    Open;
  end else
  with ds_dog do begin
    Close;
    MainWhereClause:='sd."ACTIVE"=1';
    Open;
  end;
  {if ActiveUserType=1 then
  sql :='SELECT (hs.CODE||''-''||0)id,hs.CODE,ks.code KSCODE,' + #13#10 +
        '       hs.NAME,' + #13#10 +
        '       iif(ks.code is null,0,1) ksSrv,' + #13#10 +
        '       iif(ks.rtype is null, 0,ks.rtype)rtype' + #13#10 +
        'FROM HOUSESRV hs' + #13#10 +
        'left outer join KONTRAGENTSRV ks on ks.srv=hs.code' + #13#10 +
        '            and ks.rtype=0 and ks.kontragent=:kontr' + #13#10 +
        'where hs.CODE not in(6,8,4,7,10)' + #13#10 +
        'union all' + #13#10 +
        'SELECT (f1d.CODE||''-''||1)id,f1d.CODE,ks.code KSCODE,' + #13#10 +
        '       f1d.NAME,' + #13#10 +
        '       iif(ks.code is null,0,1) ksSrv,' + #13#10 +
        '       iif(ks.rtype is null, 1,ks.rtype)rtype' + #13#10 +
        'FROM FACT1DOCSRV f1d' + #13#10 +
        'left outer join KONTRAGENTSRV ks on ks.srv=f1d.code' + #13#10 +
        '            and ks.rtype=1 and ks.kontragent=:kontr' + #13#10 +
        'where f1d.CODE in (0,1,2,7,5,6,12)'

  else

  sql:='SELECT (hs.CODE||''-''||0)id,hs.CODE,null KSCODE,' + #13#10 +
      '       hs.NAME,' + #13#10 +
      '       0 ksSrv,' + #13#10 +
      '       0 rtype' + #13#10 +
      'FROM HOUSESRV hs' + #13#10 +
      'where hs.CODE not in(6,8,4,7,10)' + #13#10 +
      'union all' + #13#10 +
      'SELECT (f1d.CODE||''-''||1)id,f1d.CODE,null KSCODE,' + #13#10 +
      '       f1d.NAME,' + #13#10 +
      '       0 ksSrv,' + #13#10 +
      '       1 rtype' + #13#10 +
      'FROM FACT1DOCSRV f1d' + #13#10 +
      'where f1d.CODE in (0,1,2,7,5,6,12)';
  with ds_srv do begin
    Close;
    SelectSQL.Text:=sql;
    if ParamExist('kontr', i) then
    ParamByName('kontr').AsVariant:=ActiveKontragent;
    Open;
  end;}
  ds_srv.Open;
end;

initialization
 RegisterClass(TPOActSmetaForm);
end.










