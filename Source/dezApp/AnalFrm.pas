unit AnalFrm;

interface

uses
  DateUtils,
  dxRibbonForm,FIBQuery, pFIBCacheQueries,cxProgressBar,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinsdxRibbonPainter,
  cxGridExportLink,
  dxSkinsdxBarPainter, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxLayoutControl, dxmdaset,
  FIBDataSet, pFIBDataSet, FIBDatabase, pFIBDatabase, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxLayoutLookAndFeels, dxBar, dxRibbon, cxCalendar, cxSpinEdit,
  cxBarEditItem, cxGridBandedTableView, cxGridDBBandedTableView,
  cxDBLookupComboBox, cxPropertiesStore, BaseForm, cxDropDownEdit, cxMaskEdit,
  dxRibbonSkins, dxLayoutContainer, KontragentRepository, dxSkinDevExpressStyle;

type
  TAnalForm = class(TDezForm)
    Ribbon1Tab1: TdxRibbonTab;
    Ribbon1: TdxRibbon;
    bm1: TdxBarManager;
    bar1: TdxBar;
    btn1: TdxBarButton;
    grp1: TdxLayoutGroup;
    lcntr1: TdxLayoutControl;
    LSkin1: TdxLayoutLookAndFeelList;
    LCxSkin1: TdxLayoutCxLookAndFeel;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    Itm_grd1: TdxLayoutItem;
    ds_rep: TpFIBDataSet;
    src_rep: TDataSource;
    mt_rep: TdxMemData;
    vb1: TcxGridDBBandedTableView;
    ed_d11: TcxBarEditItem;
    ed_d22: TcxBarEditItem;
    ed_step: TcxBarEditItem;
    clvb1Column1: TcxGridDBBandedColumn;
    strep1: TcxStyleRepository;
    styl_select1: TcxStyle;
    ed_kontr: TcxBarEditItem;
    src_kontr: TDataSource;
    prop1: TcxPropertiesStore;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    Itm_grd2: TdxLayoutItem;
    splt1: TdxLayoutSplitterItem;
    mt_top: TdxMemData;
    src_top: TDataSource;
    ds_top: TpFIBDataSet;
    vb2: TcxGridDBBandedTableView;
    styl_fakt: TcxStyle;
    lb_type: TcxBarEditItem;
    dlgSave: TSaveDialog;
    btn_excel: TdxBarButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure vb2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure vb2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure vb1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btn_excelClick(Sender: TObject);
  private
    { Private declarations }
    fController: TKontragentController;
    procedure CreateGrid;
    procedure CreateMem;
    procedure DsOpen;
    procedure AddMemData;
    function GetFName(D :TDateTime) :string;
    function DataCorrect :Boolean;
    procedure CreateTopGrid;
    procedure CreateTopMem;
    procedure DsTopOpen(d1,d2 :variant);
    procedure AddTopMemData;
    procedure OpenBottomGrid;
    procedure GetDateParam(var d1,d2 :variant);
    procedure GetRepMonth(var m1,m2 :variant);
    function GetType :Variant;
    procedure CustomDrawCell(Sender: TcxCustomGridTableView;
              ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
              var ADone: Boolean);
    function CheckParam :Boolean;
  public
    { Public declarations }
  end;

var
  AnalForm: TAnalForm;

implementation

uses AppUtils, cmDBUnit, LoadingSplash;

{$R *.dfm}


procedure TAnalForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fController.Free;
  Action:=caFree;
end;

procedure TAnalForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  fController:= TKontragentController.Create;
  src_kontr.DataSet:= fController.DS;
  fController.GetActiveKontragents();
end;

function TAnalForm.CheckParam :Boolean;
begin
  Result:=True;
  if ed_step.EditValue=null then
  begin
    ShowMessage('Не указан год!');
    Result:=False;
    ed_step.SetFocus();
    Exit;
  end;
  if ed_d11.EditValue=null then
  begin
    ShowMessage('Не указан начальный период!');
    Result:=False;
    ed_d11.SetFocus();
    Exit;
  end;
  if ed_d22.EditValue=null then
  begin
    ShowMessage('Не указан конечный период!');
    Result:=False;
    ed_d22.SetFocus();
    Exit;
  end;
  if lb_type.EditValue=null then
  begin
    ShowMessage('Не указан тип!');
    Result:=False;
    lb_type.SetFocus();
    Exit;
  end;
end;

