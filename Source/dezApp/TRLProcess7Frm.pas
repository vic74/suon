unit TRLProcess7Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  FIBQuery, pFIBCacheQueries, pFIBProps, DateUtils,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxLayoutcxEditAdapters, cxContainer, Menus, StdCtrls, cxButtons, cxTextEdit,
  cxMaskEdit, dxmdaset, FIBDataSet, pFIBDataSet, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxGridBandedTableView, cxGridDBBandedTableView, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit,
  LoadingSplash, frxClass, frxDBSet, dxLayoutControlAdapters, dxLayoutContainer,
  EXLReportExcelTLB, EXLReportBand, EXLReport, frxExportRTF,
  dxSkinDevExpressStyle, dxSkinVS2010;

type
  TTRLProcess7Form = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grlc1Group1: TdxLayoutGroup;
    grlc1Group2: TdxLayoutGroup;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    ds_trplan: TpFIBDataSet;
    m1: TdxMemData;
    src_m1: TDataSource;
    itm_Y: TdxLayoutItem;
    msk_Y: TcxMaskEdit;
    btn_exec: TcxButton;
    itm_exec: TdxLayoutItem;
    ds_fact: TpFIBDataSet;
    vb1: TcxGridDBBandedTableView;
    clvb1PCODE: TcxGridDBBandedColumn;
    clvb1SNAME: TcxGridDBBandedColumn;
    clvb1HOUSE: TcxGridDBBandedColumn;
    clvb1NOMER: TcxGridDBBandedColumn;
    clvb1MLIST: TcxGridDBBandedColumn;
    clvb1MNAME: TcxGridDBBandedColumn;
    clvb1SUMOST: TcxGridDBBandedColumn;
    clvb1SUMY: TcxGridDBBandedColumn;
    clvb1KONTRAGENT: TcxGridDBBandedColumn;
    clvb1KNAME: TcxGridDBBandedColumn;
    clvb1MANAGER: TcxGridDBBandedColumn;
    clvb1FACTCODE: TcxGridDBBandedColumn;
    clvb1STATE: TcxGridDBBandedColumn;
    clvb1NOTE: TcxGridDBBandedColumn;
    clvb1FCODE: TcxGridDBBandedColumn;
    clvb1FMLIST: TcxGridDBBandedColumn;
    clvb1FMNAME: TcxGridDBBandedColumn;
    clvb1FKONTRAGENT: TcxGridDBBandedColumn;
    clvb1FKNAME: TcxGridDBBandedColumn;
    clvb1NDOP: TcxGridDBBandedColumn;
    clvb1DPLACE: TcxGridDBBandedColumn;
    clvb1DNUM: TcxGridDBBandedColumn;
    clvb1SUMMA: TcxGridDBBandedColumn;
    clvb1PLANCODE: TcxGridDBBandedColumn;
    clvb1FSTATE: TcxGridDBBandedColumn;
    clvb1FSTATENAME: TcxGridDBBandedColumn;
    clvb1M1: TcxGridDBBandedColumn;
    clvb1M2: TcxGridDBBandedColumn;
    clvb1M3: TcxGridDBBandedColumn;
    clvb1M4: TcxGridDBBandedColumn;
    clvb1M5: TcxGridDBBandedColumn;
    clvb1M6: TcxGridDBBandedColumn;
    clvb1M7: TcxGridDBBandedColumn;
    clvb1M8: TcxGridDBBandedColumn;
    clvb1M9: TcxGridDBBandedColumn;
    clvb1M10: TcxGridDBBandedColumn;
    clvb1M11: TcxGridDBBandedColumn;
    clvb1M12: TcxGridDBBandedColumn;
    str_plan: TcxStyleRepository;
    styl1: TcxStyle;
    sth1: TcxGridTableViewStyleSheet;
    styl2: TcxStyle;
    styl3: TcxStyle;
    styl4: TcxStyle;
    styl5: TcxStyle;
    styl6: TcxStyle;
    styl7: TcxStyle;
    styl8: TcxStyle;
    styl9: TcxStyle;
    styl10: TcxStyle;
    styl11: TcxStyle;
    styl12: TcxStyle;
    styl13: TcxStyle;
    styl14: TcxStyle;
    styl15: TcxStyle;
    clvb1SUM1: TcxGridDBBandedColumn;
    clvb1SUM2: TcxGridDBBandedColumn;
    cbb_manager: TcxLookupComboBox;
    itm_manager: TdxLayoutItem;
    ds_worker: TpFIBDataSet;
    src_worker: TDataSource;
    clvb1WORKSUM: TcxGridDBBandedColumn;
    clvb1BEGINOST: TcxGridDBBandedColumn;
    ds_reklama: TpFIBDataSet;
    clvb1R1: TcxGridDBBandedColumn;
    clvb1R2: TcxGridDBBandedColumn;
    clvb1R3: TcxGridDBBandedColumn;
    clvb1R4: TcxGridDBBandedColumn;
    grlc1Group3: TdxLayoutGroup;
    grlc1Group4: TdxLayoutGroup;
    grlc1Group5: TdxLayoutGroup;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_grd2: TdxLayoutItem;
    msk_Y1: TcxMaskEdit;
    cbb_manager1: TcxLookupComboBox;
    itm_Y1: TdxLayoutItem;
    itm_man1: TdxLayoutItem;
    cbb_street: TcxLookupComboBox;
    itm_street: TdxLayoutItem;
    grlc1Group6: TdxLayoutGroup;
    grlc1Group8: TdxLayoutGroup;
    grlc1Group7: TdxLayoutGroup;
    cbb_house: TcxLookupComboBox;
    itm_house: TdxLayoutItem;
    grlc1Group9: TdxLayoutGroup;
    btn_ex: TcxButton;
    itm_ex: TdxLayoutItem;
    ds_plan1: TpFIBDataSet;
    ds_fact1: TpFIBDataSet;
    m2: TdxMemData;
    src_m2: TDataSource;
    ds_reklama1: TpFIBDataSet;
    ds_STREET: TpFIBDataSet;
    src_STREET: TDataSource;
    src_HOUSE: TDataSource;
    ds_HOUSE: TpFIBDataSet;
    vb2: TcxGridDBBandedTableView;
    clvb2PCODE: TcxGridDBBandedColumn;
    clvb2STREET: TcxGridDBBandedColumn;
    clvb2SNAME: TcxGridDBBandedColumn;
    clvb2HOUSE: TcxGridDBBandedColumn;
    clvb2NOMER: TcxGridDBBandedColumn;
    clvb2MLIST: TcxGridDBBandedColumn;
    clvb2MNAME: TcxGridDBBandedColumn;
    clvb2SUMOST: TcxGridDBBandedColumn;
    clvb2SUMY: TcxGridDBBandedColumn;
    clvb2KONTRAGENT: TcxGridDBBandedColumn;
    clvb2KNAME: TcxGridDBBandedColumn;
    clvb2MANAGER: TcxGridDBBandedColumn;
    clvb2FACTCODE: TcxGridDBBandedColumn;
    clvb2STATE: TcxGridDBBandedColumn;
    clvb2NOTE: TcxGridDBBandedColumn;
    clvb2FCODE: TcxGridDBBandedColumn;
    clvb2FMLIST: TcxGridDBBandedColumn;
    clvb2FMNAME: TcxGridDBBandedColumn;
    clvb2FKONTRAGENT: TcxGridDBBandedColumn;
    clvb2FKNAME: TcxGridDBBandedColumn;
    clvb2NDOP: TcxGridDBBandedColumn;
    clvb2DPLACE: TcxGridDBBandedColumn;
    clvb2DNUM: TcxGridDBBandedColumn;
    clvb2SUMMA: TcxGridDBBandedColumn;
    clvb2PLANCODE: TcxGridDBBandedColumn;
    clvb2FSTATE: TcxGridDBBandedColumn;
    clvb2FSTATENAME: TcxGridDBBandedColumn;
    clvb2ZDATA: TcxGridDBBandedColumn;
    clvb2SUM1: TcxGridDBBandedColumn;
    clvb2SUM2: TcxGridDBBandedColumn;
    clvb2M1: TcxGridDBBandedColumn;
    clvb2M2: TcxGridDBBandedColumn;
    clvb2M3: TcxGridDBBandedColumn;
    clvb2M4: TcxGridDBBandedColumn;
    clvb2M5: TcxGridDBBandedColumn;
    clvb2M6: TcxGridDBBandedColumn;
    clvb2M7: TcxGridDBBandedColumn;
    clvb2M8: TcxGridDBBandedColumn;
    clvb2M9: TcxGridDBBandedColumn;
    clvb2M10: TcxGridDBBandedColumn;
    clvb2M11: TcxGridDBBandedColumn;
    clvb2M12: TcxGridDBBandedColumn;
    clvb2REKLAMA: TcxGridDBBandedColumn;
    clvb2WORKSUM: TcxGridDBBandedColumn;
    clvb2BEGINOST: TcxGridDBBandedColumn;
    clvb1FACT: TcxGridDBBandedColumn;
    clvb1DUNAME: TcxGridDBBandedColumn;
    fr: TfrxReport;
    dbds1: TfrxDBDataset;
    ds_rep: TpFIBDataSet;
    btn_print: TcxButton;
    itmlc1Item1: TdxLayoutItem;
    xlr1: TEXLReport;
    btn_excel: TcxButton;
    itmlc1Item11: TdxLayoutItem;
    frxrtfxprt1: TfrxRTFExport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
    procedure clvb1M1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure clvb1M2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure clvb1M3CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure clvb1M4CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure clvb1M5CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure clvb1M6CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure clvb1M7CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure clvb1M8CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure clvb1M9CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure clvb1M10CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure clvb1M11CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure clvb1M12CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure grlc1Group4CaptionClick(Sender: TObject);
    procedure grlc1Group3CaptionClick(Sender: TObject);
    procedure cbb_streetPropertiesEditValueChanged(Sender: TObject);
    procedure btn_exClick(Sender: TObject);
    procedure btn_printClick(Sender: TObject);
    procedure btn_excelClick(Sender: TObject);
    procedure xlr1FormatCell(Sender: TObject; Band: TEXLReportBand;
      RowInTemplate, RowInReport, ColumnInReport: Integer; Report: _Worksheet;
      const CellValue: OleVariant);
  private
    { Private declarations }
    procedure CreateMem;
    procedure CreateMem1;
    procedure OpenDS;
    procedure MekeData;
    procedure GetPlan;
    procedure AddPlan;
    procedure GetFact;
    procedure AddFact;
    procedure GetReklama;
    procedure AddReklama;
    function GetFName(AValue :TDAteTime) :string;
    procedure CalkSum;
    //
    procedure OpenHouse;
    procedure MakeEditData;
    procedure GetPlan1;
    procedure GetFact1;
    procedure AddFact1;
    procedure GetReklama1;
    procedure AddReklama1;
    procedure CalkSum1;
    //
    procedure PrintTypeRep;
    procedure ExportExcel;
  public
    { Public declarations }
  end;

