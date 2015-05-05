unit AutoCreateWorkFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControl, Menus, StdCtrls, cxButtons,
  DateUtils,FIBQuery,pFIBCacheQueries,pFIBProps,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit, dxLayoutLookAndFeels,
  cxStyles, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerDateNavigator, cxDateNavigator, dxLayoutContainer,
  BaseForm,
  dxLayoutControlAdapters, dxSkinDevExpressStyle, Vcl.ComCtrls, dxCore,
  cxDateUtils;

type
  TAutoCreateWorkForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    cbb_month: TcxComboBox;
    itm_month: TdxLayoutItem;
    dt1: TcxDateEdit;
    itm_dt1: TdxLayoutItem;
    btn_create: TcxButton;
    itm_create: TdxLayoutItem;
    dtn1: TcxDateNavigator;
    itm_dtn1: TdxLayoutItem;
    btn_cancel: TcxButton;
    itm_cancel: TdxLayoutItem;
    grplc1Group1: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure btn_createClick(Sender: TObject);
  private
    { Private declarations }
    function GetDogByKont(kontr :variant) :Variant;
    procedure GetHouseFromDog(noHouse: WideString; dog: variant);
    function GetexHouse :WideString;
  public
    exHouse :WideString;
    kontr :Variant; //подрядчик
    wCode :Variant; //код наряда
    { Public declarations }
  end;

var
  AutoCreateWorkForm: TAutoCreateWorkForm;

implementation

uses cmDBUnit, LoadingSplash;

{$R *.dfm}

procedure TAutoCreateWorkForm.btn_createClick(Sender: TObject);
var
  s :string;
  dog :Variant;
begin
  s:='Вы действительно хотите создать наряды на '+ DateToStr(dtn1.date);
  if Application.MessageBox(PChar(S), 'Внимание', MB_YESNO + MB_ICONQUESTION +
    MB_TOPMOST) = IDYES then
  begin
    exHouse:=GetexHouse;
    dog:=GetDogByKont(kontr);
    GetHouseFromDog(exHouse,dog);
    ModalResult:=mrOk;
  end else
  ModalResult:=mrCancel;
end;

procedure TAutoCreateWorkForm.FormCreate(Sender: TObject);
var
  d :Variant;
begin
  d:='26.'+VarToStr(MonthOf(Date))+'.'+VarToStr(YearOf(Date));
  dtn1.Date:=VarToDateTime(d);
end;

function TAutoCreateWorkForm.GetDogByKont(kontr: variant): Variant;
var
  Q :TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.RT,'SELECT CODE FROM SRVDOG' + #13#10 +
                            'where KONTRAGENT=:kontr and "ACTIVE"=1');
  Q.ParamByName('kontr').AsVariant:=kontr;
  Q.ExecQuery;
  Result:=Q.FN('CODE').AsVariant;
  FreeQueryForUse(Q);
end;

function TAutoCreateWorkForm.GetexHouse: WideString;
var
  Q :TFIBQuery;
begin
   Result:='';
   Q:=GetQueryForUse(cmDB.RT,
   'SELECT '',''||LIST(HOUSE,'','')||'','' house' + #13#10 +
   'FROM WORKLIST' + #13#10 +
   'where KONTRAGENT =:kontr and DATA=:d');
   Q.ParamByName('kontr').AsVariant:=kontr;
   Q.ParamByName('d').AsVariant:=dtn1.Date;
   Q.ExecQuery;
   if Q.FN('HOUSE').AsVariant <> null then
   Result:=Q.FN('HOUSE').AsWideString;
   FreeQueryForUse(Q);
end;

procedure TAutoCreateWorkForm.GetHouseFromDog(noHouse: WideString;
  dog: variant);
var
  Q, Q1 :TFIBQuery;
  i :integer;
begin
  try
    SplashVisibility(true,'Дождитесь окончания операции.');
    //Q:=GetQueryForUse(cmDB.RT,'SELECT LIST(HOUSE,'','') house FROM SRVDOGHOUSE');
    Q1:=GetQueryForUse(cmDB.WT,
            'insert into WORKLIST (DATA, KONTRAGENT, HOUSE)' + #13#10 +
            'values (:DATA, :KONTRAGENT, :HOUSE)');
    Q1.Options:=[qoStartTransaction,qoAutoCommit];

    Q:=GetQueryForUse(cmDB.RT,'SELECT HOUSE FROM SRVDOGHOUSE');
    if noHouse<>'' then
    Q.MainWhereClause:=
    'SRVDOG=:dog and ('#39+noHouse+#39' not containing '','' || HOUSE || '','')' else
    Q.MainWhereClause:='SRVDOG=:dog';
    Q.ParamByName('dog').AsVariant:=dog;
    Q.ExecQuery;
    i:=1;
    while not Q.Eof do begin
      Q1.ParamByName('DATA').AsVariant:=dtn1.Date;
      Q1.ParamByName('KONTRAGENT').AsVariant:=kontr;
      Q1.ParamByName('HOUSE').AsVariant:=Q.FN('HOUSE').AsVariant;
      Q1.ExecQuery;
      //
      SetCapt('{ '+IntToStr(i)+ ' }  Нарядов создано.');
      inc(i);
      Q.Next;
    end;
  finally
    FreeQueryForUse(Q);
    FreeQueryForUse(Q1);
    SplashVisibility(false);
  end;
end;

end.








