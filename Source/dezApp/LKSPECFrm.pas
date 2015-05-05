unit LKSPECFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, dxSkinsdxBarPainter,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxBar,
  cxClasses, cxCalendar, frxClass, frxDBSet, dxmdaset, DB, FIBDataSet,
  pFIBDataSet, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox, cxButtonEdit,
  DateUtils, dxLayoutContainer, dxSkinDevExpressStyle, Vcl.ComCtrls, dxCore,
  cxDateUtils;

type
  TLKSPECForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grlc1Group1: TdxLayoutGroup;
    grlc1Group2: TdxLayoutGroup;
    spl1: TdxLayoutSplitterItem;
    brm1: TdxBarManager;
    grlc1Group3: TdxLayoutGroup;
    grlc1Group4: TdxLayoutGroup;
    spl2: TdxLayoutSplitterItem;
    dt1: TcxDateEdit;
    itm_data: TdxLayoutItem;
    doc1: TdxBarDockControl;
    itmlc1Item1: TdxLayoutItem;
    bar1: TdxBar;
    btn_add: TdxBarButton;
    btn_Edit: TdxBarButton;
    btn_Del: TdxBarButton;
    bar2: TdxBar;
    btn_GPrint: TdxBarButton;
    btn_HPrint: TdxBarButton;
    ds_SRVDOGHOUSE: TpFIBDataSet;
    src_SRVDOGHOUSE: TDataSource;
    m_dog: TdxMemData;
    fr: TfrxReport;
    src_LKSPEC: TDataSource;
    ds_LK_SPEC: TpFIBDataSet;
    m_fr: TdxMemData;
    dbds1: TfrxDBDataset;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_grd2: TdxLayoutItem;
    ds_LKTYPE: TpFIBDataSet;
    src_LKTYPE: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1LKHEAD: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1SNAME: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1LKTYPE: TcxGridDBColumn;
    clv1LTNAME: TcxGridDBColumn;
    clv1DATA: TcxGridDBColumn;
    clv1ENTRANCE: TcxGridDBColumn;
    clv2FLAG: TcxGridDBColumn;
    clv2SRVDOG: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2NOMER: TcxGridDBColumn;
    clv2SNAME: TcxGridDBColumn;
    txt_entr: TcxButtonEdit;
    itmlc1Item11: TdxLayoutItem;
    ds_Type: TpFIBDataSet;
    dbds2: TfrxDBDataset;
    ds_rep2: TpFIBDataSet;
    dbds3: TfrxDBDataset;
    m2: TdxMemData;
    v3: TcxGridDBTableView;
    l3: TcxGridLevel;
    grd3: TcxGrid;
    itm_grd3: TdxLayoutItem;
    m_LKTYPE: TdxMemData;
    clv3FLAG: TcxGridDBColumn;
    clv3CODE: TcxGridDBColumn;
    clv3NAME: TcxGridDBColumn;
    clv3SNAME: TcxGridDBColumn;
    cl_v2FLOOR_CNT: TcxGridDBColumn;
    cl_v2ENTRANCE_CNT: TcxGridDBColumn;
    cl_v1lk1data: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_addClick(Sender: TObject);
    procedure btn_EditClick(Sender: TObject);
    procedure btn_GPrintClick(Sender: TObject);
    procedure txt_entrPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btn_HPrintClick(Sender: TObject);
    procedure ds_rep2AfterOpen(DataSet: TDataSet);
    procedure btn_DelClick(Sender: TObject);
    procedure grlc1Group3Button1Click(Sender: TObject);
    procedure grlc1Group3Button0Click(Sender: TObject);
    procedure grlc1Group2Button0Click(Sender: TObject);
    procedure grlc1Group2Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure PrepareDS;
    procedure CreateMemDog;
    procedure CreateMemFr;
    procedure FillEdit;
    function AddRec(house :variant; isEdit : boolean=false) :boolean;
    procedure AddRecords;
    function CheckParams :boolean;
    function CheckUnique(house, atape ,data :variant) :boolean;
    function CheckPeriod :boolean;
    procedure GPrint;
    procedure HPrint;
    procedure CheckField;
    procedure CreateMemType;
    procedure CreateMem2;
    procedure SetFlag(Flag: variant);
    procedure SetHouseFlag(Flag: variant);
  public
    { Public declarations }
    Y,M,head :variant;
    procedure OpenSrvDog(dog :variant);
    procedure OpenLKSpec;
  end;