var
  TRLProcess7Form: TTRLProcess7Form;

implementation

uses AppUtils, cmDBUnit, cmUtils, TrProc7RepFrm, dezInfo;

{$R *.dfm}

procedure TTRLProcess7Form.AddFact;
var
  FName :string;
  vPLANCODE: Variant;
begin
  m1.DisableControls;
  try
    while not ds_fact.Eof do
    with ds_Fact do begin
      FName:=GetFName(FN('ZDATA').AsDateTime);
      vPLANCODE:= FN('PLANCODE').AsVariant;
      if vPLANCODE <> null then begin  //find plancode
        if m1.Locate('PCODE',vPLANCODE,[]) then begin
          m1.edit;
           //append fact value
          m1.FieldByName('FMLIST').AsVariant:=FN('FMLIST').AsVariant;
          m1.FieldByName('FMNAME').AsVariant:=FN('FMNAME').AsVariant;
          m1.FieldByName('FKONTRAGENT').AsVariant:=FN('FKONTRAGENT').AsVariant;
          m1.FieldByName('FKNAME').AsVariant:=FN('FKNAME').AsVariant;
          m1.FieldByName('NDOP').AsVariant:=FN('NDOP').AsVariant;
          m1.FieldByName('DPLACE').AsVariant:=FN('DPLACE').AsVariant;
          m1.FieldByName('DNUM').AsVariant:=FN('DNUM').AsVariant;
          m1.FieldByName(FName).AsVariant:=FN('SUMMA').AsVariant;
          m1.FieldByName('FSTATE').AsVariant:=FN('FSTATE').AsVariant;
          m1.FieldByName('FSTATENAME').AsVariant:=FN('FSTATENAME').AsVariant;
          m1.FieldByName('FCODE').AsVariant:=FN('FCODE').AsVariant;
          m1.post;
        end else begin
                   //error. find TRFACT.PLANCODE but not exist Plan record

                 end;

      end else begin //not locate PLANCODE
          m1.Append;
          m1.FieldByName('SNAME').AsVariant:=FN('SNAME').AsVariant;
          m1.FieldByName('HOUSE').AsVariant:=FN('HOUSE').AsVariant;
          m1.FieldByName('NOMER').AsVariant:=FN('NOMER').AsVariant;
          m1.FieldByName('DUNAME').AsVariant:=FN('DUNAME').AsVariant;
          m1.FieldByName('FMLIST').AsVariant:=FN('FMLIST').AsVariant;
          m1.FieldByName('FMNAME').AsVariant:=FN('FMNAME').AsVariant;
          m1.FieldByName('FKONTRAGENT').AsVariant:=FN('FKONTRAGENT').AsVariant;
          m1.FieldByName('FKNAME').AsVariant:=FN('FKNAME').AsVariant;
          m1.FieldByName('NDOP').AsVariant:=FN('NDOP').AsVariant;
          m1.FieldByName('DPLACE').AsVariant:=FN('DPLACE').AsVariant;
          m1.FieldByName('DNUM').AsVariant:=FN('DNUM').AsVariant;
          m1.FieldByName(FName).AsVariant:=FN('SUMMA').AsVariant;
          m1.FieldByName('FSTATE').AsVariant:=FN('FSTATE').AsVariant;
          m1.FieldByName('FSTATENAME').AsVariant:=FN('FSTATENAME').AsVariant;
          m1.FieldByName('FCODE').AsVariant:=FN('FCODE').AsVariant;
          m1.FieldByName('MANAGER').AsVariant:=FN('WORKER').AsVariant;
          m1.post;
      end;

      Next;
    end;
  finally
    m1.EnableControls;
  end;
