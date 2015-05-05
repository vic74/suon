unit ObjOSEditFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxCalc, cxDBEdit, cxBlobEdit, cxMemo, dxLayoutContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl, Data.DB,
  FIBDataSet, pFIBDataSet, dxSkinOffice2010Blue, dxSkinDevExpressStyle;

type
  TObjOSEditForm = class(TForm)
    lgrp1: TdxLayoutGroup;
    LControl1: TdxLayoutControl;
    dt1: TcxDBDateEdit;
    LItemLControl1Item1: TdxLayoutItem;
    mmo_result: TcxDBMemo;
    LItemLControl1Item11: TdxLayoutItem;
    clc1: TcxDBCalcEdit;
    LItemLControl1Item14: TdxLayoutItem;
    btn_Cancel: TcxButton;
    LItemLControl1Item15: TdxLayoutItem;
    btn_Ok: TcxButton;
    LItemLControl1Item16: TdxLayoutItem;
    lgrpLControl1Group1: TdxLayoutGroup;
    dlgOpen1: TOpenDialog;
    ds1_TRFACTOBJ: TpFIBDataSet;
    src_TRFACTOBJ: TDataSource;
    procedure btn_SaveClick(Sender: TObject);
    procedure btn_DeleteClick(Sender: TObject);
    procedure btn_OkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure LoadFileToServer;
    procedure DeleteFileFromServer;
    procedure OpenDS;
  public
    { Public declarations }
    TrFact, Code: Variant;
    stype: Integer;
  end;

var
  ObjOSEditForm: TObjOSEditForm;

implementation

{$R *.dfm}

uses cmDBUnit, AppUtils;

procedure TObjOSEditForm.btn_DeleteClick(Sender: TObject);
begin
  DeleteFileFromServer;
end;

procedure TObjOSEditForm.btn_OkClick(Sender: TObject);
var
  Fname: string;
begin
  case stype of
    0: begin
         Fname:= 'TRFACT';
    end;
    1: begin
         Fname:= 'TRLFACT';
    end;
  end;
  ds1_TRFACTOBJ.FN(Fname).AsVariant:= TrFact;
  ds1_TRFACTOBJ.Post;
end;

procedure TObjOSEditForm.btn_SaveClick(Sender: TObject);
begin
  LoadFileToServer;
end;

procedure TObjOSEditForm.DeleteFileFromServer;
begin
  if Application.MessageBox('Вы действительно хотите удалить файл с сервера?',
    'Предупреждение', MB_YESNO + MB_TOPMOST) = IDYES then
  with ds1_TRFACTOBJ do begin
    Edit;
    FN('OSDOCFILE').AsVariant:= null;
    Post;
  end;
end;

procedure TObjOSEditForm.FormCreate(Sender: TObject);
begin
    dt1.EditValue := Now;
end;

procedure TObjOSEditForm.FormShow(Sender: TObject);
begin
  OpenDS;
end;

procedure TObjOSEditForm.LoadFileToServer;
begin
  if dlgOpen1.Execute then
  if not CheckLimitSize(dlgOpen1.FileName, 'mb', 2) then begin
    with ds1_TRFACTOBJ do begin
      Edit;
      TBlobField(FN('OSDOCFILE')).LoadFromFile(dlgOpen1.FileName);
      FN('OSDOCFILENAME').AsVariant:= ExtractFileName(dlgOpen1.FileName);
      Post;
    end;
  end else
    raise dezException.Create('Размер файла превышает 2 мб!'+#10#13+
                              '    Операция отменена!');
end;

procedure TObjOSEditForm.OpenDS;
var
  TName, FName: string;
begin
  case stype of
    0: begin
      TName:= 'TRFACT$OBJ';
      FName:= 'TRFACT';
    end;
    1: begin
      TName:= 'TRLFACT$OBJ';
      FName:= 'TRLFACT';
    end;
  end;
  DSOptoins(ds1_TRFACTOBJ,'SELECT * FROM '+TName,TName,'CODE',TName+'_GEN', false);

  with ds1_TRFACTOBJ do begin
    Close;
    if Code <> null then begin
       MainWhereClause:= 'CODE = :CODE';
       ParamByName('CODE').AsVariant:= Code;
    end else begin
      MainWhereClause:= FName+' = :TRFACT';
      ParamByName('TRFACT').AsVariant:= TRFACT;
    end;
    Open;
  end;
end;

end.
