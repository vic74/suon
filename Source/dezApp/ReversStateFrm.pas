unit ReversStateFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  DateUtils, FIBQuery, pFIBCacheQueries, pFIBProps,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridLevel, cxGrid,
  dxLayoutcxEditAdapters, cxContainer, Menus, FIBDataSet, pFIBDataSet, StdCtrls,
  cxButtons, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit,
  cxTextEdit, cxDropDownEdit, dxmdaset, cxCheckBox, cxCurrencyEdit,
  dxLayoutControlAdapters, dxLayoutContainer, EXLReportExcelTLB, EXLReportBand,
  EXLReport, dxSkinDevExpressStyle, cxNavigator, cxEditRepositoryItems,
  dxSkinsdxBarPainter, dxBar, cxBarEditItem;

type
  TReversStateForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    vb1: TcxGridDBBandedTableView;
    grlc1Group1: TdxLayoutGroup;
    cbb_m1: TcxComboBox;
    itm_m1: TdxLayoutItem;
    cbb_m2: TcxComboBox;
    itm_m2: TdxLayoutItem;
    msk_y2: TcxMaskEdit;
    itm_y2: TdxLayoutItem;
    cbb_Dtype: TcxLookupComboBox;
    itm_DType: TdxLayoutItem;
    btn_exec: TcxButton;
    itm_exec: TdxLayoutItem;
    ds_DOGIMMKD_TYPE: TpFIBDataSet;
    src_DOGIMMKD_TYPE: TDataSource;
    ds_HMOVEIMMKD: TpFIBDataSet;
    md1: TdxMemData;
    src_md1: TDataSource;
    clvb1HOUSE: TcxGridDBBandedColumn;
    clvb1SNAME: TcxGridDBBandedColumn;
    clvb1NOMER: TcxGridDBBandedColumn;
    clvb1SALDO0: TcxGridDBBandedColumn;
    clvb1PSUM0: TcxGridDBBandedColumn;
    clvb1RSUM0: TcxGridDBBandedColumn;
    clvb1SALDO_END0: TcxGridDBBandedColumn;
    clvb1SALDO1: TcxGridDBBandedColumn;
    clvb1PSUM1: TcxGridDBBandedColumn;
    clvb1RSUM1: TcxGridDBBandedColumn;
    clvb1SALDO_END1: TcxGridDBBandedColumn;
    clvb1SALDO2: TcxGridDBBandedColumn;
    clvb1PSUM2: TcxGridDBBandedColumn;
    clvb1RSUM2: TcxGridDBBandedColumn;
    clvb1SALDO_END2: TcxGridDBBandedColumn;
    clvb1SALDO3: TcxGridDBBandedColumn;
    clvb1PSUM3: TcxGridDBBandedColumn;
    clvb1RSUM3: TcxGridDBBandedColumn;
    clvb1SALDO_END3: TcxGridDBBandedColumn;
    clvb1SALDO: TcxGridDBBandedColumn;
    clvb1PSUM: TcxGridDBBandedColumn;
    clvb1RSUM: TcxGridDBBandedColumn;
    clvb1SALDO_END: TcxGridDBBandedColumn;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_grd2: TdxLayoutItem;
    spl1: TdxLayoutSplitterItem;
    vb2: TcxGridDBBandedTableView;
    md2: TdxMemData;
    src_md2: TDataSource;
    ds_HMOVEIMMKD2: TpFIBDataSet;
    clvb2ARENDATOR: TcxGridDBBandedColumn;
    clvb2ARNAME: TcxGridDBBandedColumn;
    clvb2DOGIMMKD: TcxGridDBBandedColumn;
    clvb2DNOTE: TcxGridDBBandedColumn;
    clvb2SALDO0: TcxGridDBBandedColumn;
    clvb2PSUM0: TcxGridDBBandedColumn;
    clvb2RSUM0: TcxGridDBBandedColumn;
    clvb2SALDO_END0: TcxGridDBBandedColumn;
    clvb2SALDO1: TcxGridDBBandedColumn;
    clvb2PSUM1: TcxGridDBBandedColumn;
    clvb2RSUM1: TcxGridDBBandedColumn;
    clvb2SALDO_END1: TcxGridDBBandedColumn;
    clvb2SALDO2: TcxGridDBBandedColumn;
    clvb2PSUM2: TcxGridDBBandedColumn;
    clvb2RSUM2: TcxGridDBBandedColumn;
    clvb2SALDO_END2: TcxGridDBBandedColumn;
    clvb2SALDO3: TcxGridDBBandedColumn;
    clvb2PSUM3: TcxGridDBBandedColumn;
    clvb2RSUM3: TcxGridDBBandedColumn;
    clvb2SALDO_END3: TcxGridDBBandedColumn;
    clvb2SALDO: TcxGridDBBandedColumn;
    clvb2PSUM: TcxGridDBBandedColumn;
    clvb2RSUM: TcxGridDBBandedColumn;
    clvb2SALDO_END: TcxGridDBBandedColumn;
    clvb1SALDO5: TcxGridDBBandedColumn;
    clvb1PSUM5: TcxGridDBBandedColumn;
    clvb1RSUM5: TcxGridDBBandedColumn;
    clvb1SALDO_END5: TcxGridDBBandedColumn;
    clvb2SALDO5: TcxGridDBBandedColumn;
    clvb2PSUM5: TcxGridDBBandedColumn;
    clvb2RSUM5: TcxGridDBBandedColumn;
    clvb2SALDO_END5: TcxGridDBBandedColumn;
    chk_1c: TcxCheckBox;
    itm_1c: TdxLayoutItem;
    btn_Excel: TcxButton;
    itmlc1Item1: TdxLayoutItem;
    xlr1: TEXLReport;
    ds_HOUSEOBOROT1C: TpFIBDataSet;
    ds_HOUSEOBOROT1C2: TpFIBDataSet;
    clvb2SALDO4: TcxGridDBBandedColumn;
    clvb2PSUM4: TcxGridDBBandedColumn;
    clvb2RSUM4: TcxGridDBBandedColumn;
    clvb2SALDO_END4: TcxGridDBBandedColumn;
    clvb1SALDO4: TcxGridDBBandedColumn;
    clvb1PSUM4: TcxGridDBBandedColumn;
    clvb1RSUM4: TcxGridDBBandedColumn;
    clvb1SALDO_END4: TcxGridDBBandedColumn;
    doc1: TdxBarDockControl;
    litm_lc1Item1: TdxLayoutItem;
    barM1: TdxBarManager;
    br1: TdxBar;
    bi1: TcxBarEditItem;
    bi2: TcxBarEditItem;
    btn_Refresh: TdxBarButton;
    clvb2SNAME: TcxGridDBBandedColumn;
    clvb2NOMER: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
    procedure vb1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure vb1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_ExcelClick(Sender: TObject);
    procedure btn_RefreshClick(Sender: TObject);
  private
    { Private declarations }
    procedure CreateMD1;
    procedure CreateMD2;
    procedure MakeData;
    procedure MakeData1;
    procedure MakeData2;
    function CheckParam :Boolean;
    procedure GetData(var d1,d2 :Variant);
    procedure AddTableData(ds: TpFIBDataSet);
    procedure MakeByArendator(ds: TpFIBDataSet);
    procedure ExportExcel;
  public
    { Public declarations }
  end;

