unit BDRDocListFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  DateUtils,FIBQuery,pFIBCacheQueries,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, Menus, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, dxmdaset, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxClasses, cxGridLevel, cxGrid, cxCheckBox, dxLayoutControlAdapters,
  dxLayoutContainer, dxSkinDevExpressStyle;

type
  TBDRDocListForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grp_top: TdxLayoutGroup;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    mY: TcxMaskEdit;
    itm_mY: TdxLayoutItem;
    btn_exec: TcxButton;
    itm_exec: TdxLayoutItem;
    vb1: TcxGridDBBandedTableView;
    m1: TdxMemData;
    src_m1: TDataSource;
    clvb1M: TcxGridDBBandedColumn;
    clvb1MName: TcxGridDBBandedColumn;
    clvb1BDR1: TcxGridDBBandedColumn;
    clvb1BDR2: TcxGridDBBandedColumn;
    clvb1BDR3: TcxGridDBBandedColumn;
    clvb1FBDR1: TcxGridDBBandedColumn;
    clvb1FBDR2: TcxGridDBBandedColumn;
    clvb1FBDR3: TcxGridDBBandedColumn;
    clvb1RKC1: TcxGridDBBandedColumn;
    clvb1RKC2: TcxGridDBBandedColumn;
    clvb1RKC3: TcxGridDBBandedColumn;
    clvb1RKC4: TcxGridDBBandedColumn;
    clvb1RKC5: TcxGridDBBandedColumn;
    clvb1RKC6: TcxGridDBBandedColumn;
    clvb1RKC7: TcxGridDBBandedColumn;
    clvb1RKC8: TcxGridDBBandedColumn;
    clvb1F0: TcxGridDBBandedColumn;
    clvb1F1: TcxGridDBBandedColumn;
    clvb1F2: TcxGridDBBandedColumn;
    clvb1F3: TcxGridDBBandedColumn;
    clvb1F4: TcxGridDBBandedColumn;
    clvb1F5: TcxGridDBBandedColumn;
    clvb1F6: TcxGridDBBandedColumn;
    clvb1F7: TcxGridDBBandedColumn;
    clvb1F8: TcxGridDBBandedColumn;
    clvb1F9: TcxGridDBBandedColumn;
    clvb1F10: TcxGridDBBandedColumn;
    clvb1F11: TcxGridDBBandedColumn;
    clvb1F12: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
  private
    { Private declarations }
    procedure GetData;
    procedure CreateMem;
  public
    { Public declarations }
  end;

var
  BDRDocListForm: TBDRDocListForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, LoadingSplash;

{$R *.dfm}

procedure TBDRDocListForm.btn_execClick(Sender: TObject);
begin
  if mY.Text='' then Exit;
  GetData;
end;

procedure TBDRDocListForm.CreateMem;
begin
  CreateField(m1,'M',ftInteger);
  CreateField(m1,'MName',ftString,32);
  CreateField(m1,'BDR1',ftinteger);
  CreateField(m1,'BDR2',ftinteger);
  CreateField(m1,'BDR3',ftinteger);
  //
  CreateField(m1,'FBDR1',ftinteger);
  CreateField(m1,'FBDR2',ftinteger);
  CreateField(m1,'FBDR3',ftinteger);
  //
  CreateField(m1,'RKC1',ftinteger);
  CreateField(m1,'RKC2',ftinteger);
  CreateField(m1,'RKC3',ftinteger);
  CreateField(m1,'RKC4',ftinteger);
  CreateField(m1,'RKC5',ftinteger);
  CreateField(m1,'RKC6',ftinteger);
  CreateField(m1,'RKC7',ftinteger);
  CreateField(m1,'RKC8',ftinteger);
  //
  CreateField(m1,'F0',ftinteger);
  CreateField(m1,'F1',ftinteger);
  CreateField(m1,'F2',ftinteger);
  CreateField(m1,'F3',ftinteger);
  CreateField(m1,'F4',ftinteger);
  CreateField(m1,'F5',ftinteger);
  CreateField(m1,'F6',ftinteger);
  CreateField(m1,'F7',ftinteger);
  CreateField(m1,'F8',ftinteger);
  CreateField(m1,'F9',ftinteger);
  CreateField(m1,'F10',ftinteger);
  CreateField(m1,'F11',ftinteger);
  CreateField(m1,'F12',ftinteger);
  m1.Open;
end;

procedure TBDRDocListForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TBDRDocListForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  CreateMem;
end;


