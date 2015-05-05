unit CashFlowsFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridLevel, cxGrid,
  dxLayoutcxEditAdapters, cxContainer, Menus, StdCtrls, cxButtons, cxMaskEdit,
  cxTextEdit, cxDropDownEdit, dxmdaset, FIBDataSet, pFIBDataSet, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, dxLayoutControlAdapters,
  dxLayoutContainer, cxCurrencyEdit, dxSkinDevExpressStyle;

type
  TCashFlowsForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    vb1: TcxGridDBBandedTableView;
    gr1: TdxLayoutGroup;
    cbb_m1: TcxComboBox;
    itm_m1: TdxLayoutItem;
    msk_y1: TcxMaskEdit;
    itm_Y1: TdxLayoutItem;
    cbb_m2: TcxComboBox;
    itm_m2: TdxLayoutItem;
    msk_y2: TcxMaskEdit;
    itm_Y2: TdxLayoutItem;
    btn_exec: TcxButton;
    itm_exec: TdxLayoutItem;
    ds_HMOVEIMMKD: TpFIBDataSet;
    src_HMOVEIMMKD: TDataSource;
    m1: TdxMemData;
    clvb1HOUSE: TcxGridDBBandedColumn;
    clvb1NOMER: TcxGridDBBandedColumn;
    clvb1SNAME: TcxGridDBBandedColumn;
    clvb1ARENDATOR: TcxGridDBBandedColumn;
    clvb1ARNAME: TcxGridDBBandedColumn;
    clvb1DTYPE: TcxGridDBBandedColumn;
    clvb1DTNAME: TcxGridDBBandedColumn;
    clvb1SALDO: TcxGridDBBandedColumn;
    clvb1PSUM: TcxGridDBBandedColumn;
    clvb1RSUM: TcxGridDBBandedColumn;
    clvb1SALDO_END: TcxGridDBBandedColumn;
    ds_AGROUP: TpFIBDataSet;
    src_AGROUP: TDataSource;
    cbb_agroup: TcxLookupComboBox;
    itm_agroup: TdxLayoutItem;
    cbb_street: TcxLookupComboBox;
    itm_street: TdxLayoutItem;
    gr2: TdxLayoutGroup;
    cbb_house: TcxLookupComboBox;
    itm_house: TdxLayoutItem;
    ds_house: TpFIBDataSet;
    src_house: TDataSource;
    ds_street: TpFIBDataSet;
    src_street: TDataSource;
    btn_shClear: TcxButton;
    itm_shClear: TdxLayoutItem;
    btn_grClear: TcxButton;
    itm_grClear: TdxLayoutItem;
    chk_1c: TcxCheckBox;
    itm_1c: TdxLayoutItem;
    btn_Excek: TcxButton;
    LItemlc1Item1: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
    procedure cbb_streetPropertiesEditValueChanged(Sender: TObject);
    procedure btn_shClearClick(Sender: TObject);
    procedure btn_grClearClick(Sender: TObject);
    procedure btn_ExcekClick(Sender: TObject);
  private
    { Private declarations }
    procedure CreateMem;
    procedure MakeData;
    procedure GetData(var d1, d2: Variant);
    procedure AddTableData;
    procedure OpenDS;
    procedure HouseOpen;
    function CheckParam :Boolean;
  public
    { Public declarations }
  end;

var
  CashFlowsForm: TCashFlowsForm;

implementation

uses AppUtils, cmDBUnit, cmUtils;

{$R *.dfm}

procedure TCashFlowsForm.btn_ExcekClick(Sender: TObject);
begin
  AppUtils.SimpleExportInExcel(grd1);
end;

procedure TCashFlowsForm.btn_execClick(Sender: TObject);
begin
  MakeData;
end;

procedure TCashFlowsForm.btn_grClearClick(Sender: TObject);
begin
  cbb_agroup.EditValue:=null;
end;

procedure TCashFlowsForm.btn_shClearClick(Sender: TObject);
begin
  cbb_street.EditValue:=null;
  cbb_house.EditValue:=null;
end;

procedure TCashFlowsForm.cbb_streetPropertiesEditValueChanged(Sender: TObject);
begin
  HouseOpen;
end;

