unit MailTaskFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, Data.DB,
  cxDBData, cxButtonEdit, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, FIBDataSet, pFIBDataSet, cxGridLevel, cxClasses,
  FIBQuery, pFIBCacheQueries, pFIBProps,
  cxGridCustomView, cxGrid, dxSkinsdxBarPainter, dxBar, cxImageComboBox,
  dxLayoutcxEditAdapters, cxContainer, cxTextEdit, cxMemo, dxSkinDevExpressStyle;

type
  TMailTaskForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    lItmlc1Item1: TdxLayoutItem;
    ds_Task: TpFIBDataSet;
    src_Task: TDataSource;
    clv1GROOP: TcxGridDBColumn;
    clv1GROUPNAME: TcxGridDBColumn;
    clv1ID: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    clv1DESCRIPTIONS: TcxGridDBColumn;
    clv1ISSUB: TcxGridDBColumn;
    brm1: TdxBarManager;
    bar1: TdxBar;
    btn_Refresh: TdxBarButton;
    clv1Sub: TcxGridDBColumn;
    grplc1Group1: TdxLayoutGroup;
    mmo1: TcxMemo;
    lItmlc1Item11: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_RefreshClick(Sender: TObject);
    procedure clv1ISSUBStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure clv1SubPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    procedure ReopenDS;
    procedure SetSubs(task, state: integer);
    procedure SelectTabs;
  public
    { Public declarations }
  end;

var
  MailTaskForm: TMailTaskForm;

implementation

uses cmDBUnit, dezCommon;

{$R *.dfm}


procedure TMailTaskForm.btn_RefreshClick(Sender: TObject);
begin
  ReopenDS;
end;

procedure TMailTaskForm.clv1ISSUBStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
 { case ARecord.Values[clv1ISSUB.Index] of
    1: begin
         if (TcxButtonEditProperties(clv1ISSUB.Properties).Buttons<>nil) then begin
           //TcxButtonEditProperties(clv1ISSUB.Properties).Buttons[0].Visible:= False;
           //TcxButtonEditProperties(clv1ISSUB.Properties).Buttons[1].Visible:= True;
           TcxButtonEditProperties(clv1ISSUB.Properties).Buttons[0].Caption := 'отписаться';
           TcxButtonEditProperties(clv1ISSUB.Properties).Buttons[0].Tag:=1;
         end;
       end;
  else
       begin
         if (TcxButtonEditProperties(clv1ISSUB.Properties).Buttons<>nil) then begin
           //TcxButtonEditProperties(clv1ISSUB.Properties).Buttons[1].Visible:= False;
           //TcxButtonEditProperties(clv1ISSUB.Properties).Buttons[0].Visible:= True;
           TcxButtonEditProperties(clv1ISSUB.Properties).Buttons[0].Caption := 'подписаться';
           TcxButtonEditProperties(clv1ISSUB.Properties).Buttons[0].Tag:=0;
         end;
       end;
  end;}
end;

procedure TMailTaskForm.clv1SubPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  SetSubs(v1.GetColumnByFieldName('ID').EditValue, v1.GetColumnByFieldName('ISSUB').EditValue);
end;

procedure TMailTaskForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TMailTaskForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  grplc1Group1.TabbedOptions.HideTabs:= True;
  SelectTabs;

end;

procedure TMailTaskForm.ReopenDS;
begin
  ds_Task.Close;
  ds_Task.ParamByName('WORKER').AsVariant := ActiveWorker;
  ds_Task.Open;
  v1.ViewData.Expand(true);
end;

procedure TMailTaskForm.SelectTabs;
var
  Q: TFIBQuery;
begin
  Q:= GetQueryForUse(cmDb.RT,
                         'SELECT p.EMAIL FROM WORKER W' +#13#10+
                          'left outer join piple p on p.CODE = w.PIPLE' +#13#10+
                          'where W.CODE = :worker');
  Q.Options:= [qoStartTransaction];
  try
    Q.ParamByName('worker').AsVariant:= ActiveWorker;
    Q.ExecQuery;
    if ((Q.FN('EMAIL').AsVariant <> null) and (Trim(Q.FN('EMAIL').AsVariant)<>'')) then
    begin
      grplc1Group1.ItemIndex:= 0;
      ReopenDS;
    end else
    begin
      grplc1Group1.ItemIndex:= 1;
      btn_Refresh.Enabled:= False;
    end;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TMailTaskForm.SetSubs(task, state: integer);
var
  AIndex, newstate: Integer;
  Q: TFIBQuery;

  procedure InsertSub;
  begin
    Q:= GetQueryForUse(cmDb.WT,'insert into TASK$SUBSCRIBERS (WORKERID, TASKID) values (:WORKERID, :TASKID)');
    Q.Options:= [qoStartTransaction, qoAutoCommit];
    try
      Q.ParamByName('WORKERID').AsVariant:= ActiveWorker;
      Q.ParamByName('TASKID').AsVariant:= task;
      Q.ExecQuery;
      ReopenDS;
    finally
      FreeQueryForUse(Q);
    end;
  end;

  procedure DeleteSub;
  begin
    Q:= GetQueryForUse(cmDb.WT,'delete from TASK$SUBSCRIBERS where (WORKERID = :WORKERID) and (TASKID = :TASKID);');
    Q.Options:= [qoStartTransaction, qoAutoCommit];
    try
      Q.ParamByName('WORKERID').AsVariant:= ActiveWorker;
      Q.ParamByName('TASKID').AsVariant:= task;
      Q.ExecQuery;
      ReopenDS;
    finally
      FreeQueryForUse(Q);
    end;
  end;

begin
   case state of
     0: newstate:= 1;
     else newstate:=0;
   end;
   AIndex := v1.Controller.FocusedRowIndex; // запоминаем позицию
   try
     v1.BeginUpdate(lsimImmediate);
      case state of
        0: begin
             InsertSub;
           end;
      else
           begin
             DeleteSub;
           end;
      end;
   finally
     v1.EndUpdate;
     v1.ViewData.Expand(true);
     v1.Controller.FocusRecord(AIndex, true); // возвращаемся на позицию
   end;
end;

initialization
 RegisterClass(TMailTaskForm);
end.