procedure TAnalForm.btn1Click(Sender: TObject);
var
  d1,d2 :variant;
begin
  if not CheckParam then Exit;

  //GetDateParam(d1,d2);
  //проверить корректность ввода дат и шага
  //if DataCorrect=false then Exit;
  // создаем верхний грид
  CreateTopGrid;
  mt_top.DisableControls;
  CreateTopMem;
  DsTopOpen(ed_d11.EditValue,ed_d22.EditValue);
  AddTopMemData;
  mt_top.EnableControls;
end;

procedure TAnalForm.btn_excelClick(Sender: TObject);
begin
  if dlgSave.Execute then
    ExportGridToExcel(dlgSave.FileName, grd2, True, True, True, 'xls');
end;

function TAnalForm.DataCorrect :Boolean;
begin
  if (ed_d11.EditValue<>null) and
     (ed_d22.EditValue<>null) and
     (ed_step.EditValue<>null) and
     (ed_step.EditValue>0) and
     (TDateTime(ed_d11.EditValue)<TDateTime(ed_d22.EditValue)) then
      Result:=True else
  begin
    ShowMessage('Не верно указанны параметры!');
    Result:=False;
  end;
end;

procedure TAnalForm.CreateTopGrid;
var
  D1, D2, D3,D4 :TDateTime;
  m1,m2 :Variant;
  FName :string;
  Step :Integer;
  C :TcxGridDBBandedColumn;
  i :Integer;
begin
  //D1:=ed_d1.EditValue;
  //D2:=ed_d2.EditValue;
  //Step:=ed_step.EditValue;
  GetRepMonth(m1,m2);
  //if m1>m2 then
  //begin
  //  ShowMessage('Неверно указан период!');
  //  Exit;
  //end;
  vb2.ClearItems;
  vb2.Bands.Clear;
  i:=0;
  vb2.Bands.Add;
  vb2.Bands[i].Caption := ' ';
  vb2.Bands[i].FixedKind:=fkLeft;
  vb2.Bands[i].Options.HoldOwnColumnsOnly:=True;

  C := vb2.CreateColumn;
  C.DataBinding.FieldName := 'kontragent';
  C.Caption:='Подрядчик';
  C.Name := 'clvb2'+'kontragent';
  c.Width:=30;
  C.Position.BandIndex := i;
  c.Visible:=False;

  C := vb2.CreateColumn;
  C.DataBinding.FieldName := 'KONTRNAME';
  C.Caption:='Подрядчик';
  C.Name := 'clvb2'+'KONTRNAME';
  c.Width:=100;
  C.Position.BandIndex := i;
  //C.GroupIndex:=0;

  C := vb2.CreateColumn;
  C.DataBinding.FieldName := 'SRVDOG';
  C.Caption:='osm';
  C.Name := 'clvb2'+'SRVDOG';
  c.Width:=30;
  C.Position.BandIndex := i;
  c.Visible:=False;

  C := vb2.CreateColumn;
  C.DataBinding.FieldName := 'DOGNOM';
  C.Name := 'clvb2'+'DOGNOM';
  c.Width:=60;
  C.Caption:='Осмотр №';
  C.Position.BandIndex := i;

  {D3:=D1;
  D4:=D3+Step; }
  repeat
    vb2.Bands.Add;
    Inc(i);
    Fname:=VarToStr(m1)+'_'+VarToStr(ed_step.EditValue);
    vb2.Bands[i].Caption := ShortMonthNames[Integer(m1)];
    //FormatDateTime('dd.mm.yy',D3)+' - '+FormatDateTime('dd.mm.yy',D4);
    vb2.Bands[i].Options.HoldOwnColumnsOnly:=True;

    C := vb2.CreateColumn;
    C.DataBinding.FieldName := 'planed'+Fname;
    C.Name := 'clvb2'+'planed'+Fname;
    C.Caption:='План';
    C.Position.BandIndex := i;
    //C.Summary.FooterKind:=skSum;

    C := vb2.CreateColumn;
    C.DataBinding.FieldName := 'prov'+Fname;
    C.Name := 'clvb2'+'prov'+Fname;
    C.Caption:='Факт';
    C.Position.BandIndex := i;

    C := vb2.CreateColumn;
    C.DataBinding.FieldName := 'pros'+Fname;
    C.Name := 'clvb2'+'pros'+Fname;
    C.Caption:='Просрочено';
    C.Position.BandIndex := i;

    //C.Summary.FooterKind:=skSum;
    inc(m1);
    {D3:=D4+1;
    D4:=D3+Step;
    if D4>d2 then D4:=D2;}
  until m1>m2;

    vb2.Bands.Add;
    Inc(i);
    vb2.Bands[i].Caption :='Итого';
    vb2.Bands[i].Options.HoldOwnColumnsOnly:=True;

    C := vb2.CreateColumn;
    C.DataBinding.FieldName := 'PLANEDItog';
    C.Name := 'clvb2'+'PLANEDItog';
    C.Caption:='План';
    C.Position.BandIndex := i;
    C.Styles.Content:=styl_select1;
    C.Summary.FooterKind:=skSum;
      C.Summary.GroupKind:=skSum;
      C.Summary.FooterKind:=skSum;
      C.Summary.GroupFooterKind:=skSum;
      C.Summary.GroupFormat := ' План: 0';
      C.Summary.GroupFooterFormat:=' План: 0';

    C := vb2.CreateColumn;
    C.DataBinding.FieldName := 'provItog';
    C.Name := 'clvb2'+'provItog';
    C.Caption:='Факт';
    C.Position.BandIndex := i;
    C.Styles.Content:=styl_select1;
    C.Summary.FooterKind:=skSum;
      C.Summary.GroupKind:=skSum;
      C.Summary.FooterKind:=skSum;
      C.Summary.GroupFooterKind:=skSum;
      C.Summary.GroupFormat := ' Факт: 0';
      C.Summary.GroupFooterFormat:=' Факт: 0';

    C := vb2.CreateColumn;
    C.DataBinding.FieldName := 'percent';
    C.Name := 'cl'+'percent';
    C.Caption:='%';
    C.HeaderAlignmentHorz:=taCenter;
    C.Position.BandIndex := i;
    c.PropertiesClass:=TcxProgressBarProperties;

