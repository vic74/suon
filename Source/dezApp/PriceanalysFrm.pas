unit PriceanalysFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinscxPCPainter, dxLayoutContainer,
  dxSkinsdxBarPainter, cxCalendar, dxBar, cxBarEditItem, cxClasses, BaseForm,
  dxLayoutControl, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, Data.DB, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cmDBUnit,
  dxmdaset, FIBDataSet, pFIBDataSet, AppUtils, cxCheckBox, dxLayoutLookAndFeels,
  cxEditRepositoryItems, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPSCore, dxPScxCommon, cxPropertiesStore, cxCurrencyEdit,
  dxSkinDevExpressStyle, dxSkinOffice2010Blue;

type
  TPriceanalysForm = class(TDezModalForm)
    g1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    glc1Group1: TdxLayoutGroup;
    glc1Group2: TdxLayoutGroup;
    glc1Group3: TdxLayoutGroup;
    split1: TdxLayoutSplitterItem;
    docm1: TdxBarDockControl;
    itmlc1Item1: TdxLayoutItem;
    glc1Group4: TdxLayoutGroup;
    bm1: TdxBarManager;
    br1: TdxBar;
    itm_dt1: TcxBarEditItem;
    itm_dt2: TcxBarEditItem;
    btn_Exec: TdxBarButton;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itmlc1Item11: TdxLayoutItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itmlc1Item12: TdxLayoutItem;
    ds_kontr: TpFIBDataSet;
    md_K: TdxMemData;
    src_K: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    clv1FLAG: TcxGridDBColumn;
    ds_M: TpFIBDataSet;
    md_M: TdxMemData;
    src_M: TDataSource;
    clv2CLASSMAT: TcxGridDBColumn;
    clv2FULLNAME: TcxGridDBColumn;
    clv2KNAME: TcxGridDBColumn;
    clv2QUANTITY: TcxGridDBColumn;
    clv2PRICE: TcxGridDBColumn;
    clv2PROC: TcxGridDBColumn;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytcxlkndfl1: TdxLayoutCxLookAndFeel;
    EditRepository1: TcxEditRepository;
    CurrencyItemEditRepository1CurrencyItem1: TcxEditRepositoryCurrencyItem;
    docm2: TdxBarDockControl;
    itmlc1Item13: TdxLayoutItem;
    br2: TdxBar;
    btn_CheckAll: TdxBarButton;
    btn_Uncheck: TdxBarButton;
    ComponentPrinter1: TdxComponentPrinter;
    GridReportLink1: TdxGridReportLink;
    btn_Print: TdxBarButton;
    clv2PRICE1: TcxGridDBColumn;
    prop1: TcxPropertiesStore;
    StyleRepository1: TcxStyleRepository;
    Style1: TcxStyle;
    vStyleSheet1: TcxGridTableViewStyleSheet;
    vStyleSheet2: TcxGridTableViewStyleSheet;
    Style2: TcxStyle;
    Style3: TcxStyle;
    Style4: TcxStyle;
    Style5: TcxStyle;
    Style6: TcxStyle;
    Style7: TcxStyle;
    Style8: TcxStyle;
    Style9: TcxStyle;
    Style10: TcxStyle;
    Style11: TcxStyle;
    Style12: TcxStyle;
    Style13: TcxStyle;
    Style14: TcxStyle;
    Style15: TcxStyle;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure clv1FLAGPropertiesEditValueChanged(Sender: TObject);
    procedure btn_ExecClick(Sender: TObject);
    procedure btn_CheckAllClick(Sender: TObject);
    procedure btn_UncheckClick(Sender: TObject);
    procedure btn_PrintClick(Sender: TObject);
  private
    { Private declarations }
    fCodeKontr: string;
    procedure CreateMem;
    procedure OpenDS;
    procedure GetKontrCode;
    procedure MakeData;
    procedure CheckPO(isChecked: Boolean = true);
  public
    { Public declarations }
    fCodeMat: string;
    fD1, fD2: Variant;
  end;

var
  PriceanalysForm: TPriceanalysForm;

implementation

{$R *.dfm}

procedure TPriceanalysForm.btn_CheckAllClick(Sender: TObject);
begin
  CheckPO;
end;

procedure TPriceanalysForm.btn_ExecClick(Sender: TObject);
begin
  MakeData;
end;

procedure TPriceanalysForm.btn_PrintClick(Sender: TObject);
begin
  GridReportLink1.Preview();
