unit ShowRep1Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,DateUtils,
  cxGridExportLink,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, dxSkinsdxBarPainter,
  cxClasses, dxBar, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxCalendar, cxDBLookupComboBox, cxBarEditItem, dxmdaset,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, FIBDataSet, pFIBDataSet, cxProgressBar, frxClass,
  frxDBSet, cxGridBandedTableView, cxGridDBBandedTableView, dxLayoutContainer,
  dxSkinDevExpressStyle;

type
  TShowRep1Form = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    brm1: TdxBarManager;
    brm1Bar1: TdxBar;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    m_type: TdxMemData;
    src_type: TDataSource;
    lb_d1: TcxBarEditItem;
    lb_d2: TcxBarEditItem;
    lb_type: TcxBarEditItem;
    ds_SHOWHOUSE: TpFIBDataSet;
    src_SHOWHOUSE: TDataSource;
    mt_top: TdxMemData;
    src_top: TDataSource;
    btn_exec: TdxBarButton;
    clv1kontragent: TcxGridDBColumn;
    clv1SRVDOG: TcxGridDBColumn;
    clv1DOGNOM: TcxGridDBColumn;
    clv1KONTRNAME: TcxGridDBColumn;
    clv1D1: TcxGridDBColumn;
    clv1D2: TcxGridDBColumn;
    clv1SHOWDATE: TcxGridDBColumn;
    clv1PROV: TcxGridDBColumn;
    clv1PLANED: TcxGridDBColumn;
    clv1PROS: TcxGridDBColumn;
    clv1LOCK: TcxGridDBColumn;
    clv1PROVItog: TcxGridDBColumn;
    clv1PLANEDItog: TcxGridDBColumn;
    clv1percent: TcxGridDBColumn;
    fr: TfrxReport;
    dbds1: TfrxDBDataset;
    btn_print: TdxBarButton;
    btn_excel: TdxBarButton;
    dlgSave: TSaveDialog;
    clv1PROV_p: TcxGridDBColumn;
    clv1PLANED_p: TcxGridDBColumn;
    clv1PROS_p: TcxGridDBColumn;
    vb1: TcxGridDBBandedTableView;
    clvb1kontragent: TcxGridDBBandedColumn;
    clvb1SRVDOG: TcxGridDBBandedColumn;
    clvb1DOGNOM: TcxGridDBBandedColumn;
    clvb1KONTRNAME: TcxGridDBBandedColumn;
    clvb1D1: TcxGridDBBandedColumn;
    clvb1D2: TcxGridDBBandedColumn;
    clvb1SHOWDATE: TcxGridDBBandedColumn;
    clvb1PROV: TcxGridDBBandedColumn;
    clvb1PLANED: TcxGridDBBandedColumn;
    clvb1PROS_p: TcxGridDBBandedColumn;
    clvb1LOCK: TcxGridDBBandedColumn;
    clvb1LOCKDATA: TcxGridDBBandedColumn;
    clvb1PROVItog: TcxGridDBBandedColumn;
    clvb1PLANEDItog: TcxGridDBBandedColumn;
    clvb1percent: TcxGridDBBandedColumn;
    clvb1PROVItog_p: TcxGridDBBandedColumn;
    clvb1PLANEDItog_p: TcxGridDBBandedColumn;
    clvb1percent_p: TcxGridDBBandedColumn;
    clvb1PROS: TcxGridDBBandedColumn;
    clvb1PROV_p: TcxGridDBBandedColumn;
    clvb1PLANED_p: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure lb_typePropertiesChange(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
    procedure btn_printClick(Sender: TObject);
    procedure btn_excelClick(Sender: TObject);
  private
    { Private declarations }
    procedure CreateMemType;
    procedure CreateTopMem;
    procedure OpenDS;
    procedure SetDate;
    procedure GetData;
    procedure AddTopMemData;
    procedure MakeRep;
    function CheckParam :Boolean;
    procedure GetDate(var d1,d2 :Variant);
  public
    { Public declarations }
  end;

var
  ShowRep1Form: TShowRep1Form;

implementation

uses AppUtils, cmDBUnit, cmUtils, LoadingSplash;

{$R *.dfm}

procedure TShowRep1Form.btn_excelClick(Sender: TObject);
begin
  if dlgSave.Execute then
    ExportGridToExcel(dlgSave.FileName, grd1, True, True, True, 'xls');
end;

procedure TShowRep1Form.btn_execClick(Sender: TObject);
begin
  MakeRep;
end;

procedure TShowRep1Form.btn_printClick(Sender: TObject);
begin
  fr.LoadFromFile('rep\ShowRep1.fr3');
  fr.Variables['varD1'] :=#39+lb_d1.EditValue+#39;
  fr.Variables['varD2'] :=#39+lb_d2.EditValue+#39;
  fr.ShowReport();
end;

procedure TShowRep1Form.CreateTopMem;
var
  D1, D2, D3,D4 :TDateTime;
  m1,m2 :Variant;
  FName :string;
  Step,i :Integer;
begin
  //D1:=lb_d1.EditValue;
  //D2:=lb_d2.EditValue;

  with mt_top do
  begin
    Close;
    if FieldCount>1 then
    begin
      for I := 0 to FieldDefs.Count - 1 do
      FieldDefs.Delete(FieldDefs.Count - 1);
      for I := 0 to FieldCount - 1 do
      Fields[FieldCount - 1].Destroy;
    end;
    CreateField(mt_top,'kontragent',ftinteger);
    CreateField(mt_top,'SRVDOG',ftinteger);
    CreateField(mt_top,'DOGNOM',ftString,16);
    CreateField(mt_top,'KONTRNAME',ftString,128);
    CreateField(mt_top,'D1',ftDate);
    CreateField(mt_top,'D2',ftDate);
    CreateField(mt_top,'SHOWDATE',ftDate);
      CreateField(mt_top,'PROV',ftinteger);
      CreateField(mt_top,'PLANED',ftinteger);
      CreateField(mt_top,'PROS',ftinteger);
      //данные за указаный период
      CreateField(mt_top,'PROV_p',ftinteger);
      CreateField(mt_top,'PLANED_p',ftinteger);
      CreateField(mt_top,'PROS_p',ftinteger);

      CreateField(mt_top,'LOCK',ftinteger);
      CreateField(mt_top,'LOCKDATA',ftDate);
    CreateField(mt_top,'PROVItog',ftinteger);
    CreateField(mt_top,'PLANEDItog',ftinteger);
    CreateField(mt_top,'percent',ftFloat);
    //
    CreateField(mt_top,'PROVItog_p',ftinteger);
    CreateField(mt_top,'PLANEDItog_p',ftinteger);
    CreateField(mt_top,'percent_p',ftFloat);
    Open
  end;
end;

function TShowRep1Form.CheckParam: Boolean;
begin
  Result:=True;
  if lb_type.EditValue=null then
  begin
    ShowMessage('Укажите тип');
    lb_type.SetFocus();
    Result:=False;
    Exit;
  end;
  if lb_d1.EditValue=null then
  begin
    ShowMessage('Укажите дату начала');
    lb_d1.SetFocus();
    Result:=False;
    Exit;
  end;
  if lb_d2.EditValue=null then
  begin
    ShowMessage('Укажите дату окончания');
    lb_d2.SetFocus();
    Result:=False;
    Exit;
  end;
end;

procedure TShowRep1Form.CreateMemType;
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

procedure TShowRep1Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TShowRep1Form.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  OpenDS;
end;


procedure TShowRep1Form.lb_typePropertiesChange(Sender: TObject);
begin
  SetDate;
end;

procedure TShowRep1Form.MakeRep;
begin
  if not CheckParam then Exit;
  SplashVisibility(True,'Дождитесь окончания операции.');
  try
    CreateTopMem;
    GetData;
    AddTopMemData;
  finally
    SplashVisibility(false);
  end;
end;

procedure TShowRep1Form.OpenDS;
begin
  CreateMemType;
end;

procedure TShowRep1Form.GetData;
var
  d1, d2 :Variant;
begin
  GetDate(d1,d2);
  with ds_SHOWHOUSE do
  begin
    Close;
    MainWhereClause:='sp.d1 >= :d1 and sp.d1<=:d2 and s.stype=:tp';
    //получаем данные за весь период
    ParamByName('d1').AsVariant:=d1;
    ParamByName('d2').AsVariant:=d2;
    ParamByName('tp').AsVariant:=lb_type.EditValue;
    OrderClause:='sd.kontragent,s.srvdog,sp.d1, sp.showdate';
    //ShowMessage(ReadySelectText);
    Open;
  end;
end;

procedure TShowRep1Form.SetDate;
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

procedure TShowRep1Form.GetDate(var d1,d2 :Variant);
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
end;

procedure TShowRep1Form.AddTopMemData;
var
  srvDog :Integer;
  kontragent :Integer;
  d1, d2 :Variant;
{------------------------------------------------------------------------------}
  procedure EditAllPeriod;
  begin
    with mt_top do
    begin
      // данные за весь период
      FieldByName('PLANED').AsInteger:=FieldByName('PLANED').AsInteger+1;
      FieldByName('PLANEDItog').AsInteger:=
                                          FieldByName('PLANEDItog').AsInteger+1;
       // если закрыт то полюбому проведен
       if (ds_SHOWHOUSE.FN('LOCK').AsVariant=1) then
       begin
         FieldByName('PROV').AsInteger:=FieldByName('PROV').AsInteger+1;
         FieldByName('SHOWDATE').AsDateTime:=
                                       ds_SHOWHOUSE.FN('SHOWDATE').AsDateTime;
         FieldByName('PROVItog').AsInteger:=
                                          FieldByName('PROVItog').AsInteger+1;
       end else
        //если не закрыт и дата окончания меньше текущей даты то просрочен
       if (ds_SHOWHOUSE.FN('D2').AsDateTime<Date) and
                      (ds_SHOWHOUSE.FN('LOCK').AsVariant=0) then
       begin
         if FieldByName('PROS').AsVariant=null then
             FieldByName('PROS').AsVariant:=0;
         FieldByName('PROS').AsInteger:=
                  FieldByName('PROS').AsInteger+1;
       end;

       FieldByName('percent').AsInteger:=FieldByName('PROVItog').AsInteger*100
                                        div FieldByName('PLANEDItog').AsInteger;
    end;
  end;
{------------------------------------------------------------------------------}
  procedure EditPeriodData;
  begin
    with mt_top do
    begin
        if (ds_SHOWHOUSE.FN('D1').AsVariant>=lb_d1.EditValue) and
           (ds_SHOWHOUSE.FN('D1').AsVariant<=lb_d2.EditValue) then
        begin
          //запланирован
          //если дата начала осмотра попадает в отчетный период то запланирован
          FieldByName('PLANED_p').AsInteger:=FieldByName('PLANED_p').AsInteger+1;
          FieldByName('PLANEDItog_p').AsInteger:=
                                       FieldByName('PLANEDItog_p').AsInteger+1;

          //просрочен
          //если не закрыт и дата окончания меньше текущей даты то просрочен
           if (ds_SHOWHOUSE.FN('LOCK').AsVariant=0) and
              (ds_SHOWHOUSE.FN('D2').AsDateTime<Date) then
            FieldByName('PROS_p').AsInteger:= FieldByName('PROS_p').AsInteger+1;

           //проведен
           //если закрыт и дата закрытия попадает в указанный период то проведен
           if (ds_SHOWHOUSE.FN('LOCKDATA').AsVariant>=lb_d1.EditValue) and
              (ds_SHOWHOUSE.FN('LOCKDATA').AsVariant<=lb_d2.EditValue) and
              (ds_SHOWHOUSE.FN('LOCK').AsVariant=1) then
           begin
             FieldByName('PROV_p').AsInteger:=FieldByName('PROV_p').AsInteger+1;
             FieldByName('PROVItog_p').AsInteger:=
                                          FieldByName('PROVItog_p').AsInteger+1;
             mt_top.FieldByName('PROV_p').AsInteger;
           end;// else
           {ShowMessage(VarToStr(ds_SHOWHOUSE.FN('LOCKDATA').AsVariant)+#10#13+
                       VarToStr(lb_d1.EditValue)+#10#13+
                       VarToStr(lb_d2.EditValue)+#10#13+
                       VarToStr(ds_SHOWHOUSE.FN('LOCK').AsVariant));}
         FieldByName('percent_p').AsInteger:=
                                      FieldByName('PROVItog_p').AsInteger*100
                                      div FieldByName('PLANEDItog_p').AsInteger;
        end;
    end;
  end;
{------------------------------------------------------------------------------}
begin
  srvDog:=-1;
  kontragent:=-1;
  GetDate(d1,d2);
  while not ds_SHOWHOUSE.Eof do
  begin
    with mt_top do
    begin
      if (kontragent<>ds_SHOWHOUSE.FN('kontragent').AsInteger) and
         (srvDog<>ds_SHOWHOUSE.FN('SRVDOG').AsInteger) then
      begin
        Append;

        FieldByName('kontragent').AsInteger:=
                                        ds_SHOWHOUSE.FN('kontragent').AsInteger;
        FieldByName('SRVDOG').AsInteger:=ds_SHOWHOUSE.FN('SRVDOG').AsInteger;
        FieldByName('DOGNOM').AsString:=ds_SHOWHOUSE.FN('DOGNOM').AsString;
        FieldByName('KONTRNAME').AsString:=ds_SHOWHOUSE.FN('KONTRNAME').AsString;
        FieldByName('SHOWDATE').AsDateTime:=
                                         ds_SHOWHOUSE.FN('SHOWDATE').AsDateTime;
        FieldByName('D1').AsDateTime:=ds_SHOWHOUSE.FN('D1').AsDateTime;
        FieldByName('LOCKDATA').AsVariant:=ds_SHOWHOUSE.FN('LOCKDATA').AsDateTime;

        //данные за указанный период
        EditPeriodData;
        //данные за весь период
        EditAllPeriod;

        Post;
        srvDog:=ds_SHOWHOUSE.FN('SRVDOG').AsInteger;
        kontragent:=ds_SHOWHOUSE.FN('kontragent').AsInteger;
      end else
      begin
        Edit;
        //данные за указанный период
        EditPeriodData;
        //данные за весь период
        EditAllPeriod;

        Post;
      end;
      ds_SHOWHOUSE.Next;
    end;
  end;
end;


initialization
RegisterClass(TShowRep1Form);
end.
