unit LKTYPEFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxLayoutcxEditAdapters, cxContainer, cxTextEdit, cxHint, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxSkinsdxBarPainter, dxBar, cxMaskEdit,
  cxDropDownEdit, FIBDataSet, pFIBDataSet, cxMemo, dxLayoutContainer,
  dxScreenTip, dxCustomHint, dxSkinDevExpressStyle;

type
  TLKTYPEForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grlc1Group1: TdxLayoutGroup;
    grlc1Group2: TdxLayoutGroup;
    spl1: TdxLayoutSplitterItem;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    cxhint1: TcxHintStyleController;
    txt_name: TcxTextEdit;
    itm_name: TdxLayoutItem;
    txt_sname: TcxTextEdit;
    itm_sname: TdxLayoutItem;
    ds_LKType: TpFIBDataSet;
    src_LKType: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    clv1SNAME: TcxGridDBColumn;
    clv1PTYPE: TcxGridDBColumn;
    clv1PNAME: TcxGridDBColumn;
    cbb_PNAME: TcxComboBox;
    itm_PNAME: TdxLayoutItem;
    grlc1Group3: TdxLayoutGroup;
    brm1: TdxBarManager;
    bar1: TdxBar;
    doc1: TdxBarDockControl;
    itm_doc: TdxLayoutItem;
    btn_Add: TdxBarButton;
    btn_Edit: TdxBarButton;
    btn_Del: TdxBarButton;
    mmo_name: TcxMemo;
    itm_mm_name: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_AddClick(Sender: TObject);
    procedure btn_EditClick(Sender: TObject);
    procedure btn_DelClick(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    procedure ReopenDS;
    procedure FillEdit;
    procedure AddRec(isEdit :boolean=False);
    function CheckParams :boolean;
  public
    { Public declarations }
  end;

var
  LKTYPEForm: TLKTYPEForm;

implementation

uses AppUtils, cmDBUnit, cmUtils;

{$R *.dfm}

procedure TLKTYPEForm.AddRec(isEdit: boolean);
begin
  if not CheckParams then Exit;
  with ds_LKType do begin
    if isEdit then Edit else
    Append;
    FN('NAME').AsVariant:=mmo_name.EditingValue;
    FN('SNAME').AsVariant:=Trim(txt_sname.Text);
    FN('PTYPE').AsVariant:=cbb_PNAME.ItemIndex;
    Post;
  end;
end;

procedure TLKTYPEForm.btn_AddClick(Sender: TObject);
begin
  AddRec;
end;

procedure TLKTYPEForm.btn_DelClick(Sender: TObject);
begin
  if Application.MessageBox('Вы действительно хотите удалитьзапись?',
    'Предупреждение', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST)
    = IDYES then
  begin
    ds_LKType.Delete;
  end;
end;

procedure TLKTYPEForm.btn_EditClick(Sender: TObject);
begin
  AddRec(True);
end;

function TLKTYPEForm.CheckParams: boolean;
  procedure Rez(mes :string; ed :TcxCustomEdit);
  begin
    Application.MessageBox(PChar(mes), 'Ошибка', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
    ed.SetFocus;
    Result:=False;
  end;
begin
  Result:=true;
  if mmo_name.EditValue=null then begin
    Rez('Укажите наименование работ',txt_name);
    Exit;
  end;
  if Trim(txt_sname.Text) ='' then begin
    Rez('Укажите краткое наименование',txt_sname);
    Exit;
  end;
end;

procedure TLKTYPEForm.FillEdit;
begin
  if gFN(v1,'CODE')=null then Exit;
  with ds_LKType do begin
    mmo_name.EditValue:=FN('NAME').AsVariant;
    txt_sname.EditValue:=FN('SNAME').AsVariant;
    cbb_PNAME.ItemIndex:=FN('PTYPE').AsVariant;
  end;
end;

procedure TLKTYPEForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TLKTYPEForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  ReopenDS;
end;

procedure TLKTYPEForm.ReopenDS;
begin
  DSOptoins(ds_LKType,'','LKTYPE','CODE','LKTYPE_GEN');
end;

procedure TLKTYPEForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  FillEdit;
end;

procedure TLKTYPEForm.v1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if Self.FormStyle <> fsMDIChild then begin
    ModalResult:=mrOk;
  end;
end;

procedure TLKTYPEForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP :  FillEdit;
    VK_DOWN :  FillEdit;
  end;
end;

initialization
 RegisterClass(TLKTYPEForm);
end.
