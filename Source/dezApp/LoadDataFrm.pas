unit LoadDataFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxLayoutLookAndFeels, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMemo, cxSplitter,
  dxLayoutControl, ComCtrls, ShlObj, cxShellCommon, dxLayoutcxEditAdapters,
  Menus, StdCtrls, cxButtons, cxCalendar, cxMaskEdit, cxDropDownEdit,
  cxShellComboBox, cxButtonEdit, cxProgressBar, dxStatusBar, dxSkinsCore,
  dxSkinOffice2010Blue, dxSkinscxPCPainter, dxSkinsdxStatusBarPainter,
  cxSpinEdit, BaseForm, cxPropertiesStore, xmldom, XMLIntf, msxmldom, XMLDoc,
  dxLayoutControlAdapters, dxLayoutContainer, dxSkinDevExpressStyle,
  cxCustomData, cxStyles, cxTL, cxTLdxBarBuiltInMenu, cxInplaceContainer,
  cxTLData, dxCore, cxDateUtils;

type
  TLoadDataForm = class(TDezForm)
    LScin: TdxLayoutLookAndFeelList;
    dxLayoutControl1: TdxLayoutControl;
    cxSplitter2: TcxSplitter;
    dxLayoutControl1Group_Root1: TdxLayoutGroup;
    dxLayoutControl1Group1: TdxLayoutGroup;
    D1: TcxDateEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    FileName: TcxButtonEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    OpenDBFDialog: TOpenDialog;
    StatusBar: TdxStatusBar;
    dxStatusBar1Container1: TdxStatusBarContainerControl;
    Progress: TcxProgressBar;
    dxLayoutControl1Group2: TdxLayoutGroup;
    FileName1: TcxButtonEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    M: TcxComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    Y: TcxSpinEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    cxButton3: TcxButton;
    dxLayoutControl1Item8: TdxLayoutItem;
    prop1: TcxPropertiesStore;
    cxButton4: TcxButton;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    FileName2: TcxButtonEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    OpenXMLDialog: TOpenDialog;
    dxLayoutControl1Group4: TdxLayoutGroup;
    FileName3: TcxButtonEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    M2: TcxComboBox;
    dxLayoutControl1Item14: TdxLayoutItem;
    Y2: TcxSpinEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    Srv: TcxComboBox;
    dxLayoutControl1Item16: TdxLayoutItem;
    cxButton5: TcxButton;
    dxLayoutControl1Item17: TdxLayoutItem;
    OpenTxtDialog: TOpenDialog;
    cxButton6: TcxButton;
    dxLayoutControl1Item18: TdxLayoutItem;
    Srv1: TcxComboBox;
    dxLayoutControl1Item19: TdxLayoutItem;
    cxButton7: TcxButton;
    dxLayoutControl1Item20: TdxLayoutItem;
    cxButton8: TcxButton;
    dxLayoutControl1Item11: TdxLayoutItem;
    BuhFileName: TcxButtonEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxButton9: TcxButton;
    dxLayoutControl1Item21: TdxLayoutItem;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dxLayoutControl3SplitterItem1: TdxLayoutSplitterItem;
    Memo: TcxMemo;
    dxLayoutControl3Item1: TdxLayoutItem;
    dxLayoutControl3Group3: TdxLayoutGroup;
    TreeList: TcxVirtualTreeList;
    dxLayoutControl3Item3: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FileNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FileName1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure FileName2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton5Click(Sender: TObject);
    procedure FileName3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure BuhFileNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton9Click(Sender: TObject);
  private
    procedure SetMessage(S: string);
    procedure SetProgress(ACount, APosition: integer);
  public
    { Public declarations }
  end;

var
  LoadDataForm: TLoadDataForm;

implementation

uses
  dezLoadData, dezNewLoadData, cmUtils, ClosePeriodFrm;

{$R *.dfm}

procedure TLoadDataForm.BuhFileNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if OpenXMLDialog.Execute then
    BuhFileName.Text:=OpenXMLDialog.FileName;
end;

procedure TLoadDataForm.cxButton1Click(Sender: TObject);
var
  Obj: TdezLoadTarif;
begin
  ScanClosePeriod(D1.Date); //проверка закрытого периода

  Obj:=TdezLoadTarif.Create(FileName.Text, D1.Date);
  try
    Obj.OnMessage:=SetMessage;
    Obj.OnProgress:=SetProgress;
    Obj.Execute;
  finally
    Obj.Free;
  end;
end;

procedure TLoadDataForm.cxButton2Click(Sender: TObject);
var
  Obj: TdezLoadVol;
begin
  ScanClosePeriod(M.ItemIndex+1, Y.EditValue); //проверка закрытого периода
  Obj:=TdezLoadVol.Create(FileName1.Text, M.ItemIndex+1,  Y.Value);
  try
    Obj.OnMessage:=SetMessage;
    Obj.OnProgress:=SetProgress;
    Obj.Execute;
  finally
    Obj.Free;
  end;
end;

procedure TLoadDataForm.cxButton3Click(Sender: TObject);
var
  Obj: TdezLoadVol;
begin
  ScanClosePeriod(M.ItemIndex+1, Y.EditValue); //проверка закрытого периода
  Obj:=TdezLoadVol.Create(FileName1.Text, M.ItemIndex+1,  Y.Value);
  try
    Obj.OnMessage:=SetMessage;
    Obj.OnProgress:=SetProgress;
    Obj.ExecuteNach;
  finally
    Obj.Free;
  end;
