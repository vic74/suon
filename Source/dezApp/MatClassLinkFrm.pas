unit MatClassLinkFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Menus, StdCtrls, cxButtons,
  BaseForm,
  dxLayoutContainer, cxTextEdit, dxLayoutControl, cxLabel, dxSkinDevExpressStyle;

type
  TMatClassLinkForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc_1: TdxLayoutControl;
    txt_oldName: TcxTextEdit;
    itm_old: TdxLayoutItem;
    txt_NewName: TcxTextEdit;
    itm_New: TdxLayoutItem;
    btn_Ok: TcxButton;
    itm_Ok: TdxLayoutItem;
    btn_Cancel: TcxButton;
    itm_Cancel: TdxLayoutItem;
    grp__1Group1: TdxLayoutGroup;
    lbl_1: TcxLabel;
    itm__1Item1: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MatClassLinkForm: TMatClassLinkForm;

implementation

{$R *.dfm}

end.
