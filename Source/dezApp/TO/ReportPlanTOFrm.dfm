object ReportPlanTOForm: TReportPlanTOForm
  Left = 0
  Top = 0
  Caption = #1055#1083#1072#1085' '#1058#1054' ('#1086#1090#1095#1077#1090')'
  ClientHeight = 694
  ClientWidth = 927
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
    Width = 927
    Height = 694
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    ExplicitWidth = 858
    ExplicitHeight = 588
    object grd1: TcxGrid
      Left = 10
      Top = 91
      Width = 863
      Height = 528
      TabOrder = 5
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_RepTO
        DataController.Filter.Active = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00'
            Kind = skSum
            Column = clv1SUM1
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clv1SUM2
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clv1SUM3
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clv1SUM4
          end
          item
            Format = '0.00;-0.00'
            Column = clv1FIO
          end
          item
            Format = ',0.00'
            Kind = skSum
            VisibleForCustomization = False
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clv1sumFact
            VisibleForCustomization = False
          end
          item
            Format = ',0.00'
            Kind = skSum
            VisibleForCustomization = False
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clv1SUMY
          end
          item
            Kind = skCount
            Column = clv1STREETNAME
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnSorting = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
        end
        object clv1Y: TcxGridDBColumn
          DataBinding.FieldName = 'Y'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1STREETNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STREETNAME'
          HeaderAlignmentHorz = taCenter
          Options.CellMerging = True
          Width = 145
        end
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
          Width = 43
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          HeaderAlignmentHorz = taCenter
          Options.CellMerging = True
          Width = 41
        end
        object clv1KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1KONTNAME: TcxGridDBColumn
          Caption = #1055#1086#1076#1088#1103#1076#1085#1072#1103' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'KONTNAME'
          HeaderAlignmentHorz = taCenter
          Width = 145
        end
        object clv1MLIST: TcxGridDBColumn
          DataBinding.FieldName = 'MLIST'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1MLISTNAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'MLISTNAME'
          HeaderAlignmentHorz = taCenter
          Width = 137
        end
        object clv1SUMY: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1085#1072' '#1075#1086#1076
          DataBinding.FieldName = 'SUMY'
          HeaderAlignmentHorz = taCenter
          Width = 98
        end
        object clv1sumFact: TcxGridDBColumn
          Caption = #1060#1072#1082#1090#1080#1095#1077#1089#1082#1072#1103' '#1089#1091#1084#1084#1072
          DataBinding.FieldName = 'sumFact'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.CellMerging = True
          VisibleForCustomization = False
          Width = 74
        end
        object clv1SUM1: TcxGridDBColumn
          Caption = '1-'#1081' '#1082#1074#1072#1088#1090#1072#1083
          DataBinding.FieldName = 'SUM1'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 77
        end
        object clv1SUM2: TcxGridDBColumn
          Caption = '2-'#1081' '#1082#1074#1072#1088#1090#1072#1083
          DataBinding.FieldName = 'SUM2'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 80
        end
        object clv1SUM3: TcxGridDBColumn
          Caption = '3-'#1081' '#1082#1074#1072#1088#1090#1072#1083
          DataBinding.FieldName = 'SUM3'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 76
        end
        object clv1SUM4: TcxGridDBColumn
          Caption = '4-'#1081' '#1082#1074#1072#1088#1090#1072#1083
          DataBinding.FieldName = 'SUM4'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 77
        end
        object clv1FSUM1: TcxGridDBColumn
          DataBinding.FieldName = 'FSUM1'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1FSUM2: TcxGridDBColumn
          DataBinding.FieldName = 'FSUM2'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1FSUM3: TcxGridDBColumn
          DataBinding.FieldName = 'FSUM3'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1FSUM4: TcxGridDBColumn
          DataBinding.FieldName = 'FSUM4'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1MANAGER: TcxGridDBColumn
          Caption = #1052#1077#1085#1077#1076#1078#1077#1088' ('#1050#1086#1076')'
          DataBinding.FieldName = 'MANAGER'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1FIO: TcxGridDBColumn
          Caption = #1048#1085#1078#1077#1085#1077#1088
          DataBinding.FieldName = 'FIO'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 143
        end
        object clv1SHOWCODE: TcxGridDBColumn
          DataBinding.FieldName = 'SHOWCODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SRVDOG: TcxGridDBColumn
          DataBinding.FieldName = 'SRVDOG'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1WORKER: TcxGridDBColumn
          DataBinding.FieldName = 'WORKER'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1STATE: TcxGridDBColumn
          DataBinding.FieldName = 'STATE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1NOTE: TcxGridDBColumn
          Caption = #1044#1086#1087'. '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
          DataBinding.FieldName = 'NOTE'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 222
        end
        object clv1FIRM: TcxGridDBColumn
          DataBinding.FieldName = 'FIRM'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object cbb_Y: TcxComboBox
      Left = 72
      Top = 10
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020')
      Style.HotTrack = False
      TabOrder = 0
      Width = 93
    end
    object cbb_street: TcxLookupComboBox
      Left = 207
      Top = 10
      Properties.DropDownSizeable = True
      Properties.DropDownWidth = 180
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_street
      Style.HotTrack = False
      TabOrder = 1
      Width = 198
    end
    object cbb_kontr: TcxLookupComboBox
      Left = 72
      Top = 37
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_kontr
      Properties.OnEditValueChanged = cbb_kontrPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 2
      Width = 145
    end
    object cbb_manager: TcxLookupComboBox
      Left = 72
      Top = 64
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'FIO'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_worker
      Style.HotTrack = False
      TabOrder = 3
      Width = 145
    end
    object btn_Exec: TcxButton
      Left = 410
      Top = 60
      Width = 117
      Height = 25
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 4
      OnClick = btn_ExecClick
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lGrplc1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object lGrplc1Group2: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'New Group'
      Parent = lGrplc1Group3
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lGrplc1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object litm_lc1Item1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item11: TdxLayoutItem
      CaptionOptions.Text = #1043#1086#1076
      Parent = lGrplc1Group2
      Control = cbb_Y
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item2: TdxLayoutItem
      CaptionOptions.Text = #1059#1083#1080#1094#1072
      Parent = lGrplc1Group2
      Control = cbb_street
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litm_lc1Item12: TdxLayoutItem
      CaptionOptions.Text = #1055#1086#1076#1088#1103#1076#1095#1080#1082
      Parent = lGrplc1Group5
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Control = cbb_kontr
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item13: TdxLayoutItem
      CaptionOptions.Text = #1048#1085#1078#1077#1085#1077#1088
      Parent = lGrplc1Group5
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Control = cbb_manager
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lGrplc1Group5: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'New Group'
      Parent = lGrplc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 394
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object litm_lc1Item14: TdxLayoutItem
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group4
      Control = btn_Exec
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lGrplc1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lGrplc1Group3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 760
    Top = 120
    object lcf1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_kontr
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = cbb_manager
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = cbb_street
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = cbb_Y
        Properties.Strings = (
          'ItemIndex')
      end>
    StorageName = 'prop1'
    Left = 728
    Top = 120
  end
  object ds_RepTO: TpFIBDataSet
    SelectSQL.Strings = (
      'select * from REPORT_PLANTO(:Y, :FSTREET, :FWORKER, :FKONTR)')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 496
    Top = 416
  end
  object src_RepTO: TDataSource
    DataSet = ds_RepTO
    Left = 528
    Top = 416
  end
  object ds_street: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME, STR_TYPE from STREET')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 496
    Top = 464
  end
  object src_street: TDataSource
    DataSet = ds_street
    Left = 525
    Top = 464
  end
  object ds_kontr: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT k.CODE, k.NAME FROM KONTRAGENT k  where code<>1')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 496
    Top = 360
  end
  object src_kontr: TDataSource
    DataSet = ds_kontr
    Left = 528
    Top = 360
  end
  object ds_worker: TpFIBDataSet
    SelectSQL.Strings = (
      ' select (P.F || '#39' '#39' || P.I || '#39' '#39' || P.O) FIO, w.code'
      ' from worker w'
      ' left outer join PIPLE P on P.CODE = W.PIPLE'
      ' where w.isactive =1 and w.kontragent =:kontr'
      ' order by 1')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 504
    Top = 520
  end
  object src_worker: TDataSource
    DataSet = ds_worker
    Left = 536
    Top = 520
  end
end