end;

procedure TTRLProcess7Form.AddFact1;
var
  FName :string;
begin
  while not ds_fact1.Eof do
  with ds_Fact1 do begin
    FName:=GetFName(FN('ZDATA').AsDateTime);
    if FN('PLANCODE').AsVariant<>null then begin  //find plancode
      if m2.Locate('PCODE',FN('PLANCODE').AsVariant,[]) then begin
        m2.edit;
         //append fact value
        m2.FieldByName('FMLIST').AsVariant:=FN('FMLIST').AsVariant;
        m2.FieldByName('FMNAME').AsVariant:=FN('FMNAME').AsVariant;
        m2.FieldByName('FKONTRAGENT').AsVariant:=FN('FKONTRAGENT').AsVariant;
        m2.FieldByName('FKNAME').AsVariant:=FN('FKNAME').AsVariant;
        m2.FieldByName('NDOP').AsVariant:=FN('NDOP').AsVariant;
        m2.FieldByName('DPLACE').AsVariant:=FN('DPLACE').AsVariant;
        m2.FieldByName('DNUM').AsVariant:=FN('DNUM').AsVariant;
        m2.FieldByName(FName).AsVariant:=FN('SUMMA').AsVariant;
        m2.FieldByName('FSTATE').AsVariant:=FN('FSTATE').AsVariant;
        m2.FieldByName('FSTATENAME').AsVariant:=FN('FSTATENAME').AsVariant;
        m2.FieldByName('FCODE').AsVariant:=FN('FCODE').AsVariant;
        m2.post;
      end else begin
                 //error. find TRFACT.PLANCODE but not exist Plan record

               end;

    end else begin //not locate PLANCODE
        m2.Append;
        m2.FieldByName('SNAME').AsVariant:=FN('SNAME').AsVariant;
        m2.FieldByName('HOUSE').AsVariant:=FN('HOUSE').AsVariant;
        m2.FieldByName('NOMER').AsVariant:=FN('NOMER').AsVariant;
        m2.FieldByName('FMLIST').AsVariant:=FN('FMLIST').AsVariant;
        m2.FieldByName('FMNAME').AsVariant:=FN('FMNAME').AsVariant;
        m2.FieldByName('FKONTRAGENT').AsVariant:=FN('FKONTRAGENT').AsVariant;
        m2.FieldByName('FKNAME').AsVariant:=FN('FKNAME').AsVariant;
        m2.FieldByName('NDOP').AsVariant:=FN('NDOP').AsVariant;
        m2.FieldByName('DPLACE').AsVariant:=FN('DPLACE').AsVariant;
        m2.FieldByName('DNUM').AsVariant:=FN('DNUM').AsVariant;
        m2.FieldByName(FName).AsVariant:=FN('SUMMA').AsVariant;
        m2.FieldByName('FSTATE').AsVariant:=FN('FSTATE').AsVariant;
        m2.FieldByName('FSTATENAME').AsVariant:=FN('FSTATENAME').AsVariant;
        m2.FieldByName('FCODE').AsVariant:=FN('FCODE').AsVariant;
        m2.FieldByName('MANAGER').AsVariant:=FN('WORKER').AsVariant;
        m2.post;
    end;
    Next;
  end;
