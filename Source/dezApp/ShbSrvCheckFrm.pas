unit ShbSrvCheckFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  FIBQuery, pFIBCacheQueries, pFIBProps, DateUtils,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, FIBDataSet, pFIBDataSet, dxmdaset, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, cxMaskEdit, cxTextEdit,
  cxDropDownEdit, cxCheckBox, cxGridCustomPopupMenu, cxGridPopupMenu,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxLayoutControlAdapters,
  dxLayoutContainer, dxSkinDevExpressStyle;

type
  TShbSrvCheckForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grlc1Group1: TdxLayoutGroup;
    grlc1Group2: TdxLayoutGroup;
    cbb_M: TcxComboBox;
    itm_M: TdxLayoutItem;
    msk_Y: TcxMaskEdit;
    itm_Y: TdxLayoutItem;
    btn_Exec: TcxButton;
    itm_Exec: TdxLayoutItem;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    m1: TdxMemData;
    ds_SHBSRVCHECK: TpFIBDataSet;
    clv1CODE: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1SNAME: TcxGridDBColumn;
    clv1Y: TcxGridDBColumn;
    clv1M: TcxGridDBColumn;
    clv1F1: TcxGridDBColumn;
    clv1F2: TcxGridDBColumn;
    clv1F3: TcxGridDBColumn;
    clv1F4: TcxGridDBColumn;
    clv1F5: TcxGridDBColumn;
    clv1F6: TcxGridDBColumn;
    clv1F7: TcxGridDBColumn;
    clv1F8: TcxGridDBColumn;
    clv1F9: TcxGridDBColumn;
    clv1F11: TcxGridDBColumn;
    clv1F12: TcxGridDBColumn;
    clv1F13: TcxGridDBColumn;
    clv1F14: TcxGridDBColumn;
    clv1F15: TcxGridDBColumn;
    clv1F16: TcxGridDBColumn;
    clv1F17: TcxGridDBColumn;
    clv1F18: TcxGridDBColumn;
    clv1F19: TcxGridDBColumn;
    clv1F20: TcxGridDBColumn;
    clv1Flag: TcxGridDBColumn;
    src_m1: TDataSource;
    ppm1: TcxGridPopupMenu;
    pm1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    grlc1Group3: TdxLayoutGroup;
    cbb_street: TcxLookupComboBox;
    itm_street: TdxLayoutItem;
    itm_house: TdxLayoutItem;
    cbb_house: TcxLookupComboBox;
    btn_Add: TcxButton;
    itm_Add: TdxLayoutItem;
    btn_del: TcxButton;
    itm_del: TdxLayoutItem;
    src_HOUSE: TDataSource;
    ds_HOUSE: TpFIBDataSet;
    ds_STREET: TpFIBDataSet;
    src_STREET: TDataSource;
    btn_copy: TcxButton;
    itm_copy: TdxLayoutItem;
    v1Column1: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_ExecClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure cbb_streetPropertiesEditValueChanged(Sender: TObject);
    procedure btn_AddClick(Sender: TObject);
    procedure btn_delClick(Sender: TObject);
    procedure PostData(Sender: TObject) ;
  private
    { Private declarations }
    procedure CreateMem;
    procedure PrepareDS;
    procedure OpenDS;
    procedure CheckRecord(check :boolean);
    procedure CopyForNextMonth;
    procedure CopyForMonth;
    function ClearByYM(Y,M : Variant) :boolean;
    procedure CopyData(FromY,FromM,ToY,ToM :Variant);
    procedure NextMonth(var ToY,ToM :Variant; Y,M :Variant);
    procedure GetHouse;
    function CheckParam: Boolean;
    procedure AddRec;
  public
    { Public declarations }
  end;

var
  ShbSrvCheckForm: TShbSrvCheckForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, LoadingSplash, GetPeriodShbSrvFrm;

{$R *.dfm}

procedure TShbSrvCheckForm.AddRec;
var
  Y,M :Variant;
begin
  if not CheckParam then Exit;
  Y:=gFN(v1,'Y');
  M:=gFN(v1,'M');
  with ds_SHBSRVCHECK do begin
    if not Locate('HOUSE',cbb_house.EditValue,[]) then begin
      Append;
      FN('HOUSE').AsVariant:=cbb_house.EditValue;
      FN('Y').AsVariant:=Y;
      FN('M').AsVariant:=M;
      Post;
    end;
  end;
end;

procedure TShbSrvCheckForm.btn_AddClick(Sender: TObject);
begin
  AddRec;
end;

procedure TShbSrvCheckForm.btn_delClick(Sender: TObject);
var
  sname, mes :string;
