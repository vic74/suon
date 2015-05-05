unit common;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Forms, System.IniFiles, dxmdaset, Vcl.Controls, System.DateUtils,
  SingletonTemplate, uADStanIntf, uADStanOption, uADStanError,
  uADGUIxIntf, uADPhysIntf, uADStanDef, uADStanPool, uADStanAsync,
  uADPhysManager, uADStanParam, uADDatSManager, uADDAptIntf, uADDAptManager,
  uADGUIxFormsWait, uADCompGUIx, uADPhysODBCBase, uADPhysMSSQL, Data.DB, Data.DBConsts,
  uADCompDataSet, uADCompClient, AppUtils;

type
 dezException = class(Exception);

{ TComment }

  TComment = class(TObject)
  private
    fQ_Comment: TADQuery;
    fQ_User: TADQuery;
    fQ_GetRequestById: TADQuery;
    fRequestId: Variant;
    fCreatedBy: Variant;
    fCreatedAtUtc: TDateTime;
    fStatus: Variant;
    fABC: Variant;
    fCommentBody: string;
    fDisp_User: Variant;
  protected
    procedure GetUserCode;
    function CheckParams: Boolean;
  public
    constructor Create;
    destructor Destroy; override;
  published
    //property Q_Comment: TADQuery read fQ_Comment write fQ_Comment;
    property RequestId: Variant read FRequestId write fRequestId;
    property CreatedBy: Variant read FCreatedBy write fCreatedBy;
    property CreatedAtUtc: TDateTime read FCreatedAtUtc write fCreatedAtUtc;
    property Status: Variant read FStatus write fStatus;
    property ABC: Variant read FABC write fABC;
    property CommentBody: string read FCommentBody write fCommentBody;
    //
    procedure CreateComment;
  end;

{ TRQ }
{$M+}
  TRQ = class(TSingleton)
  private
    fcon: TADConnection;
    ftr: TADTransaction;
    fMSSQLLink: TADPhysMSSQLDriverLink;
    fWaitCursor: TADGUIxWaitCursor;
    Q: TADQuery;
    Q_JobType, Q_JobSubtype, Q_CanceledCompany: TADQuery;
    Q_Users: TADQuery;
    Q_MgmtCompany: TADQuery; //Управляющая компания
    Q_DU: TADQuery;          //Домоуправление
    Q_STREET, Q_HOUSE: TADQuery;
    Q_HOUSEUNION: TADQuery;
    Q_Detail: TADQuery;
    Q_PO: TADQuery;
    fComment: TComment;
    fLocation: TdxMemData;
    fStatus: TdxMemData;
    Ini: TIniFile;
    //dbconfig
    fServer: Variant;
    fUser: Variant;
    fPSWD: Variant;
    fBase: Variant;
    //
    fDisp_UserID: Variant;    //код пользователя dispatcher
  protected
    constructor Create; override;
    procedure CreateComponents;
    procedure FreeComponents;
    procedure CreateLocation;
    procedure CreateStatus;
    function CheckConnectParams: Boolean;
  public
    function ConvertUTC(data: TDateTime; InUTC: boolean = true): TDateTime;
    function Get_PO: TADQuery;
    function Get_Detail(id: Variant) : TADQuery;
    function Get_HouseToUnion: TADQuery;
    function Get_House(StreetID, DU: Variant; ByKontrHouse: WideString = ''): TADQuery;
    function Get_Street(StreetList: WideString = ''): TADQuery;
    function Get_DU(MgmtCompanyId: Variant): TADQuery;
    function Get_MgmtCompany: TADQuery;
    function Get_Users(CompanyId: Variant):TADQuery;
    function OpenRQ(house: variant): TADQuery;
    function GetCanceledCompany :TADQuery;
    function GetRQ(clause: string; isOpen: Boolean = true) :TADQuery;
    function GetRQByID(id: string): TADQuery;
    function Get_JobType: TADQuery;
    function JobSubtype(JobType: Integer): TADQuery;
    procedure Connect(isConnect: Boolean = true);
    function CheckUserCorrect: Variant;
    function GetStreetHouseList(houseList: WideString): WideString;
    destructor Destroy; override;
  published
    property con: TADConnection read fcon write fcon;
    property tr: TADTransaction read Ftr write ftr;
    property MSSQLLink: TADPhysMSSQLDriverLink read fMSSQLLink write fMSSQLLink;
    property WaitCursor: TADGUIxWaitCursor read fWaitCursor write fWaitCursor;
    property Location: TdxMemData read fLocation;
    property Status: TdxMemData read fStatus;
    property Comment: TComment read fComment write fComment;
  end;
{$M-}

  function RQ: TRQ;

implementation

{ TRQ }

uses FilterFrm, RqSql, IdHashMessageDigest, idHash;

function md5(s: string): string;
begin
  Result := '';
  with TIdHashMessageDigest5.Create do
  try
    Result := AnsiLowerCase(HashStringAsHex(s));
  finally
    Free;
  end;
end;

