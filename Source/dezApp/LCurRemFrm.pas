unit LCurRemFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxLayoutControl, cxTextEdit, cxMaskEdit,
  dxLayoutLookAndFeels, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FIBDataSet, pFIBDataSet,
  FIBQuery, pFIBCacheQueries,
  cxCurrencyEdit, Menus, cxPropertiesStore, StdCtrls, cxButtons, ImgList,
  cxImageComboBox, BaseForm, cxGridCustomPopupMenu, cxGridPopupMenu,
  dxLayoutControlAdapters, dxLayoutContainer;

type
  TLCurRemForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    edt_year: TcxMaskEdit;
    itm_year: TdxLayoutItem;
    cbb_house: TcxLookupComboBox;
    itm_house: TdxLayoutItem;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    grp2: TdxLayoutGroup;
    ds_trplan: TpFIBDataSet;
    src_trplan: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1Y: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1STREET: TcxGridDBColumn;
    clv1STREETNAME: TcxGridDBColumn;
    clv1MLIST: TcxGridDBColumn;
    clv1MLISTNAME: TcxGridDBColumn;
    clv1SUMY: TcxGridDBColumn;
    clv1SUM1: TcxGridDBColumn;
    clv1SUM2: TcxGridDBColumn;
    clv1SUM3: TcxGridDBColumn;
    clv1SUM4: TcxGridDBColumn;
    grp3: TdxLayoutGroup;
    cedt_sumy: TcxCurrencyEdit;
    itm_sumy: TdxLayoutItem;
    cedt_sumost: TcxCurrencyEdit;
    itm_sumost: TdxLayoutItem;
    cedt_sumfact: TcxCurrencyEdit;
    itm_sumfact: TdxLayoutItem;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1KONTNAME: TcxGridDBColumn;
    clv1MANAGER: TcxGridDBColumn;
    clv1FIO: TcxGridDBColumn;
    ds_showhouse: TpFIBDataSet;
    src_showhouse: TDataSource;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_grd2: TdxLayoutItem;
    spl1: TdxLayoutSplitterItem;
    clv2CODE: TcxGridDBColumn;
    clv2SYEAR: TcxGridDBColumn;
    clv2STYPE: TcxGridDBColumn;
    clv2STREET: TcxGridDBColumn;
    clv2STREETNAME: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2NOMER: TcxGridDBColumn;
    clv2NOTE: TcxGridDBColumn;
    clv2MLIST: TcxGridDBColumn;
    clv2MLISTNAME: TcxGridDBColumn;
    clv2MNOTE: TcxGridDBColumn;
    clv2KONTRAGENT: TcxGridDBColumn;
    clv2KONRNAME: TcxGridDBColumn;
    btn_exec: TcxButton;
    itm_exec: TdxLayoutItem;
    prop1: TcxPropertiesStore;
    clv2mse: TcxGridDBColumn;
    ds_house: TpFIBDataSet;
    src_house: TDataSource;
    ds_trfinplan: TpFIBDataSet;
    src_trfinplan: TDataSource;
    cedt_proc: TcxCurrencyEdit;
    itm_proc: TdxLayoutItem;
    cedt_ost: TcxCurrencyEdit;
    itm_ost: TdxLayoutItem;
    btn_save: TcxButton;
    itm_save: TdxLayoutItem;
    il1: TcxImageList;
    cedt_proc4: TcxCurrencyEdit;
    itm_proc4: TdxLayoutItem;
    cedt_razn: TcxCurrencyEdit;
    itm_razn: TdxLayoutItem;
    clv2Act: TcxGridDBColumn;
    clv2trplan: TcxGridDBColumn;
    clv2Img: TcxGridDBColumn;
    clv2V: TcxGridDBColumn;
    ced_wsum: TcxCurrencyEdit;
    itm_wsum: TdxLayoutItem;
    btn1: TcxButton;
    itmlc1Item1: TdxLayoutItem;
    ds_dedail: TpFIBDataSet;
    src_detail: TDataSource;
    clv2SHOWHOUSE: TcxGridDBColumn;
    grlc1Group1: TdxLayoutGroup;
    grlc1Group2: TdxLayoutGroup;
    spl2: TdxLayoutSplitterItem;
    v4: TcxGridDBTableView;
    l4: TcxGridLevel;
    grd3: TcxGrid;
    itm4: TdxLayoutItem;
    clv4V: TcxGridDBColumn;
    clv4STRUCTDEFECT: TcxGridDBColumn;
    clv4SDNAME: TcxGridDBColumn;
    clv4NOTE: TcxGridDBColumn;
    clv4QUANTITY: TcxGridDBColumn;
    clv4MNOTE: TcxGridDBColumn;
    clv4SHOWHOUSE: TcxGridDBColumn;
    clv4HOUSE: TcxGridDBColumn;
    clv4MLIST: TcxGridDBColumn;
    clv4ed: TcxGridDBColumn;
    clv1NOTE: TcxGridDBColumn;
    ppm1: TcxGridPopupMenu;
    cl_v1FACTCODE: TcxGridDBColumn;
    procedure btn_execClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_saveClick(Sender: TObject);
    procedure ds_trplanAfterPost(DataSet: TDataSet);
    procedure cedt_proc4PropertiesChange(Sender: TObject);
    procedure cedt_proc4PropertiesEditValueChanged(Sender: TObject);
    procedure cedt_procPropertiesChange(Sender: TObject);
    procedure ds_trplanAfterDelete(DataSet: TDataSet);
    procedure v1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v2DataControllerDataChanged(Sender: TObject);
    procedure ds_trplanBeforeDelete(DataSet: TDataSet);
    procedure edt_yearPropertiesChange(Sender: TObject);
    procedure v2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cedt_procPropertiesEditValueChanged(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure grd2Enter(Sender: TObject);
    procedure grd3Enter(Sender: TObject);
  private
    { Private declarations }
    Y: Variant;
    {$REGION 'Сумма непредвидки'}
    ///<summary>Сумма непредвиденных работ</summary>
    {$ENDREGION}
    unexpected :Variant;
    procedure OpenDs;
    function CheckParam :Boolean;
    procedure AddRecord;
    procedure SetSumm;
    function GetWorkSum :Currency;
    procedure AddNewWork;
    function IfRecExist(mlist :Variant) :Boolean; //delete
    procedure SetQuartSum;
    procedure SavePlan;
    procedure EditRec;
    function GetManager(house :Variant) :Variant;
    procedure RightForEdit;
    {$REGION 'Непредвидка'}
    ///<summary>процедура запоминает сумму непредвиденных работ</summary>
    {$ENDREGION}
    procedure SetUnexpected;
    //procedure RecalcOst;
  public
    { Public declarations }
  end;

var
  LCurRemForm: TLCurRemForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, CommonDm, CurRemAddFrm, dezCommon,
  LoadingSplash, dzFinPlan, FinHouseNewFrm;

{$R *.dfm}


procedure TLCurRemForm.btn1Click(Sender: TObject);
begin
  try
    FinPlan.CreatePlan(edt_year.EditValue);
    ShowMessage(FinPlan.Log.Text);
  finally
    FinPlan.Free;
  end;
end;

procedure TLCurRemForm.btn_execClick(Sender: TObject);
begin
  OpenDs;
end;

procedure TLCurRemForm.btn_saveClick(Sender: TObject);
begin
  SavePlan;
end;

procedure TLCurRemForm.cedt_proc4PropertiesChange(Sender: TObject);
begin
  cedt_proc4.PostEditValue;
  if cedt_proc4.EditValue>0 then
  begin
    cedt_proc.EditValue:=cedt_sumfact.EditValue/100*cedt_proc4.EditValue;
    //cedt_proc.Properties.ReadOnly:=True;
  end else
  //cedt_proc.Properties.ReadOnly:=False;
end;

procedure TLCurRemForm.cedt_proc4PropertiesEditValueChanged(Sender: TObject);
begin
  cedt_proc.EditValue:=cedt_sumfact.EditValue/100*cedt_proc4.EditValue;
end;

procedure TLCurRemForm.cedt_procPropertiesChange(Sender: TObject);
begin
  cedt_razn.EditValue:=cedt_ost.EditValue-cedt_proc.EditValue;
end;

procedure TLCurRemForm.cedt_procPropertiesEditValueChanged(Sender: TObject);
begin
   cedt_razn.EditValue:=cedt_ost.EditValue-cedt_proc.EditValue;
end;

procedure TLCurRemForm.SavePlan;
begin
  with ds_trplan do
  begin
    if not Locate('Y;HOUSE;MLIST',
       VarArrayOf([edt_year.EditValue,
                   cbb_house.EditValue,
                   1]),[]) then
      begin
        DisableControls;
        Append;
        //FN('CODE').AsVariant:=null;
        FN('Y').AsVariant:=edt_year.EditValue;
        FN('HOUSE').AsVariant:=cbb_house.EditValue;
        FN('MLIST').AsVariant:=1;
        FN('Kontragent').AsVariant:=null;
        FN('Manager').AsVariant:=GetManager(cbb_house.EditValue);
        //суммы
        FN('SumY').AsVariant:=cedt_ost.EditValue;
        Post;
        EnableControls;
        SetSumm;
      end;
  end;
end;

procedure TLCurRemForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TLCurRemForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  ds_house.Open;
  DSOptoins(ds_trplan,'','TRLPLAN','CODE','TRLPLAN_GEN',false);
  DSOptoins(ds_showhouse,'','SHOWRESULT','CODE','SHOWRESULT_GEN',false);
  RightForEdit;
end;

procedure TLCurRemForm.RightForEdit;
begin
  if (ActiveRole=53) then               //инженер СЭ
     v1.OptionsData.Editing:=False else
     v1.OptionsData.Editing:=true;
end;

function TLCurRemForm.CheckParam :Boolean;
begin
  Result:=True;
  if edt_year.EditValue='' then
  begin
    cmShowMessage('Не указан год!',true);
    Result:=False;
    Exit;
  end;
  if cbb_house.EditValue=null then
  begin
    cmShowMessage('Не указан дом!',true);
    Result:=False;
    Exit;
  end;
end;

procedure TLCurRemForm.ds_trplanAfterDelete(DataSet: TDataSet);
begin
  SetSumm;
end;

procedure TLCurRemForm.ds_trplanAfterPost(DataSet: TDataSet);
begin
  SetSumm;
end;

procedure TLCurRemForm.ds_trplanBeforeDelete(DataSet: TDataSet);
begin
  if ds_trplan.FN('FACTCODE').AsVariant <> null then begin
     raise EMyException.Create('На основании этой строкй создана запись факта.'+#10#13+
                               'Удалять запрещено!');
  end;
  if ds_trplan.FN('showcode').AsVariant=null then Exit;
  with ds_showhouse do
  begin
    if Locate('CODE',ds_trplan.FN('showcode').AsVariant,[]) then
    begin
      Edit;
      FN('trplan').AsVariant:=null;
      Post;
    end;
  end;
end;

procedure TLCurRemForm.OpenDs;
begin
  SplashVisibility(true,'Дождитесь окончания операции.');
  try
    if not CheckParam then Exit;
    with ds_trplan do
    begin
      Close;
      MainWhereClause:='TP.Y=:Y and TP.HOUSE=:HOUSE';
      ParamByName('Y').AsVariant:=edt_year.EditValue;
      ParamByName('HOUSE').AsVariant:=cbb_house.EditValue;
      Open;
      //SetUnexpected;
    end;
    with ds_showhouse do
    begin
      Close;
      MainWhereClause:='sh.syear>=:Y and SR.HOUSE=:HOUSE and sh.stype=1 and sr.RTYPE=1';
      if ActiveUserType=1 then
      MainWhereClause:=MainWhereClause+' and sd.kontragent=:kontr';
      ParamByName('Y').AsVariant:=edt_year.EditValue-1;
      ParamByName('HOUSE').AsVariant:=cbb_house.EditValue;
      if ActiveUserType=1 then
      ParamByName('kontr').AsVariant:=ActiveKontragent;
      GroupByClause:='SR.MLIST,m.name,SR.SHOWHOUSE, sh.syear,7, s.code,s.name,'+
      ' SR.HOUSE,h.nomer, sd.kontragent, k.name, sd.nomer';
      Open;
    end;
    with ds_trfinplan do
    begin
      Close;
      MainWhereClause:='Y=:Y and HOUSE=:HOUSE';
      ParamByName('Y').AsVariant:=edt_year.EditValue;
      ParamByName('HOUSE').AsVariant:=cbb_house.EditValue;
      Open;
      SetSumm;
    end;
  finally
    SplashVisibility(false);
  end;
end;

procedure TLCurRemForm.SetSumm;
begin
  with ds_trfinplan do
  begin
    cedt_sumost.EditValue:=FN('SUMOST').AsVariant;
    cedt_sumy.EditValue:=FN('SUMY').AsVariant;
    cedt_sumfact.EditValue:=FN('SUMOST').AsVariant+FN('SUMY').AsVariant;
    //cedt_proc.EditValue:=cedt_sumfact.EditValue/100*cedt_proc4.EditValue;
    ced_wsum.EditValue:=GetWorkSum;
    cedt_ost.EditValue:=cedt_sumfact.EditValue-ced_wsum.EditValue;
    //ced_wsum.EditValue:=cedt_sumfact.EditValue-cedt_ost.EditValue;
    //cedt_proc4.EditValue:=(cedt_sumfact.EditValue-ced_wsum.EditValue) div
    //                       cedt_sumfact.EditValue * 100;
    //cedt_razn.EditValue:=cedt_ost.EditValue-cedt_proc.EditValue;
    SetUnexpected;
  end;
end;

procedure TLCurRemForm.SetUnexpected;
begin
  v1.BeginUpdate;
  unexpected:=0;
  try
    with ds_trplan do begin
      if locate('MLIST',1,[]) then
         unexpected:=FN('SUMY').AsVariant;
    end;
    if cedt_sumfact.EditValue = null then
       cedt_sumfact.EditValue:=0;
    if cedt_ost.EditValue = null then
       cedt_ost.EditValue:=0;
    ced_wsum.EditValue:=cedt_sumfact.EditValue-cedt_ost.EditValue - unexpected;
  finally
    v1.EndUpdate;
  end;
end;

function TLCurRemForm.GetWorkSum :Currency;
var
  sum :Variant;
begin
  if ds_trplan.IsEmpty then
  begin
    Result:=0;
    Exit;
  end;
  Sum:=0;
  with ds_trplan do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      if FN('SUMY').AsVariant<>null then
      Sum:=Sum+FN('SUMY').AsVariant;
      Next;
    end;
    Result:=sum;
    EnableControls;
  end;
end;

procedure TLCurRemForm.grd2Enter(Sender: TObject);
begin
  ppm1.Grid:=Sender as TcxGrid;
end;

procedure TLCurRemForm.grd3Enter(Sender: TObject);
begin
  ppm1.Grid:=Sender as TcxGrid;
end;

procedure TLCurRemForm.v1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_RETURN then
  begin
    if v1.GetColumnByFieldName('Code').EditValue=null then Exit;
    //вызываем форму редактирования
    EditRec;
  end;
end;

procedure TLCurRemForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_INSERT then
  AddNewWork;

end;

procedure TLCurRemForm.EditRec;
var
  Form: TCurRemAddForm;
  //Manager :Variant;
begin
  Form:=TCurRemAddForm.Create(Application);
  with Form do
  begin
    cbb_mlist.EditValue:=ds_trplan.FN('MLIST').AsVariant;
    cbb_kontr.EditValue:=ds_trplan.FN('KONTRAGENT').AsVariant;
    cedt_sum.EditValue:=ds_trplan.FN('SUMY').AsVariant;
    cedt_sum1.EditValue:=ds_trplan.FN('SUM1').AsVariant;
    cedt_sum2.EditValue:=ds_trplan.FN('SUM2').AsVariant;
    cedt_sum3.EditValue:=ds_trplan.FN('SUM3').AsVariant;
    cedt_sum4.EditValue:=ds_trplan.FN('SUM4').AsVariant;
    //
    {cedt_proc1.EditValue:=ds_trplan.FN('SUM1').AsVariant/
                          ds_trplan.FN('SUMY').AsVariant * 100;
    cedt_proc2.EditValue:=ds_trplan.FN('SUM2').AsVariant/
                          ds_trplan.FN('SUMY').AsVariant * 100;
    cedt_proc3.EditValue:=ds_trplan.FN('SUM3').AsVariant/
                          ds_trplan.FN('SUMY').AsVariant * 100;
    cedt_proc4.EditValue:=ds_trplan.FN('SUM4').AsVariant/
                          ds_trplan.FN('SUMY').AsVariant * 100;}
    txt1.EditValue:=ds_trplan.FN('NOTE').AsVariant;
  end;
  if ds_trplan.FN('MLIST').AsVariant=1 then
  begin
   Form.cbb_mlist.Enabled:=False;
   Form.cbb_kontr.Enabled:=False;
   Form.btn_mlistAdd.Enabled:=False;
  end;

  Form.ShowModal;
  //изменяем значения
  if Form.ModalResult=mrOk then
  with ds_trplan do
  begin
      DisableControls;
      Edit;
      //FN('CODE').AsVariant:=null;
      FN('Y').AsVariant:=edt_year.EditValue;
      FN('HOUSE').AsVariant:=cbb_house.EditValue;
      FN('MLIST').AsVariant:=Form.mlist;
      FN('Kontragent').AsVariant:=Form.kontr;
      FN('Manager').AsVariant:=GetManager(FN('HOUSE').AsVariant);
      //суммы
      FN('SumY').AsVariant:=Form.sum;
      FN('SUM1').AsVariant:=Form.cedt_sum1.EditValue;
      FN('SUM2').AsVariant:=Form.cedt_sum2.EditValue;
      FN('SUM3').AsVariant:=Form.cedt_sum3.EditValue;
      FN('SUM4').AsVariant:=Form.cedt_sum4.EditValue;
      FN('NOTE').AsVariant:=Form.txt1.EditValue;
      Post;
      EnableControls;
      cedt_ost.EditValue:=cedt_sumfact.EditValue-GetWorkSum;
      SetUnexpected;
  end;
  Form.Free;
end;
{ TODO : Переделать на MHOUSE }
function TLCurRemForm.GetManager(house :Variant) :Variant;
var
  Q :TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.RT,'select MSE from HOUSE where CODE=:Code');
  Q.ParamByName('Code').AsVariant:=house;
  Q.ExecQuery;
  Result:=Q.FN('MSE').AsVariant;
  FreeQueryForUse(Q);
