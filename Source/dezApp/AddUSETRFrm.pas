unit AddUSETRFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControl, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DB,
  FIBDataSet, pFIBDataSet, dxLayoutLookAndFeels, Menus, StdCtrls, cxButtons,
  BaseForm,
  dxLayoutControlAdapters, dxLayoutContainer, dxSkinDevExpressStyle,
  KontragentRepository;

type
  TAddUSETRForm = class(TDezModalForm)
    gr1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    ds_worker: TpFIBDataSet;
    src_worker: TDataSource;
    itm_w: TdxLayoutItem;
    cbb_manager: TcxLookupComboBox;
    btn_OK: TcxButton;
    itm_OK: TdxLayoutItem;
    btn_Cancel: TcxButton;
    itm_Cancel: TdxLayoutItem;
    grlc1Group1: TdxLayoutGroup;
    cbb_kontr: TcxLookupComboBox;
    itm_kontr: TdxLayoutItem;
    src_kontr: TDataSource;
    ds_kont: TpFIBDataSet;
    procedure FormCreate(Sender: TObject);
    procedure btn_OKClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    fController: TKontragentController;
    procedure OpenDS;
  public
    { Public declarations }
  end;

var
  AddUSETRForm: TAddUSETRForm;

implementation

{$R *.dfm}

uses cmDBUnit;

procedure TAddUSETRForm.btn_OKClick(Sender: TObject);
begin
  if VarIsType(cbb_manager.EditValue,[varEmpty, varNull]) then
     raise dezException.Create('Укажите отв. исполнителя!');
  ModalResult:=mrOk;
end;

procedure TAddUSETRForm.FormCreate(Sender: TObject);
begin
  fController:= TKontragentController.Create;
  OpenDS;
end;

procedure TAddUSETRForm.FormDestroy(Sender: TObject);
begin
  fController.Free;
end;

procedure TAddUSETRForm.OpenDS;
begin
  ds_worker.Open;
  //ds_kont.open;
  src_kontr.DataSet:= fController.DS;
  fController.GetActiveKontragents();
end;

end.
