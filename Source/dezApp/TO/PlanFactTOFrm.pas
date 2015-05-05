unit PlanFactTOFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinDevExpressStyle, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, FIBDataSet, pFIBDataSet, cxGridLevel,
  System.DateUtils,
  FIBQuery, pFIBCacheQueries, pFibProps,
  cxClasses, cxGridCustomView, cxGrid, dxmdaset, dxLayoutcxEditAdapters,
  cxContainer, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxEditRepositoryItems, cxGridBandedTableView,
  cxGridDBBandedTableView, dxSkinVS2010;

type
  TPlanFactTOForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    lGrplc1Group1: TdxLayoutGroup;
    lGrplc1Group2: TdxLayoutGroup;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    litm_lc1Item1: TdxLayoutItem;
    ds_PLANFACT: TpFIBDataSet;
    src_PLANFACT: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1SRVDOG: TcxGridDBColumn;
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
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1KONTNAME: TcxGridDBColumn;
    clv1MANAGER: TcxGridDBColumn;
    clv1FIO: TcxGridDBColumn;
    clv1NOTE: TcxGridDBColumn;
    clv1FIRM: TcxGridDBColumn;
    clv1M1: TcxGridDBColumn;
    clv1M2: TcxGridDBColumn;
    clv1M3: TcxGridDBColumn;
    clv1M4: TcxGridDBColumn;
    clv1M5: TcxGridDBColumn;
    clv1M6: TcxGridDBColumn;
    clv1M7: TcxGridDBColumn;
    clv1M8: TcxGridDBColumn;
    clv1M9: TcxGridDBColumn;
    clv1M10: TcxGridDBColumn;
    clv1M11: TcxGridDBColumn;
    clv1M12: TcxGridDBColumn;
    clv1DUNAME: TcxGridDBColumn;
    md_PLANFACT: TdxMemData;
    clv1OST: TcxGridDBColumn;
    clv1PLANSUM: TcxGridDBColumn;
    clv1OSTSUM: TcxGridDBColumn;
    cbb_Y: TcxComboBox;
    litm_lc1Item11: TdxLayoutItem;
    cbb_FSTREET: TcxLookupComboBox;
    litm_lc1Item12: TdxLayoutItem;
    cbb_FWORKER: TcxLookupComboBox;
    litm_lc1Item13: TdxLayoutItem;
    cbb_FKONTR: TcxLookupComboBox;
    litm_lc1Item14: TdxLayoutItem;
    btn_load: TcxButton;
    litm_lc1Item15: TdxLayoutItem;
    rep1: TcxEditRepository;
    CurrencyItem: TcxEditRepositoryCurrencyItem;
    vb1: TcxGridDBBandedTableView;
    clvb1CODE: TcxGridDBBandedColumn;
    clvb1SRVDOG: TcxGridDBBandedColumn;
    clvb1HOUSE: TcxGridDBBandedColumn;
    clvb1NOMER: TcxGridDBBandedColumn;
    clvb1STREET: TcxGridDBBandedColumn;
    clvb1STREETNAME: TcxGridDBBandedColumn;
    clvb1MLIST: TcxGridDBBandedColumn;
    clvb1MLISTNAME: TcxGridDBBandedColumn;
    clvb1SUMY: TcxGridDBBandedColumn;
    clvb1SUM1: TcxGridDBBandedColumn;
    clvb1SUM2: TcxGridDBBandedColumn;
    clvb1SUM3: TcxGridDBBandedColumn;
    clvb1SUM4: TcxGridDBBandedColumn;
    clvb1KONTRAGENT: TcxGridDBBandedColumn;
    clvb1KONTNAME: TcxGridDBBandedColumn;
    clvb1MANAGER: TcxGridDBBandedColumn;
    clvb1FIO: TcxGridDBBandedColumn;
    clvb1NOTE: TcxGridDBBandedColumn;
    clvb1FIRM: TcxGridDBBandedColumn;
    clvb1M1: TcxGridDBBandedColumn;
    clvb1M2: TcxGridDBBandedColumn;
    clvb1M3: TcxGridDBBandedColumn;
    clvb1M4: TcxGridDBBandedColumn;
    clvb1M5: TcxGridDBBandedColumn;
    clvb1M6: TcxGridDBBandedColumn;
    clvb1M7: TcxGridDBBandedColumn;
    clvb1M8: TcxGridDBBandedColumn;
    clvb1M9: TcxGridDBBandedColumn;
    clvb1M10: TcxGridDBBandedColumn;
    clvb1M11: TcxGridDBBandedColumn;
    clvb1M12: TcxGridDBBandedColumn;
    clvb1DUNAME: TcxGridDBBandedColumn;
    clvb1OST: TcxGridDBBandedColumn;
    clvb1PLANSUM: TcxGridDBBandedColumn;
    clvb1OSTSUM: TcxGridDBBandedColumn;
    StyleRepository1: TcxStyleRepository;
    Style1: TcxStyle;
    Style2: TcxStyle;
    Style3: TcxStyle;
    Style4: TcxStyle;
    lGrplc1Group5: TdxLayoutGroup;
    lGrplc1Group4: TdxLayoutGroup;
    lGrplc1Group3: TdxLayoutGroup;
    lGrplc1Group6: TdxLayoutGroup;
    ds_KONTRAGENT: TpFIBDataSet;
    ds_WORKER: TpFIBDataSet;
    src_KONTRAGENT: TDataSource;
    src_WORKER: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_loadClick(Sender: TObject);
    procedure vb1StylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure cbb_FKONTRPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    procedure CreateMem;
    procedure LoadData(Y,FSTREET, FWORKER, FKONTR: Variant);
    procedure PrepareDS;
    procedure CustomizeMatCombo(cbb: TcxLookupCombobox);
    procedure LookupMatButtonClick(Sender: TObject; AButtonIndex: Integer);
  public
    { Public declarations }
  end;

