unit TrProc7RepFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControl, Menus, StdCtrls, cxButtons,
  cxDropDownEdit, cxTextEdit, cxMaskEdit, cxCalendar, cxPropertiesStore,
  BaseForm,
  dxLayoutControlAdapters, dxLayoutContainer, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinDevExpressStyle;

type
  TTrProc7RepForm = class(TDezModalForm)
    gr1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    dt1: TcxDateEdit;
    itmlc1Item1: TdxLayoutItem;
    dt2: TcxDateEdit;
    itmlc1Item11: TdxLayoutItem;
    cbb_type: TcxComboBox;
    itmlc1Item12: TdxLayoutItem;
    grlc1Group1: TdxLayoutGroup;
    btn_exec: TcxButton;
    itmlc1Item13: TdxLayoutItem;
    btn_cancel: TcxButton;
    itmlc1Item14: TdxLayoutItem;
    grlc1Group2: TdxLayoutGroup;
    prop1: TcxPropertiesStore;
    procedure FormCreate(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TrProc7RepForm: TTrProc7RepForm;

implementation

uses AppUtils;

{$R *.dfm}

procedure TTrProc7RepForm.btn_execClick(Sender: TObject);
begin
  if (dt1.EditValue = null) or (dt2.EditValue = null) then
      raise EMyException.Create('Проверте правильность ввода данных!');
  ModalResult:=mrOk;
end;

procedure TTrProc7RepForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,self.Name);
end;

end.
