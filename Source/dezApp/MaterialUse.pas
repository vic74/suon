unit MaterialUse;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  FIBQuery,pFIBCacheQueries,pFIBProps,FIBDataSet, pFIBDataSet,DateUtils,
  frxClass,frxFIBComponents,dxmdaset, DB,
  Dialogs, StdCtrls, ExtCtrls, AppUtils,Variants;
 type
		{$REGION '��� �������'}
		///<summary>��� ������� ������ �� �������������� ����������</summary>
		{$ENDREGION}
  TUseType = (byMat,byPO,byAll);
{ TMatUse }

  {$REGION '�������������� ���������'}
  ///<summary>����� ��� ������ � ������� �� �������������� ���������� � �������</summary>
  {$ENDREGION}
  TMatUse = class(TObject)
  private
    {$REGION 'DateBegin'}
    ///<summary>���� ������ ��������� �������</summary>
    {$ENDREGION}
    fD1 :Variant;
    {$REGION 'DateEnd'}
    ///<summary>���� ��������� ��������� �������</summary>
    {$ENDREGION}
    fD2 :Variant;
    {$REGION '���������'}
    ///<summary>��� ��������� �����������</summary>
    {$ENDREGION}
    fPO :Variant;
    fQType :TUseType;
    fMaterialCod :Variant;
		{$REGION '������ ����� ���������'}
		///<summary>������ ����� ��������� ����: 1,2,4,66,67</summary>
		{$ENDREGION}
    fMaterialCodList :WideString;
  protected
    Report :TfrxReport;
    procedure SetReportDB;
    {$REGION '�������� ��'}
    ///<summary>������� ���������� ������������ ��������� �����������</summary>
    {$ENDREGION}
    function GetPOName :Variant;
    {$REGION '�������� ��'}
    ///<summary>������� ���������� ��� ��������� �� ������������� �� �����</summary>
    /// <param name="HOUSE"><para>��� ���� Variant</para></param>
    {$ENDREGION}
    function GetManager(house :variant) :Variant;

    function GetHouseAddr(house :variant) :Variant;
  public
    property D1: Variant read fD1 write fD1;
    property D2: Variant read fD2 write fD2;
    property PO: Variant read fPO write fPO;
    property MaterialCod :Variant read fMaterialCod write fMaterialCod;
    property MaterialCodList :WideString read fMaterialCodList write fMaterialCodList;
    constructor Create;
    destructor Destroy; override;
    {$REGION '������ ��� ��'}
    ///<summary>������ ������ �� �������������� ���������� � �������
    /// ��� ����������� �� ��.
    ///<para><b>�� ����������.</b></para> </summary>
    {$ENDREGION}
    procedure PrintNoDU;
    {$REGION '������ c ��'}
    ///<summary>������ ������ �� �������������� ���������� � �������
    /// � ������������ �� ��.
    ///<para><b>�� ����������.</b></para> </summary>
    /// <param name="show"><para><b>true-</b> ��������� ��������������� ��������</para>
    /// <para><b>false-</b> ����� ��������� �� �������</para></param>
    {$ENDREGION}
    procedure PrintDU(show: boolean);
    {$REGION '����� �� ����'}
    ///<summary>������ ������ �� �������������� ���������� � �������
    /// �� ������ ����.
    ///<para><b>�� ����������.</b></para> </summary>
    /// <param name="show"><para><b>true-</b> ��������� ��������������� ��������</para>
    /// <para><b>false-</b> ����� ��������� �� �������</para></param>
    /// <param name="HOUSE"><para>��� ����</para></param>
    /// <param name="ADDR"><para>����� ��� ����� ������ - "����� ���"</para></param>
    {$ENDREGION}
    procedure PrintReport(show: boolean; HOUSE, ADDR :Variant);
		{$REGION '�������� ���������'}
		///<summary>��������� ��������� ������ ���������� �� ������ �� ����</summary>
		{$ENDREGION}
    procedure GetUseMat(mT :TdxMemData; tp :TUseType);
    procedure PrintM29;
  published
		{$REGION '��� �������'}
		///<summary>��� ������� ������ �� �������������� ����������</summary>
		{$ENDREGION}
    property QType :TUseType read fQType write fQType default byMat;
  end;

