unit HouseCardUnit;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Data.DB,
  FIBQuery,pFIBCacheQueries,pFIBProps,FIBDataSet, pFIBDataSet,DateUtils, System.Variants,
  EXLReportExcelTLB, EXLReportBand, EXLReport, dxmdaset,
  SingletonTemplate;

type
{ THTO }

  ///	<summary>
  ///	  карточка по дому - информация по тех. обслуживанию
  ///	</summary>
  THTO = class(TSingleton)
  private
   DS: TpFIBDataSet;
   SRC: TDataSource;
   //
   mDS: TpFIBDataSet;
   mSRC: TDataSource;
   //
   jDS: TpFIBDataSet;
   jSRC: TDataSource;
  protected
    constructor Create; override;
    procedure CreateComponents;
  public
    ///	<summary>
    ///	  процедура получения информации по нарядам
    ///	</summary>
    ///	<param name="DS">
    ///	  ссылка на объект  TpFIBDataSet
    ///	</param>
    ///	<param name="hCode">
    ///	  код дома {Variant}
    ///	</param>
    ///	<param name="d1">
    ///	  дата начала периода
    ///	</param>
    ///	<param name="d2">
    ///	  дата окончания периода
    ///	</param>
    function GetTOInfo(const hCode, d1, d2: Variant) :TDataSource;
    function GetMaterial(const WorkCode: variant) :TDataSource;
    function GetJurnalInfo(const hCode, d1, d2: Variant) :TDataSource;
    destructor Destroy; override;
  published

  end;

{ THTR }

  THTR = class(TSingleton)
  private
   DS: TpFIBDataSet;
   SRC: TDataSource;
   DSL: TpFIBDataSet;
   SRCL: TDataSource;
  protected
    constructor Create; override;
    procedure CreateComponents;
    procedure FreeComponents;
  public
    function GetTRInfo(const hCode, d1, d2: Variant) :TDataSource;
    function GetTRLInfo(const hCode, d1, d2: Variant) :TDataSource;
    destructor Destroy; override;
  published

  end;

{ TBDR }

  TBDR = class(TSingleton)
  private
   DSPBDR1: TpFIBDataSet;
   DSPBDR2: TpFIBDataSet;
   DSPBDR3: TpFIBDataSet;
   DSFBDR1: TpFIBDataSet;
   DSFBDR2: TpFIBDataSet;
   DSFBDR3: TpFIBDataSet;
   DSFBDR4: TpFIBDataSet;

   fSPBDR1: TDataSource;
   fSFBDR1: TDataSource;
   fSPBDR2: TDataSource;
   fSFBDR2: TDataSource;
   fSPBDR3: TDataSource;
   fSFBDR3: TDataSource;
   fSFBDR4: TDataSource;

   m_bdr4: TdxMemData;
   f1C: Boolean;

   fYStart: Variant;
   fYEnd: Variant;
   fMStart: Variant;
   fMEnd: Variant;
   fHouseSRV: Variant;
   fHouse: Variant;
   fD1, fD2: Variant;
  protected
    constructor Create; override;
    procedure CreateComponents;
    procedure FreeComponents;
    procedure MakeData;
    function GetPBDR1: Boolean;
    function GetFBDR1: Boolean;
    function GetPBDR2: Boolean;
    function GetFBDR2: Boolean;
    function GetPBDR3: Boolean;
    function GetFBDR3: Boolean;
    function GetFBDR4: Boolean;
    procedure AddTableData;
  public
    function GetBDR(srv, house, Y1, Y2, M1, M2: variant): boolean;
    destructor Destroy; override;
  published
    property SPBDR1: TDataSource read fSPBDR1;
    property SPBDR2: TDataSource read fSPBDR2;
    property SPBDR3: TDataSource read fSPBDR3;
    property SFBDR1: TDataSource read fSFBDR1;
    property SFBDR2: TDataSource read fSFBDR2;
    property SFBDR3: TDataSource read fSFBDR3;
    property SFBDR4: TDataSource read fSFBDR4;
    property a1C: Boolean read f1C write f1C;
  end;

{ THExpoptExcel }

  ///	<summary>
  ///	  класс экспорта в Excel всех вкладок карточки дома
  ///	</summary>
  THExpoptExcel = class(TSingleton)
  private
    fxl_main: TEXLReport;        //общие данные
    fxl_ngp: TEXLReport;         //помещения нжп
    fxl_kr: TEXLReport;          //список кап ремонтов
    //fxl4: TEXLReport;
    //fxl5: TEXLReport;
  protected
    constructor Create; override;
    procedure CreateComponents;
    procedure FreeComponents;
    procedure MakeExcel;
  public

    destructor Destroy; override;
  published

  end;

