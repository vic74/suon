unit nmHouseFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxLayoutcxEditAdapters, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxmdaset, FIBDataSet, pFIBDataSet,
  Menus, StdCtrls, cxButtons, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCheckBox, cxCalc, cxCurrencyEdit, frxClass,frxFIBComponents,
  dxSkinsdxBarPainter, dxBar, dxLayoutControlAdapters, dxLayoutContainer,
  KontragentRepository, dxSkinDevExpressStyle, Vcl.ComCtrls, dxCore, cxDateUtils;

type
  TnmHouseForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grplc1Group1: TdxLayoutGroup;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    dt1: TcxDateEdit;
    itm_dt1: TdxLayoutItem;
    dt2: TcxDateEdit;
    itm_dt2: TdxLayoutItem;
    m1: TdxMemData;
    src_m1: TDataSource;
    clv1DU: TcxGridDBColumn;
    clv1DUNAME: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1SNAME: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1SERVISMATERIAL: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    clv1ED: TcxGridDBColumn;
    clv1QUANTITY: TcxGridDBColumn;
    clv1PRICE: TcxGridDBColumn;
    clv1SUMMA: TcxGridDBColumn;
    grplc1Group2: TdxLayoutGroup;
    spl1: TdxLayoutSplitterItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_grd2: TdxLayoutItem;
    btn_GetHouse: TcxButton;
    itm_GetHouse: TdxLayoutItem;
    btn_Exec: TcxButton;
    itm_Exec: TdxLayoutItem;
    grplc1Group3: TdxLayoutGroup;
    m2: TdxMemData;
    src_m2: TDataSource;
    ds1: TpFIBDataSet;
    cbb_Kontr: TcxLookupComboBox;
    itm_kontr: TdxLayoutItem;
    clv2FLAG: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2SNAME: TcxGridDBColumn;
    clv2NOMER: TcxGridDBColumn;
    src_kontr: TDataSource;
    fr1: TfrxReport;
    grplc1Group4: TdxLayoutGroup;
    grplc1Group5: TdxLayoutGroup;
    cbb_type: TcxComboBox;
    itm_type: TdxLayoutItem;
    pm1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    brm1: TdxBarManager;
    doc1: TdxBarDockControl;
    itm_doc1: TdxLayoutItem;
    bar1: TdxBar;
    btn_preview: TdxBarButton;
    sub1: TdxBarSubItem;
    btn_nodu: TdxBarButton;
    btn_print: TdxBarButton;
    btn_showAll: TdxBarButton;
    btn_m29: TdxBarButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_GetHouseClick(Sender: TObject);
    procedure clv2FLAGPropertiesEditValueChanged(Sender: TObject);
    procedure btn_ExecClick(Sender: TObject);
    procedure btn_prewClick(Sender: TObject);
    procedure btn_printAllClick(Sender: TObject);
    procedure cbb_typePropertiesEditValueChanged(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure btn_showAllClick(Sender: TObject);
    procedure btn_previewClick(Sender: TObject);
    procedure btn_noduClick(Sender: TObject);
    procedure btn_printClick(Sender: TObject);
    procedure btn_m29Click(Sender: TObject);
  private
    { Private declarations }
    fController: TKontragentController;
    procedure CreateMem;
    procedure openDS;
    procedure getHouse;
    function CheckParam :boolean;
    procedure GetMaterial;
    procedure PrintReport(show: boolean; D1, D2, Kontr, HOUSE, ADDR :Variant);
    procedure PrintAllReport(show: boolean; D1, D2, Kontr :Variant);
    procedure PrintAll;
    procedure SetFlag(check :integer);
    {$REGION 'Печать без ДУ'}
    ///<summary>Печать отчета по использованию материалов подрядной
    ///организацией без ДУ</summary>
    ///<param name="D1">дата начала периода</param>
    ///<param name="D2">дата окончания периода</param>
    ///<param name="Kontr">код подрядной организации</param>
    {$ENDREGION}
    procedure printWithOutDU(D1, D2, Kontr :Variant);
  public
    { Public declarations }
  end;

var
  nmHouseForm: TnmHouseForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, WorkOrderRep, LoadingSplash, dezCommon,
  MaterialUse;

{$R *.dfm}

procedure TnmHouseForm.btn_ExecClick(Sender: TObject);
begin
  GetMaterial;
end;

procedure TnmHouseForm.btn_GetHouseClick(Sender: TObject);
begin
  getHouse;
end;

procedure TnmHouseForm.btn_m29Click(Sender: TObject);
var
  obj : TMatUse;
begin
  obj:=TMatUse.Create;
  try
    with obj do begin
      D1:=dt1.EditValue;
      D2:=dt2.EditValue;
      PO:=cbb_Kontr.EditValue;
      PrintM29;
    end;
  finally
    obj.Free;
  end;
end;

procedure TnmHouseForm.btn_noduClick(Sender: TObject);
var
  obj : TMatUse;
begin
  if not CheckParam then Exit;
  obj:=TMatUse.Create;
  try
    with obj do begin
      D1:=dt1.EditValue;
      D2:=dt2.EditValue;
      PO:=cbb_Kontr.EditValue;
      PrintNoDU;
    end;
  finally
    obj.Free;
  end;
  //printWithOutDU(dt1.EditValue,dt2.EditValue,cbb_Kontr.EditValue);
end;

procedure TnmHouseForm.btn_previewClick(Sender: TObject);
begin
  if not CheckParam then Exit;
  PrintAllReport(True,dt1.EditValue,dt2.EditValue,cbb_Kontr.EditValue);
end;

procedure TnmHouseForm.btn_prewClick(Sender: TObject);
begin
  if cbb_type.ItemIndex=0 then
  begin
    if not CheckParam then Exit;
    if m1.isEmpty then Exit;
    PrintReport(True,dt1.EditValue,dt2.EditValue,
                        cbb_Kontr.EditValue,gFN(v1,'HOUSE'),
                        gFN(v1,'SNAME')+' '+gFN(v1,'NOMER'));
  end else
  begin
    //
  end;
end;

procedure TnmHouseForm.btn_printAllClick(Sender: TObject);
begin
  if cbb_type.ItemIndex=0 then
  if Application.MessageBox('Вы действительно хотите распечатать отчеты ' +
    #13#10 + '          по всем отмеченным адресам?', 'Внимание', MB_OKCANCEL
    + MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST) = IDOK then
  begin
    PrintAll;
  end;

end;

procedure TnmHouseForm.btn_printClick(Sender: TObject);
begin
  if cbb_type.ItemIndex=0 then
  if Application.MessageBox('Вы действительно хотите распечатать отчеты ' +
    #13#10 + '          по всем отмеченным адресам?', 'Внимание', MB_OKCANCEL
    + MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST) = IDOK then
  begin
    PrintAll;
  end;
end;

procedure TnmHouseForm.btn_showAllClick(Sender: TObject);
var
  obj :TMatUse;
begin
  if not CheckParam then Exit;
  if m1.isEmpty then Exit;
  obj:=TMatUse.Create;
  try
    with obj do begin
      D1:=dt1.EditValue;
      D2:=dt2.EditValue;
      PO:=cbb_Kontr.EditValue;
      PrintReport(true,gFN(v1,'HOUSE'),gFN(v1,'SNAME')+' '+gFN(v1,'NOMER'));
    end;
  finally
    obj.Free;
  end;
  //PrintReport(True,dt1.EditValue,dt2.EditValue,
  //                      cbb_Kontr.EditValue,gFN(v1,'HOUSE'),
  //                      gFN(v1,'SNAME')+' '+gFN(v1,'NOMER'));
end;

procedure TnmHouseForm.cbb_typePropertiesEditValueChanged(Sender: TObject);
begin
  case cbb_type.ItemIndex of
    0 : begin
          //SetFlag(0);
          grd2.Enabled:=True;
          btn_GetHouse.Enabled:=True;
          sub1.Visible:=ivNever;
          btn_showAll.Visible:=ivAlways;
          //btn_m29.Visible:=ivAlways;
        end;
    1 : begin
          //SetFlag(1);
          grd2.Enabled:=False;
          btn_GetHouse.Enabled:=False;
          sub1.Visible:=ivAlways;
          btn_showAll.Visible:=ivNever;
          //btn_m29.Visible:=ivNever;
        end;
  end;
end;

function TnmHouseForm.CheckParam: boolean;
begin
  Result:= True;
  if dt1.EditValue=null then begin
    Application.MessageBox('Не указана дата начала периода!', 'Внимание',
      MB_OK + MB_ICONSTOP + MB_TOPMOST);
    dt1.SetFocus;
    Result:=False;
    Exit;
  end;
  if dt2.EditValue=null then begin
    Application.MessageBox('Не указана дата окончания периода!', 'Внимание',
      MB_OK + MB_ICONSTOP + MB_TOPMOST);
    dt2.SetFocus;
    Result:=False;
    Exit;
  end;
  if  cbb_Kontr.EditValue=null then begin
    Application.MessageBox('Не указана подрядная организация!', 'Внимание',
      MB_OK + MB_ICONSTOP + MB_TOPMOST);
    cbb_Kontr.SetFocus;
    Result:=False;
    Exit;
  end;
end;

procedure TnmHouseForm.clv2FLAGPropertiesEditValueChanged(Sender: TObject);
begin
  v2.DataController.Post();
end;

procedure TnmHouseForm.CreateMem;
begin
  CreateField(m1,'DU',ftInteger);
  CreateField(m1,'DUNAME',ftString,128);
  CreateField(m1,'HOUSE',ftInteger);
  CreateField(m1,'SNAME',ftString,128);
  CreateField(m1,'NOMER',ftString,32);
  CreateField(m1,'CLASSMAT',ftInteger);
  CreateField(m1,'NAME',ftString,256);
  CreateField(m1,'ED',ftString,16);
  CreateField(m1,'QUANTITY',ftBCD);
  CreateField(m1,'PRICE',ftBCD);
  CreateField(m1,'SUMMA',ftFloat);
  m1.Open;
  //
  CreateField(m2,'FLAG',ftInteger);
  CreateField(m2,'HOUSE',ftInteger);
  CreateField(m2,'SNAME',ftString,128);
  CreateField(m2,'NOMER',ftString,32);
  m2.Open;
end;

procedure TnmHouseForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fController.Free;
  Action:=caFree;
end;

procedure TnmHouseForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  fController:= TKontragentController.Create;
  openDS;
  if ActiveUserType=1 then begin
    cbb_Kontr.EditValue:=ActiveKontragent;
    cbb_Kontr.Enabled:=False;
  end;
end;

procedure TnmHouseForm.getHouse;
begin
  if not CheckParam then Exit;
  try
    v2.BeginUpdate;
    SplashVisibility(True,'Подождите.');
    SetCapt('получаем список домов');
    with ds1 do begin
      Close;
      ParamByName('D1').AsVariant:=dt1.EditValue;
      ParamByName('D2').AsVariant:=dt2.EditValue;
      ParamByName('KONTR').AsVariant:=cbb_Kontr.EditValue;
      Open;
    end;
    m2.Close; m2.Open;
    if ds1.IsEmpty then begin
      Application.MessageBox('За выбранный период нарядов, ' + #13#10 +
        'по данной организации, не обнаружено.', 'Внимание', MB_OK +
        MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST);
      Exit;
    end;
    m2.LoadFromDataSet(ds1);
  finally
    SplashVisibility(false);
    v2.EndUpdate;
  end;
end;

procedure TnmHouseForm.GetMaterial;
var
  obj : TWorkOrder;
  HouseChecked :Boolean;
begin
  if not CheckParam then Exit;
  try
    v1.BeginUpdate;
    v2.BeginUpdate(lsimImmediate);
    m1.Close; m1.Open;
    SplashVisibility(True,'Дождитесь окончания операции.');
    HouseChecked:=False;
    obj:=TWorkOrder.Create;
    obj.D1:=dt1.EditValue;
    obj.D2:=dt2.EditValue;
    obj.Kontr:=cbb_Kontr.EditValue;
    if not m2.isEmpty then
    with m2 do begin
      First;
      while not Eof do begin
        if FieldByName('FLAG').AsVariant=1 then
        begin
          SetCapt(FieldByName('SNAME').AsString+' '+
                  FieldByName('NOMER').AsString);
          HouseChecked:=True;
          obj.House:=FieldByName('HOUSE').AsVariant;
          obj.GetMaterial(m1);
        end;
        Next;
      end;
    end;
    if not HouseChecked=True then begin
      SetCapt('Получаем данные по подрядной организации');
      obj.GetMaterial(m1);
    end;
  finally
    obj.Free;
    SplashVisibility(false);
    v2.EndUpdate;
    v1.EndUpdate;
  end;
end;

procedure TnmHouseForm.N1Click(Sender: TObject);
begin
  if not CheckParam then Exit;
  PrintAllReport(True,dt1.EditValue,dt2.EditValue,cbb_Kontr.EditValue);
end;

procedure TnmHouseForm.N2Click(Sender: TObject);
begin
  if not CheckParam then Exit;
  printWithOutDU(dt1.EditValue,dt2.EditValue,cbb_Kontr.EditValue);
end;

procedure TnmHouseForm.openDS;
begin
  CreateMem;
  src_kontr.DataSet:= fController.DS;
  if ActiveUserType=1 then
     fController.GetById(ActiveKontragent) else
     fController.GetActiveKontrShort;
end;

procedure TnmHouseForm.PrintAll;
var
  Addr :Variant;
begin
  try
    v2.BeginUpdate;
    SplashVisibility(True,'');
    with m2 do begin
      First;
      while not Eof do begin
        if FieldByName('FLAG').AsVariant=1 then
        begin
          ADDR:=FieldByName('SNAME').AsString+ ' '+FieldByName('NOMER').AsString;
          SetCapt(ADDR);
          PrintReport(false,dt1.EditValue,dt2.EditValue,
                            cbb_Kontr.EditValue,
                            FieldByName('HOUSE').AsVariant,
                            ADDR);
        end;
        Next;
      end;
    end;
  finally
    SplashVisibility(false);
    v2.EndUpdate;
  end;

end;

procedure TnmHouseForm.PrintReport(show: boolean;
      D1, D2, Kontr, HOUSE, ADDR :Variant);
var
  fdb: TfrxFIBDatabase;
  Q1: TfrxFIBQuery;
  mCODE, mNAME :variant;

  procedure PrepareQuery;
  begin
    Q1 :=fr1.FindObject('Q1') as TfrxFIBQuery;
    with Q1 do begin
      Close;
      SQL.Text:=
      '      select DU.code DU, Du.name DUName,' +#13#10+
      '             ws.house,s.name SNAME,h.nomer,' +#13#10+
      '             WS.CLASSMAT,c.FULLNAME name,C.ED,' +#13#10+
      '             sum(WS.QUANTITY) QUANTITY, sum(WS.PRICE) PRICE,' +#13#10+
      '             sum(WS.QUANTITY * WS.PRICE) SUMMA ' +#13#10+
      '      from WORKSPECMATERIAL WS' +#13#10+
      '      left outer join classmat c on c.CODE = ws.CLASSMAT' +#13#10+
      '      left outer join house h on h.code=ws.house' +#13#10+
      '      left outer join street s on s.code=h.street' +#13#10+
      '      left outer join DU on DU.code=h.du' +#13#10+
      '      WHERE' +#13#10+
      '      WS.DATA between :D1 and :D2 and' +#13#10+
      '      WS.KONTRAGENT = :KONTR and WS.HOUSE = :HOUSE' +#13#10+
      '      GROUP BY ' +#13#10+
      '      DU.code, Du.name,ws.house,s.name,h.nomer,' +#13#10+
      '      WS.CLASSMAT, c.FULLNAME, C.ED' +#13#10+
      '      ORDER BY Du.name,s.name,h.nomer';
      ParamByName('D1').Value:=D1;
      ParamByName('D2').Value:=D2;
      ParamByName('KONTR').Value:=Kontr;
      ParamByName('HOUSE').Value:=HOUSE;
      //Open;
    end;
  end;
begin
    fr1.LoadFromFile('rep\material_usage.fr3');
    fr1.Variables['varD1'] := D1;
    fr1.Variables['varD2'] := D2;
    fr1.Variables['varKontr'] :=#39+ cbb_Kontr.Text +#39;
    fr1.Variables['varAddr'] :=#39+ ADDR +#39;
    GetHouseManager(mCODE,mNAME,Kontr,HOUSE);
    fr1.Variables['varManager'] :=#39+ mNAME +#39;
    fdb := fr1.FindObject('fdb1') as TfrxFIBDatabase;
    with fdb do
    begin
      DatabaseName := cmDB.DB.DBName;
      Params.Values['user_name'] := cmDB.DB.DBParams.Values['user_name'];
      Params.Values['password'] := cmDB.DB.DBParams.Values['password'];
      Params.Values['sql_role_name'] := cmDB.DB.DBParams.Values['sql_role_name'];
      SQLDialect := 3;
      Connected := true;
    end;
    PrepareQuery;
    if show then fr1.ShowReport() else
    begin
      fr1.PrepareReport;
      fr1.PrintOptions.ShowDialog := False;
      fr1.Print;
    end;
end;

procedure TnmHouseForm.printWithOutDU(D1, D2, Kontr :Variant);
var
  fdb: TfrxFIBDatabase;
  Q1: TfrxFIBQuery;
  mCODE, mNAME :variant;

  procedure PrepareQuery;
  begin
    Q1 :=fr1.FindObject('Q1') as TfrxFIBQuery;
    with Q1 do begin
      Close;
      SQL.Text:=
      '      select WS.CLASSMAT,C.FULLNAME name, C.ED,' +#13#10+
      '             sum(WS.QUANTITY) QUANTITY, sum(WS.PRICE) PRICE,' +#13#10+
      '             sum(WS.QUANTITY * WS.PRICE) SUMMA ' +#13#10+
      '      from WORKSPECMATERIAL WS' +#13#10+
      '      left outer join CLASSMAT C on C.CODE = ws.CLASSMAT' +#13#10+
      '      WHERE' +#13#10+
      '      WS.DATA between :D1 and :D2 and' +#13#10+
      '      WS.KONTRAGENT = :KONTR' +#13#10+
      '      GROUP BY ' +#13#10+
      '      WS.CLASSMAT, C.FULLNAME, C.ED';
      ParamByName('D1').Value:=D1;
      ParamByName('D2').Value:=D2;
      ParamByName('KONTR').Value:=Kontr;
      //Open;
    end;
  end;
begin
  fr1.LoadFromFile('rep\m_noDU.fr3');
  fr1.Variables['varD1'] := D1;
  fr1.Variables['varD2'] := D2;
  fr1.Variables['varKontr'] :=#39+ cbb_Kontr.Text +#39;
  fr1.Variables['varAddr'] :=#39+#39;
  fr1.Variables['varManager'] :=#39+#39;
  fdb := fr1.FindObject('fdb1') as TfrxFIBDatabase;
  with fdb do
  begin
    DatabaseName := cmDB.DB.DBName;
    Params.Values['user_name'] := cmDB.DB.DBParams.Values['user_name'];
    Params.Values['password'] := cmDB.DB.DBParams.Values['password'];
    Params.Values['sql_role_name'] := cmDB.DB.DBParams.Values['sql_role_name'];
    SQLDialect := 3;
    Connected := true;
  end;
  PrepareQuery;
  fr1.ShowReport();
end;

procedure TnmHouseForm.PrintAllReport(show: boolean; D1, D2, Kontr :Variant);
var
  fdb: TfrxFIBDatabase;
  Q1: TfrxFIBQuery;
  mCODE, mNAME :variant;

  procedure PrepareQuery;
  begin
    Q1 :=fr1.FindObject('Q1') as TfrxFIBQuery;
    with Q1 do begin
      Close;
      SQL.Text:=
      '      select DU.code DU, Du.name DUName,' +#13#10+
      '        WS.CLASSMAT ,C.FULLNAME name,C.ED,' +#13#10+
      '          sum(WS.QUANTITY) QUANTITY, sum(WS.PRICE) PRICE,' +#13#10+
      '          sum(WS.QUANTITY * WS.PRICE) SUMMA' +#13#10+
      '      from WORKSPECMATERIAL WS' +#13#10+
      '      left outer join CLASSMAT C on C.CODE = ws.CLASSMAT' +#13#10+
      '      left outer join house h on h.code=ws.house' +#13#10+
      '      left outer join street s on s.code=h.street' +#13#10+
      '      left outer join DU on DU.code=h.du' +#13#10+
      '      WHERE' +#13#10+
      '      WS.DATA between :D1 and :D2 and' +#13#10+
      '      WS.KONTRAGENT = :KONTR' +#13#10+
      '      GROUP BY DU.code, Du.name, WS.CLASSMAT,C.FULLNAME,C.ED' +#13#10+
      '      ORDER BY Du.name';
      ParamByName('D1').Value:=D1;
      ParamByName('D2').Value:=D2;
      ParamByName('KONTR').Value:=Kontr;
      //Open;
    end;
  end;
begin
    fr1.LoadFromFile('rep\material_usageAll.fr3');
    fr1.Variables['varD1'] := D1;
    fr1.Variables['varD2'] := D2;
    fr1.Variables['varKontr'] :=#39+ cbb_Kontr.Text +#39;
    fr1.Variables['varAddr'] :=#39+#39;
    //GetHouseManager(mCODE,mNAME,Kontr,HOUSE);
    //fr1.Variables['varManager'] :=#39+ mNAME +#39;
    fr1.Variables['varManager'] :=#39+#39;
    fdb := fr1.FindObject('fdb1') as TfrxFIBDatabase;
    with fdb do
    begin
      DatabaseName := cmDB.DB.DBName;
      Params.Values['user_name'] := cmDB.DB.DBParams.Values['user_name'];
      Params.Values['password'] := cmDB.DB.DBParams.Values['password'];
      Params.Values['sql_role_name'] := cmDB.DB.DBParams.Values['sql_role_name'];
      SQLDialect := 3;
      Connected := true;
    end;
    PrepareQuery;
    if show then fr1.ShowReport() else
    begin
      fr1.PrepareReport;
      fr1.PrintOptions.ShowDialog := False;
      fr1.Print;
    end;
end;


procedure TnmHouseForm.SetFlag(check: integer);
begin
  v2.BeginUpdate;
  try
    with m2 do begin
      First;
      while not Eof do begin
        Edit;
        FieldByName('FLAG').AsVariant:=check;
        Post;
        Next;
      end;
    end;
  finally
    v2.EndUpdate;
  end;
end;

initialization
 RegisterClass(TnmHouseForm);
end.



