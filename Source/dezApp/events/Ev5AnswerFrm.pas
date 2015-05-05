unit Ev5AnswerFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, Menus, cxContainer,
  cxEdit, dxLayoutcxEditAdapters, dxLayoutControl, cxPropertiesStore,DB,
  dxLayoutLookAndFeels, cxTextEdit, cxMemo, cxRichEdit, StdCtrls, cxButtons,
  BaseForm,
  cxMaskEdit, cxDropDownEdit, dxLayoutControlAdapters, dxLayoutContainer;

type
  TEv5AnswerForm = class(TDezModalForm)
    lcntr2: TdxLayoutControl;
    btn_Ok: TcxButton;
    btn_inc: TcxButton;
    btn_cancel: TcxButton;
    rch_answer: TcxRichEdit;
    grp2: TdxLayoutGroup;
    grp_top: TdxLayoutGroup;
    grp_answer: TdxLayoutGroup;
    Itm_answer: TdxLayoutItem;
    grplcntr2Group1: TdxLayoutGroup;
    Itm_ok: TdxLayoutItem;
    Itm_inc: TdxLayoutItem;
    Itm_cancel: TdxLayoutItem;
    LSkin1: TdxLayoutLookAndFeelList;
    LCxSkin1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grp_active: TdxLayoutGroup;
    cbb_active: TcxComboBox;
    itm_active: TdxLayoutItem;
    procedure btn_OkClick(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
    procedure btn_incClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure NewEvents;
    procedure OpenDs;
    procedure ShowEditEvent;
  public
    { Public declarations }
    FName :string;
  end;

var
  Ev5AnswerForm: TEv5AnswerForm;

implementation

uses cmUtils, cmDBUnit, dezCommon, AppUtils;

{$R *.dfm}

procedure TEv5AnswerForm.btn_cancelClick(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure TEv5AnswerForm.btn_incClick(Sender: TObject);
begin
  fName:=GetFileName;
  if CheckLimitSize(FName,'mb',10) then
  begin
    cmShowMessage('Размер файла превышает установленный лимит!'+#10#13+
                   ' Файл не может быть прикреплен',true);
    FName:='';
  end;
end;

procedure TEv5AnswerForm.btn_OkClick(Sender: TObject);
begin
  NewEvents;
  ModalResult:=mrOk;
end;

procedure TEv5AnswerForm.FormShow(Sender: TObject);
begin
  ShowEditEvent;
end;

procedure TEv5AnswerForm.ShowEditEvent;
begin
  with cmDB.ds_events do
  begin
    rch_answer.EditValue:=FN('ANSWER').AsVariant;
    cbb_active.ItemIndex:=FN('ACTIVE').AsVariant;
  end;
end;

procedure TEv5AnswerForm.OpenDs;
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

procedure TEv5AnswerForm.NewEvents;
begin
  if rch_answer.EditValue=null then Exit;
  with cmDB.ds_events do
  begin
    if not cmDB.WT.Active then cmDB.WT.StartTransaction;
    if State in [dsInactive] then OpenDs;
    Edit;
    FN('ANSWERDATE').AsDateTime:=Now;
    FN('ANSWER').AsWideString:=rch_answer.Text;
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

end.