{ THACT }

  THACT = class(TSingleton)
  private
    fDSACT: TpFIBDataSet;
    fSACT: TDataSource;
    fListAct: string;
    fHouse: Variant;
  protected
    constructor Create; override;
    procedure CreateComponents;
    procedure FreeComponents;
    procedure GetMaxAct;
  public
    function GetActInfo(house: variant):Boolean;
    destructor Destroy; override;
  published
    property SACT: TDataSource read fSACT;
  end;

{ TOPU }

  TOPU = class(TSingleton)
  private

  protected
    constructor Create; override;
  public

    destructor Destroy; override;
  published

  end;


  function HTO: THTO;
  function HTR: THTR;
  function BDR: TBDR;
  function HExpoptExcel: THExpoptExcel;
  function HACT: THACT;
  function OPU: TOPU;

implementation

uses cmDBUnit, AppUtils;

function HTO: THTO;
begin
  Result:= THTO.GetInstance;
end;

function HTR: THTR;
begin
  Result:= THTR.GetInstance;
end;

function BDR: TBDR;
begin
  Result:= TBDR.GetInstance;
end;

function HExpoptExcel: THExpoptExcel;
begin
  Result:= THExpoptExcel.GetInstance;
end;

function HACT: THACT;
begin
  Result:= THACT.GetInstance;
end;

function OPU: TOPU;
begin
  Result:= TOPU.GetInstance;
end;

{ THTO }

constructor THTO.Create;
begin
  inherited;
  CreateComponents;
end;

procedure THTO.CreateComponents;
  procedure SetParams(DS: TpFIBDataSet);
  begin
    with DS do begin
      Transaction := cmDb.RT;
      Database := cmDb.DB;
      UpdateTransaction := cmDb.WT;
    end;
  end;
begin
  DS := TpFIBDataSet.Create(nil);
  with DS do begin
    Transaction := cmDb.RT;
    Database := cmDb.DB;
    UpdateTransaction := cmDb.WT;
    SelectSQL.Text:=
      'select WS.CODE, WS.DATA, WS.KONTRAGENT, K.NAME KNAME,' +#13#10+
      '       WS.SERVISWORK, SW.NAME SWORKNAME, WS.HOUSE, WS.ADDR, WS.PRICE,' +#13#10+
      '       WS.NOTE, WS.WORKLIST, WS.QUANTITY, WS.JWORK, WS.FDATA' +#13#10+
      'from WORKSPECLIST WS' +#13#10+
      'left outer join SERVISWORK SW on SW.CODE = WS.SERVISWORK' +#13#10+
      'left outer join KONTRAGENT K on K.CODE = WS.KONTRAGENT' +#13#10+
      'where WS.DATA between :D1 and :D2 and' +#13#10+
      '      WS.HOUSE = :HOUSE';
  end;

  src := TDataSource.Create(nil);
  src.DataSet:= DS;
  //
  MDS := TpFIBDataSet.Create(nil);
  with MDS do begin
    Transaction := cmDb.RT;
    Database := cmDb.DB;
    UpdateTransaction := cmDb.WT;
    SelectSQL.Text:=
      'select WS.CODE, WS.WORKSPECLIST, WS.DATA, WS.KONTRAGENT,' +#13#10+
      '       WS.SERVISWORK, WS.HOUSE, WS.ADDR, WS.CLASSMAT,' +#13#10+
      '       trim(SM.FULLNAME) NAME, WS.QUANTITY, WS.PRICE, WS.NOTE' +#13#10+
      'from WORKSPECMATERIAL WS' +#13#10+
      'left outer join CLASSMAT SM on SM.CODE = WS.CLASSMAT' +#13#10+
      'where WS.WORKSPECLIST = :CODE ';
  end;
  mSRC := TDataSource.Create(nil);
  mSRC.DataSet:= MDS;
  //
  jDS := TpFIBDataSet.Create(nil);
  SetParams(jDS);
  with jDS do begin
    DataSet_ID:=19;
    Prepare;
  end;
  jSRC := TDataSource.Create(nil);
  jSRC.DataSet:= jDS;
end;

destructor THTO.Destroy;
begin
  if Assigned(DS) then FreeAndNil(DS);
  if Assigned(src) then FreeAndNil(src);
  if Assigned(MDS) then FreeAndNil(MDS);
  if Assigned(msrc) then FreeAndNil(msrc);
  if Assigned(jDS) then FreeAndNil(jDS);
  if Assigned(jsrc) then FreeAndNil(jsrc);
  inherited;
