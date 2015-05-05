unit ClassMatLookUpFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinDevExpressStyle, cxCustomData, cxStyles, cxTL, cxMaskEdit, cxFilter,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, cxDBTL, cxTLData, Data.DB,
  FIBDataSet, pFIBDataSet, dxLayoutcxEditAdapters, cxContainer, cxEdit,
  cxTextEdit, cxButtonEdit;

type
  TClassMatLookUpForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    lGrplc1Group1: TdxLayoutGroup;
    lGrplc1Group2: TdxLayoutGroup;
    lGrplc1Group3: TdxLayoutGroup;
    litm_lc1Item1: TdxLayoutItem;
    ds_CLASSMAT: TpFIBDataSet;
    src_CLASSMAT: TDataSource;
    lst_1: TcxDBTreeList;
    cl_CODE: TcxDBTreeListColumn;
    cl_FULLNAME: TcxDBTreeListColumn;
    cl_1ED: TcxDBTreeListColumn;
    cl_NAME: TcxDBTreeListColumn;
    cl_GROOP: TcxDBTreeListColumn;
    bnt_Search: TcxButtonEdit;
    litm_lc1Item2: TdxLayoutItem;
    fld_CLASSMATCODE: TFIBIntegerField;
    ds_CLASSMATOWN: TFIBIntegerField;
    ds_CLASSMATGROOP: TFIBStringField;
    ds_CLASSMATNAME: TFIBStringField;
    ds_CLASSMATFULLNAME: TFIBStringField;
    ds_CLASSMATISGROUP: TFIBSmallIntField;
    ds_CLASSMATISNAME: TFIBSmallIntField;
    ds_CLASSMATED: TFIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bnt_SearchPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ds_CLASSMATFilterRecord(DataSet: TDataSet; var Accept: Boolean);
  private
    { Private declarations }
    procedure prepareDS;
    procedure CreateFilter(s: string);
  public
    { Public declarations }
  end;

var
  ClassMatLookUpForm: TClassMatLookUpForm;

implementation

uses cmDBUnit;

{$R *.dfm}


procedure TClassMatLookUpForm.bnt_SearchPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  case AButtonIndex of
    0: CreateFilter(bnt_Search.Text);
    1: begin
         lst_1.DataController.Filter.Root.Clear;
         bnt_Search.Clear;
       end;
  end;
end;

procedure TClassMatLookUpForm.CreateFilter(s: string);
var
 filter: string;
begin
  filter:= 'cm1.FULLNAME LIKE ('#39+'*'+s+'*'#39+')';
  with ds_CLASSMAT do begin
    Close;
    MainWhereClause:= Filter;
    Open;
  end;
  {with lst_1.DataController.Filter do begin
    BeginUpdate;
    try
      Root.Clear;
      Root.AddItem(cl_FULLNAME, foLike, '%'+s+'%', '%'+s+'%');
      Active:= True;
    finally
      EndUpdate;
    end;
  end;}
end;

procedure TClassMatLookUpForm.ds_CLASSMATFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  Accept := Pos(bnt_Search.Text, DataSet['FULLNAME'].AsString) > 0;
end;

procedure TClassMatLookUpForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TClassMatLookUpForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  prepareDS;
end;

procedure TClassMatLookUpForm.prepareDS;
begin
  ds_CLASSMAT.Open;
end;

initialization
 RegisterClass(TClassMatLookUpForm);
end.