function RQ: TRQ;
begin
  Result:= TRQ.GetInstance;
end;

function TRQ.CheckConnectParams: Boolean;
begin
  Result:= False;
  if fUser = null then
     raise dezException.Create('Не указаны параметры авторизации для диспетчера!');
  if fPSWD = null then
     raise dezException.Create('Не указаны параметры авторизации для диспетчера!');
  if fServer = null then
     raise dezException.Create('Не указаны параметры базы данных для диспетчера!');
  if fBase = null then
     raise dezException.Create('Не указаны параметры базы данных для диспетчера!');
  Result:= True;
end;

function TRQ.CheckUserCorrect: Variant;
var
  Q: TADQuery;
  pswd: Variant;
begin
  Q := TADQuery.Create(nil);
  Q.Connection:= fcon;
  try
    with Q do begin
      SQL.Text:='SELECT UserId, Password FROM App_User' +#13#10+
                'WHERE UserName = N'+#39+AppUtils.Disp_User+#39;
      //ParamByName('usr').AsString := AppUtils.Disp_User;
      //ParamByName('psw').AsString := AppUtils.Disp_PSWD;
      Open;
    end;
    pswd:= md5(AppUtils.Disp_PSWD);
    if (Q.FieldByName('Password').AsVariant = AppUtils.Disp_PSWD) or
       (Q.FieldByName('Password').AsVariant = pswd) then begin
          fDisp_UserID:= Q.FieldByName('UserId').AsVariant;
          Result:= fDisp_UserID;
       end else
          Result:= null;
  finally
    FreeAndNil(Q);
  end;
end;

procedure TRQ.Connect(isConnect: Boolean);
var
  ms: string;
begin
  if isConnect then
  if CheckConnectParams then
  with fcon do begin
    with Params do begin
      Clear;
      Add('SERVER='    +fServer);
      Add('User_Name=' + fUser);
      Add('Password='  + fPSWD);
      Add('DATABASE='  +fBase);
      Add('DriverID=MSSQL');
    end;
    try
      fWaitCursor.WaitCursor.StartWait;
      Connected:= True;
      fWaitCursor.WaitCursor.StopWait;
      {$MESSAGE WARN 'сделать проверку параметров авторизации пользователя'}
      if CheckUserCorrect = null then begin
        fcon.Connected:= False;
        ms:= 'Неверный логин пароль для диспетчера!'+sLineBreak+
                                  'Проверте ваши данные на форме "Физические лица".';
        raise dezException.Create(ms);
      end;
    except
      on E: Exception do
        raise dezException.Create('Ошибка соединения с базой диспетчера!'+sLineBreak+ms);
    end;
  end else begin
    fcon.Connected:= False;
  end;
end;

function TRQ.ConvertUTC(data: TDateTime; InUTC: boolean): TDateTime;
var
 iBias: Integer;
 t: TTime;
 tmez: TTimeZoneInformation;
 //st: SYSTEMTIME;
 d: TDateTime;
begin
   d:= TTimeZone.Local.ToUniversalTime(data);
  // GetSystemTime(st);
  // d:= EncodeDateTime(st.wYear,st.wMonth, st.wDay, st.wHour, st.wMinute, st.wSecond, st.wMilliseconds);
   Case GetTimeZoneInformation(tmez) of
     TIME_ZONE_ID_INVALID: iBias :=6; //raise dezException.Create('RSFailedTimeZoneInfo');
     TIME_ZONE_ID_UNKNOWN  : iBias := tmez.Bias div 60;
     TIME_ZONE_ID_DAYLIGHT : iBias := tmez.Bias + tmez.DaylightBias div 60;
     TIME_ZONE_ID_STANDARD : iBias := tmez.Bias + tmez.StandardBias div 60;
     else
       iBias :=6;//raise dezException.Create('RSFailedTimeZoneInfo');
     end;
     t:= StrToTime('00:00:00');
     t:= t+iBias/24;
   if InUTC then
      d:= data+t else
      d:= data-t;
   Result:= d;
end;

constructor TRQ.Create;
begin
  inherited;
  CreateComponents;
end;