var
  LKSPECForm: TLKSPECForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, LoadingSplash, dezInfo;

{$R *.dfm}

function TLKSPECForm.AddRec(house :variant; isEdit: boolean) :boolean;
var
  i :integer;
  aType :variant;
  procedure EditMem;
  begin
    ds_LK_SPEC.Edit;
    ds_LK_SPEC.FN('ENTRANCE').AsVariant:=txt_entr.EditingValue;
    ds_LK_SPEC.Post;
  end;
begin
  Result:=true;
  v3.BeginUpdate;
  i:=v3.Controller.FocusedRowIndex;
  try
    if isEdit then EditMem else begin
      m_LKTYPE.First;
      while not m_LKTYPE.Eof do begin
        if m_LKTYPE.FieldByName('FLAG').AsVariant=1 then begin
          aType:=m_LKTYPE.FieldByName('CODE').AsVariant;
          with ds_LK_SPEC do begin
                  //проверка на уникальность
            if CheckUnique(house, aType, dt1.EditValue) then begin
              Append;
              FN('LKHEAD').AsVariant:=head;
              FN('HOUSE').AsVariant:=house;
              FN('LKTYPE').AsVariant:=aType;
              FN('DATA').AsVariant:=dt1.EditValue;
              FN('ENTRANCE').AsVariant:=txt_entr.EditingValue;
              Post;
            end else Result :=false;
          end;
        end;
        m_LKTYPE.Next;
      end;
    end;
  finally
    v3.Controller.FocusRecord(i,true);
    v3.EndUpdate;
  end;
end;

procedure TLKSPECForm.AddRecords;
var
  AIndex, i :integer;
 procedure FlagSet(flag :integer);
 begin
   with m_dog do begin
     Edit;
     FieldByName('FLAG').AsVariant:=flag;
     Post;
   end;
 end;
begin
  i:=0;
  //проверка обязательных параметров
  if not CheckParams then Exit;
  //проверка что дата входит в нужный месяц
  if not CheckPeriod then
    raise EMyException.Create('Дата не соответствует периоду отчета!'+#10#13+
                              'Период отчета: '+LongMonthNames[Integer(m)] +
                              VarToStr(Y)+#10#13+
                              'Дата: '+VarToStr(dt1.EditValue));
  //AIndex := v2.Controller.FocusedRowIndex; // запоминаем позицию
  v2.BeginUpdate;
  try
    with m_dog do begin
      First;
      while not Eof do begin
        if FieldByName('FLAG').AsVariant=1 then
        begin
          if i= 0 then i:=RecNo;
          if AddRec(FieldByName('HOUSE').AsVariant) then begin
            //FlagSet(0);
          end else begin
            //ошибка уникальности
            //FlagSet(0);
          end;
        end;
        Next;
      end;
      SetFlag(-1);
    end;
  finally
    v2.EndUpdate;
    m_dog.RecNo:=i;
    //v2.Controller.FocusRecord(AIndex, true); // возвращаемся на позицию
  end;
end;

procedure TLKSPECForm.btn_addClick(Sender: TObject);
begin
  AddRecords;
end;

procedure TLKSPECForm.btn_DelClick(Sender: TObject);
begin
  if gFN(v1,'CODE') = null then
    raise EMyException.Create('Не выбрана запись!');
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Предупреждение', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST)
    = IDYES then
  begin
    ds_LK_SPEC.Delete;
  end;
end;

procedure TLKSPECForm.btn_EditClick(Sender: TObject);
begin
  AddRec(gFN(v1,'HOUSE'),true);
end;

procedure TLKSPECForm.btn_GPrintClick(Sender: TObject);
begin
  GPrint;
end;

procedure TLKSPECForm.btn_HPrintClick(Sender: TObject);
begin
  HPrint;
end;

procedure TLKSPECForm.CheckField;
var
  i :integer;
  del: boolean;
begin
  with m2 do begin
    First;
    while not Eof do begin
      del:=true;
      for i:= 2 to FieldCount -1 do begin   //пропускаем RecId и DATA
        if m2.Fields[i].Value<>null then del:=false;
      end;
      if del = true then
        Delete;
      Next;
    end;
  end;
end;

function TLKSPECForm.CheckParams: boolean;
begin
  Result:=true;
  {if cbb_aType.EditValue=null then begin
    Result:=false;
    raise EMyException.Create('Не указан тип уборки!');
  end;}
  if dt1.EditValue=null then begin
    Result:=false;
    raise EMyException.Create('Не указана дата!');
  end;
