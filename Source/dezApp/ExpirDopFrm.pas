unit ExpirDopFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinDevExpressStyle, dxSkinsdxBarPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, FIBDataSet, pFIBDataSet, dxBar, cxDBExtLookupComboBox, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxBarExtItems, cxBarEditItem, frxClass, frxDBSet, dezInfo,
  frxExportRTF, frxExportXLS, dezCommon, dxSkinsDefaultPainters;

type
  TExpirDopForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grplc1Group2: TdxLayoutGroup;
    bm1: TdxBarManager;
    bar1: TdxBar;
    btn_Exec: TdxBarButton;
    ds_EXPIRDOPSOG: TpFIBDataSet;
    src_EXPIRDOPSOG: TDataSource;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itmlc1Item1: TdxLayoutItem;
    clv1NDOPNUM: TcxGridDBColumn;
    clv1DOG: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1KNAME: TcxGridDBColumn;
    clv1TRFACT: TcxGridDBColumn;
    clv1NSUMMA: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1SNAME: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1MLIST: TcxGridDBColumn;
    clv1MNAME: TcxGridDBColumn;
    clv1D1: TcxGridDBColumn;
    clv1D2: TcxGridDBColumn;
    clv1CNTDAY: TcxGridDBColumn;
    clv1STATE: TcxGridDBColumn;
    clv1FSTATENAME: TcxGridDBColumn;
    clv1PENALTY_SUM: TcxGridDBColumn;
    cci1: TdxBarControlContainerItem;
    cbb1: TcxLookupComboBox;
    ds_kontr: TpFIBDataSet;
    src_kontr: TDataSource;
    fr: TfrxReport;
    dds1: TfrxDBDataset;
    btn_print: TdxBarButton;
    Xexp1: TfrxXLSExport;
    wexp1: TfrxRTFExport;
    btn_clear: TdxBarButton;
    btn_Expand: TdxBarButton;
    btn_Collapse: TdxBarButton;
    BarCombo1: TdxBarCombo;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_ExecClick(Sender: TObject);
    procedure btn_printClick(Sender: TObject);
    procedure btn_clearClick(Sender: TObject);
    procedure btn_ExpandClick(Sender: TObject);
    procedure btn_CollapseClick(Sender: TObject);
  private
    { Private declarations }
    procedure PrintReport;
    procedure SetRight;
    procedure Expand(value: boolean = true);
    procedure MakeGeneral;
    procedure MakeLift;
  public
    { Public declarations }
  end;

var
  ExpirDopForm: TExpirDopForm;

implementation

uses cmDBUnit;

{$R *.dfm}


procedure TExpirDopForm.btn_clearClick(Sender: TObject);
begin
  cbb1.EditValue:= null;
end;

procedure TExpirDopForm.btn_CollapseClick(Sender: TObject);
begin
  Expand(false);
end;

procedure TExpirDopForm.btn_ExecClick(Sender: TObject);
begin
  case BarCombo1.ItemIndex of
    0: MakeGeneral;
    1: MakeLift;
  end;
end;

procedure TExpirDopForm.btn_ExpandClick(Sender: TObject);
begin
  Expand;
end;

procedure TExpirDopForm.btn_printClick(Sender: TObject);
begin
  PrintReport;
end;

procedure TExpirDopForm.Expand(value: boolean);
begin
  if ds_EXPIRDOPSOG.IsEmpty then Exit;
  if value then
    v1.ViewData.Expand(true) else
    v1.ViewData.Collapse(True);
end;

procedure TExpirDopForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TExpirDopForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  ds_kontr.Open;
  SetRight;
end;

procedure TExpirDopForm.MakeGeneral;
begin
  with ds_EXPIRDOPSOG do begin
    Close;
    DataSet_ID:= 21;
    Prepare;
    MainWhereClause:='';
    clv1KNAME.GroupIndex:= -1;
    if cbb1.EditValue<> null then begin
      MainWhereClause:='KONTRAGENT =:KONTR';
      ParamByName('KONTR').AsVariant:= cbb1.EditValue;
      OrderClause:='KNAME, SNAME, NOMER, MNAME';
    end;
    Open;
    if cbb1.EditValue = null then begin
      clv1KNAME.GroupIndex:=0;
      clv1KNAME.Visible:= True;
    end;
  end;
end;

procedure TExpirDopForm.MakeLift;
begin
  with ds_EXPIRDOPSOG do begin
    Close;
    DataSet_ID:= 20;
    Prepare;
    MainWhereClause:='';
    clv1KNAME.GroupIndex:= -1;
    if cbb1.EditValue<> null then begin
      MainWhereClause:='KONTRAGENT =:KONTR';
      ParamByName('KONTR').AsVariant:= cbb1.EditValue;
      OrderClause:='KNAME, SNAME, NOMER, MNAME';
    end;
    Open;
    if cbb1.EditValue = null then begin
      clv1KNAME.GroupIndex:=0;
      clv1KNAME.Visible:= True;
    end;
  end;
end;

procedure TExpirDopForm.PrintReport;
var
  dognum, dogDate: Variant;
  procedure GetDogParam;
  begin
    if cbb1.EditValue = null then
       raise dezException.Create('”кажите подр€дную организацию!');
    dzPO.GetInfo(cbb1.EditValue);
    dognum:= dzPO.DogNom;
    dogDate:= dzPO.DogBegin;
  end;
begin
  GetDogParam;
  fr.LoadFromFile(ExtractFilePath(Application.ExeName)+'rep\expirdd.fr3');
  fr.Variables['varDogNum'] := #39+dognum+#39;
  fr.Variables['varDogData'] := #39+VarToStr(dogDate)+#39;
  fr.ShowReport;
end;

procedure TExpirDopForm.SetRight;
begin
  if ActiveUserType = 1 then begin
    cbb1.EditValue:= ActiveKontragent;
    cbb1.Enabled:= False;
  end else begin
    cbb1.Enabled:= True;
  end;
end;

initialization
 RegisterClass(TExpirDopForm);
end.
