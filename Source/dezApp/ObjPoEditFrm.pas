unit ObjPoEditFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxMemo, cxDBEdit, dxLayoutContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, dxLayoutControl, Data.DB, FIBDataSet, pFIBDataSet,
  dxLayoutLookAndFeels, dxSkinOffice2010Blue, dxSkinDevExpressStyle;

type
  TObjPoEditForm = class(TForm)
    lgrp1: TdxLayoutGroup;
    LControl1: TdxLayoutControl;
    dt1: TcxDBDateEdit;
    LItemLControl1Item12: TdxLayoutItem;
    dt_fact1: TcxDBDateEdit;
    LItemLControl1Item13: TdxLayoutItem;
    mmo_Phase: TcxDBMemo;
    LItemLControl1Item1: TdxLayoutItem;
    lgrpLControl1Group1: TdxLayoutGroup;
    mmo_Result: TcxDBMemo;
    LItemLControl1Item11: TdxLayoutItem;
    dt_plan: TcxDBDateEdit;
    LItemLControl1Item14: TdxLayoutItem;
    btn_cancel: TcxButton;
    LItemLControl1Item15: TdxLayoutItem;
    btn_Ok: TcxButton;
    LItemLControl1Item16: TdxLayoutItem;
    lgrpLControl1Group2: TdxLayoutGroup;
    ds1_TRFACTOBJ: TpFIBDataSet;
    src_TRFACTOBJ: TDataSource;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytcxlkndfl1: TdxLayoutCxLookAndFeel;
    procedure FormCreate(Sender: TObject);
    procedure btn_OkClick(Sender: TObject);
  private
    { Private declarations }
    fCode: Variant;
    fIsEdit: Boolean;
    procedure OpenDS;
  public
    { Public declarations }
    TrFact: Variant;
    stype: Integer;
    fTable, fField: string;
    constructor Create(AOwner: TComponent; CODE: Variant; isEdit: Boolean = false; ftype: Integer = 0);
  end;

var
  ObjPoEditForm: TObjPoEditForm;

implementation

{$R *.dfm}

uses cmDBUnit, AppUtils;

procedure TObjPoEditForm.btn_OkClick(Sender: TObject);
begin
  ds1_TRFACTOBJ.FN(fField).AsVariant:= TrFact;
  ds1_TRFACTOBJ.Post;
end;

constructor TObjPoEditForm.Create(AOwner: TComponent; CODE: Variant;
  isEdit: Boolean; ftype: Integer);
begin
  inherited Create(AOwner);
  fCode:= CODE;
  fIsEdit:= isEdit;
  stype:= ftype;
  OpenDS;
end;

procedure TObjPoEditForm.FormCreate(Sender: TObject);
begin
  //
end;

procedure TObjPoEditForm.OpenDS;
begin
  case stype of
    0: begin
      fTable:= 'TRFACT$OBJ';
      fField:= 'TRFACT';
    end;
    1: begin
      fTable:= 'TRLFACT$OBJ';
      fField:= 'TRLFACT';
    end;
  end;
  DSOptoins(ds1_TRFACTOBJ,'SELECT * FROM '+fTable, fTable, 'CODE', fTable+'_GEN', false);
  with ds1_TRFACTOBJ do begin
    Close;
    if fIsEdit then begin
    if fCode = null then
       raise Exception.Create('Не передан код записи!');
       MainWhereClause:= 'CODE = :CODE';
       ParamByName('CODE').AsVariant:= fCode;
    end else begin
      MainWhereClause:= fField+' = :TRFACT';
      ParamByName('TRFACT').AsVariant:= TRFACT;
    end;
    Open;
  end;
end;

end.