end;

procedure TAnalForm.CreateGrid;
var
  D1, D2, D3,D4 :TDateTime;
  Step :Integer;
  m1,m2 :Variant;
  FName :string;
  C :TcxGridDBBandedColumn;
  i :Integer;
begin
  //D1:=ed_d1.EditValue;
  //D2:=ed_d2.EditValue;
  //Step:=ed_step.EditValue;
  GetRepMonth(m1,m2);
  vb1.ClearItems;
  vb1.Bands.Clear;
  i:=0;
  vb1.Bands.Add;
  vb1.Bands[i].Caption := ' ';
  vb1.Bands[i].FixedKind:=fkLeft;
  vb1.Bands[i].Options.HoldOwnColumnsOnly:=True;

  C := vb1.CreateColumn;
  C.DataBinding.FieldName := 'KONTRNAME';
  C.Caption:='Подрядчик';
  C.Name := 'cl'+'KONTRNAME';
  c.Width:=100;
  C.Position.BandIndex := i;
  //C.GroupIndex:=0;
  c.Visible:=False;

  C := vb1.CreateColumn;
  C.DataBinding.FieldName := 'DOGNOM';
  C.Name := 'cl'+'DOGNOM';
  c.Width:=60;
  C.Caption:='Осмотр №';
  C.Position.BandIndex := i;
  c.Visible:=False;

  //StreetName
  C := vb1.CreateColumn;
  C.DataBinding.FieldName := 'StreetName';
  C.Name := 'cl'+'StreetName';
  C.Caption:='Улица';
  c.Width:=100;
  C.Position.BandIndex := i;

  C := vb1.CreateColumn;
  C.DataBinding.FieldName := 'HOUSENOM';
  C.Name := 'cl'+'HOUSENOM';
  C.Caption:='Дом №';
  c.Width:=60;
  C.Position.BandIndex := i;
  C.Summary.GroupKind:=skCount;
  C.Summary.FooterKind:=skCount;
  C.Summary.GroupFooterKind:=skCount;
  C.Summary.GroupFormat := 'Домов: 0';
  C.Summary.GroupFooterFormat:='Домов: 0';


    vb1.Bands.Add;
    Inc(i);
    vb1.Bands[i].Caption := 'Дата';
    vb1.Bands[i].Options.HoldOwnColumnsOnly:=True;
  C := vb1.CreateColumn;
  C.DataBinding.FieldName := 'd1';
  C.Name := 'cl'+'d1';
  C.Caption:='Начала';
  C.Position.BandIndex := i;
  c.OnCustomDrawCell:=CustomDrawCell;

  C := vb1.CreateColumn;
  C.DataBinding.FieldName := 'd2';
  C.Name := 'cl'+'d2';      //LOCKDATA
  C.Caption:='Окончания';
  C.Position.BandIndex := i;
  c.OnCustomDrawCell:=CustomDrawCell;

  C := vb1.CreateColumn;
  C.DataBinding.FieldName := 'SHDATE';
  C.Name := 'cl'+'SHDATE';
  C.Caption:='Сдачи акта';
  C.Position.BandIndex := i;

  C := vb1.CreateColumn;
  C.DataBinding.FieldName := 'LOCKDATA';
  C.Name := 'cl'+'LOCKDATA';
  C.Caption:='Закрытия';
  C.Position.BandIndex := i;

    C := vb1.CreateColumn;
    C.DataBinding.FieldName := 'PROS';
    C.Name := 'cl'+'PROS';
    C.Caption:='План';
    C.Position.BandIndex := i;
    c.Visible:=False;
    c.VisibleForCustomization:=False;

  {D3:=D1;
  D4:=D3+Step;}
  repeat
    Fname:=VarToStr(m1)+'_'+VarToStr(ed_step.EditValue);
    vb1.Bands.Add;
    Inc(i);
    vb1.Bands[i].Caption := ShortMonthNames[Integer(m1)];
    //FormatDateTime('dd.mm.yy',D3)+' - '+FormatDateTime('dd.mm.yy',D4);
    vb1.Bands[i].Options.HoldOwnColumnsOnly:=True;

    C := vb1.CreateColumn;
    C.DataBinding.FieldName := 'planed'+Fname;
    C.Name := 'cl'+'planed'+Fname;
    C.Caption:='План';
    C.Position.BandIndex := i;
    //C.Summary.FooterKind:=skSum;


    C := vb1.CreateColumn;
    C.DataBinding.FieldName := 'prov'+Fname;
    C.Name := 'cl'+'prov'+Fname;
    C.Caption:='Факт';
    C.Position.BandIndex := i;
    C.Styles.Content:=styl_fakt;
    //C.Summary.FooterKind:=skSum;
    inc(m1);
  until m1>m2;

    vb1.Bands.Add;
    Inc(i);
    vb1.Bands[i].Caption :='Итого';
    vb1.Bands[i].Options.HoldOwnColumnsOnly:=True;

    C := vb1.CreateColumn;
    C.DataBinding.FieldName := 'PLANEDItog';
    C.Name := 'cl'+'PLANEDItog';
    C.Caption:='План';
    C.Position.BandIndex := i;
    C.Styles.Content:=styl_select1;
    C.Summary.FooterKind:=skSum;
      C.Summary.GroupKind:=skSum;
      C.Summary.FooterKind:=skSum;
      C.Summary.GroupFooterKind:=skSum;
      C.Summary.GroupFormat := ' План: 0';
      C.Summary.GroupFooterFormat:=' План: 0';

    C := vb1.CreateColumn;
    C.DataBinding.FieldName := 'provItog';
    C.Name := 'cl'+'provItog';
    C.Caption:='Факт';
    C.Position.BandIndex := i;
    C.Styles.Content:=styl_select1;
    C.Summary.FooterKind:=skSum;
      C.Summary.GroupKind:=skSum;
      C.Summary.FooterKind:=skSum;
      C.Summary.GroupFooterKind:=skSum;
      C.Summary.GroupFormat := ' Факт: 0';
      C.Summary.GroupFooterFormat:=' Факт: 0';