procedure TRQ.CreateComponents;
begin
  fcon := TADConnection.Create(nil);
  ftr := TADTransaction.Create(nil);
  fMSSQLLink := TADPhysMSSQLDriverLink.Create(nil);
  fWaitCursor := TADGUIxWaitCursor.Create(Application);
  Q := TADQuery.Create(nil);
  Q_JobType:= TADQuery.Create(nil);
  Q_JobSubtype:= TADQuery.Create(nil);
  Q_CanceledCompany:= TADQuery.Create(nil);
  Q_Users:= TADQuery.Create(nil);
  Q_MgmtCompany:= TADQuery.Create(nil);
  Q_DU:= TADQuery.Create(nil);
  Q_STREET:= TADQuery.Create(nil);
  Q_HOUSE:= TADQuery.Create(nil);
  Q_HOUSEUNION:= TADQuery.Create(nil);
  Q_Detail:= TADQuery.Create(nil);
  Q_PO:= TADQuery.Create(nil);
  fLocation:= TdxMemData.Create(nil);
  CreateLocation;
  fStatus:= TdxMemData.Create(nil);
  CreateStatus;
  //comment
  fComment:= TComment.Create;
  //
  ftr.Connection := fcon;
  fWaitCursor.Provider:= 'Forms';
  fWaitCursor.ScreenCursor:= gcrSQLWait;
  Q.Connection:= fcon;
  Q_JobType.Connection:= fcon;
  Q_JobSubtype.Connection:= fcon;
  Q_CanceledCompany.Connection:= fcon;
  Q_Users.Connection:= fcon;
  Q_MgmtCompany.Connection:= fcon;
  Q_DU.Connection:= fcon;
  Q_STREET.Connection:= fcon;
  Q_HOUSE.Connection:= fcon;
  Q_HOUSEUNION.Connection:= fcon;
  Q_Detail.Connection:= fcon;
  Q_PO.Connection:= fcon;
  //
  fComment.fQ_Comment.Connection:= fcon;
  fComment.fQ_User.Connection:= fcon;
  fComment.fQ_GetRequestById.Connection:= fcon;
  //
  Q.ResourceOptions.MacroCreate:= true;
  Q.ResourceOptions.MacroExpand:=True;
  Q.ResourceOptions.ParamCreate:=True;
  Q.ResourceOptions.ParamExpand:=True;
  Q.ResourceOptions.EscapeExpand:=True;
  Q.FetchOptions.Items:=[fiBlobs,fiDetails,fiMeta];
  // получаем информацию о соединении
  AppUtils.DispLogin(fUser,fPSWD, fServer, fBase);
  AppUtils.DispKontragent;
end;

procedure TRQ.CreateLocation;
  procedure Add(code: integer; name: string);
  begin
    fLocation.Append;
    fLocation.FN('CODE').AsVariant:= code;
    fLocation.FN('Name').AsVariant:= name;
    fLocation.Post;
  end;
begin
  with fLocation do begin
    ClearField;
    AddField('CODE',ftInteger);
    AddField('NAME', ftString,'',32);
    Open;
  end;
  Add(1,'Дом');
  Add(2,'Квартира');
  Add(3,'Подъезд');
  Add(4,'Лестничная клетка');
  Add(5,'Крыша');
  Add(6,'Другое');
  Add(7,'Подвал');
  Add(8,'Мусоропровод');
  Add(9,'Территория');
  Add(10,'Карман');
end;

procedure TRQ.CreateStatus;
  procedure Add(code: integer; name: string);
  begin
    fStatus.Append;
    fStatus.FN('CODE').AsVariant:= code;
    fStatus.FN('Name').AsVariant:= name;
    fStatus.Post;
  end;
begin
  with fStatus do begin
    ClearField;
    AddField('CODE',ftInteger);
    AddField('NAME', ftString,'',32);
    Open;
  end;
  //Add(1,'Не рассмотрена');
  Add(2,'В процессе');
  //Add(3,'Выполнена');
  Add(4,'Возвращена');
  //Add(5,'Снята');
  //Add(6,'Закрыта');
  Add(7,'Отложена');
  Add(8,'Текущий ремонт');
  Add(9,'Запрос в службу эксплуатации (СЭ)');
end;

destructor TRQ.Destroy;
begin
  FreeComponents;
  inherited;
end;

procedure TRQ.FreeComponents;
begin
  if Assigned(Q_PO) then FreeAndNil(Q_PO);
  if Assigned(fComment) then FreeAndNil(fComment);
  if Assigned(Q_Detail) then FreeAndNil(Q_Detail);
  if Assigned(Q_HOUSEUNION) then FreeAndNil(Q_HOUSEUNION);
  if Assigned(Q_HOUSE) then FreeAndNil(Q_HOUSE);
  if Assigned(Q_STREET) then FreeAndNil(Q_STREET);
  if Assigned(Q_DU) then FreeAndNil(Q_DU);
  if Assigned(Q_MgmtCompany) then FreeAndNil(Q_MgmtCompany);
  if Assigned(Q_Users) then FreeAndNil(Q_Users);
  if Assigned(Q_CanceledCompany) then FreeAndNil(Q_CanceledCompany);
  if Assigned(Q_JobSubType) then FreeAndNil(Q_JobSubType);
  if Assigned(Q_JobType) then FreeAndNil(Q_JobType);
  if Assigned(Q) then FreeAndNil(Q);
  if Assigned(fMSSQLLink) then FreeAndNil(fMSSQLLink);
  if Assigned(ftr) then FreeAndNil(ftr);
  if Assigned(fcon) then FreeAndNil(fcon);
  //if Assigned(fWaitCursor) then FreeAndNil(fWaitCursor);
end;

function TRQ.GetCanceledCompany: TADQuery;
begin
  with Q_CanceledCompany do begin
    Close;
    SQL.Text:='SELECT CompanyId CODE, Title NAME' +#13#10+
              'FROM App_Company' +#13#10+
              'WHERE IsLockedOut = 0' +#13#10+
              'ORDER BY Title';
    Open;
  end;
  Result:= Q_CanceledCompany;
