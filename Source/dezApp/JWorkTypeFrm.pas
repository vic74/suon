unit JWorkTypeFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, dxLayoutControl,
  FIBDataSet, pFIBDataSet, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxPropertiesStore, dxLayoutLookAndFeels, BaseForm, dxLayoutContainer;

type
  TJWorkTypeForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    ds_JWorkType: TpFIBDataSet;
    src_JWorkType: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure v1EditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure OpenDs;
  public
    { Public declarations }
  end;

var
  JWorkTypeForm: TJWorkTypeForm;

implementation

uses AppUtils, cmDBUnit;
{$R *.dfm}

procedure TJWorkTypeForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TJWorkTypeForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1, Self.Name);
  OpenDs;
end;

procedure TJWorkTypeForm.OpenDs;
begin
  DSOptoins(ds_JWorkType, '', 'JWORKTYPE', 'CODE', 'JWORKTYPE_GEN');
end;

procedure TJWorkTypeForm.v1EditKeyDown(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    Sender.DataController.Post;
end;

initialization

RegisterClass(TJWorkTypeForm);

end.
