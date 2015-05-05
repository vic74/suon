unit CompareBDRFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  FibQuery,pFIBCacheQueries,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutcxEditAdapters,
  cxContainer, Menus, StdCtrls, cxButtons, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxTextEdit, cxDropDownEdit, FIBDataSet,
  pFIBDataSet, dxmdaset, cxCheckBox, dxLayoutControlAdapters, dxLayoutContainer,
  dxSkinDevExpressStyle;

type
  TCompareBDRForm = class(TDezForm)
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
    cbb_month: TcxComboBox;
    itm_month: TdxLayoutItem;
    msk_Y: TcxMaskEdit;
    itm_Y: TdxLayoutItem;
    cbb_srv: TcxLookupComboBox;
    itm_srv: TdxLayoutItem;
    btn_exec: TcxButton;
    itm_exec: TdxLayoutItem;
    ds_HOUSESRV: TpFIBDataSet;
    src__HOUSESRV: TDataSource;
    m1: TdxMemData;
    src_m1: TDataSource;
    clv1HOUSE: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    clv1PLAN: TcxGridDBColumn;
    clv1FACT: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
  private
    { Private declarations }
    m,y,srv :Variant;
    FTable, PTable :String;
    procedure OpenDS;
    procedure MakeRep;
    function getPlanCod :Variant;
    function getFactCod :Variant;
    procedure SetParam;
    function CheckParam :Boolean;
    function GetTableName(Atype :Variant): Variant;
    procedure CompareTable(planCod, factCod :Variant);
    procedure CreateTable;
  public
    { Public declarations }
  end;

var
  CompareBDRForm: TCompareBDRForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, LoadingSplash;

{$R *.dfm}

procedure TCompareBDRForm.btn_execClick(Sender: TObject);
begin
  MakeRep;
end;

function TCompareBDRForm.CheckParam: Boolean;
  procedure Rez(mes :string; ed :TcxCustomEdit);
  begin
    ShowMessage(mes);
    ed.SetFocus;
    Result:=False;
  end;
begin
  Result:=true;
  if cbb_month.ItemIndex=0 then begin
    Rez('Укажите месяц!',cbb_month);
    Exit;
  end;
  if (msk_Y.EditValue=null) or (msk_Y.EditValue='') then begin
    Rez('Укажите год!',msk_Y);
    Exit;
  end;
  if cbb_srv.EditValue=null then begin
    Rez('Укажите услугу!',cbb_srv);
    Exit;
  end;
end;

procedure TCompareBDRForm.CompareTable(planCod, factCod :Variant);
var
  Q :TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.RT,
  '/*получаем записи которые есть в плане но нет в факте*/' + #13#10 +
  'SELECT ''PLAN'' AS TableName, pb.HOUSE,h.nomer,s.name' + #13#10 +
  '    FROM '+PTable+' pb ' + #13#10 +
  '    Left OUTER JOIN '+FTable+' fb ON (pb.house=fb.house) and fb.fbdr=:fb' +#13#10 +
  '    left outer join house h on h.code=pb.house' + #13#10 +
  '    left outer join street s on s.code=h.street' + #13#10 +
  'WHERE pb.pbdr=:pb and fb.house IS NULL' + #13#10 +
  'UNION' + #13#10 +
  '/*получаем записи которые есть в факте но нет в плане*/' + #13#10 +
  'SELECT ''FACT'' AS TableName, fb.house,h.nomer,s.name' + #13#10 +
  '    FROM '+FTable+' fb ' + #13#10 +
  '    Left OUTER JOIN '+PTable+' pb on (pb.house=fb.house) and pb.pbdr=:pb' +#13#10 +
  '    left outer join house h on h.code=fb.house' + #13#10 +
  '    left outer join street s on s.code=h.street' + #13#10 +
  'WHERE fb.fbdr=:fb and pb.house IS NULL');

  Q.ParamByName('pb').AsVariant:=planCod;
  Q.ParamByName('fb').AsVariant:=factCod;
  Q.ExecQuery;
  m1.Close; m1.Open;
  while not Q.Eof do
  begin
    with m1 do begin
      Append;
       FieldByName('HOUSE').AsVariant:=Q.FN('HOUSE').asVariant;
       FieldByName('NOMER').AsVariant:=Q.FN('NOMER').asVariant;
       FieldByName('NAME').AsVariant:=Q.FN('NAME').asVariant;
       FieldByName(Q.FN('TableName').AsString).asVariant:=1;
      Post;
    end;
    Q.Next;
  end;
  FreeQueryForUse(Q);