var
  ReversStateForm: TReversStateForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, LoadingSplash;

{$R *.dfm}

procedure TReversStateForm.AddTableData(ds: TpFIBDataSet);
var
  data, house :Variant;
  FSALDO,FPSUM,FRSUM,FSALDO_END :string;

  procedure GetFName;
  begin
      FSALDO:='SALDO'+IntToStr(ds.FN('DTYPE').AsInteger);
      FPSUM:='PSUM'+IntToStr(ds.FN('DTYPE').AsInteger);
      FRSUM:='RSUM'+IntToStr(ds.FN('DTYPE').AsInteger);
      FSALDO_END:='SALDO_END'+IntToStr(ds.FN('DTYPE').AsInteger);
  end;

  procedure SetSum;
  begin
    md1.Edit;
      md1.FieldByName('PSUM').AsCurrency:=
        md1.FieldByName('PSUM').AsCurrency+ds.FN('PSUM').AsCurrency;
      md1.FieldByName('RSUM').AsCurrency:=
        md1.FieldByName('RSUM').AsCurrency + ds.FieldByName('RSUM').AsCurrency;
      md1.FieldByName('SALDO_END').AsCurrency:=
        md1.FieldByName('SALDO_END').AsCurrency +
        (ds.FN('SALDO').AsCurrency+ds.FN('PSUM').AsCurrency-
        ds.FN('RSUM').AsCurrency);
    md1.Post;
  end;