end;

procedure TAnalForm.CreateTopMem;
var
  D1, D2, D3,D4 :TDateTime;
  m1,m2 :Variant;
  FName :string;
  Step,i :Integer;
begin
  //D1:=ed_d1.EditValue;
  //D2:=ed_d2.EditValue;
  GetRepMonth(m1,m2);
  //Step:=ed_step.EditValue;
  with mt_top do
  begin
    if FieldCount>1 then
    begin
      Close;
      for I := 0 to FieldDefs.Count - 1 do
      FieldDefs.Delete(FieldDefs.Count - 1);
      for I := 0 to FieldCount - 1 do
      Fields[FieldCount - 1].Destroy;
    end;

    //CreateField(mt_rep,'Data',ftDate);
    CreateField(mt_top,'kontragent',ftinteger);
    CreateField(mt_top,'SRVDOG',ftinteger);
    CreateField(mt_top,'DOGNOM',ftString,16);
    CreateField(mt_top,'KONTRNAME',ftString,128);
    CreateField(mt_top,'D1',ftDate);
    CreateField(mt_top,'SHOWDATE',ftDate);

    //D3:=D1;
    //D4:=D3+Step;
    repeat
      Fname:=VarToStr(m1)+'_'+VarToStr(ed_step.EditValue);
      CreateField(mt_top,'PROV'+Fname,ftinteger);
      CreateField(mt_top,'PLANED'+Fname,ftinteger);
      CreateField(mt_top,'PROS'+Fname,ftinteger);
      //D3:=D4+1;
      //D4:=D3+Step;
      //if D4>d2 then D4:=D2;
      inc(m1);
    until m1>m2;
    CreateField(mt_top,'PROVItog',ftinteger);
    CreateField(mt_top,'PLANEDItog',ftinteger);
    CreateField(mt_top,'percent',ftFloat);
    Open
  end;
