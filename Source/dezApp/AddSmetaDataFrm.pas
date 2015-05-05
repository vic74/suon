unit AddSmetaDataFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinDevExpressStyle, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, cxContainer, cxEdit, DB,
  BaseForm,
  FIBDataSet, pFIBDataSet, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxLayoutLookAndFeels, dxLayoutContainer,
  StdCtrls, cxRadioGroup, dxLayoutControl, Menus, cxButtons, cxPropertiesStore;

type
  TAddSmetaDataForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    cnt1: TdxLayoutControl;
    grpcnt1Group1: TdxLayoutGroup;
    grpcnt1Group2: TdxLayoutGroup;
    rb1: TcxRadioButton;
    itmcnt1Item1: TdxLayoutItem;
    laf1: TdxLayoutLookAndFeelList;
    lcaf1: TdxLayoutCxLookAndFeel;
    rb2: TcxRadioButton;
    itmcnt1Item11: TdxLayoutItem;
    rb3: TcxRadioButton;
    itmcnt1Item12: TdxLayoutItem;
    PerGr: TdxLayoutGroup;
    cbb_M: TcxComboBox;
    itmcnt1Item13: TdxLayoutItem;
    msk_Y: TcxMaskEdit;
    itmcnt1Item14: TdxLayoutItem;
    btn_Ok: TcxButton;
    itmcnt1Item15: TdxLayoutItem;
    btn_Cancel: TcxButton;
    itmcnt1Item16: TdxLayoutItem;
    prop1: TcxPropertiesStore;
    ds_kontr: TpFIBDataSet;
    src_kontr: TDataSource;
    procedure rb1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rb3Click(Sender: TObject);
    procedure rb2Click(Sender: TObject);
    procedure btn_OkClick(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDS;
  public
    { Public declarations }
    aType: Variant;
  end;

var
  AddSmetaDataForm: TAddSmetaDataForm;

implementation

uses cmDBUnit, AppUtils;

{$R *.dfm}

procedure TAddSmetaDataForm.btn_OkClick(Sender: TObject);
begin
  ModalResult:= mrOk;
end;

procedure TAddSmetaDataForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1, Self.Name);
  OpenDS;
  aType:= 1;
end;

procedure TAddSmetaDataForm.OpenDS;
begin
  //ds_SRVDOG.CloseOpen(false);
  //ds_kontr.Open;
end;

procedure TAddSmetaDataForm.rb1Click(Sender: TObject);
begin
  //dogItem.Visible:= rb1.Checked;
  PerGr.Visible:= rb3.Checked;
  aType:= 1;
end;

procedure TAddSmetaDataForm.rb2Click(Sender: TObject);
begin
  PerGr.Visible:= rb3.Checked;
  aType:= 2;
end;

procedure TAddSmetaDataForm.rb3Click(Sender: TObject);
begin
  PerGr.Visible:= rb3.Checked;
  aType:= 3;
end;

end.