end;

function TLKSPECForm.CheckPeriod: boolean;
var
  m1, y1: Variant;
begin
  m1:=MonthOf(dt1.Date);
  y1:=YearOf(dt1.Date);
  Result:= (m=m1) and (y=y1);
end;

function TLKSPECForm.CheckUnique(house, atape ,data :variant): boolean;
begin
  Result:=true;
  with ds_LK_SPEC do begin
    DisableControls;
    if Locate('HOUSE;LKTYPE;DATA',VarArrayOf([house, atape, data]),[]) then
    Result:=False;
    EnableControls;
  end;
end;

procedure TLKSPECForm.CreateMem2;
var
  i :integer;
  fName :string;
begin
  for i:=1 to 31 do begin
    fName:='F'+IntToStr(i);
    CreateField(m2,fName,ftString,32);
  end;
  m2.Open;
end;

procedure TLKSPECForm.CreateMemDog;
begin
  CreateField(m_dog,'FLAG',ftinteger);
  CreateField(m_dog,'SRVDOG',ftinteger);
  CreateField(m_dog,'HOUSE',ftinteger);
  CreateField(m_dog,'NOMER',ftString,32);
  CreateField(m_dog,'SNAME',ftString,128);
  m_dog.Open;
end;

procedure TLKSPECForm.CreateMemFr;
var
  i :integer;
begin
  CreateField(m_fr,'CODE',ftInteger);
  CreateField(m_fr,'House',ftInteger);
  CreateField(m_fr,'ptype',ftInteger);
  CreateField(m_fr,'SNAME',ftString,128);
  CreateField(m_fr,'ADDR',ftString,128);
  CreateField(m_fr,'NOMER',ftString,32);
  CreateField(m_fr,'ENTRANCE_CNT',ftinteger);
  CreateField(m_fr,'FLOOR_CNT',ftinteger);
  CreateField(m_fr,'DUNAME',ftString,128);
  CreateField(m_fr,'DATA',ftDate);
  for i:=1 to 31 do begin
    CreateField(m_fr,'F'+IntToStr(i),ftString,32);
  end;
end;

procedure TLKSPECForm.CreateMemType;
begin
  CreateField(m_LKTYPE,'FLAG',ftInteger);
  CreateField(m_LKTYPE,'CODE',ftInteger);
  CreateField(m_LKTYPE,'NAME',ftString,256);
  CreateField(m_LKTYPE,'SNAME',ftString,32);
  m_LKTYPE.Open;
end;

procedure TLKSPECForm.ds_rep2AfterOpen(DataSet: TDataSet);
begin
  //m2.Close; m2.open;
  //m2.LoadFromDataSet(ds_rep2);
end;

procedure TLKSPECForm.FillEdit;
begin
  with ds_LK_SPEC do begin
    //SetFlag(FN('LKTYPE').AsVariant);
    dt1.EditValue:=FN('DATA').AsVariant;
    txt_entr.EditValue:=FN('ENTRANCE').AsVariant;
  end;
end;

procedure TLKSPECForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TLKSPECForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  CreateMemDog;
  CreateMemFr;
  CreateMemType;
  PrepareDS;
  CreateMem2;
end;

procedure TLKSPECForm.GPrint;
begin
  m_fr.Close; m_fr.Open;
  LCGraph.PrintGraph(gFN(v1,'LKHEAD'),m,y,m_fr);
  fr.LoadFromFile('rep\lcGfaph.fr3');
  fr.Variables['varM'] :=#39 + LongMonthNames[Integer(m)]+ #39;
  fr.Variables['varMCod'] :=m;
  fr.Variables['varY'] :=y;
  m_fr.SortedField:='ADDR';
  fr.ShowReport();
end;

procedure TLKSPECForm.grlc1Group2Button0Click(Sender: TObject);
begin
  SetHouseFlag(1);
end;

procedure TLKSPECForm.grlc1Group2Button1Click(Sender: TObject);
begin
  SetHouseFlag(0);
end;

procedure TLKSPECForm.grlc1Group3Button0Click(Sender: TObject);
begin
 SetFlag(-2);
end;

procedure TLKSPECForm.grlc1Group3Button1Click(Sender: TObject);
begin
  SetFlag(-1);
end;