end;

procedure TAnalForm.CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
  var
    Pros :Variant;
begin
  Pros:=AViewInfo.GridRecord.Values[vb1.GetColumnByFieldName('PROS').Index];
  if Pros=1 then
  begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TAnalForm.DsTopOpen(d1,d2 :variant);
var
  sType: Integer;
begin
  sType:= GetType;   // and s.stype=:tp
  with ds_top do
  begin
    Close;
    if ed_kontr.EditValue=null then
    MainWhereClause:='sp.d1 >= :d1 and sp.d1<=:d2' else
    MainWhereClause:=
        'sd.kontragent=:kontr and  sp.d1 >= :d1 and sp.d1<=:d2';
    if sType<2 then
      MainWhereClause:= MainWhereClause+' and s.stype=:tp';
    ParamByName('d1').AsDateTime:=d1;
    ParamByName('d2').AsDateTime:=d2;
    if sType<2 then
    ParamByName('tp').AsVariant:=sType;
    if ed_kontr.EditValue<>null then
    ParamByName('kontr').AsInteger:=ed_kontr.EditValue;
    OrderClause:='sd.kontragent,s.srvdog,sp.d1, sp.showdate';
    //ShowMessage(ReadySelectText);
    Open;
  end;
end;

procedure TAnalForm.CreateMem;
var
  D1, D2, D3,D4 :TDateTime;
  m1,m2 :Variant;
  FName :string;
  Step,i :Integer;
begin
  //D1:=ed_d1.EditValue;
  //D2:=ed_d2.EditValue;
  //Step:=ed_step.EditValue;
  GetRepMonth(m1,m2);
  if mt_rep.FieldCount>1 then
  begin
    mt_rep.Close;
    for I := 0 to mt_rep.FieldDefs.Count - 1 do
    mt_rep.FieldDefs.Delete(mt_rep.FieldDefs.Count - 1);
    for I := 0 to mt_rep.FieldCount - 1 do
    mt_rep.Fields[mt_rep.FieldCount - 1].Destroy;
  end;

  //CreateField(mt_rep,'Data',ftDate);
  CreateField(mt_rep,'Code',ftinteger);
  CreateField(mt_rep,'SRVDOG',ftinteger);
  CreateField(mt_rep,'DOGNOM',ftString,16);
  CreateField(mt_rep,'KONTRNAME',ftString,128);
  CreateField(mt_rep,'SHOWDATE',ftDate);
  CreateField(mt_rep,'STREETNAME',ftString,128);
  CreateField(mt_rep,'HOUSENOM',ftString,32);
  CreateField(mt_rep,'D1',ftDate);
  CreateField(mt_rep,'D2',ftDate);
  CreateField(mt_rep,'SHDATE',ftDate);
  CreateField(mt_rep,'LOCKDATA',ftDate);
  CreateField(mt_rep,'PROS',ftinteger);
  repeat
    Fname:=VarToStr(m1)+'_'+VarToStr(ed_step.EditValue);
    CreateField(mt_rep,'PROV'+Fname,ftDate);
    CreateField(mt_rep,'PLANED'+Fname,ftDate);
    inc(m1);
  until m1>m2;
  CreateField(mt_rep,'PROVItog',ftinteger);
  CreateField(mt_rep,'PLANEDItog',ftinteger);
  CreateField(mt_rep,'percent',ftFloat);
  mt_rep.Open
end;

procedure TAnalForm.DsOpen;
var
 Kontr, sType :Integer;
 srvDog :Integer;
 d1,d2 :Variant;