end;

function THTO.GetJurnalInfo(const hCode, d1, d2: Variant): TDataSource;
begin
  Result:= nil;
  with jDS do begin
    DisableControls;
    try
      Close;
      MainWhereClause:='jw.HOUSE =:house and JW.REGDATE between :d1 and :d2';
      ParamByName('house').AsVariant:= hCode;
      ParamByName('d1').AsVariant:= d1;
      ParamByName('d2').AsVariant:= d2;
      Open;
    finally
       EnableControls;
    end;
  end;
  Result:= jSRC;
end;

function THTO.GetMaterial(const WorkCode: variant): TDataSource;
begin
  //
  with mDS do begin
    DisableControls;
    try
      Close;
        ParamByName('CODE').AsVariant:= WorkCode;
      Open;
    finally
      EnableControls;
    end;
  end;
  Result:= mSRC;
end;

function THTO.GetTOInfo(const hCode, d1, d2: Variant) :TDataSource ;
begin
  //
  with DS do begin
    DisableControls;
    try
      Close;
        ParamByName('D1').AsVariant:= d1;
        ParamByName('D2').AsVariant:= d2;
        ParamByName('HOUSE').AsVariant:= hCode;
        OrderClause:='WS.KONTRAGENT, WS.DATA, SW.NAME';
      Open;
    finally
      EnableControls;
    end;
  end;
  //
  Result:= src;
end;

{ THTR }

constructor THTR.Create;
begin
  inherited;
  CreateComponents;
end;

procedure THTR.CreateComponents;
  procedure SetParams(DS: TpFIBDataSet);
  begin
    with DS do begin
      Transaction := cmDb.RT;
      Database := cmDb.DB;
      UpdateTransaction := cmDb.WT;
    end;
  end;
begin
  DS := TpFIBDataSet.Create(nil);
    SetParams(DS);
    DS.DataSet_ID:= 15;
    DS.Prepare;
    src := TDataSource.Create(nil);
    src.DataSet:= DS;
  // lift
  DSL := TpFIBDataSet.Create(nil);
    SetParams(DSL);
    DSL.DataSet_ID:= 14;
    DSL.Prepare;
    srcL := TDataSource.Create(nil);
    srcL.DataSet:= DSL;
end;

destructor THTR.Destroy;
begin
  FreeComponents;
  inherited;
end;

procedure THTR.FreeComponents;
begin
  if Assigned(DS) then FreeAndNil(DS);
  if Assigned(src) then FreeAndNil(src);
  if Assigned(DSL) then FreeAndNil(DSL);
  if Assigned(srcL) then FreeAndNil(srcL);
end;

function THTR.GetTRInfo(const hCode, d1, d2: Variant): TDataSource;
begin
  with DS do begin
    DisableControls;
    try
      Close;
        ParamByName('D1').AsVariant:= d1;
        ParamByName('D2').AsVariant:= d2;
        ParamByName('HOUSE').AsVariant:= hCode;
        OrderClause:='TF.KONTRAGENT, TF.DATA, M.NAME';
      Open;
    finally
      EnableControls;
    end;
  end;
  //
  Result:= src;
end;

function THTR.GetTRLInfo(const hCode, d1, d2: Variant): TDataSource;
begin
  with DSL do begin
    DisableControls;
    try
      Close;
        ParamByName('D1').AsVariant:= d1;
        ParamByName('D2').AsVariant:= d2;
        ParamByName('HOUSE').AsVariant:= hCode;
        OrderClause:='TF.KONTRAGENT, TF.DATA, M.NAME';
      Open;
    finally
      EnableControls;
    end;
  end;
  //
  Result:= SRCL;
end;

{ TBDR }

procedure TBDR.AddTableData;
var
  data, house :Variant;
  FSALDO,FPSUM,FRSUM,FSALDO_END :string;

  procedure GetFName;
  begin
    FSALDO:='SALDO'+IntToStr(DSFBDR4.FN('DTYPE').AsInteger);
    FPSUM:='PSUM'+IntToStr(DSFBDR4.FN('DTYPE').AsInteger);
    FRSUM:='RSUM'+IntToStr(DSFBDR4.FN('DTYPE').AsInteger);
    FSALDO_END:='SALDO_END'+IntToStr(DSFBDR4.FN('DTYPE').AsInteger);
  end;

  procedure SetSum;
  begin
    m_bdr4.Edit;
      m_bdr4.FieldByName('PSUM').AsCurrency:=
        m_bdr4.FieldByName('PSUM').AsCurrency+DSFBDR4.FN('PSUM').AsCurrency;
      m_bdr4.FieldByName('RSUM').AsCurrency:=
        m_bdr4.FieldByName('RSUM').AsCurrency + DSFBDR4.FieldByName('RSUM').AsCurrency;
      m_bdr4.FieldByName('SALDO_END').AsCurrency:=
        m_bdr4.FieldByName('SALDO_END').AsCurrency +
        (DSFBDR4.FN('SALDO').AsCurrency+DSFBDR4.FN('PSUM').AsCurrency-
        DSFBDR4.FN('RSUM').AsCurrency);
    m_bdr4.Post;
  end;

