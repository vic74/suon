unit Ev2Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, dxLayoutLookAndFeels,
  dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, Menus, StdCtrls,
  cxButtons, cxMemo, cxRichEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxPropertiesStore, DB,
  BaseForm,
  FIBDataSet, pFIBDataSet, dxLayoutControlAdapters, dxLayoutContainer;

type
  TEv2Form = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lcntr1: TdxLayoutControl;
    LSkin1: TdxLayoutLookAndFeelList;
    LCxSkin1: TdxLayoutCxLookAndFeel;
    cbb_kat: TcxLookupComboBox;
    Itm_kat: TdxLayoutItem;
    rch_note: TcxRichEdit;
    Itm_note: TdxLayoutItem;
    grp_kat: TdxLayoutGroup;
    grp_note: TdxLayoutGroup;
    grp_usr: TdxLayoutGroup;
    cbb_usr: TcxLookupComboBox;
    Itm_usr: TdxLayoutItem;
    btn_Ok: TcxButton;
    Itm_ok: TdxLayoutItem;
    btn_inc: TcxButton;
    Itm_inc: TdxLayoutItem;
    grp_btn: TdxLayoutGroup;
    btn_cancel: TcxButton;
    Itm_cancel: TdxLayoutItem;
    prop1: TcxPropertiesStore;
    ds_worker: TpFIBDataSet;
    src_worker: TDataSource;
    ds_kategory: TpFIBDataSet;
    src_kat: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
    procedure btn_incClick(Sender: TObject);
    procedure btn_OkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure NewEvents;
    function CheckParam :Boolean;
    procedure ShowEditEvent;
    procedure OpenDs;
  public
    { Public declarations }
    fName :string;
    evedit :Boolean;
  end;

var
  Ev2Form: TEv2Form;

implementation

uses AppUtils, cmDBUnit, dezCommon, CommonDm;

{$R *.dfm}

procedure TEv2Form.btn_cancelClick(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure TEv2Form.btn_incClick(Sender: TObject);
begin
     fName:=GetFileName;
     if CheckLimitSize(FName,'mb',10) then
     begin
       ShowMessage('Размер файла превышает установленный лимит!'+#10#13+
                   ' Файл не может быть прикреплен');
       FName:='';
     end;
end;

procedure TEv2Form.btn_OkClick(Sender: TObject);
begin
  NewEvents;
  ModalResult:=mrOk;
end;

procedure TEv2Form.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  grp_kat.Caption:=GetWorkerFio(ActiveWorker);
end;

procedure TEv2Form.FormShow(Sender: TObject);
begin
  if evedit then
     ShowEditEvent;
end;

procedure TEv2Form.ShowEditEvent;
begin
  with cmDB.ds_events do
  begin
    cbb_kat.EditValue:=FN('KATEGORY').AsInteger;
    rch_note.Text:=FN('NOTE').AsWideString;
    cbb_usr.EditValue:=FN('ADDRUSER').AsInteger;
  end;
end;

function TEv2Form.CheckParam :Boolean;
begin
  Result:=True;
  if cbb_kat.EditValue=null then
  begin
    ShowMessage('Не указанна категория');
    Result:=False;
    Exit;
  end;
  if cbb_usr.EditValue=null then
  begin
    ShowMessage('Не указанна адресат сообщения!');
    Result:=False;
    Exit;
  end;
end;

procedure TEv2Form.OpenDs;
begin
  with cmDB.ds_events do
  begin
    MainWhereClause:='CreateDate BETWEEN :D1 and :D2 and WORKER = :WORKER'+
                     ' or ADDRUSER = :WORKER';
    ParamByName('D1').AsDateTime:=Date;
    ParamByName('D2').AsDateTime:=Date;
    ParamByName('WORKER').AsInteger:=ActiveWorker;
    Open;
  end;
end;

procedure TEv2Form.NewEvents;
begin
  if not CheckParam then Exit;
  with cmDB.ds_events do
  begin
    if not cmDB.WT.Active then cmDB.WT.StartTransaction;
    if State in [dsInactive] then OpenDs;
    if evedit then Edit else Append;
    if not evedit then
    begin
      FN('CREATEDATE').AsDateTime:=Date;
      FN('WORKER').AsInteger:=ActiveWorker;
      FN('ETYPE').AsInteger:=1;
    end;
    FN('KATEGORY').AsInteger:=cbb_kat.EditValue;
    FN('NOTE').AsWideString:=rch_note.Text;
    FN('AddrUser').AsInteger:=cbb_usr.EditValue;
    if FileExists(FName) then
    begin
     TBlobField(FN('Data')).LoadFromFile(FName);
     FN('Tag').AsInteger:=1;
     { TODO -cEvents : Не предусмотренно удаление файла }
    end else
    FN('Tag').AsInteger:=0;
    Post;
  end;
end;

 initialization
 RegisterClass(TEv2Form);
end.
