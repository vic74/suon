unit Ev3Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, dxLayoutLookAndFeels,
  dxLayoutControl, cxContainer, cxEdit, Menus, dxLayoutcxEditAdapters, StdCtrls,
  cxButtons, cxMemo, cxRichEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit,DB, cxDBLookupComboBox, cxSpinEdit, cxTimeEdit,
  BaseForm,
  cxCalendar, cxPropertiesStore, dxLayoutControlAdapters, dxLayoutContainer,
  dxSkinDevExpressStyle, Vcl.ComCtrls, dxCore, cxDateUtils;

type
  TEv3Form = class(TDezModalForm)
    LSkin1: TdxLayoutLookAndFeelList;
    LCxSkin1: TdxLayoutCxLookAndFeel;
    lcntr2: TdxLayoutControl;
    cbb_kat: TcxLookupComboBox;
    rch_note: TcxRichEdit;
    btn_Ok: TcxButton;
    btn_inc: TcxButton;
    btn_cancel: TcxButton;
    grp2: TdxLayoutGroup;
    grp_kat: TdxLayoutGroup;
    Itm_kat: TdxLayoutItem;
    grp_note: TdxLayoutGroup;
    Itm_note: TdxLayoutItem;
    grp_usr: TdxLayoutGroup;
    grp_btn: TdxLayoutGroup;
    Itm_ok: TdxLayoutItem;
    Itm_inc: TdxLayoutItem;
    Itm_cancel: TdxLayoutItem;
    dt1: TcxDateEdit;
    Itm_dt1: TdxLayoutItem;
    tm1: TcxTimeEdit;
    Itm_tm1: TdxLayoutItem;
    grp_dtm: TdxLayoutGroup;
    prop1: TcxPropertiesStore;
    procedure FormCreate(Sender: TObject);
    procedure btn_incClick(Sender: TObject);
    procedure btn_OkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
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
  Ev3Form: TEv3Form;

implementation

uses AppUtils, cmDBUnit, dezCommon, CommonDm;

{$R *.dfm}

procedure TEv3Form.btn_cancelClick(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure TEv3Form.btn_incClick(Sender: TObject);
begin
     fName:=GetFileName;
     if CheckLimitSize(FName,'mb',100) then
     begin
       ShowMessage('������ ����� ��������� ������������� �����!'+#10#13+
                   ' ���� �� ����� ���� ����������');
       FName:='';
     end;
end;

procedure TEv3Form.btn_OkClick(Sender: TObject);
begin
  NewEvents;
  ModalResult:=mrOk;
end;

function TEv3Form.CheckParam :Boolean;
begin
  Result:=True;
  if cbb_kat.EditValue=null then
  begin
    ShowMessage('�� �������� ���������');
    Result:=False;
    Exit;
  end;
  if dt1.EditValue=null then
  begin
    ShowMessage('�� �������� ���� �����������!');
    Result:=False;
    Exit;
  end;
end;

procedure TEv3Form.OpenDs;
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

procedure TEv3Form.NewEvents;
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
      FN('ETYPE').AsInteger:=2;
    end;
    FN('KATEGORY').AsInteger:=cbb_kat.EditValue;
    FN('NOTE').AsWideString:=rch_note.Text;
    FN('EVENTDATE').AsDateTime:=dt1.Date + tm1.Time;
    if FileExists(FName) then
    begin
     TBlobField(FN('Data')).LoadFromFile(FName);
     FN('Tag').AsInteger:=1;
    end else
    FN('Tag').AsInteger:=0;
    Post;
  end;
end;

procedure TEv3Form.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  grp_kat.Caption:=GetWorkerFio(ActiveWorker);
end;

procedure TEv3Form.FormShow(Sender: TObject);
begin
  if evedit then
     ShowEditEvent;
end;

procedure TEv3Form.ShowEditEvent;
begin
  with cmDB.ds_events do
  begin
    cbb_kat.EditValue:=FN('KATEGORY').AsInteger;
    rch_note.Text:=FN('NOTE').AsWideString;
    dt1.Date:=StrToDate(FormatDateTime('dd.mm.yyyy',FN('EVENTDATE').AsDateTime));
    tm1.Time:=StrToTime(FormatDateTime('hh:nn:ss',FN('EVENTDATE').AsDateTime));
  end;
end;

end.