begin
  m_bdr4.Close; m_bdr4.Open;
  with DSFBDR4 do
  while not Eof do begin
    GetFName;
    if house<>FN('HOUSE').AsVariant then begin
      data:=FN('DATA').AsVariant;
      m_bdr4.Append;
      m_bdr4.FieldByName('HOUSE').AsVariant:=FN('HOUSE').AsVariant;
      m_bdr4.FieldByName('NOMER').AsVariant:=FN('NOMER').AsVariant;
      m_bdr4.FieldByName('SNAME').AsVariant:=FN('SNAME').AsVariant;
      m_bdr4.FieldByName('DTYPE').AsVariant:=FN('DTYPE').AsVariant;
      if f1C then begin
        m_bdr4.FieldByName('SALDO').AsCurrency:= FN('SALDO').AsCurrency;
        m_bdr4.FieldByName('PSUM').AsCurrency:= FN('PSUM').AsCurrency;
        m_bdr4.FieldByName('RSUM').AsCurrency:= FN('RSUM').AsCurrency;
        m_bdr4.FieldByName('SALDO_END').AsCurrency:=
          FN('SALDO').AsCurrency+FN('PSUM').AsCurrency-FN('RSUM').AsCurrency;
        m_bdr4.FieldByName(FSALDO).AsCurrency:= FN('SALDO').AsCurrency;
        m_bdr4.FieldByName(FPSUM).AsCurrency:= FN('PSUM').AsCurrency;
        m_bdr4.FieldByName(FRSUM).AsCurrency:= FN('RSUM').AsCurrency;
        m_bdr4.FieldByName(FSALDO_END).AsCurrency:=
          FN('SALDO').AsCurrency+FN('PSUM').AsCurrency-FN('RSUM').AsCurrency;
      end else begin
        m_bdr4.FieldByName('SALDO').AsCurrency:= FN('SALDO1').AsCurrency;
        m_bdr4.FieldByName('PSUM').AsCurrency:= FN('PSUM1').AsCurrency;
        m_bdr4.FieldByName('RSUM').AsCurrency:= FN('RSUM1').AsCurrency;
        m_bdr4.FieldByName('SALDO_END').AsCurrency:=
          FN('SALDO1').AsCurrency+FN('PSUM1').AsCurrency-FN('RSUM1').AsCurrency;
        m_bdr4.FieldByName(FSALDO).AsCurrency:= FN('SALDO1').AsCurrency;
        m_bdr4.FieldByName(FPSUM).AsCurrency:= FN('PSUM1').AsCurrency;
        m_bdr4.FieldByName(FRSUM).AsCurrency:= FN('RSUM1').AsCurrency;
        m_bdr4.FieldByName(FSALDO_END).AsCurrency:=
          FN('SALDO1').AsCurrency+FN('PSUM1').AsCurrency-FN('RSUM1').AsCurrency;
      end;
      m_bdr4.Post;
      house:=FN('HOUSE').AsVariant;
    end else
    begin
      if data<>FN('DATA').AsVariant then
      begin
        m_bdr4.edit;
        if f1C then begin
          m_bdr4.FieldByName(FPSUM).AsCurrency:=
            m_bdr4.FieldByName(FPSUM).AsCurrency+ FN('PSUM').AsCurrency;
          m_bdr4.FieldByName(FRSUM).AsCurrency:=
            m_bdr4.FieldByName(FRSUM).AsCurrency+ FN('RSUM').AsCurrency;
          m_bdr4.FieldByName(FSALDO_END).AsCurrency:=
            m_bdr4.FieldByName(FSALDO_END).AsCurrency+
            (FN('PSUM').AsVariant-FN('RSUM').AsCurrency);
          m_bdr4.FieldByName('PSUM').AsCurrency:=
            m_bdr4.FieldByName('PSUM').AsCurrency+FN('PSUM').AsCurrency;
          m_bdr4.FieldByName('RSUM').AsCurrency:=
            m_bdr4.FieldByName('RSUM').AsCurrency + FieldByName('RSUM').AsCurrency;
          m_bdr4.FieldByName('SALDO_END').AsCurrency:=
            m_bdr4.FieldByName('SALDO_END').AsCurrency +
            (FN('PSUM').AsCurrency-FN('RSUM').AsCurrency);
        end else begin
          m_bdr4.FieldByName(FPSUM).AsCurrency:=
            m_bdr4.FieldByName(FPSUM).AsCurrency+ FN('PSUM1').AsCurrency;
          m_bdr4.FieldByName(FRSUM).AsCurrency:=
            m_bdr4.FieldByName(FRSUM).AsCurrency+ FN('RSUM1').AsCurrency;
          m_bdr4.FieldByName(FSALDO_END).AsCurrency:=
            m_bdr4.FieldByName(FSALDO_END).AsCurrency+
            (FN('PSUM1').AsVariant-FN('RSUM1').AsCurrency);

          m_bdr4.FieldByName('PSUM').AsCurrency:=
            m_bdr4.FieldByName('PSUM').AsCurrency+FN('PSUM1').AsCurrency;
          m_bdr4.FieldByName('RSUM').AsCurrency:=
            m_bdr4.FieldByName('RSUM').AsCurrency + FieldByName('RSUM1').AsCurrency;
          m_bdr4.FieldByName('SALDO_END').AsCurrency:=
            m_bdr4.FieldByName('SALDO_END').AsCurrency +
            (FN('PSUM1').AsCurrency-FN('RSUM1').AsCurrency);
        end;
        m_bdr4.Post;
      end else
      begin
        m_bdr4.edit;
        if f1C then begin
          m_bdr4.FieldByName(FSALDO).AsCurrency:=
          m_bdr4.FieldByName(FSALDO).AsCurrency+ FN('SALDO').AsCurrency;
          m_bdr4.FieldByName(FPSUM).AsCurrency:=
            m_bdr4.FieldByName(FPSUM).AsCurrency+ FN('PSUM').AsCurrency;
          m_bdr4.FieldByName(FRSUM).AsCurrency:=
            m_bdr4.FieldByName(FRSUM).AsCurrency+ FN('RSUM').AsCurrency;
          m_bdr4.FieldByName(FSALDO_END).AsCurrency:=
            m_bdr4.FieldByName(FSALDO_END).AsCurrency+
            (FN('SALDO').AsCurrency+FN('PSUM').AsCurrency-FN('RSUM').AsCurrency);
          //
          m_bdr4.FieldByName('SALDO').AsCurrency:=
          m_bdr4.FieldByName('SALDO').AsCurrency+m_bdr4.FieldByName(FSALDO).AsCurrency;
          m_bdr4.FieldByName('PSUM').AsCurrency:=
            m_bdr4.FieldByName('PSUM').AsCurrency+FN('PSUM').AsCurrency;
          m_bdr4.FieldByName('RSUM').AsCurrency:=
            m_bdr4.FieldByName('RSUM').AsCurrency + FieldByName('RSUM').AsCurrency;
          m_bdr4.FieldByName('SALDO_END').AsCurrency:=
            m_bdr4.FieldByName('SALDO_END').AsCurrency +
            (FN('SALDO').AsCurrency+FN('PSUM').AsCurrency-FN('RSUM').AsCurrency);
        end else begin
          m_bdr4.FieldByName(FSALDO).AsCurrency:=
          m_bdr4.FieldByName(FSALDO).AsCurrency+ FN('SALDO1').AsCurrency;
          m_bdr4.FieldByName(FPSUM).AsCurrency:=
            m_bdr4.FieldByName(FPSUM).AsCurrency+ FN('PSUM1').AsCurrency;
          m_bdr4.FieldByName(FRSUM).AsCurrency:=
            m_bdr4.FieldByName(FRSUM).AsCurrency+ FN('RSUM1').AsCurrency;
          m_bdr4.FieldByName(FSALDO_END).AsCurrency:=
            m_bdr4.FieldByName(FSALDO_END).AsCurrency+
            (FN('SALDO1').AsCurrency+FN('PSUM1').AsCurrency-FN('RSUM1').AsCurrency);
          //
          m_bdr4.FieldByName('SALDO').AsCurrency:=
          m_bdr4.FieldByName('SALDO').AsCurrency+FN('SALDO1').AsCurrency;
          m_bdr4.FieldByName('PSUM').AsCurrency:=
            m_bdr4.FieldByName('PSUM').AsCurrency+FN('PSUM1').AsCurrency;
          m_bdr4.FieldByName('RSUM').AsCurrency:=
            m_bdr4.FieldByName('RSUM').AsCurrency + FieldByName('RSUM1').AsCurrency;
          m_bdr4.FieldByName('SALDO_END').AsCurrency:=
            m_bdr4.FieldByName('SALDO_END').AsCurrency +
            (FN('SALDO1').AsCurrency+FN('PSUM1').AsCurrency-FN('RSUM1').AsCurrency);
        end;
        m_bdr4.Post;
      end;
      house:=FN('HOUSE').AsVariant;
    end;
    Next;
  end;