end;

function TRQ.GetRQ(clause: string; isOpen: Boolean): TADQuery;
begin
  Q.SQL.Clear;
  Q.SQL.Text:= MainQuery;
  try
    Q.SQL.Add('WHERE '+clause);
    if isOpen then
      Q.Open;
    Result:= Q;
  finally

  end;
end;

function TRQ.GetRQByID(id: string): TADQuery;
begin
  if Trim(id)<>'' then
    Result:= GetRQ('rq.RequestId ='+Id) else
    Result:= GetRQ('');
end;

function TRQ.GetStreetHouseList(houseList: WideString): WideString;
var
  Q: TADQuery;
  s: WideString;
begin
  Q := TADQuery.Create(nil);
  try
    Q.Connection:= fcon;
    Q.SQL.Text:='SELECT DISTINCT(StreetId) FROM Geo_House WHERE HouseId in ('+houseList+')';
    Q.Open;
    while not Q.Eof do begin
      s:= s+ Q.FieldByName('StreetId').AsString+',';
      Q.Next;
    end;
    Delete(s, System.Length(s), 1); //удаляем последнюю запятую

    Result:= s;
  finally
    FreeAndNil(Q);
  end;
end;

function TRQ.Get_Detail(id: Variant): TADQuery;
begin
  with Q_Detail do begin
    Close;
    SQL.Text:= DetailQuery;
    ParamByName('ID').AsInteger:= id;
    Open;
  end;
  Result:= Q_Detail;
end;

function TRQ.Get_DU(MgmtCompanyId: Variant): TADQuery;
begin
  with Q_DU do begin
    Close;
    SQL.Text:= 'SELECT CompanyId CODE, Title NAME' +#13#10+
               'FROM App_Company' +#13#10+
               'WHERE IsHouseCompany = 1 AND IsLockedOut = 0 AND MgmtCompanyId = :ID' +#13#10+
               'ORDER BY Title';
    if MgmtCompanyId= null then
       ParamByName('ID').AsInteger:=-1 else
       ParamByName('ID').AsInteger:= MgmtCompanyId;
    Open;
  end;
  Result:= Q_DU;
end;

function TRQ.Get_House(StreetID, DU: Variant; ByKontrHouse: WideString = ''): TADQuery;
begin
  if DU = null then begin
    with Q_HOUSE do begin
      Close;
      if ByKontrHouse = '' then
        SQL.Text:= 'SELECT HouseId CODE, Title NAME' +#13#10+
                   'FROM Geo_House' +#13#10+
                   'WHERE StreetId = :STREET' +#13#10+
                   'ORDER BY Title' else
        SQL.Text:= 'SELECT HouseId CODE, Title NAME' +#13#10+
                   'FROM Geo_House' +#13#10+
                   'WHERE StreetId = :STREET and HouseId in ('+ByKontrHouse+')' +#13#10+
                   'ORDER BY Title';
      if StreetID = null then StreetID:= -1;
      ParamByName('STREET').AsInteger:= StreetID;
      Open;
    end;
  end else begin
    with Q_HOUSE do begin
      Close;
      SQL.Text:= 'SELECT HouseId CODE, Title NAME' +#13#10+
                 'FROM Geo_House' +#13#10+
                 'WHERE StreetId = :STREET AND HouseCompanyId = :DU' +#13#10+
                 'ORDER BY Title';
      if StreetID = null then StreetID:= -1;
      ParamByName('STREET').AsInteger:= StreetID;
      ParamByName('DU').AsInteger:= DU;
      Open;
    end;
  end;
  Result:= Q_HOUSE;
end;

function TRQ.Get_HouseToUnion: TADQuery;
begin
  with Q_HOUSEUNION do begin
    Close;
    SQL.Text:='SELECT H.HouseId CODE, S.Title NAME, H.Title NOMER, S.Title+'', ''+H.Title FULLNAME' +#13#10+
              'FROM Geo_House H' +#13#10+
              'LEFT OUTER JOIN Geo_Street S on s.StreetId = H.StreetId' +#13#10+
              'ORDER BY S.Title, H.Title';
    Open;
  end;
  Result:= Q_HOUSEUNION;
end;

function TRQ.Get_JobType: TADQuery;
begin
  with Q_JobType do begin
    Close;
    SQL.Text:='SELECT JobTypeId,Title' +#13#10+
              'FROM Rq_JobType' +#13#10+
              'ORDER BY Title ASC';
    Open;
  end;
  Result:= Q_JobType;
end;

function TRQ.Get_MgmtCompany: TADQuery;
begin
  with Q_MgmtCompany do begin
    Close;
    SQL.Text:='SELECT CompanyId CODE, Title NAME' +#13#10+
              'FROM App_Company' +#13#10+
              'WHERE IsMgmtCompany = 1 AND IsLockedOut = 0' +#13#10+
              'ORDER BY Title';
    Open;
  end;
  Result:= Q_MgmtCompany;
