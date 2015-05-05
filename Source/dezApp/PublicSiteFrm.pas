unit PublicSiteFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels, DateUtils,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, ComCtrls, ShlObj, cxShellCommon,
  cxShellComboBox, dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, dxLayoutControl, cxMemo, cxProgressBar, dxLayoutControlAdapters,
  Menus, StdCtrls, cxButtons, xmldom, XMLIntf, msxmldom, XMLDoc,
  dxSkinDevExpressStyle;

type
  TPublicSiteForm = class(TDezForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    Date1: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    Date2: TcxDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    ProgressBar: TcxProgressBar;
    dxLayoutControl1Item5: TdxLayoutItem;
    Memo: TcxMemo;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    XML: TXMLDocument;
    OpenDialog: TOpenDialog;
    cxButton2: TcxButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PublicSiteForm: TPublicSiteForm;

implementation

uses
  FIBQuery, pFIBCacheQueries, FIB, FIBDatabase, pFIBDatabase, cmDBUnit;

{$R *.dfm}

procedure TPublicSiteForm.cxButton1Click(Sender: TObject);
var
  AFileName: string;
  D1, D2: TDateTime;
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
      ANode:=ARoot.AddChild('TR');
      ANode.Attributes['Date']:=Q.FN('Sd').AsString;
      ANode.Attributes['Street']:=Q.FN('StreetName').AsString;
      ANode.Attributes['StreetCode']:=Q.FN('KDEZ').AsString;
      ANode.Attributes['Nomer']:=Q.FN('Nomer').AsString;
      ANode.Attributes['Work']:=Q.FN('WorkName').AsString;
      ANode.Attributes['Note']:=Q.FN('DPlace').AsString;
      ANode.Attributes['Summa']:=Q.FN('Summa').AsString;
      Q.Next;
    end;
  end;

begin
  //получаем имя файла для выгрузки
  if not OpenDialog.Execute then Exit;
  AFileName:=OpenDialog.FileName;

  //определяем диапозон дат
  D1:=Date1.Date;
  D2:=Date2.Date;

  //формируем заголовок файла выгрузки
  //XML.NodeIndentStr:='<2 spaces>'#13;
  XML.ChildNodes.Clear;
  ARoot:=XML.AddChild('TRM');
  ARoot.Attributes['D1']:=D1;
  ARoot.Attributes['D2']:=D2;

  //получаем данные по текущему ремонту  (общестрой)
  Memo.Lines.Add('Выгружаем данные ТР....');
  Q:=GetQueryForUse(cmDB.RT,
    'select a.state, a.data, a.zd, a.sd, b.Nomer, c.Name StreetName, '+
    ' a.Summa, d.Name WorkName, a.DPlace , a.Note, c.KDez '+
    ' from TRFact a '+
    ' left outer join House b on b.Code=a.House '+
    ' left outer join Street c  on c.Code=b.Street '+
    ' left outer join MList d on d.Code=a.MList '+
    ' where State=5 and a.SD between :D1 and :D2');
    Q.ParamByName('D1').AsDate:=D1;
    Q.ParamByName('D2').AsDate:=D2;
    MakeTRData;
    FreeQueryForUse(Q);
  //получаем данные по текущему ремонту  (лифт)
  Q:=GetQueryForUse(cmDB.RT,
    'select a.state, a.data, a.zd, a.sd, b.Nomer, c.Name StreetName, '+
    ' a.Summa, d.Name WorkName, a.DPlace, a.Note, c.KDez '+
    ' from TRLFact a '+
    ' left outer join House b on b.Code=a.House '+
    ' left outer join Street c  on c.Code=b.Street '+
    ' left outer join MList d on d.Code=a.MList '+
    ' where State=5 and a.SD between :D1 and :D2');
    Q.ParamByName('D1').AsDate:=D1;
    Q.ParamByName('D2').AsDate:=D2;
    MakeTRData;
    FreeQueryForUse(Q);

  XML.SaveToFile(AFileName);

  Memo.Lines.Add('Формирование файла выгрузки завершено.');
end;

procedure TPublicSiteForm.cxButton2Click(Sender: TObject);
var
  AFileName: string;
  D1, D2: TDateTime;
  aY: word;
  Q, Q1: TFIBQuery;
  ARoot: IXMLNode;

  procedure MakeTRData;
  var
    ANode: IXMLNode;
  begin
    Q.ExecQuery;
    while not Q.Eof do
    begin
      //формируем сообщение для сайта
      ANode:=ARoot.AddChild('PLAN');
      ANode.Attributes['D1']:=Q.FN('D1').AsString;
      ANode.Attributes['D2']:=Q.FN('D2').AsString;
      ANode.Attributes['Street']:=Q.FN('StreetName').AsString;
      ANode.Attributes['StreetCode']:=Q.FN('StreetCode').AsString;
      ANode.Attributes['Nomer']:=Q.FN('Nomer').AsString;
      ANode.Attributes['Work']:=Q.FN('Name').AsString;
      //ANode.Attributes['Note']:=Q.FN('TypeName').AsString;
      ANode.Attributes['POName']:=Q.FN('POName').AsString;
      Q.Next;
    end;
  end;

  procedure ScanGraph;
  begin
  //получаем данные по графику
  Q:=GetQueryForUse(cmDB.RT,
    'select '+
    '  t.Name,'+
    '  a.GraphList,'+
    '  a.House,'+
    '  h.Nomer,'+
    '  a.Street,'+
    '  s.KDEZ StreetCode,'+
    '  s.Name StreetName,'+
    '  a.D1,'+
    '  a.D2,'+
    '  k.Name POName,'+
    '  t.GraphType '+
    'from GraphSpec a '+
    'left outer join House h on (h.Code=a.House) '+
    'left outer join Street s on (s.Code=a.Street) '+
    'left outer join GraphList b on (b.Code=a.GraphList) '+
    'left outer join Kontragent k on (k.Code=b.Kontragent) '+
    'left outer join GraphTO t on (t.Code=b.GraphTO) '+
    'where a.GraphList=:Code and a.D1 between :D1 and :D2');
    Q.ParamByName('Code').AsInteger:=Q1.FN('Code').AsInteger;
    Q.ParamByName('D1').AsDate:=D1;
    Q.ParamByName('D2').AsDate:=D2;
    MakeTRData;
    FreeQueryForUse(Q);
  end;

begin
  //получаем имя файла для выгрузки
  if not OpenDialog.Execute then Exit;
  AFileName:=OpenDialog.FileName;

  //определяем диапозон дат
  D1:=Date1.Date;
  D2:=Date2.Date;

  //формируем заголовок файла выгрузки
  XML.ChildNodes.Clear;
  ARoot:=XML.AddChild('OSM');
  ARoot.Attributes['D1']:=D1;
  ARoot.Attributes['D2']:=D2;

  //просматриваем список графиков за год
  Memo.Lines.Add('Выгружаем данные по графикам работ...');
  aY:=YearOf(D1);
  Q1:=GetQueryForUse(cmDB.WT, 'select * from GraphList a where a."YEAR"=:Y and ALock=1');
  try
    Q1.ParamByName('Y').AsInteger:=aY;
    Q1.ExecQuery;
    while not Q1.Eof do
    begin
      ScanGraph;
      Q1.Next;
    end;
  finally
    FreeQueryForUse(Q1);
  end;

  XML.SaveToFile(AFileName);

  Memo.Lines.Add('Формирование файла выгрузки завершено.');
end;

procedure TPublicSiteForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

initialization
  RegisterClass(TPublicSiteForm);

end.
