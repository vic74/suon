object GetDogForm: TGetDogForm
  Left = 0
  Top = 0
  Caption = #1042#1099#1073#1086#1088' '#1076#1086#1075#1086#1074#1086#1088#1072
  ClientHeight = 420
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 527
    Height = 420
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object grd1: TcxGrid
      Left = 10
      Top = 10
      Width = 250
      Height = 200
      TabOrder = 0
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = v1CellDblClick
        DataController.DataSource = src_dog
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Width = 50
        end
        object clv1KONTRAGENT: TcxGridDBColumn
          Caption = #1055#1086#1076#1088#1103#1076#1095#1080#1082
          DataBinding.FieldName = 'KONTRAGENT'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              MinWidth = 0
              Width = 0
              FieldName = 'CODE'
            end
            item
              FieldName = 'NAME'
            end>
          Properties.ListFieldIndex = 1
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = src_kontr
          Width = 133
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1053#1086#1084#1077#1088' '#1076#1086#1075#1086#1074#1086#1088#1072
          DataBinding.FieldName = 'NOMER'
          Width = 92
        end
        object clv1D1: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1079#1072#1082#1083#1102#1095#1077#1085#1080#1103
          DataBinding.FieldName = 'D1'
          Width = 99
        end
        object clv1D2: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
          DataBinding.FieldName = 'D2'
          Width = 91
        end
        object clv1AType: TcxGridDBColumn
          Caption = #1058#1080#1087
          DataBinding.FieldName = 'AType'
          Visible = False
          VisibleForCustomization = False
          Width = 94
        end
        object clv1ACTIVE: TcxGridDBColumn
          Caption = #1040#1082#1090#1080#1074#1085#1086#1089#1090#1100
          DataBinding.FieldName = 'ACTIVE'
          Visible = False
          VisibleForCustomization = False
          Width = 71
        end
        object clv1DATA: TcxGridDBColumn
          DataBinding.FieldName = 'DATA'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1house: TcxGridDBColumn
          DataBinding.FieldName = 'house'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1LIVING_SQ: TcxGridDBColumn
          DataBinding.FieldName = 'LIVING_SQ'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1KName: TcxGridDBColumn
          DataBinding.FieldName = 'KName'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grp1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 608
    Top = 360
    object lcl1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 580
    Top = 360
  end
  object ds_dog: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE SRVDOG'
      'SET '
      '    KONTRAGENT = :KONTRAGENT,'
      '    NOMER = :NOMER,'
      '    D1 = :D1,'
      '    D2 = :D2,'
      '    "ACTIVE" = :"ACTIVE",'
      '    DATA = :DATA,'
      '    ATYPE = :ATYPE'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    SRVDOG'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO SRVDOG('
      '    CODE,'
      '    KONTRAGENT,'
      '    NOMER,'
      '    D1,'
      '    D2,'
      '    "ACTIVE",'
      '    DATA,'
      '    ATYPE'
      ')'
      'VALUES('
      '    :CODE,'
      '    :KONTRAGENT,'
      '    :NOMER,'
      '    :D1,'
      '    :D2,'
      '    :"ACTIVE",'
      '    :DATA,'
      '    :ATYPE'
      ')')
    RefreshSQL.Strings = (
      'SELECT sd.CODE, '
      '       sd.KONTRAGENT, '
      '       sd.NOMER, '
      '       sd.D1, '
      '       sd.D2, '
      '       sd."ACTIVE", '
      '       sd.DATA,'
      '       count(sdh.house) house,'
      '       sum(h.living_sq) living_sq,'
      '       sd.atype'
      'FROM SRVDOG sd'
      'left outer join srvdoghouse sdh on sdh.srvdog=sd.code'
      'left outer join house h on h.code=sdh.house'
      ''
      ' WHERE '
      '        SD.CODE = :OLD_CODE'
      '    '
      'group by sd.CODE,sd.KONTRAGENT,sd.NOMER,sd.D1,'
      '         sd.D2,sd."ACTIVE",sd.DATA,sd.atype')
    SelectSQL.Strings = (
      'SELECT sd.CODE, '
      '       sd.KONTRAGENT,k.NAME KName, '
      '       sd.NOMER, '
      '       sd.D1, '
      '       sd.D2, '
      '       sd."ACTIVE", '
      '       sd.DATA,'
      '       count(sdh.house) house,'
      '       sum(h.living_sq) living_sq,'
      '       sd.atype'
      'FROM SRVDOG sd'
      'left outer join srvdoghouse sdh on sdh.srvdog=sd.code'
      'left outer join house h on h.code=sdh.house'
      'left outer join KONTRAGENT k on k.code=sd.KONTRAGENT'
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 96
    Top = 216
  end
  object src_dog: TDataSource
    DataSet = ds_dog
    Left = 124
    Top = 216
  end
  object ds_kontr: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, NAME FROM KONTRAGENT')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 96
    Top = 168
  end
  object src_kontr: TDataSource
    DataSet = ds_kontr
    Left = 124
    Top = 168
  end
end
