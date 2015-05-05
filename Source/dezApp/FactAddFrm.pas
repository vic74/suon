unit FactAddFrm;

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
  Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinsDefaultPainters,
  KontragentRepository, dxSkinDevExpressStyle;

type
  TFactAddForm = class(TDezModalForm)
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
    dt_zd: TcxDateEdit;
    itm_zd: TdxLayoutItem;
    dt_sd: TcxDateEdit;
    itm_sd: TdxLayoutItem;
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
    src_Kontr: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure cbb_streetPropertiesEditValueChanged(Sender: TObject);
    procedure btn_addClick(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure cbb_mlistPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    fController: TKontragentController;
    procedure prepareDS;
    procedure reOpenHouse;
    function CheckParams :boolean;
    procedure AddWork(isEdit: boolean);
  public
    { Public declarations }
    lift :boolean;
    lDS :TpFIBDataSet;
    calc: Boolean;
    factCode: Variant;
  end;

var
  FactAddForm: TFactAddForm;

implementation

uses cmDBUnit, CommonDm, AppUtils;

{$R *.dfm}

procedure TFactAddForm.AddWork(isEdit: boolean);
begin
  if not CheckParams then Exit;
  factCode:= null;
  with lDS do begin
    if isEdit then Edit else
    Append;
    FN('DATA').AsVariant:= dt_zd.EditValue;
    FN('HOUSE').AsVariant:= cbb_house.EditValue;
    FN('MLIST').AsVariant:= cbb_mlist.EditValue;
    FN('KONTRAGENT').AsVariant:= cbb_kontr.EditValue;
    FN('MANAGER').AsVariant:= cbb_manager.EditValue;
    FN('SUMMA').AsVariant:= ced_summa.EditValue;
    FN('ZD').AsVariant:= dt_zd.EditValue;
    FN('SD').AsVariant:= dt_sd.EditValue;
    FN('STATE').AsVariant:=5;
    Post;
    factCode:= FN('CODE').AsVariant;
  end;
  ModalResult:=mrOk;
end;

procedure TFactAddForm.btn_addClick(Sender: TObject);
begin
  AddWork(false);
end;

procedure TFactAddForm.btn_editClick(Sender: TObject);
begin
  AddWork(true);
end;

procedure TFactAddForm.cbb_mlistPropertiesChange(Sender: TObject);
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

procedure TFactAddForm.cbb_streetPropertiesEditValueChanged(Sender: TObject);
begin
  reOpenHouse;
end;

function TFactAddForm.CheckParams: boolean;
  procedure Rez(mes :string; ed :TcxCustomEdit);
  begin
    Application.MessageBox(PChar(mes), 'Ошибка', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
    ed.SetFocus;
    Result:=False;
  end;
begin
  Result:=true;
  if cbb_house.EditValue=null then
  begin
    Rez('Не указан дом!',cbb_house);
    Exit;
  end;
  if cbb_kontr.EditValue=null then
  begin
    Rez('Не указана организация!',cbb_kontr);
    Exit;
  end;
  if cbb_mlist.EditValue=null then
  begin
    Rez('Не указана работа!',cbb_mlist);
    Exit;
  end;
  if ced_summa.EditValue=null then
  begin
    Rez('Не указана сумма!',ced_summa);
    Exit;
  end;
  if dt_zd.EditValue=null then
  begin
    Rez('Не указана факт. дата!',dt_zd);
    Exit;
  end;
  if dt_sd.EditValue=null then
  begin
    Rez('Не указана дата для сайта!',dt_sd);
    Exit;
  end;
end;

procedure TFactAddForm.FormCreate(Sender: TObject);
begin
  fController:= TKontragentController.Create;
  LoadForm(prop1,self.name);
  ConfigureCombo(cbb_mlist);
end;

procedure TFactAddForm.FormDestroy(Sender: TObject);
begin
  fController.Free;
end;

procedure TFactAddForm.FormShow(Sender: TObject);
begin
  prepareDS;
end;

procedure TFactAddForm.prepareDS;
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
  ds_worker.Open;
end;

procedure TFactAddForm.reOpenHouse;
begin
  with com_dm.ds_house do begin
    Close;
    MainWhereClause:='h.street=:str';
    ParamByName('str').AsVariant:=cbb_street.EditValue;
    Open;
  end;
end;

end.
