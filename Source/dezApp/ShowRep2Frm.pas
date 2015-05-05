unit ShowRep2Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,DateUtils,
  cxGridExportLink,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, dxSkinsdxBarPainter,
  cxClasses, dxBar, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FIBDataSet, pFIBDataSet, dxmdaset,
  cxDBLookupComboBox, cxCalendar, cxBarEditItem, frxClass, frxDBSet,
  dxLayoutContainer, KontragentRepository, dxSkinDevExpressStyle;

type
  TShowRep2Form = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    brm1: TdxBarManager;
    brm1Bar1: TdxBar;
    m_type: TdxMemData;
    src_type: TDataSource;
    ds_SHOWHOUSE: TpFIBDataSet;
    src_SHOWHOUSE: TDataSource;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    src_rep: TDataSource;
    mt_rep: TdxMemData;
    lb_kontr: TcxBarEditItem;
    lb_type: TcxBarEditItem;
    lb_d1: TcxBarEditItem;
    lb_d2: TcxBarEditItem;
    btn_exec: TdxBarButton;
    clv1Code: TcxGridDBColumn;
    clv1SRVDOG: TcxGridDBColumn;
    clv1DOGNOM: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1KONTRNAME: TcxGridDBColumn;
    clv1SHOWDATE: TcxGridDBColumn;
    clv1STREETNAME: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1HOUSENOM: TcxGridDBColumn;
    clv1D1: TcxGridDBColumn;
    clv1D2: TcxGridDBColumn;
    clv1SHDATE: TcxGridDBColumn;
    clv1PROS: TcxGridDBColumn;
    clv1PROV: TcxGridDBColumn;
    clv1PLANED: TcxGridDBColumn;
    clv1PROVItog: TcxGridDBColumn;
    clv1PLANEDItog: TcxGridDBColumn;
    clv1percent: TcxGridDBColumn;
    fr: TfrxReport;
    dbds1: TfrxDBDataset;
    btn_print: TdxBarButton;
    btn_excel: TdxBarButton;
    dlgSave: TSaveDialog;
    clv1LOCKDATA: TcxGridDBColumn;
    clv1AType: TcxGridDBColumn;
    clv1AtypeName: TcxGridDBColumn;
    src_Kontr: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure lb_typePropertiesChange(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
    procedure lb_kontrKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_printClick(Sender: TObject);
    procedure btn_excelClick(Sender: TObject);
  private
    { Private declarations }
    fController: TKontragentController;
    procedure CreateMem;
    procedure OpenDS;
    procedure DsOpen;
    procedure MakeRep;
    procedure AddMemData;
    procedure CreateMemType;
    procedure SetDate;
    function CheckParam :Boolean;
  public
    { Public declarations }
  end;

var
  ShowRep2Form: TShowRep2Form;

implementation

uses AppUtils, cmDBUnit, cmUtils, CommonDm, LoadingSplash;

{$R *.dfm}

procedure TShowRep2Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fController.Free;
  Action:=caFree;
end;

procedure TShowRep2Form.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  fController:= TKontragentController.Create;
  OpenDS;
end;

procedure TShowRep2Form.lb_kontrKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_BACK : lb_kontr.EditValue:=null;
    VK_DELETE : lb_kontr.EditValue:=null;
  end;
end;

procedure TShowRep2Form.lb_typePropertiesChange(Sender: TObject);
begin
  if lb_type.EditValue=null then Exit;
  SetDate;
end;

procedure TShowRep2Form.CreateMemType;
  procedure AddType(ACode: Integer; AName: string);
  begin
    with m_type do
    begin
      Append;
      FieldByName('Code').AsInteger := ACode;
      FieldByName('Name').AsString := AName;
      Post;
    end;
  end;
begin
  CreateField(m_type, 'Code', ftInteger);
  CreateField(m_type, 'Name', ftString, 128);
  m_type.Open;
  AddType(0,'весна');
  AddType(1,'осень');
end;

procedure TShowRep2Form.MakeRep;
begin
  if not CheckParam then Exit;
  try
    SplashVisibility(True,'Дождитесь окончания операции!');
    CreateMem;
    SetCapt('Получаем данные...');
    DsOpen;
    mt_rep.DisableControls;
    SetCapt('Заполняем таблицу');
    AddMemData;
    mt_rep.EnableControls;
  finally
    SplashVisibility(false);
  end;
end;

procedure TShowRep2Form.DsOpen;
var
 Kontr :Integer;
 srvDog :Integer;
 d1,d2 :Variant;
begin
  with ds_SHOWHOUSE do
  begin
    Close;
    if lb_kontr.EditValue=null then
    MainWhereClause:=
         ' sp.d1 >= :d1 and sp.d1<=:d2 and s.stype=:tp'+
         ' and (sp.d2 <current_date and sp.LOCK=0)'
         //+' or (sp.LOCKDATA<current_date and sp.LOCK=1))'
    else
    MainWhereClause:='sd.kontragent=:kontr'+
    ' and  sp.d1 >= :d1 and sp.d1<=:d2 and s.stype=:tp'+
    ' and (sp.d2 <current_date and sp.LOCK=0)';
    //+' or (sp.LOCKDATA>sp.d2 and sp.LOCK=1))';
    ParamByName('d1').AsVariant:=lb_d1.EditValue;
    ParamByName('d2').AsVariant:=lb_d2.EditValue;
    if lb_kontr.EditValue<>null then
    ParamByName('kontr').AsVariant:=lb_kontr.EditValue;

    ParamByName('tp').AsVariant:=lb_type.EditValue;
    OrderClause:='sd.kontragent,h.street,sp.house';
    Open;
  end;
end;

procedure TShowRep2Form.AddMemData;
begin
  with ds_SHOWHOUSE do
  begin
    while not Eof do
    begin
      mt_rep.Append;
      mt_rep.FieldByName('Code').AsInteger:=FN('Code').AsInteger;
      mt_rep.FieldByName('SRVDOG').AsInteger:=FN('SRVDOG').AsInteger;
      mt_rep.FieldByName('DOGNOM').AsString:=FN('DOGNOM').AsString;
      mt_rep.FieldByName('KONTRAGENT').AsVariant:=FN('KONTRAGENT').AsVariant;
      mt_rep.FieldByName('KONTRNAME').AsString:=FN('KONTRNAME').AsString;
      mt_rep.FieldByName('SHOWDATE').AsDateTime:=FN('SHOWDATE').AsDateTime;
      mt_rep.FieldByName('STREETNAME').AsString:=FN('STREETNAME').AsString;
      mt_rep.FieldByName('HOUSE').AsVariant:=FN('HOUSE').AsVariant;
      mt_rep.FieldByName('HOUSENOM').AsString:=FN('HOUSENOM').AsString;
      mt_rep.FieldByName('D1').AsDateTime:=FN('D1').AsDateTime;
      mt_rep.FieldByName('D2').AsDateTime:=FN('D2').AsDateTime;
      mt_rep.FieldByName('PLANED').AsDateTime:=FN('D2').AsDateTime;
      if FN('LOCKDATA').AsVariant<> null then
      mt_rep.FieldByName('LOCKDATA').AsDateTime:=FN('LOCKDATA').AsDateTime;
      mt_rep.FieldByName('PLANEDItog').AsInteger:=
                                   mt_rep.FieldByName('PLANEDItog').AsInteger+1;
      if (FN('LOCK').AsVariant=1) then
      begin
       mt_rep.FieldByName('PROV').AsDateTime:=FN('SHDATE').AsDateTime;
       mt_rep.FieldByName('SHDATE').AsDateTime:=FN('SHDATE').AsDateTime;
       mt_rep.FieldByName('PROVItog').AsInteger:=
                                     mt_rep.FieldByName('PROVItog').AsInteger+1;
      end else
       mt_rep.FieldByName('PROS').AsInteger:=1;
       mt_rep.FieldByName('percent').AsInteger:=
       mt_rep.FieldByName('PROVItog').AsInteger*100 div
                                     mt_rep.FieldByName('PLANEDItog').AsInteger;
       mt_rep.FieldByName('AType').AsVariant:=FN('AType').AsVariant;
       mt_rep.FieldByName('AtypeName').AsVariant:=FN('AtypeName').AsVariant;
       mt_rep.Post;
      Next;
    end;
  end;
end;

procedure TShowRep2Form.OpenDS;
begin
  src_Kontr.DataSet:= fController.GetActiveKontrShort();
  CreateMemType;
end;

procedure TShowRep2Form.SetDate;
var
  d1,d2 :Variant;
begin
  if lb_type.EditValue=null then Exit;
  case lb_type.EditValue of
    0 : begin
          d1:=String('01.01.'+VarToStr(YearOf(Date)));
          d2:=String('31.07.'+VarToStr(YearOf(Date)));
        end;
    1 : begin
          d1:=String('01.08.'+VarToStr(YearOf(Date)));
          d2:=String('31.12.'+VarToStr(YearOf(Date)));
        end;
  end;
  lb_d1.EditValue:=d1;
  lb_d2.EditValue:=d2;
end;

procedure TShowRep2Form.btn_excelClick(Sender: TObject);
begin
  if dlgSave.Execute then
    ExportGridToExcel(dlgSave.FileName, grd1, True, True, True, 'xls');
end;

procedure TShowRep2Form.btn_execClick(Sender: TObject);
begin
  MakeRep;
end;

procedure TShowRep2Form.btn_printClick(Sender: TObject);
begin
  fr.LoadFromFile('rep\ShowRep2.fr3');
  fr.Variables['varD1'] :=#39+lb_d1.EditValue+#39;
  fr.Variables['varD2'] :=#39+lb_d2.EditValue+#39;
  fr.ShowReport();
end;


function TShowRep2Form.CheckParam: Boolean;
begin
  Result:=True;
  if lb_type.EditValue=null then
  begin
    ShowMessage('Не указан тип осмотра');
    Result:=False;
    Exit;
  end;
  if lb_d1.EditValue=null then
  begin
    ShowMessage('Укажите дату начала периода');
    Result:=False;
    Exit;
  end;
  if lb_d2.EditValue=null then
  begin
    ShowMessage('Укажите дату окончания периода');
    Result:=False;
    Exit;
  end;
end;

procedure TShowRep2Form.CreateMem;
var
  i :Integer;
begin
  mt_rep.Close;
  if mt_rep.FieldCount>1 then
  begin
    for I := 0 to mt_rep.FieldDefs.Count - 1 do
    mt_rep.FieldDefs.Delete(mt_rep.FieldDefs.Count - 1);
    for I := 0 to mt_rep.FieldCount - 1 do
    mt_rep.Fields[mt_rep.FieldCount - 1].Destroy;
  end;

  CreateField(mt_rep,'Code',ftinteger);
  CreateField(mt_rep,'SRVDOG',ftinteger);
  CreateField(mt_rep,'DOGNOM',ftString,16);
  CreateField(mt_rep,'KONTRAGENT',ftinteger);
  CreateField(mt_rep,'KONTRNAME',ftString,128);
  CreateField(mt_rep,'SHOWDATE',ftDate);
  CreateField(mt_rep,'STREETNAME',ftString,128);
  CreateField(mt_rep,'HOUSE',ftinteger);
  CreateField(mt_rep,'HOUSENOM',ftString,32);
  CreateField(mt_rep,'D1',ftDate);
  CreateField(mt_rep,'D2',ftDate);
  CreateField(mt_rep,'SHDATE',ftDate);
  CreateField(mt_rep,'LOCKDATA',ftDate);
  CreateField(mt_rep,'PROS',ftinteger);
    CreateField(mt_rep,'PROV',ftDate);
    CreateField(mt_rep,'PLANED',ftDate);
  CreateField(mt_rep,'PROVItog',ftinteger);
  CreateField(mt_rep,'PLANEDItog',ftinteger);
  CreateField(mt_rep,'percent',ftFloat);
  CreateField(mt_rep,'AType',ftinteger);
  CreateField(mt_rep,'AtypeName',ftString,64);
  mt_rep.Open
end;


initialization
RegisterClass(TShowRep2Form);
end.