implementation

uses cmDBUnit, dezInfo;

{ TMatUse }

constructor TMatUse.Create;
begin
  Report:=TfrxReport.Create(nil);
end;

destructor TMatUse.Destroy;
begin

  Report.Free;
  inherited;
end;

function TMatUse.GetHouseAddr(house: variant): Variant;
var
  obj : TdzHouseInfo;
begin
  Result:=null;
  obj:=TdzHouseInfo.Create(house);
  try
    Result:=obj.GetAddr;
  finally
    obj.Free;
  end;
end;

function TMatUse.GetManager(house :variant): Variant;
var
  obj :TdzManager;
  mCode, mName :Variant;
begin
  obj:=TdzManager.Create;
  try
    obj.GetHouseManager(mCode,mName,PO,house);
    Result:=mName;
  finally
    obj.Free;
  end;
end;

function TMatUse.GetPOName: Variant;
  var
    obj :TdzPO;
begin
  if dzPO.COD <> PO then
     dzPO.GetInfo(PO);
  Result:= dzPO.Name;
end;

procedure TMatUse.GetUseMat(mT: TdxMemData; tp: TUseType);
var
  YM1, YM2 :string;

 { procedure CreateField(AMemData: TdxMemData; AFieldName, ADisplayName: string;
    AFieldType: TFieldType; AFieldSize: Integer = 0);
  begin
    if (AMemData = nil) or (AFieldName = '') then
      Exit;
    with AMemData.FieldDefs.AddFieldDef do
    begin
      Name := AFieldName;
      if ADisplayName<>'' then
      DisplayName :=ADisplayName;
      DataType := AFieldType;
      if AFieldSize > 0 then
        Size := AFieldSize;
      CreateField(AMemData);
    end;
  end;}

  Procedure MakeField( aFieldName,aDisplayName:String;
                       aSize:word;aIndex:Integer = 0;
                       aFieldType:TFieldType = ftString);
  var
    AField : TField;
  begin
    if mT.FindField(aFieldName) = nil then
       if mT.SupportedFieldType(aFieldType) then
       with mT do begin
          if aIndex = 0 then
              aIndex := mT.FieldCount;

          AField:= DefaultFieldClasses[aFieldType].Create(nil);
          AField.Name := Name + aFieldName;
          AField.FieldName := aFieldName;
          AField.DisplayLabel :=aDisplayName;

          if AField is TStringField then
              TStringField(AField).Size := aSize;
          if AField is TBlobField then
              TBlobField(AField).Size := aSize;
          if AField is TFloatField then
            begin
              TFloatField(AField).Currency := false;
              TFloatField(AField).Precision := 2
            end;
            AField.DataSet := mT;
            AField.Calculated := False;
            AField.Lookup := False;
       end;
  end;

  function GetMonthCaption(YM: string): string;
  const M: array[1..12] of string[5] =
           ('���.','���.','����','���.','���','����','����','���.','����.','���.','����.','���.');
   var i: integer;
  begin
   i:=StrToInt(Copy(YM,3,2));
   Result:=string(M[i])+' '+Copy(YM,1,2);
  end;

  function GetYM(M,Y: integer): string;
  begin
   Result:=IntToStr(M);
   if Length(Result)=1 then Result:='0'+Result;
   Result:=Copy(IntToStr(Y),3,2)+Result;
  end;

  function NextYM(YM: string): string;
  var
    M,Y: integer;
  begin
   M:=StrToInt(Copy(YM,3,2));
   Y:=2000+StrToInt(Copy(YM,1,2));
   Inc(M);
   if M=13 then
    begin
     Inc(Y); M:=1;
    end;
   Result:=GetYM(M,Y);
  end;

  procedure CreateMemTable;
  begin
    MakeField('CODE','���',0,0,ftInteger);
    MakeField('NAME','��������',256,0,ftString);
    MakeField('KONTRAGENT','inv',0,0,ftInteger);
    MakeField('KNAME','�����������',256,0,ftString);
    MakeField('ED','��.���.',16,0,ftString);
    repeat
      MakeField('P'+YM1,GetMonthCaption(YM1),0,0,ftFloat);
      //CreateField(mT,'P'+YM1,GetMonthCaption(YM1),ftFloat);
      //CreateField(mT,'S'+YM1,GetMonthCaption(YM1),ftFloat);
      YM1:=NextYM(YM1)
    until (YM1>YM2);
    MakeField('QUANTITY','����� ���-��',0,0,ftFloat);
    MakeField('SUMMA','����� �����',0,0,ftFloat);

    {CreateField(mT,'CODE','',ftInteger);
    CreateField(mT,'NAME','��������',ftString,256);
    if tp=byAll then begin
      CreateField(mT,'PO','',ftInteger);
      CreateField(mT,'PONAME','�����������',ftString,256);
    end;
    CreateField(mT,'ED','��.���.',ftString,16);
    repeat
      CreateField(mT,'P'+YM1,GetMonthCaption(YM1),ftFloat);
      //CreateField(mT,'S'+YM1,GetMonthCaption(YM1),ftFloat);
      YM1:=NextYM(YM1)
    until (YM1>YM2);
    CreateField(mT,'QUANTITY','����� ���-��',ftFloat);
    CreateField(mT,'SUMMA','����� �����',ftFloat);}
    mT.Open;
  end;
  //��������� ��������� �������
  procedure AddRecord(DS :TpFIBDataSet);
  var
    FName :string;
  begin
    mT.Close; mT.Open;
    while not DS.Eof do begin
      if (mT.FieldValues['CODE']<>DS.FieldValues['CLASSMAT']) or
         (mT.FieldValues['KONTRAGENT']<>DS.FieldValues['KONTRAGENT']) then
      begin
        mT.Append;
        mT.FieldValues['CODE']:=DS.FieldValues['CLASSMAT'];
        mT.FieldValues['NAME']:=DS.FieldValues['NAME'];
        mT.FieldValues['KONTRAGENT']:=DS.FieldValues['KONTRAGENT'];
        mT.FieldValues['KNAME']:=DS.FieldValues['KNAME'];
        mT.FieldValues['ED']:=DS.FieldValues['ED'];
        mT.FieldValues['QUANTITY']:=DS.FieldValues['QUANTITY'];
        mT.FieldValues['SUMMA']:=DS.FieldValues['SUMMA'];
        FName:='P'+VarToStr(DS.FieldValues['YM']);
        mT.FieldValues[FName]:=DS.FieldValues['PRICE'];
        mT.Post;
      end else begin
        mT.Edit;
        FName:='P'+VarToStr(DS.FieldValues['YM']);
        mT.FieldValues[FName]:=DS.FieldValues['PRICE'];
        mT.Post;
      end;
      DS.Next;
    end;
  end;

  //�������� ������ �� ������ ���������
  procedure GetMatByCode;
  var
    Q :TpFIBDataSet;
    S : string;
  begin
      Q := TpFIBDataSet.Create(nil);
      Q.Database := cmDB.DB;
      Q.Transaction := cmDB.DB.DefaultTransaction;
    S:=
      'select WS.KONTRAGENT,K.NAME KNAME, WS.CLASSMAT, c.FULLNAME name, C.ED,sum(WS.QUANTITY) QUANTITY,' +
      #13#10 +
      '       sum(WS.QUANTITY * WS.PRICE) SUMMA, AVG(WS.PRICE) PRICE,' + #13 +
      #10 + '       (substring(WS.data FROM 3 FOR 2) || substring(WS.data ' +
      'FROM 6 FOR 2)) YM' + #13#10 +
      'from WORKSPECMATERIAL WS' + #13#10 +
      '    left outer join CLASSMAT C on C.CODE = WS.CLASSMAT' +
      '    left outer join WORKSPECLIST wl on wl.code=ws.workspeclist' + #13#10 +
      '    left outer join worklist w on w.code=wl.worklist' + #13#10 +
      #13#10 +
      'LEFT OUTER JOIN KONTRAGENT K ON K.CODE=WS.KONTRAGENT' + #13#10 +
      'WHERE  W.DATA between :D1 and :D2 and WS.CLASSMAT in ('+MaterialCodList+')' + #13 +
      #10 + 'GROUP BY WS.KONTRAGENT,K.NAME,WS.CLASSMAT , C.FULLNAME, C.ED,9'+ #13#10 +
      ' ORDER BY WS.CLASSMAT';
    Q.SelectSQL.Text:=S;
    Q.ParamByName('D1').AsVariant:=D1;
    Q.ParamByName('D2').AsVariant:=D2;
    //Q.ParamByName('cod').AsVariant:=MaterialCod;
    try
      Q.Open;
      AddRecord(Q);
    finally
      Q.Free;
    end;
  end;