end;

constructor TBDR.Create;
begin
  inherited;
   f1C:= False;
   CreateComponents;
end;

procedure TBDR.CreateComponents;
  procedure SetParams(DS: TpFIBDataSet);
  begin
    with DS do begin
      Transaction := cmDb.RT;
      Database := cmDb.DB;
      UpdateTransaction := cmDb.WT;
    end;
  end;

  procedure CreateMem;
  var
    i :Integer;
  begin
    m_bdr4:= TdxMemData.Create(nil);
    CreateField(m_bdr4,'HOUSE',ftInteger);
    CreateField(m_bdr4,'NOMER',ftString,32);
    CreateField(m_bdr4,'SNAME',ftString,128);
    CreateField(m_bdr4,'DTYPE',ftInteger);
    for i:=0 to 5 do begin
      if i<>4 then begin
        CreateField(m_bdr4,'SALDO'+IntToStr(i),ftBCD);
        CreateField(m_bdr4,'PSUM'+IntToStr(i),ftBCD);
        CreateField(m_bdr4,'RSUM'+IntToStr(i),ftBCD);
        CreateField(m_bdr4,'SALDO_END'+IntToStr(i),ftBCD);
      end;
    end;
    CreateField(m_bdr4,'SALDO',ftBCD);
    CreateField(m_bdr4,'PSUM',ftBCD);
    CreateField(m_bdr4,'RSUM',ftBCD);
    CreateField(m_bdr4,'SALDO_END',ftBCD);
    m_bdr4.Open;
    //

  end;