procedure TBDRDocListForm.GetData;
var
  i,n :Integer;
  Q: TFIBQuery;
  FName :string;
  function GetPBDR(plan :Variant) :Variant;
  begin
    case plan of
      1 : begin
            Q.Close;
            Q.MainWhereClause:='p1.y=:y and p1.m=:m and p1.HOUSESRV not in (6,8)';
            Q.ParamByName('y').AsVariant:=mY.EditValue;
            Q.ParamByName('m').AsVariant:=i;
            Q.ExecQuery;
            Result:=Q.FN('bdr').AsVariant;
          end;
      2 : begin
            Q.Close;
            Q.MainWhereClause:='p1.y=:y and p1.m=:m and p1.HOUSESRV =6';
            Q.ParamByName('y').AsVariant:=mY.EditValue;
            Q.ParamByName('m').AsVariant:=i;
            Q.ExecQuery;
            Result:=Q.FN('bdr').AsVariant;
          end;
      3 : begin
            Q.Close;
            Q.MainWhereClause:='p1.y=:y and p1.m=:m and p1.HOUSESRV=8';
            Q.ParamByName('y').AsVariant:=mY.EditValue;
            Q.ParamByName('m').AsVariant:=i;
            Q.ExecQuery;
            Result:=Q.FN('bdr').AsVariant;
          end;
    end;
  end;

  function GetFBDR(fact :Variant) :Variant;
  begin
    case fact of
      1 : begin
            Q.Close;
            Q.MainWhereClause:='f1.y=:y and f1.m=:m and f1.HOUSESRV not in (6,8)';
            Q.ParamByName('y').AsVariant:=mY.EditValue;
            Q.ParamByName('m').AsVariant:=i;
            Q.ExecQuery;
            Result:=Q.FN('f').AsVariant;
          end;
      2 : begin
            Q.Close;
            Q.MainWhereClause:='f1.y=:y and f1.m=:m and f1.HOUSESRV =6';
            Q.ParamByName('y').AsVariant:=mY.EditValue;
            Q.ParamByName('m').AsVariant:=i;
            Q.ExecQuery;
            Result:=Q.FN('f').AsVariant;
          end;
      3 : begin
            Q.Close;
            Q.MainWhereClause:='f1.y=:y and f1.m=:m and f1.HOUSESRV=8';
            Q.ParamByName('y').AsVariant:=mY.EditValue;
            Q.ParamByName('m').AsVariant:=i;
            Q.ExecQuery;
            Result:=Q.FN('f').AsVariant;
          end;
    end;
  end;
  function GetRKC(srv :variant) :Variant;
  begin
    Q.ParamByName('y').AsVariant:=mY.EditValue;
    Q.ParamByName('m').AsVariant:=i;
    Q.ParamByName('srv').AsVariant:=srv;
    Q.ExecQuery;
    Result:=Q.FN('f').AsVariant;
  end;

begin
  SplashVisibility(True,'Дождитесь окончания операции...');
  vb1.BeginUpdate;
  try
    m1.Close; m1.Open;
    for i:=1 to 12 do begin
      with m1 do begin
        Append;
        FieldByName('M').AsVariant:=i;
        FieldByName('MName').AsString:=LongMonthNames[i];
        SetCapt(LongMonthNames[i]+' [План БДР]');
        // PBDR
        Q:=GetQueryForUse(cmDB.RT,'SELECT first 1 iif(p1.CODE is null,0,1)'+
                                                           ' bdr FROM PBDR p1');
        FieldByName('BDR1').AsVariant:=GetPBDR(1);
        FieldByName('BDR2').AsVariant:=GetPBDR(2);
        FieldByName('BDR3').AsVariant:=GetPBDR(3);
        FreeQueryForUse(Q);
        SetCapt(LongMonthNames[i]+' [Факт БДР]');
        // fbdr
        Q:=GetQueryForUse(cmDB.RT,'select First 1 iif(f1.CODE is null,0,1) f ' +
                                                                'from fbdr f1');
        FieldByName('FBDR1').AsVariant:=GetFBDR(1);
        FieldByName('FBDR2').AsVariant:=GetFBDR(2);
        FieldByName('FBDR3').AsVariant:=GetFBDR(3);
        FreeQueryForUse(Q);
        SetCapt(LongMonthNames[i]+' [Услуги РКЦ]');
        // FactDoc
        Q:=GetQueryForUse(cmDB.RT,'select First 1 iif(f1.CODE is null,0,1) f ' +
                                  'from FactDoc f1');
        Q.MainWhereClause:='f1.y=:y and f1.m=:m and f1.HOUSESRV =:srv';
        for n:=1 to 5 do begin
          FName:='RKC'+IntToStr(n);
          FieldByName(FName).AsVariant:=GetRKC(n);
        end;
          FieldByName('RKC8').AsVariant:=GetRKC(9);
        FreeQueryForUse(Q);
        SetCapt(LongMonthNames[i]+' [Прочие услуги]');
        // Fact1Doc
        Q:=GetQueryForUse(cmDB.RT,'select First 1 iif(f1.CODE is null,0,1) f ' +
                                  'from Fact1Doc f1');
        Q.MainWhereClause:='f1.y=:y and f1.m=:m and f1.HOUSESRV =:srv';
        for n:=0 to 12 do begin
          FName:='F'+IntToStr(n);
          FieldByName(FName).AsVariant:=GetRKC(n);
        end;
        FreeQueryForUse(Q);
        Post;
      end;
    end;
  finally
    vb1.EndUpdate;
    SplashVisibility(false);
  end;
end;

initialization
 RegisterClass(TBDRDocListForm);
end.





