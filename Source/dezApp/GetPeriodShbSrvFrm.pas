unit GetPeriodShbSrvFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControl, Menus, StdCtrls, cxButtons,
  cxMaskEdit, cxTextEdit, cxDropDownEdit, cxPropertiesStore,
  BaseForm,
  dxLayoutControlAdapters, dxLayoutContainer, dxSkinDevExpressStyle;

type
  TGetPeriodShbSrvForm = class(TDezModalForm)
    gr1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    itm_M: TdxLayoutItem;
    cbb_M: TcxComboBox;
    itm_Y: TdxLayoutItem;
    msk_Y: TcxMaskEdit;
    grlc1Group1: TdxLayoutGroup;
    btn_Ok: TcxButton;
    itm_Ok: TdxLayoutItem;
    btn_Cancel: TcxButton;
    itm_Cancel: TdxLayoutItem;
    grlc1Group2: TdxLayoutGroup;
    prop1: TcxPropertiesStore;
    procedure FormCreate(Sender: TObject);
    procedure btn_OkClick(Sender: TObject);
    procedure btn_CancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GetPeriodShbSrvForm: TGetPeriodShbSrvForm;

implementation

uses AppUtils;

{$R *.dfm}

procedure TGetPeriodShbSrvForm.btn_CancelClick(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure TGetPeriodShbSrvForm.btn_OkClick(Sender: TObject);
begin
  ModalResult:=mrOk;
end;

procedure TGetPeriodShbSrvForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,self.Name);
end;

end.
