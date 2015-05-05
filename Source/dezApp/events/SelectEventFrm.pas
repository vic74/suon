unit SelectEventFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxPropertiesStore,
  dxLayoutLookAndFeels, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, Menus, StdCtrls, cxButtons, cxGroupBox, cxRadioGroup,
  BaseForm,
  cxListBox, dxLayoutContainer, dxLayoutControlAdapters;

type
  TSelectEventForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lcntr1: TdxLayoutControl;
    LSkin1: TdxLayoutLookAndFeelList;
    LCxSkin1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    btn_Ok: TcxButton;
    Itm_Ok: TdxLayoutItem;
    btn_cancel: TcxButton;
    Itm_cancel: TdxLayoutItem;
    grp_btn: TdxLayoutGroup;
    lst1: TcxListBox;
    Itm_lst: TdxLayoutItem;
    procedure btn_OkClick(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    events :Integer;
  end;

var
  SelectEventForm: TSelectEventForm;

implementation

{$R *.dfm}

procedure TSelectEventForm.btn_cancelClick(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure TSelectEventForm.btn_OkClick(Sender: TObject);
var
  i :Integer;
begin
  for I := 0 to Lst1.Items.Count - 1 do
  if lst1.Selected[i] then
  begin
    events:=i+1;
    ModalResult:=mrOk;
  end;
end;


end.
