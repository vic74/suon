unit TRFinPlanEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, Menus, dxLayoutControl,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit, cxCurrencyEdit,
  dxLayoutLookAndFeels, StdCtrls, cxButtons,
  FIBQuery, pFIBCacheQueries, dxLayoutControlAdapters, dxLayoutContainer,
  BaseForm,
  dxSkinDevExpressStyle;

type
  TTRFinPlanEditForm = class(TDezModalForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    grp_top: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    lkf1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    cxButton2: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    YSum: TcxCurrencyEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    Proc1: TcxCurrencyEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    Sum1: TcxCurrencyEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    Proc2: TcxCurrencyEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    Sum2: TcxCurrencyEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    Proc3: TcxCurrencyEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    Sum3: TcxCurrencyEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    Proc4: TcxCurrencyEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    Sum4: TcxCurrencyEdit;
    Sum4_: TdxLayoutItem;
    cedt_sumOst: TcxCurrencyEdit;
    itm_sumOst: TdxLayoutItem;
    ced_summAll: TcxCurrencyEdit;
    LItemLayoutControl1Item3: TdxLayoutItem;
    procedure YSumPropertiesChange(Sender: TObject);
    procedure Proc1PropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Proc2PropertiesChange(Sender: TObject);
    procedure Proc4PropertiesEditValueChanged(Sender: TObject);
  private
    procedure CalcProc;
    procedure CalcSum;
    procedure AddRecord;
    procedure FillParam;
    function CheckParam :Boolean;
  public
    { Public declarations }
    house, year :Integer;
    street, nomer :string;
    TableName: string;
  end;

var
  TRFinPlanEditForm: TTRFinPlanEditForm;

implementation

uses cmDBUnit, AppUtils, cmUtils;

{$R *.dfm}

{ TTRFinPlanEditForm }

procedure TTRFinPlanEditForm.CalcProc;
begin
  Proc4.Value:=100-Proc1.Value-Proc2.Value-Proc3.Value;
end;

procedure TTRFinPlanEditForm.CalcSum;
var
  C: currency;
begin
  if ced_summAll.Value=0 then Exit;
  Sum1.Text:=FormatFloat('0.00',ced_summAll.Value/100*Proc1.Value);
  Sum2.Text:=FormatFloat('0.00',ced_summAll.Value/100*Proc2.Value);
  Sum3.Text:=FormatFloat('0.00',ced_summAll.Value/100*Proc3.Value);
  Sum4.Value:=ced_summAll.Value-Sum1.Value-Sum2.Value-Sum3.Value;
end;

procedure TTRFinPlanEditForm.cxButton1Click(Sender: TObject);
begin
  if Proc4.EditValue<0 then
  begin
    cmShowMessage('Сумма процентов не может быть больше 100 !',true);
    ModalResult:=mrNone;
  end else
  begin
    AddRecord;
    ModalResult:=mrOk;
  end;
end;

procedure TTRFinPlanEditForm.cxButton2Click(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure TTRFinPlanEditForm.FormShow(Sender: TObject);
begin
  grp_top.Caption:=street+' '+nomer;
  FillParam;
end;

procedure TTRFinPlanEditForm.Proc1PropertiesChange(Sender: TObject);
begin
  CalcProc;
  CalcSum;
end;

procedure TTRFinPlanEditForm.Proc2PropertiesChange(Sender: TObject);
begin
  CalcProc;
end;

procedure TTRFinPlanEditForm.Proc4PropertiesEditValueChanged(Sender: TObject);
begin
  if Proc4.EditValue<0 then
  Proc4.Style.Color:=clRed else
  Proc4.Style.Color:=clWindow;
end;

procedure TTRFinPlanEditForm.YSumPropertiesChange(Sender: TObject);
begin
  CalcSum;
end;

procedure TTRFinPlanEditForm.FillParam;
var
  Q :TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.RT,'SELECT * from '+TableName+' where Y=:y and HOUSE=:h');
  Q.ParamByName('y').AsVariant:=year;
  Q.ParamByName('h').AsVariant:=house;
  Q.ExecQuery;
  if not Q.Eof then
  begin
    YSum.EditValue:=Q.FN('SUMY').AsVariant;
    cedt_sumOst.EditValue:=Q.FN('SUMOST').AsVariant;
    ced_summAll.EditValue := Q.FN('SUMY').AsVariant + Q.FN('SUMOST').AsVariant;
    Sum1.EditValue:=Q.FN('SUM1').AsVariant;
    Sum2.EditValue:=Q.FN('SUM2').AsVariant;
    Sum3.EditValue:=Q.FN('SUM3').AsVariant;
    Sum4.EditValue:=Q.FN('SUM4').AsVariant;
  end;
 FreeQueryForUse(Q);
end;

function TTRFinPlanEditForm.CheckParam :Boolean;
begin
  Result:=True;
  if YSum.EditValue=null then
  begin
    cmShowMessage('Не указана сумма на год!',true);
    Result:=False;
    Exit;
  end;
end;

procedure TTRFinPlanEditForm.AddRecord;
var
  Q :TFIBQuery;
  sql :string;
begin
  if not CheckParam then Exit;  
  CheckTran;
  sql:=
  'UPDATE OR INSERT INTO '+TableName+
           '(Y, HOUSE, SUMY, SUM1, SUM2, SUM3, SUM4,SUMOST)'+
  ' values (:Y, :HOUSE, :SUMY, :SUM1, :SUM2, :SUM3, :SUM4,:SUMOST)';
  Q:=GetQueryForUse(cmDB.WT,sql);
  Q.ParamByName('Y').AsVariant:=year;
  Q.ParamByName('HOUSE').AsVariant:=house;
  if cedt_sumOst.EditValue=null then
  Q.ParamByName('SUMOST').AsVariant:=0 else
  Q.ParamByName('SUMOST').AsVariant:=cedt_sumOst.EditValue;
  Q.ParamByName('SUMY').AsVariant:=YSum.EditValue;
  Q.ParamByName('SUM1').AsVariant:=Sum1.EditValue;
  Q.ParamByName('SUM2').AsVariant:=Sum2.EditValue;
  Q.ParamByName('SUM3').AsVariant:=Sum3.EditValue;
  Q.ParamByName('SUM4').AsVariant:=Sum4.EditValue;
  Q.ExecQuery;
  cmDB.WT.Commit;
  FreeQueryForUse(Q);
end;

end.