begin
  YM1:=FormatDateTime('yy',D1)+FormatDateTime('mm',D1);
  YM2:=FormatDateTime('yy',D2)+FormatDateTime('mm',D2);
  CreateMemTable;
  case tp of
    byMat : GetMatByCode;
  end;
end;

procedure TMatUse.PrintNoDU;
var
  fdb: TfrxFIBDatabase;
  Q1: TfrxFIBQuery;
  POName :variant;

  procedure PrepareQuery;
  begin
    Q1 :=Report.FindObject('Q1') as TfrxFIBQuery;
    with Q1 do begin
      Close;
      SQL.Text:=
      '      select WS.CLASSMAT, C.FULLNAME name, C.ED,' +#13#10+
      '             sum(WS.QUANTITY) QUANTITY,' +#13#10+
      '             sum(WS.QUANTITY * WS.PRICE) SUMMA ' +#13#10+
      '      from WORKSPECMATERIAL WS' +#13#10+
      '          left outer join CLASSMAT C on C.CODE = WS.CLASSMAT' +#13#10+
      '          left outer join WORKSPECLIST wl on wl.code=ws.workspeclist' +#13#10+
      '          left outer join worklist w on w.code=wl.worklist' +#13#10+
      '      WHERE' +#13#10+
      '          WS.DATA between :D1 and :D2 and' +#13#10+
      '          WS.KONTRAGENT = :KONTR' +#13#10+
      '      GROUP BY ' +#13#10+
      '          WS.CLASSMAT, C.FULLNAME, C.ED';
      ParamByName('D1').Value:=D1;
      ParamByName('D2').Value:=D2;
      ParamByName('KONTR').Value:=PO;
      //Open;
    end;
  end;