begin
  vb1.BeginUpdate;
  md1.Close; md1.Open;
  with ds do
  while not Eof do begin
    GetFName;
    if house<>FN('HOUSE').AsVariant then begin
      data:=FN('DATA').AsVariant;
      md1.Append;
      md1.FieldByName('HOUSE').AsVariant:=FN('HOUSE').AsVariant;
      md1.FieldByName('NOMER').AsVariant:=FN('NOMER').AsVariant;
      md1.FieldByName('SNAME').AsVariant:=FN('SNAME').AsVariant;
      md1.FieldByName('DTYPE').AsVariant:=FN('DTYPE').AsVariant;
      if chk_1c.Checked = true then begin
        md1.FieldByName('SALDO').AsCurrency:= FN('SALDO').AsCurrency;
        md1.FieldByName('PSUM').AsCurrency:= FN('PSUM').AsCurrency;
        md1.FieldByName('RSUM').AsCurrency:= FN('RSUM').AsCurrency;
        md1.FieldByName('SALDO_END').AsCurrency:=
          FN('SALDO').AsCurrency+FN('PSUM').AsCurrency-FN('RSUM').AsCurrency;
        md1.FieldByName(FSALDO).AsCurrency:= FN('SALDO').AsCurrency;
        md1.FieldByName(FPSUM).AsCurrency:= FN('PSUM').AsCurrency;
        md1.FieldByName(FRSUM).AsCurrency:= FN('RSUM').AsCurrency;
        md1.FieldByName(FSALDO_END).AsCurrency:=
          FN('SALDO').AsCurrency+FN('PSUM').AsCurrency-FN('RSUM').AsCurrency;
      end else begin
        md1.FieldByName('SALDO').AsCurrency:= FN('SALDO1').AsCurrency;
        md1.FieldByName('PSUM').AsCurrency:= FN('PSUM1').AsCurrency;
        md1.FieldByName('RSUM').AsCurrency:= FN('RSUM1').AsCurrency;
        md1.FieldByName('SALDO_END').AsCurrency:=
          FN('SALDO1').AsCurrency+FN('PSUM1').AsCurrency-FN('RSUM1').AsCurrency;
        md1.FieldByName(FSALDO).AsCurrency:= FN('SALDO1').AsCurrency;
        md1.FieldByName(FPSUM).AsCurrency:= FN('PSUM1').AsCurrency;
        md1.FieldByName(FRSUM).AsCurrency:= FN('RSUM1').AsCurrency;
        md1.FieldByName(FSALDO_END).AsCurrency:=
          FN('SALDO1').AsCurrency+FN('PSUM1').AsCurrency-FN('RSUM1').AsCurrency;
      end;
      md1.Post;
      house:=FN('HOUSE').AsVariant;
    end else
    begin
      if data<>FN('DATA').AsVariant then
      begin
        md1.edit;
        if chk_1c.Checked = true then begin
          md1.FieldByName(FPSUM).AsCurrency:=
            md1.FieldByName(FPSUM).AsCurrency+ FN('PSUM').AsCurrency;
          md1.FieldByName(FRSUM).AsCurrency:=
            md1.FieldByName(FRSUM).AsCurrency+ FN('RSUM').AsCurrency;
          md1.FieldByName(FSALDO_END).AsCurrency:=
            md1.FieldByName(FSALDO_END).AsCurrency+
            (FN('PSUM').AsVariant-FN('RSUM').AsCurrency);
          md1.FieldByName('PSUM').AsCurrency:=
            md1.FieldByName('PSUM').AsCurrency+FN('PSUM').AsCurrency;
          md1.FieldByName('RSUM').AsCurrency:=
            md1.FieldByName('RSUM').AsCurrency + FieldByName('RSUM').AsCurrency;
          md1.FieldByName('SALDO_END').AsCurrency:=
            md1.FieldByName('SALDO_END').AsCurrency +
            (FN('PSUM').AsCurrency-FN('RSUM').AsCurrency);
        end else begin
          md1.FieldByName(FPSUM).AsCurrency:=
            md1.FieldByName(FPSUM).AsCurrency+ FN('PSUM1').AsCurrency;
          md1.FieldByName(FRSUM).AsCurrency:=
            md1.FieldByName(FRSUM).AsCurrency+ FN('RSUM1').AsCurrency;
          md1.FieldByName(FSALDO_END).AsCurrency:=
            md1.FieldByName(FSALDO_END).AsCurrency+
            (FN('PSUM1').AsVariant-FN('RSUM1').AsCurrency);

          md1.FieldByName('PSUM').AsCurrency:=
            md1.FieldByName('PSUM').AsCurrency+FN('PSUM1').AsCurrency;
          md1.FieldByName('RSUM').AsCurrency:=
            md1.FieldByName('RSUM').AsCurrency + FieldByName('RSUM1').AsCurrency;
          md1.FieldByName('SALDO_END').AsCurrency:=
            md1.FieldByName('SALDO_END').AsCurrency +
            (FN('PSUM1').AsCurrency-FN('RSUM1').AsCurrency);
        end;
        md1.Post;
      end else
      begin
        md1.edit;
        if chk_1c.Checked = true then begin
          md1.FieldByName(FSALDO).AsCurrency:=
          md1.FieldByName(FSALDO).AsCurrency+ FN('SALDO').AsCurrency;
          md1.FieldByName(FPSUM).AsCurrency:=
            md1.FieldByName(FPSUM).AsCurrency+ FN('PSUM').AsCurrency;
          md1.FieldByName(FRSUM).AsCurrency:=
            md1.FieldByName(FRSUM).AsCurrency+ FN('RSUM').AsCurrency;
          md1.FieldByName(FSALDO_END).AsCurrency:=
            md1.FieldByName(FSALDO_END).AsCurrency+
            (FN('SALDO').AsCurrency+FN('PSUM').AsCurrency-FN('RSUM').AsCurrency);
          //
          md1.FieldByName('SALDO').AsCurrency:=
          md1.FieldByName('SALDO').AsCurrency+md1.FieldByName(FSALDO).AsCurrency;
          md1.FieldByName('PSUM').AsCurrency:=
            md1.FieldByName('PSUM').AsCurrency+FN('PSUM').AsCurrency;
          md1.FieldByName('RSUM').AsCurrency:=
            md1.FieldByName('RSUM').AsCurrency + FieldByName('RSUM').AsCurrency;
          md1.FieldByName('SALDO_END').AsCurrency:=
            md1.FieldByName('SALDO_END').AsCurrency +
            (FN('SALDO').AsCurrency+FN('PSUM').AsCurrency-FN('RSUM').AsCurrency);
        end else begin
          md1.FieldByName(FSALDO).AsCurrency:=
          md1.FieldByName(FSALDO).AsCurrency+ FN('SALDO1').AsCurrency;
          md1.FieldByName(FPSUM).AsCurrency:=
            md1.FieldByName(FPSUM).AsCurrency+ FN('PSUM1').AsCurrency;
          md1.FieldByName(FRSUM).AsCurrency:=
            md1.FieldByName(FRSUM).AsCurrency+ FN('RSUM1').AsCurrency;
          md1.FieldByName(FSALDO_END).AsCurrency:=
            md1.FieldByName(FSALDO_END).AsCurrency+
            (FN('SALDO1').AsCurrency+FN('PSUM1').AsCurrency-FN('RSUM1').AsCurrency);
          //
          md1.FieldByName('SALDO').AsCurrency:=
          md1.FieldByName('SALDO').AsCurrency+FN('SALDO1').AsCurrency;
          md1.FieldByName('PSUM').AsCurrency:=
            md1.FieldByName('PSUM').AsCurrency+FN('PSUM1').AsCurrency;
          md1.FieldByName('RSUM').AsCurrency:=
            md1.FieldByName('RSUM').AsCurrency + FieldByName('RSUM1').AsCurrency;
          md1.FieldByName('SALDO_END').AsCurrency:=
            md1.FieldByName('SALDO_END').AsCurrency +
            (FN('SALDO1').AsCurrency+FN('PSUM1').AsCurrency-FN('RSUM1').AsCurrency);
        end;
        md1.Post;
      end;
      house:=FN('HOUSE').AsVariant;
    end;
    Next;
  end;
  vb1.EndUpdate;