end;

function TRQ.Get_PO: TADQuery;
begin
  with Q_PO do begin
    Close;
    SQL.Text:='SELECT CompanyId CODE, Title NAME' +#13#10+
              'FROM App_Company' +#13#10+
              'WHERE CompanySubTypeId = 4 AND IsLockedOut = 0' +#13#10+
              'ORDER BY Title';
    Open;
  end;
  Result:= Q_PO;
end;

function TRQ.Get_Street(StreetList: WideString = ''): TADQuery;
begin
  with Q_STREET do begin
    Close;
    if StreetList = '' then
      SQL.Text:='SELECT StreetId CODE, Title NAME' +sLineBreak+
                'FROM Geo_Street' +sLineBreak+
                'ORDER BY Title' else
      SQL.Text:='SELECT StreetId CODE, Title NAME' +sLineBreak+
                'FROM Geo_Street' +sLineBreak+
                'WHERE StreetId in ('+StreetList+')'+sLineBreak+
                'ORDER BY Title';
    Open;
  end;
  Result:= Q_STREET;
end;

function TRQ.Get_Users(CompanyId: Variant): TADQuery;
begin
  with Q_Users do begin
    Close;
    if CompanyId = null then
      SQL.Text:= 'SELECT UserId CODE, LastName+'' ''+ LEFT(FirstName,1)+''.''+ ' +#13#10+
                 '			 LEFT(MiddleName,1)+''.'' NAME' +#13#10+
                 'FROM App_User' +#13#10+
                 'WHERE IsDeleted = 0 AND IsLockedOut = 0 ' else
    begin
      SQL.Text:= 'SELECT UserId CODE, LastName+'' ''+ LEFT(FirstName,1)+''.''+ ' +#13#10+
                 '			 LEFT(MiddleName,1)+''.'' NAME' +#13#10+
                 'FROM App_User' +#13#10+
                 'WHERE IsDeleted = 0 AND IsLockedOut = 0 ' +#13#10+
                 'AND CompanyId = :ID';
      ParamByName('ID').AsInteger:= CompanyId;
    end;
    Open;
  end;
  Result:= Q_Users;
end;

function TRQ.JobSubtype(JobType: Integer): TADQuery;
begin
  with Q_JobSubtype do begin
    Close;
    SQL.Text:= 'SELECT JobSubtypeId, Title' +#13#10+
               'FROM Rq_JobSubtype' +#13#10+
               'WHERE JobTypeId = :id AND IsDeleted = 0';
    ParamByName('id').AsInteger:= JobType;
    Open;
  end;
  Result:= Q_JobSubtype;
end;

function TRQ.OpenRQ(house: variant): TADQuery;
var
  d1, d2: TDateTime;
  F: TFilterForm;
  JobType: Variant;
  S: string;

  procedure MakeClause;
  begin
    with F do begin
      d1:= dt1.Date+tm1.Time;
      d2:= dt2.Date+tm2.Time;
      S:= 'rq.IssuedAtUtc between :d1 and :d2';
      if cbb_JobType.EditValue<>null then
        S:= S+' and rq.JobTypeId = :JobType';
      if cbb_JobSubtype.EditValue<>null then
        S:=S+ ' and rq.JobSubtypeId= :SubJobType';
      if cbb_Location.EditValue<>null then
        S:=S+ ' and rq.Location= :Location';
      if cbb_Status.EditValue<> null then
        S:=S+ ' and rq.[Status]= :Status' else
        S:=S+ ' and rq.[Status] in (2,4,7,8,9)';
      if chk_IsEmergency.Checked then                //аварийные
        S:=S+ ' and IsEmergency = 1';
      if chk_IsPaid.Checked then                     //платные
        S:= S+ ' and IsPaid=1';
      if chk_IsOutdated.Checked then                 //просроченные
        S:=S+ ' and DueDateUtc < GETDATE()';
      if cbb_CanceledCompany.EditValue <> null then  //ор-ция снявшая заяаку
        S:= S+ ' and CanceledByCompanyId = :CanceledByCompanyId';
      if cbb_UserCanceled.EditValue <> null then     //поль-ль снявший заявку
        S:= S+ ' and CanceledBy = :CanceledByUser';
      if cbb_MgmtCompany.EditValue <> null then      //управляющая компания
        S:= S+ ' and WorkCompanyId = :WorkCompanyId' else
        S:= S+ ' and WorkCompanyId ='+VarToStr(Disp_Kontr);
      if cbb_DU.EditValue <> null then               // ДУ
        S:= S+ ' and HouseCompanyId = :HouseCompanyId';
      if cbb_HOUSE.EditValue <> null then            //дом
        S:= S+ ' and rq.HouseId = :HouseId';
      if Trim(txt_Flat.EditingText)<> '' then           //квартира
        S:= S+ ' and Apartment = :Apartment';
      if Trim(txt_ExecutorName.EditingText)<>'' then    //Имя исполнителя
        S:= S+ ' and ExecutorName = :ExecutorName';
      if Trim(txt_RequesterPhone.EditingText)<>'' then  //Телефон заявителя
        S:= S+ ' and RequesterPhone = :RequesterPhone';
      if cbb_ClosedCompany.EditValue <> null then       //Орг-ция, закрывшая заявку
        S:= S+ ' and ClosedByCompanyId = :ClosedByCompanyId';
      if cbb_ClosedUser.EditValue <> null then         //Закрыл пользователь
        S:= S+ ' and ClosedBy = :ClosedByUser';
    end;
  end;

  procedure AddParam(fName: string; Value: Variant);
  begin
    if Q.FindParam(fName)<>nil then
       Q.ParamByName(fName).AsInteger:= Value;
  end;

