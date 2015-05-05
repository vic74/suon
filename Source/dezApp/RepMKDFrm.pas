unit RepMKDFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, FIBDataSet, pFIBDataSet, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, StdCtrls, cxButtons, cxMaskEdit, cxTextEdit, cxDropDownEdit, dxmdaset,
  cxGridBandedTableView, cxGridDBBandedTableView, cxCurrencyEdit,
  dxLayoutControlAdapters, dxLayoutContainer, dxSkinDevExpressStyle;

type
  TRepMKDForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    gr1: TdxLayoutGroup;
    gr2: TdxLayoutGroup;
    cbb_m1: TcxComboBox;
    itm_m1: TdxLayoutItem;
    msk_y1: TcxMaskEdit;
    itm_y1: TdxLayoutItem;
    itm_m2: TdxLayoutItem;
    itm_y2: TdxLayoutItem;
    cbb_m2: TcxComboBox;
    msk_y2: TcxMaskEdit;
    btn_exec: TcxButton;
    itm_exec: TdxLayoutItem;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    ds_HMOVEIMMKD: TpFIBDataSet;
    src_HMOVEIMMKD: TDataSource;
    m1: TdxMemData;
    vb1: TcxGridDBBandedTableView;
    clvb1HOUSE: TcxGridDBBandedColumn;
    clvb1NOMER: TcxGridDBBandedColumn;
    clvb1SNAME: TcxGridDBBandedColumn;
    clvb1DU: TcxGridDBBandedColumn;
    clvb1DUNAME: TcxGridDBBandedColumn;
    clvb1DTYPE: TcxGridDBBandedColumn;
    clvb1DTNAME: TcxGridDBBandedColumn;
    clvb1RSUM10: TcxGridDBBandedColumn;
    clvb1RSUM11: TcxGridDBBandedColumn;
    clvb1RSUM12: TcxGridDBBandedColumn;
    clvb1RSUM13: TcxGridDBBandedColumn;
    clvb1RSUM15: TcxGridDBBandedColumn;
    clvb1ITOG: TcxGridDBBandedColumn;
    btn_Excel: TcxButton;
    LItemlc1Item1: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
    procedure btn_ExcelClick(Sender: TObject);
  private
    { Private declarations }
    procedure MakeData;
    function CheckParam: Boolean;
    procedure GetData(var d1, d2: Variant);
    procedure CreateMem;
    procedure AddTableData;
  public
    { Public declarations }
  end;

var
  RepMKDForm: TRepMKDForm;

implementation

uses AppUtils, cmDBUnit, cmUtils;

{$R *.dfm}

function TRepMKDForm.CheckParam: Boolean;
  procedure Rez(mes :string; ed :TcxCustomEdit);
  begin
    Application.MessageBox(PChar(mes), 'ќшибка', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
    ed.SetFocus;
    Result:=False;
  end;
begin
  Result:=true;
  if cbb_m1.ItemIndex<1 then begin
    Rez('”кажите начало периода!',cbb_m1);
    Exit;
  end;
  if msk_y1.Text='' then begin
    Rez('”кажите начало периода!',msk_y1);
    Exit;
  end;
  if cbb_m2.ItemIndex<1 then begin
    Rez('”кажите окончание периода!',cbb_m1);
    Exit;
  end;
  if msk_y2.Text='' then begin
    Rez('”кажите окончание периода!',msk_y1);
    Exit;
  end;
end;

procedure TRepMKDForm.CreateMem;
var
  i :Integer;
begin
 CreateField(m1,'HOUSE',ftInteger);
 CreateField(m1,'NOMER',ftString,32);
 CreateField(m1,'SNAME',ftString,128);
 CreateField(m1,'DU',ftInteger);
 CreateField(m1,'DUNAME',ftString,128);
 CreateField(m1,'DTYPE',ftInteger);
 CreateField(m1,'DTNAME',ftString,256);
 for i:=0 to 5 do begin
   if i<>4 then
   CreateField(m1,'RSUM1'+IntToStr(i),ftBCD);
 end;
 CreateField(m1,'ITOG',ftBCD);
 m1.Open;
end;

procedure TRepMKDForm.GetData(var d1, d2: Variant);
begin
  d1:=StrToDate('01.'+IntToStr(cbb_m1.ItemIndex)+'.'+msk_y1.Text);
  d2:=StrToDate('01.'+IntToStr(cbb_m2.ItemIndex)+'.'+msk_y2.Text);
end;

procedure TRepMKDForm.AddTableData;
var
  house :Variant;
  FName :string;
begin
  vb1.BeginUpdate;
  house:=null;
  try
    m1.Close; m1.Open;
    with ds_HMOVEIMMKD do
      while not Eof do begin
        FName:='RSUM1'+FN('DTYPE').AsString;
        if house<>FN('HOUSE').AsVariant then begin
          m1.Append;
          m1.FieldByName('HOUSE').AsVariant:=FN('HOUSE').AsVariant;
          m1.FieldByName('NOMER').AsVariant:=FN('NOMER').AsVariant;
          m1.FieldByName('SNAME').AsVariant:=FN('SNAME').AsVariant;
          m1.FieldByName('DU').AsVariant:=FN('DU').AsVariant;
          m1.FieldByName('DUNAME').AsVariant:=FN('DUNAME').AsVariant;
          m1.FieldByName('DTYPE').AsVariant:=FN('DTYPE').AsVariant;
          m1.FieldByName('DTNAME').AsVariant:=FN('DTNAME').AsVariant;
          m1.FieldByName(FName).AsCurrency:=FN('RSUM1').AsCurrency;
          //
          m1.FieldByName('ITOG').AsCurrency:=FN('RSUM1').AsCurrency;
          m1.Post;
        end else begin
          m1.Edit;
          m1.FieldByName(FName).AsCurrency:=m1.FieldByName(FName).AsCurrency+
                                                          FN('RSUM1').AsCurrency;
          m1.FieldByName('ITOG').AsCurrency:=m1.FieldByName('ITOG').AsCurrency+
                                                          FN('RSUM1').AsCurrency;
          m1.Post;
        end;
        house:=FN('HOUSE').AsVariant;
        Next;
      end;

  finally
    vb1.EndUpdate;
    vb1.ViewData.Expand(true);
  end;
end;

procedure TRepMKDForm.btn_ExcelClick(Sender: TObject);
begin
  AppUtils.SimpleExportInExcel(grd1);
end;

procedure TRepMKDForm.btn_execClick(Sender: TObject);
begin
  makedata;
end;

procedure TRepMKDForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TRepMKDForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  CreateMem;
end;


procedure TRepMKDForm.MakeData;
var
  d1, d2: Variant;
begin
  GetData(d1,d2);
  with ds_HMOVEIMMKD do begin
    Close;
    if not CheckParam then begin
      //очищаем временную таблицу
      Exit;
    end;
    MainWhereClause:='hm.data between :d1 and :d2';
    ParamByName('d1').AsVariant:=d1;
    ParamByName('d2').AsVariant:=d2;
    GroupByClause:='hm.HOUSE,h.du, s.name,h.nomer, du.name,hm.DTYPE,dt.name';
    Open;
    AddTableData;
  end;
end;

initialization
 RegisterClass(TRepMKDForm);
end.