var
  PlanFactTOForm: TPlanFactTOForm;

implementation

uses cmDBUnit, dezCommon;

{$R *.dfm}


procedure TPlanFactTOForm.btn_loadClick(Sender: TObject);
begin
  {cbb_Y.EditValue:= 2015;
  cbb_FKONTR.EditValue:= 6;
  cbb_FSTREET.EditValue:=null;
  cbb_FWORKER.EditValue:= null;}

  LoadData(cbb_Y.EditValue, cbb_FSTREET.EditValue,
           cbb_FWORKER.EditValue,cbb_FKONTR.EditValue);
end;

procedure TPlanFactTOForm.cbb_FKONTRPropertiesEditValueChanged(Sender: TObject);
begin
  with ds_WORKER do begin
    Close;
    ParamByName('CODE').AsVariant:= cbb_FKONTR.EditValue;
    Open;
  end;
end;

procedure TPlanFactTOForm.CreateMem;
var
  fName, fCaption: string;
  i: Integer;
begin
  with md_PLANFACT do begin
    //invisible columns
    AddField('CODE',ftInteger,'',0,False);
    AddField('SRVDOG',ftInteger,'',0,False);
    AddField('HOUSE',ftInteger,'',0,False);
    AddField('STREET',ftInteger,'',0,False);
    AddField('MLIST',ftInteger,'',0,False);
    AddField('KONTRAGENT',ftInteger,'',0,False);
    AddField('MANAGER',ftInteger,'',0,False);
    AddField('FIRM',ftInteger,'',0,False);
    //visible columns
    AddField('STREETNAME',ftString,'Улица',128);
    AddField('NOMER',ftString,'Дом',32);
    AddField('NOTE',ftString,'Примечание',512);
    AddField('DUNAME',ftString,'ДУ',64);
    AddField('SUMY',ftBCD,'План на год на материалы, руб.');
    AddField('OST',ftBCD,'Остаток на начало года на материалы, руб.');
    AddField('MLISTNAME',ftString,'вид работы (плановые)',256);
    AddField('KONTNAME',ftString,'Подрядная организация',128);
    AddField('SUM1',ftBCD,'1 квартал');
    AddField('SUM2',ftBCD,'2 квартал');
    AddField('SUM3',ftBCD,'3 квартал');
    AddField('SUM4',ftBCD,'4 квартал');
    for i := 1 to 12 do begin
      fName:= 'M'+ IntToStr(i);
      fCaption:= LongMonthNames[i];
      AddField(fName, ftBCD, fCaption);
    end;

    AddField('PLANSUM',ftBCD,'Cумма на материалы (год), руб.');
    AddField('OSTSUM',ftBCD,'Остаток на конец года на материалы, руб. ');
  end;
end;

procedure TPlanFactTOForm.CustomizeMatCombo(cbb: TcxLookupCombobox);
var
  AButton: TcxEditButton;
begin
  cbb.Properties.Images:= cmDb.iml1;
  with TcxLookupComboBoxProperties(cbb.Properties) do
  begin
    AButton := Buttons.Add;
    AButton.Kind := bkGlyph;
    AButton.Caption := '+';
    AButton.ImageIndex :=23;
    AButton.Hint:='Очистить';
    OnButtonClick := LookupMatButtonClick;
  end;
end;

procedure TPlanFactTOForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TPlanFactTOForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  CreateMem;
  PrepareDS;
end;

