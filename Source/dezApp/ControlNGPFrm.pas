unit ControlNGPFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutControlAdapters, Menus,
  StdCtrls, cxButtons, cxMaskEdit, cxTextEdit, cxDropDownEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridLevel, cxGrid, DateUtils, cxGridBandedTableView, cxGridDBBandedTableView,
  FIBDataSet, pFIBDataSet, dxmdaset, dxSkinsDefaultPainters,
  dxSkinDevExpressStyle;

type
  TControlNGPForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grp_lc1Group1: TdxLayoutGroup;
    grp_lc1Group2: TdxLayoutGroup;
    grp_lc1Group3: TdxLayoutGroup;
    cbb_m1: TcxComboBox;
    itm_m1: TdxLayoutItem;
    ms_Y1: TcxMaskEdit;
    itm_Y1: TdxLayoutItem;
    cbb_m2: TcxComboBox;
    itm_m2: TdxLayoutItem;
    ms_Y2: TcxMaskEdit;
    itm_Y2: TdxLayoutItem;
    btn_exec: TcxButton;
    itm_exec: TdxLayoutItem;
    spl_1: TdxLayoutSplitterItem;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    vb1: TcxGridDBBandedTableView;
    md: TdxMemData;
    src_md: TDataSource;
    ds_HOUSENG: TpFIBDataSet;
    strep1: TcxStyleRepository;
    styl_select1: TcxStyle;
    styl_fakt: TcxStyle;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_lc1Item1: TdxLayoutItem;
    ds: TpFIBDataSet;
    md1: TdxMemData;
    src_md1: TDataSource;
    vb2: TcxGridDBBandedTableView;
    btn_Excel: TcxButton;
    LItemlc1Item1: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_execClick(Sender: TObject);
    procedure vb1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_ExcelClick(Sender: TObject);
  private
    { Private declarations }
    Date1, Date2: TDateTime;
    Month1, Month2, Year1, Year2: Variant;
    //
    procedure CreateGrid;
    procedure CreateMem;
    procedure OpenData;
    procedure AddData;
    //  detail
    procedure MakeDetail;
    procedure CreateDetailGrid;
    procedure CreateDetailMem;
    procedure OpenDetailData;
    procedure AddDetailData;
  public
    { Public declarations }
  end;

var
  ControlNGPForm: TControlNGPForm;

implementation

uses cmDBUnit;

{$R *.dfm}


procedure TControlNGPForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TControlNGPForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
end;

procedure TControlNGPForm.MakeDetail;
begin
  CreateDetailGrid;
  CreateDetailMem;
  vb2.BeginUpdate(lsimImmediate);
  try
    OpenDetailData;
  finally
    vb2.EndUpdate;
  end;
end;

procedure TControlNGPForm.OpenData;
var
  D1, D2 :TDateTime;
  m1,m2 :Variant;
  M,Y: Variant;
begin
  m1:= cbb_m1.ItemIndex + 1;
  m2:= cbb_m2.ItemIndex + 1;
  D1:= StrToDate('01.'+IntToStr(m1)+'.'+ms_Y1.Text);
  D2:= StrToDate('01.'+IntToStr(m2)+'.'+ms_Y2.Text);
  repeat
    M:= MonthOf(D1);
    Y:= YearOf(D1);
    //open ds
    with ds_HOUSENG do begin
      Close;
      ParamByName('M').AsVariant:= M;
      ParamByName('Y').AsVariant:= Y;
      Open;
    end;
    // append data in memtable
    AddData;
    // IncMonth
    D1:=IncMonth(D1);
  until D1>D2;
end;

procedure TControlNGPForm.OpenDetailData;
var
  D1:TDateTime;
  M,Y, HOUSE: Variant;
begin
  D1:= Date1;
  repeat
    M:= MonthOf(D1);
    Y:= YearOf(D1);
    HOUSE:= vb1.GetColumnByFieldName('HOUSE').EditValue;
    //open ds
    with ds do begin
      Close;
      ParamByName('M').AsVariant:= M;
      ParamByName('Y').AsVariant:= Y;
      ParamByName('HOUSE').AsVariant:= HOUSE;
      Open;
    end;
    // append data in memtable
    AddDetailData;
    // IncMonth
    D1:=IncMonth(D1);
  until D1>Date2;
end;

procedure TControlNGPForm.vb1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  MakeDetail;
end;

procedure TControlNGPForm.AddData;
var
  fName, fPrevName: string;
  f_dfl, fPrev_dfl: string;
  D1, D2 :TDateTime;