end;

procedure TLoadDataForm.cxButton4Click(Sender: TObject);
var
  Obj: TdezLoadXML;
begin
  Obj:=TdezLoadXML.Create(FileName2.Text);
  try
    Obj.OnMessage:=SetMessage;
    Obj.OnProgress:=SetProgress;
    Obj.VT:=TreeList;
    Obj.Execute;
  finally
    Obj.Free;
  end;
end;

procedure TLoadDataForm.cxButton5Click(Sender: TObject);
var
  Obj: TdezLoadFact;
begin
  Obj:=TdezLoadFact.Create(FileName3.Text, M2.ItemIndex+1, Y2.Value,
    integer(Srv.Properties.Items.Objects[Srv.ItemIndex]));
  try
    Obj.OnMessage:=SetMessage;
    Obj.OnProgress:=SetProgress;
    Obj.Execute;
  finally
    Obj.Free;
  end;
end;

procedure TLoadDataForm.cxButton6Click(Sender: TObject);
var
  Obj: TdezLoadFactDoc;
begin
  Obj:=TdezLoadFactDoc.Create(FileName3.Text, M2.ItemIndex+1, Y2.Value,
    integer(Srv.Properties.Items.Objects[Srv.ItemIndex]));
  try
    Obj.OnMessage:=SetMessage;
    Obj.OnProgress:=SetProgress;
    Obj.Execute;
  finally
    Obj.Free;
  end;
end;

procedure TLoadDataForm.cxButton7Click(Sender: TObject);
var
  Obj: TdezLoadFactDoc;
begin
  if Srv1.ItemIndex=0 then
  begin
    cmShowMessage('Не указана услуга.');
    Exit;
  end;
  Obj:=TdezLoadFactDoc.Create(FileName3.Text, M2.ItemIndex+1, Y2.Value,  Srv1.ItemIndex);
  try
    Obj.SrvType:=1;
    Obj.OnMessage:=SetMessage;
    Obj.OnProgress:=SetProgress;
    Obj.Execute;
  finally
    Obj.Free;
  end;
end;

procedure TLoadDataForm.cxButton8Click(Sender: TObject);
var
  //Obj: TdezLoadXML;
  Obj: TScan1CFile;
begin
  Obj:=TScan1CFile.Create(FileName2.Text);
  try
    //Obj.BuhFileName:=BuhFileName.Text;
    Obj.OnMessage:=SetMessage;
    Obj.OnProgress:=SetProgress;
    //Obj.VT:=TreeList;
    Obj.Execute;
  finally
    Obj.Free;
  end;
end;

procedure TLoadDataForm.cxButton9Click(Sender: TObject);
var
  Obj: TdezLoadRoom;
begin
  Obj:=TdezLoadRoom.Create(FileName2.Text);
  try
    Obj.OnMessage:=SetMessage;
    Obj.OnProgress:=SetProgress;
    Obj.ExecuteHouse;
  finally
    Obj.Free;
  end;
end;

procedure TLoadDataForm.FileName1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if OpenDBFDialog.Execute then
    FileName1.Text:=OpenDBFDialog.FileName;
end;

procedure TLoadDataForm.FileName2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if OpenXMLDialog.Execute then
    FileName2.Text:=OpenXMLDialog.FileName;
end;

procedure TLoadDataForm.FileName3PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if OpenTxTDialog.Execute then
    FileName3.Text:=OpenTxtDialog.FileName;
end;

procedure TLoadDataForm.FileNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if OpenDBFDialog.Execute then
    FileName.Text:=OpenDBFDialog.FileName;
end;

procedure TLoadDataForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree; //
end;

procedure TLoadDataForm.FormCreate(Sender: TObject);
begin
  Y.Value:=CurrentYear;
  Y2.Value:=CurrentYear;
  //список услуг
  Srv.Properties.Items.AddObject('Вывоз ТБО', TObject(1));
  Srv.Properties.Items.AddObject('Уборка двора', TObject(2));
  Srv.Properties.Items.AddObject('Уборка подъезда', TObject(3));
  Srv.Properties.Items.AddObject('Капитальный ремонт', TObject(4));
  Srv.Properties.Items.AddObject('Газовое оборудование', TObject(5));
  Srv.Properties.Items.AddObject('Обслуживание и ремонт', TObject(6));
  Srv.Properties.Items.AddObject('Размещение (хранение) ТБО', TObject(7));
  Srv.Properties.Items.AddObject('Лифт', TObject(8));
  Srv.Properties.Items.AddObject('Мусоропровод', TObject(9));
  Srv.ItemIndex:=0;
end;

procedure TLoadDataForm.SetMessage(S: string);
begin
  Memo.Lines.Add(S);
  Application.ProcessMessages;
end;

procedure TLoadDataForm.SetProgress(ACount, APosition: integer);
begin
  if Progress.Properties.Max<>ACount then
    Progress.Properties.Max:=ACount;
  Progress.Position:=APosition;
  StatusBar.Panels[0].Text:=IntToStr(APosition);
  Application.ProcessMessages;
end;

initialization
  RegisterClass(TLOadDataForm);

end.