begin
  DSPBDR1 := TpFIBDataSet.Create(nil);
    SetParams(DSPBDR1);

    fSPBDR1 := TDataSource.Create(nil);
    fSPBDR1.DataSet:= DSPBDR1;
  DSPBDR2 := TpFIBDataSet.Create(nil);
    SetParams(DSPBDR2);

    fSPBDR2 := TDataSource.Create(nil);
    fSPBDR2.DataSet:= DSPBDR2;
  DSPBDR3 := TpFIBDataSet.Create(nil);
    SetParams(DSPBDR3);
    DSPBDR3.SelectSQL.Text:='';

    fSPBDR3 := TDataSource.Create(nil);
    fSPBDR3.DataSet:= DSPBDR3;
  DSFBDR1 := TpFIBDataSet.Create(nil);
    SetParams(DSFBDR1);
    DSFBDR1.SelectSQL.Text:='';

    fSFBDR1 := TDataSource.Create(nil);
    fSFBDR1.DataSet:= DSFBDR1;
  DSFBDR2 := TpFIBDataSet.Create(nil);
    SetParams(DSFBDR2);
    DSFBDR2.SelectSQL.Text:='';

    fSFBDR2 := TDataSource.Create(nil);
    fSFBDR2.DataSet:= DSFBDR2;
  DSFBDR3 := TpFIBDataSet.Create(nil);
    SetParams(DSFBDR3);
    DSFBDR3.SelectSQL.Text:='';

    fSFBDR3 := TDataSource.Create(nil);
    fSFBDR3.DataSet:= DSFBDR3;
  DSFBDR4 := TpFIBDataSet.Create(nil);
    SetParams(DSFBDR4);
    CreateMem;
    fSFBDR4 := TDataSource.Create(nil);
    fSFBDR4.DataSet:= m_bdr4;

end;

destructor TBDR.Destroy;
begin
  FreeComponents;
  inherited;
end;

procedure TBDR.FreeComponents;
begin
  // pFIBDataSet
  if Assigned(DSPBDR1) then FreeAndNil(DSPBDR1);
  if Assigned(DSPBDR2) then FreeAndNil(DSPBDR2);
  if Assigned(DSPBDR3) then FreeAndNil(DSPBDR3);
  if Assigned(DSFBDR1) then FreeAndNil(DSFBDR1);
  if Assigned(DSFBDR2) then FreeAndNil(DSFBDR2);
  if Assigned(DSFBDR3) then FreeAndNil(DSFBDR3);
  if Assigned(DSFBDR4) then FreeAndNil(DSFBDR4);
  // DataSource
  if Assigned(fSPBDR1) then FreeAndNil(fSPBDR1);
  if Assigned(fSPBDR2) then FreeAndNil(fSPBDR2);
  if Assigned(fSPBDR3) then FreeAndNil(fSPBDR3);
  if Assigned(fSFBDR1) then FreeAndNil(fSFBDR1);
  if Assigned(fSFBDR2) then FreeAndNil(fSFBDR2);
  if Assigned(fSFBDR3) then FreeAndNil(fSFBDR3);
  if Assigned(fSFBDR4) then FreeAndNil(fSFBDR4);
  if Assigned(m_bdr4) then FreeAndNil(m_bdr4);