end;

procedure TLCurRemForm.edt_yearPropertiesChange(Sender: TObject);
begin
  ds_trplan.Close;
  ds_showhouse.Close;
end;

function TLCurRemForm.IfRecExist(mlist :Variant) :Boolean;
var
  Q :TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.RT,
           'select * from TRLPLAN where Y=:Y and HOUSE=:HOUSE and MLIST=:MLIST');
  Q.ParamByName('Y').AsVariant:=edt_year.EditValue;
  Q.ParamByName('HOUSE').AsVariant:=cbb_house.EditValue;
  Q.ParamByName('MLIST').AsVariant:=mlist;
  Q.ExecQuery;
  if Q.FN('Code').AsVariant=null then Result:=False
                                 else Result:=True;
  FreeQueryForUse(Q);
end;

procedure TLCurRemForm.AddNewWork;
var
  Form: TCurRemAddForm;
  res :Variant;
begin
  Form:=TCurRemAddForm.Create(Application);
  //Form.ShowModal;
  if Form.ShowModal=mrOk then
  begin
    with ds_trplan do
    begin
      if Locate('Y;HOUSE;MLIST',
       VarArrayOf([edt_year.EditValue,
                   cbb_house.EditValue,
                   Form.mlist]),
                   []) then
       begin
         cmShowMessage('Данный вид работ уже добавлен!',true);
         Exit;
       end;
      DisableControls;
      Append;
      //FN('CODE').AsVariant:=null;
      FN('Y').AsVariant:=edt_year.EditValue;
      FN('HOUSE').AsVariant:=cbb_house.EditValue;
      FN('MLIST').AsVariant:=Form.mlist;
      FN('Kontragent').AsVariant:=Form.kontr;
      FN('Manager').AsVariant:=GetManager(cbb_house.EditValue);
      //суммы
      FN('SumY').AsVariant:=Form.sum;
      FN('SUM1').AsVariant:=Form.cedt_sum1.EditValue;
      FN('SUM2').AsVariant:=Form.cedt_sum2.EditValue;
      FN('SUM3').AsVariant:=Form.cedt_sum3.EditValue;
      FN('SUM4').AsVariant:=Form.cedt_sum4.EditValue;
      FN('NOTE').AsVariant:=Form.txt1.EditValue;
      Post;
      EnableControls;
      cedt_ost.EditValue:=cedt_sumfact.EditValue-GetWorkSum;
      SetUnexpected;
    end;
  end;
  Form.Free;