end;

procedure TReversStateForm.btn_ExcelClick(Sender: TObject);
begin
  ExportExcel;
end;

procedure TReversStateForm.btn_execClick(Sender: TObject);
begin
  MakeData;
end;

procedure TReversStateForm.btn_RefreshClick(Sender: TObject);
begin
  MakeData2;
end;

function TReversStateForm.CheckParam: Boolean;
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
  {if msk_y1.Text='' then begin
    Rez('Укажите начало периода!',msk_y1);
    Exit;
  end;}
  if cbb_m2.ItemIndex<1 then begin
    Rez('Укажите окончание периода!',cbb_m1);
    Exit;
  end;
  if msk_y2.Text='' then begin
    Rez('Укажите окончание периода!',msk_y2);
    Exit;
  end;
end;

procedure TReversStateForm.CreateMD1;
var
  i :Integer;
begin
  //CreateField(md1,'DATA',ftDate);
  CreateField(md1,'HOUSE',ftInteger);
  CreateField(md1,'NOMER',ftString,32);
  CreateField(md1,'SNAME',ftString,128);
  CreateField(md1,'DTYPE',ftInteger);
  for i:=0 to 5 do begin
      CreateField(md1,'SALDO'+IntToStr(i),ftBCD);
      CreateField(md1,'PSUM'+IntToStr(i),ftBCD);
      CreateField(md1,'RSUM'+IntToStr(i),ftBCD);
      CreateField(md1,'SALDO_END'+IntToStr(i),ftBCD);
  end;
  CreateField(md1,'SALDO',ftBCD);
  CreateField(md1,'PSUM',ftBCD);
  CreateField(md1,'RSUM',ftBCD);
  CreateField(md1,'SALDO_END',ftBCD);
  md1.Open;
end;

procedure TReversStateForm.CreateMD2;
var
  i :Integer;
begin
  CreateField(md2,'NOMER',ftString,32);
  CreateField(md2,'SNAME',ftString,128);
  CreateField(md2,'ARENDATOR',ftString, 256);
  CreateField(md2,'ARNAME',ftString,256);
  CreateField(md2,'DOGIMMKD',ftString, 256);
  CreateField(md2,'DNOTE',ftString,512);
  CreateField(md2,'DTYPE',ftInteger);
  for i:=0 to 5 do begin
      CreateField(md2,'SALDO'+IntToStr(i),ftBCD);
      CreateField(md2,'PSUM'+IntToStr(i),ftBCD);
      CreateField(md2,'RSUM'+IntToStr(i),ftBCD);
      CreateField(md2,'SALDO_END'+IntToStr(i),ftBCD);
  end;
  CreateField(md2,'SALDO',ftBCD);
  CreateField(md2,'PSUM',ftBCD);
  CreateField(md2,'RSUM',ftBCD);
  CreateField(md2,'SALDO_END',ftBCD);
  md2.Open;
end;

procedure TReversStateForm.ExportExcel;
var
  Header: TStrings;
begin
    Header:= TStringList.Create;
  try
    Header.Add(Caption);
    //Header.Add('Период с '+VarToStr(bItm1.EditValue)+' по '+VarToStr(bItm2.EditValue));
    //AppUtils.ExportInExcel(grd1,Header);
    SimpleExportInExcel(grd1);
  finally
    FreeAndNil(Header);
  end;

  {with xlr1 do begin
    Template:=AppPath+'rep\bdr4.xls';
    Dictionary.Clear;
    with Bands.AddBand(xlrbtTitle) do
      Range:='A1:AD3';
    with Bands.AddBand(xlrbtMasterData) do
      Range:='A4:AD4';
    with Bands.AddBand(xlrbtSummary) do
      Range:='A5:AD5';
    try
      md1.DisableControls;
      Show();
    finally
      md1.EnableControls;
    end;
  end;}
end;

procedure TReversStateForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TReversStateForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  //bi2.EditValue:= True;
  CreateMD1;
  CreateMD2;
end;

procedure TReversStateForm.GetData(var d1, d2: Variant);
begin
  d1:=StrToDate('01.'+IntToStr(cbb_m1.ItemIndex)+'.'+msk_y2.Text);
  d2:=StrToDate( IntToStr(DaysInAMonth(msk_y2.EditingValue,cbb_m2.ItemIndex))+
                            '.'+IntToStr(cbb_m2.ItemIndex)+'.'+msk_y2.Text);
  //d2:= EndOfTheMonth(d2) -1;