begin
  F:= TFilterForm.Create(Application);
  F.cbb_HOUSE.EditValue:= house;
  if F.ShowModal = mrOk then begin
    MakeClause;
    Q:= RQ.GetRQ(S,false);
    if Q.FindParam('d1') <> nil then Q.ParamByName('d1').AsDateTime:= d1;
    if Q.FindParam('d2') <> nil then Q.ParamByName('d2').AsDateTime:= d2;
    AddParam('JobType',F.cbb_JobType.EditValue);
    AddParam('SubJobType',F.cbb_JobSubtype.EditValue);
    AddParam('Location',F.cbb_Location.EditValue);
    AddParam('Status',F.cbb_Status.EditValue);
    AddParam('CanceledByCompanyId',F.cbb_CanceledCompany.EditValue);
    AddParam('CanceledByUser',F.cbb_UserCanceled.EditValue);
    AddParam('WorkCompanyId',Disp_Kontr);
    AddParam('HouseCompanyId',F.cbb_MgmtCompany.EditValue);
    AddParam('HouseId', F.cbb_HOUSE.EditValue);
    if Q.FindParam('Apartment') <> nil then
       Q.ParamByName('Apartment').AsString:= Trim(F.txt_Flat.Text);
    if Q.FindParam('ExecutorName') <> nil then
       Q.ParamByName('ExecutorName').AsString:= Trim(F.txt_ExecutorName.EditingText);
    if Q.FindParam('RequesterPhone') <> nil then
       Q.ParamByName('RequesterPhone').AsString:= Trim(F.txt_RequesterPhone.EditingText);
    AddParam('ClosedByCompanyId', F.cbb_ClosedCompany.EditValue);
    AddParam('ClosedByUser', F.cbb_ClosedUser.EditValue);
    WaitCursor.WaitCursor.StartWait;
    try
      Q.Open;
    finally
      WaitCursor.WaitCursor.StopWait;
    end;
  end;
  Result:= Q;
end;

{ TComment }

function TComment.CheckParams: Boolean;
begin
  Result:= False;
  if fRequestId = null then raise dezException.Create('Не указан номер заявки!');
  if fCreatedBy = null then begin
    {GetUserCode;
    if fDisp_User = null then
       raise dezException.Create('Невозможно определить пользователя!'+sLineBreak+
                                'Свяжитесь с разработчиками!'); }
    fCreatedBy:= RQ.fDisp_UserID;
  end;
  if fCreatedAtUtc = null then raise dezException.Create('Не указана дата!');
  if fStatus = null then raise dezException.Create('Не указан статус!');
  if fABC = null then fABC:= 0;
  if fCommentBody = null then raise dezException.Create('Не указан коментарий!');
  Result:= True;
end;

constructor TComment.Create;
begin
  fQ_Comment:= TADQuery.Create(nil);
  fQ_User:= TADQuery.Create(nil);
  fQ_GetRequestById:= TADQuery.Create(nil);
end;

