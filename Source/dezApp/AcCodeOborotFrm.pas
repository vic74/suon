unit AcCodeOborotFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  FIBQuery, pFIBCacheQueries,pFIBProps,DateUtils,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, Menus, StdCtrls, cxButtons, cxMaskEdit, cxTextEdit,
  cxDropDownEdit, dxmdaset, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  DB, FIBDataSet, pFIBDataSet, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxCurrencyEdit, dxLayoutControlAdapters, dxLayoutContainer,
  dxSkinDevExpressStyle;

type
  TAcCodeOborotForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grlc1Group1: TdxLayoutGroup;
    grlc1Group2: TdxLayoutGroup;
    cbb_m1: TcxComboBox;
    itm_m1: TdxLayoutItem;
    itmlc1Item1: TdxLayoutItem;
    itmlc1Item2: TdxLayoutItem;
    itmlc1Item3: TdxLayoutItem;
    msk_y1: TcxMaskEdit;
    cbb_m2: TcxComboBox;
    msk_y2: TcxMaskEdit;
    grlc1Group4: TdxLayoutGroup;
    grlc1Group5: TdxLayoutGroup;
    btn_exec: TcxButton;
    itm_exec: TdxLayoutItem;
    ds_du: TpFIBDataSet;
    src_du: TDataSource;
    cbb_du: TcxLookupComboBox;
    it_du: TdxLayoutItem;
    cbb_street: TcxLookupComboBox;
    itm_street: TdxLayoutItem;
    cbb_house: TcxLookupComboBox;
    itm_house: TdxLayoutItem;
    ds_STREET: TpFIBDataSet;
    src_STREET: TDataSource;
    ds_HOUSE: TpFIBDataSet;
    src_HOUSE: TDataSource;
    m1: TdxMemData;
    src_m1: TDataSource;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    clv1SRV: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    clv1SALDO: TcxGridDBColumn;
    clv1NACH: TcxGridDBColumn;
    clv1RECALC: TcxGridDBColumn;
    clv1NACHITOG: TcxGridDBColumn;
    clv1INCOM: TcxGridDBColumn;
    clv1SALDO1: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbb_streetPropertiesEditValueChanged(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
  private
    { Private declarations }
    procedure GetSaldo(data: Variant; beg :boolean);
    procedure GetAccruals;
    procedure GetRecalc;
    procedure GetIncom;
    function GetClause(rec_type: string) :string;
    procedure CreateMem;
    procedure OpenDS;
    procedure OpenHouse;
    procedure GetPeriod(var d1, d2: Variant);
    procedure MakeData;
    function CheckParam :Boolean;
  public
    { Public declarations }
  end;

var
  AcCodeOborotForm: TAcCodeOborotForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, LoadingSplash;

{$R *.dfm}

procedure TAcCodeOborotForm.btn_execClick(Sender: TObject);
begin
  SplashVisibility(true,'Получаем данные...');
  try
    v1.BeginUpdate;
    MakeData;
  finally
    SplashVisibility(false);
    v1.EndUpdate;
  end;
end;

procedure TAcCodeOborotForm.cbb_streetPropertiesEditValueChanged(
  Sender: TObject);
begin
  OpenHouse;
end;

function TAcCodeOborotForm.CheckParam: Boolean;
  procedure Rez(mes :string; ed :TcxCustomEdit);
  begin
    Application.MessageBox(PChar(mes), 'Ошибка', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
    ed.SetFocus;
    Result:=False;
  end;
begin
  if (cbb_m1.ItemIndex<1) or (cbb_m2.ItemIndex<1) or
     (msk_y1.EditText='') or (msk_y2.EditText='') then begin
    Rez('Не верно указан период!',cbb_m1);
    Exit;
  end;
end;

procedure TAcCodeOborotForm.CreateMem;
begin
  CreateField(m1,'SRV',ftString,32);
  CreateField(m1,'NAME',ftString,128);
  CreateField(m1,'SALDO',ftBCD);
  CreateField(m1,'NACH',ftBCD);
  CreateField(m1,'RECALC',ftBCD);
  CreateField(m1,'NACHITOG',ftBCD);
  CreateField(m1,'INCOM',ftBCD);
  CreateField(m1,'SALDO1',ftBCD);
  m1.Indexes.Add.FieldName:='SRV';
  m1.Open;
end;

procedure TAcCodeOborotForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TAcCodeOborotForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  CreateMem;
  OpenDS;
end;

//начисления
procedure TAcCodeOborotForm.GetAccruals;
var
  Q: TFIBQuery;
  D1, D2 :Variant;
  i,j :integer;
  procedure AppendRec;
  begin
      m1.Append;
      m1.FieldByName('SRV').AsVariant:=Q.FN('SRV').AsVariant;
      m1.FieldByName('NAME').AsVariant:=Q.FN('NAME').AsVariant;
      case i of
        0: m1.FieldByName('NACH').AsCurrency:=Q.FN('NACH').AsCurrency;
        1: m1.FieldByName('RECALC').AsCurrency:=Q.FN('NACH').AsCurrency;
        2: m1.FieldByName('INCOM').AsCurrency:=Q.FN('INCOM').AsCurrency;
      end;
      m1.FieldByName('NACHITOG').AsCurrency:=
        m1.FieldByName('NACH').AsCurrency+m1.FieldByName('RECALC').AsCurrency;
      m1.Post;
  end;
  procedure EditRec;
  begin
      m1.Edit;
      case i of
        0: m1.FieldByName('NACH').AsCurrency:=Q.FN('NACH').AsCurrency;
        1: m1.FieldByName('RECALC').AsCurrency:=Q.FN('NACH').AsCurrency;
        2: m1.FieldByName('INCOM').AsCurrency:=Q.FN('NACH').AsCurrency;
      end;
      m1.FieldByName('NACHITOG').AsCurrency:=
        m1.FieldByName('NACH').AsCurrency+m1.FieldByName('RECALC').AsCurrency;
      m1.Post;
  end;
begin
  Q:=GetQueryForUse(cmDB.RT,
      'select a.srv,hs.name,sum(a.summa) nach' + #13#10 +
      'from acccodeprv a' + #13#10 +
      'left outer join srvlist hs on hs.srv=a.srv');
  GetPeriod(d1,d2);
  for i:=0 to 2 do begin
    Q.Close;
    case i of
      0 :Q.MainWhereClause:=GetClause('=0');
      1 :Q.MainWhereClause:=GetClause('>1');
      2 :Q.MainWhereClause:=GetClause('=1');
    end;
    if Q.ParamExist('du',j) then
       Q.ParamByName('du').AsVariant:=cbb_du.EditValue;
    if Q.ParamExist('house',j) then
       Q.ParamByName('house').AsVariant:=cbb_house.EditValue;
       Q.ParamByName('d1').AsVariant:=d1;
       Q.ParamByName('d2').AsVariant:=d2;
       Q.GroupByClause:='a.srv, hs.name';
    Q.ExecQuery;
    while not Q.Eof do begin
      if m1.Locate('SRV',Q.FN('SRV').AsVariant,[]) then EditRec else
                                                        AppendRec;
      Q.Next;
    end;
  end;
    FreeQueryForUse(Q);
end;

function TAcCodeOborotForm.GetClause(rec_type: string): string;
begin
  if cbb_du.EditValue<>null then //du
     Result:='a.date_val between :d1 and :d2 and a.du=:du and ' +
                    'a.rec_type'+rec_type else
  if cbb_house.EditValue<>null then //house
     Result:='a.date_val between :d1 and :d2 and a.house=:house and ' +
            'a.rec_type'+rec_type else //all
     Result:='a.date_val between :d1 and :d2 and a.rec_type'+rec_type;
end;

//поступления
procedure TAcCodeOborotForm.GetIncom;
begin

end;
//перерасчеты
procedure TAcCodeOborotForm.GetRecalc;
begin

end;
//сaльдо на дату
procedure TAcCodeOborotForm.GetSaldo(data: Variant; beg :boolean);
var
  Q: TFIBQuery;
  procedure AppendRec;
  begin
    while not Q.Eof do begin
      with m1 do begin
        Append;
        FieldByName('SRV').AsVariant:=Q.FN('SRV').AsVariant;
        FieldByName('NAME').AsVariant:=Q.FN('NAME').AsVariant;
        FieldByName('SALDO').AsVariant:=Q.FN('SALDO').AsVariant;
        Post;
      end;
      Q.Next;
    end;
  end;
  procedure EditRec;
  begin
    while not Q.Eof do begin
      if m1.Locate('SRV',Q.FN('SRV').AsVariant,[]) then
      begin
        m1.Edit;
        m1.FieldByName('SALDO1').AsVariant:=Q.FN('SALDO').AsVariant;
        m1.Post;
      end else
          begin
            m1.Append;
            m1.FieldByName('SRV').AsVariant:=Q.FN('SRV').AsVariant;
            m1.FieldByName('NAME').AsVariant:=Q.FN('NAME').AsVariant;
            m1.FieldByName('SALDO1').AsVariant:=Q.FN('SALDO').AsVariant;
            m1.Post;
          end;
      Q.Next;
    end;
  end;
begin
  Q:=GetQueryForUse(cmDB.RT,
      'SELECT ac.SRV,s.name,sum(ac.SALDO) SALDO' + #13#10 +
      'FROM ACCCODESALDO ac' + #13#10 +
      'left outer join srvlist s on s.srv=ac.srv');
  Q.MainWhereClause:='OP_DATE=:d1';
  Q.ParamByName('d1').AsVariant:=data;
  Q.GroupByClause:='ac.SRV,s.name';
  try
    Q.ExecQuery;
    //append
    if beg then AppendRec else
                EditRec;

  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TAcCodeOborotForm.MakeData;
var
  D1,D2 :Variant;
begin
  m1.Close; m1.Open;
  //param
  GetPeriod(d1,d2);
  SetCapt('сальдо на начало периода...');
  GetSaldo(d1,true);
  SetCapt('получаем обороты...');
  GetAccruals;
  SetCapt('сальдо на конец периода...');
  GetSaldo(d2,false);
end;

procedure TAcCodeOborotForm.OpenDS;
begin
  ds_du.Open;
  ds_STREET.Open;
end;

procedure TAcCodeOborotForm.OpenHouse;
begin
  with ds_HOUSE do begin
    Close;
    if cbb_street.EditValue=null then Exit;
    MainWhereClause:='STREET=:street';
    ParamByName('street').AsVariant:=cbb_street.EditValue;
    OrderClause:='nomer';
    Open;
  end;
end;

procedure TAcCodeOborotForm.GetPeriod(var d1, d2: Variant);
begin
  d1:=StrToDate('01.'+VarToStr(cbb_m1.ItemIndex)+'.'+msk_y1.Text);
  d2:=StrToDate('01.'+VarToStr(cbb_m2.ItemIndex)+'.'+msk_y2.Text);
end;

initialization
 RegisterClass(TAcCodeOborotForm);
end.