end;

procedure TReversStateForm.MakeByArendator(ds: TpFIBDataSet);
var
  data, arn, dog :Variant;
  FSALDO,FPSUM,FRSUM,FSALDO_END :string;
  Q: TFibQuery;

  procedure GetAddr;
  begin

  end;

  procedure GetFName;
  begin
    FSALDO:='SALDO'+IntToStr(ds.FN('DTYPE').AsInteger);
    FPSUM:='PSUM'+IntToStr(ds.FN('DTYPE').AsInteger);
    FRSUM:='RSUM'+IntToStr(ds.FN('DTYPE').AsInteger);
    FSALDO_END:='SALDO_END'+IntToStr(ds.FN('DTYPE').AsInteger);
  end;
  procedure SetSum;
  begin
    md2.Edit;
      md2.FieldByName('PSUM').AsBCD:=
        md2.FieldByName('PSUM').AsBCD+ds.FN('PSUM').AsBCD;
      md2.FieldByName('RSUM').AsBCD:=
        md2.FieldByName('RSUM').AsBCD + ds.FieldByName('RSUM').AsBCD;
      md2.FieldByName('SALDO_END').AsBCD:=
        md2.FieldByName('SALDO_END').AsBCD +
        (ds.FN('SALDO').AsBCD+ds.FN('PSUM').AsBCD-
        ds.FN('RSUM').AsBCD);
    md2.Post;
  end;