begin
  if vb2.GetColumnByFieldName('kontragent').EditValue=null then Exit;
  GetDateParam(d1,d2);
  sType:= GetType;  //and s.STYPE=:tp
  Kontr:=vb2.GetColumnByFieldName('kontragent').EditValue;
  srvDog:=vb2.GetColumnByFieldName('SRVDOG').EditValue;
  ds_rep.Close;
  ds_rep.MainWhereClause:='sd.kontragent=:kontr'+
      ' and  sp.d1 >= :d1 and sp.d1<=:d2 and s.SRVDOG=:srvDog';
  if sType<2 then
    ds_rep.MainWhereClause:= ds_rep.MainWhereClause+' and s.STYPE=:tp';
  ds_rep.ParamByName('d1').AsVariant:=d1;
  ds_rep.ParamByName('d2').AsVariant:=d2;
  ds_rep.ParamByName('kontr').AsInteger:=Kontr;
  ds_rep.ParamByName('SRVDOG').AsInteger:=srvDog;
  if sType<2 then
    ds_rep.ParamByName('tp').AsVariant:=sType;
  ds_rep.OrderClause:='sp.showdate';
  ds_rep.Open;
 // ShowMessage(IntToStr(ds_rep.RecordCount));
end;

procedure TAnalForm.AddTopMemData;
var
  FName :string;
  srvDog :Integer;
  kontragent :Integer;
begin
  srvDog:=-1;
  kontragent:=-1;
  while not ds_top.Eof do
  begin
    with mt_top do
    begin
      if (kontragent<>ds_top.FN('kontragent').AsInteger) and
         (srvDog<>ds_top.FN('SRVDOG').AsInteger) then
      begin
        Append;
        FieldByName('kontragent').AsInteger:=ds_top.FN('kontragent').AsInteger;
        FieldByName('SRVDOG').AsInteger:=ds_top.FN('SRVDOG').AsInteger;
        FieldByName('DOGNOM').AsString:=ds_top.FN('DOGNOM').AsString;
        FieldByName('KONTRNAME').AsString:=ds_top.FN('KONTRNAME').AsString;
        FieldByName('SHOWDATE').AsDateTime:=ds_top.FN('SHOWDATE').AsDateTime;
        FieldByName('D1').AsDateTime:=ds_top.FN('D1').AsDateTime;
        FName:='PLANED'+GetFName(ds_top.FN('D1').AsDateTime);
        FieldByName(FName).AsInteger:=1;
        FieldByName('PLANEDItog').AsInteger:=
                                       FieldByName('PLANEDItog').AsInteger+1;
        if {(ds_top.FN('LOCKDATA').AsDateTime>StrToDateTime('30.12.1899')) and}
           (ds_top.FN('LOCK').AsVariant=1)
         then
        begin
         FName:='PROV'+GetFName(ds_top.FN('D1').AsDateTime);
         FieldByName(FName).AsInteger:=1;
         FieldByName('SHOWDATE').AsDateTime:=ds_top.FN('SHOWDATE').AsDateTime;
         //FieldByName('LOCKDATA').AsDateTime:=ds_top.FN('LOCKDATA').AsDateTime;
         FieldByName('PROVItog').AsInteger:=
                                         FieldByName('PROVItog').AsInteger+1;
        end else
          if ((ds_top.FN('SHOWDATE').AsDateTime<Date) and
                        (ds_top.FN('LOCK').AsVariant=0)) //or
           //(дата окончания меньше текущей даты и акт не блокирован)
           //или
           //(дата окончания меньше даты блокировки и акт блокирован)
            //((ds_top.FN('d2').AsDateTime<ds_top.FN('LOCKDATA').AsDateTime)
            // and (ds_top.FN('LOCK').AsVariant=1))
              then
          begin
            FName:='PROS'+GetFName(ds_top.FN('D1').AsDateTime);
            if FieldByName(FName).AsVariant=null then
               FieldByName(FName).AsVariant:=0;
            FieldByName(FName).AsInteger:=
                    FieldByName(FName).AsInteger+1;
          end;
         FieldByName('percent').AsInteger:=FieldByName('PROVItog').AsInteger*100
                                        div FieldByName('PLANEDItog').AsInteger;
        Post;
        srvDog:=ds_top.FN('SRVDOG').AsInteger;
        kontragent:=ds_top.FN('kontragent').AsInteger;
      end else
      begin
        Edit;
          FName:='PLANED'+GetFName(ds_top.FN('D1').AsDateTime);
          FieldByName(FName).AsInteger:=FieldByName(FName).AsInteger+1;
          FieldByName('PLANEDItog').AsInteger:=
                                         FieldByName('PLANEDItog').AsInteger+1;
          //смысла нет LOCKDATA в любом случае не NULL если стоит LOCK
          if {(ds_top.FN('LOCKDATA').AsDateTime<=ds_top.FN('D2').AsDateTime) and}
             (ds_top.FN('LOCK').AsVariant=1)
           then
          begin
           FName:='PROV'+GetFName(ds_top.FN('D1').AsDateTime);
           FieldByName(FName).AsInteger:=FieldByName(FName).AsInteger+1;
           FieldByName('SHOWDATE').AsDateTime:=ds_top.FN('SHOWDATE').AsDateTime;
           //FieldByName('LOCKDATA').AsDateTime:=ds_top.FN('LOCKDATA').AsDateTime;
           FieldByName('PROVItog').AsInteger:=
                                           FieldByName('PROVItog').AsInteger+1;
          end;// else
          if ((ds_top.FN('SHOWDATE').AsDateTime<Date) and
                        (ds_top.FN('LOCK').AsVariant=0)) //or
           //(дата окончания меньше текущей даты и акт не блокирован)
           //или
           //(дата окончания меньше даты блокировки и акт блокирован)
           // ((ds_top.FN('d2').AsDateTime<ds_top.FN('LOCKDATA').AsDateTime)
           //  and (ds_top.FN('LOCK').AsVariant=1))
           then
          begin
            FName:='PROS'+GetFName(ds_top.FN('D1').AsDateTime);
            if FieldByName(FName).AsVariant=null then
               FieldByName(FName).AsVariant:=0;
            FieldByName(FName).AsInteger:=
                    FieldByName(FName).AsInteger+1;
          end;
         FieldByName('percent').AsInteger:=FieldByName('PROVItog').AsInteger*100
                                        div FieldByName('PLANEDItog').AsInteger;
        Post;
      end;
      ds_top.Next;
    end;
  end;