end;

procedure TTRLProcess7Form.AddPlan;
begin
  m1.LoadFromDataSet(ds_trplan);
end;

procedure TTRLProcess7Form.AddReklama;
var
  FName: string;
  sum: Currency;
begin
  m1.DisableControls;
  try
    while not ds_Reklama.Eof do
    with ds_Reklama do begin
        if m1.Locate('HOUSE',FN('HOUSE').AsVariant,[]) then begin
          m1.edit;
           //append reklama value
          FName:='R'+FN('QUART').AsString;
          m1.FieldByName(FName).AsCurrency:= m1.FieldByName(FName).AsCurrency+
                                             FN('RSUM').AsCurrency;
          m1.post;
        end;
      Next;
    end;
  finally
    m1.EnableControls;
  end;
end;

procedure TTRLProcess7Form.AddReklama1;
begin
  while not ds_Reklama1.Eof do
  with ds_Reklama1 do begin
      //if m2.Locate('HOUSE',FN('HOUSE').AsVariant,[]) then begin
        m2.edit;
         //append reklama value
        m2.FieldByName('REKLAMA').AsCurrency:= FN('RSUM').AsCurrency;
        m2.post;
      //end;
    Next;
  end;
end;

procedure TTRLProcess7Form.btn_excelClick(Sender: TObject);
begin
  ExportExcel;
end;

procedure TTRLProcess7Form.btn_exClick(Sender: TObject);
begin
  MakeEditData;
end;

procedure TTRLProcess7Form.btn_execClick(Sender: TObject);
begin
  MekeData;
end;

procedure TTRLProcess7Form.btn_printClick(Sender: TObject);
begin
  PrintTypeRep;
end;

procedure TTRLProcess7Form.CalkSum;
var
  house, sumost, sum1, sum2,worksum,reklama, factsum, ST5Sum, plansum :variant;
  i, j :integer;
  FName, RName :string;
  procedure SetSum;
  begin
    m1.Prior;
   { if m1.FieldByName('HOUSE').AsVariant= 434 then
    ShowMessage('11');}
    m1.Edit;
    m1.FieldByName('sum1').AsCurrency:=worksum+sumost+reklama-factsum;
    m1.FieldByName('sum2').AsCurrency:=sum2;
    m1.FieldByName('WORKSUM').AsCurrency:=worksum;
    m1.FieldByName('BEGINOST').AsCurrency:=sumost;
    m1.FieldByName('FACT').AsCurrency:=factsum;
    m1.Post;
    m1.Next;
  end;