begin
  Report.LoadFromFile(AppPath+'rep\m_noDU.fr3');
  Report.Variables['varD1'] := D1;
  Report.Variables['varD2'] := D2;
  POName:=GetPOName;
  Report.Variables['varKontr'] :=#39+ POName +#39;
  Report.Variables['varAddr'] :=#39+#39;
  Report.Variables['varManager'] :=#39+#39;
  SetReportDB;
  PrepareQuery;
  Report.ShowReport();
end;

procedure TMatUse.SetReportDB;
var
  fdb: TfrxFIBDatabase;
begin
  fdb := Report.FindObject('fdb1') as TfrxFIBDatabase;
  with fdb do
  begin
    if Connected then Exit;
    DatabaseName := cmDB.DB.DBName;
    Params.Values['user_name'] := cmDB.DB.DBParams.Values['user_name'];
    Params.Values['password'] := cmDB.DB.DBParams.Values['password'];
    Params.Values['sql_role_name'] := cmDB.DB.DBParams.Values['sql_role_name'];
    SQLDialect := 3;
    Connected := true;
   end;
end;

procedure TMatUse.PrintDU(show: boolean);
var
  Q1: TfrxFIBQuery;
  POName :variant;

  procedure PrepareQuery;
  begin
    Q1 :=Report.FindObject('Q1') as TfrxFIBQuery;
    with Q1 do begin
      Close;
      SQL.Text:=
      '      select DU.code DU, Du.name DUName,' +#13#10+
      '        WS.CLASSMAT, C.FULLNAME name, C.ED,' +#13#10+
      '             sum(WS.QUANTITY) QUANTITY, sum(WS.PRICE) PRICE,' +#13#10+
      '             sum(WS.QUANTITY * WS.PRICE) SUMMA ' +#13#10+
      '      from WORKSPECMATERIAL WS' +#13#10+
      '      left outer join CLASSMAT C on C.CODE = WS.CLASSMAT' +#13#10+
      '      left outer join house h on h.code=ws.house' +#13#10+
      '      left outer join street s on s.code=h.street' +#13#10+
      '      left outer join DU on DU.code=h.du' +#13#10+
      '      WHERE' +#13#10+
      '      WS.DATA between :D1 and :D2 and WS.KONTRAGENT = :KONTR' +#13#10+
      '      GROUP BY ' +#13#10+
      '      DU.code, Du.name, WS.CLASSMAT, C.FULLNAME, C.ED' +#13#10+
      '      ORDER BY Du.name';
      ParamByName('D1').Value:=D1;
      ParamByName('D2').Value:=D2;
      ParamByName('KONTR').Value:=PO;
    end;
  end;
