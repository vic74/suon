unit IPUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, Data.DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FIBDataSet, pFIBDataSet,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxContainer, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc,
  dxSkinsdxBarPainter, dxBar, cxCalendar, cxBarEditItem, dxBarExtItems,
  frxClass, frxDBSet, dxSkinDevExpressStyle, cxCheckBox;

type
  TIPUForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grplc1Group1: TdxLayoutGroup;
    grplc1Group2: TdxLayoutGroup;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    lItmlc1Item1: TdxLayoutItem;
    ds_IPUPRICE: TpFIBDataSet;
    src_IPUPRICE: TDataSource;
    clv1CNT: TcxGridDBColumn;
    clv1SUMA: TcxGridDBColumn;
    grplc1Group3: TdxLayoutGroup;
    grplc1Group4: TdxLayoutGroup;
    clc_CNT: TcxCalcEdit;
    lItmlc1Item11: TdxLayoutItem;
    clc_SUMA: TcxCalcEdit;
    lItmlc1Item12: TdxLayoutItem;
    btn_Add: TcxButton;
    lItmlc1Item13: TdxLayoutItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    lItmlc1Item14: TdxLayoutItem;
    ds_IPU: TpFIBDataSet;
    src_IPU: TDataSource;
    clv2CODE: TcxGridDBColumn;
    clv2SNAME: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2NOMER: TcxGridDBColumn;
    clv2FLAT: TcxGridDBColumn;
    clv2CNT: TcxGridDBColumn;
    clv2DATA: TcxGridDBColumn;
    clv2SUMA: TcxGridDBColumn;
    doc1: TdxBarDockControl;
    lItmlc1Item15: TdxLayoutItem;
    brm1: TdxBarManager;
    bar1: TdxBar;
    btn_NEW: TdxBarButton;
    btn_EDIT: TdxBarButton;
    btn_DELETE: TdxBarButton;
    btn_print: TdxBarButton;
    fr1: TfrxReport;
    frDS1: TfrxDBDataset;
    dtb1: TcxBarEditItem;
    dtb2: TcxBarEditItem;
    bar2: TdxBar;
    btn_Exec: TdxBarButton;
    clv2A: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_AddClick(Sender: TObject);
    procedure btn_NEWClick(Sender: TObject);
    procedure btn_EDITClick(Sender: TObject);
    procedure btn_DELETEClick(Sender: TObject);
    procedure btn_ExecClick(Sender: TObject);
    procedure btn_printClick(Sender: TObject);
    procedure ds_IPUAfterOpen(DataSet: TDataSet);
    procedure v2StylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
  private
    { Private declarations }
    procedure PrepareDS;
    procedure AddTarif;
    procedure AddRec(isNewRec: Boolean = true);
    procedure OpenIPU;
    procedure PrintReport;
  public
    { Public declarations }
  end;

var
  IPUForm: TIPUForm;

implementation

uses cmDBUnit, IPUEDITFrm;

{$R *.dfm}


procedure TIPUForm.AddRec(isNewRec: Boolean);
var
  F: TIPUEDITForm;
begin
  F:= TIPUEDITForm.Create(self);
  F.DS:= ds_IPU;
  F.DSPRICE := ds_IPUPRICE;
  F.isNewRec := isNewRec;
  F.ShowModal;
end;

procedure TIPUForm.AddTarif;

  procedure CheckParams;
  begin
    if ((clc_CNT.EditValue = null) or (clc_CNT.Value = 0)) then
       raise dezException.Create('Укажите кол-во!');
    if clc_SUMA.EditValue = null then
       raise dezException.Create('Укажите цену!');
    if ds_IPUPRICE.Locate('CNT',clc_CNT.EditValue,[]) then
       raise dezException.Create('Данное коичество уже имеется в таблице!');
  end;

begin
  CheckParams;
  with ds_IPUPRICE do begin
    Append;
    FN('CNT').AsVariant:= clc_CNT.Value;
    FN('SUMA').AsVariant:= clc_SUMA.Value;
    Post;
  end;
end;

procedure TIPUForm.btn_AddClick(Sender: TObject);
begin
  AddTarif;
end;

procedure TIPUForm.btn_DELETEClick(Sender: TObject);
begin
  if v2.FN('CODE') = null then Exit;
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Внимание', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    ds_IPU.Delete;
  end;
end;

procedure TIPUForm.btn_EDITClick(Sender: TObject);
begin
  AddRec(false);
end;

procedure TIPUForm.btn_ExecClick(Sender: TObject);
begin
  OpenIPU;
end;

procedure TIPUForm.btn_NEWClick(Sender: TObject);
begin
  AddRec;
end;

procedure TIPUForm.btn_printClick(Sender: TObject);
begin
  PrintReport;
end;

procedure TIPUForm.ds_IPUAfterOpen(DataSet: TDataSet);
begin
  bar1.Visible:= not ds_IPU.IsEmpty;;
end;

procedure TIPUForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TIPUForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  PrepareDS;
end;

procedure TIPUForm.OpenIPU;
begin
  with ds_IPU do begin
    Close;
    MainWhereClause:= 'ipu.DATA between :d1 and :d2';
    ParamByName('d1').AsVariant:= dtb1.EditValue;
    ParamByName('d2').AsVariant:= dtb2.EditValue;
    Open;
  end;
end;

procedure TIPUForm.PrepareDS;
begin
  DSOptoins(ds_IPUPRICE,'','IPU$PRICE','CNT','');
  DSOptoins(ds_IPU,'','IPU','CODE','IPU_GEN', false);
end;

procedure TIPUForm.PrintReport;
begin
  fr1.Variables['d1'] := dtb1.EditValue;
  fr1.Variables['d2'] := dtb2.EditValue;
  fr1.ShowReport;
end;

procedure TIPUForm.v2StylesGetContentStyle(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  out AStyle: TcxStyle);
begin
 if (ARecord.Values[clv2A.Index] = 0) then
   AStyle := cmDb.stl_ReadOnly;
end;

initialization
 RegisterClass(TIPUForm);
end.
