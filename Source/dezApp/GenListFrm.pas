unit GenListFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxLayoutcxEditAdapters, cxContainer, Menus, StdCtrls, cxButtons, cxSpinEdit,
  cxMaskEdit, cxTextEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, FIBDataSet,
  pFIBDataSet, dxLayoutControlAdapters, dxLayoutContainer, dxSkinDevExpressStyle;

type
  TGenListForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grlc1Group1: TdxLayoutGroup;
    grlc1Group2: TdxLayoutGroup;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    txt_name: TcxTextEdit;
    itm_name: TdxLayoutItem;
    m_pref: TcxMaskEdit;
    itm_pref: TdxLayoutItem;
    spin_num: TcxSpinEdit;
    itm_num: TdxLayoutItem;
    spin_Len: TcxSpinEdit;
    itm_len: TdxLayoutItem;
    grlc1Group4: TdxLayoutGroup;
    btn_add: TcxButton;
    itm_add: TdxLayoutItem;
    btn_edit: TcxButton;
    itm_edit: TdxLayoutItem;
    grlc1Group5: TdxLayoutGroup;
    grlc1Group3: TdxLayoutGroup;
    btn_del: TcxButton;
    itm_del: TdxLayoutItem;
    ds_GENLIST: TpFIBDataSet;
    src_GENLIST: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    clv1PREF: TcxGridDBColumn;
    clv1NUM: TcxGridDBColumn;
    clv1LEN: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_addClick(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_editClick(Sender: TObject);
    procedure btn_delClick(Sender: TObject);
  private
    { Private declarations }
    procedure prepareDS;
    procedure AddRec(isEdit :Boolean =false);
    function CheckParam :Boolean;
    procedure FillControls;
  public
    { Public declarations }
  end;

var
  GenListForm: TGenListForm;

implementation

uses AppUtils, cmDBUnit, cmUtils;

{$R *.dfm}

procedure TGenListForm.AddRec(isEdit: Boolean);
begin
  if not CheckParam then exit;
  with ds_GENLIST do begin
    if isEdit then Edit else
    Append;
      FN('NAME').AsVariant:=txt_name.EditValue;
      FN('PREF').AsVariant:=m_pref.EditValue;
      FN('NUM').AsVariant:=spin_num.EditValue;
      FN('LEN').AsVariant:=spin_Len.EditValue;
    Post;
  end;
end;

procedure TGenListForm.btn_addClick(Sender: TObject);
begin
  AddRec;
end;

procedure TGenListForm.btn_delClick(Sender: TObject);
begin
  if gFN(v1,'CODE')=null then Exit;
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Предупреждение', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST)
    = IDYES then
  begin
    ds_GENLIST.Delete;
  end;
end;

procedure TGenListForm.btn_editClick(Sender: TObject);
begin
  AddRec(true);
end;

function TGenListForm.CheckParam: Boolean;
  procedure Rez(mes :string; ed :TcxCustomEdit);
  begin
    Application.MessageBox(PChar(mes), 'Ошибка', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
    ed.SetFocus;
    Result:=False;
  end;
begin
  Result := true;
  if txt_name.EditValue = null then
  begin
    Rez('Заполните описание генератора!',  txt_name);
    Exit;
  end;
  if spin_num.EditValue=null then
  begin
    Rez('Нумератор не может быть пустым!',  spin_num);
    Exit;
  end;
end;

procedure TGenListForm.FillControls;
begin
  with ds_GENLIST do begin
    txt_name.EditValue:=FN('NAME').AsVariant;
    m_pref.EditValue:=FN('PREF').AsVariant;
    spin_num.EditValue:=FN('NUM').AsVariant;
    spin_Len.EditValue:=FN('LEN').AsVariant;
  end;
end;

procedure TGenListForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TGenListForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  prepareDS;
end;


procedure TGenListForm.prepareDS;
begin
  DSOptoins(ds_GENLIST,'','GENLIST','CODE','GENLIST_GEN');
end;

procedure TGenListForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  FillControls;
end;

procedure TGenListForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP :FillControls;
    VK_DOWN :FillControls;
  end;
end;

initialization
 RegisterClass(TGenListForm);
end.
