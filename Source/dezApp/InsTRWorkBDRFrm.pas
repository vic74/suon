unit InsTRWorkBDRFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, Menus, cxMemo, StdCtrls, cxButtons, cxTextEdit,
  FibQuery, pFIBCacheQueries, pFIBProps, DateUtils,
  cxMaskEdit, cxDropDownEdit, dxLayoutControlAdapters, dxLayoutContainer;

type
  TInsTRWorkBDRForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grlc1Group1: TdxLayoutGroup;
    grlc1Group2: TdxLayoutGroup;
    cbb_m1: TcxComboBox;
    itmlc1Item1: TdxLayoutItem;
    btn_exec: TcxButton;
    itm_exec: TdxLayoutItem;
    mmo1: TcxMemo;
    itm_mmo1: TdxLayoutItem;
    msk_year: TcxMaskEdit;
    itmlc1Item2: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure MakeData;
    procedure ClearData(d1,d2 :Variant);
    procedure GetData(var d1, d2 :Variant);
    procedure InsertData(d1, d2 :Variant);
    procedure Mes(m :string);
  public
    { Public declarations }
  end;

var
  InsTRWorkBDRForm: TInsTRWorkBDRForm;

implementation

uses AppUtils, cmDBUnit, cmUtils;

{$R *.dfm}

procedure TInsTRWorkBDRForm.ClearData(d1,d2 :Variant);
var
  Q: TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.WT,
      'delete from TRWORKBDR where (DATA between :D1 and :D2)');
  Q.Options:=[qoStartTransaction,qoAutoCommit];
  Q.ParamByName('d1').AsVariant:=d1;
  Q.ParamByName('d2').AsVariant:=d2;
  try
    Q.ExecQuery;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TInsTRWorkBDRForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TInsTRWorkBDRForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
end;

procedure TInsTRWorkBDRForm.GetData(var d1, d2: Variant);
begin
  d1:=StrToDate('01.'+VarToStr(cbb_m1.ItemIndex)+'.'+msk_year.Text);
  d2:=EndOfAMonth(msk_year.EditValue,cbb_m1.ItemIndex);
end;

procedure TInsTRWorkBDRForm.InsertData(d1, d2 :variant);
var
  Q: TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.WT,
   'insert into TRWORKBDR (DATA, DOCNOMER, HOUSE,  KONTRAGENT, SUMMA, NOTE, ' +
  'MLIST)' + #13#10 +
  '                 select  ZD, NDOP,     HOUSE,  KONTRAGENT, SUMMA, NOTE, ' +
  'MLIST' + #13#10 +
  '                from TRFACT' + #13#10 +
  '                where ZD between :D1 and :D2 and STATE=5');
  Q.Options:=[qoStartTransaction,qoAutoCommit];
  Q.ParamByName('d1').AsVariant:=d1;
  Q.ParamByName('d2').AsVariant:=d2;
  try
    Q.ExecQuery;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TInsTRWorkBDRForm.MakeData;
var
  d1, d2 :Variant;
begin
  if (cbb_m1.ItemIndex<1) or (msk_year.Text='') then exit;
  GetData(d1, d2);
  Mes('чистим данные за период');
  //чистим данные за период
  ClearData(d1, d2);
  //вставляем данные
  Mes('устанавливаем данные');
  InsertData(d1, d2);
  Mes('формирование завершено.');
end;

procedure TInsTRWorkBDRForm.Mes(m: string);
begin
  mmo1.Lines.Add(m);
end;

initialization
 RegisterClass(TInsTRWorkBDRForm);
end.