procedure TLKSPECForm.HPrint;
  procedure AddMem;
  var
    fld: integer;
    fName: string;
  begin
    m2.Close; m2.Open;
    m2.Append;
    m2.Post;
    with ds_rep2 do begin
      First;
      while not EOF do begin
        fName:= 'F'+FN('FLD').AsString;
        m2.Edit;
        m2.FieldByName(fName).AsString:=m2.FieldByName(fName).AsString+FN('SNAME').AsString;
        m2.Post;
        Next;
      end;
    end;
  end;
begin
  if gFN(v1,'CODE') = null then
    raise EMyException.Create('Укажите дом!');
  with ds_rep2 do begin
    Close;
    ParamByName('head').AsVariant:=gFN(v1,'LKHEAD');
    ParamByName('house').AsVariant:=gFN(v1,'HOUSE');
    Open;
  end;
  AddMem;
  //CheckField;
  fr.LoadFromFile('rep\lcGfaph2.fr3');
  fr.Variables['varM'] :=#39 + LongMonthNames[Integer(m)]+ #39;
  fr.Variables['varMCod'] :=m;
  fr.Variables['varY'] :=y;
  fr.Variables['varStreet'] :=#39 + VarToStrDef(gFN(v1,'SNAME'),'')+ #39;
  fr.Variables['varNomer'] :=#39 + VarToStrDef(gFN(v1,'NOMER'),'')+ #39;
  fr.ShowReport();
end;

procedure TLKSPECForm.OpenLKSpec;
begin
  with ds_LK_SPEC do begin
    Close;
    MainWhereClause:='lk.LKHEAD=:COD';
    ParamByName('COD').AsVariant:=head;
    GroupByClause:='lk.CODE, lk.LKHEAD, lk.HOUSE, s.name, h.nomer, ' +
                  'lk.LKTYPE, lt.name,' + #13#10 +
                  '       lk.DATA, lk.ENTRANCE';
    Open;
  end;
  FillEdit;
end;

procedure TLKSPECForm.OpenSrvDog(dog: variant);
begin
  with ds_SRVDOGHOUSE do begin
    Close;
    ParamByName('SRVDOG').AsVariant:=dog;
    Open;
      m_dog.Close; m_dog.Open;
      m_dog.LoadFromDataSet(ds_SRVDOGHOUSE);
  end;
  OpenLKSpec;
end;

procedure TLKSPECForm.PrepareDS;
begin
  DSOptoins(ds_LK_SPEC,'','LK_SPEC','CODE','LK_SPEC_GEN',false);
  ds_LKTYPE.CloseOpen(False);
  m_LKTYPE.close; m_LKTYPE.Open;
  m_LKTYPE.LoadFromDataSet(ds_LKTYPE);
  ds_Type.CloseOpen(true);
end;

procedure TLKSPECForm.SetFlag(Flag: variant);
var
  i :integer;
begin
  v3.BeginUpdate;
  try
    m_LKTYPE.First;
    while not m_LKTYPE.Eof do begin
      if (m_LKTYPE.FieldByName('CODE').AsVariant=Flag) or (Flag=-2) then  begin
       m_LKTYPE.Edit;
       m_LKTYPE.FieldByName('FLAG').AsVariant:=1;
       m_LKTYPE.Post;
       i:=m_LKTYPE.RecNo;
      end else begin
       m_LKTYPE.Edit;
       m_LKTYPE.FieldByName('FLAG').AsVariant:=0;
       m_LKTYPE.Post;
      end;
      m_LKTYPE.Next;
    end;
  finally
    m_LKTYPE.RecNo:=i;
    v3.EndUpdate;
  end;
end;

procedure TLKSPECForm.SetHouseFlag(Flag: variant);
var
  i :integer;
begin
  v2.BeginUpdate;
  i := v2.Controller.FocusedRowIndex;
  try
    with m_dog do begin
      First;
      while not Eof do begin
        Edit;
        FieldByName('Flag').AsVariant:=flag;
        Post;
        Next;
      end;
    end;
  finally
    v2.Controller.FocusRecord(i, true);
    v2.EndUpdate;
  end;
end;

procedure TLKSPECForm.txt_entrPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  txt_entr.Clear;
end;

procedure TLKSPECForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  FillEdit;
end;

procedure TLKSPECForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP :FillEdit;
    VK_DOWN :FillEdit;
  end;
end;

initialization
 RegisterClass(TLKSPECForm);
end.

