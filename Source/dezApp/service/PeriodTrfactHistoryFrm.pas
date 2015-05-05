unit PeriodTrfactHistoryFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinsdxBarPainter,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, dxBar,
  cxCalendar, cxBarEditItem, FIBDataSet, pFIBDataSet, cxPropertiesStore;

type
  TPeriodTrfactHistoryForm = class(TForm)
    BarManager1: TdxBarManager;
    br1: TdxBar;
    btn_Open: TdxBarButton;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    bItm_dt1: TcxBarEditItem;
    bItm_dt2: TcxBarEditItem;
    ds: TpFIBDataSet;
    src_ds: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1DATA: TcxGridDBColumn;
    clv1SUMMA: TcxGridDBColumn;
    clv1MONTHNAME: TcxGridDBColumn;
    clv1Y: TcxGridDBColumn;
    clv1OPER: TcxGridDBColumn;
    clv1OPERNAME: TcxGridDBColumn;
    clv1USERNAME: TcxGridDBColumn;
    clv1FIO: TcxGridDBColumn;
    clv1LASTTIME: TcxGridDBColumn;
    prop1: TcxPropertiesStore;
    procedure btn_OpenClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure GetData;
  public
    { Public declarations }
  end;

var
  PeriodTrfactHistoryForm: TPeriodTrfactHistoryForm;

implementation

{$R *.dfm}

uses cmDBUnit, AppUtils;

{ TPeriodTrfactHistoryForm }

procedure TPeriodTrfactHistoryForm.btn_OpenClick(Sender: TObject);
begin
  GetData;
end;

procedure TPeriodTrfactHistoryForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
end;

procedure TPeriodTrfactHistoryForm.GetData;
begin
  with ds do begin
    Close;
    ParamByName('d1').AsVariant:= bItm_dt1.EditValue;
    ParamByName('d2').AsVariant:= bItm_dt2.EditValue;
    Open;
  end;
end;

end.