procedure TComment.CreateComment;
var
  RequesterName: string;
  RequesterPhone: string;
  Apartment: string;
  AccessCode: string;
  Extra: string;
  ExecutorName: string;
  ExecutorPhoneNumber: string;
  RequestBody: string;
  s: string;

 procedure SetType;
 begin
   with fQ_Comment do begin
     ParamByName('RequestId').DataType:= ftInteger;
     ParamByName('Status').DataType:= ftSmallint;
     ParamByName('IssuedAtUtc').DataType:= ftDateTime;
     ParamByName('DueDateUtc').DataType:= ftDateTime;
     ParamByName('CompletedAtUtc').DataType:= ftDateTime;
     ParamByName('CanceledByCompanyId').DataType:= ftInteger;
     ParamByName('CanceledBy').DataType:= ftInteger;
     ParamByName('ClosedByCompanyId').DataType:= ftInteger;
     ParamByName('ClosedBy').DataType:=  ftInteger;
     ParamByName('ClosedAtUtc').DataType:=  ftDateTime;
     ParamByName('VerifiedByCompanyId').DataType:= ftInteger;
     ParamByName('VerifiedBy').DataType:= ftInteger;
     ParamByName('VerifiedAtUtc').DataType:= ftDateTime;

     //ParamByName('RequesterName').DataType:=  ftString;
     //ParamByName('RequesterPhone').DataType:= ftString;
     ParamByName('Location').DataType:=       ftSmallint;
     ParamByName('JobTypeId').DataType:=      ftSmallint;
     ParamByName('JobSubtypeId').DataType:=   ftSmallint;
     ParamByName('HouseId').DataType:=        ftInteger;
     ParamByName('Entrance').DataType:=       ftInteger;
     ParamByName('Floor').DataType:=          ftInteger;
     //ParamByName('Apartment').DataType:=      ftString;

     //ParamByName('AccessCode').DataType:=     ftString;
     //ParamByName('Extra').DataType:=          ftString;
     ParamByName('IsEmergency').DataType:=    ftSmallint;
     ParamByName('Price').DataType:=          ftBCD;
     ParamByName('WorkCompanyId').DataType:=  ftInteger;
     //ParamByName('ExecutorName').DataType:=   ftString;

     //ParamByName('ExecutorPhoneNumber').DataType:=  ftString;
     ParamByName('CommentCreatedBy').DataType:=     ftInteger;
     ParamByName('CommentCreatedAtUtc').DataType:=  ftDateTime;
     ParamByName('CommentIsSystem').DataType:=      ftSmallint;
     ParamByName('IsKeyComment').DataType:=         ftSmallint;
     ParamByName('CommentIsEmergency').DataType:=   ftSmallint;

     //ParamByName('RequestBody').DataType:= ftString;
   end;
 end;

 procedure SetDefParams;
 begin
   with fQ_GetRequestById do begin
     if FieldByName('RequesterName').Value = null then
        RequesterName:=#39#32#39 else RequesterName:= 'N'+#39+FieldByName('RequesterName').AsString+#39;
     if FieldByName('RequesterPhone').Value = null then
        RequesterPhone:=#39#32#39 else RequesterPhone:= 'N'+#39+FieldByName('RequesterPhone').AsString+#39;
     if FieldByName('Apartment').Value = null then
        Apartment:=#39#39 else Apartment:= 'N'+#39+FieldByName('Apartment').AsString+#39;
     if FieldByName('AccessCode').Value = null then
        AccessCode:=#39#39 else AccessCode:= 'N'+#39+FieldByName('AccessCode').AsString+#39;
     if FieldByName('Extra').Value = null then
        Extra:=#39#39 else Extra:= 'N'+#39+FieldByName('Extra').AsString+#39;
     if FieldByName('ExecutorName').Value = null then
        ExecutorName:=#39#39 else ExecutorName:= 'N'+#39+FieldByName('ExecutorName').AsString+#39;
     if FieldByName('ExecutorPhoneNumber').Value = null then
        ExecutorPhoneNumber:=#39#39 else ExecutorPhoneNumber:= 'N'+#39+FieldByName('ExecutorPhoneNumber').AsString+#39;
     if FieldByName('RequestBody').Value = null then
        RequestBody:=#39' '#39 else RequestBody:= 'N'+#39+FieldByName('RequestBody').AsString+#39;
   end;
 end;

