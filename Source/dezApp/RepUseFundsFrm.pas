unit RepUseFundsFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  DateUtils,
  dxLayoutcxEditAdapters, cxContainer, FIBDataSet, pFIBDataSet, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxDropDownEdit, cxTextEdit, cxMaskEdit,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxmdaset, Menus, StdCtrls,
  cxButtons, EXLReportExcelTLB, EXLReportBand, EXLReport, cxCurrencyEdit,
  dxLayoutControlAdapters, dxLayoutContainer, cxShellBrowserDialog, cxButtonEdit,
   cxCheckBox, FIB, FIBDatabase, pFIBDatabase, FIBQuery, frxGZip,
  pFIBCacheQueries, pFIBProps, dxSkinDevExpressStyle, cxNavigator, dxSkinVS2010;

type
  TRepUseFundsForm = class(TDezForm)
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
    msk_Y: TcxMaskEdit;
    itm_Y: TdxLayoutItem;
    cbb_m1: TcxComboBox;
    itm_m1: TdxLayoutItem;
    cbb_m2: TcxComboBox;
    itm_m2: TdxLayoutItem;
    cbb_street: TcxLookupComboBox;
    itm_street: TdxLayoutItem;
    grplc1Group2: TdxLayoutGroup;
    grplc1Group3: TdxLayoutGroup;
    cbb_house: TcxLookupComboBox;
    itm_house: TdxLayoutItem;
    grplc1Group4: TdxLayoutGroup;
    ds_STREET: TpFIBDataSet;
    src_STREET: TDataSource;
    src_HOUSE: TDataSource;
    ds_HOUSE: TpFIBDataSet;
    mT1: TdxMemData;
    src_mT1: TDataSource;
    clv1F: TcxGridDBColumn;
    clv1Num: TcxGridDBColumn;
    clv1Name: TcxGridDBColumn;
    clv1R: TcxGridDBColumn;
    btn_exec: TcxButton;
    itm_exec: TdxLayoutItem;
    xl1: TEXLReport;
    btn_xls: TcxButton;
    itm_xls: TdxLayoutItem;
    grp_lc1Group1: TdxLayoutGroup;
    grp_lc1Group2: TdxLayoutGroup;
    btn_file: TcxButtonEdit;
    itm_lc1Item1: TdxLayoutItem;
    dlg_1: TcxShellBrowserDialog;
    ms_Y1: TcxMaskEdit;
    itm_lc1Item2: TdxLayoutItem;
    btn_AutoXls: TcxButton;
    itm_lc1Item11: TdxLayoutItem;
    grp_lc1Group3: TdxLayoutGroup;
    ds_TRLFINPLAN: TpFIBDataSet;
    chk_arhiv: TcxCheckBox;
    itm_lc1Item12: TdxLayoutItem;
    grp_lc1Group4: TdxLayoutGroup;
    ds_TRWORKBDR: TpFIBDataSet;
    xl_sub: TEXLReport;
    Name_check: TcxCheckBox;
    lc1Item1: TdxLayoutItem;
    Recreate_check: TcxCheckBox;
    lc1Item2: TdxLayoutItem;
    ds_TRLFACT: TpFIBDataSet;
    xl_subL: TEXLReport;
    ds_Report: TpFIBDataSet;
    clv1FactSum: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbb_streetPropertiesEditValueChanged(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
    procedure btn_xlsClick(Sender: TObject);
    procedure v1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btn_filePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btn_AutoXlsClick(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDS;
    procedure openHouse;
    procedure MakeReport;
    function CheckParam :Boolean;
    procedure ExportXls;
    procedure ExportXlsAuto;
  public
    { Public declarations }
  end;

var
  RepUseFundsForm: TRepUseFundsForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, dezHouseReport, LoadingSplash;

{$R *.dfm}

procedure TRepUseFundsForm.btn_AutoXlsClick(Sender: TObject);
begin
  ExportXlsAuto;
end;

procedure TRepUseFundsForm.btn_execClick(Sender: TObject);
begin
  MakeReport;
end;

procedure TRepUseFundsForm.btn_filePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if dlg_1.Execute then
     btn_file.Text := dlg_1.Path;
end;

procedure TRepUseFundsForm.btn_xlsClick(Sender: TObject);
begin
  ExportXls;
end;

procedure TRepUseFundsForm.cbb_streetPropertiesEditValueChanged(
  Sender: TObject);
begin
  openHouse;
end;

function TRepUseFundsForm.CheckParam: Boolean;
  procedure Rez(mes :string; ed :TcxCustomEdit);
  begin
    Application.MessageBox(PChar(mes), 'Ошибка', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
    ed.SetFocus;
    Result:=False;
  end;
begin
  Result:=True;
  if msk_Y.Text='' then begin
    Rez('Укажите год!',msk_Y);
    Exit;
  end;
  if (cbb_m1.ItemIndex<1) or (cbb_m2.ItemIndex<1) then begin
    Rez('Укажите период!',cbb_m1);
    Exit;
  end;
  if cbb_house.EditValue=null then begin
    Rez('Укажите дом!',cbb_house);
    Exit;
  end;
end;

procedure TRepUseFundsForm.ExportXls;

  function GetAddr :string;
  begin
    Result:=cbb_street.Text +' '+ cbb_house.Text;
  end;

  function GetPeriodStr: string;
  begin
    if (cbb_m1.ItemIndex=1) and (cbb_m2.ItemIndex=12) then
      Result:=msk_Y.Text
    else
    if (cbb_m1.ItemIndex=cbb_m2.ItemIndex) then
      Result:=cbb_m1.Text+' '+msk_Y.Text
    else
      Result:=cbb_m1.Text+'-'+cbb_m2.Text+' '+msk_Y.Text;
  end;

  //общая полщадь по дому
  function GetAreaHouse(const house: variant): Variant;
  var
    Q: TFIBQuery;
  begin
    if house = null then Exit;
    Q:= GetQueryForUse(cmDb.RT, 'select area from getareabyhouse(:y, :m, :housecode)');
    Q.ParamByName('housecode').AsVariant:= house;
    Q.ParamByName('m').AsVariant:= cbb_m1.ItemIndex;
    Q.ParamByName('y').AsVariant:= msk_Y.EditValue;
    Q.Options:=[qoStartTransaction];
    try
      Q.ExecQuery;
      Result:=Q['area'].AsVariant;
      if Result = null then
         Result:= 1;
    finally
      FreeQueryForUse(Q);
    end;
  end;

begin
  v1.BeginUpdate;

  xl1.TemplSheet:='Отчет';
  //------------------
  xl1.Dictionary.Clear;
  with xl1.Dictionary.Add do
  begin
    FieldName:='Y';
    ValueAsString:=GetPeriodStr;
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='ADDR';
    ValueAsString:=GetAddr;
  end;
  with xl1.Dictionary.Add do // площадь по дому
  begin
    FieldName:='AREA';
    ValueAsString:=GetAreaHouse(cbb_house.EditValue);
  end;

  xl1.Bands.Clear;
  with xl1.Bands.AddBand(xlrbtTitle) do
    Range:='A1:E7';
  with xl1.Bands.AddBand(xlrbtMasterData) do
    Range:='A8:E8';
  with xl1.Bands.AddBand(xlrbtSummary) do
    Range:='A11:E14';
  {with mT1 do begin
    First;
    while not Eof do begin
      with xl1.Dictionary.Add do
      begin
        FieldName:=mT1.FieldByName('F').AsString;
        ValueAsString:=mT1.FieldByName('R').AsString;
      end;
      Next;
    end;
  end;}
  // subreport
  //xl_sub.Template:='rep\usefound.xls';
  xl_sub.TemplSheet:='Текущий ремонт';
  xl_sub.Bands.Clear;
  with xl_sub.Bands.AddBand(xlrbtTitle) do
    Range:='A1:F4';
  with xl_sub.Bands.AddBand(xlrbtMasterData) do
    Range:='A5:F5';
  with xl_sub.Bands.AddBand(xlrbtSummary) do
  Range:='A6:F6';
  // subreport Lift
  xl_subL.Template:='rep\usefound.xls';
  xl_subL.TemplSheet:='Лифт';
  xl_subL.Bands.Clear;
  with xl_subL.Bands.AddBand(xlrbtTitle) do
    Range:='A1:F4';
  with xl_subL.Bands.AddBand(xlrbtMasterData) do
    Range:='A5:F5';
  with xl_subL.Bands.AddBand(xlrbtSummary) do
  Range:='A6:F6';
  //--------------------------------------------
  xl_subL.Dictionary.Clear;
  xl_subL.Show();
  //xl_sub.Dictionary.Clear;
  //xl_sub.Show();
  v1.EndUpdate;
end;

procedure TRepUseFundsForm.ExportXlsAuto;
var
  Path, FileName, FilePath: string;

  // получаем список домов
  procedure GetHouseList;
  begin
    if ms_Y1.EditValue = null then
    raise EMyException.Create('Не указан год!');
    with ds_TRLFINPLAN do begin
      Close;
      Open;
    end;
  end;

  function GetAddr :string;
  begin
    Result:=ds_TRLFINPLAN.FN('NAME').AsString +' '+ds_TRLFINPLAN.FN('NOMER').AsString;
  end;

  function GetFileName: string;
  const
    Digits = '0123456789_';
  var
    i: integer;
    Nom: string;
  begin
    //имя файла
    if Name_check.Checked then
      Result:=ds_TRLFINPLAN.FN('KDEZ').AsString
    else
      Result:=ds_TRLFINPLAN.FN('NAME').AsString;
    //номер дома
    Nom:=ds_TRLFINPLAN.FN('NOMER').AsString;
    Nom:= cmReplaceWord(Nom,#32,'_');
    Nom:= cmReplaceWord(Nom,'-','_');
    Nom:= cmReplaceWord(Nom,'/','_');
    for i:=1 to Length(Nom) do
      if (Pos(Nom[i], Digits)=0) then
      begin
        Insert('_',Nom,i);
        Break;
      end;
    Result:=Result+'_'+Nom+'.xlsx';
    //Result:=Result+'_'+Nom+'.xls';
  end;

  //общая полщадь по дому
  function GetAreaHouse(const house: variant): Variant;
  var
    Q: TFIBQuery;
  begin
    if house = null then Exit;
    Q:= GetQueryForUse(cmDb.RT, 'select Total_SQ from HOUSE where code=:house');
    Q.ParamByName('house').AsVariant:= house;
    Q.Options:=[qoStartTransaction];
    try
      Q.ExecQuery;
      Result:=Q['Total_SQ'].AsVariant;
      if Result = null then
         Result:= 1;
    finally
      FreeQueryForUse(Q);
    end;
  end;

  procedure ExportInExcel;
  var
    FileZip: string;
    tmp: Variant;
    //xl_sub1: TEXLReport;
    //xl11: TEXLReport;
  begin
    {xl11 := TEXLReport.Create(Self);
    xl11.DataSet := mT1;
    //xl_sub
    xl_sub1 := TEXLReport.Create(Self);
    xl_sub1.DataSet := ds_TRWORKBDR;
    xl_sub1.SubReport := xl11;}
    //
    try
      with xl1 do begin
        Options:=[xlroTotalsAsFormula,xlroHourCursor];
        TemplSheet:='Отчет';
        //------------------
        Dictionary.Clear;
        with Dictionary.Add do
        begin
          FieldName:='Y';
          ValueAsString:=ms_Y1.Text;
        end;
        with Dictionary.Add do
        begin
          FieldName:='ADDR';
          ValueAsString:=GetAddr;
        end;
        with Dictionary.Add do // площадь по дому
        begin
          FieldName:='AREA';
          ValueAsString:=GetAreaHouse(ds_TRLFINPLAN.FN('HOUSE').AsVariant);
        end;

        xl1.Bands.Clear;
        with xl1.Bands.AddBand(xlrbtTitle) do
          Range:='A1:E7';
        with xl1.Bands.AddBand(xlrbtMasterData) do
          Range:='A8:E8';
        with xl1.Bands.AddBand(xlrbtSummary) do
          Range:='A11:E14';
        {with mT1 do begin
          First;
          while not Eof do begin
            with Dictionary.Add do
            begin
              FieldName:=mT1.FieldByName('F').AsString;
              ValueAsString:=mT1.FieldByName('R').AsString;
            end;
            Next;
          end;
        end;}
      end;

      // subreport
      with xl_sub do begin
        //Template:='rep\usefound.xlsx';
        TemplSheet:='Текущий ремонт';
        Bands.Clear;
        with Bands.AddBand(xlrbtTitle) do
          Range:='A1:E4';
        with Bands.AddBand(xlrbtMasterData) do
          Range:='A5:E5';
        with Bands.AddBand(xlrbtSummary) do
          Range:='A6:E6';
        //--------------------------------------------
       { Dictionary.Clear;
        if not DirectoryExists(FilePath) then
        if not CreateDir(FilePath) then
        raise EMyException.Create('Не возможно создать директорию!');
        if not FileExists(FilePath+FileName) then
          Show(FilePath+FileName);}
      end;
      // subreport Lift
      with xl_subL do begin
        Template:='rep\usefound.xlsx';
        TemplSheet:='Лифт';
        Bands.Clear;
        with Bands.AddBand(xlrbtTitle) do
          Range:='A1:F4';
        with Bands.AddBand(xlrbtMasterData) do
          Range:='A5:F5';
        with Bands.AddBand(xlrbtSummary) do
        Range:='A6:F6';
        //--------------------------------------------
        Dictionary.Clear;
        if not DirectoryExists(FilePath) then
        if not CreateDir(FilePath) then
        raise EMyException.Create('Не возможно создать директорию!');
        if not FileExists(FilePath+FileName) then
          Show(FilePath+FileName);
      end;
    finally
      KillTask('EXCEL.EXE');
      //FreeAndNil(xl_sub1);
      //FreeAndNil(xl11);
    end;

    // zip
    if chk_arhiv.Checked then
      if ZipFileEx(FilePath,FileName) then
        DeleteFile(FilePath+FileName);
  end;

  procedure GetData;
  var
    obj :TdezHouseReport;
    cnt: integer;
    d1, d2: TDateTime;
  begin
    v1.BeginUpdate(lsimImmediate);
    SplashVisibility(true,'Формируем список файлов...');
    mT1.DisableControls;
    try
      cnt:= ds_TRLFINPLAN.RecordCountFromSrv;
      while not ds_TRLFINPLAN.Eof do begin
        FilePath:= Path+'\'+ds_TRLFINPLAN.FN('DUNAME').AsString+'\';
        FileName:=GetFileName;
        if not FileExists(FilePath+FileName) then
        begin
          {obj:=TdezHouseReport.Create(mT1);
          try
            with obj do begin
              M1:=1;
              M2:=12;
              Y1:=ms_Y1.EditValue;
              Y2:=ms_Y1.EditValue;
              House:=ds_TRLFINPLAN.FN('HOUSE').AsVariant;
              Execute;
            end;
          finally
            obj.Free;
          end;}
          with ds_Report do begin
            Close;
            ParamByName('m1').AsVariant:= 1;
            ParamByName('m2').AsVariant:= 12;
            ParamByName('y').AsVariant:= ms_Y1.EditValue;
            ParamByName('house').AsVariant:= ds_TRLFINPLAN.FN('HOUSE').AsVariant;
            Open;
          end;
          //
          d1:= StartOfAMonth(ms_Y1.EditValue,1);
          d2:= EndOfAMonth(ms_Y1.EditValue,12);
          with ds_TRWORKBDR do begin
            Close;
            ParamByName('D1').AsVariant:= d1;
            ParamByName('D2').AsVariant:= d2;
            ParamByName('house').AsVariant:= ds_TRLFINPLAN.FN('HOUSE').AsVariant;
            Open;
          end;
          with ds_TRLFACT do begin
            Close;
            ParamByName('D1').AsDate:= d1;
            ParamByName('D2').AsDate:= d2;
            ParamByName('house').AsVariant:=ds_TRLFINPLAN.FN('HOUSE').AsVariant;
            Open;
          end;
          //export excel
          ExportInExcel;
          //
        end;
        SetCapt(IntToStr(ds_TRLFINPLAN.RecNo)+' из '+IntToStr(cnt));
        ds_TRLFINPLAN.Next;
      end;
    finally
      mT1.EnableControls;
      SplashVisibility(false);
      v1.EndUpdate;
    end;
  end;

begin
  //
  Path:=btn_file.Text;
  if Trim(Path) = '' then
  raise EMyException.Create('Не указана директроия для сохранения!');
  if DirectoryExists(Path) and Recreate_check.Checked then
    RemoveAll(Path);
  if not DirectoryExists(Path) then
    if not CreateDir(Path) then
      raise EMyException.Create('Не удалось создать директорию!');
  //
  GetHouseList;
  //
  GetData;
end;

procedure TRepUseFundsForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TRepUseFundsForm.FormCreate(Sender: TObject);
var
 aM,aY,aD: word;
begin
  LoadForm(prop1,Self.Name);
  OpenDS;
  DecodeDate(Date, aY, aM, aD);
  msk_Y.EditValue:=aY;
end;

procedure TRepUseFundsForm.MakeReport;
var
  obj :TdezHouseReport;
  d1, d2: TDateTime;
begin
  //проверка параметров формирования отчета
  if not CheckParam then Exit;
  v1.BeginUpdate;
  //obj:=TdezHouseReport.Create(mT1);
  SplashVisibility(True,'Дождитесь окончания операции.');
  try
    with ds_Report do begin
      Close;
      ParamByName('m1').AsVariant:= cbb_m1.ItemIndex;
      ParamByName('m2').AsVariant:= cbb_m2.ItemIndex;
      ParamByName('y').AsVariant:= msk_Y.EditValue;
      ParamByName('house').AsVariant:= cbb_house.EditValue;
      Open;
    end;
   { with obj do begin
      M1:=cbb_m1.ItemIndex;
      M2:=cbb_m2.ItemIndex;
      Y1:=msk_Y.EditValue;
      Y2:=msk_Y.EditValue;
      House:=cbb_house.EditValue;
      Execute;
    end;}
    d1:= StartOfAMonth(msk_Y.EditValue,cbb_m1.ItemIndex);
    d2:= EndOfAMonth(msk_Y.EditValue,cbb_m2.ItemIndex)-1;
    with ds_TRWORKBDR do begin
      Close;
      ParamByName('D1').AsDate:= d1;
      ParamByName('D2').AsDate:= d2;
      ParamByName('house').AsVariant:=cbb_house.EditValue;
      Open;
    end;
    with ds_TRLFACT do begin
      Close;
      ParamByName('D1').AsDate:= d1;
      ParamByName('D2').AsDate:= d2;
      ParamByName('house').AsVariant:=cbb_house.EditValue;
      Open;
    end;
  finally
    //obj.Free;
    SplashVisibility(false);
    v1.EndUpdate;
  end;
end;

procedure TRepUseFundsForm.OpenDS;
begin
  ds_STREET.Open;
end;

procedure TRepUseFundsForm.openHouse;
begin
  with ds_HOUSE do begin
    Close;
    if cbb_street.EditValue=null then Exit;
    MainWhereClause:='Street=:street';
    ParamByName('Street').AsVariant:=cbb_street.EditValue;
    Open;
  end;
end;

procedure TRepUseFundsForm.v1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
  var
    i :integer;
    FN :string;
begin
  with AViewInfo.GridRecord do begin
    for I := 3 to 6 do
      if Values[clv1Num.Index] = IntToStr(i) then ACanvas.Brush.Color := clBtnShadow;

    {for i:=0 to 8 do begin
      FN:='F'+IntToStr(i);
      if Values[clv1F.Index]=FN then ACanvas.Brush.Color := clBtnShadow;
    end;
    for i:=0 to 6 do begin
      FN:='FG'+IntToStr(i);
      if Values[clv1F.Index]=FN then ACanvas.Brush.Color := clBtnShadow;
    end;}
  end;
end;

initialization
 RegisterClass(TRepUseFundsForm);
end.
