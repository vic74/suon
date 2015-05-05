unit IPUFactBdrFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinDevExpressStyle, Data.DB, FIBDataSet, pFIBDataSet, dxSkinsdxBarPainter,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, dxBar, cxCurrencyEdit;

type
  TIPUFactBdrForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    ds_IPUFACTBDR: TpFIBDataSet;
    src_IPUFACTBDR: TDataSource;
    barM1: TdxBarManager;
    doc1: TdxBarDockControl;
    litm_lc1Item1: TdxLayoutItem;
    lGrplc1Group1: TdxLayoutGroup;
    lGrplc1Group2: TdxLayoutGroup;
    brM1Bar1: TdxBar;
    btn_Add: TdxBarButton;
    btn_Edit: TdxBarButton;
    btn_Delete: TdxBarButton;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    litm_lc1Item11: TdxLayoutItem;
    clv1CODE: TcxGridDBColumn;
    clv1DATA: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1STREETNAME: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1SUMMA: TcxGridDBColumn;
    clv1NOTE: TcxGridDBColumn;
    btn_Refresh: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_AddClick(Sender: TObject);
    procedure btn_EditClick(Sender: TObject);
    procedure btn_DeleteClick(Sender: TObject);
    procedure ds_IPUFACTBDRAfterOpen(DataSet: TDataSet);
    procedure ds_IPUFACTBDRAfterPost(DataSet: TDataSet);
    procedure btn_RefreshClick(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDS;
    procedure AddRec(isEdit: Boolean = false);
    procedure BtnEnable;
  public
    { Public declarations }
  end;

var
  IPUFactBdrForm: TIPUFactBdrForm;

implementation

uses cmDBUnit, IPUFactBdrEditFrm;

{$R *.dfm}


procedure TIPUFactBdrForm.AddRec(isEdit: Boolean);
var
  F: TIPUFactBdrEditForm;
begin
  if isEdit then
     ds_IPUFACTBDR.Edit else
     ds_IPUFACTBDR.Append;
  F:= TIPUFactBdrEditForm.Create(Self, ds_IPUFACTBDR);
  try
    if F.ShowModal<> mrOk then
      ds_IPUFACTBDR.Cancel;
  finally
    FreeAndNil(F);
  end;
end;

procedure TIPUFactBdrForm.BtnEnable;
var
  aValue: Variant;
  isEnable: Boolean;
begin
  aValue:= v1.GetColumnByFieldName('CODE').EditValue;
  isEnable:= not VarIsType(aValue,[varNull, varEmpty]);
  btn_Edit.Enabled:= isEnable;
  btn_Delete.Enabled:= isEnable;
  btn_Add.Enabled:= not (ds_IPUFACTBDR.State in [dsInactive]);
end;

procedure TIPUFactBdrForm.btn_AddClick(Sender: TObject);
begin
  AddRec;
end;

procedure TIPUFactBdrForm.btn_DeleteClick(Sender: TObject);
begin
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Предупреждение', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
  begin
    ds_IPUFACTBDR.Delete;
  end;
end;

procedure TIPUFactBdrForm.btn_EditClick(Sender: TObject);
begin
  AddRec(True);
end;

procedure TIPUFactBdrForm.btn_RefreshClick(Sender: TObject);
begin
 ds_IPUFACTBDR.Refresh;
end;

procedure TIPUFactBdrForm.ds_IPUFACTBDRAfterOpen(DataSet: TDataSet);
begin
  BtnEnable;
end;

procedure TIPUFactBdrForm.ds_IPUFACTBDRAfterPost(DataSet: TDataSet);
begin
  BtnEnable;
end;

procedure TIPUFactBdrForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TIPUFactBdrForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  OpenDS;
end;

procedure TIPUFactBdrForm.OpenDS;
begin
  DSOptoins(ds_IPUFACTBDR,'','IPUFACTBDR','CODE', 'IPUFACTBDR_GEN');
end;

initialization
 RegisterClass(TIPUFactBdrForm);
end.