end;

function TBDR.GetBDR(srv, house, Y1, Y2, M1, M2: variant): boolean;
begin
  Result:= False;
   fHouseSRV:= srv;
   fHouse:= house;
   fYStart:= Y1;
   fYEnd:= Y2;
   fMStart:= M1;
   fMEnd:= M2;
  //
  MakeData;
  //
  if not GetPBDR1 then
    raise dezException.Create('Ошибка получения данных БДР1 план');
  if not GetFBDR1 then
    raise dezException.Create('Ошибка получения данных БДР1 факт');
  if not GetPBDR2 then
    raise dezException.Create('Ошибка получения данных БДР2 план');
  if not GetFBDR2 then
    raise dezException.Create('Ошибка получения данных БДР2 факт');
  if not GetPBDR3 then
    raise dezException.Create('Ошибка получения данных БДР2 план');
  if not GetFBDR3 then
    raise dezException.Create('Ошибка получения данных БДР2 факт');
  if not GetFBDR4 then
    raise dezException.Create('Ошибка получения данных БДР4 факт');
  Result:= True;
end;

function TBDR.GetFBDR1: Boolean;
begin
  Result:= True;
  try
    DSFBDR1.SelectSQL.Text;
    with DSFBDR1 do begin
      Close;
        DataSet_ID:= 7;
        Prepare;
        ParamByName('D1').AsVariant:= fD1;
        ParamByName('D2').AsVariant:= fD2;
        ParamByName('HOUSESRV').AsVariant:= fHouseSRV;
        ParamByName('HOUSE').AsVariant:= fHouse;
      Open;
    end;
  except
    on E: Exception do
       Result:= False;
  end;
end;

function TBDR.GetFBDR2: Boolean;
begin
  Result:= True;
  try
    with DSFBDR2 do begin
      Close;
        DataSet_ID:= 9;
        Prepare;
        ParamByName('D1').AsVariant:= fD1;
        ParamByName('D2').AsVariant:= fD2;
        ParamByName('HOUSE').AsVariant:= fHouse;
      Open;
    end;
  except
    on E: Exception do
       Result:= False;
  end;
end;

function TBDR.GetFBDR3: Boolean;
begin
  Result:= True;
  try
    with DSFBDR3 do begin
      Close;
        DataSet_ID:= 11;
        Prepare;
        ParamByName('D1').AsVariant:= fD1;
        ParamByName('D2').AsVariant:= fD2;
        ParamByName('HOUSE').AsVariant:= fHouse;
      Open;
    end;
  except
    on E: Exception do
       Result:= False;
  end;
end;

function TBDR.GetFBDR4: Boolean;
begin
  Result:= True;
  try
    with DSFBDR4 do begin
      Close;
        DataSet_ID:= 17;
        Prepare;
        MainWhereClause:='hm.DATA between :D1 and :D2 and hm.DTYPE<>4 and HM.HOUSE=:HOUSE';
        ParamByName('D1').AsVariant:= fD1;
        ParamByName('D2').AsVariant:= fD2;
        ParamByName('HOUSE').AsVariant:= fHouse;
        GroupByClause:='hm.HOUSE, h.nomer, hm.DATA, s.name, hm.DTYPE';
      Open;
      AddTableData;
    end;
  except
    on E: Exception do
       Result:= False;
  end;
end;

function TBDR.GetPBDR1: Boolean;
begin
  Result:= True;
  try
    DSPBDR1.SelectSQL.Text;
    with DSPBDR1 do begin
      Close;
        DataSet_ID:= 6;
        Prepare;
        ParamByName('D1').AsVariant:= fD1;
        ParamByName('D2').AsVariant:= fD2;
        ParamByName('HOUSESRV').AsVariant:= fHouseSRV;
        ParamByName('HOUSE').AsVariant:= fHouse;
      Open;
    end;
  except
    on E: Exception do
       Result:= False;
  end;
end;

