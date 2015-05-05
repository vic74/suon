unit dezEvent1Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, dxLayoutLookAndFeels,
  dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, Menus, cxMemo,
  cxRichEdit, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DB, FIBDataSet, pFIBDataSet,
  BaseForm,
  dxLayoutControlAdapters, dxLayoutContainer, dxSkinDevExpressStyle;

type
  TdezEvent1Form = class(TDezModalForm)
    ControlsGroup_Root: TdxLayoutGroup;
    Controls: TdxLayoutControl;
    LookAndFeel: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    ControlsGroup1: TdxLayoutGroup;
    ControlsGroup2: TdxLayoutGroup;
    ControlsGroup3: TdxLayoutGroup;
    cxButton1: TcxButton;
    ControlsItem2: TdxLayoutItem;
    cxButton2: TcxButton;
    ControlsItem3: TdxLayoutItem;
    cxButton3: TcxButton;
    ControlsItem4: TdxLayoutItem;
    Note: TcxRichEdit;
    ControlsItem5: TdxLayoutItem;
    cbb_kat: TcxLookupComboBox;
    Itm_kat: TdxLayoutItem;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure NewEvents;
    procedure ShowEditEvent;
    procedure OpenDs;
  public
    evedit :Boolean;
    FName :string; //путь к файлу для вложения
    procedure SetEvent(ACode: integer = 0);
  end;

var
  dezEvent1Form: TdezEvent1Form;

implementation

uses cmDBUnit, dezCommon, AppUtils;

{$R *.dfm}

{ TdezEvent1Form }

procedure TdezEvent1Form.cxButton1Click(Sender: TObject);
begin
  NewEvents;
  ModalResult:=mrOk;
end;

procedure TdezEvent1Form.SetEvent(ACode: integer = 0);
begin

end;

procedure TdezEvent1Form.cxButton2Click(Sender: TObject);
begin
     fName:=GetFileName;
     if CheckLimitSize(FName,'mb',100) then
     begin
       ShowMessage('Размер файла превышает установленный лимит!'+#10#13+
                   ' Файл не может быть прикреплен');
       FName:='';
     end;
  { TODO -cСобытия : Сделать проверку на размер файла }
end;

procedure TdezEvent1Form.cxButton3Click(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure TdezEvent1Form.FormCreate(Sender: TObject);
begin
  cmDB.ds_kategory.Open;
  ControlsGroup1.Caption:=GetWorkerFio(ActiveWorker);
end;

procedure TdezEvent1Form.FormShow(Sender: TObject);
begin
    if evedit then ShowEditEvent;
end;

procedure TdezEvent1Form.ShowEditEvent;
begin
  with cmDB.ds_events do
  begin
    cbb_kat.EditValue:=FN('KATEGORY').AsInteger;
    Note.Text:=FN('NOTE').AsWideString;
  end;
end;

procedure TdezEvent1Form.OpenDs;
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

procedure TdezEvent1Form.NewEvents;
begin
  if cbb_kat.EditValue=null then
  begin
    ShowMessage('Не указанна категория');
    Exit;
  end;
  with cmDB.ds_events do
  begin
    if not cmDB.WT.Active then cmDB.WT.StartTransaction;
    if State in [dsInactive] then OpenDs;
    if evedit then Edit else Append;
    if not evedit then
    begin
      FN('CREATEDATE').AsDateTime:=Now;
      FN('WORKER').AsInteger:=ActiveWorker;
      FN('ETYPE').AsInteger:=0;
    end;

    FN('KATEGORY').AsInteger:=cbb_kat.EditValue;
    FN('NOTE').AsWideString:=Note.Text;
    if FileExists(FName) then
    begin
      TBlobField(FN('Data')).LoadFromFile(FName);
      FN('Tag').AsInteger:=1;
      FN('FILENAME').AsVariant:=ExtractFileName(FName);
    end
    else
      FN('Tag').AsInteger:=0;
    Post;
  end;
end;

end.