begin
  m1.DisableControls;
  m1.First;
  m1.SortedField:='';
  m1.SortedField:='HOUSE';
  while not m1.Eof do begin
    if house<>m1.FieldByName('HOUSE').AsVariant then begin
      if m1.RecNo>1 then SetSum;
      sum1:=0; sum2:=0; factsum:=0; ST5Sum:=0; plansum:=0;worksum:=0; reklama:=0;
      sumost:=m1.FieldByName('SUMOST').AsCurrency;
      plansum:=m1.FieldByName('SUMY').AsCurrency;

      //sum1:=sumost+m1.FieldByName('SUMY').AsCurrency;
      for i:=1 to 12 do begin
        FName:='M'+IntToStr(i);
        //if m1.FieldByName(FName).AsCurrency>0 then ShowMessage('11');
        factsum:=factsum +m1.FieldByName(FName).AsCurrency;
        if m1.FieldByName('FSTATE').AsVariant=5 then
        ST5Sum:=ST5Sum+ m1.FieldByName(FName).AsCurrency;
      end;
      for j:=1 to 4 do begin
        RName:='R'+IntToStr(j);
        reklama:=reklama+m1.FieldByName(RName).AsCurrency;
      end;
      sum2:=plansum+sumost+reklama-ST5Sum;
      sum1:=plansum+sumost+reklama-factsum;
      worksum:=plansum;
      //house:=m1.FieldByName('HOUSE').AsVariant;
    end else begin
      //factsum:=0; ST5Sum:=0;
      plansum:=m1.FieldByName('SUMY').AsCurrency;
      sumost:=m1.FieldByName('SUMOST').AsCurrency;
      for i:=1 to 12 do begin
        FName:='M'+IntToStr(i);
        //if m1.FieldByName(FName).AsCurrency>0 then ShowMessage('11');
        factsum:=factsum +m1.FieldByName(FName).AsCurrency;
        if m1.FieldByName('FSTATE').AsVariant=5 then
        ST5Sum:=ST5Sum+ m1.FieldByName(FName).AsCurrency;
      end;
      for j:=1 to 4 do begin
        RName:='R'+IntToStr(j);
        reklama:=reklama+m1.FieldByName(RName).AsCurrency;
      end;
      sum2:=sum2+plansum+reklama-ST5Sum;
      sum1:=sum1+plansum+reklama-factsum;
      worksum:=plansum;
      //house:=m1.FieldByName('HOUSE').AsVariant;
    end;
    house:=m1.FieldByName('HOUSE').AsVariant;
    m1.Next;
  end;
  SetSum; //last house
  m1.EnableControls;
end;

procedure TTRLProcess7Form.CalkSum1;
var
  house, sumost, sum1, sum2,worksum,reklama, factsum, ST5Sum, plansum :variant;
  i, j :integer;
  FName, RName :string;
  procedure SetSum;
  begin
    m2.Prior;
    m2.Edit;
    m2.FieldByName('sum1').AsCurrency:=sum1;
    m2.FieldByName('sum2').AsCurrency:=sum2;
    m2.FieldByName('WORKSUM').AsCurrency:=worksum;
    m2.FieldByName('BEGINOST').AsCurrency:=sumost;
    m2.Post;
    m2.Next;
  end;
begin
  m2.DisableControls;
  m2.First;
  m2.SortedField:='';
  m2.SortedField:='HOUSE';
  while not m2.Eof do begin
      sum1:=0; sum2:=0; factsum:=0; ST5Sum:=0; plansum:=0;worksum:=0; reklama:=0;
      sumost:=m2.FieldByName('SUMOST').AsCurrency;
      plansum:=m2.FieldByName('SUMY').AsCurrency;

      //sum1:=sumost+m1.FieldByName('SUMY').AsCurrency;
      for i:=1 to 12 do begin
        FName:='M'+IntToStr(i);
        factsum:=factsum +m2.FieldByName(FName).AsCurrency;
        if m2.FieldByName('FSTATE').AsVariant=5 then
        ST5Sum:=ST5Sum+ m2.FieldByName(FName).AsCurrency;
      end;
      reklama:=m2.FieldByName('REKLAMA').AsCurrency;
      sum2:=plansum+sumost+reklama-ST5Sum;
      sum1:=plansum+sumost+reklama-factsum;
      worksum:=plansum;
    m2.Next;
  end;
  SetSum; //last house
  m2.EnableControls;
end;

procedure TTRLProcess7Form.cbb_streetPropertiesEditValueChanged(Sender: TObject);
begin
  OpenHouse;
end;

procedure TTRLProcess7Form.clvb1M10CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[clvb1FSTATE.Index] = 5) then
  begin
    ACanvas.Font.Style := [fsBold];
    ACanvas.Font.Color := clRed;
  end;
end;

procedure TTRLProcess7Form.clvb1M11CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[clvb1FSTATE.Index] = 5) then
  begin
    ACanvas.Font.Style := [fsBold];
    ACanvas.Font.Color := clRed;
  end;
end;

procedure TTRLProcess7Form.clvb1M12CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[clvb1FSTATE.Index] = 5) then
  begin
    ACanvas.Font.Style := [fsBold];
    ACanvas.Font.Color := clRed;
  end;
end;

procedure TTRLProcess7Form.clvb1M1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[clvb1FSTATE.Index] = 5) then
  begin
    ACanvas.Font.Style := [fsBold];
    ACanvas.Font.Color := clRed;
  end;
end;

procedure TTRLProcess7Form.clvb1M2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[clvb1FSTATE.Index] = 5) then
  begin
    ACanvas.Font.Style := [fsBold];
    ACanvas.Font.Color := clRed;
  end;
end;

procedure TTRLProcess7Form.clvb1M3CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[clvb1FSTATE.Index] = 5) then
  begin
    ACanvas.Font.Style := [fsBold];
    ACanvas.Font.Color := clRed;
  end;
end;

