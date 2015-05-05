unit ObjAkt2Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinscxPCPainter, dxLayoutContainer,
  dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxMemo,
  cxTextEdit, Data.DB, FIBDataSet, pFIBDataSet, dxLayoutLookAndFeels,
  dxSkinOffice2010Blue, dxSkinDevExpressStyle;

type
  TObjAkt2Form = class(TForm)
    lgrp1: TdxLayoutGroup;
    LControl1: TdxLayoutControl;
    lgrpLControl1Group1: TdxLayoutGroup;
    txt_FIO: TcxTextEdit;
    LItemLControl1Item1: TdxLayoutItem;
    mmo_workList: TcxMemo;
    LItemLControl1Item11: TdxLayoutItem;
    lgrpLControl1Group2: TdxLayoutGroup;
    lgrpLControl1Group3: TdxLayoutGroup;
    mmo_matList: TcxMemo;
    LItemLControl1Item12: TdxLayoutItem;
    lgrpLControl1Group4: TdxLayoutGroup;
    lgrpLControl1Group5: TdxLayoutGroup;
    mmo_quality: TcxMemo;
    LItemLControl1Item13: TdxLayoutItem;
    mmo_resolution: TcxMemo;
    LItemLControl1Item14: TdxLayoutItem;
    lgrpLControl1Group6: TdxLayoutGroup;
    btn_Save: TcxButton;
    LItemLControl1Item15: TdxLayoutItem;
    btn_Cancel: TcxButton;
    LItemLControl1Item16: TdxLayoutItem;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytcxlkndfl1: TdxLayoutCxLookAndFeel;
    ds_TRFACTOBJTYPE: TpFIBDataSet;
    procedure btn_SaveClick(Sender: TObject);
  private
    { Private declarations }
    procedure FillControls;
    procedure ClearControls;
    procedure SaveData;
    procedure PrepareDS(CODE: Variant; isEdit: Boolean = false);
  public
    { Public declarations }
    fCode: Variant;
    fIsEdit: Boolean;
    fDS: TpFIBDataSet;
    stype: Integer;
    constructor Create(AOwner: TComponent; CODE: Variant; isEdit: Boolean = false; ftype: Integer = 0);
  end;

var
  ObjAkt2Form: TObjAkt2Form;

implementation

{$R *.dfm}

uses cmDBUnit, AppUtils;

{ TObjAkt2Form }

procedure TObjAkt2Form.btn_SaveClick(Sender: TObject);
begin
  try
    SaveData;
    ModalResult:= mrOk;
  except
    on E: Exception do begin
      ModalResult:= mrNone;
      raise Exception.Create(e.Message);
    end;
  end;
end;

procedure TObjAkt2Form.ClearControls;
var
  i: integer;
begin
  for i := 0 to ComponentCount -1 do begin
    if Components[i].ClassType = TcxTextEdit then
       (Components[i] as TcxTextEdit).Clear;
    if Components[i].ClassType = TcxMemo then
       (Components[i] as TcxMemo).Clear;
  end;
end;

constructor TObjAkt2Form.Create(AOwner: TComponent; CODE: Variant;
  isEdit: Boolean; ftype: integer);
begin
  inherited Create(AOwner);
  fCode:=Code;
  fIsEdit:= isEdit;
  stype:= ftype;
  PrepareDS(CODE, isEdit);
end;

procedure TObjAkt2Form.FillControls;
begin
  with ds_TRFACTOBJTYPE do begin
    txt_FIO.EditValue:= FN('COMMIS').AsVariant;
    mmo_workList.EditValue:= FN('workList').AsVariant;
    mmo_matList.EditValue:= FN('matList').AsVariant;
    mmo_quality.EditValue:= FN('quality').AsVariant;
    mmo_resolution.EditValue:= FN('resolution').AsVariant;
  end;
end;

procedure TObjAkt2Form.PrepareDS(CODE: Variant; isEdit: Boolean);
var
  fTable, fField: string;
begin
  case stype of
    0: begin
      fTable:= 'TRFACT$OBJ$TYPE';
      fField:= 'TRFACT';
    end;
    1: begin
      fTable:= 'TRLFACT$OBJ$TYPE';
      fField:= 'TRLFACT';
    end;
  end;

  AppUtils.DSOptoins(ds_TRFACTOBJTYPE,'SELECT * FROM '+fTable, fTable, 'ID',fField+'$OBJ$TYPE_GEN', false);
  if CODE = null then
     raise dezException.Create('Не определен код записи!'+sLineBreak+
                                'Сообщите разработчикам программы.');
  with ds_TRFACTOBJTYPE do begin
    Close;
    MainWhereClause:=fField+'_OBJECT = :CODE';
    ParamByName('CODE').AsVariant:= CODE;
    Open;
  end;

  if isEdit then
     FillControls;
end;

procedure TObjAkt2Form.SaveData;
var
  code: Variant;
  fTable, fField: string;
begin
  case stype of
    0: begin
      fTable:= 'TRFACT$OBJ$TYPE';
      fField:= 'TRFACT';
    end;
    1: begin
      fTable:= 'TRLFACT$OBJ$TYPE';
      fField:= 'TRLFACT';
    end;
  end;

  code:= ds_TRFACTOBJTYPE.Database.Gen_Id(fTable+'_GEN',1);
  with ds_TRFACTOBJTYPE do begin
    if fIsEdit then Edit else Append;
    if not fisEdit then
    FN('ID').AsVariant:= code;
    FN('COMMIS').AsVariant:= txt_FIO.EditValue;
    FN('workList').AsVariant:= mmo_workList.EditValue;
    FN('matList').AsVariant:= mmo_matList.EditValue;
    FN('quality').AsVariant:= mmo_quality.EditValue;
    FN('resolution').AsVariant:= mmo_resolution.EditValue;
      FN('AKTTYPE').asVariant:= 0; //акт освидетельствования скрытых работ
      FN(fField+'_OBJECT').asVariant:= fCode;
    Post;
  end;
    if fDS = nil then
       Exit;
    with fDS do begin
      Edit;
      FN('OSDOC').AsVariant:= code;
      Post;
    end;
end;

end.