begin
  with ds_HOUSENG do begin
    while not Eof do begin
      fName:= 'SQ'+FN('M').AsString+'_'+FN('Y').AsString;
      D1:= StrToDate('01.'+FN('M').AsString+'.'+FN('Y').AsString);
      D2:= IncMonth(D1,-1);
      fPrevName:= 'SQ'+VarToStr(MonthOf(D2))+'_'+  VarToStr(YearOf(D2));
      //
      f_dfl:= 'dfl'+FN('M').AsString+'_'+FN('Y').AsString;
      fPrev_dfl:= 'dfl'+VarToStr(MonthOf(D2))+'_'+  VarToStr(YearOf(D2));
      //
      if not md.Locate('HOUSE',FN('HOUSE').AsVariant,[]) then begin
        //append record
        md.Append;
        md.FieldByName('HOUSE').AsVariant:= FN('HOUSE').AsVariant;
        md.FieldByName('SNAME').AsVariant:= FN('SNAME').AsVariant;
        md.FieldByName('NOMER').AsVariant:= FN('NOMER').AsVariant;
        md.FieldByName(fName).AsCurrency:= FN('SQ').AsCurrency;
        md.FieldByName(f_dfl).AsInteger:= 0;
        md.Post;
      end else begin
        //edit record
        md.Edit;
        md.FieldByName(fName).AsCurrency:= FN('SQ').AsCurrency;
        md.FieldByName(f_dfl).AsCurrency:= FN('SQ').AsCurrency - md.FieldByName(fPrevName).AsCurrency;
        md.Post;
      end;
      Next;
    end;
  end;
end;

procedure TControlNGPForm.AddDetailData;
var
  fName, fPrevName: string;
  f_dfl, fPrev_dfl: string;
  D1, D2 :TDateTime;
begin
  with ds do begin
    while not Eof do begin
      fName:= 'SQ'+FN('M').AsString+'_'+FN('Y').AsString;
      D1:= StrToDate('01.'+FN('M').AsString+'.'+FN('Y').AsString);
      D2:= IncMonth(D1,-1);
      if not md1.Locate('DCODE',FN('DCODE').AsVariant,[]) then begin
        //append record
        md1.Append;
        md1.FieldByName('DCODE').AsVariant:= FN('DCODE').AsVariant;
        md1.FieldByName('NAME').AsVariant:= FN('NAME').AsVariant;
        md1.FieldByName('NOTE').AsVariant:= FN('NOTE').AsVariant;
        md1.FieldByName(fName).AsCurrency:= FN('SQ').AsCurrency;
        md1.Post;
      end else begin
        md1.Edit;
        md1.FieldByName(fName).AsCurrency:= FN('SQ').AsCurrency;
        md1.Post;
      end;
      Next;
    end;
  end;
end;

procedure TControlNGPForm.btn_ExcelClick(Sender: TObject);
begin
  AppUtils.SimpleExportInExcel(grd1);
end;

procedure TControlNGPForm.btn_execClick(Sender: TObject);
begin
  CreateMem;
  CreateGrid;
  vb1.BeginUpdate(lsimImmediate);
  try
    OpenData;
  finally
    vb1.EndUpdate;
  end;
end;

procedure TControlNGPForm.CreateDetailGrid;
var
  Step :Integer;
  D1: TDateTime;
  FName :string;
  C :TcxGridDBBandedColumn;
  i :Integer;
begin
  D1:= Date1;
  vb2.ClearItems;
  vb2.Bands.Clear;
  i:=0;
  vb2.Bands.Add;
  vb2.Bands[i].Caption := ' ';
  vb2.Bands[i].FixedKind:=fkLeft;
  vb2.Bands[i].Options.HoldOwnColumnsOnly:=True;

  C := vb2.CreateColumn;
  C.DataBinding.FieldName := 'DCODE';
  C.Name := 'cl'+'DCODE';
  c.Width:=60;
  C.Caption:='DCODE';
  C.Position.BandIndex := i;
  c.Visible:=False;

  //StreetName
  C := vb2.CreateColumn;
  C.DataBinding.FieldName := 'NAME';
  C.Name := 'cl'+'NAME';
  C.Caption:='Контрагент';
  c.Width:=180;
  C.Position.BandIndex := i;

  C := vb2.CreateColumn;
  C.DataBinding.FieldName := 'NOTE';
  C.Name := 'cl'+'NOTE';
  C.Caption:='Примечание';
  c.Width:=220;
  C.Summary.GroupKind:=skCount;
  C.Summary.FooterKind:=skCount;
  C.Summary.GroupFooterKind:=skCount;
  C.Summary.GroupFormat := 'Домов: 0';
  C.Summary.GroupFooterFormat:='Домов: 0';
  C.Position.BandIndex := i;

  {D3:=D1;
  D4:=D3+Step;}
  repeat
    Fname:=VarToStr(MonthOf(D1))+'_'+  VarToStr(YearOf(D1));
    vb2.Bands.Add;
    Inc(i);
    vb2.Bands[i].Caption := ShortMonthNames[Integer(MonthOf(D1))]+ ' '+VarToStr(YearOf(D1));
    //FormatDateTime('dd.mm.yy',D3)+' - '+FormatDateTime('dd.mm.yy',D4);
    vb2.Bands[i].Options.HoldOwnColumnsOnly:=True;

    C := vb2.CreateColumn;
    C.DataBinding.FieldName := 'SQ'+Fname;
    C.Name := 'cl2'+'SQ'+Fname;
    C.Caption:='Площадь';
    C.Position.BandIndex := i;
    C.Summary.FooterKind:=skSum;

    D1:=IncMonth(D1);
  until D1>Date2;
