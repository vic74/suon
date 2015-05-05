unit BudgetFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxRibbonForm,pFIBProps,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinsdxRibbonPainter, dxSkinscxPCPainter,
  dxLayoutControl, dxLayoutcxEditAdapters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxListBox, cxDBEdit, dxRibbon,
  cxPropertiesStore, dxLayoutLookAndFeels, dxSkinsdxBarPainter, dxBar,
  FIBDataSet, pFIBDataSet, FIBDatabase, pFIBDatabase, ImgList, cxMRUEdit,
  dxmdaset, BaseForm, dxRibbonSkins, dxLayoutContainer, dxSkinDevExpressStyle;

type
  TBudgetForm = class(TDezForm)
    Ribbon1Tab1: TdxRibbonTab;
    Ribbon1: TdxRibbon;
    grp_root: TdxLayoutGroup;
    lcntr_root: TdxLayoutControl;
    splt1: TdxLayoutSplitterItem;
    lcntr_rootGroup1: TdxLayoutGroup;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    Itm_grd1: TdxLayoutItem;
    cbb_budget: TcxLookupComboBox;
    Itm_cbBudget: TdxLayoutItem;
    cbb_srv: TcxLookupComboBox;
    Itm_srv: TdxLayoutItem;
    grp3: TdxLayoutGroup;
    prop1: TcxPropertiesStore;
    LSkin1: TdxLayoutLookAndFeelList;
    LCxSkin1: TdxLayoutCxLookAndFeel;
    bm1: TdxBarManager;
    bar1: TdxBar;
    btn_add: TdxBarButton;
    btn_edit: TdxBarButton;
    btn_delete: TdxBarButton;
    btn_post: TdxBarButton;
    doc1: TdxBarDockControl;
    Itm_doc1: TdxLayoutItem;
    ppm1: TdxBarPopupMenu;
    ds_ShName: TpFIBDataSet;
    SourceShName: TDataSource;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    Itm_grd2: TdxLayoutItem;
    clv2Code: TcxGridDBColumn;
    clv2Name: TcxGridDBColumn;
    il1: TcxImageList;
    ds_srv: TpFIBDataSet;
    Source_srv: TDataSource;
    ds_detail: TpFIBDataSet;
    Source_detail: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1BUDGET: TcxGridDBColumn;
    clv1SRV: TcxGridDBColumn;
    clv1TARIF: TcxGridDBColumn;
    clv1TBASE: TcxGridDBColumn;
    mt_TBase: TdxMemData;
    Source_TBase: TDataSource;
    clv1PSRV: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure v2NavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure ds_ShNameAfterDelete(DataSet: TDataSet);
    procedure v2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v1NavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure ds_ShNameAfterPost(DataSet: TDataSet);
    procedure ds_detailAfterOpen(DataSet: TDataSet);
    procedure ds_detailPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure v2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);

  private
    { Private declarations }
    procedure OpenDataSet;
    procedure CreateMemTBase;
    procedure AddTBase;
  public
    { Public declarations }
  end;

var
  BudgetForm: TBudgetForm;

implementation

uses AppUtils, cmDBUnit, SQLList;

{$R *.dfm}
{-------------------------------------------------------------------------------
  btn_addClick|Добавить шаблон
-------------------------------------------------------------------------------}
procedure TBudgetForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TBudgetForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  OpenDataSet;
end;

{-------------------------------------------------------------------------------
 OpenDataSet|Открываем запросы
-------------------------------------------------------------------------------}
procedure TBudgetForm.OpenDataSet;
begin
  //таблица шаблонов буджета
  DSOptoins(ds_ShName,BUDGETSHABLON,'BUDGETSHABLON','CODE','BUDGETSHABLON_GEN');
  //таблица видов начислений
  ds_srv.CloseOpen(true);
  //
  DSOptoins(ds_detail,'','BUDGETLINE','CODE','BUDGETLINE_GEN');
  //
  CreateMemTBase;
  //
  ds_detail.ParamByName('budget').AsInteger:=
                                      v2.GetColumnByFieldName('Code').EditValue;
  ds_detail.CloseOpen(false);
end;

procedure TBudgetForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if v1.Controller.IsFilterRowFocused then Exit;
 if Key=VK_INSERT then
 begin
   v1.GetColumnByFieldName('BUDGET').EditValue:=
                                      v2.GetColumnByFieldName('CODE').EditValue;
   v1.OptionsBehavior.ImmediateEditor:=True;
 end;
 {if Key=VK_RETURN then
 if clv1TBASE.Focused then
 if v1.DataController.IsEditing then v1.DataController.Post();}

end;

procedure TBudgetForm.v1NavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
 { if AButtonIndex=6 then    //insert
   v1.GetColumnByFieldName('BUDGET').EditValue:=
    v2.GetColumnByFieldName('CODE').EditValue;}
end;

procedure TBudgetForm.v2CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
 if AButton=mbLeft then
 if v2.Controller.IsNewItemRowFocused then Exit;
 ds_detail.ParamByName('budget').AsInteger:=
                                      v2.GetColumnByFieldName('Code').EditValue;
 ds_detail.CloseOpen(false);
end;

procedure TBudgetForm.v2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key=VK_UP) or (Key=VK_DOWN) then
 begin
  ds_detail.ParamByName('budget').AsInteger:=
                                      v2.GetColumnByFieldName('Code').EditValue;
  ds_detail.CloseOpen(false);
 end;
end;

procedure TBudgetForm.v2NavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  if AButtonIndex=6 then //удалить
  v2.NewItemRow.Visible:=True;
end;
{-------------------------------------------------------------------------------
CreateMemTBase|Временная таблица с значениями поля TBase
-------------------------------------------------------------------------------}
procedure TBudgetForm.CreateMemTBase;
begin
  with mt_TBase.FieldDefs do
  begin
    CreateField(mt_TBase,'Code',ftInteger);
    CreateField(mt_TBase,'Name',ftString,256);
  end;
  mt_TBase.Open;
  AddTBase;
end;

procedure TBudgetForm.ds_detailAfterOpen(DataSet: TDataSet);
begin
 v1.FilterRow.Visible:= not DataSet.IsEmpty;
end;

procedure TBudgetForm.ds_detailPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  Application.MessageBox('Ошибка ввода данных.' + #13#10 +
    'Проверте правильность ввода.', 'Внимание!', MB_OK + MB_ICONSTOP);

  Action:=daAbort;
end;

procedure TBudgetForm.ds_ShNameAfterDelete(DataSet: TDataSet);
begin
  ds_detail.CloseOpen(true);
end;

procedure TBudgetForm.ds_ShNameAfterPost(DataSet: TDataSet);
begin
  v1.OptionsBehavior.ImmediateEditor:=false;
end;

procedure TBudgetForm.AddTBase;
 procedure Add(code :Integer; Name :string);
 begin
    mt_TBase.Append;
    mt_TBase.FieldByName('Code').AsInteger:=Code;
    mt_TBase.FieldByName('Name').AsString:=Name;
    mt_TBase.Post;
 end;
begin
  Add(0,'площадь общая');
  Add(1,'площадь жилая');
  Add(2,'площадь нежилая');
  Add(3,'площадь подвалов');
  Add(4,'количество жильцов');
  Add(5,'количество квартир');
  Add(6,'количество лицевых счетов');
  Add(7,'количество подъездов');
  Add(8,'количество лифтов');
  Add(9,'количество мусоропроводов');
end;

initialization
 RegisterClass(TBudgetForm);
end.