end;

procedure TAnalForm.AddMemData;
var
  FName :string;
begin
  while not ds_rep.Eof do
  begin
    mt_rep.Append;
    mt_rep.FieldByName('Code').AsInteger:=ds_rep.FN('Code').AsInteger;
    mt_rep.FieldByName('SRVDOG').AsInteger:=ds_rep.FN('SRVDOG').AsInteger;
    mt_rep.FieldByName('DOGNOM').AsString:=ds_rep.FN('DOGNOM').AsString;
    mt_rep.FieldByName('KONTRNAME').AsString:=ds_rep.FN('KONTRNAME').AsString;
    mt_rep.FieldByName('SHOWDATE').AsDateTime:=ds_rep.FN('SHOWDATE').AsDateTime;
    mt_rep.FieldByName('SHDATE').AsVariant:=ds_rep.FN('SHDATE').AsVariant;
    mt_rep.FieldByName('STREETNAME').AsString:=ds_rep.FN('STREETNAME').AsString;
    mt_rep.FieldByName('HOUSENOM').AsString:=ds_rep.FN('HOUSENOM').AsString;
    mt_rep.FieldByName('D1').AsDateTime:=ds_rep.FN('D1').AsDateTime;
    mt_rep.FieldByName('D2').AsDateTime:=ds_rep.FN('D2').AsDateTime;
    FName:='PLANED'+GetFName(ds_rep.FN('D1').AsDateTime);
    mt_rep.FieldByName(FName).AsDateTime:=ds_rep.FN('D2').AsDateTime;
    mt_rep.FieldByName('PLANEDItog').AsInteger:=
                                   mt_rep.FieldByName('PLANEDItog').AsInteger+1;
    if {(ds_rep.FN('SHDATE').AsDateTime>StrToDateTime('30.12.1899')) and}
                        (ds_rep.FN('LOCK').AsVariant=1) then
    begin
     FName:='PROV'+GetFName(ds_rep.FN('D1').AsDateTime);
     mt_rep.FieldByName(FName).AsDateTime:=ds_rep.FN('LOCKDATA').AsDateTime;
     mt_rep.FieldByName('LOCKDATA').AsDateTime:=ds_rep.FN('LOCKDATA').AsDateTime;
     mt_rep.FieldByName('PROVItog').AsInteger:=
                                     mt_rep.FieldByName('PROVItog').AsInteger+1;
    end;// else

    if ((ds_rep.FN('SHDATE').AsDateTime<Date) and
                        (ds_rep.FN('LOCK').AsVariant=0)) //or
           //(дата сдачи акта меньше текущей даты и акт не блокирован)
           //или
           //(дата окончания меньше даты блокировки и акт блокирован)
           // ((ds_rep.FN('d2').AsDateTime<ds_rep.FN('LOCKDATA').AsDateTime)
           //  and (ds_rep.FN('LOCK').AsVariant=1))
           then
    begin
       mt_rep.FieldByName('PROS').AsInteger:=1;
    end;

    mt_rep.FieldByName('percent').AsInteger:=
    mt_rep.FieldByName('PROVItog').AsInteger*100 div
                                     mt_rep.FieldByName('PLANEDItog').AsInteger;
    mt_rep.Post;
    ds_rep.Next;
  end;