end;

procedure TControlNGPForm.CreateDetailMem;
var
  D1 :TDateTime;
  FName :string;
begin
  ClearField(md1);
  CreateField(md1,'DCODE',ftString,32);
  CreateField(md1,'NAME',ftString,256);
  CreateField(md1,'NOTE',ftString,32);
  //
  D1:= Date1;
  repeat
    Fname:=VarToStr(MonthOf(D1))+'_'+  VarToStr(YearOf(D1));
    CreateField(md1,'SQ'+FName,ftBCD);
    D1:=IncMonth(D1);
  until D1>Date2;
  md1.Indexes.Add.FieldName:='DCODE';
  md1.Open;
end;

procedure TControlNGPForm.CreateGrid;
var
  Step :Integer;
  D1: TDateTime;
  FName :string;
  C :TcxGridDBBandedColumn;
  i :Integer;
begin
  Month1:= cbb_m1.ItemIndex + 1;
  Month2:= cbb_m2.ItemIndex + 1;
  Year1:= ms_Y1.Text;
  Year2:= ms_Y2.Text;
  Date1:= StrToDate('01.'+IntToStr(Month1)+'.'+Year1);
  Date2:= StrToDate('01.'+IntToStr(Month2)+'.'+Year2);
  D1:= Date1;
  vb1.ClearItems;
  vb1.Bands.Clear;
  i:=0;
  vb1.Bands.Add;
  vb1.Bands[i].Caption := ' ';
  vb1.Bands[i].FixedKind:=fkLeft;
  vb1.Bands[i].Options.HoldOwnColumnsOnly:=True;

  C := vb1.CreateColumn;
  C.DataBinding.FieldName := 'HOUSE';
  C.Name := 'cl'+'HOUSE';
  c.Width:=60;
  C.Caption:='HOUSE';
  C.Position.BandIndex := i;
  c.Visible:=False;

  //StreetName
  C := vb1.CreateColumn;
  C.DataBinding.FieldName := 'SNAME';
  C.Name := 'cl'+'SNAME';
  C.Caption:='Улица';
  c.Width:=180;
  C.Position.BandIndex := i;

  C := vb1.CreateColumn;
  C.DataBinding.FieldName := 'NOMER';
  C.Name := 'cl'+'NOMER';
  C.Caption:='Дом №';
  c.Width:=60;
  C.Summary.GroupKind:=skCount;
  C.Summary.FooterKind:=skCount;
  C.Summary.GroupFooterKind:=skCount;
  C.Summary.GroupFormat := 'Домов: 0';
  C.Summary.GroupFooterFormat:='Домов: 0';
  C.Position.BandIndex := i;

  {D3:=D1;
  D4:=D3+Step;}
  repeat
    Fname:=VarToStr(MonthOf(D1))+'_'+  VarToStr(YearOf(D1));
    vb1.Bands.Add;
    Inc(i);
    vb1.Bands[i].Caption := ShortMonthNames[Integer(MonthOf(D1))]+ ' '+VarToStr(YearOf(D1));
    //FormatDateTime('dd.mm.yy',D3)+' - '+FormatDateTime('dd.mm.yy',D4);
    vb1.Bands[i].Options.HoldOwnColumnsOnly:=True;

    C := vb1.CreateColumn;
    C.DataBinding.FieldName := 'SQ'+Fname;
    C.Name := 'cl'+'SQ'+Fname;
    C.Caption:='Площадь';
    C.Position.BandIndex := i;
    C.Summary.FooterKind:=skSum;


    C := vb1.CreateColumn;
    C.DataBinding.FieldName := 'dfl'+Fname;
    C.Name := 'cl'+'dfl'+Fname;
    C.Caption:='Отклонение';
    C.Position.BandIndex := i;
    c.Width:=80;
    C.Styles.Content:=styl_fakt;
    C.Summary.FooterKind:=skSum;

    D1:=IncMonth(D1);
  until D1>Date2;
end;

procedure TControlNGPForm.CreateMem;
var
  D1, D2 :TDateTime;
  FName :string;
  m1,m2 :Variant;
begin
  ClearField(md);
  CreateField(md,'HOUSE',ftInteger);
  CreateField(md,'SNAME',ftString,256);
  CreateField(md,'NOMER',ftString,32);
  //
  m1:= cbb_m1.ItemIndex + 1;
  m2:= cbb_m2.ItemIndex + 1;
  D1:= StrToDate('01.'+IntToStr(m1)+'.'+ms_Y1.Text);
  D2:= StrToDate('01.'+IntToStr(m2)+'.'+ms_Y2.Text);
  repeat
    Fname:=VarToStr(MonthOf(D1))+'_'+  VarToStr(YearOf(D1));
    CreateField(md,'SQ'+FName,ftBCD);
    CreateField(md,'dfl'+FName,ftBCD);
    D1:=IncMonth(D1);
  until D1>D2;
  md.Indexes.Add.FieldName:='HOUSE';
  md.Open;
end;

initialization
 RegisterClass(TControlNGPForm);
end.