procedure TTRLProcess7Form.clvb1M4CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[clvb1FSTATE.Index] = 5) then
  begin
    ACanvas.Font.Style := [fsBold];
    ACanvas.Font.Color := clRed;
  end;
end;

procedure TTRLProcess7Form.clvb1M5CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[clvb1FSTATE.Index] = 5) then
  begin
    ACanvas.Font.Style := [fsBold];
    ACanvas.Font.Color := clRed;
  end;
end;

procedure TTRLProcess7Form.clvb1M6CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[clvb1FSTATE.Index] = 5) then
  begin
    ACanvas.Font.Style := [fsBold];
    ACanvas.Font.Color := clRed;
  end;
end;

procedure TTRLProcess7Form.clvb1M7CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[clvb1FSTATE.Index] = 5) then
  begin
    ACanvas.Font.Style := [fsBold];
    ACanvas.Font.Color := clRed;
  end;
end;

procedure TTRLProcess7Form.clvb1M8CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[clvb1FSTATE.Index] = 5) then
  begin
    ACanvas.Font.Style := [fsBold];
    ACanvas.Font.Color := clRed;
  end;
end;

procedure TTRLProcess7Form.clvb1M9CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[clvb1FSTATE.Index] = 5) then
  begin
    ACanvas.Font.Style := [fsBold];
    ACanvas.Font.Color := clRed;
  end;
end;

procedure TTRLProcess7Form.CreateMem;
var
  i :Integer;
begin
  CreateField(m1,'PCODE',ftInteger);
  CreateField(m1,'STREET',ftInteger);
  CreateField(m1,'DUNAME',ftstring,128);
  CreateField(m1,'SNAME',ftString,128); //street
  CreateField(m1,'HOUSE',ftInteger);
  CreateField(m1,'NOMER',ftString,32);
  CreateField(m1,'MLIST',ftInteger);
  CreateField(m1,'MNAME',ftString,256); //mlist name
  CreateField(m1,'SUMOST',ftBCD);
  CreateField(m1,'SUMY',ftBCD);
  CreateField(m1,'KONTRAGENT',ftInteger);
  CreateField(m1,'KNAME',ftString,128); //kontragent name
  CreateField(m1,'MANAGER',ftInteger);
  CreateField(m1,'FACTCODE',ftInteger);
  CreateField(m1,'STATE',ftInteger);
  CreateField(m1,'NOTE',ftString,512);
  //
  CreateField(m1,'FCODE',ftInteger);
  CreateField(m1,'FMLIST',ftInteger);
  CreateField(m1,'FMNAME',ftString,256); //mlist name
  CreateField(m1,'FKONTRAGENT',ftInteger);
  CreateField(m1,'FKNAME',ftString,128); //kontragent name
  CreateField(m1,'NDOP',ftString,32);    //Ќомер дополнительного соглашени€
  CreateField(m1,'DPLACE',ftstring,128); //ћесто проведени€ ремонта
  CreateField(m1,'DNUM',ftstring,32);    //Ќомер дефектной ведомости
  CreateField(m1,'SUMMA',ftBCD);
  CreateField(m1,'PLANCODE',ftinteger);
  CreateField(m1,'FSTATE',ftinteger);
  CreateField(m1,'FSTATENAME',ftstring,128);
  CreateField(m1,'ZDATA',ftDate);
  CreateField(m1,'SUM1',ftBCD);
  CreateField(m1,'SUM2',ftBCD);
  for i:=1 to 12 do begin                  //month
    CreateField(m1,'M'+IntToStr(i),ftBCD);
  end;
  //
  CreateField(m1,'R1',ftBCD);
  CreateField(m1,'R2',ftBCD);
  CreateField(m1,'R3',ftBCD);
  CreateField(m1,'R4',ftBCD);
  //
  CreateField(m1,'FACT',ftBCD);
  CreateField(m1,'WORKSUM',ftBCD);
  CreateField(m1,'BEGINOST',ftbcd);
  m1.Indexes.Add.FieldName:='HOUSE';
  //m1.SortedField:='HOUSE';
  m1.open;
end;

procedure TTRLProcess7Form.CreateMem1;
var
  i :Integer;
