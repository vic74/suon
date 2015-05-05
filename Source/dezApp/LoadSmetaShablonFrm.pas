unit LoadSmetaShablonFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinDevExpressStyle,
  dxSkinOffice2010Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.Menus, cxMemo,
  Vcl.StdCtrls, cxButtons, dxLayoutContainer, cxTextEdit, cxMaskEdit,
  cxButtonEdit, dxLayoutLookAndFeels, dxLayoutControl, cxProgressBar;

type
  TLoadSmetaShablonForm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    LLook: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    FileName: TcxButtonEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    Memo: TcxMemo;
    dxLayoutControl1Item3: TdxLayoutItem;
    ProgressBar: TcxProgressBar;
    dxLayoutControl1Item4: TdxLayoutItem;
    OpenDialog: TOpenDialog;
    procedure cxButton1Click(Sender: TObject);
    procedure FileNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    fMakeSmetaCode: integer;
    procedure SetMessage(S: string);
    procedure SetProgress(ACount, APosition: integer);
  public
    property MakeSmetaCode: integer read fMakeSmetaCode write fMakeSmetaCode;
  end;

var
  LoadSmetaShablonForm: TLoadSmetaShablonForm;

implementation

uses
  dezLoadData;

{$R *.dfm}

{ TLoadSmetaShablonForm }

procedure TLoadSmetaShablonForm.cxButton1Click(Sender: TObject);
var
  Obj: TShbLoad;
begin
  Obj:=TShbLoad.Create(MakeSmetaCode);
  Obj.FileName:=FileName.Text;
  Obj.OnMessage:=SetMessage;
  Obj.OnProgress:=SetProgress;
  Obj.Execute;
  Obj.Free;
end;

procedure TLoadSmetaShablonForm.FileNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if OpenDialog.Execute then
    FileName.Text:=OpenDialog.FileName;
end;

procedure TLoadSmetaShablonForm.SetMessage(S: string);
begin
  Memo.Lines.Add(S);
  Application.ProcessMessages;
end;

procedure TLoadSmetaShablonForm.SetProgress(ACount, APosition: integer);
begin
  with ProgressBar do
  begin
    Properties.Max:=ACount;
    Position:=APosition;
    Application.ProcessMessages;
  end;
end;

end.
