unit LKShablonFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FIBDataSet, pFIBDataSet,
  dxLayoutcxEditAdapters, cxContainer, dxSkinsdxBarPainter, cxSpinEdit,
  cxCheckBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxMaskEdit, cxCalendar, dxBar, cxTextEdit, Menus, StdCtrls, cxButtons,
  dxLayoutContainer, dxLayoutControlAdapters, dxSkinDevExpressStyle,
  Vcl.ComCtrls, dxCore, cxDateUtils;

type
  TLKShablonForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grlc1Group1: TdxLayoutGroup;
    grlc1Group2: TdxLayoutGroup;
    spl1: TdxLayoutSplitterItem;
    grlc1Group3: TdxLayoutGroup;
    grlc1Group4: TdxLayoutGroup;
    grlc1Group5: TdxLayoutGroup;
    grlc1Group6: TdxLayoutGroup;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_grd2: TdxLayoutItem;
    ds_LKSHB: TpFIBDataSet;
    ds_LKSHABLON: TpFIBDataSet;
    src_LKSHABLON: TDataSource;
    src_LKSHB: TDataSource;
    clv2CODE: TcxGridDBColumn;
    clv2DATA: TcxGridDBColumn;
    clv2LKSHB: TcxGridDBColumn;
    clv2LKTYPE: TcxGridDBColumn;
    clv2ALLP: TcxGridDBColumn;
    clv2P1: TcxGridDBColumn;
    clv2P2: TcxGridDBColumn;
    clv1CODE: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    txt_shname: TcxTextEdit;
    itm_shname: TdxLayoutItem;
    brm1: TdxBarManager;
    bar1: TdxBar;
    doc1: TdxBarDockControl;
    itm_doc1: TdxLayoutItem;
    btn_shAdd: TdxBarButton;
    btn_shEdit: TdxBarButton;
    btn_shDel: TdxBarButton;
    clv2LTNAME: TcxGridDBColumn;
    dt1: TcxDateEdit;
    itm_dt1: TdxLayoutItem;
    cbb_LKType: TcxLookupComboBox;
    itm_LKType: TdxLayoutItem;
    chk_AllP: TcxCheckBox;
    itm_AllP: TdxLayoutItem;
    grlc1Group7: TdxLayoutGroup;
    spin_P1: TcxSpinEdit;
    itm_P1: TdxLayoutItem;
    spin_P2: TcxSpinEdit;
    itm_P2: TdxLayoutItem;
    grlc1Group8: TdxLayoutGroup;
    doc2: TdxBarDockControl;
    itm_doc2: TdxLayoutItem;
    bar2: TdxBar;
    btn_lAdd: TdxBarButton;
    btn_lEdit: TdxBarButton;
    btn_lDel: TdxBarButton;
    btn_spr: TcxButton;
    itm_spr: TdxLayoutItem;
    grlc1Group9: TdxLayoutGroup;
    ds_LKTYPE: TpFIBDataSet;
    src_LKTYPE: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_shAddClick(Sender: TObject);
    procedure btn_shEditClick(Sender: TObject);
    procedure btn_shDelClick(Sender: TObject);
    procedure btn_lAddClick(Sender: TObject);
    procedure btn_lEditClick(Sender: TObject);
    procedure btn_lDelClick(Sender: TObject);
    procedure chk_AllPPropertiesEditValueChanged(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_sprClick(Sender: TObject);
  private
    { Private declarations }
    procedure PrepareDS;
    procedure AddHeader(isEdit :boolean=false);
    procedure AddShablon(isEdit :boolean=False);
    function CheckParams :boolean;
    procedure FillHeader;
    procedure FillShablon;
  public
    { Public declarations }
  end;

var
  LKShablonForm: TLKShablonForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, LKTYPEFrm;

{$R *.dfm}

procedure TLKShablonForm.AddHeader(isEdit :boolean=false);
begin
  if Trim(txt_shname.Text) ='' then Exit;
  with ds_LKSHB do begin
    if isEdit then Edit else
    Append;
    FN('NAME').AsVariant:=Trim(txt_shname.Text);
    Post;
  end;
end;

procedure TLKShablonForm.AddShablon(isEdit: boolean);
begin
  if not CheckParams then Exit;
  with ds_LKSHABLON do begin
    if isEdit then Edit else
    Append;
    FN('DATA').AsVariant:=dt1.EditValue;
    FN('LKSHB').AsVariant:=gFN(v1,'CODE');
    FN('LKTYPE').AsVariant:=cbb_LKType.EditValue;
    FN('ALLP').AsVariant:=Integer(chk_AllP.Checked);
    FN('P1').AsVariant:=spin_P1.EditValue;
    FN('P2').AsVariant:=spin_P2.EditValue;
    Post;
  end;
end;

procedure TLKShablonForm.btn_lAddClick(Sender: TObject);
begin
  AddShablon;
end;

procedure TLKShablonForm.btn_lDelClick(Sender: TObject);
begin
  if Application.MessageBox('Вы действительно хотите удалитьзапись?',
    'Предупреждение', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST)
    = IDYES then
  begin
    ds_LKSHABLON.Delete;
  end;
end;

procedure TLKShablonForm.btn_lEditClick(Sender: TObject);
begin
  AddShablon(True);
end;

procedure TLKShablonForm.btn_shAddClick(Sender: TObject);
begin
  AddHeader;
end;

procedure TLKShablonForm.btn_shDelClick(Sender: TObject);
begin
  if Application.MessageBox('Вы действительно хотите удалить шаблон' + #13#10
    + '  и все записи связанные с ним?', 'Предупреждение', MB_YESNO +
    MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST) = IDYES then
  begin
    ds_LKSHB.Delete;
  end;
end;

procedure TLKShablonForm.btn_shEditClick(Sender: TObject);
begin
  AddHeader(true);
end;

procedure TLKShablonForm.btn_sprClick(Sender: TObject);
var
  F :TLKTYPEForm;
begin
  F:=TLKTYPEForm.CreateModal(self);
  try
    if F.ShowModal=mrOk then
    cbb_LKType.EditValue:=F.v1.GetColumnByFieldName('CODE').EditValue;
  finally
    F.Free;
  end;
end;

function TLKShablonForm.CheckParams: boolean;
  procedure Rez(mes :string; ed :TcxCustomEdit);
  begin
    Application.MessageBox(PChar(mes), 'Ошибка', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
    ed.SetFocus;
    Result:=False;
  end;
begin
  Result:=true;
  if dt1.EditValue=null then begin
    Rez('Укажите дату!',dt1);
    Exit;
  end;
  if cbb_LKType.EditValue=null then begin
    Rez('Укажите вид уборки!',cbb_LKType);
    Exit;
  end;
  if not chk_AllP.Checked then begin
    if (spin_P1.EditValue=null) or (spin_P2.EditValue=null) then begin
      Rez('Укажите подъезды',spin_P1);
      Exit;
    end;
  end;
end;

procedure TLKShablonForm.chk_AllPPropertiesEditValueChanged(Sender: TObject);
begin
    spin_P1.Properties.ReadOnly:= chk_AllP.Checked;
    spin_P2.Properties.ReadOnly:= chk_AllP.Checked;
    if chk_AllP.Checked then begin
      spin_P1.EditValue:=null;
      spin_P2.EditValue:=null;
    end;
end;

procedure TLKShablonForm.FillHeader;
begin
  if gFN(v1,'CODE')=null then Exit;
  txt_shname.Text:=gFN(v1,'NAME');
end;

procedure TLKShablonForm.FillShablon;
begin
  if gFN(v2,'CODE')=null then Exit;
  with ds_LKSHABLON do begin
    dt1.EditValue:=FN('DATA').AsVariant;
    chk_AllP.Checked:=FN('AllP').AsVariant;
    cbb_LKType.EditValue:=FN('LKType').AsVariant;
    spin_P1.EditValue:=FN('P1').AsVariant;
    spin_P2.EditValue:=FN('P2').AsVariant;
  end;
end;

procedure TLKShablonForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TLKShablonForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  PrepareDS;
end;

procedure TLKShablonForm.PrepareDS;
begin
  ds_LKTYPE.Open;
  DSOptoins(ds_LKSHB,'','LKSHB','CODE','LKSHB_GEN');
  DSOptoins(ds_LKSHABLON,'','LKSHABLON','CODE','LKSHABLON_GEN');
end;

procedure TLKShablonForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  FillHeader;
end;

procedure TLKShablonForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP :FillHeader;
    VK_DOWN :FillHeader;
  end;
end;

procedure TLKShablonForm.v2CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  FillShablon;
end;

procedure TLKShablonForm.v2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP :FillShablon;
    VK_DOWN :FillShablon;
  end;
end;

initialization
 RegisterClass(TLKShablonForm);
end.
