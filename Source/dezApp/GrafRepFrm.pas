unit GrafRepFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls,
  cxButtons, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxTextEdit, cxMaskEdit, cxCalendar, FIBDataSet, pFIBDataSet,
  dxLayoutControlAdapters, dxLayoutContainer, cxProgressBar, cxCheckBox,
  dxSkinDevExpressStyle, Vcl.ComCtrls, dxCore, cxDateUtils, KontragentRepository;

type
  TGrafRepForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grlc1Group1: TdxLayoutGroup;
    grlc1Group2: TdxLayoutGroup;
    dt1: TcxDateEdit;
    itm_dt1: TdxLayoutItem;
    dt2: TcxDateEdit;
    itm_dt2: TdxLayoutItem;
    cbb_po: TcxLookupComboBox;
    itm_po: TdxLayoutItem;
    grlc1Group3: TdxLayoutGroup;
    grlc1Group4: TdxLayoutGroup;
    grlc1Group5: TdxLayoutGroup;
    cbb_type: TcxLookupComboBox;
    itm_type: TdxLayoutItem;
    grlc1Group6: TdxLayoutGroup;
    grlc1Group7: TdxLayoutGroup;
    btn1: TcxButton;
    itmlc1Item1: TdxLayoutItem;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    ds_GRAPHSPEC: TpFIBDataSet;
    src_GRAPHSPEC: TDataSource;
    clv1GRAPHLIST: TcxGridDBColumn;
    clv1GTNAME: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1KNAME: TcxGridDBColumn;
    clv1CNT: TcxGridDBColumn;
    clv1CLOSED: TcxGridDBColumn;
    clv1DELAYED: TcxGridDBColumn;
    src_kontr: TDataSource;
    ds_GRAPHTO: TpFIBDataSet;
    src_GRAPHTO: TDataSource;
    cl_FLAT_CNT: TcxGridDBColumn;
    cl_ACTFACT: TcxGridDBColumn;
    cl_PROC: TcxGridDBColumn;
    spl_2: TdxLayoutSplitterItem;
    ds_GrapSpec: TpFIBDataSet;
    src_GrapSpec: TDataSource;
    itm_grd3: TdxLayoutItem;
    grd3: TcxGrid;
    v3: TcxGridDBTableView;
    clv2CODE: TcxGridDBColumn;
    clv2GRAPHLIST: TcxGridDBColumn;
    clv2STREET: TcxGridDBColumn;
    clv2Flag: TcxGridDBColumn;
    clv2STName: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2nomer: TcxGridDBColumn;
    clv2D1: TcxGridDBColumn;
    clv2D2: TcxGridDBColumn;
    clv2D3: TcxGridDBColumn;
    cl_PROSR: TcxGridDBColumn;
    ACTFACT: TcxGridDBColumn;
    FLAT_CNT: TcxGridDBColumn;
    PROC: TcxGridDBColumn;
    l_1: TcxGridLevel;
    cl_v1CODE: TcxGridDBColumn;
    cbb_Month: TcxComboBox;
    itmlc1Item11: TdxLayoutItem;
    clv1FLATPLAN: TcxGridDBColumn;
    clv1FLAT: TcxGridDBColumn;
    clv1pr1: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure v1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    fController: TKontragentController;
    procedure OpenGRAPHSPEC;
    function GetClause :string;
    procedure OpenDS;
    procedure LoadSpec;
  public
    { Public declarations }
  end;

var
  GrafRepForm: TGrafRepForm;

implementation

uses AppUtils, cmDBUnit, cmUtils;

{$R *.dfm}

procedure TGrafRepForm.btn1Click(Sender: TObject);
begin
  OpenGRAPHSPEC;
end;

procedure TGrafRepForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fController.Free;
  Action:=caFree;
end;

procedure TGrafRepForm.FormCreate(Sender: TObject);
begin
  fController:= TKontragentController.Create;
  LoadForm(prop1,Self.Name);
  OpenDS;
end;

function TGrafRepForm.GetClause: string;
begin
  Result:='gs.d1 between :d1 and :d2';
  if cbb_po.EditValue<>null then
     Result:=Result+' and gl.kontragent = :PO';
  if cbb_type.EditValue<>null then
     Result:=Result+' and gt.code = :GTO';
end;

procedure TGrafRepForm.LoadSpec;
begin
  with ds_GrapSpec do
  begin
    Close;
    MainWhereClause := 'GS.GRAPHLIST=:cod';
    ParamByName('cod').AsVariant := v1.GetColumnByFieldName('GRAPHLIST').EditValue;
    OrderClause := 's.name,h.nomer';
    Open;
  end;
  if v1.GetColumnByFieldName('CODE').EditValue<> null then
  case v1.GetColumnByFieldName('CODE').EditValue of
    3: begin   //ППР МКД (квартиры)
         ACTFACT.Visible := true;
         FLAT_CNT.Visible:= true;
         PROC.Visible:= true;
       end;
    4: begin   //ППР МКД (общее имущество)
         ACTFACT.Visible := true;
         FLAT_CNT.Visible:= true;
         PROC.Visible:= true;
       end;
    else begin   //ППР МКД (общее имущество)
           ACTFACT.Visible := false;
           FLAT_CNT.Visible:= false;
           PROC.Visible:= false;
         end;
  end
    else begin   //ППР МКД (общее имущество)
      ACTFACT.Visible := false;
      FLAT_CNT.Visible:= false;
      PROC.Visible:= false;
    end;
end;

procedure TGrafRepForm.OpenDS;
begin
  //ds_kontr.Open;
  src_kontr.DataSet:= fController.DS;
  fController.GetActiveKontragents(True,true);
  ds_GRAPHTO.Open;
