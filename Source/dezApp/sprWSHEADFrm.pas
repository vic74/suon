unit sprWSHEADFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, dxLayoutControl,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, FIBDataSet, pFIBDataSet,
  dxLayoutLookAndFeels, dxLayoutcxEditAdapters, cxContainer, Menus, StdCtrls,
  cxButtons, cxMaskEdit, cxSpinEdit, cxTextEdit, cxDropDownEdit, cxLookupEdit,
  BaseForm,
  cxDBLookupEdit, cxDBLookupComboBox, dxLayoutContainer, dxLayoutControlAdapters,
  dxSkinDevExpressStyle;

type
  TsprWSHEADForm = class(TDezModalForm)
    gr1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    grlc1Group1: TdxLayoutGroup;
    grlc1Group2: TdxLayoutGroup;
    spl1: TdxLayoutSplitterItem;
    ds_WSHEAD: TpFIBDataSet;
    src_WSHEAD: TDataSource;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    clv1CODE: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    ds_WSSPEC: TpFIBDataSet;
    src_WSSPEC: TDataSource;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_grd2: TdxLayoutItem;
    clv2CODE: TcxGridDBColumn;
    clv2WNOTE: TcxGridDBColumn;
    clv2ED: TcxGridDBColumn;
    clv2WSHEAD: TcxGridDBColumn;
    clv1NUM: TcxGridDBColumn;
    clv2NUM: TcxGridDBColumn;
    grlc1Group3: TdxLayoutGroup;
    grlc1Group4: TdxLayoutGroup;
    txt_gName: TcxTextEdit;
    itmlc1Item1: TdxLayoutItem;
    spin_num: TcxSpinEdit;
    itmlc1Item11: TdxLayoutItem;
    btn_gadd: TcxButton;
    itmlc1Item12: TdxLayoutItem;
    btn_edit: TcxButton;
    itmlc1Item13: TdxLayoutItem;
    grlc1Group5: TdxLayoutGroup;
    btn_del: TcxButton;
    itmlc1Item14: TdxLayoutItem;
    spin1: TcxSpinEdit;
    itmlc1Item15: TdxLayoutItem;
    txt_descr: TcxTextEdit;
    itmlc1Item16: TdxLayoutItem;
    txt_ed: TcxTextEdit;
    itmlc1Item17: TdxLayoutItem;
    grlc1Group6: TdxLayoutGroup;
    grlc1Group7: TdxLayoutGroup;
    btn_add: TcxButton;
    itmlc1Item18: TdxLayoutItem;
    btn_edt: TcxButton;
    itmlc1Item19: TdxLayoutItem;
    grlc1Group8: TdxLayoutGroup;
    btn_delete: TcxButton;
    itmlc1Item110: TdxLayoutItem;
    clv1WTYPE: TcxGridDBColumn;
    clv1WTNAME: TcxGridDBColumn;
    cbb_type: TcxLookupComboBox;
    itmlc1Item111: TdxLayoutItem;
    ds_WSHEADTYPE: TpFIBDataSet;
    src_WSHEADTYPE: TDataSource;
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ds_WSSPECBeforePost(DataSet: TDataSet);
    procedure v1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_gaddClick(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure btn_delClick(Sender: TObject);
    procedure btn_addClick(Sender: TObject);
    procedure btn_edtClick(Sender: TObject);
    procedure btn_deleteClick(Sender: TObject);
    procedure v2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDS;
    procedure reOpenWSSPEC;
    procedure reOpends_WSHEAD;
    procedure GAdd(isEdit: boolean);
    function gParamChecked :Boolean;
    procedure  FillGroop;
    procedure WAdd(isEdit :Boolean);
    procedure FillEdit;
    function CheckParams :boolean;
  public
    { Public declarations }
    code, ftype :Variant;
  end;

var
  sprWSHEADForm: TsprWSHEADForm;

implementation

uses cmDBUnit, AppUtils;

{$R *.dfm}

procedure TsprWSHEADForm.btn_addClick(Sender: TObject);
begin
  WAdd(false);
end;

procedure TsprWSHEADForm.btn_delClick(Sender: TObject);
begin
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Предупреждение', MB_OKCANCEL + MB_ICONWARNING + MB_DEFBUTTON2 +
    MB_TOPMOST) = IDOK then
  begin
    ds_WSHEAD.Delete;
  end;
end;

procedure TsprWSHEADForm.btn_deleteClick(Sender: TObject);
begin
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Предупреждение', MB_OKCANCEL + MB_ICONWARNING + MB_DEFBUTTON2 +
    MB_TOPMOST) = IDOK then
  begin
    ds_WSSPEC.Delete;
  end;
end;

