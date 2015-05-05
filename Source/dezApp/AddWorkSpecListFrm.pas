unit AddWorkSpecListFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxPropertiesStore,
  dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, Menus, StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, DB, FIBDataSet, pFIBDataSet, cxMemo,
  cxCurrencyEdit, dxLayoutLookAndFeels, cxFilter, BaseForm,
  FIBQuery,pFIBCacheQueries, cxSpinEdit, KServisWorkFrm, cxCalendar,
  dxLayoutControlAdapters, dxLayoutContainer, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinDevExpressStyle;

type
  TAddWorkSpecListForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    prop1: TcxPropertiesStore;
    ds_serviswork: TpFIBDataSet;
    src_serviswork: TDataSource;
    ds_street: TpFIBDataSet;
    src_street: TDataSource;
    ds_house: TpFIBDataSet;
    src_house: TDataSource;
    ds_flat: TpFIBDataSet;
    src_flat: TDataSource;
    cbb_street: TcxLookupComboBox;
    itm_street: TdxLayoutItem;
    cbb_house: TcxLookupComboBox;
    itm_house: TdxLayoutItem;
    cbb_flat: TcxLookupComboBox;
    itm_flat: TdxLayoutItem;
    cbb_work: TcxLookupComboBox;
    itm_work: TdxLayoutItem;
    btn_ok: TcxButton;
    itm_ok: TdxLayoutItem;
    btn_cancel: TcxButton;
    itm_cancel: TdxLayoutItem;
    grp2: TdxLayoutGroup;
    cedt_price: TcxCurrencyEdit;
    itm_price: TdxLayoutItem;
    mmo1: TcxMemo;
    itm_mmo: TdxLayoutItem;
    lkf1: TdxLayoutLookAndFeelList;
    skn1: TdxLayoutSkinLookAndFeel;
    btn_spr: TcxButton;
    itm_spr: TdxLayoutItem;
    grplc1Group1: TdxLayoutGroup;
    txt_ed: TcxTextEdit;
    itm_ed: TdxLayoutItem;
    laf1: TdxLayoutCxLookAndFeel;
    edsp_quant: TcxSpinEdit;
    itm_quant: TdxLayoutItem;
    dt1: TcxDateEdit;
    itm_dt: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure cbb_streetPropertiesEditValueChanged(Sender: TObject);
    procedure cbb_housePropertiesEditValueChanged(Sender: TObject);
    procedure cedt_priceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_okClick(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbb_workPropertiesEditValueChanged(Sender: TObject);
    procedure cbb_flatPropertiesEditValueChanged(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbb_workPropertiesChange(Sender: TObject);
    procedure btn_sprClick(Sender: TObject);
    procedure txt_edKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    sprform :TForm;
    function CheckParam :Boolean;
    procedure ReopenHouse;
    procedure ReopenFlat;
    procedure ConfigureCombo(combo : TcxLookupComboBox);
    procedure CreateSprForm(AForm :string);
    function GetEd(Cod :Variant) :string;
  public
    { Public declarations }
    ifEdit :Boolean;
  end;

var
  AddWorkSpecListForm: TAddWorkSpecListForm;

implementation

uses AppUtils, cmDBUnit, LoadingSplash, cmUtils;

{$R *.dfm}

procedure TAddWorkSpecListForm.btn_cancelClick(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure TAddWorkSpecListForm.btn_okClick(Sender: TObject);
begin
  if CheckParam then
  ModalResult:=mrOk else
  ModalResult:=mrNone;
end;

procedure TAddWorkSpecListForm.btn_sprClick(Sender: TObject);
var
  F : TKServisWorkForm;
begin
  F:=TKServisWorkForm.CreateModal(Self,true);
  F.FormStyle := fsStayOnTop;
  F.WindowState:=wsNormal;
  F.Position:=poMainFormCenter;
  F.Visible:=False;
  SetSkin(F);
  if F.ShowModal=mrOk then
  cbb_work.EditValue:=F.v2.GetColumnByFieldName('Code').EditValue;
  //CreateSprForm('KServisWorkForm');
end;

procedure TAddWorkSpecListForm.cbb_flatPropertiesEditValueChanged(
  Sender: TObject);
begin
  //FocusControl(cbb_work);
end;

procedure TAddWorkSpecListForm.cbb_housePropertiesEditValueChanged(
  Sender: TObject);
begin
  ReopenFlat;
end;

procedure TAddWorkSpecListForm.cbb_streetPropertiesEditValueChanged(
  Sender: TObject);
begin
  ReopenHouse;
end;

procedure TAddWorkSpecListForm.ConfigureCombo(combo : TcxLookupComboBox);
begin
  combo.Properties.DropDownListStyle := lsEditList;
  combo.Properties.IncrementalFiltering := False;
  combo.Properties.IncrementalSearch := False;
  combo.Properties.ListOptions.CaseInsensitive := True;
  combo.Properties.GridMode := False; //GridMode will not work!
end;

procedure TAddWorkSpecListForm.cbb_workPropertiesChange(Sender: TObject);
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
    sText := cbb_work.Text;
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

procedure TAddWorkSpecListForm.CreateSprForm(AForm :string);
var
  FClass :TFormClass;
begin
    try
      FClass:= TFormClass(FindClass('T'+AForm));
    except
      on E : EClassNotFound do
         Exit;
    end;
    sprForm :=FClass.Create(Application);
    sprForm.FormStyle := fsStayOnTop;
    sprform.WindowState:=wsNormal;
    sprform.Position:=poMainFormCenter;
    sprform.Visible:=False;
    SetSkin(sprForm);
    //sprform.ShowModal;
    if sprform.ShowModal=mrOk then
    cbb_work.EditValue:=sprform.Tag;
    //sprform.Free;
end;

procedure TAddWorkSpecListForm.cbb_workPropertiesEditValueChanged(
  Sender: TObject);
begin
  GetEd(cbb_work.EditValue);
  //FocusControl(txt_ed);
  //FocusControl(cedt_price);
end;

function TAddWorkSpecListForm.GetEd(Cod :Variant) :string;
var
  ED :Variant;
  Q :TFIBQuery;
begin
  ED:=null;
  try
    Q:=GetQueryForUse(cmDB.RT,'Select ED,PRICE from SERVISWORK where Code=:Cod');
    Q.ParamByName('Cod').AsVariant:=Cod;
    Q.ExecQuery;
    ED:=Q.FN('ED').AsVariant;
    txt_ed.EditValue:=Q.FN('ED').AsVariant;
    if not ifEdit then
    cedt_price.EditValue:=Q.FN('PRICE').AsVariant;
  finally
    Result:=VarToStr(ED);
    FreeQueryForUse(Q);
    ifEdit:=False;
  end;
end;

procedure TAddWorkSpecListForm.cedt_priceKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_RETURN then
  FocusControl(mmo1);
end;

procedure TAddWorkSpecListForm.FormCreate(Sender: TObject);
begin
  //ds_street.Open;
  LoadForm(prop1, Self.Name);
  ConfigureCombo(cbb_work);
  ds_serviswork.Open;
end;

procedure TAddWorkSpecListForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then
  ModalResult:=mrCancel;
end;

procedure TAddWorkSpecListForm.FormShow(Sender: TObject);
begin
  FocusControl(cbb_work);
end;

function TAddWorkSpecListForm.CheckParam :Boolean;
begin
  Result:=True;
  {if cbb_house.EditValue=null then
  begin
    cmShowMessage('Не указан дом.',true);
    Result:=False;
    Exit;
  end; }
  if dt1.EditValue=null then
  begin
    cmShowMessage('Не указана дата работы по наряду.',true);
    Result:=False;
    Exit;
  end;
  if cbb_work.EditValue=null then
  begin
    cmShowMessage('Не указана работа по наряду.',true);
    Result:=False;
    Exit;
  end;
end;

procedure TAddWorkSpecListForm.ReopenHouse;
var
  hApp: hWnd;
begin
  if cbb_street.EditValue=null then Exit;
  //SplashVisibility(True,'Получаем список домов');
  try
    with ds_house do
    begin
      Close;
      MainWhereClause:='STREET = :CODE';
      ParamByName('CODE').AsVariant:=cbb_street.EditValue;
      OrderClause:='NOMER';
      Open;
    end;
  finally
    ds_flat.Close;
    //SplashVisibility(False);
    //hApp:= Application.Handle;
    //SetActiveWindow(hApp);
    //FocusControl(cbb_house);
  end;
end;

procedure TAddWorkSpecListForm.txt_edKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_RETURN then
  FocusControl(cedt_price);
end;

procedure TAddWorkSpecListForm.ReopenFlat;
begin
  if cbb_house.EditValue=null then Exit;
  //SplashVisibility(True,'Получаем список квартир...');
  try
    with ds_flat do
    begin
      Close;
      MainWhereClause:='HOUSE = :HOUSE';
      ParamByName('HOUSE').AsVariant:=cbb_house.EditValue;
      OrderClause:='FLAT';
      Open;
    end;
  finally
    //SplashVisibility(False);
    //Self.SetFocus;
    //SetActiveWindow(FindWindow('TAddWorkSpecListForm',nil));
    //FocusControl(cbb_flat);
  end;
end;

end.
