object com_dm: Tcom_dm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 545
  Width = 677
  object ds_worker: TpFIBDataSet
    CachedUpdates = True
    UpdateSQL.Strings = (
      'UPDATE WORKER'
      'SET '
      '    KONTRAGENT = :KONTRAGENT,'
      '    PIPLE = :PIPLE,'
      '    AROLE = :AROLE'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    WORKER'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO WORKER('
      '    CODE,'
      '    KONTRAGENT,'
      '    PIPLE,'
      '    AROLE'
      ')'
      'VALUES('
      '    :CODE,'
      '    :KONTRAGENT,'
      '    :PIPLE,'
      '    :AROLE'
      ')')
    RefreshSQL.Strings = (
      'SELECT w.CODE, '
      '       w.KONTRAGENT, '
      '       w.PIPLE,'
      '       (p.f||'#39' '#39'||p.i||'#39' '#39'||p.o) fio,'
      '       w.AROLE'
      'FROM WORKER w'
      'left outer join PIPLE p on p.code=w.piple'
      ''
      ' WHERE '
      '        W.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT w.CODE, '
      '       w.KONTRAGENT, '
      '       w.PIPLE,'
      '       (p.f||'#39' '#39'||p.i||'#39' '#39'||p.o) fio,'
      '       w.AROLE'
      'FROM WORKER w'
      'left outer join PIPLE p on p.code=w.piple'
      'Where w.code<>9')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 16
    Top = 32
  end
  object ds_kategory: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME'
      'from KATEGORY')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 16
    Top = 112
  end
  object src_kat: TDataSource
    DataSet = ds_kategory
    Left = 48
    Top = 112
  end
  object src_worker: TDataSource
    DataSet = ds_worker
    Left = 44
    Top = 32
  end
  object vrep1: TcxGridViewRepository
    Left = 112
    Top = 72
    object v_worker: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = src_worker
      DataController.KeyFieldNames = 'CODE'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      OptionsView.Header = False
      object cl_houseCODE: TcxGridDBColumn
        Caption = #1050#1086#1076
        DataBinding.FieldName = 'CODE'
        Visible = False
        VisibleForCustomization = False
      end
      object cl_houseKONTRAGENT: TcxGridDBColumn
        Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
        DataBinding.FieldName = 'KONTRAGENT'
        Visible = False
        VisibleForCustomization = False
      end
      object cl_housePIPLE: TcxGridDBColumn
        DataBinding.FieldName = 'PIPLE'
        Visible = False
        VisibleForCustomization = False
      end
      object cl_houseFIO: TcxGridDBColumn
        Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
        DataBinding.FieldName = 'FIO'
      end
      object cl_houseAROLE: TcxGridDBColumn
        DataBinding.FieldName = 'AROLE'
        Visible = False
        VisibleForCustomization = False
      end
    end
    object v_house: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = src_house
      DataController.KeyFieldNames = 'FIO'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object clhouseCODE: TcxGridDBColumn
        DataBinding.FieldName = 'CODE'
        Visible = False
        VisibleForCustomization = False
      end
      object clhouseNOMER: TcxGridDBColumn
        DataBinding.FieldName = 'NOMER'
        Visible = False
        VisibleForCustomization = False
      end
      object clhouseSTREET: TcxGridDBColumn
        DataBinding.FieldName = 'STREET'
        Visible = False
        VisibleForCustomization = False
      end
      object clhouseSTREETNAME: TcxGridDBColumn
        DataBinding.FieldName = 'STREETNAME'
        Visible = False
        VisibleForCustomization = False
      end
      object clhouseDU: TcxGridDBColumn
        DataBinding.FieldName = 'DU'
        Visible = False
        VisibleForCustomization = False
      end
      object clhouseDUNAME: TcxGridDBColumn
        Caption = #1044#1086#1084#1086#1091#1087#1088#1072#1074#1083#1077#1085#1080#1077
        DataBinding.FieldName = 'DUNAME'
      end
      object clhouseTOTAL_SQ: TcxGridDBColumn
        DataBinding.FieldName = 'TOTAL_SQ'
        Visible = False
        VisibleForCustomization = False
      end
      object clhouseLIVING_SQ: TcxGridDBColumn
        DataBinding.FieldName = 'LIVING_SQ'
        Visible = False
        VisibleForCustomization = False
      end
      object clhouseLODGER_CNT: TcxGridDBColumn
        DataBinding.FieldName = 'LODGER_CNT'
        Visible = False
        VisibleForCustomization = False
      end
    end
    object v_ServisMaterial: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = src_ServisMaterial
      DataController.KeyFieldNames = 'CODE'
      DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.ImmediateEditor = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.Indicator = True
      Styles.Group = cxstyl1
      object cl_ServisMaterial_CODE: TcxGridDBColumn
        DataBinding.FieldName = 'CODE'
        Visible = False
        VisibleForCustomization = False
      end
      object cl_ServisMaterial_KSERVISMATERIAL: TcxGridDBColumn
        DataBinding.FieldName = 'KSERVISMATERIAL'
        Visible = False
        VisibleForCustomization = False
      end
      object cl_ServisMaterial_GROOP: TcxGridDBColumn
        Caption = #1043#1088#1091#1087#1087#1072
        DataBinding.FieldName = 'GROOP'
        Visible = False
        SortIndex = 0
        SortOrder = soAscending
        VisibleForCustomization = False
      end
      object cl_ServisMaterial_NAME: TcxGridDBColumn
        Caption = #1052#1072#1090#1077#1088#1080#1072#1083
        DataBinding.FieldName = 'NAME'
        Width = 243
      end
      object cl_ServisMaterial_ED: TcxGridDBColumn
        Caption = #1045#1076'.'#1080#1079#1084'.'
        DataBinding.FieldName = 'ED'
        Width = 84
      end
      object cl_ServisMaterial_PRICE: TcxGridDBColumn
        Caption = #1062#1077#1085#1072
        DataBinding.FieldName = 'PRICE'
        Width = 93
      end
    end
    object v_SHOWPRIKAZ: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = src_SHOWPRIKAZ
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object cl_SP_CODE: TcxGridDBColumn
        DataBinding.FieldName = 'CODE'
        Visible = False
        VisibleForCustomization = False
      end
      object cl_SP_NUM: TcxGridDBColumn
        Caption = #1053#1086#1084#1077#1088' '#1087#1088#1080#1082#1072#1079#1072
        DataBinding.FieldName = 'NUM'
        Width = 76
      end
      object cl_SP_DATA: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1087#1088#1080#1082#1072#1079#1072
        DataBinding.FieldName = 'DATA'
        Width = 83
      end
      object cl_SP_SHOWTYPE: TcxGridDBColumn
        Caption = #1058#1080#1087
        DataBinding.FieldName = 'SHOWTYPE'
        Visible = False
        VisibleForCustomization = False
      end
      object cl_SP_SHNAME: TcxGridDBColumn
        Caption = #1058#1080#1087
        DataBinding.FieldName = 'SHNAME'
        Width = 76
      end
      object cl_SP_GENDIR: TcxGridDBColumn
        Caption = #1043#1077#1085'.'#1076#1080#1088#1077#1082#1090#1086#1088
        DataBinding.FieldName = 'GENDIR'
        Width = 141
      end
      object cl_SP_CHIEFOE: TcxGridDBColumn
        Caption = #1043#1083#1072#1074#1072' '#1086#1090#1076#1077#1083#1072' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1080
        DataBinding.FieldName = 'CHIEFOE'
        Width = 171
      end
      object cl_SP_CHIEFTO: TcxGridDBColumn
        Caption = #1058#1077#1093#1085#1080#1095#1077#1089#1082#1080#1081' '#1076#1080#1088#1077#1082#1090#1086#1088
        DataBinding.FieldName = 'CHIEFTO'
        Width = 172
      end
    end
  end
  object ds_house: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE HOUSE'
      'SET '
      '    NOMER = :NOMER,'
      '    STREET = :STREET,'
      '    DU = :DU,'
      '    TOTAL_SQ = :TOTAL_SQ,'
      '    LIVING_SQ = :LIVING_SQ,'
      '    LODGER_CNT = :LODGER_CNT,'
      '    CELLAR_SQ = :CELLAR_SQ,'
      '    FLAT_CNT = :FLAT_CNT,'
      '    ACCCODE_CNT = :ACCCODE_CNT,'
      '    FLOOR_CNT = :FLOOR_CNT,'
      '    LIFT_CNT = :LIFT_CNT,'
      '    ENTRANCE_CNT = :ENTRANCE_CNT,'
      '    GARBAGE_CNT = :GARBAGE_CNT,'
      '    COMMERCE_SQ = :COMMERCE_SQ,'
      '    BUILDYEAR = :BUILDYEAR,'
      '    "ACTIVE" = :"ACTIVE",'
      '    BUDGET = :BUDGET,'
      '    MSE = :MSE'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    HOUSE'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO HOUSE('
      '    CODE,'
      '    NOMER,'
      '    STREET,'
      '    DU,'
      '    TOTAL_SQ,'
      '    LIVING_SQ,'
      '    LODGER_CNT,'
      '    CELLAR_SQ,'
      '    FLAT_CNT,'
      '    ACCCODE_CNT,'
      '    FLOOR_CNT,'
      '    LIFT_CNT,'
      '    ENTRANCE_CNT,'
      '    GARBAGE_CNT,'
      '    COMMERCE_SQ,'
      '    BUILDYEAR,'
      '    "ACTIVE",'
      '    BUDGET,'
      '    MSE'
      ')'
      'VALUES('
      '    :CODE,'
      '    :NOMER,'
      '    :STREET,'
      '    :DU,'
      '    :TOTAL_SQ,'
      '    :LIVING_SQ,'
      '    :LODGER_CNT,'
      '    :CELLAR_SQ,'
      '    :FLAT_CNT,'
      '    :ACCCODE_CNT,'
      '    :FLOOR_CNT,'
      '    :LIFT_CNT,'
      '    :ENTRANCE_CNT,'
      '    :GARBAGE_CNT,'
      '    :COMMERCE_SQ,'
      '    :BUILDYEAR,'
      '    :"ACTIVE",'
      '    :BUDGET,'
      '    :MSE'
      ')')
    RefreshSQL.Strings = (
      'SELECT h.CODE, '
      '       h.NOMER, '
      '       h.STREET,s.name StreetName,'
      '       h.DU,d.name DuName,'
      '       h.TOTAL_SQ, '
      '       h.LIVING_SQ, '
      '       h.LODGER_CNT, '
      '       h.CELLAR_SQ, '
      '       h.FLAT_CNT, '
      '       h.ACCCODE_CNT, '
      '       h.FLOOR_CNT, '
      '       h.LIFT_CNT, '
      '       h.ENTRANCE_CNT, '
      '       h.GARBAGE_CNT, '
      '       h.COMMERCE_SQ, '
      '       h.BUILDYEAR, '
      '       h."ACTIVE", '
      '       h.BUDGET,b.name BUDGETName,'
      '       h.mse,'
      '       (s.name||'#39' '#39'||h.nomer) addres'
      'FROM HOUSE h'
      'left outer join street s on h.street=s.code'
      'left outer join du d on h.du=d.code'
      'left outer join budgetshablon b on h.budget=b.code'
      ' WHERE '
      '        H.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT h.CODE, '
      '       h.NOMER, '
      '       h.STREET,s.name StreetName,'
      '       h.DU,d.name DuName,'
      '       h.TOTAL_SQ, '
      '       h.LIVING_SQ, '
      '       h.LODGER_CNT, '
      '       h.CELLAR_SQ, '
      '       h.FLAT_CNT, '
      '       h.ACCCODE_CNT, '
      '       h.FLOOR_CNT, '
      '       h.LIFT_CNT, '
      '       h.ENTRANCE_CNT, '
      '       h.GARBAGE_CNT, '
      '       h.COMMERCE_SQ, '
      '       h.BUILDYEAR, '
      '       h."ACTIVE", '
      '       h.BUDGET,b.name BUDGETName,'
      '       h.mse,'
      '       (s.name||'#39' '#39'||h.nomer) addres'
      'FROM HOUSE h'
      'left outer join street s on h.street=s.code'
      'left outer join du d on h.du=d.code'
      'left outer join budgetshablon b on h.budget=b.code')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 16
    Top = 168
  end
  object src_house: TDataSource
    DataSet = ds_house
    Left = 48
    Top = 168
  end
  object ds_ServisMaterial: TpFIBDataSet
    SelectSQL.Strings = (
      
        'select SM.CODE, SM.KSERVISMATERIAL,ksm.name Groop, SM.NAME, SM.E' +
        'D, SM.PRICE'
      'from SERVISMATERIAL SM'
      
        'left outer join kservismaterial ksm on ksm.code=sm.kservismateri' +
        'al'
      'ORDER BY SM.KSERVISMATERIAL, SM.NAME')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 16
    Top = 216
  end
  object src_ServisMaterial: TDataSource
    DataSet = ds_ServisMaterial
    Left = 44
    Top = 216
  end
  object stl1: TcxStyleRepository
    PixelsPerInch = 96
    object cxstyl1: TcxStyle
      AssignedValues = [svColor]
      Color = clSkyBlue
    end
  end
  object ds_street: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    CODE,'
      '    NAME'
      'FROM'
      '    STREET '
      'order by name')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 224
    Top = 112
  end
  object src_street: TDataSource
    DataSet = ds_street
    Left = 251
    Top = 112
  end
  object ds_KONTRAGENT: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       NAME'
      'FROM KONTRAGENT')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 224
    Top = 160
  end
  object src_KONTRAGENT: TDataSource
    DataSet = ds_KONTRAGENT
    Left = 252
    Top = 160
  end
  object ds_SHOWPRIKAZ: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT sp.CODE,'
      '       sp.NUM, '
      '       sp.DATA, '
      '       sp.SHOWTYPE,'
      '        case'
      '           when sp.SHOWTYPE = 0 then '#39#1074#1077#1089#1085#1072#39
      '           when sp.SHOWTYPE = 1 then '#39#1086#1089#1077#1085#1100#39
      '          else '#39#39
      '        end SHName,'
      '       sp.GENDIR, '
      '       sp.CHIEFOE, '
      '       sp.CHIEFTO'
      'FROM SHOWPRIKAZ sp')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 224
    Top = 216
  end
  object src_SHOWPRIKAZ: TDataSource
    DataSet = ds_SHOWPRIKAZ
    Left = 252
    Top = 216
  end
  object m_month: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 8
    Top = 272
  end
  object src_month: TDataSource
    DataSet = m_month
    Left = 40
    Top = 272
  end
  object ds_SRVDOG: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT sd.CODE, '
      '       sd.KONTRAGENT, '
      '       sd.NOMER, '
      '       sd.D1, '
      '       sd.D2, '
      '       sd."ACTIVE", '
      '       sd.DATA, '
      '       sd.ATYPE, '
      '       sd.NUM'
      'FROM SRVDOG sd')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 224
    Top = 280
  end
  object src_SRVDOG: TDataSource
    DataSet = ds_SRVDOG
    Left = 252
    Top = 280
  end
  object ds_DOGIMMKD_TYPE: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME'
      'from DOGIMMKD_TYPE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 320
    Top = 40
  end
  object ds_DOGIMMKD_RTYPE: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME'
      'from DOGIMMKD_RTYPE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 320
    Top = 80
  end
  object ds_DOGIMMKD_STYPE: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME'
      'from DOGIMMKD_STYPE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 320
    Top = 120
  end
  object src_DOGIMMKD_TYPE: TDataSource
    DataSet = ds_DOGIMMKD_TYPE
    Left = 348
    Top = 40
  end
  object src_DOGIMMKD_RTYPE: TDataSource
    DataSet = ds_DOGIMMKD_RTYPE
    Left = 348
    Top = 80
  end
  object src_DOGIMMKD_STYPE: TDataSource
    DataSet = ds_DOGIMMKD_STYPE
    Left = 348
    Top = 120
  end
end
