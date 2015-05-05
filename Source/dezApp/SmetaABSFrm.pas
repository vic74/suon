unit SmetaABSFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, Menus, DB, FIBDataSet, pFIBDataSet, StdCtrls,
  cxButtons, cxButtonEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxDropDownEdit, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxLayoutContainer, dxLayoutControlAdapters, dxSkinDevExpressStyle;

type
  TSmetaABSForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    cbb_month: TcxComboBox;
    itm_month: TdxLayoutItem;
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
    cbb_srv: TcxComboBox;
    itmlc1Item1: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_smetaClick(Sender: TObject);
    procedure btn_aktClick(Sender: TObject);
    procedure btn_exitClick(Sender: TObject);
  private
    { Private declarations }
    function CheckParam :Boolean;
    procedure OpenDS;
  public
    { Public declarations }
  end;

var
  SmetaABSForm: TSmetaABSForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, dezCommon, Bkp1Doc, BkpDoc;

{$R *.dfm}

procedure TSmetaABSForm.btn_aktClick(Sender: TObject);
var
  akt :TBkpObj;
  akt1 :TBkp1Obj;
  kontr,rType,dog,srv :Variant;
begin
  if not CheckParam then Exit;
  kontr:=v1.GetColumnByFieldName('KNAME').EditValue;
  dog:=v1.GetColumnByFieldName('CODE').EditValue;

  akt:=TBkpObj.Create;
    akt.Y:= msk_Y.EditValue;
    akt.M:= cbb_month.ItemIndex;
    akt.SRV:= cbb_srv.ItemIndex;
    akt.srvName:= cbb_srv.Text;
    akt.kontr:= kontr;
    akt.Dog:= dog;
  try
    akt.PrintAktBDR32;
  finally
    akt.Free;
  end;
end;

procedure TSmetaABSForm.btn_exitClick(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure TSmetaABSForm.btn_smetaClick(Sender: TObject);
var
  smeta :TBkpObj;
  smeta1 :TBkp1Obj;
  kontr,rType,dog,srv :Variant;
begin
  if not CheckParam then Exit;
  kontr:=v1.GetColumnByFieldName('KNAME').EditValue;
  dog:=v1.GetColumnByFieldName('CODE').EditValue;

  smeta:=TBkpObj.Create;
  try
    smeta.Y:= msk_Y.EditValue;
    smeta.M:= cbb_month.ItemIndex;
    smeta.SRV:= cbb_srv.ItemIndex;
    smeta.srvName:= cbb_srv.Text;
    smeta.kontr:= kontr;
    smeta.Dog:= dog;
    smeta.PrintSmetaBDR32;
  finally
    smeta.Free;
  end;
end;

function TSmetaABSForm.CheckParam: Boolean;
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
  if cbb_srv.ItemIndex<0 then begin
    Rez('”кажите услугу.',cbb_srv);
    Exit;
  end;
  if (msk_Y.EditValue=null) or (msk_Y.EditValue='') then begin
    Rez('”кажите год.',msk_Y);
    Exit;
  end;
end;

procedure TSmetaABSForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TSmetaABSForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  OpenDS;
end;


procedure TSmetaABSForm.OpenDS;
var
  sql :string;
  i :integer;
begin
  ds_kontr.Open;
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
  if ActiveUserType=1 then
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
  end;
end;

initialization
 RegisterClass(TSmetaABSForm);
end.