end;

procedure TGrafRepForm.OpenGRAPHSPEC;
var
  i :integer;
  sql: string;
begin
  if (dt1.EditValue=null) or (dt2.EditValue=null) then begin
    Application.MessageBox('Укажите период!', 'Ошибка', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
    Exit;
  end;
  sql:=
    'select GS.GRAPHLIST, GT.NAME GTNAME, GL.KONTRAGENT, K.NAME KNAME,' + #13 +
    #10 +
    '       GLT.CODE, count(GS.D1) CNT,' + #13#10 +
    '       sum(iif(GS.ISCLOSED = 0 and GS.D2 < current_date, 1, 0)) DELAYED,'
    + #13#10 +
    '       sum(iif(GS.ISCLOSED = 1, 1, 0)) CLOSED,' + #13#10 +
    '       sum(H.FLAT_CNT) FLAT_CNT, sum(iif(GS.ACTFACT is null, 0, ' +
    'GS.ACTFACT)) ACTFACT,' + #13#10 +
    '       iif(sum(H.FLAT_CNT) > 0 and sum(iif(GS.ACTFACT is null, 0, ' +
    'GS.ACTFACT)) > 0,' + #13#10 +
    '       (sum(iif(GS.ACTFACT is null, 0, GS.ACTFACT)) * 1.0) / ' +
    '(sum(H.FLAT_CNT) * 1.0) * 100, 0) PROC' + #13#10 +
    'from GRAPHSPEC GS' + #13#10 +
    'left outer join GRAPHLIST GL on GS.GRAPHLIST = GL.CODE' + #13#10 +
    'left outer join KONTRAGENT K on K.CODE = GL.KONTRAGENT' + #13#10 +
    'left outer join HOUSE H on H.CODE = GS.HOUSE' + #13#10 +
    'left outer join STREET S on S.CODE = GS.STREET' + #13#10 +
    'left outer join GRAPHTO GT on GT.CODE = GL.GRAPHTO' + #13#10 +
    'left outer join GRAPHTYPE GLT on GLT.CODE = GT.GRAPHTYPE';
  if cbb_Month.ItemIndex>0 then sql:=
    'select GS.GRAPHLIST, GT.NAME GTNAME, GL.KONTRAGENT, K.NAME KNAME,' + #13 +
    #10 +
    '       GLT.CODE, count(GS.D1) CNT,' + #13#10 +
    '       sum(iif(GS.ISCLOSED = 0 and GS.D2 < current_date, 1, 0)) DELAYED,'
    + #13#10 +
    '       sum(iif(GS.ISCLOSED = 1, 1, 0)) CLOSED,' + #13#10 +
    '       sum(H.FLAT_CNT) FLAT_CNT, sum(iif(GS.ACTFACT is null, 0, ' +
    'GS.ACTFACT)) ACTFACT,' + #13#10 +
    '       iif(sum(H.FLAT_CNT) > 0 and sum(iif(GS.ACTFACT is null, 0, ' +
    'GS.ACTFACT)) > 0,' + #13#10 +
    '       (sum(iif(GS.ACTFACT is null, 0, GS.ACTFACT)) * 1.0) / ' +
    '(sum(H.FLAT_CNT) * 1.0) * 100, 0) PROC,' + #13#10 +
    'sum(GM.FLATPLAN)FLATPLAN, sum(GM.FLAT) FLAT, '+ #13#10 +
    '(sum(GM.FLAT)*1.0 / (sum(GM.FLATPLAN))* 100) pr1'+ #13#10 +
    'from GRAPHSPEC GS' + #13#10 +
    'left outer join GRAPHLIST GL on GS.GRAPHLIST = GL.CODE' + #13#10 +
    'left outer join KONTRAGENT K on K.CODE = GL.KONTRAGENT' + #13#10 +
    'left outer join HOUSE H on H.CODE = GS.HOUSE' + #13#10 +
    'left outer join STREET S on S.CODE = GS.STREET' + #13#10 +
    'left outer join GRAPHTO GT on GT.CODE = GL.GRAPHTO' + #13#10 +
    'left outer join GRAPHTYPE GLT on GLT.CODE = GT.GRAPHTYPE' + #13#10 +
    'left outer join GRAPHSPECM GM on GM.GRAPHSPEC = GS.CODE and GM.M=:M';

  with ds_GRAPHSPEC do begin
    Close;
    SelectSQL.Text:= sql;
    MainWhereClause:=GetClause;
    if ParamExist('PO',i) then
       ParamByName('PO').AsVariant:=cbb_po.EditValue;
    if ParamExist('GTO',i) then
       ParamByName('GTO').AsVariant:=cbb_type.EditValue;
    if ParamExist('M',i) then
       ParamByName('M').AsVariant:= cbb_Month.ItemIndex;
    ParamByName('d1').AsVariant:=dt1.EditValue;
    ParamByName('d2').AsVariant:=dt2.EditValue;
    //if cbb_Month.ItemIndex>0 then
    //GroupByClause:='1, GT.NAME, GL.KONTRAGENT, K.NAME,GLT.CODE,GM.FLATPLAN, ' +
    //              'GM.FLAT' else
    GroupByClause:='1, GT.NAME, GL.KONTRAGENT, K.NAME,GLT.CODE';
    Open;
  end;
end;

procedure TGrafRepForm.v1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  LoadSpec;
end;

procedure TGrafRepForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN :LoadSpec;
  end;
end;

initialization
 RegisterClass(TGrafRepForm);
end.



