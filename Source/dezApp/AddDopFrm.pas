unit AddDopFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControl, Menus, StdCtrls, cxButtons,
  FIBQuery, pFIBQuery, pFIBCacheQueries, pFIBProps,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar,
  cxTextEdit, cxMaskEdit, dxLayoutLookAndFeels, DB, FIBDataSet, pFIBDataSet,
  BaseForm,
  dxLayoutControlAdapters, dxLayoutContainer, dxSkinDevExpressStyle,
  Vcl.ComCtrls, dxCore, cxDateUtils;

type
  TAddDopForm = class(TDezModalForm)
    gr1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    msk_num: TcxMaskEdit;
    itm_num: TdxLayoutItem;
    dt1: TcxDateEdit;
    itm_dt1: TdxLayoutItem;
    cbb_dog: TcxLookupComboBox;
    itm_dog: TdxLayoutItem;
    dt2: TcxDateEdit;
    itm_dt2: TdxLayoutItem;
    dt3: TcxDateEdit;
    itm_dt3: TdxLayoutItem;
    btn_ok: TcxButton;
    itm_ok: TdxLayoutItem;
    ds_SRVDOG: TpFIBDataSet;
    src_SRVDOG: TDataSource;
    btn_gen: TcxButton;
    itm_gen: TdxLayoutItem;
    grlc1Group1: TdxLayoutGroup;
    procedure btn_okClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_genClick(Sender: TObject);
  private
    function CheckParam :Boolean;
    function GetDopNum(kontr: Variant) :variant;
  public
    { Public declarations }
    kontr :Variant;
  end;

var
  AddDopForm: TAddDopForm;

implementation

uses cmDBUnit;

{$R *.dfm}

procedure TAddDopForm.btn_genClick(Sender: TObject);
var
  kontr :variant;
  procedure Rez(mes :string; ed :TcxCustomEdit);
  begin
    Application.MessageBox(PChar(mes), 'Ошибка', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
    ed.SetFocus;
  end;
begin
  if cbb_dog.EditValue=null then
  begin
    Rez('Укажите договор!',cbb_dog);
    Exit;
  end;
  with cbb_dog.Properties.Grid.DataController do
       kontr:= Values[FocusedRecordIndex, 5];
  msk_num.EditValue:=GetDopNum(kontr);
end;

procedure TAddDopForm.btn_okClick(Sender: TObject);
begin
  if not CheckParam then ModalResult:=mrNone else
  begin
    with cbb_dog.Properties.Grid.DataController do
    kontr:= Values[FocusedRecordIndex, 5];
    ModalResult:=mrOk;
  end;
end;

function TAddDopForm.CheckParam: Boolean;
  procedure Rez(mes :string; ed :TcxCustomEdit);
  begin
    Application.MessageBox(PChar(mes), 'Ошибка', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
    ed.SetFocus;
    Result:=False;
  end;
begin
  Result:=true;
  if msk_num.EditText='' then
  begin
    Rez('Укажите номер',msk_num);
    Exit;
  end;
  if dt1.EditValue=null then
  begin
    Rez('Укажите дату создания',dt1);
    Exit;
  end;
  if dt2.EditValue=null then
  begin
    Rez('Укажите дату начала',dt2);
    Exit;
  end;
  if dt3.EditValue=null then
  begin
    Rez('Укажите дату окончания',dt3);
    Exit;
  end;
  if cbb_dog.EditValue=null then
  begin
    Rez('Укажите договор',cbb_dog);
    Exit;
  end;
end;

procedure TAddDopForm.FormCreate(Sender: TObject);
begin
  ds_SRVDOG.Open;
end;

function TAddDopForm.GetDopNum(kontr: Variant): variant;
var
  Q: TFIBQuery;
  UpdQ :TFibQuery;
  num :Variant;
begin
  Result:=null;
  if kontr=null then Exit;
  Q:=GetQueryForUse(cmDB.RT, 'select DOPNUM from KONTRAGENT where code=:kontr');
  Q.ParamByName('kontr').AsVariant:=kontr;
  //
  UpdQ:=GetQueryForUse(cmDB.WT,'update KONTRAGENT' + #13#10 +
                              'set DOPNUM = :DOPNUM' + #13#10 +
                              'where (CODE = :CODE)');
  UpdQ.Options:=[qoStartTransaction, qoAutoCommit];
  try
    Q.ExecQuery;
    num:=Q.FN('DOPNUM').AsVariant+1;
    UpdQ.ParamByName('CODE').AsVariant:=kontr;
    UpdQ.ParamByName('DOPNUM').AsVariant:=num;
    UpdQ.ExecQuery;
    Result:=VarToStr(kontr)+'-'+VarToStr(num);
  finally
    FreeQueryForUse(Q);
    FreeQueryForUse(UpdQ);
  end;
end;

end.


