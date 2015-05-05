unit RqSql;

interface


  const
    DetailQuery = '	SELECT' +#13#10+
                  '    rg.RequestId Id,' +#13#10+
                  '    CONVERT(datetime, SWITCHOFFSET' +#13#10+
                  '			(CONVERT(datetimeoffset, rg.CreatedAtUtc), ' +#13#10+
                  '			DATENAME(TzOffset, SYSDATETIMEOFFSET()))) data,' +#13#10+
                  '    1 Status, N''Не рассмотрена'' StatusName,' +#13#10+
                  '    rg.CreatedBy USR, u.LastName+char(32)+LEFT(u.FirstName,1)+''. ''+LEFT(u.MiddleName ,1)+''.'' USERNAME,' +#13#10+
                  '    rg.RequestBody NOTE' +#13#10+
                  '  FROM dbo.Rq_Request rg' +#13#10+
                  '  left OUTER join App_User u on u.UserId = rg.CreatedBy' +#13#10+
                  '  WHERE rg.RequestId = :ID' +#13#10+
                  '  union ALL' +#13#10+
                  '  select  ' +#13#10+
                  '    c.CommentId id,' +#13#10+
                  '    CONVERT(datetime, SWITCHOFFSET' +#13#10+
                  '			(CONVERT(datetimeoffset, c.CreatedAtUtc), ' +#13#10+
                  '			DATENAME(TzOffset, SYSDATETIMEOFFSET()))) data,                    ' +#13#10+
                  '    c.Status Status,' +#13#10+
                  '    case ' +#13#10+
                  '      WHEN c.[Status] = 1 THEN N''Не рассмотрена''' +#13#10+
                  '      WHEN c.[Status] = 2 THEN N''В процессе''' +#13#10+
                  '      WHEN c.[Status] = 3 THEN N''Выполнена''' +#13#10+
                  '      WHEN c.[Status] = 4 THEN N''Возвращена''' +#13#10+
                  '      WHEN c.[Status] = 5 THEN N''Снята''' +#13#10+
                  '      WHEN c.[Status] = 6 THEN N''Закрыта''' +#13#10+
                  '      WHEN c.[Status] = 7 THEN N''Отложена''' +#13#10+
                  '      WHEN c.[Status] = 8 THEN N''Текущий ремонт''' +#13#10+
                  '      WHEN c.[Status] = 9 THEN N''Запрос в службу эксплуатации (СЭ)''' +#13#10+
                  '      ELSE ''''' +#13#10+
                  '    end StatusName,' +#13#10+
                  '    c.CreatedBy USR, u.LastName+char(32)+LEFT(u.FirstName,1)+''. ''+LEFT(u.MiddleName ,1)+''.'' USERNAME,' +#13#10+
                  '  	c.CommentBody NOTE' +#13#10+
                  '  from  dbo.Rq_Comment c' +#13#10+
                  '  left OUTER join App_User u on u.UserId = c.CreatedBy' +#13#10+
                  '  where c.RequestId = :ID and c.IsDeleted = 0 and c.IsSystem=0';

    MainQuery = 'SELECT' +#13#10+
                '  	rq.RequestId, rq.MgmtCompanyId,	_mgmt_company.Title MgmtCompany_Title,' +#13#10+
                '     rq.HouseCompanyId, _house_company.Title HouseCompany_Title,' +#13#10+
                '     _house_company.Title+char(13)+ cast(rq.LocalId as varchar) DU, ' +#13#10+
                '     convert(varchar,dbo.GetLocalData(Rq.CreatedAtUtc),104)+'' ''+' +#13#10+
                '       convert(varchar,dbo.GetLocalData(Rq.CreatedAtUtc),108)+' +#13#10+
                '       char(13)+_created_by.LastName+'' ''+LEFT(_created_by.FirstName,1)+''.''+' +#13#10+
                '       LEFT(_created_by.MiddleName,1)+''.''+char(13)+_created_by_company.Title+' +#13#10+
                '       char(13)+ convert(varchar,dbo.GetLocalData(rq.IssuedAtUtc),104)+'' ''+' +#13#10+
                '       convert(varchar,dbo.GetLocalData(rq.IssuedAtUtc),108) Added,' +#13#10+
                '     _job_type.Title+char(13)+_job_subtype.Title WorkType,' +#13#10+
                '' +#13#10+
                '     _street.Title+	case' +#13#10+
                '						when _house.Title is null then ''''' +#13#10+
                '						else '', ''+_house.Title' +#13#10+
                '					end + ' +#13#10+
                '					case' +#13#10+
                '						when rq.Apartment is null then ''''' +#13#10+
                '						else N'', кв. ''+cast(rq.Apartment as VARCHAR)' +#13#10+
                '					end +' +#13#10+
                '					case' +#13#10+
                '						when rq.Entrance is null then ''''' +#13#10+
                '						else '', ''+cast(rq.Entrance as VARCHAR)+N'' подъезд''' +#13#10+
                '					end + ' +#13#10+
                '					case' +#13#10+
                '						when rq.[Floor] is null then ''''' +#13#10+
                '						else '', ''+N'' этаж ''+cast(rq.[Floor] as VARCHAR)' +#13#10+
                '					end +' +#13#10+
                '					case' +#13#10+
                '						when rq.AccessCode is null then ''''' +#13#10+
                '						else '', ''+N'' домофон: ''+cast(rq.AccessCode as VARCHAR)' +#13#10+
                '					end +' +#13#10+
                '					case' +#13#10+
                '						when rq.RequesterPhone ='''' then ''''' +#13#10+
                '						else '', ''+N'' тел.: ''+cast(rq.RequesterPhone as VARCHAR)' +#13#10+
                '					end Addr,' +#13#10+
                '      CASE' +#13#10+
                '           WHEN rq.Location = 1 THEN N''Дом''' +#13#10+
                '           	WHEN rq.Location = 2 THEN N''Квартира''' +#13#10+
                '           	WHEN rq.Location = 3 THEN N''Подъезд''' +#13#10+
                '           	WHEN rq.Location = 4 THEN N''Лестничная клетка''' +#13#10+
                '           	WHEN rq.Location = 5 THEN N''Крыша''' +#13#10+
                '           	WHEN rq.Location = 6 THEN N''Другое''' +#13#10+
                '           	WHEN rq.Location = 7 THEN N''Подвал''' +#13#10+
                '           	WHEN rq.Location = 8 THEN N''Мусоропровод''' +#13#10+
                '           	WHEN rq.Location = 9 THEN N''Территория''' +#13#10+
                '           	WHEN rq.Location = 10 THEN N''Карман''' +#13#10+
                '           	ELSE ''''' +#13#10+
                '            END LocationTitle,' +#13#10+
                '           CASE' +#13#10+
                '           	WHEN rq.[Status] = 1 THEN N''Не рассмотрена''' +#13#10+
                '           	WHEN rq.[Status] = 2 THEN N''В процессе''' +#13#10+
                '           	WHEN rq.[Status] = 3 THEN N''Выполнена''' +#13#10+
                '           	WHEN rq.[Status] = 4 THEN N''Возвращена''' +#13#10+
                '           	WHEN rq.[Status] = 5 THEN N''Снята''' +#13#10+
                '           	WHEN rq.[Status] = 6 THEN N''Закрыта''' +#13#10+
                '           	WHEN rq.[Status] = 7 THEN N''Отложена''' +#13#10+
                '           	WHEN rq.[Status] = 8 THEN N''Текущий ремонт''' +#13#10+
                '           	WHEN rq.[Status] = 9 THEN N''Запрос в службу эксплуатации (СЭ)''' +#13#10+
                '           	ELSE ''''' +#13#10+
                '           END +char(13)+_house_company.Title+' +#13#10+
                '            		case ' +#13#10+
                '            			when rq.CompletedAtUtc is null then ''''' +#13#10+
                '            			else char(13)+ N''Факт. выполнена:''+char(13)+convert(varchar,dbo.GetLocalData(rq.CompletedAtUtc),104)+'' ''+' +#13#10+
                '                convert(varchar,dbo.GetLocalData(rq.CompletedAtUtc),108)' +#13#10+
                '            		end	State,' +#13#10+
                '      rq.RequestBody+char(13)+''__________________________''+char(13)+_last_key_comment.CommentBody NOTE,' +#13#10+
                '      rq.LocalId, rq.[Status], rq.CreatedBy, _created_by.UserName CreatedBy_UserName,' +#13#10+
                '      _created_by.LastName CreatedBy_LastName, _created_by.FirstName CreatedBy_FirstName,' +#13#10+
                '      _created_by.MiddleName CreatedBy_MiddleName, _created_by_company.CompanyId CreatedBy_CompanyId,' +#13#10+
                '      _created_by_company.Title CreatedBy_Company_Title, dbo.GetLocalData(rq.CreatedAtUtc) CreatedAtUtc, ' +#13#10+
                '      dbo.GetLocalData(rq.IssuedAtUtc) IssuedAtUtc, dbo.GetLocalData(rq.DueDateUtc) DueDateUtc,' +#13#10+
                '      dbo.GetLocalData(rq.CompletedAtUtc) CompletedAtUtc, rq.CanceledByCompanyId CanceledByCompany_CompanyId,' +#13#10+
                '      _canceled_by_company.Title CanceledByCompany_Title, rq.CanceledBy CanceledBy_UserId,' +#13#10+
                '      _canceled_by.UserName CanceledBy_UserName, _canceled_by.LastName CanceledBy_LastName,' +#13#10+
                '      _canceled_by.FirstName CanceledBy_FirstName, _canceled_by.MiddleName CanceledBy_MiddleName,' +#13#10+
                '      rq.ClosedByCompanyId ClosedByCompany_CompanyId, _closed_by_company.Title ClosedByCompany_Title,' +#13#10+
                '      rq.ClosedBy ClosedBy_UserId, _closed_by.UserName ClosedBy_UserName,' +#13#10+
                '      _closed_by.LastName ClosedBy_LastName, _closed_by.FirstName ClosedBy_FirstName,' +#13#10+
                '      _closed_by.MiddleName ClosedBy_MiddleName, dbo.GetLocalData(rq.ClosedAtUtc) ClosedAtUtc,' +#13#10+
                '      rq.VerifiedByCompanyId VerifiedByCompany_CompanyId, _verified_by_company.Title VerifiedByCompany_Title,' +#13#10+
                '      rq.VerifiedBy VerifiedBy_UserId, _verified_by.UserName VerifiedBy_UserName,' +#13#10+
                '      _verified_by.LastName VerifiedBy_LastName, _verified_by.FirstName VerifiedBy_FirstName,' +#13#10+
                '      _verified_by.MiddleName VerifiedBy_MiddleName, dbo.GetLocalData(rq.VerifiedAtUtc) VerifiedAtUtc,' +#13#10+
                '      rq.RequesterName, rq.RequesterPhone, rq.Location, rq.JobTypeId, _job_type.Title JobType_Title,' +#13#10+
                '      rq.JobSubtypeId, _job_subtype.Title JobSubtype_Title, rq.HouseId, _house.Title House_Title,' +#13#10+
                '      _street.StreetId, _street.Title Street_Title, rq.Entrance, rq.[Floor], rq.Apartment,' +#13#10+
                '      rq.AccessCode, rq.Extra, rq.IsEmergency, rq.IsPaid, rq.Price, rq.RequestBody,' +#13#10+
                '      rq.LastKeyCommentId, _last_key_comment.CommentBody LastKeyComment_CommentBody,' +#13#10+
                '      rq.WorkCompanyId, _work_company.Title WorkCompany_Title, rq.ExecutorName,' +#13#10+
                '      rq.ExecutorPhoneNumber' +#13#10+
                ' FROM' +#13#10+
                '      Rq_Request rq' +#13#10+
                '      INNER JOIN App_Company _mgmt_company ON _mgmt_company.CompanyId = rq.MgmtCompanyId' +#13#10+
                '      INNER JOIN App_Company _house_company ON _house_company.CompanyId = rq.HouseCompanyId' +#13#10+
                '      INNER JOIN App_User _created_by ON _created_by.UserId = rq.CreatedBy' +#13#10+
                '      LEFT JOIN App_Company _canceled_by_company ON _canceled_by_company.CompanyId = rq.CanceledByCompanyId' +#13#10+
                '      LEFT JOIN App_User _canceled_by ON _canceled_by.UserId = rq.CanceledBy' +#13#10+
                '      LEFT JOIN App_Company _closed_by_company ON _closed_by_company.CompanyId = rq.ClosedByCompanyId' +#13#10+
                '      LEFT JOIN App_User _closed_by ON _closed_by.UserId = rq.ClosedBy' +#13#10+
                '      LEFT JOIN App_Company _verified_by_company ON _verified_by_company.CompanyId = rq.VerifiedByCompanyId' +#13#10+
                '      LEFT JOIN App_User _verified_by ON _verified_by.UserId = rq.VerifiedBy' +#13#10+
                '      INNER JOIN App_Company _created_by_company ON _created_by_company.CompanyId = _created_by.CompanyId' +#13#10+
                '      INNER JOIN Rq_JobType _job_type ON _job_type.JobTypeId = rq.JobTypeId' +#13#10+
                '      LEFT JOIN Rq_JobSubtype _job_subtype ON _job_subtype.JobSubtypeId = rq.JobSubtypeId' +#13#10+
                '      INNER JOIN Geo_House _house ON _house.HouseId = rq.HouseId' +#13#10+
                '      INNER JOIN Geo_Street _street ON _street.StreetId = _house.StreetId' +#13#10+
                '      LEFT JOIN Rq_Comment _last_key_comment ON _last_key_comment.CommentId = rq.LastKeyCommentId' +#13#10+
                '      LEFT JOIN App_Company _work_company ON _work_company.CompanyId = rq.WorkCompanyId';

    InsertComment ='INSERT INTO Rq_Comment' +#13#10+
                    '	(IsDeleted, RequestId, CreatedBy, CreatedAtUtc, [Status], IsSystem, IsEmergency,' +#13#10+
                    '	 ChangeItemsXml, CommentBody, CommentChangeHistoryXml)' +#13#10+
                    'VALUES' +#13#10+
                    '  (0, :RequestId, :CreatedBy, :CreatedAtUtc, :Status, 0, :ABC, N''<ChangeItems />'',' +#13#10+
                    '   :CommentBody, N''<CommentChangeHistory />'');';

    GetUser ='SELECT au.UserId FROM App_User au' +#13#10+
              'WHERE au.IsDeleted = 0 AND au.UserName = :Name';
    Rq_Complette = 'UPDATE Rq_Request SET Status  = 3, CompletedAtUtc = :Data WHERE RequestId = :ID';


implementation

end.