begin
  vb2.BeginUpdate;
  if bi2.EditValue <> True then begin
    md2.Close; md2.Open;
  end;
  Q:= GetQueryForUse(cmDb.RT,'');
  with ds do
  while not Eof do begin
    GetFName;
    if (arn<>FN('ARENDATOR').AsVariant) or (dog<>FN('DOGIMMKD').AsVariant) then
    begin
      data:=FN('DATA').AsVariant;
      md2.Append;
      if bi2.EditValue = True then begin
        md2.FieldByName('NOMER').AsVariant:=md1.FN('NOMER').AsVariant;
        md2.FieldByName('SNAME').AsVariant:=md1.FN('SNAME').AsVariant;
      end;
      md2.FieldByName('ARENDATOR').AsVariant:=FN('ARENDATOR').AsVariant;
      md2.FieldByName('ARNAME').AsVariant:=FN('ARNAME').AsVariant;
      md2.FieldByName('DOGIMMKD').AsVariant:=FN('DOGIMMKD').AsVariant;
      md2.FieldByName('DNOTE').AsVariant:=FN('DNOTE').AsVariant;
      md2.FieldByName('DTYPE').AsVariant:=FN('DTYPE').AsVariant;
      if chk_1c.Checked then begin
        md2.FieldByName('SALDO').AsBCD:= FN('SALDO').AsBCD;
        md2.FieldByName('PSUM').AsBCD:= FN('PSUM').AsBCD;
        md2.FieldByName('RSUM').AsBCD:= FN('RSUM').AsBCD;
        md2.FieldByName('SALDO_END').AsCurrency:=
          FN('SALDO').AsCurrency+FN('PSUM').AsCurrency-FN('RSUM').AsCurrency;
        md2.FieldByName(FSALDO).AsCurrency:= FN('SALDO').AsCurrency;
        md2.FieldByName(FPSUM).AsCurrency:= FN('PSUM').AsCurrency;
        md2.FieldByName(FRSUM).AsCurrency:= FN('RSUM').AsCurrency;
        md2.FieldByName(FSALDO_END).AsCurrency:=
          FN('SALDO').AsCurrency+FN('PSUM').AsCurrency-FN('RSUM').AsCurrency;
      end else begin
        md2.FieldByName('SALDO').AsCurrency:= FN('SALDO1').AsCurrency;
        md2.FieldByName('PSUM').AsCurrency:= FN('PSUM1').AsCurrency;
        md2.FieldByName('RSUM').AsCurrency:= FN('RSUM1').AsCurrency;
        md2.FieldByName('SALDO_END').AsCurrency:=
          FN('SALDO1').AsCurrency+FN('PSUM1').AsCurrency-FN('RSUM1').AsCurrency;
        md2.FieldByName(FSALDO).AsCurrency:= FN('SALDO1').AsCurrency;
        md2.FieldByName(FPSUM).AsCurrency:= FN('PSUM1').AsCurrency;
        md2.FieldByName(FRSUM).AsCurrency:= FN('RSUM1').AsCurrency;
        md2.FieldByName(FSALDO_END).AsCurrency:=
          FN('SALDO1').AsCurrency+FN('PSUM1').AsCurrency-FN('RSUM1').AsCurrency;
      end;
      md2.Post;
      arn:=FN('ARENDATOR').AsVariant;
      dog:=FN('DOGIMMKD').AsVariant;
    end else
    begin
      if data<>FN('DATA').AsVariant then
      begin
        md2.edit;
        if chk_1c.Checked then begin
          md2.FieldByName(FPSUM).AsCurrency:=
            md2.FieldByName(FPSUM).AsCurrency+ FN('PSUM').AsCurrency;
          md2.FieldByName(FRSUM).AsCurrency:=
            md2.FieldByName(FRSUM).AsCurrency+ FN('RSUM').AsCurrency;
          md2.FieldByName(FSALDO_END).AsCurrency:=
            md2.FieldByName(FSALDO_END).AsCurrency+
            (FN('PSUM').AsVariant-FN('RSUM').AsCurrency);
          md2.FieldByName('PSUM').AsCurrency:=
            md2.FieldByName('PSUM').AsCurrency+FN('PSUM').AsCurrency;
          md2.FieldByName('RSUM').AsCurrency:=
            md2.FieldByName('RSUM').AsCurrency + FieldByName('RSUM').AsCurrency;
          md2.FieldByName('SALDO_END').AsCurrency:=
            md2.FieldByName('SALDO_END').AsCurrency +
            (FN('PSUM').AsCurrency-FN('RSUM').AsCurrency);
        end else begin
          md2.FieldByName(FPSUM).AsCurrency:=
            md2.FieldByName(FPSUM).AsCurrency+ FN('PSUM1').AsCurrency;
          md2.FieldByName(FRSUM).AsCurrency:=
            md2.FieldByName(FRSUM).AsCurrency+ FN('RSUM1').AsCurrency;
          md2.FieldByName(FSALDO_END).AsCurrency:=
            md2.FieldByName(FSALDO_END).AsCurrency+
            (FN('PSUM1').AsVariant-FN('RSUM1').AsCurrency);
          md2.FieldByName('PSUM').AsCurrency:=
            md2.FieldByName('PSUM').AsCurrency+FN('PSUM1').AsCurrency;
          md2.FieldByName('RSUM').AsCurrency:=
            md2.FieldByName('RSUM').AsCurrency + FieldByName('RSUM1').AsCurrency;
          md2.FieldByName('SALDO_END').AsCurrency:=
            md2.FieldByName('SALDO_END').AsCurrency +
            (FN('PSUM1').AsCurrency-FN('RSUM1').AsCurrency);
        end;
        md2.Post;
      end else
      begin
        md2.edit;
        if chk_1c.Checked then begin
          md2.FieldByName(FSALDO).AsCurrency:=
          md2.FieldByName(FSALDO).AsCurrency+ FN('SALDO').AsCurrency;
          md2.FieldByName(FPSUM).AsCurrency:=
            md2.FieldByName(FPSUM).AsCurrency+ FN('PSUM').AsCurrency;
          md2.FieldByName(FRSUM).AsCurrency:=
            md2.FieldByName(FRSUM).AsCurrency+ FN('RSUM').AsCurrency;
          md2.FieldByName(FSALDO_END).AsCurrency:=
            md2.FieldByName(FSALDO_END).AsCurrency+
            (FN('SALDO').AsCurrency+FN('PSUM').AsCurrency-FN('RSUM').AsCurrency);
          //
          md2.FieldByName('SALDO').AsCurrency:=
          md2.FieldByName('SALDO').AsCurrency+md2.FieldByName(FSALDO).AsCurrency;
          md2.FieldByName('PSUM').AsCurrency:=
            md2.FieldByName('PSUM').AsCurrency+FN('PSUM').AsCurrency;
          md2.FieldByName('RSUM').AsCurrency:=
            md2.FieldByName('RSUM').AsCurrency + FieldByName('RSUM').AsCurrency;
          md2.FieldByName('SALDO_END').AsCurrency:=
            md2.FieldByName('SALDO_END').AsCurrency +
            (FN('SALDO').AsCurrency+FN('PSUM').AsCurrency-FN('RSUM').AsCurrency);
        end else begin
          md2.FieldByName(FSALDO).AsCurrency:=
          md2.FieldByName(FSALDO).AsCurrency+ FN('SALDO1').AsCurrency;
          md2.FieldByName(FPSUM).AsCurrency:=
            md2.FieldByName(FPSUM).AsCurrency+ FN('PSUM1').AsCurrency;
          md2.FieldByName(FRSUM).AsCurrency:=
            md2.FieldByName(FRSUM).AsCurrency+ FN('RSUM1').AsCurrency;
          md2.FieldByName(FSALDO_END).AsCurrency:=
            md2.FieldByName(FSALDO_END).AsCurrency+
            (FN('SALDO1').AsCurrency+FN('PSUM1').AsCurrency-FN('RSUM1').AsCurrency);
          //
          md2.FieldByName('SALDO').AsCurrency:=
          md2.FieldByName('SALDO').AsCurrency+md2.FieldByName(FSALDO).AsCurrency;
          md2.FieldByName('PSUM').AsCurrency:=
            md2.FieldByName('PSUM').AsCurrency+FN('PSUM1').AsCurrency;
          md2.FieldByName('RSUM').AsCurrency:=
            md2.FieldByName('RSUM').AsCurrency + FieldByName('RSUM1').AsCurrency;
          md2.FieldByName('SALDO_END').AsCurrency:=
            md2.FieldByName('SALDO_END').AsCurrency +
            (FN('SALDO1').AsCurrency+FN('PSUM1').AsCurrency-FN('RSUM1').AsCurrency);
        end;
        md2.Post;
      end;
      arn:=FN('ARENDATOR').AsVariant;
      dog:=FN('DOGIMMKD').AsVariant;
    end;
    Next;
  end;
  vb2.EndUpdate;
end;

