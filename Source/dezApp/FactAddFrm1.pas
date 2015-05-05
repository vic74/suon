unit FactAddFrm1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControl, Menus, StdCtrls, cxButtons, cxCalc,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit, cxLookupEdit,
  FibQuery, pFIBCacheQueries, pFIBProps, cxFilter, BaseForm,
  cxDBLookupEdit, cxDBLookupComboBox, dxLayoutLookAndFeels, DB, FIBDataSet,
  pFIBDataSet, cxPropertiesStore, dxLayoutControlAdapters, dxLayoutContainer,
  dxSkinDevExpressStyle, KontragentRepository;

type
  TFactAddForm1 = class(TDezModalForm)
    gr1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    cbb_street: TcxLookupComboBox;
    itm_street: TdxLayoutItem;
    cbb_house: TcxLookupComboBox;
    itm_house: TdxLayoutItem;
    cbb_kontr: TcxLookupComboBox;
    itm_kontr: TdxLayoutItem;
    cbb_mlist: TcxLookupComboBox;
    itm_mlist: TdxLayoutItem;
    cbb_manager: TcxLookupComboBox;
    itm_manager: TdxLayoutItem;
    grlc1Group1: TdxLayoutGroup;
    grlc1Group2: TdxLayoutGroup;
    grlc1Group3: TdxLayoutGroup;
    ced_summa: TcxCalcEdit;
    itm_summa: TdxLayoutItem;
    grlc1Group4: TdxLayoutGroup;
    btn_add: TcxButton;
    itm_add: TdxLayoutItem;
    btn_edit: TcxButton;
    itm_edit: TdxLayoutItem;
    btn_del: TcxButton;
    itm_del: TdxLayoutItem;
    ds_mlist: TpFIBDataSet;
    src_mlist: TDataSource;
    ds_worker: TpFIBDataSet;
    src_worker: TDataSource;
    prop1: TcxPropertiesStore;
    txt_calc: TcxTextEdit;
    itmlc1Item1: TdxLayoutItem;
    ds_house: TpFIBDataSet;
    src_house: TDataSource;
    src_Kontr: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure cbb_streetPropertiesEditValueChanged(Sender: TObject);
    procedure btn_addClick(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure cbb_mlistPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbb_housePropertiesEditValueChanged(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    fController: TKontragentController;
    procedure prepareDS;
    procedure reOpenHouse;
    function CheckParams :boolean;
    procedure AddWork(isEdit: boolean);
    procedure AddWorkLift(isEdit: boolean);
    procedure SetManager;
    procedure FillCotrols;
  public
    { Public declarations }
    lift :boolean;
    lDS :TpFIBDataSet;
    calc: Boolean;
    factCode: Variant;
    kontr, manager, fFirm: Variant;
    isEdit: Boolean;
  end;

var
  FactAddForm1: TFactAddForm1;

implementation

uses cmDBUnit, CommonDm, AppUtils, dezInfo;

{$R *.dfm}

procedure TFactAddForm1.AddWork(isEdit: boolean);

  procedure EditTrFact;
  var
    Q: TFIBQuery;
  begin
    if factCode = null then
      raise Exception.Create('TRFACT.CODE = null');
    Q:=GetQueryForUse(cmDb.WT,
      'update TRFACT' +#13#10+
      'set HOUSE = :HOUSE,' +#13#10+
      '    MLIST = :MLIST,' +#13#10+
      '    KONTRAGENT = :KONTRAGENT,' +#13#10+
      '    MANAGER = :MANAGER,' +#13#10+
      '    SUMMA = :SUMMA,' +#13#10+
      '    CALCNUM = :CALCNUM' +#13#10+
      'where (CODE = :CODE)');
    Q.Options:=[qoStartTransaction, qoAutoCommit];
    try
      Q.ParamByName('HOUSE').AsVariant:= cbb_house.EditValue;
      Q.ParamByName('MLIST').AsVariant:= cbb_mlist.EditValue;
      Q.ParamByName('KONTRAGENT').AsVariant:= cbb_kontr.EditValue;
      Q.ParamByName('MANAGER').AsVariant:= cbb_manager.EditValue;
      Q.ParamByName('SUMMA').AsVariant:= ced_summa.EditValue;
      Q.ParamByName('CALCNUM').AsVariant:= txt_calc.EditingValue;
      Q.ParamByName('CODE').AsVariant:= factCode;
      Q.ExecQuery;
    finally
      FreeQueryForUse(Q);
    end;
  end;

begin
  if not CheckParams then Exit;
  if isEdit then begin
    EditTrFact;
    ModalResult:= mrOk;
    Exit;
  end;
  if not isEdit then
  factCode:= GetGenCode('TRFACT_GEN');
  if (factCode = null) and (not isEdit) then
     raise dezException.Create('Error Message');
  //
  with lDS do begin
    if isEdit then Edit else
    Append;
    if not isEdit then begin
      FN('CODE').AsVariant:= factCode;
      FN('DATA').AsVariant:= Date;
    end;
    FN('HOUSE').AsVariant:= cbb_house.EditValue;
    FN('MLIST').AsVariant:= cbb_mlist.EditValue;
    FN('KONTRAGENT').AsVariant:= cbb_kontr.EditValue;
    FN('MANAGER').AsVariant:= cbb_manager.EditValue;
    FN('SUMMA').AsVariant:= ced_summa.EditValue;
      FN('STATE').AsVariant:=3;
      FN('ISCALC').AsVariant:= 1;
      FN('CALCNUM').AsVariant:= txt_calc.Text;
      FN('FIRM').AsVariant:= fFirm;
    Post;
  end;
  ModalResult:=mrOk;
end;

procedure TFactAddForm1.AddWorkLift(isEdit: boolean);

  procedure EditTrLFact;
  var
    Q: TFIBQuery;
  begin
    if factCode = null then
      raise Exception.Create('TRLFACT.CODE = null');
    Q:=GetQueryForUse(cmDb.WT,
      'update TRLFACT' +#13#10+
      'set HOUSE = :HOUSE,' +#13#10+
      '    MLIST = :MLIST,' +#13#10+
      '    KONTRAGENT = :KONTRAGENT,' +#13#10+
      '    MANAGER = :MANAGER,' +#13#10+
      '    SUMMA = :SUMMA,' +#13#10+
      '    CALCNUM = :CALCNUM' +#13#10+
      'where (CODE = :CODE)');
    Q.Options:=[qoStartTransaction, qoAutoCommit];
    try
      Q.ParamByName('HOUSE').AsVariant:= cbb_house.EditValue;
      Q.ParamByName('MLIST').AsVariant:= cbb_mlist.EditValue;
      Q.ParamByName('KONTRAGENT').AsVariant:= cbb_kontr.EditValue;
      Q.ParamByName('MANAGER').AsVariant:= cbb_manager.EditValue;
      Q.ParamByName('SUMMA').AsVariant:= ced_summa.EditValue;
      Q.ParamByName('CALCNUM').AsVariant:= txt_calc.EditingValue;
      Q.ParamByName('CODE').AsVariant:= factCode;
      Q.ExecQuery;
    finally
      FreeQueryForUse(Q);
    end;
  end;

begin
  if not CheckParams then Exit;
  if isEdit then begin
    EditTrLFact;
    ModalResult:= mrOk;
    Exit;
  end;
  if not isEdit then
  factCode:= GetGenCode('TRLFACT_GEN');
  if (factCode = null) and (not isEdit) then
     raise dezException.Create('Error Message');
  //
  with lDS do begin
    if isEdit then Edit else
    Append;
    if not isEdit then begin
      FN('CODE').AsVariant:= factCode;
      FN('DATA').AsVariant:= Date;
    end;
    FN('HOUSE').AsVariant:= cbb_house.EditValue;
    FN('MLIST').AsVariant:= cbb_mlist.EditValue;
    FN('KONTRAGENT').AsVariant:= cbb_kontr.EditValue;
    FN('MANAGER').AsVariant:= cbb_manager.EditValue;
    FN('SUMMA').AsVariant:= ced_summa.EditValue;
      FN('STATE').AsVariant:=3;
      FN('ISCALC').AsVariant:= 1;
      FN('CALCNUM').AsVariant:= txt_calc.Text;
      FN('FIRM').AsVariant:= fFirm;
    Post;
  end;
  ModalResult:=mrOk;
end;

procedure TFactAddForm1.btn_addClick(Sender: TObject);
begin
  if lift then
    AddWorkLift(isEdit) else
    AddWork(isEdit);
end;

procedure TFactAddForm1.btn_editClick(Sender: TObject);
begin
  AddWork(true);
end;

procedure TFactAddForm1.cbb_housePropertiesEditValueChanged(Sender: TObject);
begin
  SetManager;
end;

procedure TFactAddForm1.cbb_mlistPropertiesChange(Sender: TObject);
var
  aItemListOr : TcxFilterCriteriaItemList;
  sText : String;
  i : Integer;
  combo : TcxLookupComboBox;
begin
  inherited;
  if not (Sender is TcxLookupComboBox) then
    exit;
  combo := TcxLookupComboBox(Sender);
  with combo.Properties.Grid.DataController do begin
    Filter.Active := False;
    Filter.Options := [fcoCaseInsensitive];
    Filter.Root.Clear;
    sText := combo.Text;
    if sText <> '' then begin
      sText := '%' + sText + '%';
      aItemListOr := Filter.Root.AddItemList( fboOr );
      for i:=0 to ItemCount-1 do begin
        aItemListOr.AddItem(GetItem(i), foLike, sText, sText);
      end;
    end;
    Filter.Active := True;
    combo.Properties.DropDownRows := 8;
  end;
end;

procedure TFactAddForm1.cbb_streetPropertiesEditValueChanged(Sender: TObject);
begin
  reOpenHouse;
end;

function TFactAddForm1.CheckParams: boolean;
  procedure Rez(mes :string; ed :TcxCustomEdit);
  begin
    Application.MessageBox(PChar(mes), 'Ошибка', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
    ed.SetFocus;
    Result:=False;
  end;
begin
  Result:=false;
  if cbb_house.EditValue=null then
     raise dezException.Create('Не указан дом!');
  if cbb_kontr.EditValue=null then
     raise dezException.Create('Не указана организация!');
  if cbb_mlist.EditValue=null then
     raise dezException.Create('Не указана работа!');
  if ced_summa.EditValue=null then
     raise dezException.Create('Не указана сумма!');
  if txt_calc.EditingValue=null then
     raise dezException.Create('Не указан номер калькуляции!');
  Result:= True;
end;

procedure TFactAddForm1.FillCotrols;
begin
  //
end;

procedure TFactAddForm1.FormCreate(Sender: TObject);
begin
  fController:= TKontragentController.Create;
  LoadForm(prop1,self.name);
  ConfigureCombo(cbb_mlist);
  isEdit:=False;
end;

procedure TFactAddForm1.FormDestroy(Sender: TObject);
begin
  fController.Free;
end;

procedure TFactAddForm1.FormShow(Sender: TObject);
begin
  prepareDS;
end;

procedure TFactAddForm1.prepareDS;
begin
  src_Kontr.DataSet:= fController.DS;
  fController.GetActiveKontragents(True, True);
  with com_dm do begin
    //ds_KONTRAGENT.CloseOpen(false);
    ds_street.CloseOpen(false);
  end;
  with ds_mlist do begin
    Close;
    if lift then
      MainWhereClause:='MGROUP in (4)' else
      MainWhereClause:='MGROUP in (1,3)';
    Open;
  end;
  with ds_house do begin
    Close;
    ParamByName('FIRM').AsVariant:= fFirm;
    Open;
  end;
  ds_worker.Open;
  cbb_kontr.EditValue:= kontr;
  cbb_kontr.Properties.ReadOnly:= kontr<>null;
  if (manager<>null) and (manager<>Unassigned) then
  cbb_manager.EditValue:= manager;
end;

procedure TFactAddForm1.reOpenHouse;
begin
  if ds_house.State = dsInactive then
  with ds_house do
  begin
    Close;
    if cbb_street.EditValue<>null then
    begin
      ParamByName('FIRM').AsVariant:=fFirm;
      Open;
      //
      Filtered:= False;
      Filter:= 'STREET = '+VarToStr(cbb_street.EditValue);
      Filtered:= True;
    end;
  end else with ds_house do
  begin
    Filtered:= False;
    Filter:= 'STREET = '+VarToStr(cbb_street.EditValue);
    Filtered:= True;
  end;
end;

procedure TFactAddForm1.SetManager;
var
  CODE, NAME: Variant;
begin
  if (manager<>null) and (manager<>Unassigned) then
    cbb_manager.EditValue:= manager else
  begin
    dzManager.GetHouseManager(CODE,NAME, 1,cbb_house.EditValue); //1 = ДЕЗ
    if CODE<>null then
      cbb_manager.EditValue:= CODE;
  end;
  //cbb_manager.Properties.ReadOnly:= CODE<>null;
end;

end.