end;

procedure TCompareBDRForm.CreateTable;
begin
  CreateField(m1,'HOUSE',ftInteger);
  CreateField(m1,'NOMER',ftString,32);
  CreateField(m1,'NAME',ftString,128);
  CreateField(m1,'PLAN',ftInteger);
  CreateField(m1,'FACT',ftInteger);
  m1.Open;
end;

procedure TCompareBDRForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TCompareBDRForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  OpenDS;
end;


function TCompareBDRForm.getFactCod: Variant;
var
  Q :TFibQuery;
begin
  Q:=GetQueryForUse(cmDB.RT,'select CODE,Y, M, HOUSESRV from FBDR' + #13#10 +
                            'where Y=:Y and M=:M and HOUSESRV=:SRV');
  Q.ParamByName('Y').AsVariant:=y;
  Q.ParamByName('M').AsVariant:=m;
  Q.ParamByName('SRV').AsVariant:=srv;
  Q.ExecQuery;
  Result:=Q.FN('CODE').AsVariant;
  FreeQueryForUse(Q);
end;

function TCompareBDRForm.getPlanCod: Variant;
var
  Q :TFibQuery;
begin
  Q:=GetQueryForUse(cmDB.RT,'select CODE, Y, M, HOUSESRV from PBDR' + #13#10 +
                            'where Y=:Y and M=:M and HOUSESRV=:SRV');
  Q.ParamByName('Y').AsVariant:=y;
  Q.ParamByName('M').AsVariant:=m;
  Q.ParamByName('SRV').AsVariant:=srv;
  Q.ExecQuery;
  Result:=Q.FN('CODE').AsVariant;
  FreeQueryForUse(Q);
end;

function TCompareBDRForm.GetTableName(Atype :Variant): Variant;
var
  s :string;
begin
  if Atype=0 then s:='P' else //plan
                  s:='F';     //fact
  case srv of
    6 :Result:=s+'BDR2';
    8 :Result:=s+'BDR3'
    else Result:=s+'BDR1';
  end;
end;

procedure TCompareBDRForm.MakeRep;
var
  planCod, factCod :Variant;
begin
  SetParam;
  SplashVisibility(True,'Дождитесь окончания операции');
  try
    SetCapt('Получаем кода документов');
    planCod:=getPlanCod;
    factCod:=getFactCod;
    if planCod=null then
    begin
      Application.MessageBox('Документ плана за указанный период не найден.' +
        #13#10 + '                     Формирование отменено.', 'Внимание', MB_OK
        + MB_ICONWARNING + MB_TOPMOST);
      Exit;
    end;
    if factCod=null then
    begin
      Application.MessageBox('Документ факта за указанный период не найден.' +
        #13#10 + '                     Формирование отменено.', 'Внимание', MB_OK
        + MB_ICONWARNING + MB_TOPMOST);
      Exit;
    end;
    PTable:=GetTableName(0);
    FTable:=GetTableName(1);
    SetCapt('Сравниваем документы.');
    CompareTable(planCod, factCod);
  finally
    SplashVisibility(false);
  end;
end;

procedure TCompareBDRForm.OpenDS;
begin
  ds_HOUSESRV.Open;
  CreateTable;
end;

procedure TCompareBDRForm.SetParam;
begin
  if not CheckParam then Exit;
  m:=cbb_month.ItemIndex;
  y:=msk_Y.EditValue;
  srv:=cbb_srv.EditValue;
end;

initialization
 RegisterClass(TCompareBDRForm);
end.