procedure TReversStateForm.MakeData;
var
  d1, d2 :Variant;
  m1, m2 : Integer;
  procedure PrepareGrid;
  begin
    if msk_y2.EditValue>=2013 then begin
      vb1.Bands[1].Caption:='НЖП (помещения)';
      vb1.Bands[1].Visible:= False;
      vb1.Bands[1].VisibleForCustomization:= False;
      vb1.Bands[2].Caption:='реклама';
      vb1.Bands[3].Caption:='интернет';
      vb1.Bands[4].Caption:='базовые станции';
      vb1.Bands[5].Caption:='аренда (НЖП)';
      vb1.Bands[6].Caption:='Колясочные';
      vb1.Bands[5].Visible:= True;
      vb1.Bands[5].VisibleForCustomization:= True;
    end else begin
      vb1.Bands[1].Caption:='Наружная реклама';
      vb1.Bands[1].Visible:= true;
      vb1.Bands[1].VisibleForCustomization:= true;
      vb1.Bands[2].Caption:='Базовые станции';
      vb1.Bands[3].Caption:='Интернет и кабельное';
      vb1.Bands[4].Caption:='Аренда помещений ОИ МКД';
      vb1.Bands[6].Caption:='Колясочные';
      vb1.Bands[5].Visible:= False;
      vb1.Bands[5].VisibleForCustomization:= False;
    end;
  end;
begin
  if not CheckParam then Exit;
  PrepareGrid;
  if msk_y2.EditValue>=2013 then begin
     try
       vb1.BeginUpdate(lsimImmediate);
       m1:= cbb_m1.ItemIndex;
       m2:= cbb_m2.ItemIndex;
       with ds_HOUSEOBOROT1C do begin
         Close;
         MainWhereClause:='HO.Y = :Y and HO.M >=:m1 and HO.M<=:m2 and HO.DOGTYPE>0';
         ParamByName('Y').AsVariant:= msk_y2.EditValue;
         ParamByName('m1').AsVariant:= m1;
         ParamByName('m2').AsVariant:= m2;
         Open;
         AddTableData(ds_HOUSEOBOROT1C);
       end;
     finally
       vb1.EndUpdate;
     end;
  end else begin
    SplashVisibility(true,'Получаем данные...');
    try
      GetData(d1,d2);
      with ds_HMOVEIMMKD do begin
        Close;
        MainWhereClause:='hm.DATA between :d1 and :d2 and hm.DTYPE<>4';
        ParamByName('d1').AsVariant:=d1;
        ParamByName('d2').AsVariant:=d2;
        GroupByClause:='hm.HOUSE, h.nomer, hm.DATA, s.name, hm.DTYPE';
        Open;
        AddTableData(ds_HMOVEIMMKD);
      end;
    finally
      SplashVisibility(false);
    end;
  end;
  if bi2.EditValue = True then
  MakeData2 else
  MakeData1;
end;

procedure TReversStateForm.MakeData1;
var
  d1, d2 :Variant;
  m1, m2, i : Integer;
  procedure PrepareGrid;
  begin
    if msk_y2.EditValue>=2013 then begin
      vb2.Bands[1].Caption:='НЖП (помещения)';
      vb2.Bands[1].Visible:= False;
      vb2.Bands[1].VisibleForCustomization:= False;
      vb2.Bands[2].Caption:='реклама';
      vb2.Bands[3].Caption:='интернет';
      vb2.Bands[4].Caption:='базовые станции';
      vb2.Bands[5].Caption:='аренда (НЖП)';
      vb2.Bands[6].Caption:='Колясочные';
      vb2.Bands[5].Visible:= True;
      vb2.Bands[5].VisibleForCustomization:= True;
    end else begin
      vb2.Bands[1].Caption:='Наружная реклама';
      vb2.Bands[1].Visible:= true;
      vb2.Bands[1].VisibleForCustomization:= true;
      vb2.Bands[2].Caption:='Базовые станции';
      vb2.Bands[3].Caption:='Интернет и кабельное';
      vb2.Bands[4].Caption:='Аренда помещений ОИ МКД';
      vb2.Bands[6].Caption:='Колясочные';
      vb2.Bands[5].Visible:= False;
      vb2.Bands[5].VisibleForCustomization:= False;
    end;
    clvb2SNAME.Visible:= bi2.EditValue = True;
    clvb2NOMER.Visible:= bi2.EditValue = True;
  end;
begin
  if not CheckParam then Exit;
  //SplashVisibility(true,'Подождите.');
  PrepareGrid;
  if msk_y2.EditValue>=2013 then begin
    vb2.BeginUpdate(lsimImmediate);
    try
      m1:= cbb_m1.ItemIndex;
      m2:= cbb_m2.ItemIndex;
      with ds_HOUSEOBOROT1C2 do begin
        Close;
        //if bi2.EditValue = True then
          MainWhereClause:= 'HO.Y = :Y and HO.M >=:m1 and HO.M<=:m2 and HO.DOGTYPE>0 and ho.HOUSE=:hs';// else
        //  MainWhereClause:= 'HO.Y = :Y and HO.M >=:m1 and HO.M<=:m2 and HO.DOGTYPE>0';
        ParamByName('Y').AsVariant:= msk_y2.EditValue;
        ParamByName('m1').AsVariant:= m1;
        ParamByName('m2').AsVariant:= m2;
        if ParamExist('hs',i) then
          ParamByName('hs').AsVariant:=vb1.GetColumnByFieldName('HOUSE').EditValue;
        Open;
        MakeByArendator(ds_HOUSEOBOROT1C2);
      end;
    finally
      vb2.EndUpdate;
      vb2.ApplyBestFit;
    end;
  end else begin
    try
      GetData(d1,d2);
      with ds_HMOVEIMMKD2 do begin
        Close;
        //if bi2.EditValue = True then
          MainWhereClause:='hm.DATA between :d1 and :d2 and hm.DTYPE<>4 and hm.HOUSE=:hs';// else
          //MainWhereClause:='hm.DATA between :d1 and :d2 and hm.DTYPE<>4';
        ParamByName('d1').AsVariant:=d1;
        ParamByName('d2').AsVariant:=d2;
        if ParamExist('hs',i) then
          ParamByName('hs').AsVariant:=vb1.GetColumnByFieldName('HOUSE').EditValue;
        GroupByClause:='hm.ARENDATOR,hm.DOGIMMKD,hm.DATA,hm.DTYPE,3,5,6';
        Open;
        MakeByArendator(ds_HMOVEIMMKD2);
      end;
    finally
      //SplashVisibility(false);
    end;
  end;
