unit imDatalFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxLayoutcxEditAdapters, cxContainer, cxDBLookupComboBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, FIBDataSet,
  pFIBDataSet, cxDropDownEdit, cxTextEdit, cxMaskEdit, cxCalendar, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, dxmdaset, Menus, StdCtrls, cxButtons,
  cxEditRepositoryItems, cxCheckBox, dxLayoutControlAdapters, dxLayoutContainer,
  Vcl.ComCtrls, dxCore, cxDateUtils;

type
  TimDatalForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    grp2: TdxLayoutGroup;
    grp3: TdxLayoutGroup;
    grp4: TdxLayoutGroup;
    spl1: TdxLayoutSplitterItem;
    grp5: TdxLayoutGroup;
    dt1: TcxDateEdit;
    itm_dt1: TdxLayoutItem;
    dt2: TcxDateEdit;
    itm_dt2: TdxLayoutItem;
    cbb_DType: TcxComboBox;
    itm_DType: TdxLayoutItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_grd2: TdxLayoutItem;
    v3: TcxGridDBTableView;
    l3: TcxGridLevel;
    grd3: TcxGrid;
    itm_grd3: TdxLayoutItem;
    ds_MoveImMKD: TpFIBDataSet;
    src_MoveImMKD: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1DOGIMMKD: TcxGridDBColumn;
    clv1PSUM: TcxGridDBColumn;
    clv1RSUM: TcxGridDBColumn;
    clv1NOTE: TcxGridDBColumn;
    ds_DOGIMMKD: TpFIBDataSet;
    src_DOGIMMKD: TDataSource;
    ds_akt: TpFIBDataSet;
    src_akt: TDataSource;
    clv1DATA: TcxGridDBColumn;
    clv2DATA: TcxGridDBColumn;
    clv2PSum: TcxGridDBColumn;
    clv2RSum: TcxGridDBColumn;
    clv2Note: TcxGridDBColumn;
    clv2Saldo: TcxGridDBColumn;
    clv2CODE: TcxGridDBColumn;
    m_akt: TdxMemData;
    ds_obv: TpFIBDataSet;
    m_obv: TdxMemData;
    src_obv: TDataSource;
    btn_exec: TcxButton;
    itm_exec: TdxLayoutItem;
    clv3ARENDATOR: TcxGridDBColumn;
    clv3ARNAME: TcxGridDBColumn;
    clv3DTYPE: TcxGridDBColumn;
    clv3OST: TcxGridDBColumn;
    clv3PSUM: TcxGridDBColumn;
    clv3RSUM: TcxGridDBColumn;
    clv3SALDO: TcxGridDBColumn;
    edrep1: TcxEditRepository;
    ced1: TcxEditRepositoryCurrencyItem;
    clv1ptype: TcxGridDBColumn;
    clv1saldo: TcxGridDBColumn;
    chk1: TcxCheckBox;
    itm_chk1: TdxLayoutItem;
    m_obj1: TdxMemData;
    src_obj1: TDataSource;
    clv3AGROUP: TcxGridDBColumn;
    clv3AGROUPNAME: TcxGridDBColumn;
    clv3DOGIMMKD: TcxGridDBColumn;
    btn_Excel: TcxButton;
    LItemlc1Item1: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v1EditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure btn_execClick(Sender: TObject);
    procedure grp4CaptionClick(Sender: TObject);
    procedure grp3CaptionClick(Sender: TObject);
    procedure v3CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_ExcelClick(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDS;
    procedure CreateMAkt;
    procedure AKT_Open;
    procedure AddMAKTData;
    //
    procedure Obv_Open;
    procedure AddObvData;
    procedure AddObvDataGroup;
    procedure CreateObv;
  public
    { Public declarations }
  end;

var
  imDatalForm: TimDatalForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, LoadingSplash;

{$R *.dfm}

procedure TimDatalForm.AddMAKTData;
var
  D, SALDO,BSaldo :Variant;
  added :Boolean;
  procedure AddData;
  begin
    with m_akt do
    begin
      if (not added) and (BSaldo<>0) then
      begin
        Append;
        FieldByName('SALDO').AsVariant:=BSaldo;
        FieldByName('DATA').AsVariant:=dt1.EditValue;
        Post;
        added:=True;
        SALDO:=SALDO+BSaldo;
      end;
      //SALDO:=SALDO+ds_akt.FN('SALDO').AsVariant;
      Append;
      FieldByName('CODE').AsVariant:=ds_akt.FN('CODE').AsVariant;
      FieldByName('DOGIMMKD').AsVariant:=ds_akt.FN('DOGIMMKD').AsVariant;
      //if ds_akt.FN('PSUM').AsVariant=null then
      //FieldByName('PSUM').AsVariant:=0 else
      FieldByName('PSUM').AsVariant:=ds_akt.FN('PSUM').AsVariant;
      //if ds_akt.FN('RSUM').AsVariant=null then
      //FieldByName('RSUM').AsVariant:=0 else
      FieldByName('RSUM').AsVariant:=ds_akt.FN('RSUM').AsVariant;
      FieldByName('SALDO').AsVariant:=ds_akt.FN('SALDO').AsVariant+
              ds_akt.FN('PSUM').AsVariant- ds_akt.FN('RSUM').AsVariant;
      FieldByName('NOTE').AsVariant:=ds_akt.FN('NOTE').AsVariant;
      FieldByName('DATA').AsVariant:=ds_akt.FN('DATA').AsVariant;
      Post;
    end;
  end;
begin
  D:=dt1.EditValue;
  SALDO:=0;
  BSaldo:=ds_akt.FN('SALDO').AsVariant;
  m_akt.Close; m_akt.Open;
  with ds_akt do begin
    while not EOF do begin
      {if FN('DATA').AsVariant<D then
         BSaldo:=BSaldo+ds_akt.FN('SALDO').AsVariant else }
      AddData;
      Next;
    end;
  end;
  if BSaldo<>0 then
  v2.DataController.Summary.FooterSummaryValues[0]:= BSaldo;
  v2.DataController.Summary.FooterSummaryValues[3]:=
     m_akt.FieldByName('SALDO').AsVariant;
end;

procedure TimDatalForm.AKT_Open;
begin
  //if v1.Controller.IsNewItemRowFocused then Exit;
  if v3.GetColumnByFieldName('DOGIMMKD').EditValue=Unassigned then Exit;
  if dt2.EditValue=null then Exit;
  with ds_akt do begin
    Close;
    MainWhereClause:='mm.DOGIMMKD=:dg and mm.DATA between :D1 and :D2';
    ParamByName('dg').AsVariant:=v3.GetColumnByFieldName('DOGIMMKD').EditValue;
    ParamByName('D1').AsVariant:=dt1.EditValue;
    ParamByName('D2').AsVariant:=dt2.EditValue;
    OrderClause:='mm.DATA';
    Open;
  end;
  AddMAKTData;
end;

procedure TimDatalForm.btn_ExcelClick(Sender: TObject);
begin
  AppUtils.SimpleExportInExcel(grd3);
end;

procedure TimDatalForm.btn_execClick(Sender: TObject);
begin
  Obv_Open;
end;

procedure TimDatalForm.CreateMAkt;
begin
  CreateField(m_akt,'CODE',ftInteger);
  CreateField(m_akt,'DOGIMMKD',ftInteger);
  CreateField(m_akt,'PSUM',ftCurrency);
  CreateField(m_akt,'RSUM',ftCurrency);
  CreateField(m_akt,'SALDO',ftCurrency);
  CreateField(m_akt,'NOTE',ftString,240);
  CreateField(m_akt,'DATA',ftDate);
  m_akt.Open;
end;

procedure TimDatalForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TimDatalForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  OpenDS;
end;

procedure TimDatalForm.grp3CaptionClick(Sender: TObject);
begin
 // itm_DType.Visible:=true;
 // itm_exec.Visible:=true;
end;

procedure TimDatalForm.grp4CaptionClick(Sender: TObject);
begin
 // itm_DType.Visible:=False;
 // itm_exec.Visible:=False;
end;

procedure TimDatalForm.Obv_Open;
begin
  if (dt2.EditValue=null) or (dt1.EditValue=null) then Exit;
  SplashVisibility(true,'Дождитесь окончания операции');
  grd3.BeginUpdate(lsimImmediate);
  try
    with ds_obv do begin
      Close;
      ParamByName('ADTYPE').AsVariant:=cbb_DType.ItemIndex;
      ParamByName('d1').AsVariant:=dt1.EditValue;
      ParamByName('d2').AsVariant:=dt2.EditValue;
      OrderClause:='AGROUP';
      Open;
    end;
    if chk1.Checked then AddObvDataGroup else
    AddObvData;
  finally
    grd3.EndUpdate;
    SplashVisibility(false);
  end;
end;

procedure TimDatalForm.CreateObv;
begin
  CreateField(m_obv,'ARENDATOR',ftInteger);
  CreateField(m_obv,'ARNAME',ftString,128);
  CreateField(m_obv,'ARFULLNAME',ftString,256);
  CreateField(m_obv,'AGROUP',ftInteger);
  CreateField(m_obv,'AGROUPNAME',ftString,256);
  CreateField(m_obv,'DTYPE',ftInteger);
  CreateField(m_obv,'OST',ftCurrency);
  CreateField(m_obv,'PSUM',ftCurrency);
  CreateField(m_obv,'RSUM',ftCurrency);
  CreateField(m_obv,'SALDO',ftCurrency);
  CreateField(m_obv,'DOGIMMKD',ftInteger);
  m_obv.Open;
  CreateField(m_obj1,'ARENDATOR',ftInteger);
  CreateField(m_obj1,'ARNAME',ftString,128);
  CreateField(m_obj1,'ARFULLNAME',ftString,256);
  CreateField(m_obj1,'DTYPE',ftInteger);
  CreateField(m_obj1,'OST',ftCurrency);
  CreateField(m_obj1,'PSUM',ftCurrency);
  CreateField(m_obj1,'RSUM',ftCurrency);
  CreateField(m_obj1,'SALDO',ftCurrency);
  m_obj1.Open;
end;

procedure TimDatalForm.AddObvDataGroup;
var
  ar, agroup :Variant;
begin
  m_obv.Close; m_obv.Open;
  with ds_obv do
  begin
    while not EOF do begin
     // if FN('AGROUP').AsVariant=0 then begin
        if ar<>FN('ARENDATOR').AsVariant then
        begin
            m_obv.Append;
            m_obv.FieldByName('AGROUP').AsVariant:=FN('AGROUP').AsVariant;
            m_obv.FieldByName('AGROUPNAME').AsVariant:=FN('AGROUPNAME').AsVariant;
            m_obv.FieldByName('ARENDATOR').AsVariant:=FN('ARENDATOR').AsVariant;
            m_obv.FieldByName('ARNAME').AsVariant:=FN('ARNAME').AsVariant;
            m_obv.FieldByName('DTYPE').AsVariant:=FN('DTYPE').AsVariant;
            m_obv.FieldByName('OST').AsCurrency:=FN('SALDO1').AsVariant;
            m_obv.FieldByName('PSUM').AsCurrency:=FN('PSUM').AsVariant;
            m_obv.FieldByName('RSUM').AsCurrency:=FN('RSUM').AsVariant;
            m_obv.FieldByName('SALDO').AsCurrency:=FN('SALDO2').AsVariant;
            m_obv.Post;
        end else
        begin
          m_obv.Edit;
          m_obv.FieldByName('PSUM').AsCurrency:=
                       m_obv.FieldByName('PSUM').AsCurrency+FN('PSUM').AsCurrency;
          m_obv.FieldByName('RSUM').AsCurrency:=
                       m_obv.FieldByName('RSUM').AsCurrency+FN('RSUM').AsCurrency;
          m_obv.FieldByName('SALDO').AsCurrency:= FN('SALDO2').AsVariant;
                    // m_obv.FieldByName('SALDO').AsCurrency+FN('SALDO').AsCurrency;
          m_obv.Post;
        end;
        ar:=FN('ARENDATOR').AsVariant;
        Next;
     { end else
       begin
         if agroup<>FN('AGROUP').AsVariant then
         begin
            m_obv.Append;
            m_obv.FieldByName('AGROUP').AsVariant:=FN('AGROUP').AsVariant;
            m_obv.FieldByName('AGROUPNAME').AsVariant:=FN('AGROUPNAME').AsVariant;
            m_obv.FieldByName('ARENDATOR').AsVariant:=FN('ARENDATOR').AsVariant;
            m_obv.FieldByName('ARNAME').AsVariant:=FN('ARNAME').AsVariant;
            m_obv.FieldByName('DTYPE').AsVariant:=FN('DTYPE').AsVariant;
            m_obv.FieldByName('OST').AsCurrency:=FN('SALDO1').AsVariant;
            m_obv.FieldByName('PSUM').AsCurrency:=FN('PSUM').AsVariant;
            m_obv.FieldByName('RSUM').AsCurrency:=FN('RSUM').AsVariant;
            m_obv.FieldByName('SALDO').AsCurrency:=FN('SALDO2').AsVariant;
            m_obv.Post;
         end else
         begin
           m_obv.Edit;
            m_obv.FieldByName('PSUM').AsCurrency:=
                         m_obv.FieldByName('PSUM').AsCurrency+FN('PSUM').AsCurrency;
            m_obv.FieldByName('RSUM').AsCurrency:=
                         m_obv.FieldByName('RSUM').AsCurrency+FN('RSUM').AsCurrency;
            m_obv.FieldByName('SALDO').AsCurrency:= FN('SALDO2').AsVariant;

            m_obv.Post;
         end;
         agroup:=FN('AGROUP').AsVariant;
         Next;
       end;}
    end;
  end;
end;

procedure TimDatalForm.AddObvData;
var
  ar:Variant;
begin
  m_obv.Close; m_obv.Open;
  with ds_obv do
  begin
    while not EOF do begin
        if ar<>FN('ARENDATOR').AsVariant then
        begin
            m_obv.Append;
            m_obv.FieldByName('AGROUP').AsVariant:=FN('AGROUP').AsVariant;
            m_obv.FieldByName('AGROUPNAME').AsVariant:=FN('AGROUPNAME').AsVariant;
            m_obv.FieldByName('ARENDATOR').AsVariant:=FN('ARENDATOR').AsVariant;
            m_obv.FieldByName('ARNAME').AsVariant:=FN('ARNAME').AsVariant;
            m_obv.FieldByName('DTYPE').AsVariant:=FN('DTYPE').AsVariant;
            m_obv.FieldByName('OST').AsCurrency:=FN('SALDO1').AsVariant;
            m_obv.FieldByName('PSUM').AsCurrency:=FN('PSUM').AsVariant;
            m_obv.FieldByName('RSUM').AsCurrency:=FN('RSUM').AsVariant;
            m_obv.FieldByName('SALDO').AsCurrency:=FN('SALDO2').AsVariant;
            m_obv.FieldByName('DOGIMMKD').AsVariant:=FN('DOGIMMKD').AsVariant;
            m_obv.Post;
        end else
        begin
          m_obv.Edit;
          m_obv.FieldByName('PSUM').AsCurrency:=
                       m_obv.FieldByName('PSUM').AsCurrency+FN('PSUM').AsCurrency;
          m_obv.FieldByName('RSUM').AsCurrency:=
                       m_obv.FieldByName('RSUM').AsCurrency+FN('RSUM').AsCurrency;
          m_obv.FieldByName('SALDO').AsCurrency:= FN('SALDO2').AsVariant;

          m_obv.Post;
        end;
        ar:=FN('ARENDATOR').AsVariant;
        Next;
    end;
  end;
end;

procedure TimDatalForm.OpenDS;
begin
  CreateMAkt;
  CreateObv;
  ds_DOGIMMKD.Open;
  DSOptoins(ds_MoveImMKD,'','MOVEIMMKD','CODE','MOVEIMMKD_GEN');
end;

procedure TimDatalForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  AKT_Open;
end;

procedure TimDatalForm.v1EditKeyDown(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
  Shift: TShiftState);
begin
  with Sender.Controller do
    if FocusedItem.IsLast and FocusedRecord.IsLast and (Key = VK_RETURN) then
    begin
      Key := 0;
      //Sender.DataController.Append;
      Sender.DataController.Post;
    end;
end;

procedure TimDatalForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP : AKT_Open;
    VK_DOWN : AKT_Open;
  end;
end;

procedure TimDatalForm.v3CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  AKT_Open;
end;

initialization
 RegisterClass(TimDatalForm);
end.