begin
  if gFN(v1,'CODE')=null then Exit;
  sname:=VarToStr(gFN(v1,'SNAME'))+' '+VarToStr(gFN(v1,'NOMER'));
  mes:= 'Вы действительно хотите удалить '+sname+'?';
  if Application.MessageBox(PChar(mes),
    'Предупреждение', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST)
    = IDYES then
  begin
    ds_SHBSRVCHECK.Delete;
  end;
end;

procedure TShbSrvCheckForm.btn_ExecClick(Sender: TObject);
begin
  OpenDS;
end;

procedure TShbSrvCheckForm.cbb_streetPropertiesEditValueChanged(
  Sender: TObject);
begin
  GetHouse;
end;

procedure TShbSrvCheckForm.CheckRecord(check: boolean);
var
  i :integer;
begin
  v1.BeginUpdate;
  try
    for i:=0 to v1.ViewData.RowCount -1 do
    begin
      v1.ViewData.Rows[i].Values[clv1Flag.Index]:=Integer(check);
    end;
  finally
    v1.EndUpdate;
  end;
end;

function TShbSrvCheckForm.ClearByYM(Y, M: Variant) :boolean;
var
  Q : TFibQuery;
begin
  Result:=false;
  Q:=GetQueryForUse(cmDB.WT,'delete from SHBSRVCHECK' + #13#10 +
                            'where (Y = :Y and M = :M)');
  try
    Q.Options:=[qoStartTransaction, qoAutoCommit];
    Q.ParamByName('Y').AsVariant:=Y;
    Q.ParamByName('M').AsVariant:=M;
    Q.ExecQuery;
    Result:=True;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TShbSrvCheckForm.CopyData(FromY, FromM, ToY, ToM: Variant);
var
  Q : TFibQuery;
begin
  SplashVisibility(true,'Копируем данные...');
  Q:=GetQueryForUse(cmDB.WT,
  'insert into SHBSRVCHECK (HOUSE, Y, M, F1, F2, F3, F4, F5, F6, F7, F8, ' +
    'F9, F11, F12, F13, F14, F15, F16, F17, F18,' + #13#10 +
    '                         F19, F20)' + #13#10 +
    'select SH.HOUSE, :Year, :Month, SH.F1, SH.F2, SH.F3, SH.F4, SH.F5, ' +
    'SH.F6, SH.F7, SH.F8, SH.F9, SH.F11, SH.F12,' + #13#10 +
    '       SH.F13, SH.F14, SH.F15, SH.F16, SH.F17, SH.F18, SH.F19, SH.F20' +
    #13#10 +
    'from SHBSRVCHECK SH' + #13#10 +
    'left outer join house h on h.code=sh.house' + #13#10 +
    'where  SH.Y=:Y and SH.M=:M --and h.a=1');
    {'insert into SHBSRVCHECK (HOUSE, Y, M, F1, F2, F3, F4, F5, F6, F7,' +#13#10+
    '        F8, F9, F11, F12, F13, F14, F15, F16, F17, F18, F19, F20)' +#13#10+
    'select HOUSE, :Year, :Month, F1, F2, F3, F4, F5, F6, F7, F8, F9,' +#13#10+
    '        F11, F12, F13, F14, F15, F16, F17, F18, F19, F20' + #13#10 +
    'from SHBSRVCHECK' + #13#10 +
    'where  Y=:Y and M=:M');}
  try
    Q.Options:=[qoStartTransaction, qoAutoCommit];
    Q.ParamByName('Y').AsVariant:=FromY;
    Q.ParamByName('M').AsVariant:=FromM;
    Q.ParamByName('Year').AsVariant:=ToY;
    Q.ParamByName('Month').AsVariant:=ToM;
    Q.ExecQuery;
  finally
    FreeQueryForUse(Q);
    SplashVisibility(False);
  end;
end;

procedure TShbSrvCheckForm.CopyForMonth;
var
  F : TGetPeriodShbSrvForm;
  mes, month : string;
  Y,M,ToY,ToM :Variant;
begin
  F:= TGetPeriodShbSrvForm.Create(self);
  try
    if F.ShowModal=mrOk then begin
      Y:=msk_Y.EditingValue;
      M:=cbb_M.ItemIndex+1;
      ToY:=F.msk_Y.EditingValue;
      ToM:=F.cbb_M.ItemIndex+1;
      If (Y=ToY) and (M=ToM) then begin
        Application.MessageBox('Не верно указан период!', 'Ошибка', MB_OK +
          MB_ICONSTOP + MB_DEFBUTTON2 + MB_TOPMOST);
        Exit;
      end;
      month:= LongMonthNames[Integer(ToM)];
      mes := 'Вы действительно хотите копировать данные '+#10#13+
             '     на '+month+' '+VarToStr(ToY)+'г.?'+#10#13+
             'Все записи за этот месяц будут перезаписаны!';
      if Application.MessageBox(PChar(mes), 'Внимание', MB_YESNO + MB_ICONWARNING
        + MB_DEFBUTTON2 + MB_TOPMOST) = IDYES then
      begin
        if not ClearByYM(ToY,ToM) then Exit;
        v1.BeginUpdate;
        try
          CopyData(Y,M,ToY,ToM);
        finally
          v1.EndUpdate;
        end;
      end;
    end;
  finally
    FreeAndNil(F);
  end;