begin
    Report.LoadFromFile(AppPath+'rep\material_usageAll.fr3');
    Report.Variables['varD1'] := D1;
    Report.Variables['varD2'] := D2;
    POName:=GetPOName;
    Report.Variables['varKontr'] :=#39+POName+#39;
    Report.Variables['varAddr'] :=#39+#39;
    Report.Variables['varManager'] :=#39+#39;

    SetReportDB;
    PrepareQuery;
    if show then Report.ShowReport() else
    begin
      Report.PrepareReport;
      Report.PrintOptions.ShowDialog := False;
      Report.Print;
    end;
end;

procedure TMatUse.PrintM29;
var
  Q1: TfrxFIBQuery;
  POName,Master :variant;

  procedure PrepareQuery;
  begin
    Q1 :=Report.FindObject('Q1') as TfrxFIBQuery;
    with Q1 do begin
      Close;
      SQL.Text:=
      '      select DU.code DU, Du.name DUName,' +#13#10+
      '             ws.house,s.name SNAME,h.nomer, WS.CLASSMAT, C.FULLNAME name, C.ED,' +#13#10+
      '             sum(WS.QUANTITY) QUANTITY, sum(WS.PRICE) PRICE,' +#13#10+
      '             sum(WS.QUANTITY * WS.PRICE) SUMMA ' +#13#10+
      '      from WORKSPECMATERIAL WS' +#13#10+
      '      left outer join CLASSMAT C on C.CODE = WS.CLASSMAT' +#13#10+
      '      left outer join house h on h.code=ws.house' +#13#10+
      '      left outer join street s on s.code=h.street' +#13#10+
      '      left outer join DU on DU.code=h.du' +#13#10+
      '      WHERE' +#13#10+
      '      WS.DATA between :D1 and :D2 and' +#13#10+
      '      WS.KONTRAGENT = :KONTR' +#13#10+
      '      GROUP BY ' +#13#10+
      '      DU.code, Du.name,ws.house,s.name,h.nomer,' +#13#10+
      '      WS.CLASSMAT, C.FULLNAME, C.ED' +#13#10+
      '      ORDER BY Du.name,s.name,h.nomer, C.FULLNAME';
      ParamByName('D1').Value:=D1;
      ParamByName('D2').Value:=D2;
      ParamByName('KONTR').Value:=PO;
      //Open;
    end;
  end;
