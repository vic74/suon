unit UNFORESEENFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControl, Menus, StdCtrls, cxButtons,
  FibQuery,pFIBCacheQueries, pFIBProps,
  cxTextEdit, cxMaskEdit, cxGroupBox, cxRadioGroup, cxPropertiesStore,
  BaseForm,
  cxDropDownEdit, dxLayoutControlAdapters, dxLayoutContainer,
  dxSkinDevExpressStyle;

type
  TUNFORESEENForm = class(TDezModalForm)
    gr1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    itmlc1Item1: TdxLayoutItem;
    msk_year: TcxMaskEdit;
    btn1: TcxButton;
    itmlc1Item11: TdxLayoutItem;
    prop1: TcxPropertiesStore;
    cbb1: TcxComboBox;
    itmlc1Item12: TdxLayoutItem;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure SetSum(ProcName :string);
  public
    { Public declarations }
  end;

var
  UNFORESEENForm: TUNFORESEENForm;

implementation

uses cmDBUnit, AppUtils;

{$R *.dfm}

procedure TUNFORESEENForm.btn1Click(Sender: TObject);
begin
  if msk_year.EditText='' then begin
    Application.MessageBox('”кажите год!', 'ќшибка', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
    ModalResult:=mrCancel;
    Exit;
  end;
  if cbb1.ItemIndex=1 then
  SetSum('UNFORESEENLIFT') else
  SetSum('UNFORESEEN');
end;

procedure TUNFORESEENForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1, Self.Name);
end;

procedure TUNFORESEENForm.SetSum(ProcName :string);
var
  Q :TFIBQuery;
  //
  procedure Delt;
  var
    Q1 :TFIBQuery;
    tbl :string;
  begin
    if ProcName='UNFORESEENLIFT' then tbl:='TRLPLAN' else
                                      tbl:='TRPLAN';

    Q1:=GetQueryForUse(cmDB.WT,'delete from '+tbl+' where Y=:Y1 and MLIST=1');
    Q1.Options:=[qoStartTransaction,qoAutoCommit];
    Q1.ParamByName('Y1').AsVariant:=msk_year.EditValue;
    try
      Q1.ExecQuery;
    finally
      FreeQueryForUse(Q1);
    end;
  end;
begin
  Q:=GetQueryForUse(cmDB.WT,
      'execute procedure '+ProcName+'(:Y1)');
  Q.Options:=[qoStartTransaction,qoAutoCommit];
  Q.ParamByName('Y1').AsVariant:=msk_year.EditValue;
  try
    Delt;
    Q.ExecQuery;
    ModalResult:=mrOk;
  finally
    FreeQueryForUse(Q);
  end;
end;

end.


