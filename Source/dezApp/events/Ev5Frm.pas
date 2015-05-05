unit Ev5Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  Menus, dxLayoutcxEditAdapters, dxLayoutControl, cxPropertiesStore, cxSpinEdit,
  cxTimeEdit, cxDropDownEdit, cxCalendar, StdCtrls, cxButtons, cxMemo,
  cxRichEdit, cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, BaseForm,
  cxDBLookupComboBox, dxLayoutLookAndFeels, DB, dxLayoutControlAdapters,
  dxLayoutContainer;

type
  TEv5Form = class(TDezModalForm)
    LSkin1: TdxLayoutLookAndFeelList;
    LCxSkin1: TdxLayoutCxLookAndFeel;
    lcntr2: TdxLayoutControl;
    cbb_kat: TcxLookupComboBox;
    rch_note: TcxRichEdit;
    btn_Ok: TcxButton;
    btn_inc: TcxButton;
    btn_cancel: TcxButton;
    dt1: TcxDateEdit;
    tm1: TcxTimeEdit;
    dt_control: TcxDateEdit;
    tm_control: TcxTimeEdit;
    grp2: TdxLayoutGroup;
    grp_kat: TdxLayoutGroup;
    Itm_kat: TdxLayoutItem;
    grp_note: TdxLayoutGroup;
    Itm_note: TdxLayoutItem;
    grp_dt: TdxLayoutGroup;
    Itm_dt1: TdxLayoutItem;
    Itm_tm1: TdxLayoutItem;
    grp_cdate: TdxLayoutGroup;
    Itm_control: TdxLayoutItem;
    Itm_tm: TdxLayoutItem;
    Itm_ok: TdxLayoutItem;
    Itm_inc: TdxLayoutItem;
    Itm_cancel: TdxLayoutItem;
    prop1: TcxPropertiesStore;
    grplcntr2Group1: TdxLayoutGroup;
    grp_top: TdxLayoutGroup;
    grp_active: TdxLayoutGroup;
    cbb_active: TcxComboBox;
    itm_active: TdxLayoutItem;
    grp_usr: TdxLayoutGroup;
    cbb_usr: TcxLookupComboBox;
    itm_usr: TdxLayoutItem;
    lcntr2Group1: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure btn_incClick(Sender: TObject);
    procedure btn_OkClick(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure NewEvents;
    function CheckParam :Boolean;
    procedure OpenDs;
    procedure ShowEditEvent;
  public
    { Public declarations }
    fName :string;
    evedit :Boolean;
  end;

var
  Ev5Form: TEv5Form;

implementation

uses AppUtils, cmDBUnit, dezCommon, CommonDm, cmUtils;

{$R *.dfm}

procedure TEv5Form.btn_cancelClick(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure TEv5Form.btn_incClick(Sender: TObject);
begin
  fName:=GetFileName;
  if CheckLimitSize(FName,'mb',10) then
  begin
    cmShowMessage('Размер файла превышает установленный лимит!'+#10#13+
                   ' Файл не может быть прикреплен',true);
    FName:='';
  end;
end;

procedure TEv5Form.btn_OkClick(Sender: TObject);
begin
  NewEvents;
  ModalResult:=mrOk;
end;

function TEv5Form.CheckParam :Boolean;
begin
  Result:=True;
  if cbb_kat.EditValue=null then
  begin
    cmShowMessage('Не указанна категория',true);
    Result:=False;
    Exit;
  end;
  if dt1.EditValue=null then
  begin
    cmShowMessage('Не указанна дата мероприятия!',true);
    Result:=False;
    Exit;
  end;
  if dt_control.EditValue=null then
  begin
    cmShowMessage('Не указанна дата контроля мероприятия!',true);
    Result:=False;
    Exit;
  end;
  if cbb_usr.EditValue=null then
  begin
    cmShowMessage('Не указанн пользователь, которому дано задание!',true);
    Result:=False;
    Exit;
  end;
end;

procedure TEv5Form.OpenDs;
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

procedure TEv5Form.NewEvents;
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
      FN('ETYPE').AsInteger:=4;
    end;
    FN('KATEGORY').AsInteger:=cbb_kat.EditValue;
    FN('NOTE').AsWideString:=rch_note.Text;
    FN('EVENTDATE').AsDateTime:=dt1.Date + tm1.Time;
    FN('CONTROLDATE').AsDateTime:=dt_control.Date + tm_control.Time;
    FN('ANSWERDATE').AsVariant:=null;
    FN('ADDRUSER').AsInteger:=cbb_usr.EditValue;
    FN('ANSWER').AsVariant:=null;
    FN('ACTIVE').AsInteger:=cbb_active.ItemIndex;
    if FileExists(FName) then
    begin
     TBlobField(FN('Data')).LoadFromFile(FName);
     FN('Tag').AsInteger:=1;
    end else
    FN('Tag').AsInteger:=0;
    Post;
  end;
end;

procedure TEv5Form.ShowEditEvent;
begin
  with cmDB.ds_events do
  begin
    cbb_kat.EditValue:=FN('KATEGORY').AsInteger;
    rch_note.Text:=FN('NOTE').AsWideString;
    dt1.Date:=StrToDate(FormatDateTime('dd.mm.yyyy',FN('EVENTDATE').AsDateTime));
    tm1.Time:=StrToTime(FormatDateTime('hh:nn:ss',FN('EVENTDATE').AsDateTime));
    dt_control.Date:=
           StrToDate(FormatDateTime('dd.mm.yyyy',FN('CONTROLDATE').AsDateTime));
    tm_control.Time:=
             StrToTime(FormatDateTime('hh:nn:ss',FN('CONTROLDATE').AsDateTime));
    cbb_usr.EditValue:=FN('ADDRUSER').AsVariant;
    cbb_active.ItemIndex:=StrToIntDef(FN('ACTIVE').AsString,0);
  end;
end;

procedure TEv5Form.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  grp_top.Caption:=GetWorkerFio(ActiveWorker);
end;

procedure TEv5Form.FormShow(Sender: TObject);
begin
  if evedit then
     ShowEditEvent;
end;

end.