end;

procedure TLCurRemForm.SetQuartSum;
var
  Q :TFIBQuery;
begin

end;

{procedure TCurRemForm.RecalcOst;
var
  CurRec, sum :Variant;
begin
  with ds_trplan do
  begin
    DisableControls;
    CurRec:=FN('Code').AsVariant;
    First;
    sum:=0;
    while not Eof do
    begin
      sum:=sum+FN('YSUM').AsVariant;
    end;
    cedt_sumost.EditValue:=cedt_sumfact.EditValue-sum;
    Locate('CODE',CurRec,[]);
    EnableControls;
  end;
end;}

procedure TLCurRemForm.v2DataControllerDataChanged(Sender: TObject);
begin
  {if ds_showhouse.FN('trplan').AsVariant=null then
  TcxImageComboBoxProperties(clv2trplan.Properties).Items[0].ImageIndex:=0 else
  TcxImageComboBoxProperties(clv2trplan.Properties).Items[1].ImageIndex:=6;}
end;

procedure TLCurRemForm.v2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_RETURN then
  AddRecord;
end;

procedure TLCurRemForm.AddRecord;
var
  Form: TCurRemAddForm;
begin
  if v2.GetColumnByFieldName('MLIST').EditValue=null then Exit;
  if ds_trplan.Locate('HOUSE;MLIST',
      VarArrayOf([
                 v2.GetColumnByFieldName('HOUSE').EditValue,
                 v2.GetColumnByFieldName('MLIST').EditValue]),
                 []) then
  begin
    cmShowMessage('Данный вид работ уже добавлен!',true);
    Exit;
  end;
  Form:=TCurRemAddForm.Create(Application);
  Form.cbb_mlist.EditValue:=v2.GetColumnByFieldName('MLIST').EditValue;
  Form.cbb_kontr.EditValue:=v2.GetColumnByFieldName('KONTRAGENT').EditValue;
  Form.ShowModal;
  if Form.ModalResult=mrOk then
  with ds_trplan do
  begin
      DisableControls;
      Append;
      //FN('CODE').AsVariant:=null;
      FN('Y').AsVariant:=edt_year.EditValue;
      FN('HOUSE').AsVariant:=cbb_house.EditValue;
      FN('MLIST').AsVariant:=Form.mlist;
      FN('Kontragent').AsVariant:=Form.kontr;
      FN('Manager').AsVariant:=GetManager(cbb_house.EditValue);  //получить менеджера из таблицы house
      //суммы
      FN('SumY').AsVariant:=Form.sum;
      FN('SUM1').AsVariant:=Form.cedt_sum1.EditValue;
      FN('SUM2').AsVariant:=Form.cedt_sum2.EditValue;
      FN('SUM3').AsVariant:=Form.cedt_sum3.EditValue;
      FN('SUM4').AsVariant:=Form.cedt_sum4.EditValue;
      FN('NOTE').AsVariant:=Form.txt1.EditValue;
      //FN('showcode').AsVariant:=v2.GetColumnByFieldName('CODE').EditValue;
      Post;
      EnableControls;
      cedt_ost.EditValue:=cedt_sumfact.EditValue-GetWorkSum;
      SetUnexpected;
  end;
  Form.Free;
  {with ds_showhouse do
  begin
    Edit;
    FN('trplan').AsVariant:=ds_trplan.FN('CODE').AsVariant;
    Post;
  end;}

 { with ds_trplan do
  begin
    if Locate('Y;HOUSE;MLIST',
     VarArrayOf([v2.GetColumnByFieldName('SYEAR').EditValue,
                 v2.GetColumnByFieldName('HOUSE').EditValue,
                 v2.GetColumnByFieldName('MLIST').EditValue]),
                 []) then Exit;
    Append;
    //FN('CODE').AsVariant:=null;
    FN('Y').AsVariant:=v2.GetColumnByFieldName('SYEAR').EditValue;
    FN('HOUSE').AsVariant:=v2.GetColumnByFieldName('HOUSE').EditValue;
    FN('MLIST').AsVariant:=v2.GetColumnByFieldName('MLIST').EditValue;
    FN('Kontragent').AsVariant:=v2.GetColumnByFieldName('KONTRAGENT').EditValue;
    FN('Manager').AsVariant:=v2.GetColumnByFieldName('MSE').EditValue;
    //суммы
    Post;
    cedt_ost.EditValue:=cedt_sumfact.EditValue-GetWorkSum;
  end;}
end;

initialization
RegisterClass(TLCurRemForm);
end.