function TCashFlowsForm.CheckParam: Boolean;
  procedure Rez(mes :string; ed :TcxCustomEdit);
  begin
    Application.MessageBox(PChar(mes), 'Ошибка', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
    ed.SetFocus;
    Result:=False;
  end;
begin
  Result:=true;
  if cbb_m1.ItemIndex<1 then begin
    Rez('Укажите начало периода!',cbb_m1);
    Exit;
  end;
  if msk_y1.Text='' then begin
    Rez('Укажите начало периода!',msk_y1);
    Exit;
  end;
  if cbb_m2.ItemIndex<1 then begin
    Rez('Укажите окончание периода!',cbb_m1);
    Exit;
  end;
  if msk_y2.Text='' then begin
    Rez('Укажите окончание периода!',msk_y1);
    Exit;
  end;
end;

procedure TCashFlowsForm.CreateMem;
begin
  CreateField(m1,'HOUSE',ftInteger);
  CreateField(m1,'NOMER',ftString,32);
  CreateField(m1,'SNAME',ftString,128);
  CreateField(m1,'ARENDATOR',ftInteger);
  CreateField(m1,'ARNAME',ftString,256);
  CreateField(m1,'DTYPE',ftInteger);
  CreateField(m1,'DTNAME',ftString,256);
  CreateField(m1,'SALDO',ftBCD);
  CreateField(m1,'PSUM',ftBCD);
  CreateField(m1,'RSUM',ftBCD);
  CreateField(m1,'SALDO_END',ftBCD);
  m1.Open;
end;

procedure TCashFlowsForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TCashFlowsForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  CreateMem;
  OpenDS;
end;

procedure TCashFlowsForm.GetData(var d1, d2: Variant);
begin
  d1:=StrToDate('01.'+IntToStr(cbb_m1.ItemIndex)+'.'+msk_y1.Text);
  d2:=StrToDate('01.'+IntToStr(cbb_m2.ItemIndex)+'.'+msk_y2.Text);
end;

procedure TCashFlowsForm.HouseOpen;
begin
  with ds_house do
  begin
    Close;
    if cbb_street.EditValue=null then Exit;
    MainWhereClause:='street =:st';
    ParamByName('st').AsVariant:=cbb_street.EditValue;
    OrderClause:='nomer';
    Open;
  end;
end;

procedure TCashFlowsForm.MakeData;
var
  d1, d2 :Variant;
  group, house, street :Variant;
  clause :string;
  i :Integer;
  function CreateClause :string;
  begin
    Result:='';
    if group<>null then
    Result:=' and a.agroup =:gr';
    if house<>null then begin
      Result:=Result+' and hm.HOUSE=:house';
      Exit;
    end;
    if street<>null then
    Result:=Result+' and h.street=:street';
  end;
begin
  if not CheckParam then Exit;
  GetData(d1,d2);
  group:=cbb_agroup.EditValue;
  house:=cbb_house.EditValue;
  street:=cbb_street.EditValue;
  clause:=CreateClause;
  with ds_HMOVEIMMKD do begin
    Close;
    MainWhereClause:='hm.DATA between :d1 and :d2'+clause;
      ParamByName('d1').AsVariant:=d1;
      ParamByName('d2').AsVariant:=d2;
      if ParamExist('gr',i) then
      ParamByName('gr').AsVariant:=group;
      if ParamExist('house',i) then
      ParamByName('house').AsVariant:=house;
      if ParamExist('street',i) then
      ParamByName('street').AsVariant:=street;
      GroupByClause:='hm.HOUSE,h.nomer, s.name,hm.ARENDATOR,hm.DATA,hm.DTYPE,6,7,8';
    Open;
    AddTableData;
  end;
end;

procedure TCashFlowsForm.OpenDS;
begin
  ds_AGROUP.CloseOpen(false);
  ds_street.CloseOpen(false);
end;

procedure TCashFlowsForm.AddTableData;
var
  data, house, arendator :Variant;
begin
  vb1.BeginUpdate;
  m1.Close; m1.Open;
  with ds_HMOVEIMMKD do
  while not Eof do begin
    if (house<>FN('HOUSE').AsVariant) or (arendator<>FN('ARENDATOR').AsVariant) then
    begin
      data:=FN('DATA').AsVariant;
      m1.Append;
      m1.FieldByName('HOUSE').AsVariant:=FN('HOUSE').AsVariant;
      m1.FieldByName('NOMER').AsVariant:=FN('NOMER').AsVariant;
      m1.FieldByName('SNAME').AsVariant:=FN('SNAME').AsVariant;
      m1.FieldByName('ARENDATOR').AsVariant:=FN('ARENDATOR').AsVariant;
      m1.FieldByName('ARNAME').AsVariant:=FN('ARNAME').AsVariant;
      m1.FieldByName('DTYPE').AsVariant:=FN('DTYPE').AsVariant;
      m1.FieldByName('DTNAME').AsVariant:=FN('DTNAME').AsVariant;
      if chk_1c.Checked then begin
        m1.FieldByName('SALDO').AsCurrency:= FN('SALDO').AsCurrency;
        m1.FieldByName('PSUM').AsCurrency:= FN('PSUM').AsCurrency;
        m1.FieldByName('RSUM').AsCurrency:= FN('RSUM').AsCurrency;
        m1.FieldByName('SALDO_END').AsCurrency:=
        FN('SALDO').AsCurrency+FN('PSUM').AsCurrency-FN('RSUM').AsCurrency;
      end else begin
        m1.FieldByName('SALDO').AsCurrency:= FN('SALDO1').AsCurrency;
        m1.FieldByName('PSUM').AsCurrency:= FN('PSUM1').AsCurrency;
        m1.FieldByName('RSUM').AsCurrency:= FN('RSUM1').AsCurrency;
        m1.FieldByName('SALDO_END').AsCurrency:=
        FN('SALDO1').AsCurrency+FN('PSUM1').AsCurrency-FN('RSUM1').AsCurrency;
      end;
      m1.Post;
      house:=FN('HOUSE').AsVariant;
      arendator:=FN('ARENDATOR').AsVariant;
    end else
    begin
      if data<>FN('DATA').AsVariant then
      begin
        m1.edit;
        if chk_1c.Checked then begin
          m1.FieldByName('PSUM').AsCurrency:=
            m1.FieldByName('PSUM').AsCurrency+FN('PSUM').AsCurrency;
          m1.FieldByName('RSUM').AsCurrency:=
            m1.FieldByName('RSUM').AsCurrency + FN('RSUM').AsCurrency;
          m1.FieldByName('SALDO_END').AsCurrency:=
            m1.FieldByName('SALDO_END').AsCurrency +
            (FN('PSUM').AsCurrency-FN('RSUM').AsCurrency);
        end else begin
          m1.FieldByName('PSUM').AsCurrency:=
            m1.FieldByName('PSUM').AsCurrency+FN('PSUM1').AsCurrency;
          m1.FieldByName('RSUM').AsCurrency:=
            m1.FieldByName('RSUM').AsCurrency + FN('RSUM1').AsCurrency;
          m1.FieldByName('SALDO_END').AsCurrency:=
            m1.FieldByName('SALDO_END').AsCurrency +
            (FN('PSUM1').AsCurrency-FN('RSUM1').AsCurrency);
        end;
        m1.Post;
      end else
      begin
        m1.edit;
        if chk_1c.Checked then begin
          m1.FieldByName('SALDO').AsCurrency:=
          m1.FieldByName('SALDO').AsCurrency+FN('SALDO').AsCurrency;
          m1.FieldByName('PSUM').AsCurrency:=
            m1.FieldByName('PSUM').AsCurrency+FN('PSUM').AsCurrency;
          m1.FieldByName('RSUM').AsCurrency:=
            m1.FieldByName('RSUM').AsCurrency + FN('RSUM').AsCurrency;
          m1.FieldByName('SALDO_END').AsCurrency:=
            m1.FieldByName('SALDO_END').AsCurrency +
            (FN('SALDO').AsCurrency+FN('PSUM').AsCurrency-FN('RSUM').AsCurrency);
        end else begin
          m1.FieldByName('SALDO').AsCurrency:=
          m1.FieldByName('SALDO').AsCurrency+FN('SALDO1').AsCurrency;
          m1.FieldByName('PSUM').AsCurrency:=
            m1.FieldByName('PSUM').AsCurrency+FN('PSUM1').AsCurrency;
          m1.FieldByName('RSUM').AsCurrency:=
            m1.FieldByName('RSUM').AsCurrency + FN('RSUM1').AsCurrency;
          m1.FieldByName('SALDO_END').AsCurrency:=
            m1.FieldByName('SALDO_END').AsCurrency +
            (FN('SALDO1').AsCurrency+FN('PSUM1').AsCurrency-FN('RSUM1').AsCurrency);
        end;
        m1.Post;
      end;
      house:=FN('HOUSE').AsVariant;
      arendator:=FN('ARENDATOR').AsVariant;
    end;
    Next;
  end;
  vb1.EndUpdate;
end;


initialization
 RegisterClass(TCashFlowsForm);
end.