begin
  if not CheckParams then Exit;

  with fQ_GetRequestById do begin
    Close;
    SQL.Text:='SELECT * FROM Rq_Request WHERE RequestId =:ID';
    //SQL.Text:= 'Rq_Request_GetRequestById :ID';
    ParamByName('ID').AsInteger:=fRequestId;
    Open;
  end;
  SetDefParams;
  //n:= fQ_GetRequestById.RecordCount;
  with fQ_Comment do begin
    Close;
    SQL.Text:=
      'Rq_Request_UpdateRequest :RequestId, :Status, :IssuedAtUtc, :DueDateUtc, :CompletedAtUtc, :CanceledByCompanyId, :CanceledBy,' +#13#10+
      '			 :ClosedByCompanyId, :ClosedBy, :ClosedAtUtc, :VerifiedByCompanyId, :VerifiedBy, :VerifiedAtUtc, '+RequesterName+',' +#13#10+
      '			 '+RequesterPhone+', :Location, :JobTypeId, :JobSubtypeId, :HouseId, :Entrance, :Floor, '+Apartment+', '+AccessCode+',' +#13#10+
      '			 '+Extra+', :IsEmergency, :Price, '+RequestBody+', :WorkCompanyId, '+ExecutorName+', '+ExecutorPhoneNumber+', ' +#13#10+
      '			 :CommentCreatedBy, :CommentCreatedAtUtc, :CommentIsSystem, :CommentIsEmergency, N''<ChangeItems />'',' +#13#10+
      '			 '+'N'+#39+fCommentBody+#39+', N''<CommentChangeHistory />'', :IsKeyComment';
    //s:= SQL.Text;
    SetType;

    ParamByName('RequestId').Value:= fRequestId;
    ParamByName('Status').Value:= fStatus;
    ParamByName('IssuedAtUtc').Value:= fQ_GetRequestById.FieldByName('IssuedAtUtc').Value;
    ParamByName('DueDateUtc').Value:= fQ_GetRequestById.FieldByName('DueDateUtc').Value;
    ParamByName('CompletedAtUtc').Value:= fCreatedAtUtc;
    ParamByName('CanceledByCompanyId').Value:= fQ_GetRequestById.FieldByName('CanceledByCompanyId').Value;
    ParamByName('CanceledBy').Value:= fQ_GetRequestById.FieldByName('CanceledBy').Value;
    ParamByName('ClosedByCompanyId').Value:= fQ_GetRequestById.FieldByName('ClosedByCompanyId').Value;
    ParamByName('ClosedBy').Value:= fQ_GetRequestById.FieldByName('ClosedBy').Value;
    ParamByName('ClosedAtUtc').Value:= fQ_GetRequestById.FieldByName('ClosedAtUtc').Value;
    ParamByName('VerifiedByCompanyId').Value:= fQ_GetRequestById.FieldByName('VerifiedByCompanyId').Value;
    ParamByName('VerifiedBy').Value:= fQ_GetRequestById.FieldByName('VerifiedBy').Value;
    ParamByName('VerifiedAtUtc').Value:= fQ_GetRequestById.FieldByName('VerifiedAtUtc').Value;

    ParamByName('Location').Value:= fQ_GetRequestById.FieldByName('Location').Value;
    ParamByName('JobTypeId').Value:= fQ_GetRequestById.FieldByName('JobTypeId').Value;
    ParamByName('JobSubtypeId').Value:= fQ_GetRequestById.FieldByName('JobSubtypeId').Value;
    ParamByName('HouseId').Value:= fQ_GetRequestById.FieldByName('HouseId').Value;
    ParamByName('Entrance').Value:= fQ_GetRequestById.FieldByName('Entrance').Value;
    ParamByName('Floor').Value:= fQ_GetRequestById.FieldByName('Floor').Value;

    ParamByName('IsEmergency').Value:= fQ_GetRequestById.FieldByName('IsEmergency').Value;
    ParamByName('Price').Value:= fQ_GetRequestById.FieldByName('Price').Value;

    ParamByName('WorkCompanyId').Value:= fQ_GetRequestById.FieldByName('WorkCompanyId').Value;

    ParamByName('CommentCreatedBy').Value:= fCreatedBy;
    ParamByName('CommentCreatedAtUtc').Value:= fCreatedAtUtc;
    ParamByName('CommentIsSystem').Value:= 0;
    ParamByName('IsKeyComment').Value:= 1;
    ParamByName('CommentIsEmergency').Value:= fABC;

    ExecSQL;
  end;

  {with fQ_Comment do begin
    Close;
    SQL.Text:=
    'INSERT INTO Rq_Comment' +#13#10+
                    '	(IsDeleted, RequestId, CreatedBy, CreatedAtUtc, [Status], IsSystem, IsEmergency,' +#13#10+
                    '	 ChangeItemsXml, CommentBody, CommentChangeHistoryXml)' +#13#10+
                    'VALUES' +#13#10+
                    '  (0, :RequestId, :CreatedBy, :CreatedAtUtc, :Status, 0, :ABC, N''<ChangeItems />'',' +#13#10+
                    '   '+'N'+#39+fCommentBody+#39+', N''<CommentChangeHistory />'');';
    ParamByName('RequestId').AsInteger:= fRequestId;
    ParamByName('CreatedBy').AsInteger:= fCreatedBy;
    ParamByName('CreatedAtUtc').AsDateTime:= fCreatedAtUtc;
    ParamByName('Status').AsInteger:= fStatus;
    ParamByName('ABC').AsInteger:= fABC;
    //ParamByName('CommentBody').AsString:= 'N'+#39+fCommentBody+#39;
    ExecSQL;
  end;
  with fQ_Comment do begin
    Close;
    SQL.Text:= Rq_Complette;
    ParamByName('ID').AsInteger:= fRequestId;
    ParamByName('DATA').AsDateTime:= fCreatedAtUtc;
    ExecSQL;
  end; }
  //fQ_Comment.CommitUpdates;
end;

destructor TComment.Destroy;
begin
  if Assigned(fQ_Comment) then FreeAndNil(fQ_Comment);
  if Assigned(fQ_User) then FreeAndNil(fQ_User);
  if Assigned(fQ_GetRequestById) then FreeAndNil(fQ_GetRequestById);
  inherited;
end;

procedure TComment.GetUserCode;
begin
  if fDisp_User = null then
     fDisp_User:= RQ.fDisp_UserID;
  {with fQ_User do begin
    Close;
    SQL.Text:= 'SELECT au.UserId FROM App_User au' +#13#10+
              'WHERE au.IsDeleted = 0 AND au.UserName = N'#39+VarToStr(AppUtils.Disp_User)+#39;
    //ParamByName('Name').AsString:= VarToStrDef(AppUtils.Disp_User,'');
    Open;
    fDisp_User:= FieldByName('UserId').AsVariant;
  end;}
end;

end.