end;

procedure TReversStateForm.MakeData2;
var
  d1, d2 :Variant;
  m1, m2, i : Integer;
  procedure PrepareGrid;
  begin
    if msk_y2.EditValue>=2013 then begin
      vb2.Bands[1].Caption:='НЖП (помещения)';
      vb2.Bands[1].Visible:= False;
      vb2.Bands[1].VisibleForCustomization:= False;
      vb2.Bands[2].Caption:='реклама';
      vb2.Bands[3].Caption:='интернет';
      vb2.Bands[4].Caption:='базовые станции';
      vb2.Bands[5].Caption:='аренда (НЖП)';
      vb2.Bands[6].Caption:='Колясочные';
      vb2.Bands[5].Visible:= True;
      vb2.Bands[5].VisibleForCustomization:= True;
    end else begin
      vb2.Bands[1].Caption:='Наружная реклама';
      vb2.Bands[1].Visible:= true;
      vb2.Bands[1].VisibleForCustomization:= true;
      vb2.Bands[2].Caption:='Базовые станции';
      vb2.Bands[3].Caption:='Интернет и кабельное';
      vb2.Bands[4].Caption:='Аренда помещений ОИ МКД';
      vb2.Bands[6].Caption:='Колясочные';
      vb2.Bands[5].Visible:= False;
      vb2.Bands[5].VisibleForCustomization:= False;
    end;
    clvb2SNAME.Visible:= bi2.EditValue = True;
    clvb2NOMER.Visible:= bi2.EditValue = True;
  end;
begin
  if not CheckParam then Exit;
  SplashVisibility(true,'Пожалуйста подождите.');
  try
    vb1.BeginUpdate(lsimImmediate);
    vb2.BeginUpdate(lsimImmediate);
    PrepareGrid;
    md2.Close; md2.Open;
    md1.First;
    while not md1.Eof do begin
      if msk_y2.EditValue>=2013 then begin

        try
          m1:= cbb_m1.ItemIndex;
          m2:= cbb_m2.ItemIndex;
          with ds_HOUSEOBOROT1C2 do begin
            Close;
            //if bi2.EditValue = True then
              MainWhereClause:= 'HO.Y = :Y and HO.M >=:m1 and HO.M<=:m2 and HO.DOGTYPE>0 and ho.HOUSE=:hs';// else
              //MainWhereClause:= 'HO.Y = :Y and HO.M >=:m1 and HO.M<=:m2 and HO.DOGTYPE>0';
            ParamByName('Y').AsVariant:= msk_y2.EditValue;
            ParamByName('m1').AsVariant:= m1;
            ParamByName('m2').AsVariant:= m2;
            if ParamExist('hs',i) then
              ParamByName('hs').AsVariant:=md1.FN('HOUSE').AsVariant;
            Open;
            MakeByArendator(ds_HOUSEOBOROT1C2);
          end;
        finally

        end;
      end else begin
        try
          GetData(d1,d2);
          with ds_HMOVEIMMKD2 do begin
            Close;
            //if bi2.EditValue = True then
              MainWhereClause:='hm.DATA between :d1 and :d2 and hm.DTYPE<>4 and hm.HOUSE=:hs';// else
              //MainWhereClause:='hm.DATA between :d1 and :d2 and hm.DTYPE<>4';
            ParamByName('d1').AsVariant:=d1;
            ParamByName('d2').AsVariant:=d2;
            if ParamExist('hs',i) then
              ParamByName('hs').AsVariant:=md1.FN('HOUSE').AsVariant;
            GroupByClause:='hm.ARENDATOR,hm.DOGIMMKD,hm.DATA,hm.DTYPE,3,5,6';
            Open;
            MakeByArendator(ds_HMOVEIMMKD2);
          end;
        finally

        end;
      end;
      md1.Next;
    end;
  finally
    vb2.EndUpdate;
    vb2.ApplyBestFit;
    vb1.EndUpdate;
    SplashVisibility(false);
  end;

end;

procedure TReversStateForm.vb1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if bi2.EditValue <> True then
  MakeData1;
end;

procedure TReversStateForm.vb1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP : if bi2.EditValue <> True then MakeData1;
    VK_DOWN : if bi2.EditValue <> True then MakeData1;
  end;
end;

initialization
 RegisterClass(TReversStateForm);
end.
