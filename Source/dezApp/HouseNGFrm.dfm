object HouseNGForm: THouseNGForm
  Left = 0
  Top = 0
  Caption = #1044#1072#1085#1085#1099#1077' '#1085#1077#1078#1080#1083#1086#1075#1086' '#1092#1086#1085#1076#1072' '#1080#1079' 1'#1057
  ClientHeight = 582
  ClientWidth = 759
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
    Width = 759
    Height = 582
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = laf1
    object grd1: TcxGrid
      Left = 267
      Top = 10
      Width = 250
      Height = 200
      TabOrder = 1
      object v1: TcxGridDBTableView
        DataController.DataSource = src_HOUSENGLIST
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00'
            Kind = skSum
            Column = clv1TOTAL
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clv1SN
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clv1NACH
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clv1OPL
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clv1SK
          end
          item
            Format = ',0.00'
            Column = v1Column1
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1HOUSENG: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSENG'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1STNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STNAME'
          Width = 143
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 47
        end
        object clv1KCODE: TcxGridDBColumn
          Caption = #1050#1086#1076' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072' '#1074' 1'#1057
          DataBinding.FieldName = 'KCODE'
          Width = 92
        end
        object clv1INN: TcxGridDBColumn
          Caption = #1048#1053#1053
          DataBinding.FieldName = 'INN'
          Width = 106
        end
        object clv1NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'NAME'
          Width = 146
        end
        object clv1TOTAL: TcxGridDBColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'TOTAL'
          Width = 92
        end
        object clv1SN: TcxGridDBColumn
          Caption = #1057#1072#1083#1100#1076#1086' '#1074#1093#1086#1076#1103#1097#1077#1077
          DataBinding.FieldName = 'SN'
          Width = 98
        end
        object clv1NACH: TcxGridDBColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'NACH'
          Width = 82
        end
        object clv1OPL: TcxGridDBColumn
          Caption = #1054#1087#1083#1072#1090#1099
          DataBinding.FieldName = 'OPL'
          Width = 45
        end
        object clv1SK: TcxGridDBColumn
          Caption = #1057#1072#1083#1100#1076#1086' '#1080#1089#1093#1086#1076#1103#1097#1077#1077
          DataBinding.FieldName = 'SK'
          Width = 103
        end
        object v1Column1: TcxGridDBColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          DataBinding.FieldName = 'Note'
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 10
      Top = 10
      Width = 250
      Height = 200
      TabOrder = 0
      object v2: TcxGridDBTableView
        OnKeyUp = v2KeyUp
        OnCellClick = v2CellClick
        DataController.DataSource = src_HOUSENG
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object clv2CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2M: TcxGridDBColumn
          Caption = #1052#1077#1089#1103#1094
          DataBinding.FieldName = 'M'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownSizeable = True
          Properties.ImmediatePost = True
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
          Width = 142
        end
        object clv2Y: TcxGridDBColumn
          Caption = #1043#1086#1076
          DataBinding.FieldName = 'Y'
          Width = 87
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
    object itm_grd2: TdxLayoutItem
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 239
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object spl1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Layout = clTop
      Parent = grp1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object lkf1: TdxLayoutLookAndFeelList
    Left = 680
    Top = 24
    object laf1: TdxLayoutCxLookAndFeel
    end
  end
  object ds_HOUSENG: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       M, '
      '       Y'
      'FROM HOUSENG')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 64
    Top = 152
  end
  object src_HOUSENG: TDataSource
    DataSet = ds_HOUSENG
    Left = 93
    Top = 152
  end
  object ds_HOUSENGLIST: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE HOUSENGLIST'
      'SET '
      '    HOUSENG = :HOUSENG,'
      '    HOUSE = :HOUSE,'
      '    KCODE = :KCODE,'
      '    INN = :INN,'
      '    NAME = :NAME,'
      '    TOTAL = :TOTAL,'
      '    SN = :SN,'
      '    NACH = :NACH,'
      '    OPL = :OPL,'
      '    SK = :SK'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    HOUSENGLIST'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO HOUSENGLIST('
      '    CODE,'
      '    HOUSENG,'
      '    HOUSE,'
      '    KCODE,'
      '    INN,'
      '    NAME,'
      '    TOTAL,'
      '    SN,'
      '    NACH,'
      '    OPL,'
      '    SK'
      ')'
      'VALUES('
      '    :CODE,'
      '    :HOUSENG,'
      '    :HOUSE,'
      '    :KCODE,'
      '    :INN,'
      '    :NAME,'
      '    :TOTAL,'
      '    :SN,'
      '    :NACH,'
      '    :OPL,'
      '    :SK'
      ')')
    RefreshSQL.Strings = (
      'SELECT hn.CODE, '
      '       hn.HOUSENG, '
      '       hn.HOUSE, s.name StName, h.nomer,'
      '       hn.KCODE, '
      '       hn.INN, '
      '       hn.NAME, '
      '       hn.TOTAL, '
      '       hn.SN, '
      '       hn.NACH, '
      '       hn.OPL, '
      '       hn.SK'
      'FROM HOUSENGLIST hn'
      'left outer join house h on h.code=hn.house'
      'left outer join street s on s.code=h.street'
      'where(  hn.houseng=:mas_code'
      '     ) and (     HN.CODE = :OLD_CODE'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'SELECT hn.CODE, '
      '       hn.HOUSENG, '
      '       hn.HOUSE, s.name StName, h.nomer,'
      '       hn.KCODE,'
      '       hn.DCODE,'
      '       hn.INN, '
      '       hn.NAME, '
      '       hn.TOTAL, '
      '       hn.SN, '
      '       hn.NACH, '
      '       hn.OPL, '
      '       hn.SK,'
      '       hn.Note '
      'FROM HOUSENGLIST hn'
      'left outer join house h on h.code=hn.house'
      'left outer join street s on s.code=h.street')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 312
    Top = 152
    dcForceOpen = True
  end
  object src_HOUSENGLIST: TDataSource
    DataSet = ds_HOUSENGLIST
    Left = 344
    Top = 152
  end
  object m_month: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 48
    Top = 240
  end
  object src_month: TDataSource
    DataSet = m_month
    Left = 80
    Top = 240
  end
  object ppm1: TcxGridPopupMenu
    Grid = grd1
    PopupMenus = <
      item
        GridView = v1
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
    Top = 352
  end
end