begin
    Report.LoadFromFile(AppPath+'rep\m29.fr3');
    Report.Variables['varD1'] := D1;
    Report.Variables['varD2'] := D2;
    POName:=GetPOName;
    Report.Variables['varKontr'] :=#39+POName+#39;
    //ADDR:=GetHouseAddr(House);
    //Report.Variables['varAddr'] :=#39+ ADDR +#39;
    //Master:=GetManager(House);
    //Report.Variables['varManager'] :=#39+ Master +#39;
    SetReportDB;
    PrepareQuery;
    Report.ShowReport();
    {if show then Report.ShowReport() else
    begin
      Report.PrepareReport;
      Report.PrintOptions.ShowDialog := False;
      Report.Print;
    end;}
end;

procedure TMatUse.PrintReport(show: boolean; HOUSE, ADDR :Variant);
var
  Q1: TfrxFIBQuery;
  POName,Master :variant;

  procedure PrepareQuery;
  begin
    Q1 :=Report.FindObject('Q1') as TfrxFIBQuery;
    with Q1 do begin
      Close;
      SQL.Text:=
      '      select DU.code DU, Du.name DUName,' +#13#10+
      '             ws.house,s.name SNAME,h.nomer, WS.CLASSMAT,C.FULLNAME name,C.ED,' +#13#10+
      '             sum(WS.QUANTITY) QUANTITY, WS.PRICE,' +#13#10+
      '             sum(WS.QUANTITY * WS.PRICE) SUMMA ' +#13#10+
      '      from WORKSPECMATERIAL WS' +#13#10+
      '     left outer join CLASSMAT C on C.CODE = WS.CLASSMAT' +#13#10+
      '     left outer join house h on h.code=ws.house' +#13#10+
      '     left outer join street s on s.code=h.street' +#13#10+
      '     left outer join DU on DU.code=h.du' +#13#10+
      '     left outer join serviswork sw on sw.code=ws.serviswork' +#13#10+
      '      WHERE' +#13#10+
      '      WS.DATA between :D1 and :D2 and sw.cash=0 and ' +#13#10+
      '      WS.KONTRAGENT = :KONTR and WS.HOUSE = :HOUSE' +#13#10+
      '      GROUP BY ' +#13#10+
      '      DU.code, Du.name,ws.house,s.name,h.nomer,' +#13#10+
      '      WS.CLASSMAT, C.FULLNAME, C.ED, WS.PRICE' +#13#10+
      '      ORDER BY Du.name,s.name,h.nomer, C.FULLNAME';
      ParamByName('D1').Value:=D1;
      ParamByName('D2').Value:=D2;
      ParamByName('KONTR').Value:=PO;
      ParamByName('HOUSE').Value:=HOUSE;
      //Open;
    end;
  end;
begin
    Report.LoadFromFile(AppPath+'rep\material_usage.fr3');
    Report.Variables['varD1'] := D1;
    Report.Variables['varD2'] := D2;
    POName:=GetPOName;
    Report.Variables['varKontr'] :=#39+POName+#39;
    ADDR:=GetHouseAddr(House);
    Report.Variables['varAddr'] :=#39+ ADDR +#39;
    Master:=GetManager(House);
    Report.Variables['varManager'] :=#39+ Master +#39;
    SetReportDB;
    PrepareQuery;
    if show then Report.ShowReport() else
    begin
      Report.PrepareReport;
      Report.PrintOptions.ShowDialog := False;
      Report.Print;
    end;
end;

end.



