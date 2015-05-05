object HouseRecvForm: THouseRecvForm
  Left = 0
  Top = 0
  Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1076#1086#1084#1086#1074' '#1055#1059
  ClientHeight = 612
  ClientWidth = 722
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 722
    Height = 612
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = laf1
    object grd1: TcxGrid
      Left = 10
      Top = 10
      Width = 250
      Height = 200
      TabOrder = 0
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        OnCellClick = v1CellClick
        DataController.DataSource = src_HOUSERECV
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1M: TcxGridDBColumn
          Caption = #1052#1077#1089#1103#1094
          DataBinding.FieldName = 'M'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
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
          Properties.ListSource = src_month
          Width = 157
        end
        object clv1Y: TcxGridDBColumn
          Caption = #1043#1086#1076
          DataBinding.FieldName = 'Y'
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 241
      Top = 10
      Width = 250
      Height = 200
      TabOrder = 1
      object v2: TcxGridDBTableView
        DataController.DataSource = src_HOUSERECVLIST
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv2STNAME
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        object clv2CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2HOUSERECV: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSERECV'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2STNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STNAME'
          Options.Editing = False
          Width = 137
        end
        object clv2NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Options.Editing = False
          Width = 32
        end
        object clv2FLOOR_COUNT: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086' '#1101#1090#1072#1078#1077#1081'.'
          DataBinding.FieldName = 'FLOOR_COUNT'
          Width = 75
        end
        object clv2ACC_CNT: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086' '#1083'/'#1089'.'
          DataBinding.FieldName = 'ACC_CNT'
        end
        object clv2LODGER_CNT: TcxGridDBColumn
          Caption = #1063#1080#1089#1083#1086' '#1087#1088#1086#1087#1080#1089#1072#1085#1085#1099#1093'.'
          DataBinding.FieldName = 'LODGER_CNT'
          Width = 78
        end
        object clv2TOT_SPACE: TcxGridDBColumn
          Caption = #1054#1073#1097#1072#1103' '#1087#1083#1086#1097#1072#1076#1100'.'
          DataBinding.FieldName = 'TOT_SPACE'
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object itm_grd1: TdxLayoutItem
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 225
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_grd2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Layout = clTop
      Parent = grp1
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object lkf1: TdxLayoutLookAndFeelList
    Left = 648
    Top = 104
    object laf1: TdxLayoutCxLookAndFeel
    end
  end
  object ds_HOUSERECV: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       M, '
      '       Y'
      'FROM HOUSERECV')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 64
    Top = 168
  end
  object src_HOUSERECV: TDataSource
    DataSet = ds_HOUSERECV
    Left = 93
    Top = 168
  end
  object ds_HOUSERECVLIST: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE HOUSERECVLIST'
      'SET '
      '    HOUSERECV = :HOUSERECV,'
      '    HOUSE = :HOUSE,'
      '    FLOOR_COUNT = :FLOOR_COUNT,'
      '    ACC_CNT = :ACC_CNT,'
      '    LODGER_CNT = :LODGER_CNT,'
      '    TOT_SPACE = :TOT_SPACE'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    HOUSERECVLIST'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO HOUSERECVLIST('
      '    CODE,'
      '    HOUSERECV,'
      '    HOUSE,'
      '    FLOOR_COUNT,'
      '    ACC_CNT,'
      '    LODGER_CNT,'
      '    TOT_SPACE'
      ')'
      'VALUES('
      '    :CODE,'
      '    :HOUSERECV,'
      '    :HOUSE,'
      '    :FLOOR_COUNT,'
      '    :ACC_CNT,'
      '    :LODGER_CNT,'
      '    :TOT_SPACE'
      ')')
    RefreshSQL.Strings = (
      'SELECT hr.CODE, '
      '       hr.HOUSERECV, '
      '       hr.HOUSE,h.nomer, s.name StName,'
      '       hr.FLOOR_COUNT, '
      '       hr.ACC_CNT, '
      '       hr.LODGER_CNT, '
      '       hr.TOT_SPACE'
      'FROM HOUSERECVLIST hr'
      'left outer join house h on h.code=hr.house'
      'left outer join street s on s.code=h.street'
      ' WHERE '
      '        HR.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT hr.CODE, '
      '       hr.HOUSERECV, '
      '       hr.HOUSE,h.nomer, s.name StName,'
      '       hr.FLOOR_COUNT, '
      '       hr.ACC_CNT, '
      '       hr.LODGER_CNT, '
      '       hr.TOT_SPACE'
      'FROM HOUSERECVLIST hr'
      'left outer join house h on h.code=hr.house'
      'left outer join street s on s.code=h.street')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 304
    Top = 176
  end
  object src_HOUSERECVLIST: TDataSource
    DataSet = ds_HOUSERECVLIST
    Left = 336
    Top = 176
  end
  object prop1: TcxPropertiesStore
    Active = False
    Components = <>
    StorageName = 'prop1'
    Left = 616
    Top = 104
  end
  object m_month: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 64
    Top = 200
  end
  object src_month: TDataSource
    DataSet = m_month
    Left = 96
    Top = 200
  end
end
