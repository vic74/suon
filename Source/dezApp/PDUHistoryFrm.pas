unit PDUHistoryFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, Data.DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, FIBDataSet, pFIBDataSet,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxContainer, Vcl.ComCtrls,
  dxCore, cxDateUtils, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit, DateUtils,
  cxMaskEdit, cxDropDownEdit, cxCalendar, dxSkinDevExpressStyle;

type
  TPDUHistoryForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grplc1Group1: TdxLayoutGroup;
    grplc1Group2: TdxLayoutGroup;
    ds_history: TpFIBDataSet;
    src_history: TDataSource;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    lItmlc1Item1: TdxLayoutItem;
    clv1CODE: TcxGridDBColumn;
    clv1FACTDOCCODE: TcxGridDBColumn;
    clv1M: TcxGridDBColumn;
    clv1Y: TcxGridDBColumn;
    clv1DOCTYPE: TcxGridDBColumn;
    clv1HOUSESRV: TcxGridDBColumn;
    clv1MONTHNAME: TcxGridDBColumn;
    clv1TYPENAME: TcxGridDBColumn;
    clv1SRVNAME: TcxGridDBColumn;
    clv1OPERTYPE: TcxGridDBColumn;
    clv1PLANSUM: TcxGridDBColumn;
    clv1FACTSUM: TcxGridDBColumn;
    clv1CORRECT: TcxGridDBColumn;
    clv1LASTTIME: TcxGridDBColumn;
    clv1USERNAME: TcxGridDBColumn;
    clv1FIO: TcxGridDBColumn;
    dt1: TcxDateEdit;
    lItmlc1Item11: TdxLayoutItem;
    dt2: TcxDateEdit;
    lItmlc1Item12: TdxLayoutItem;
    btnExec: TcxButton;
    lItmlc1Item13: TdxLayoutItem;
    clv1OPERNAME: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExecClick(Sender: TObject);
  private
    { Private declarations }
    procedure GetData;
  public
    { Public declarations }
  end;

var
  PDUHistoryForm: TPDUHistoryForm;

implementation

uses cmDBUnit;

{$R *.dfm}


procedure TPDUHistoryForm.btnExecClick(Sender: TObject);
begin
  GetData;
end;

procedure TPDUHistoryForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TPDUHistoryForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
end;

procedure TPDUHistoryForm.GetData;
begin
  with ds_history do begin
    Close;
      MainWhereClause:= 'FH.LASTTIME >= :D1 AND FH.LASTTIME <= :D2';
      ParamByName('D1').AsVariant:= dt1.Date;
      ParamByName('D2').AsVariant:= DateUtils.EndOfTheDay(dt2.Date);
      OrderClause:= 'FH.Y DESC, FH.M DESC, FH.LASTTIME DESC, FH.FACTDOCCODE, FH.OPERTYPE';
    Open;
  end;
end;

initialization
 RegisterClass(TPDUHistoryForm);
end.