end;

procedure TPriceanalysForm.btn_UncheckClick(Sender: TObject);
begin
  CheckPO(false);
end;

procedure TPriceanalysForm.CheckPO(isChecked: Boolean);
begin
  v1.BeginUpdate(lsimImmediate);
  try
    with md_K do begin
      DisableControls;
      try
        First;
        while not EOF do begin
           Edit;
            FieldByName('FLAG').AsBoolean:= isChecked;
           Post;
          Next;
        end;
      finally
        EnableControls;
      end;
    end;
  finally
    v1.EndUpdate;
  end;
end;

procedure TPriceanalysForm.clv1FLAGPropertiesEditValueChanged(Sender: TObject);
begin
  v1.DataController.Post();
end;

procedure TPriceanalysForm.CreateMem;
begin
  CreateField(md_K, 'FLAG', ftBoolean);
  CreateField(md_K, 'CODE', ftInteger);
  CreateField(md_K, 'NAME', ftString,128);
  md_K.Open;
  //
  CreateField(md_M, 'CLASSMAT', ftInteger);
  CreateField(md_M, 'FULLNAME', ftString, 256);
  CreateField(md_M, 'KNAME', ftString, 128);
  CreateField(md_M, 'QUANTITY', ftBCD);
  CreateField(md_M, 'PRICE', ftBCD);
  CreateField(md_M, 'PROC', ftBCD);
  CreateField(md_M, 'PRICE1', ftFloat);
  md_M.Open;
end;

procedure TPriceanalysForm.FormCreate(Sender: TObject);
begin
  //
  CreateMem;
  OpenDS;
end;

procedure TPriceanalysForm.FormShow(Sender: TObject);
begin
  itm_dt1.EditValue:= fD1;
  itm_dt2.EditValue:= fD2;
end;

procedure TPriceanalysForm.GetKontrCode;
begin
  fCodeKontr:= '';
  v1.BeginUpdate(lsimImmediate);
  try
    with md_K do begin
      First;
      while not Eof do begin
        if FieldByName('FLAG').AsBoolean = true then
        if fCodeKontr = '' then
           fCodeKontr:= FieldByName('CODE').AsString else
           fCodeKontr:= fCodeKontr + ',' + FieldByName('CODE').AsString;
        Next;
      end;
    end;
  finally
    v1.EndUpdate;
  end;
end;

procedure TPriceanalysForm.MakeData;

  procedure MakeProc;
  var
    mCode, mPrice: Variant;
  begin
    with md_M do begin
      md_M.First;
      while not md_M.Eof do begin
        if mCode<> FieldByName('CLASSMAT').AsVariant then begin
          mCode:= FieldByName('CLASSMAT').AsVariant;
          mPrice:= FieldByName('PRICE').AsVariant;
          //md_M.Edit;
          //  FieldByName('PROC').AsCurrency:= 0;
          //md_M.Post;
        end else begin
          md_M.Edit;
          FieldByName('PROC').AsCurrency:=
                             FieldByName('PRICE').AsCurrency * 100/mPrice - 100;
          md_M.Post;
        end;
        md_M.Next;
      end;
    end;
  end;
begin
  // загружаем информацию по метериалам
  GetKontrCode;
  if fCodeKontr = '' then
     raise dezException.Create('Не указаны подрядные организации!');
  md_M.Close; md_M.Open;
  v2.BeginUpdate(lsimImmediate);
  try
    with ds_M do begin
      Close;
      MainWhereClause:= 'ws.KONTRAGENT in ('+fCodeKontr+') and ws.CLASSMAT in ('+fCodeMat+
                        ') and ws.DATA between :d1 and :d2';
      ParamByName('D1').AsVariant:= itm_dt1.EditValue;
      ParamByName('D2').AsVariant:= itm_dt2.EditValue;
      GroupByClause:='ws.CLASSMAT,c.FULLNAME, k.NAME';
      OrderClause:='c.FULLNAME ,5';
      Open;

      md_M.LoadFromDataSet(ds_M);
    end;
    MakeProc;
  finally
    v2.EndUpdate;
    v2.ViewData.Expand(true);
  end;
end;

procedure TPriceanalysForm.OpenDS;
begin
  // открываем список контрагентов
  ds_kontr.CloseOpen(false);
  with md_K do begin
    Close; Open;
    LoadFromDataSet(ds_kontr);
    First;
  end;
end;

end.