begin
  CreateField(m2,'PCODE',ftInteger);
  CreateField(m2,'STREET',ftInteger);
  CreateField(m2,'SNAME',ftString,128); //street
  CreateField(m2,'HOUSE',ftInteger);
  CreateField(m2,'NOMER',ftString,32);
  CreateField(m2,'MLIST',ftInteger);
  CreateField(m2,'MNAME',ftString,256); //mlist name
  CreateField(m2,'SUMOST',ftBCD);
  CreateField(m2,'SUMY',ftBCD);
  CreateField(m2,'KONTRAGENT',ftInteger);
  CreateField(m2,'KNAME',ftString,128); //kontragent name
  CreateField(m2,'MANAGER',ftInteger);
  CreateField(m2,'FACTCODE',ftInteger);
  CreateField(m2,'STATE',ftInteger);
  CreateField(m2,'NOTE',ftString,512);
  //
  CreateField(m2,'FCODE',ftInteger);
  CreateField(m2,'FMLIST',ftInteger);
  CreateField(m2,'FMNAME',ftString,256); //mlist name
  CreateField(m2,'FKONTRAGENT',ftInteger);
  CreateField(m2,'FKNAME',ftString,128); //kontragent name
  CreateField(m2,'NDOP',ftString,32);    //Ќомер дополнительного соглашени€
  CreateField(m2,'DPLACE',ftstring,128); //ћесто проведени€ ремонта
  CreateField(m2,'DNUM',ftstring,32);    //Ќомер дефектной ведомости
  CreateField(m2,'SUMMA',ftBCD);
  CreateField(m2,'PLANCODE',ftinteger);
  CreateField(m2,'FSTATE',ftinteger);
  CreateField(m2,'FSTATENAME',ftstring,128);
  CreateField(m2,'ZDATA',ftDate);
  CreateField(m2,'SUM1',ftBCD);
  CreateField(m2,'SUM2',ftBCD);
  for i:=1 to 12 do begin                  //month
    CreateField(m2,'M'+IntToStr(i),ftBCD);
  end;
  //
  CreateField(m2,'REKLAMA',ftBCD);
  //
  CreateField(m2,'WORKSUM',ftBCD);
  CreateField(m2,'BEGINOST',ftbcd);
  m2.Indexes.Add.FieldName:='HOUSE';
  //m1.SortedField:='HOUSE';
  m2.open;
end;

procedure TTRLProcess7Form.ExportExcel;
begin
  vb1.BeginUpdate(lsimImmediate);
  try
  with xlr1 do begin
    Template:= AppPath+'rep\trL.xls';
    // Dictionary
    Dictionary.Clear;
    with Dictionary.Add do
    begin
      FieldName:='Y';
      ValueAsString:=msk_Y.EditValue;
    end;
    // Range
    with Bands.AddBand(xlrbtTitle) do
      Range:='A1:AA4';
    with Bands.AddBand(xlrbtMasterData) do
      Range:='A5:AA5';
    with Bands.AddBand(xlrbtSummary) do
    Range:='A6:AA6';
    Show;
  end;
  finally
    vb1.EndUpdate;
  end;
end;

procedure TTRLProcess7Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TTRLProcess7Form.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  CreateMem;
  CreateMem1;
  OpenDS;
end;


procedure TTRLProcess7Form.GetFact;
var
  i :integer;
begin
  with ds_fact do begin
    Close;
    MainWhereClause:='(EXTRACT(YEAR FROM( case' + #13#10 +
                    '           when tf.STATE = 0 then tf.DATA' + #13#10 +
                    '           when tf.STATE = 1 then tf.DDATE' + #13#10 +
                    '           when tf.STATE = 2 then tf.NCALCDATE' + #13 +
                    #10 + '           when tf.STATE = 3 then iif(td.d2 is ' +
                    'null,tf.NCALCDATE,td.d2 )' + #13#10 +
                    '           when tf.STATE = 4 then iif(td.d2 is ' +
                    'null,tf.NCALCDATE,td.d2 )' + #13#10 +
                    '           when tf.STATE = 5 then tf.ZD' + #13#10 +
                    '         end )))=:Y';
    ParamByName('Y').AsVariant:=msk_Y.EditValue;
    OrderClause:='tf.HOUSE, s.name,h.nomer';
    Open;
    AddFact;
  end;
end;

procedure TTRLProcess7Form.GetFact1;
var
  i :integer;
begin
  with ds_fact1 do begin
    Close;
    MainWhereClause:='(EXTRACT(YEAR FROM( case' + #13#10 +
                    '           when tf.STATE = 0 then tf.DATA' + #13#10 +
                    '           when tf.STATE = 1 then tf.DDATE' + #13#10 +
                    '           when tf.STATE = 2 then tf.NCALCDATE' + #13 +
                    #10 + '           when tf.STATE = 3 then tf.NCALCDATE' +
                    #13#10 +
                    '           when tf.STATE = 4 then tf.NCALCDATE' + #13 +
                    #10 + '           when tf.STATE = 5 then tf.ZD' + #13#10 +
                    '         end )))=:Y and tf.HOUSE=:house ';
    if cbb_manager.EditValue<>null then
    MainWhereClause:=MainWhereClause+' and mh.worker=:mn';
    if ParamExist('mn',i) then
    ParamByName('mn').AsVariant:=cbb_manager.EditValue;
    ParamByName('Y').AsVariant:=msk_Y.EditValue;
    ParamByName('house').AsVariant:=cbb_house.EditValue;
    OrderClause:='tf.HOUSE, s.name,h.nomer';
    Open;
    AddFact1;
  end;
end;

function TTRLProcess7Form.GetFName(AValue: TDateTime): string;
begin
  Result:='M'+VarToStr(MonthOf(AValue));
end;

procedure TTRLProcess7Form.GetPlan;
var
  i :integer;
begin
  with ds_trplan do begin
    Close;
    MainWhereClause:='TP.Y=:Y';
    ParamByName('Y').AsVariant:=msk_Y.EditValue;
    OrderClause:='H.STREET, nomer asc,tp.mlist desc';
    Open;
    AddPlan;
  end;
end;

procedure TTRLProcess7Form.GetPlan1;
var
  i :integer;
