object HousePrvForm: THousePrvForm
  Left = 0
  Top = 0
  Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103' '#1087#1086' '#1076#1086#1084#1072#1084' '#1055#1059' '#1076#1072#1085#1085#1099#1077
  ClientHeight = 590
  ClientWidth = 760
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
    Width = 760
    Height = 590
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
        DataController.DataSource = src_HousePrv
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
              FieldName = 'CODE'
            end
            item
              FieldName = 'NAME'
            end>
          Properties.ListFieldIndex = 1
          Properties.ListSource = src_month
          Width = 165
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
      Left = 242
      Top = 10
      Width = 250
      Height = 200
      TabOrder = 1
      object v2: TcxGridDBTableView
        DataController.DataSource = src_HousePrvList
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems.OnSummary = v2DataControllerSummaryFooterSummaryItemsSummary
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00'
            Kind = skSum
            Column = clv2HOUSESRV
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clv2SALDO_IN
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clv2CHARGE_PRI
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clv2PAY
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clv2PRIV_MAKET
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clv2REPAY
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clv2PRIVILEGE
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clv2MAKET
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clv2SALDO_OUT
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clv2CHARGE_100
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clv2HOUSE
          end
          item
            Kind = skCount
            Column = clv2STNAME
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        object clv2CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2A: TcxGridDBColumn
          DataBinding.FieldName = 'A'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 44
          IsCaptionAssigned = True
        end
        object clv2STNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STNAME'
          Width = 136
        end
        object clv2NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 36
        end
        object clvDUName: TcxGridDBColumn
          Caption = #1044#1059
          DataBinding.FieldName = 'DUName'
          Width = 90
        end
        object clv2HOUSEPRV: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSEPRV'
          Visible = False
          VisibleForCustomization = False
          Width = 100
        end
        object clv2SRVNAME: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1091#1089#1083#1091#1075#1080'.'
          DataBinding.FieldName = 'SRVNAME'
          Width = 232
        end
        object clv2HOUSESRV: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSESRV'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2SALDO_IN: TcxGridDBColumn
          Caption = #1042#1093#1086#1076#1103#1097#1077#1077' '#1089#1072#1083#1100#1076#1086
          DataBinding.FieldName = 'SALDO_IN'
          Width = 98
        end
        object clv2CHARGE_PRI: TcxGridDBColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'CHARGE_PRI'
          Width = 90
        end
        object clv2PAY: TcxGridDBColumn
          Caption = #1054#1087#1083#1072#1090#1099
          DataBinding.FieldName = 'PAY'
          Width = 90
        end
        object clv2PRIV_MAKET: TcxGridDBColumn
          DataBinding.FieldName = 'PRIV_MAKET'
          Width = 90
        end
        object clv2REPAY: TcxGridDBColumn
          DataBinding.FieldName = 'REPAY'
          Width = 90
        end
        object clv2PRIVILEGE: TcxGridDBColumn
          DataBinding.FieldName = 'PRIVILEGE'
          Width = 90
        end
        object clv2MAKET: TcxGridDBColumn
          DataBinding.FieldName = 'MAKET'
          Width = 90
        end
        object clv2SALDO_OUT: TcxGridDBColumn
          Caption = #1048#1089#1093#1086#1076#1103#1097#1077#1077' '#1089#1072#1083#1100#1076#1086
          DataBinding.FieldName = 'SALDO_OUT'
          Width = 101
        end
        object clv2CHARGE_100: TcxGridDBColumn
          DataBinding.FieldName = 'CHARGE_100'
          Width = 90
        end
        object clv2HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
          Width = 90
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
      SizeOptions.Width = 226
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
    Left = 696
    Top = 48
    object laf1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = v2
        Properties.Strings = (
          'OptionsView.Footer'
          'OptionsView.GroupByBox')
      end>
    StorageName = 'prop1'
    Left = 668
    Top = 48
  end
  object ds_HousePrv: TpFIBDataSet
    SelectSQL.Strings = (
      ' SELECT CODE, '
      '        M, '
      '        Y'
      ' FROM HOUSEPRV')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 80
    Top = 96
  end
  object src_HousePrv: TDataSource
    DataSet = ds_HousePrv
    Left = 112
    Top = 96
  end
  object ds_HousePrvList: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE HOUSEPRVLIST'
      'SET '
      '    HOUSEPRV = :HOUSEPRV,'
      '    HOUSESRV = :HOUSESRV,'
      '    CHARGE_PRI = :CHARGE_PRI,'
      '    PAY = :PAY,'
      '    PRIV_MAKET = :PRIV_MAKET,'
      '    SALDO_OUT = :SALDO_OUT,'
      '    SALDO_IN = :SALDO_IN,'
      '    REPAY = :REPAY,'
      '    PRIVILEGE = :PRIVILEGE,'
      '    MAKET = :MAKET,'
      '    CHARGE_100 = :CHARGE_100,'
      '    HOUSE = :HOUSE'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    HOUSEPRVLIST'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO HOUSEPRVLIST('
      '    CODE,'
      '    HOUSEPRV,'
      '    HOUSESRV,'
      '    CHARGE_PRI,'
      '    PAY,'
      '    PRIV_MAKET,'
      '    SALDO_OUT,'
      '    SALDO_IN,'
      '    REPAY,'
      '    PRIVILEGE,'
      '    MAKET,'
      '    CHARGE_100,'
      '    HOUSE'
      ')'
      'VALUES('
      '    :CODE,'
      '    :HOUSEPRV,'
      '    :HOUSESRV,'
      '    :CHARGE_PRI,'
      '    :PAY,'
      '    :PRIV_MAKET,'
      '    :SALDO_OUT,'
      '    :SALDO_IN,'
      '    :REPAY,'
      '    :PRIVILEGE,'
      '    :MAKET,'
      '    :CHARGE_100,'
      '    :HOUSE'
      ')')
    RefreshSQL.Strings = (
      'SELECT hp.CODE, '
      '       hp.HOUSEPRV, hs.name SRVName,'
      '       hp.HOUSESRV,'
      '       d.Name DUName, '
      '       hp.CHARGE_PRI, '
      '       hp.PAY, '
      '       hp.PRIV_MAKET, '
      '       hp.SALDO_OUT, '
      '       hp.SALDO_IN, '
      '       hp.REPAY, '
      '       hp.PRIVILEGE, '
      '       hp.MAKET, '
      '       hp.CHARGE_100, '
      '       hp.HOUSE,h.nomer,s.name StName'
      'FROM HOUSEPRVLIST hp'
      'left outer join house h on h.code=hp.house'
      'left outer join street s on s.code=h.street'
      'left outer join housesrv hs on hs.code=hp.housesrv'
      'left outer join DU d on d.Code=h.DU'
      ''
      ' WHERE '
      '        HP.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT hp.CODE, '
      '       hp.HOUSEPRV, hs.name SRVName,'
      '       hp.HOUSESRV,'
      '       d.Name DUName, '
      '       hp.CHARGE_PRI, '
      '       hp.PAY, '
      '       hp.PRIV_MAKET, '
      '       hp.SALDO_OUT, '
      '       hp.SALDO_IN, '
      '       hp.REPAY, '
      '       hp.PRIVILEGE, '
      '       hp.MAKET, '
      '       hp.CHARGE_100, '
      '       hp.HOUSE,h.nomer,s.name StName,'
      '       h.A'
      'FROM HOUSEPRVLIST hp'
      'left outer join house h on h.code=hp.house'
      'left outer join street s on s.code=h.street'
      'left outer join housesrv hs on hs.code=hp.housesrv'
      'left outer join DU d on d.Code=h.DU')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 304
    Top = 96
  end
  object src_HousePrvList: TDataSource
    DataSet = ds_HousePrvList
    Left = 336
    Top = 96
  end
  object m_month: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 80
    Top = 152
  end
  object src_month: TDataSource
    DataSet = m_month
    Left = 112
    Top = 152
  end
  object ppm1: TcxGridPopupMenu
    Grid = grd2
    PopupMenus = <>
    AlwaysFireOnPopup = True
    Left = 672
    Top = 96
  end
  object ppm2: TcxGridPopupMenu
    Grid = grd2
    PopupMenus = <
      item
        HitTypes = [gvhtCell, gvhtRecord]
        Index = 0
      end>
    Left = 456
    Top = 312
  end
  object pm1: TPopupMenu
    Left = 488
    Top = 312
    object Excel1: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      OnClick = Excel1Click
    end
  end
  object dlgSave1: TSaveDialog
    Filter = 'Excel|*.xls'
    Left = 520
    Top = 368
  end
end
