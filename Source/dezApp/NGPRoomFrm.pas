unit NGPRoomFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinDevExpressStyle, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, FIBDataSet, pFIBDataSet, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, dxSkinsdxBarPainter, dxBar;

type
  TNGPRoomForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grplc1Group1: TdxLayoutGroup;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itmlc1Item1: TdxLayoutItem;
    ds_NGPROOM: TpFIBDataSet;
    src_NGPROOM: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1A: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1SQ: TcxGridDBColumn;
    clv1FLOOR: TcxGridDBColumn;
    clv1TS: TcxGridDBColumn;
    clv1SB: TcxGridDBColumn;
    clv1TARGET: TcxGridDBColumn;
    clv1SNAME: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    grplc1Group2: TdxLayoutGroup;
    doc1: TdxBarDockControl;
    itmlc1Item11: TdxLayoutItem;
    bm1: TdxBarManager;
    bar1: TdxBar;
    btn_Open: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_OpenClick(Sender: TObject);
    procedure clv1APropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    procedure OpenNGP;
    procedure PrepareDS;
  public
    { Public declarations }
  end;

var
  NGPRoomForm: TNGPRoomForm;

implementation

uses cmDBUnit;

{$R *.dfm}


procedure TNGPRoomForm.btn_OpenClick(Sender: TObject);
begin
  OpenNGP;
end;

procedure TNGPRoomForm.clv1APropertiesEditValueChanged(Sender: TObject);
begin
  v1.DataController.Post;
end;

procedure TNGPRoomForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TNGPRoomForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  PrepareDS;
end;

procedure TNGPRoomForm.OpenNGP;
begin
  with ds_NGPROOM do begin
    Close;

    Open;
  end;
end;

procedure TNGPRoomForm.PrepareDS;
begin
  DSOptoins(ds_NGPROOM,'','NGPROOM','CODE','NGPROOM_GEN',false);
end;

initialization
 RegisterClass(TNGPRoomForm);
end.