begin
  //CheckParams;
  with ds_plan1 do begin
    Close;
    if cbb_manager.EditValue=null then
    MainWhereClause:='TP.Y=:Y and TP.HOUSE=:house' else
    MainWhereClause:='TP.Y=:Y and TP.HOUSE=:house and tp.manager=:mn';
    if ParamExist('mn',i) then
    ParamByName('mn').AsVariant:=cbb_manager.EditValue;
    ParamByName('Y').AsVariant:=msk_Y.EditValue;
    ParamByName('house').AsVariant:=cbb_house.EditValue;
    OrderClause:='H.STREET, nomer asc,tp.mlist desc';
    Open;
    m2.LoadFromDataSet(ds_plan1);
  end;
end;

procedure TTRLProcess7Form.GetReklama;
var
  d1, d2 :TDateTime;
  i :integer;
begin
  d1:= StartOfAYear(msk_Y.EditValue);
  d2:= EndOfAYear(msk_Y.EditValue);
  with ds_reklama do begin
    Close;
    MainWhereClause:='HM.data between :d1 and :d2';
    ParamByName('d1').AsVariant:= d1;
    ParamByName('d2').AsVariant:= d2;
    GroupByClause:='HM.house, 2';
    Open;
    AddReklama;
  end;
end;

procedure TTRLProcess7Form.GetReklama1;
var
  d1, d2 :TDateTime;
  i :integer;
begin
  d1:= StartOfAYear(msk_Y.EditValue);
  d2:= EndOfAYear(msk_Y.EditValue);
  with ds_reklama1 do begin
    Close;
    MainWhereClause:='HM.data between :d1 and :d2 and HM.HOUSE=:house';
    if cbb_manager.EditValue<>null then
       MainWhereClause:=MainWhereClause+' and mh.worker=:w';
    if ParamExist('w',i) then
    ParamByName('w').AsVariant:=cbb_manager.EditValue;
    ParamByName('d1').AsVariant:= d1;
    ParamByName('d2').AsVariant:= d2;
    ParamByName('house').AsVariant:=cbb_house.EditValue;
    GroupByClause:='HM.house';
    Open;
    AddReklama1;
  end;
end;

procedure TTRLProcess7Form.grlc1Group3CaptionClick(Sender: TObject);
begin
  // report data
  grlc1Group1.Visible:=true;
end;

procedure TTRLProcess7Form.grlc1Group4CaptionClick(Sender: TObject);
begin
  //edit data
  grlc1Group1.Visible:=false;
end;

procedure TTRLProcess7Form.MakeEditData;
begin
  m2.close; m2.open;
  vb2.BeginUpdate;
  SplashVisibility(true,'ƒождитесь окончани€ операции.');
  try
    SetCapt('получаем данные по плану.');
    GetPlan1;
    SetCapt('получаем данные по факту.');
    GetFact1;
    SetCapt('получаем данные по рекламе.');
    GetReklama1;
    SetCapt('расчитываем итоги.');
    CalkSum1;
  finally
    SplashVisibility(false);
    vb2.EndUpdate;
  end;
end;

procedure TTRLProcess7Form.MekeData;
begin
  m1.close; m1.open;
  vb1.BeginUpdate;
  SplashVisibility(true,'ƒождитесь окончани€ операции.');
  try
    SetCapt('получаем данные по плану.');
    GetPlan;
    SetCapt('получаем данные по факту.');
    GetFact;
    //SetCapt('получаем данные по рекламе.');
    //GetReklama;
    SetCapt('расчитываем итоги.');
    CalkSum;
  finally
    SplashVisibility(false);
    vb1.EndUpdate;
  end;
end;

procedure TTRLProcess7Form.OpenDS;
begin
  ds_worker.Open;
  ds_STREET.Open;
end;

procedure TTRLProcess7Form.OpenHouse;
begin
  with ds_HOUSE do begin
    Close;
    if cbb_street.EditValue=null then Exit;
    MainWhereClause:='Street=:street';
    ParamByName('Street').AsVariant:=cbb_street.EditValue;
    Open;
  end;
end;

procedure TTRLProcess7Form.PrintTypeRep;
var
  F: TTrProc7RepForm;
begin
  F:= TTrProc7RepForm.Create(Application);
  F.itmlc1Item12.Visible:=false;
  try
    if F.ShowModal = mrOk then begin
      LRepTR.PrintRepType(ds_rep,4,F.dt1.Date,F.dt2.Date);
      fr.LoadFromFile('rep\repTR.fr3');
      fr.Variables['varD1'] := #39+DateToStr(F.dt1.Date)+#39;
      fr.Variables['varD2'] := #39+DateToStr(F.dt2.Date)+#39;
      fr.ShowReport();
    end;
  finally
    F.Free;
  end;
end;

procedure TTRLProcess7Form.xlr1FormatCell(Sender: TObject; Band: TEXLReportBand;
  RowInTemplate, RowInReport, ColumnInReport: Integer; Report: _Worksheet;
  const CellValue: OleVariant);
var
  R1, R2: String;
begin
  if (Band.BandType = xlrbtMasterData) and (ColumnInReport = 11) then
  begin
    R1 := 'L' + IntToStr(RowInReport);
    R2 := 'W' + IntToStr(RowInReport);
    if CellValue = 'завершено' then
    begin
      Report.Range[R1, R2].Font.Color := clRed;
      Report.Range[R1, R2].Font.Bold := True;
    end;
  end;
end;

initialization
 RegisterClass(TTRLProcess7Form);
end.