procedure TsprWSHEADForm.btn_editClick(Sender: TObject);
begin
  GAdd(true);
end;

procedure TsprWSHEADForm.btn_edtClick(Sender: TObject);
begin
  WAdd(true);
end;

procedure TsprWSHEADForm.btn_gaddClick(Sender: TObject);
begin
  GAdd(false);
end;

function TsprWSHEADForm.CheckParams: boolean;
begin
  Result:=true;
  if (txt_descr.EditValue=null) or (spin1.EditValue=null) or
      (txt_ed.EditValue=null) then
  begin
    Application.MessageBox('Заполнены не все параметры!', 'Ошибка', MB_OK +
      MB_ICONSTOP + MB_DEFBUTTON2 + MB_TOPMOST);
    Result:=false;
    Exit;
  end;
end;

procedure TsprWSHEADForm.ds_WSSPECBeforePost(DataSet: TDataSet);
begin
  ds_WSSPEC.FN('WSHEAD').AsVariant:=gFN(v1,'CODE');
end;

procedure TsprWSHEADForm.FillEdit;
begin
    txt_descr.EditValue:=ds_WSSPEC.FN('WNOTE').AsVariant;
    spin1.EditValue:=ds_WSSPEC.FN('NUM').AsVariant;
    txt_ed.EditValue:=ds_WSSPEC.FN('ED').AsVariant;
end;

procedure TsprWSHEADForm.FillGroop;
begin
  spin_num.EditValue:=ds_WSHEAD.FN('NUM').AsVariant;
  txt_gName.EditValue:=ds_WSHEAD.FN('NAME').AsVariant;
  cbb_type.EditValue:=ds_WSHEAD.FN('WTYPE').AsVariant;
end;

procedure TsprWSHEADForm.FormShow(Sender: TObject);
begin
  OpenDS;
end;

procedure TsprWSHEADForm.GAdd(isEdit: boolean);
begin
  if not gParamChecked then Exit;
  with ds_WSHEAD do begin
    if isEdit then Edit else
    Append;
    FN('NUM').AsVariant := spin_num.EditValue;
    FN('NAME').AsVariant := txt_gName.EditValue;
    FN('WTYPE').AsVariant := cbb_type.EditValue;
    Post;
  end;
end;

function TsprWSHEADForm.gParamChecked: Boolean;
begin
  Result:=true;
  if spin_num.EditValue=null then
  begin
    spin_num.SetFocus;
    Result:=false;
    Exit;
  end;
  if txt_gName.EditValue=null then
  begin
    txt_gName.SetFocus;
    Result:=false;
    Exit;
  end;
end;

procedure TsprWSHEADForm.OpenDS;
begin
  ds_WSHEADTYPE.open;
  DSOptoins(ds_WSHEAD,'','WSHEAD','CODE','WSHEAD_GEN',false);
  reOpends_WSHEAD;
  DSOptoins(ds_WSSPEC,'','WSSPEC','CODE','WSSPEC_GEN',false);
  reOpenWSSPEC;
end;

procedure TsprWSHEADForm.reOpends_WSHEAD;
begin
  with ds_WSHEAD do begin
    Close;
    if ftype<>0 then begin
      MainWhereClause:='WH.WTYPE=:wtype';
      ParamByName('wtype').AsVariant:=ftype;
    end;
    Open;
  end;
end;

procedure TsprWSHEADForm.reOpenWSSPEC;
begin
  with ds_WSSPEC do begin
    Close;
    MainWhereClause:='WSHEAD=:W';
    ParamByName('W').AsVariant:=gFN(v1,'CODE');
    Open;
  end;
  FillGroop;
end;

procedure TsprWSHEADForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  reOpenWSSPEC;
end;

procedure TsprWSHEADForm.v1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  code:=gFN(v1,'CODE');
  ModalResult:=mrOk;
end;

procedure TsprWSHEADForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP :reOpenWSSPEC;
    VK_DOWN :reOpenWSSPEC;
  end;
end;

procedure TsprWSHEADForm.v2CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  FillEdit;
end;

procedure TsprWSHEADForm.v2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP :FillEdit;
    VK_DOWN :FillEdit;
  end;
end;

procedure TsprWSHEADForm.WAdd(isEdit: Boolean);
begin
  if not CheckParams then exit;
  with ds_WSSPEC do begin
    if isEdit then Edit else
    Append;
    if not isEdit then
    FN('WSHEAD').AsVariant := gFN(v1,'CODE');
    FN('WNOTE').AsVariant := txt_descr.EditValue;
    FN('ED').AsVariant :=txt_ed.EditValue;
    FN('NUM').AsVariant := spin1.EditValue;
    Post;
  end;
end;

end.