end;

function TAnalForm.GetFName(D :TDateTime) :string;
var
  find :Boolean;
  D1, D2, D3,D4 :TDateTime;
  m1 :Variant;
  Step :Integer;
begin
  m1:=MonthOf(D);
  Result:=VarToStr(m1)+'_'+VarToStr(ed_step.EditValue);
 { D1:=ed_d1.EditValue;
  D2:=ed_d2.EditValue;
  Step:=ed_step.EditValue;
  D3:=D1;
  D4:=D3+Step;
  repeat
    if d<D3 then
    begin
      Result:=FormatDateTime('ddmm',D3);
      find:=True;
    end;
    if (D>=D3)and (D<=D4) then
    begin
      Result:=FormatDateTime('ddmm',D3);
      find:=True;
    end;
    D3:=D4+1;
    D4:=D3+Step;
  until find=true;}
end;

procedure TAnalForm.vb1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
  var
    Pros :Variant;
begin
  {Pros:=AViewInfo.GridRecord.Values[vb1.GetColumnByFieldName('PROS').Index];
  if Pros=1 then
  begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Style := [fsBold];
  end;}
end;

procedure TAnalForm.vb2CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  OpenBottomGrid;
end;

procedure TAnalForm.vb2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_UP)or (Key=VK_DOWN) then
  OpenBottomGrid;
end;

procedure TAnalForm.OpenBottomGrid;
begin
  //нижний грид
  SplashVisibility(true, '');
  lcntr1.Enabled:=False;
  SetCapt('Строим таблицу');
  CreateGrid;
  mt_rep.DisableControls;
  SetCapt('Создаем временную таблицу');
  CreateMem;
  SetCapt('Получаем данные из базы');
  DsOpen;
  SetCapt('Заполняем временную таблицу');
  AddMemData;
  mt_rep.EnableControls;
  SplashVisibility(false, '');
  lcntr1.Enabled:=true;
  ActiveControl:=grd2;
end;

function TAnalForm.GetType :Variant;
var
  cbb :TcxComboBox;
begin
  lb_type.SetFocus();
  cbb:=TcxBarEditItemControl(lb_type.Links[0].Control).Edit as TcxComboBox;
  Result:=cbb.ItemIndex;
end;

procedure TAnalForm.GetRepMonth(var m1,m2 :variant);
var
  cbb, cbb2 :TcxComboBox;
begin
  //ed_d1.SetFocus();
  //cbb:=TcxBarEditItemControl(ed_d1.Links[0].Control).Edit as TcxComboBox;
  m1:=MonthOf(ed_d11.EditValue);// cbb.ItemIndex; //начальный месяц
  //ed_d2.SetFocus();
  //cbb2:=TcxBarEditItemControl(ed_d2.Links[0].Control).Edit as TcxComboBox;
  m2:=MonthOf(ed_d22.EditValue)//cbb2.ItemIndex;
end;

procedure TAnalForm.GetDateParam(var d1,d2 :variant);
var
  M1, M2 :Variant;
  cbb, cbb2 :TcxComboBox;
  td :TDateTime;
begin
  GetRepMonth(M1,M2);
  d1:=ed_d11.EditValue; //StartOfAMonth(ed_step.EditValue,m1); //начальная дата
  d2:=ed_d22.EditValue; //VarToDateTime(EndOfAMonth(ed_step.EditValue,m2)-1);
end;

initialization
 RegisterClass(TAnalForm);
end.