function TBDR.GetPBDR2: Boolean;
begin
  Result:= True;
  try
    with DSPBDR2 do begin
      Close;
        DataSet_ID:= 8;
        Prepare;
        ParamByName('D1').AsVariant:= fD1;
        ParamByName('D2').AsVariant:= fD2;
        ParamByName('HOUSE').AsVariant:= fHouse;
      Open;
    end;
  except
    on E: Exception do
       Result:= False;
  end;
end;

function TBDR.GetPBDR3: Boolean;
begin
  Result:= True;
  try
    with DSPBDR3 do begin
      Close;
        DataSet_ID:= 10;
        Prepare;
        ParamByName('D1').AsVariant:= fD1;
        ParamByName('D2').AsVariant:= fD2;
        ParamByName('HOUSE').AsVariant:= fHouse;
      Open;
    end;
  except
    on E: Exception do
       Result:= False;
  end;
end;

procedure TBDR.MakeData;
begin
  fD1:= StartOfAMonth(fYStart, fMStart);
  fD2:= EndOfAMonth(fYEnd, fMEnd)-1;
end;

{ THExpoptExcel }

constructor THExpoptExcel.Create;
begin
  inherited;
  CreateComponents;
end;

procedure THExpoptExcel.CreateComponents;
begin
  // TDataSets

  // TEXLReport
  fxl_main:= TEXLReport.Create(nil);
    //fxl_main.DataSet:=
  fxl_ngp:= TEXLReport.Create(nil);
    //
  fxl_kr:= TEXLReport.Create(nil);
    //
end;

destructor THExpoptExcel.Destroy;
begin
  FreeComponents;
  inherited;
end;

procedure THExpoptExcel.FreeComponents;
begin

end;

procedure THExpoptExcel.MakeExcel;
  procedure MakeMain;
  begin
    fxl_main.Template:= AppPath+'rep\HouseCard.xls';

  end;

begin

end;

{ THACT }

constructor THACT.Create;
begin
  inherited;
  CreateComponents;
end;

procedure THACT.CreateComponents;

  procedure SetParams(DS: TpFIBDataSet);
  begin
    with DS do begin
      Transaction := cmDb.RT;
      Database := cmDb.DB;
      UpdateTransaction := cmDb.WT;
    end;
  end;

begin
  fDSACT := TpFIBDataSet.Create(nil);
    SetParams(fDSACT);
    fSACT := TDataSource.Create(nil);
    fSACT.DataSet:= fDSACT;
end;

destructor THACT.Destroy;
begin
  FreeComponents;
  inherited;
end;

procedure THACT.FreeComponents;
begin
  if Assigned(fDSACT) then FreeAndNil(fDSACT);
  if Assigned(fSACT) then FreeAndNil(fSACT);
end;

function THACT.GetActInfo(house: variant): Boolean;
begin
  Result:= False;
  if house = null then
     raise dezException.Create('Не передан код дома!');
  fHouse:= house;
  GetMaxAct;
  if fListAct = '' then
     raise dezException.Create('Не обнаружены акты для этого дома!');
  with fDSACT do begin
    Close;
      DataSet_ID:= 18;
      Prepare;
      MainWhereClause:='sr.HOUSE = :House and sh.STYPE<>2 and sr.SHOWHOUSE in ('+fListAct+')';
      ParamByName('House').AsVariant:= fHouse;
    Open;
    //RecordCountFromSrv;
  end;
  Result:= True;
end;

procedure THACT.GetMaxAct;
var
  Q: TFIBQuery;
begin
  fListAct:='';
  Q:= GetQueryForUse(cmDb.RT,
    'select max(sr.SHOWHOUSE) SHOWHOUSE, sd.ATYPE' +#13#10+
    'from SHOWRESULT sr' +#13#10+
    'left outer join SHOWHOUSE SH on sh.CODE = sr.SHOWHOUSE' +#13#10+
    'left outer join SRVDOG sd on sd.CODE = sh.SRVDOG' +#13#10+
    'where sr.HOUSE = :house and sh.STYPE<>2' +#13#10+
    'group by sd.ATYPE');
  Q.Options:=[qoStartTransaction];
  try
    Q.ParamByName('house').AsVariant:= fHouse;
    Q.ExecQuery;
    while not Q.Eof do begin
      if fListAct = '' then
         fListAct:=Q.FN('SHOWHOUSE').AsString else
         fListAct:= fListAct+', '+Q.FN('SHOWHOUSE').AsString;
      Q.Next;
    end;
  finally
    FreeQueryForUse(Q);
  end;
end;

{ TOPU }

constructor TOPU.Create;
begin
  inherited;

end;

destructor TOPU.Destroy;
begin

  inherited;
end;

end.
