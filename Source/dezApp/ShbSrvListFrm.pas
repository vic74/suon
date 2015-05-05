unit ShbSrvListFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxSkinsdxBarPainter, dxBar, cxClasses, cxMaskEdit,
  cxSpinEdit, cxTextEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, FIBDataSet, pFIBDataSet, cxGridLevel, cxGridCustomView,
  cxGrid, dxLayoutContainer, dxSkinDevExpressStyle;

type
  TShbSrvListForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grlc1Group1: TdxLayoutGroup;
    grlc1Group2: TdxLayoutGroup;
    spl1: TdxLayoutSplitterItem;
    srvName: TcxTextEdit;
    itm_srvName: TdxLayoutItem;
    srvNum: TcxSpinEdit;
    itm_srvNum: TdxLayoutItem;
    brm1: TdxBarManager;
    bar1: TdxBar;
    btn_Add: TdxBarButton;
    doc1: TdxBarDockControl;
    itm_doc1: TdxLayoutItem;
    btn_edit: TdxBarButton;
    btn_del: TdxBarButton;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    ds_SHBSRVLIST: TpFIBDataSet;
    src_SHBSRVLIST: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    clv1POZ: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_delClick(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure btn_AddClick(Sender: TObject);
  private
    { Private declarations }
    procedure PrepareDs;
    function CheckParams :boolean;
    procedure FillEdit;
    procedure AddRec(isEdit :boolean = false);
  public
    { Public declarations }
  end;

var
  ShbSrvListForm: TShbSrvListForm;

implementation

uses AppUtils, cmDBUnit, cmUtils;

{$R *.dfm}

procedure TShbSrvListForm.AddRec(isEdit: boolean);
begin
  if not CheckParams then Exit;
  with ds_SHBSRVLIST do begin
    if isEdit then Edit else
    Append;
    FN('NAME').AsVariant:=srvName.EditingValue;
    FN('POZ').AsVariant:=srvNum.EditValue;
    Post;
  end;
end;

procedure TShbSrvListForm.btn_AddClick(Sender: TObject);
begin
  AddRec;
end;

procedure TShbSrvListForm.btn_delClick(Sender: TObject);
begin
  if gFN(v1,'CODE')=null then Exit;
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Предупреждение', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST)
    = IDYES then
  begin
    ds_SHBSRVLIST.Delete;
  end;
end;

procedure TShbSrvListForm.btn_editClick(Sender: TObject);
begin
  AddRec(true);
end;

function TShbSrvListForm.CheckParams: boolean;
begin
  Result:=true;
  if srvName.EditingValue = null then begin
    Application.MessageBox('Укажите наименование!', 'Ошибка', MB_OK +
      MB_ICONSTOP + MB_DEFBUTTON2 + MB_TOPMOST);
    Result:=false;
    Exit;
  end;
  if (srvNum.EditValue=null) or (srvNum.EditValue=0) then begin
    Application.MessageBox('Укажите номер услуги!', 'Ошибка', MB_OK +
      MB_ICONSTOP + MB_DEFBUTTON2 + MB_TOPMOST);
    Result:=false;
    Exit;
  end;
end;

procedure TShbSrvListForm.FillEdit;
begin
  with ds_SHBSRVLIST do begin
    srvName.EditValue:=FN('NAME').AsVariant;
    srvNum.EditValue:=FN('POZ').AsVariant;
  end;
end;

procedure TShbSrvListForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TShbSrvListForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  PrepareDs;
end;

procedure TShbSrvListForm.PrepareDs;
begin
  DSOptoins(ds_SHBSRVLIST,'','SHBSRVLIST','CODE','SHBSRVLIST_GEN');
end;

procedure TShbSrvListForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  FillEdit;
end;

procedure TShbSrvListForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP : FillEdit;
    VK_DOWN :FillEdit;
  end;
end;

initialization
 RegisterClass(TShbSrvListForm);
end.
