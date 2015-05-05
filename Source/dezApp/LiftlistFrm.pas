unit LiftlistFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxBar,
  cxClasses, cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, FIBDataSet,
  pFIBDataSet, cxGridLevel, cxGridCustomView, cxGrid, BaseForm, dxSkinsCore,
  dxSkinOffice2010Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxLayoutContainer;

type
  TLiftlistForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    brm1: TdxBarManager;
    brm1Bar1: TdxBar;
    btn_Add: TdxBarButton;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    ds_LIFTLIST: TpFIBDataSet;
    src_LIFTLIST: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1STREET: TcxGridDBColumn;
    clv1STNAME: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1ENTRANCE: TcxGridDBColumn;
    clv1Y: TcxGridDBColumn;
    clv1KOST: TcxGridDBColumn;
    clv1GRUZ: TcxGridDBColumn;
    clv1NOTE: TcxGridDBColumn;
    btn_edit: TdxBarButton;
    btn_delete: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_AddClick(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure btn_deleteClick(Sender: TObject);
  private
    { Private declarations }
    procedure AddLift;
    procedure EditLift;
    procedure OpenDS;
  public
    { Public declarations }
  end;

var
  LiftlistForm: TLiftlistForm;

implementation

uses AppUtils, cmDBUnit, AddLiftFrm, cmUtils;
{$R *.dfm}

procedure TLiftlistForm.btn_AddClick(Sender: TObject);
begin
  AddLift;
end;

procedure TLiftlistForm.btn_deleteClick(Sender: TObject);
begin
  if (v1.GetColumnByFieldName('CODE').EditValue <> null) or
    (v1.GetColumnByFieldName('CODE').EditValue <> Unassigned) then
  if cmMessageBox('¬ы действительно хотите удалить запись?') then
  ds_LIFTLIST.Delete;
end;

procedure TLiftlistForm.btn_editClick(Sender: TObject);
begin
  if (v1.GetColumnByFieldName('CODE').EditValue <> null) or
    (v1.GetColumnByFieldName('CODE').EditValue <> Unassigned) then
    EditLift;
end;

procedure TLiftlistForm.EditLift;
var
  F: TAddLiftForm;
begin
  F := TAddLiftForm.Create(Application);
  with ds_LIFTLIST do
  begin
    F.edt_code.EditValue := FN('CODE').AsVariant;
    F.cbb_street.EditValue := FN('STREET').AsVariant;
    F.cbb_house.EditValue := FN('HOUSE').AsVariant;
    F.edsp_entrance.EditValue := FN('ENTRANCE').AsVariant;
    F.edt_y.EditValue := FN('Y').AsVariant;
    F.edsp_kost.EditValue := FN('KOST').AsVariant;
    F.edsp_gruz.EditValue := FN('GRUZ').AsVariant;
    F.mmo_note.EditValue := FN('NOTE').AsVariant;
  end;

  if F.ShowModal = mrOk then
    with ds_LIFTLIST do
    begin
      Edit;
      FN('CODE').AsVariant := F.edt_code.EditValue;
      FN('STREET').AsVariant := F.cbb_street.EditValue;
      FN('HOUSE').AsVariant := F.cbb_house.EditValue;
      FN('ENTRANCE').AsVariant := F.edsp_entrance.EditValue;
      FN('Y').AsVariant := F.edt_y.EditValue;
      FN('KOST').AsVariant := F.edsp_kost.EditValue;
      FN('GRUZ').AsVariant := F.edsp_gruz.EditValue;
      FN('NOTE').AsVariant := F.mmo_note.EditValue;
      Post;
    end;
  F.Free;
end;

procedure TLiftlistForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TLiftlistForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1, Self.Name);
  OpenDS;
end;

procedure TLiftlistForm.OpenDS;
begin
  DSOptoins(ds_LIFTLIST, '', 'LIFTLIST', 'CODE', '');
end;

procedure TLiftlistForm.AddLift;
var
  F: TAddLiftForm;
begin
  F := TAddLiftForm.Create(Application);
  if F.ShowModal = mrOk then
    with ds_LIFTLIST do
    begin
      Append;
      FN('CODE').AsVariant := F.edt_code.EditValue;
      FN('STREET').AsVariant := F.cbb_street.EditValue;
      FN('HOUSE').AsVariant := F.cbb_house.EditValue;
      FN('ENTRANCE').AsVariant := F.edsp_entrance.EditValue;
      FN('Y').AsVariant := F.edt_y.EditValue;
      FN('KOST').AsVariant := F.edsp_kost.EditValue;
      FN('GRUZ').AsVariant := F.edsp_gruz.EditValue;
      FN('NOTE').AsVariant := F.mmo_note.EditValue;
      Post;
    end;
  F.Free;
end;

initialization

RegisterClass(TLiftlistForm);

end.
