unit BDRAutoCreateFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxCheckListBox, cxDropDownEdit, cxTextEdit, cxMaskEdit,
  cxDBCheckListBox, DB, FIBDataSet, pFIBDataSet, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  FIBQuery,pFIBCacheQueries,pFIBProps, dateutils,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, dxmdaset, cxCheckBox, Menus, StdCtrls, cxButtons, cxMemo, cxRadioGroup,
  xmldom, XMLIntf, msxmldom, XMLDoc, dxLayoutControlAdapters, dxLayoutContainer,
  dxSkinDevExpressStyle;

type
  TBDRAutoCreateForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grp_left: TdxLayoutGroup;
    grp_right: TdxLayoutGroup;
    m_Y: TcxMaskEdit;
    itm_m_Y: TdxLayoutItem;
    cbb_M: TcxComboBox;
    itm_M: TdxLayoutItem;
    ds_srv1: TpFIBDataSet;
    src_srv1: TDataSource;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    clv1ID: TcxGridDBColumn;
    clv1CODE: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    clv1RTYPE: TcxGridDBColumn;
    m_srv1: TdxMemData;
    clv1Flag: TcxGridDBColumn;
    btn_Create: TcxButton;
    itm_Create: TdxLayoutItem;
    grp_create: TdxLayoutGroup;
    grp_correct: TdxLayoutGroup;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_grd2: TdxLayoutItem;
    btn_correcr: TcxButton;
    itm_corect: TdxLayoutItem;
    ds_srv2: TpFIBDataSet;
    m_srv2: TdxMemData;
    src_srv2: TDataSource;
    clv2ID: TcxGridDBColumn;
    clv2CODE: TcxGridDBColumn;
    clv2NAME: TcxGridDBColumn;
    clv2RTYPE: TcxGridDBColumn;
    clv2FLAG: TcxGridDBColumn;
    mmo1: TcxMemo;
    itm_mmo1: TdxLayoutItem;
    ds_FACTDOCLIST: TpFIBDataSet;
    btn_createTR: TcxButton;
    itm_createTR: TdxLayoutItem;
    grlc1Group1: TdxLayoutGroup;
    rb_Obh: TcxRadioButton;
    itmlc1Item1: TdxLayoutItem;
    rb_Lift: TcxRadioButton;
    itmlc1Item11: TdxLayoutItem;
    UnloadSiteGroup: TdxLayoutGroup;
    UnloadSiteBtn: TcxButton;
    lc1Item1: TdxLayoutItem;
    XML: TXMLDocument;
    OpenDialog: TOpenDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure grp_createCaptionClick(Sender: TObject);
    procedure grp_correctCaptionClick(Sender: TObject);
    procedure btn_CreateClick(Sender: TObject);
    procedure btn_correcrClick(Sender: TObject);
    procedure grlc1Group1CaptionClick(Sender: TObject);
    procedure btn_createTRClick(Sender: TObject);
    procedure UnloadSiteBtnClick(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDs;
    procedure CreateMem;
    procedure CreateNewDoc;
    procedure CreateDoc(srv :Variant);
    procedure Correct;
    //
    procedure CreateTRfactDoc;
    procedure ClearDoc;
  public
    { Public declarations }
  end;

var
  BDRAutoCreateForm: TBDRAutoCreateForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, FactDocCreate;

{$R *.dfm}

procedure TBDRAutoCreateForm.btn_correcrClick(Sender: TObject);
begin
  Correct;
end;

procedure TBDRAutoCreateForm.btn_CreateClick(Sender: TObject);
begin
  if Application.MessageBox('Имеющиеся документы за выбранный период, по указаным услугам будут удалены.'
    + #13#10 + 'Создать документы?', 'Предупреждение', MB_YESNO +
    MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST) = IDYES then
  begin
    CreateNewDoc;
  end;
end;

procedure TBDRAutoCreateForm.btn_createTRClick(Sender: TObject);
begin

  //CreateTRfactDoc;
end;

procedure TBDRAutoCreateForm.CreateNewDoc;
var
  i :Integer;
begin
  v1.BeginUpdate;
  with m_srv1 do begin
    First;
    while not Eof do begin
      if FieldByName('FLAG').AsVariant=1 then
        if FieldByName('RTYPE').AsVariant=0 then
        begin
          FactDoc.MMO:=mmo1.Lines;
          FactDoc.CreateDoc(cbb_M.ItemIndex,m_Y.EditValue,
                              FieldByName('CODE').AsVariant);
          edit;
            FieldByName('FLAG').AsVariant:=0;
          Post;
        end else
        begin
          Fact1Doc.MMO:=mmo1.Lines;
          Fact1Doc.CreateDoc1(cbb_M.ItemIndex,m_Y.EditValue,
                              FieldByName('CODE').AsVariant);
          edit;
            FieldByName('FLAG').AsVariant:=0;
          Post;
        end;
      Next;
    end;
  end;
  v1.EndUpdate;
end;

procedure TBDRAutoCreateForm.CreateTRfactDoc;
var
  Q: TFIBQuery;
  d1, d2, TableName,FactName :Variant;
begin
 //сообщение перед формированием
  if m_Y.EditValue=null Then Exit;
  d1 :=StartOfAMonth(m_Y.EditValue,cbb_M.ItemIndex);
  d2:= EndOfAMonth(m_Y.EditValue,cbb_M.ItemIndex)-1;
  if rb_Obh.Checked then begin
     TableName:='TRWORKBDR';
     FactName:='TRFACT';
  end else begin
     TableName:='TRLWORKBDR';
     FactName:='TRFACT';
  end;
  //
  mmo1.Lines.Add('Очищаем таблицу за указанный период.');
  ClearDoc;
  //
  mmo1.Lines.Add('Вставляем данные.');
  Q:=GetQueryForUse(cmDB.WT,
      'insert into '+TableName+' (DATA, DOCNOMER, HOUSE,  KONTRAGENT, SUMMA, ' +
      'NOTE, MLIST)' + #13#10 +
      'select  ZD, NDOP, HOUSE, KONTRAGENT, SUMMA, NOTE, MLIST' + #13#10 +
      'from '+FactName + #13#10 +
      'where STATE=5 and ZD between :d1 and :d2');
  Q.Options:=[qoStartTransaction,qoAutoCommit];
  Q.ParamByName('d1').AsVariant:=d1;
  Q.ParamByName('d2').AsVariant:=d2;
  try
    Q.ExecQuery;
    mmo1.Lines.Add('Формирование закончено.');
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TBDRAutoCreateForm.ClearDoc;
var
  Q: TFIBQuery;
  d1, d2, TableName :Variant;
begin
  if rb_Obh.Checked then
     TableName:='TRWORKBDR' else
     TableName:='TRLWORKBDR';
  d1 :=StartOfAMonth(m_Y.EditValue,cbb_M.ItemIndex);
  d2:= EndOfAMonth(m_Y.EditValue,cbb_M.ItemIndex)-1;
  //cleardoc
  Q:=GetQueryForUse(cmDB.WT,
      'delete from '+TableName + #13#10 +
      'where (DATA between :d1 and :d2)');
  try
    Q.Options:=[qoStartTransaction,qoAutoCommit];
    Q.ParamByName('d1').AsVariant:=d1;
    Q.ParamByName('d2').AsVariant:=d2;
    Q.ExecQuery;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TBDRAutoCreateForm.Correct;
begin
  v1.BeginUpdate;
  with m_srv2 do begin
    First;
    while not Eof do begin
      if FieldByName('FLAG').AsVariant=1 then
        if FieldByName('RTYPE').AsVariant=0 then
        begin
          Fact1Doc.MMO:=mmo1.Lines;
          FactDoc.Correct(cbb_M.ItemIndex,m_Y.EditValue,
                              FieldByName('CODE').AsVariant);
          edit;
            FieldByName('FLAG').AsVariant:=0;
          Post;
        end else
        begin
          Fact1Doc.MMO:=mmo1.Lines;
          Fact1Doc.CorrectDoc1(cbb_M.ItemIndex,m_Y.EditValue,
                              FieldByName('CODE').AsVariant);
          edit;
            FieldByName('FLAG').AsVariant:=0;
          Post;
        end;
      Next;
    end;
  end;
  v1.EndUpdate;
end;

procedure TBDRAutoCreateForm.CreateDoc(srv: Variant);
  var
    FBD :variant;
    Q,Q1,Q2,Q3 :TfibQuery;
  //
  procedure MakeSQL;
  begin
    // дома из договора
    Q:=GetQueryForUse(cmDB.RT,'select '',''||list(sd.HOUSE,'','')||'','' house'
                              + #13#10 +
                              'FROM SRVDOGHOUSE sd' + #13#10 +
                              'WHERE sd.SRVDOG=:DOG');
    //код БДР
    Q1:=GetQueryForUse(cmDB.RT,'SELECT fb.CODE,fb.Y,fb.M,fb.HOUSESRV' + #13 +
                              #10 + 'FROM PBDR fb' + #13#10 +
                              'where fb.y=:y and fb.M=:M and fb.HOUSESRV=:srv');
    //очищаем таблицу перед заполнением
    Q2:=GetQueryForUse(cmDB.WT,'delete from FACTDOCLIST' + #13#10 +
                              'where (FACTDOC = :FD)');
    Q2.Options:=[qoStartTransaction,qoAutoCommit];
  end;
  //
  function GetCodBDR(m,y,srv :Variant) :Variant;
  begin
    Q1.ParamByName('Y').AsVariant:=Y;
    Q1.ParamByName('M').AsVariant:=M;
    Q1.ParamByName('srv').AsVariant:=SRV;
    Q1.ExecQuery;
    Result:=Q1.FN('CODE').AsVariant;
  end;
  //
  procedure FreeSQL;
  begin
    FreeQueryForUse(Q);
    FreeQueryForUse(Q1);
    FreeQueryForUse(Q2);
    FreeQueryForUse(Q3);
  end;
  //
  procedure FillData;
  var
    FBD :variant;
  begin
    FBD :=GetCodBDR(cbb_m.ItemIndex, m_Y.EditValue, srv);
    if FBD=null then Exit;
    //hs:=#39+GetHouse(dg)+#39;
    //заполняем данные
    Q3:=GetQueryForUse(cmDB.RT,'select HOUSE, F22 from PBDR1 ' + #13#10 +
                               'where PBDR = :FBD');
    Q3.ParamByName('FBD').AsVariant:=FBD;
    //Q3.ParamByName('HSE').AsWideString:=#39+hs+#39;
    Q3.ExecQuery;
    //insert data
    ds_FACTDOCLIST.DisableControls;
    while not Q3.Eof do begin
      with ds_FACTDOCLIST do begin
        Append;
        FN('FACTDOC').AsVariant:=v1.GetColumnByFieldName('CODE').EditValue;
        FN('PLANSUM').AsVariant:=Q3.FN('F22').AsVariant;
        FN('FACTSUM').AsVariant:=Q3.FN('F22').AsVariant;
        FN('CORRECT').AsVariant:=0;
        FN('HOUSE').AsVariant:=Q3.FN('HOUSE').AsVariant;
        Post;
      end;
      Q3.Next;
    end;
    ds_FACTDOCLIST.EnableControls;
  end;
  //
begin

end;

procedure TBDRAutoCreateForm.CreateMem;
begin
  CreateField(m_srv1,'FLAG',ftInteger);
  CreateField(m_srv1,'ID',ftString,32);
  CreateField(m_srv1,'CODE',ftInteger);
  CreateField(m_srv1,'NAME',ftString,256);
  CreateField(m_srv1,'RTYPE',ftInteger);
  m_srv1.Open;
  CreateField(m_srv2,'FLAG',ftInteger);
  CreateField(m_srv2,'ID',ftString,32);
  CreateField(m_srv2,'CODE',ftInteger);
  CreateField(m_srv2,'NAME',ftString,256);
  CreateField(m_srv2,'RTYPE',ftInteger);
  m_srv2.Open;
end;

procedure TBDRAutoCreateForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TBDRAutoCreateForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  OpenDs;
end;


procedure TBDRAutoCreateForm.grlc1Group1CaptionClick(Sender: TObject);
begin
  grlc1Group1.Expanded:= not grlc1Group1.Expanded;
end;

procedure TBDRAutoCreateForm.grp_correctCaptionClick(Sender: TObject);
begin
  grp_correct.Expanded:= not grp_correct.Expanded;
end;

procedure TBDRAutoCreateForm.grp_createCaptionClick(Sender: TObject);
begin
  grp_create.Expanded:= not grp_create.Expanded;
end;

procedure TBDRAutoCreateForm.OpenDs;
begin
  CreateMem;
  ds_srv1.Open;
  ds_srv2.Open;
  m_srv1.LoadFromDataSet(ds_srv1);
  m_srv2.LoadFromDataSet(ds_srv2);
end;

procedure TBDRAutoCreateForm.UnloadSiteBtnClick(Sender: TObject);
var
  AFileName: string;
  D1, D2: TDateTime;
  M,Y: word;
  Q: TFIBQuery;
  ARoot: IXMLNode;

  procedure MakeTRData;
  var
    ANode: IXMLNode;
  begin
    Q.ExecQuery;
    while not Q.Eof do
    begin
      //формируем сообщение для сайта
      ANode:=ARoot.AddChild('ТР');
      ANode.Attributes['Date']:=Q.FN('Data').AsString;
      ANode.Attributes['Street']:=Q.FN('StreetName').AsString;
      ANode.Attributes['Nomer']:=Q.FN('Nomer').AsString;
      ANode.Attributes['Work']:=Q.FN('WorkName').AsString;
      ANode.Attributes['Note']:=Q.FN('DPlace').AsString;
      Q.Next;
    end;
  end;

begin
  //получаем имя файла для выгрузки
  if not OpenDialog.Execute then Exit;
  AFileName:=OpenDialog.FileName;

  //определяем диапозон дат
  Y:=m_Y.EditValue;;
  M:=cbb_M.ItemIndex;
  D1:=EncodeDate(Y, M, 1);
  if M=12 then
  begin
    M:=1;
    Inc(Y);
  end
  else
    Inc(M);
  D2:=EncodeDate(Y,M,1)-1;

  //формируем заголовок файла выгрузки
  //XML.NodeIndentStr:='<2 spaces>'#13;
  ARoot:=XML.AddChild('СУОН');
  ARoot.Attributes['D1']:=DateToStr(D1);
  ARoot.Attributes['D2']:=DateToStr(D2);

  //получаем данные по текущему ремонту  (общестрой)
  mmo1.Lines.Add('Выгружаем данные ТР....');
  Q:=GetQueryForUse(cmDB.RT,
    'select a.state, a.data, a.zd, a.sd, b.Nomer, c.Name StreetName, '+
    ' a.Summa, d.Name WorkName, a.DPlace , a.Note '+
    ' from TRFact a '+
    ' left outer join House b on b.Code=a.House '+
    ' left outer join Street c  on c.Code=b.Street '+
    ' left outer join MList d on d.Code=a.MList ');
    //' where State=5 and ZD between :D1 and :D2');
    Q.ParamByName('D1').AsDate:=D1;
    Q.ParamByName('D2').AsDate:=D2;
    MakeTRData;
    FreeQueryForUse(Q);
  //получаем данные по текущему ремонту  (лифт)
  Q:=GetQueryForUse(cmDB.RT,
    'select a.state, a.data, a.zd, a.sd, b.Nomer, c.Name StreetName, '+
    ' a.Summa, d.Name WorkName, a.DPlace, a.Note '+
    ' from TRLFact a '+
    ' left outer join House b on b.Code=a.House '+
    ' left outer join Street c  on c.Code=b.Street '+
    ' left outer join MList d on d.Code=a.MList ');
    //' where State=5 and ZD between :D1 and :D2');
    Q.ParamByName('D1').AsDate:=D1;
    Q.ParamByName('D2').AsDate:=D2;
    MakeTRData;
    FreeQueryForUse(Q);

    XML.SaveToFile(AFileName);
    mmo1.Lines.Add('Формирование файла выгрузки завершено.');
end;

initialization
 RegisterClass(TBDRAutoCreateForm);
end.