procedure TPlanFactTOForm.LoadData(Y, FSTREET, FWORKER, FKONTR: Variant);
var
  Q: TFIBQuery;

  function GetPlanSum(fSrvDog, fHouse, fY: Variant): Variant;
  begin
    Q.ParamByName('Y').AsVariant:= fY;
    Q.ParamByName('SRVDOG').AsVariant:= fSrvDog;
    Q.ParamByName('HOUSE').AsVariant:= fHouse;
    Q.ExecQuery;
    Result:= Q.FN('SUMY').AsVariant;
  end;

  procedure LoadPlanSum;
  var
    sum, house, srvdog: Variant;
  begin
    with md_PLANFACT do begin
      First;
      while not Eof do
      begin
        if house<>FieldByName('HOUSE').AsVariant then begin
          srvdog:= FieldByName('SRVDOG').AsVariant;
          sum:= GetPlanSum(srvdog, FieldByName('HOUSE').AsVariant, Y);
        end;
        Edit;
         FieldByName('PLANSUM').AsVariant:= sum;
        Post;
        house:= FieldByName('HOUSE').AsVariant;
        Next;
      end;
    end;
  end;

  procedure LoadPlanSum2;
  var
    sum, house, srvdog: Variant;
  begin
    with md_PLANFACT do begin
      First;
      house:=FieldByName('HOUSE').AsVariant;
      while not Eof do
      begin
        if house=FieldByName('HOUSE').AsVariant then begin

        end else
        begin
          //return previos record and save sum
          Prior;
          srvdog:= FieldByName('SRVDOG').AsVariant;
          sum:= GetPlanSum(srvdog, FieldByName('HOUSE').AsVariant, Y);
          Edit;
           FieldByName('PLANSUM').AsVariant:= sum;
          Post;
          sum:=0;
          //go to next record
          Next
        end;

        house:= FieldByName('HOUSE').AsVariant;
        Next;
      end;
      // last record
          srvdog:= FieldByName('SRVDOG').AsVariant;
          sum:= GetPlanSum(srvdog, FieldByName('HOUSE').AsVariant, Y);
          Edit;
           FieldByName('PLANSUM').AsVariant:= sum;
          Post;
    end;
  end;

  procedure CalcTotal;
  var
    sum, house, tmp: Variant;
    i: Integer;
    fName: string;
  begin
    sum:=0;
    with md_PLANFACT do begin
      First;
      house:=FieldByName('HOUSE').AsVariant;
      while not Eof do
      begin
        if house=FieldByName('HOUSE').AsVariant then begin
          //sum all column
          for I := 1 to 12 do begin
             fName:= 'M' + IntToStr(i);
             sum:= sum+ FieldByName(fName).AsCurrency;
          end;
        end else
        begin
          //return previos record and save sum
          tmp:= md_PLANFACT.FieldByName('HOUSE').AsVariant;
          Prior;
          md_PLANFACT.Edit;
           md_PLANFACT.FieldByName('OSTSUM').AsVariant:=FieldByName('PLANSUM').AsVariant - sum;
          md_PLANFACT.Post;
          sum:=0;
          //go to next record
          tmp:= md_PLANFACT.FieldByName('HOUSE').AsVariant;
          Next;
        end;
        house:= md_PLANFACT.FieldByName('HOUSE').AsVariant;
        Next;
      end;
      //last summ
      md_PLANFACT.Edit;
        md_PLANFACT.FieldByName('OSTSUM').AsVariant:= FieldByName('PLANSUM').AsVariant - sum;
      md_PLANFACT.Post;
    end;
  end;

begin
  // prepare Query for plan sum
  Q:= GetQueryForUse(cmDb.RT, 'select SUMY from TOFINPLAN where Y=:Y and SRVDOG=:SRVDOG and HOUSE=:HOUSE');
  Q.Options:=[qoStartTransaction];
  md_PLANFACT.DisableControls;
  vb1.BeginUpdate(lsimImmediate);
  try
    // show wait message

    //clear mem table
    md_PLANFACT.ClearData;
    //load data fom database
    with ds_PLANFACT do begin
      Close;
      ParamByName('Y').AsVariant:= Y;
      ParamByName('FSTREET').AsVariant:= FSTREET;
      ParamByName('FWORKER').AsVariant:= FWORKER;
      ParamByName('FKONTR').AsVariant:= FKONTR;
      Open;
    end;
    //load sum from plan of year
    md_PLANFACT.LoadFromDataSet(ds_PLANFACT);
    LoadPlanSum2;
    //calc total
    CalcTotal;
    //go to first record
    md_PLANFACT.First;
  finally
    FreeQueryForUse(Q);
    md_PLANFACT.EnableControls;
    vb1.EndUpdate;
  end;
end;

procedure TPlanFactTOForm.LookupMatButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  mat: Variant;
begin
    case AButtonIndex of
      1: with TcxLookupComboBox(Sender) do
         begin
           EditValue := null;
           PostEditValue;
         end;
    end;
end;

procedure TPlanFactTOForm.PrepareDS;
begin
  ds_KONTRAGENT.Open;
  cmDb.ds_STREET.Open;
  CustomizeMatCombo(cbb_FSTREET);
  CustomizeMatCombo(cbb_FWORKER);

  //
  if ActiveUserType =  1 then begin
    cbb_FKONTR.EditValue:= ActiveKontragent;
    cbb_FKONTR.Enabled:= False;
  end else
    CustomizeMatCombo(cbb_FKONTR);
end;

procedure TPlanFactTOForm.vb1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if ARecord.Values[clvb1MLIST.Index] = 1 then begin
    AStyle:= Style1;
  end;
end;

initialization
 RegisterClass(TPlanFactTOForm);
end.