end;

procedure TShbSrvCheckForm.CopyForNextMonth;
var
  mes, month : string;
  Y,M,ToY,ToM :Variant;
begin
  Y:=msk_Y.EditingValue;
  M:=cbb_M.ItemIndex+1;
  NextMonth(ToY,ToM,Y,M);
  month:= LongMonthNames[Integer(ToM)];
  mes := 'Вы действительно хотите копировать данные '+#10#13+
         '     на '+month+' '+VarToStr(ToY)+'г.?'+#10#13+
         'Все записи за этот месяц будут перезаписаны!';
  if Application.MessageBox(PChar(mes), 'Внимание', MB_YESNO + MB_ICONWARNING
    + MB_DEFBUTTON2 + MB_TOPMOST) = IDYES then
  begin
    if not ClearByYM(ToY,ToM) then Exit;
    v1.BeginUpdate;
    try
      CopyData(Y,M,ToY,ToM);
    finally
      v1.EndUpdate;
    end;
  end;
end;

procedure TShbSrvCheckForm.CreateMem;
var
  i :integer;
  FName :String;
begin
  CreateField(m1,'FLAG',ftInteger);
  CreateField(m1,'CODE',ftInteger);
  CreateField(m1,'HOUSE',ftInteger);
  CreateField(m1,'NOMER',ftString,32);
  CreateField(m1,'SNAME',ftString,128);
  for i:=1 to 20 do begin
    if i<>10 then begin
      FName:='F'+IntToStr(i);
      CreateField(m1,FName,ftSmallint);
    end;
  end;
  m1.Open;
end;

procedure TShbSrvCheckForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TShbSrvCheckForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  CreateMem;
  PrepareDS;
end;

procedure TShbSrvCheckForm.N1Click(Sender: TObject);
begin
  CheckRecord(True);
end;

procedure TShbSrvCheckForm.N2Click(Sender: TObject);
begin
  CheckRecord(False);
end;

procedure TShbSrvCheckForm.N4Click(Sender: TObject);
begin
  CopyForNextMonth;
end;

procedure TShbSrvCheckForm.N5Click(Sender: TObject);
begin
  CopyForMonth;
end;

procedure TShbSrvCheckForm.GetHouse;
begin
  //cbb_house.EditValue:=null;
  with ds_HOUSE do begin
    Close;
    if cbb_street.EditValue = null then Exit;
    MainWhereClause:='Street=:street';
    ParamByName('street').AsVariant:=cbb_street.EditValue;
    OrderClause:='Nomer';
    Open;
  end;
end;

procedure TShbSrvCheckForm.NextMonth(var ToY, ToM: Variant; Y, M: Variant);
var
  data, nexData :TDateTime;
begin
  data:=StrToDateTime('01.'+VarToStr(M)+'.'+VarToStr(Y));
  nexData:=IncMonth(data);
  ToY:=YearOf(nexData);
  ToM:=MonthOf(nexData);
end;

procedure TShbSrvCheckForm.OpenDS;
begin
  SplashVisibility(true,'Получаем данные...');
  try
    m1.Close; m1.Open;
    with ds_SHBSRVCHECK do begin
      Close;
      MainWhereClause:='SH.Y=:Y and SH.M=:M';
      ParamByName('Y').AsVariant:=msk_Y.EditingValue;
      ParamByName('M').AsVariant:=cbb_M.ItemIndex+1;
      OrderClause:='S.NAME, H.NOMER';
      Open;
    end;
    m1.LoadFromDataSet(ds_SHBSRVCHECK);
  finally
    SplashVisibility(false);
  end;
end;

function TShbSrvCheckForm.CheckParam: Boolean;
var
  s :string;
begin
  Result:=true;
  if (cbb_house.EditValue=null) or (cbb_house.EditValue=Unassigned) then
  begin
    s:='Не указан дом!';
    Application.MessageBox(PChar(S), 'Внимание', MB_OK + MB_ICONSTOP +
      MB_TOPMOST);
    Result:=false;
    Exit;
  end;
end;

procedure TShbSrvCheckForm.PostData(Sender: TObject);
begin
  v1.DataController.Post();
end;

procedure TShbSrvCheckForm.PrepareDS;
begin
  ds_STREET.Open;
  DSOptoins(ds_SHBSRVCHECK,'','SHBSRVCHECK','CODE','SHBSRVCHECK_GEN',False);
end;

initialization
 RegisterClass(TShbSrvCheckForm);
end.



