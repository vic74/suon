unit EventsFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxClasses, cxGridLevel, cxGrid,
  cxCheckBox, cxImageComboBox, cxDBLookupComboBox, ImgList,
  dxLayoutcxEditAdapters, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, FIBDataSet, pFIBDataSet, Menus, StdCtrls, cxButtons,
  cxGridCustomPopupMenu, cxGridPopupMenu,
  dxLayoutControlAdapters, dxLayoutContainer, BaseForm,
  dxSkinDevExpressStyle, cxShellBrowserDialog;

type
  TEventsForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lcntr1: TdxLayoutControl;
    LSkin1: TdxLayoutLookAndFeelList;
    LCxSkin1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    Itm_grd1: TdxLayoutItem;
    vb1: TcxGridDBBandedTableView;
    clvb1EType: TcxGridDBBandedColumn;
    clvb1Active: TcxGridDBBandedColumn;
    clvb1Tag: TcxGridDBBandedColumn;
    clvb1CreateDate: TcxGridDBBandedColumn;
    clvb1Worker: TcxGridDBBandedColumn;
    clvb1Kategory: TcxGridDBBandedColumn;
    clvb1Note: TcxGridDBBandedColumn;
    clvb1EventDate: TcxGridDBBandedColumn;
    clvb1ControlDate: TcxGridDBBandedColumn;
    clvb1AddUser: TcxGridDBBandedColumn;
    clvb1AnswerDate: TcxGridDBBandedColumn;
    clvb1Answer: TcxGridDBBandedColumn;
    il1: TcxImageList;
    ParamGroup: TdxLayoutGroup;
    D1: TcxDateEdit;
    lcntr1Item1: TdxLayoutItem;
    D2: TcxDateEdit;
    lcntr1Item2: TdxLayoutItem;
    Kategory: TcxComboBox;
    lcntr1Item3: TdxLayoutItem;
    cxButton1: TcxButton;
    lcntr1Item4: TdxLayoutItem;
    ppm2: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    dlg1: TcxShellBrowserDialog;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure vb1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure ppm2Popup(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
  private
    { Private declarations }
    //procedure InsertNewEvents;
    procedure ShowEvensForm(AIndex :integer; isedit :Boolean=false);
    procedure ShowEv1Form(isedit :Boolean=false);
    procedure ShowEv2Form(isedit :Boolean=false);
    procedure ShowEv3Form(isedit :Boolean=false);
    procedure ShowEv4Form(isedit :Boolean=false);
    procedure ShowEv5Form(isedit :Boolean=false);
    procedure OpenDataSet;
    procedure DelCurRecord;
    procedure ShowEv5AnswerForm;
  public
    { Public declarations }
  end;

var
  EventsForm: TEventsForm;

implementation

uses cmDBUnit, dezEvent1Frm, dezCommon, cmUtils{, Ev2Frm, Ev3Frm, Ev4Frm, Ev5Frm},
  Ev2Frm, Ev3Frm, Ev4Frm, Ev5Frm, Ev5AnswerFrm;

{$R *.dfm}

procedure TEventsForm.cxButton1Click(Sender: TObject);
begin
  OpenDataSet;
end;

procedure TEventsForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TEventsForm.FormCreate(Sender: TObject);
begin
  D1.Date:=Date;
  D2.Date:=Date;
  MakeKategoryList(Kategory.Properties.Items);
  if Kategory.Properties.Items.Count>0 then
    Kategory.ItemIndex:=0;
  LoadForm(prop1,Self.Name);
end;
//событие
procedure TEventsForm.N1Click(Sender: TObject);
begin
  ShowEv1Form;
end;
//сообщение
procedure TEventsForm.N2Click(Sender: TObject);
begin
  ShowEv2Form;
end;
//мероприятие
procedure TEventsForm.N3Click(Sender: TObject);
begin
  ShowEv3Form;
end;
//контрольное мероприятие
procedure TEventsForm.N4Click(Sender: TObject);
begin
  ShowEv4Form;
end;
//Новое задание
procedure TEventsForm.N5Click(Sender: TObject);
begin
  ShowEv5Form;
end;
//удалить текущую запись
procedure TEventsForm.N7Click(Sender: TObject);
begin
  DelCurRecord;
end;
//сохраняем вложение
procedure TEventsForm.N9Click(Sender: TObject);
begin
  if dlg1.Execute then
  begin
  with cmDB.ds_events do
  begin
   TBlobField(FN('Data')).SaveToFile(dlg1.Path+'\'+FN('FileName').AsString);
  end;
  end;
end;

procedure TEventsForm.DelCurRecord;
begin
  if not cmDB.WT.Active then cmDB.WT.StartTransaction;
  cmDB.ds_events.Delete;
end;

procedure TEventsForm.OpenDataSet;
begin
  if Kategory.Properties.Items.Count=0 then
  begin
    cmMessageBox('Не указана категория.');
    Exit;
  end;
  with cmDB.ds_events do
  begin
    Close;
    MainWhereClause:='CreateDate BETWEEN :D1 and :D2 and Kategory=:Kategory';
    ParamByName('D1').AsString:=DateToStr(D1.Date)+' 00:00';
    ParamByName('D2').AsString:=DateToStr(D2.Date+1)+' 00:00';
    ParamByName('Kategory').AsString:=
       IntToStr(integer(Kategory.Properties.Items.Objects[Kategory.ItemIndex]));
    Open;
  end;
end;

procedure TEventsForm.ppm2Popup(Sender: TObject);
begin
  N7.Visible:=false;
  if cmDB.ds_events.IsEmpty then Exit;
  if (ActiveWorker=cmDB.ds_events.FN('WORKER').AsInteger) then
  N7.Visible:=true else
  N7.Visible:=false;
  if cmDB.ds_events.FN('Data').AsVariant=null then
  N9.Visible:=False else
  N9.Visible:=True;
end;

procedure TEventsForm.vb1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_RETURN then
  begin
    if vb1.GetColumnByFieldName('ETYPE').EditValue=null then Exit;
    //если ответ на задвние
    if (vb1.GetColumnByFieldName('ETYPE').EditValue+1=5) and
        (ActiveWorker=vb1.GetColumnByFieldName('ADDRUSER').EditValue) then
        ShowEv5AnswerForm
    else //иначе редактирование задания
    ShowEvensForm(vb1.GetColumnByFieldName('ETYPE').EditValue+1,true);
  end;
end;

procedure TEventsForm.ShowEvensForm(AIndex :integer; isedit :Boolean=false);
begin
  if (ActiveWorker<>cmDB.ds_events.FN('WORKER').AsInteger) then
  begin
    cmMessageBox('Вам не разрешено редактировать это событие');
    Exit;
  end;
  case AIndex of
    1 :ShowEv1Form(isedit);
    2 :ShowEv2Form(isedit);
    3 :ShowEv3Form(isedit);
    4 :ShowEv4Form(isedit);
    5 :ShowEv5Form(isedit);
    else Exit;
  end;
end;

procedure TEventsForm.ShowEv1Form(isedit :Boolean=false);
var
  Form :TdezEvent1Form;
begin
  Form:=TdezEvent1Form.Create(Application);
  Form.evedit:=isedit;
  Form.ShowModal;
  Form.Free;
end;

procedure TEventsForm.ShowEv2Form(isedit :Boolean=false);
var
  Form :TEv2Form;
begin
  Form:=TEv2Form.Create(Application);
  Form.evedit:=isedit;
  Form.ShowModal;
  Form.Free;
end;

procedure TEventsForm.ShowEv3Form(isedit :Boolean=false);
var
  Form :TEv3Form;
begin
  Form:=TEv3Form.Create(Application);
  Form.evedit:=isedit;
  Form.ShowModal;
  Form.Free;
end;

procedure TEventsForm.ShowEv4Form(isedit :Boolean=false);
var
  Form :TEv4Form;
begin
  Form:=TEv4Form.Create(Application);
  Form.evedit:=isedit;
  Form.ShowModal;
  Form.Free;
end;

procedure TEventsForm.ShowEv5Form(isedit :Boolean=false);
var
  Form :TEv5Form;
begin
  Form:=TEv5Form.Create(Application);
  Form.evedit:=isedit;
  Form.ShowModal;
  Form.Free;
end;
//ответ на задание
procedure TEventsForm.ShowEv5AnswerForm;
var
  Form :TEv5AnswerForm;
begin
  Form:=TEv5AnswerForm.Create(Application);
  Form.ShowModal;

  Form.Free;
end;

initialization
  RegisterClass(TEventsForm);
end.
