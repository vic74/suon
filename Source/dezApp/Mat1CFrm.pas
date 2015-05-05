unit Mat1CFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseForm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinscxPCPainter,
  dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxButtonEdit, cxCheckBox, cxMemo,
  cxProgressBar, FIBQuery, dxSkinDevExpressStyle, dxSkinOffice2010Blue;

type
  TMat1CForm = class(TDezForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1SplitterItem1: TdxLayoutSplitterItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    AllMatBox: TcxCheckBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    FileBox1: TcxButtonEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    OpenDialog: TOpenDialog;
    ProgressBar: TcxProgressBar;
    ProgressBar1: TdxLayoutItem;
    Memo: TcxMemo;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxButton2: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    FileBox2: TcxButtonEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FileBox1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FileBox2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    procedure MakeFileFor1C;
    procedure LoadFileFrom1C;
    procedure Progress(Count, Poz: integer);
  public
    { Public declarations }
  end;

var
  Mat1CForm: TMat1CForm;

implementation

uses
  cmDBUnit, cmUtils;

{$R *.dfm}

procedure TMat1CForm.cxButton1Click(Sender: TObject);
begin
  MakeFileFor1C;
end;

procedure TMat1CForm.cxButton2Click(Sender: TObject);
begin
  LoadFileFrom1C;
end;

procedure TMat1CForm.FileBox1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if OpenDialog.Execute then
    FileBox1.Text:=OpenDialog.FileName;
end;

procedure TMat1CForm.FileBox2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if OpenDialog.Execute then
    FileBox2.Text:=OpenDialog.FileName;
end;

procedure TMat1CForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TMat1CForm.LoadFileFrom1C;
var
  List: TStrings;
  i: integer;
  Q, Q1: TFibQuery;
  S: string;
begin
  Q:=cmDB.GetQuery('select * from Classmat where uuid_to_char(UUID)=:Code', cmDB.RT);
  Q1:=cmDB.GetQuery('update ClassMat set Code1C8=:Code1C where uuid_to_char(UUID)=:Code', cmDB.WT);
  List:=TStringList.Create;
  try
    List.LoadFromFile(FileBox2.Text);
    for i:=0 to List.Count-1 do
    begin
      S:=cmGetWord(List[i],3,';');
      Q.ParamByName('Code').AsString:=UpperCase(S);
      Q.ExecQuery;
      if (Q.RecordCount=0) then
        Memo.Lines.Add('Не найден код '+S)
      else begin
        Q1.ParamByName('Code').AsString:=UpperCase(cmGetWord(List[i],3,';'));
        Q1.ParamByName('Code1C').AsString:=UpperCase(cmGetWord(List[i],2,';'));
        Q1.ExecQuery;
      end;

      Progress(List.Count, i);
    end;
  finally
    cmDb.FreeQuery(Q);
    cmDB.FreeQuery(Q1);
    List.Free;
  end;
  Memo.Lines.Add('Загрузка завершена.');
  cmDB.WT.Commit;
end;

procedure TMat1CForm.MakeFileFor1C;
var
  List: TStrings;
  S: string;
  Count, Num: integer;
  Q: TFibQuery;

  function MakeQueryStr(Param: string): string;
  begin
    Result:='select '+Param+' from ClassMat where IsGroup=0';
    if not AllMatBox.Checked then
      Result:=Result+' and COALESCE(Code1C8, '#39#39')='#39#39;
  end;

  procedure AddRecord;
  var
   MName: string;
  begin
    MName:=cmReplaceWord(Q.FN('FullName').AsString,';',',');
    S:=MName+' ('+Q.FN('Ed').AsString+')'+';'+
    Q.FN('Code1C8').AsString+';'+
    Q.FN('UUID').AsString+';;0;;';
    List.Add(S);
  end;

begin
  //проверяем имя файла
  if FileBox1.Text='' then
  begin
    FileBox1.Focused;
    raise Exception.Create('Укажите имя файла.');
  end;
  //очищаем список
  List:=Memo.Lines;
  List.Clear;
  //формируем заголовок
  S:='##'+DateToStr(Date)+';'+DateToStr(Date)+';';
  List.Add(S);
  S:='###Выгрузка материалов;;;';
  //Получаем кол-во записей по материалам
  S:=MakeQueryStr('Count(*) Num ');
  Q:=cmDB.GetQuery(S, cmDB.RT);
  Q.ExecQuery;
  Count:=Q.FieldByName('Num').AsInteger;
  cmDB.FreeQuery(Q);
  //получаем список материалов
  S:=MakeQueryStr('FullName, uuid_to_char(uuid) uuid, Code1C8, Ed');
  Q:=cmDB.GetQuery(S, cmDB.RT);
  Q.ExecQuery;
  Num:=0;
  while not Q.Eof do
  begin
    AddRecord;
    Q.Next;
    Inc(Num);
    Progress(Count, Num);
  end;
  cmDB.FreeQuery(Q);
  //сохраняем сформированный файл
  List.SaveToFile(FileBox1.Text);
  cmShowMessage('Операция завершена.');
end;

procedure TMat1CForm.Progress(Count, Poz: integer);
begin
  ProgressBar.Properties.Min:=0;
  ProgressBar.Properties.Max:=Count;
  ProgressBar.Position:=Poz;
  Application.ProcessMessages;
end;

initialization
  RegisterClass(TMat1CForm);

end.
