unit ReportFrm;

interface

uses
  dxRibbonForm,FIBQuery, pFIBCacheQueries,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinsdxRibbonPainter, dxSkinscxPCPainter,
  dxLayoutLookAndFeels, dxLayoutControl, cxClasses, dxRibbon,
  dxSkinsdxBarPainter, cxCustomData, cxStyles, cxEdit, DB, FIBDataSet,
  pFIBDataSet, cxCustomPivotGrid, cxPivotGrid, dxBar, cxDBPivotGrid,
  FIBDatabase, pFIBDatabase, dxmdaset, cxCalendar, cxBarEditItem, dxRibbonSkins,
  dxLayoutContainer;

type
  TReportForm = class(Tdxcustomribbonform)
    Ribbon1Tab1: TdxRibbonTab;
    Ribbon1: TdxRibbon;
    grp1: TdxLayoutGroup;
    lcntr1: TdxLayoutControl;
    LSkin1: TdxLayoutLookAndFeelList;
    LCxSkin1: TdxLayoutCxLookAndFeel;
    bm1: TdxBarManager;
    bar1: TdxBar;
    btn1: TdxBarButton;
    btn2: TdxBarButton;
    ds_rep: TpFIBDataSet;
    src_rep: TDataSource;
    pgrd1: TcxDBPivotGrid;
    Itm_pgrd1: TdxLayoutItem;
    flCode: TcxDBPivotGridField;
    flSRVDOG: TcxDBPivotGridField;
    flSHOWDATE: TcxDBPivotGridField;
    flSTYPE: TcxDBPivotGridField;
    flSYEAR: TcxDBPivotGridField;
    flSTATE: TcxDBPivotGridField;
    flHOUSENOM: TcxDBPivotGridField;
    flD1: TcxDBPivotGridField;
    flD2: TcxDBPivotGridField;
    flshdate: TcxDBPivotGridField;
    flDOGNOM: TcxDBPivotGridField;
    flKONTRNAME: TcxDBPivotGridField;
    flprov: TcxDBPivotGridField;
    flPLANED: TcxDBPivotGridField;
    mt_rep: TdxMemData;
    ed_d1: TcxBarEditItem;
    ed_d2: TcxBarEditItem;
    flWeek: TcxDBPivotGridField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
    procedure CreateMem;
    procedure AddData;
  public
    { Public declarations }
  end;

var
  ReportForm: TReportForm;

implementation

uses AppUtils, cmDBUnit;

{$R *.dfm}


procedure TReportForm.btn1Click(Sender: TObject);
begin
  ds_rep.CloseOpen(true);
end;

procedure TReportForm.btn2Click(Sender: TObject);
var
 i :Integer;
begin
  for I := 1 to pgrd1.FieldCount - 1 do
  pgrd1.Fields[i].ExpandAll;
end;

procedure TReportForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TReportForm.FormCreate(Sender: TObject);
begin
  ds_rep.CloseOpen(true);
  //flshdate.GroupIntervalRange
end;

procedure TReportForm.CreateMem;
begin
  CreateField(mt_rep,'Data',ftDate);
  CreateField(mt_rep,'Code',ftinteger);
  CreateField(mt_rep,'SRVDOG',ftinteger);
  CreateField(mt_rep,'DOGNOM',ftString,16);
  CreateField(mt_rep,'KONTRNAME',ftString,128);
  CreateField(mt_rep,'SHOWDATE',ftDate);
  CreateField(mt_rep,'HOUSENOM',ftString,32);
  CreateField(mt_rep,'PLANED',ftinteger);
  CreateField(mt_rep,'D1',ftDate);
  CreateField(mt_rep,'D2',ftDate);
  CreateField(mt_rep,'SHDATE',ftDate);
  CreateField(mt_rep,'PROV',ftinteger);
  mt_rep.Open
end;

procedure TReportForm.AddData;
var
  D1,D2,Data :TDateTime;
  procedure DsAdd;
  begin

  end;
begin
  D1:=ed_d1.EditValue;
  D2:=ed_d2.EditValue;
  Data:=D1;
  repeat
    mt_rep.Append;
    mt_rep.FieldByName('Data').AsDateTime:=Data;
    mt_rep.Post;
    Data:=Data+1;
  until D1>D2;

  with ds_rep do
  begin
    while not Eof do
    begin
      if FN('SHDATE').AsDateTime=null then
      DsAdd;

      Next;
    end;
  end;
end;

initialization
 RegisterClass(TReportForm);
end.
