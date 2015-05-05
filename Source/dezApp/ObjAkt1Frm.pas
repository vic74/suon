unit ObjAkt1Frm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxMemo, cxTextEdit, dxLayoutContainer, cxLabel,
  dxLayoutControl, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  Data.DB, FIBDataSet, pFIBDataSet, dxLayoutLookAndFeels, dxSkinOffice2010Blue,
  dxSkinDevExpressStyle;

type
  TObjAkt1Form = class(TForm)
    lgrp1: TdxLayoutGroup;
    LControl1: TdxLayoutControl;
    lgrpLControl1Group1: TdxLayoutGroup;
    lbl_POName: TcxLabel;
    LItemLControl1Item1: TdxLayoutItem;
    txt_FIO: TcxTextEdit;
    LItemLControl1Item11: TdxLayoutItem;
    txt_POST: TcxTextEdit;
    LItemLControl1Item12: TdxLayoutItem;
    lgrpLControl1Group2: TdxLayoutGroup;
    mmo_inspection: TcxMemo;
    LItemLControl1Item13: TdxLayoutItem;
    lgrpLControl1Group3: TdxLayoutGroup;
    mmo_result: TcxMemo;
    LItemLControl1Item14: TdxLayoutItem;
    lgrpLControl1Group4: TdxLayoutGroup;
    txt_POST1: TcxTextEdit;
    LItemLControl1Item15: TdxLayoutItem;
    txt_FIO1: TcxTextEdit;
    LItemLControl1Item16: TdxLayoutItem;
    lgrpLControl1Group5: TdxLayoutGroup;
    btn_Save: TcxButton;
    LItemLControl1Item17: TdxLayoutItem;
    btn_Cancel: TcxButton;
    LItemLControl1Item18: TdxLayoutItem;
    ds_TRFACTOBJTYPE: TpFIBDataSet;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytcxlkndfl1: TdxLayoutCxLookAndFeel;
    lgrpLControl1Group6: TdxLayoutGroup;
    txt_PostOS: TcxTextEdit;
    LItemLControl1Item19: TdxLayoutItem;
    txt_FIOOS: TcxTextEdit;
    LItemLControl1Item110: TdxLayoutItem;
    lbl1: TcxLabel;
    LItemLControl1Item111: TdxLayoutItem;
    procedure btn_SaveClick(Sender: TObject);
  private
    { Private declarations }
    fFIOOS: string;
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
    constructor Create(AOwner: TComponent; CODE: Variant; isEdit: Boolean = false; FIO: string = ''; ftype: integer = 0);

    //CODE: Variant; //TRFACT$OBJ.CODE
  end;

var
  ObjAkt1Form: TObjAkt1Form;

implementation

{$R *.dfm}

uses cmDBUnit, AppUtils;

{ TObjAkt1Form }

procedure TObjAkt1Form.btn_SaveClick(Sender: TObject);
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

procedure TObjAkt1Form.ClearControls;
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

constructor TObjAkt1Form.Create(AOwner: TComponent; CODE: Variant; isEdit: Boolean; FIO: string; ftype: integer);
begin
  inherited Create(AOwner);
  fCode:=Code;
  fIsEdit:= isEdit;
  fFIOOS:= FIO;
  stype:= ftype;
  PrepareDS(CODE, isEdit);
end;

procedure TObjAkt1Form.FillControls;
begin
  with ds_TRFACTOBJTYPE do begin
    // представитель ООО ДЕЗ
    if FN('FIOOS').AsVariant = null then
    txt_FIOOS.EditValue:= fFIOOS else
    txt_FIOOS.EditValue:= FN('FIOOS').AsVariant;
    txt_PostOS.EditValue:= FN('POSTOS').AsVariant;
    //
    txt_FIO.EditValue:= FN('FIO').AsVariant;
    txt_POST.EditValue:= FN('POST').AsVariant;
    mmo_inspection.EditValue:= FN('inspection').AsVariant;
    mmo_result.EditValue:= FN('resolution').AsVariant;
    txt_FIO1.EditValue:= FN('FIO1').AsVariant;
    txt_POST1.EditValue:= FN('POST1').AsVariant;
  end;
end;

procedure TObjAkt1Form.PrepareDS(CODE: Variant; isEdit: Boolean);
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
  //if isEdit then
     FillControls;
end;

procedure TObjAkt1Form.SaveData;
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
  try
    with ds_TRFACTOBJTYPE do begin
      if fIsEdit then Edit else Append;
      FN('FIO').AsVariant:= txt_FIO.EditingValue;
      FN('POST').AsVariant:= txt_POST.EditingValue;
      FN('INSPECTION').AsVariant:= mmo_inspection.EditingValue;
      FN('RESOLUTION').AsVariant:= mmo_result.EditingValue;
      FN('FIO1').AsVariant:= txt_FIO1.EditingValue;
      FN('POST1').AsVariant:= txt_POST1.EditingValue;
      FN('AKTTYPE').asVariant:= 1; //акт проверки качества
      FN(fField+'_OBJECT').asVariant:= fCode;
      FN('POSTOS').AsVariant:= txt_PostOS.EditingValue;
      FN('FIOOS').AsVariant:=  txt_FIOOS.EditingValue;
      Post;
    end;
    if fDS = nil then
       Exit;
    with fDS do begin
      Edit;
      FN('OSDOC').AsVariant:= ds_TRFACTOBJTYPE.FN('ID').AsVariant;
      Post;
    end;
  finally

  end;
end;

end.
