unit nmSummaryFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  Menus, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  FIBDataSet, pFIBDataSet, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls,
  cxButtons, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit,
  dxLayoutControlAdapters, dxLayoutContainer, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxCheckBox, dxSkinDevExpressStyle, KontragentRepository;

type
  TnmSummaryForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grplc1Group1: TdxLayoutGroup;
    dt1: TcxDateEdit;
    itm_dt1: TdxLayoutItem;
    dt2: TcxDateEdit;
    itm_dt2: TdxLayoutItem;
    cbb_kontr: TcxLookupComboBox;
    itm_kontr: TdxLayoutItem;
    btn_exec: TcxButton;
    itm_exec: TdxLayoutItem;
    grplc1Group2: TdxLayoutGroup;
    grplc1Group3: TdxLayoutGroup;
    grplc1Group4: TdxLayoutGroup;
    spl1: TdxLayoutSplitterItem;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_grd2: TdxLayoutItem;
    ds_summary: TpFIBDataSet;
    ds_detail: TpFIBDataSet;
    src_summary: TDataSource;
    src_detail: TDataSource;
    clv1HOUSE: TcxGridDBColumn;
    clv1SNAME: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1SUMMA: TcxGridDBColumn;
    src_kontr: TDataSource;
    clv2HOUSE: TcxGridDBColumn;
    clv2SERVISMATERIAL: TcxGridDBColumn;
    clv2NAME: TcxGridDBColumn;
    clv2ED: TcxGridDBColumn;
    clv2QUANTITY: TcxGridDBColumn;
    clv2PRICE: TcxGridDBColumn;
    clv2SUMMA: TcxGridDBColumn;
    grplc1Group5: TdxLayoutGroup;
    grplc1Group6: TdxLayoutGroup;
    btn_print: TcxButton;
    itm_print: TdxLayoutItem;
    chk_pay: TcxCheckBox;
    lItmlc1Item1: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
    procedure v1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_printClick(Sender: TObject);
  private
    { Private declarations }
    fController: TKontragentController;
  {$REGION 'Адрес + Сумма'}
  ///<summary>процедура получения общих сум по затраченным материалам по адресам</summary>
  {$ENDREGION}
  procedure GetSummary;
  {$REGION 'Детальная информация'}
  ///<summary>процедура получения списка материалов и цен по дому</summary>
  {$ENDREGION}
  procedure GetDetail(house :variant);
  {$REGION 'Проверка параметров'}
  ///<summary>проверка введенных параметров перед формированием запроса</summary>
  {$ENDREGION}
  function CheckParam :Boolean;
  {$REGION 'Старт формы'}
  ///<summary>процедура начального открытия наборов данных</summary>
  {$ENDREGION}
  procedure OpenDs;
  {$REGION 'Улицу в заоловок группы'}
  ///<summary>установка адреса в качастве зоголовка группы</summary>
  {$ENDREGION}
  procedure AddrCapt;
  {$REGION 'печать по дому'}
  ///<summary>Печать отчета об использованных материалах по дому</summary>
  {$ENDREGION}
  procedure PrintRepByHouse;
  public
    { Public declarations }
  end;

var
  nmSummaryForm: TnmSummaryForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, LoadingSplash, MaterialUse;

{$R *.dfm}

procedure TnmSummaryForm.AddrCapt;
begin
  with grplc1Group3 do begin
    Caption:=VarToStr(gFN(v1,'SNAME'))+' '+VarToStr(gFN(v1,'NOMER'));
  end;
end;

procedure TnmSummaryForm.btn_execClick(Sender: TObject);
begin
  GetSummary;
end;

procedure TnmSummaryForm.btn_printClick(Sender: TObject);
begin
  PrintRepByHouse;
end;

function TnmSummaryForm.CheckParam: Boolean;
  procedure Rez(mes :string; ed :TcxCustomEdit);
  begin
    Application.MessageBox(PChar(mes), 'Ошибка', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
    ed.SetFocus;
    Result:=False;
  end;
begin
  Result:=true;
  if dt1.EditValue=null then
  begin
    Rez('Укажите дату начала периода!',dt1);
    Exit;
  end;
  if dt2.EditValue=null then
  begin
    Rez('Укажите дату окончания периода!',dt2);
    Exit;
  end;
  if cbb_kontr.EditValue=null then
  begin
    Rez('Укажите подрядную организацию!',cbb_kontr);
    Exit;
  end;
end;

procedure TnmSummaryForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fController.Free;
  Action:=caFree;
end;

procedure TnmSummaryForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  fController:= TKontragentController.Create;
  OpenDs;
end;

procedure TnmSummaryForm.GetDetail(house: variant);
begin
  with ds_detail do begin
    Close;
    if (house=null) or (house=Unassigned) then exit;
    AddrCapt;
    SplashVisibility(true,'Дождитесь окончания операции.');
    try
      MainWhereClause:=
          'WS.DATA between :D1 and :D2 and' + #13#10 +
          'WS.KONTRAGENT = :KONTR and ws.house=:house';
                  if not chk_pay.Checked then
           MainWhereClause:= MainWhereClause+' and sw.cash=0';
      ParamByName('D1').AsVariant:=dt1.EditValue;
      ParamByName('D2').AsVariant:=dt2.EditValue;
      ParamByName('KONTR').AsVariant:=cbb_kontr.EditValue;
      ParamByName('house').AsVariant:=house;
      GroupByClause:='ws.house, WS.CLASSMAT, C.FULLNAME, C.ED, WS.PRICE';
      OrderClause:='C.FULLNAME';
      Open;
    finally
      SplashVisibility(False);
    end;
  end;
end;

procedure TnmSummaryForm.GetSummary;
begin
  with ds_summary do begin
    Close;
    ds_detail.Close;
    if not CheckParam then Exit;
      SplashVisibility(true,'Дождитесь окончания операции.');
      try
        grplc1Group2.Caption:='с учетом платных';
        MainWhereClause:=
          'WS.DATA between :D1 and :D2 and' + #13#10 +
          'WS.KONTRAGENT = :KONTR';
        if not chk_pay.Checked then begin
           MainWhereClause:= MainWhereClause+' and sw.cash=0';
           grplc1Group2.Caption:='';
        end;
        ParamByName('D1').AsVariant:=dt1.EditValue;
        ParamByName('D2').AsVariant:=dt2.EditValue;
        ParamByName('KONTR').AsVariant:=cbb_kontr.EditValue;
        GroupByClause:='ws.house,s.name,h.nomer';
        OrderClause:='s.name,h.nomer';
        Open;
      finally
        SplashVisibility(false);
      end;
  end;
end;

procedure TnmSummaryForm.OpenDs;
begin
  src_kontr.DataSet:= fController.DS;
  fController.GetActiveKontrShort();
end;

procedure TnmSummaryForm.PrintRepByHouse;
var
  obj :TMatUse;
begin
  if gFN(v1,'HOUSE')=null then Exit;
  obj:=TMatUse.Create;
  try
    with obj do begin
      D1:=dt1.EditValue;
      D2:=dt2.EditValue;
      PO:=cbb_kontr.EditValue;
      PrintReport(true,gFN(v1,'HOUSE'),null);
    end;
  finally
    obj.Free;
  end;
end;

procedure TnmSummaryForm.v1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  GetDetail(gFN(v1,'HOUSE'));
end;

procedure TnmSummaryForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN :GetDetail(gFN(v1,'HOUSE'));
  end;
end;

initialization
 RegisterClass(TnmSummaryForm);
end.
