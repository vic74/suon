object LoadFrom1C8Form: TLoadFrom1C8Form
  Left = 0
  Top = 0
  Caption = #1041#1083#1086#1082' '#1054#1048' + '#1053#1046#1055' (1'#1057' v8)'
  ClientHeight = 498
  ClientWidth = 986
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
    Width = 986
    Height = 498
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    object doc1: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 822
      Height = 28
      Align = dalTop
      BarManager = BarManager1
      Visible = False
    end
    object grd1: TcxGrid
      Left = 10000
      Top = 10000
      Width = 822
      Height = 430
      TabOrder = 1
      Visible = False
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_NGPROOM1
        DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv1CODE
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076' (1'#1057')'
          DataBinding.FieldName = 'CODE'
          Width = 85
        end
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Width = 183
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 48
        end
        object clv1SQ: TcxGridDBColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'SQ'
          Width = 80
        end
        object clv1NOTE: TcxGridDBColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077' (1'#1057')'
          DataBinding.FieldName = 'NOTE'
          Width = 312
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object doc2: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 677
      Height = 28
      Align = dalTop
      BarManager = BarManager1
      Visible = False
    end
    object grd2: TcxGrid
      Left = 10000
      Top = 10000
      Width = 677
      Height = 391
      TabOrder = 3
      Visible = False
      object v2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_Kontragent1
        DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv2CODE
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        object clv2CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Width = 109
        end
        object clv2NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1072#1088#1077#1085#1076#1072#1090#1086#1088#1072
          DataBinding.FieldName = 'NAME'
          Width = 392
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object grd3: TcxGrid
      Left = 10000
      Top = 10000
      Width = 250
      Height = 200
      TabOrder = 5
      Visible = False
      object v3: TcxGridDBTableView
        OnKeyUp = v3KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v3CellClick
        DataController.DataSource = src_DOG1C
        DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv3CODE
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        object clv3CODE: TcxGridDBColumn
          Caption = #1050#1086#1076' (1'#1057')'
          DataBinding.FieldName = 'CODE'
          Width = 83
        end
        object clv3NAME: TcxGridDBColumn
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1076#1086#1075#1086#1074#1086#1088#1072
          DataBinding.FieldName = 'NAME'
          Width = 173
        end
        object clv3ACTIVE: TcxGridDBColumn
          Caption = #1055#1088#1080#1079#1085#1072#1082' '#1072#1082#1090#1080#1074#1085#1086#1089#1090#1080' '#1076#1086#1075#1086#1074#1086#1088#1072
          DataBinding.FieldName = 'ACTIVE'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderHint = #1055#1088#1080#1079#1085#1072#1082' '#1072#1082#1090#1080#1074#1085#1086#1089#1090#1080' '#1076#1086#1075#1086#1074#1086#1088#1072
          Options.ShowCaption = False
          Width = 26
        end
        object clv3KONTRAGENT1: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT1'
          Visible = False
          VisibleForCustomization = False
          Width = 120
        end
        object clv3KNAME: TcxGridDBColumn
          Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090' '#1087#1086' '#1076#1086#1075#1086#1074#1086#1088#1091
          DataBinding.FieldName = 'KNAME'
          HeaderHint = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090' '#1087#1086' '#1076#1086#1075#1086#1074#1086#1088#1091
          Width = 170
        end
        object clv3CALCSUMTYPE: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1088#1072#1089#1095#1077#1090#1072
          DataBinding.FieldName = 'CALCSUMTYPE'
          Visible = False
          HeaderHint = #1058#1080#1087' '#1088#1072#1089#1095#1077#1090#1072
          Width = 97
        end
        object clv3DOGTYPE: TcxGridDBColumn
          DataBinding.FieldName = 'DOGTYPE'
          Visible = False
        end
        object clv3CSTNAME: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1088#1072#1089#1095#1077#1090#1072
          DataBinding.FieldName = 'CSTNAME'
          Width = 128
        end
        object clv3NGPROOM1: TcxGridDBColumn
          DataBinding.FieldName = 'NGPROOM1'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3NDNAME: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1076#1086#1075#1086#1074#1086#1088#1072
          DataBinding.FieldName = 'NDNAME'
          HeaderHint = #1058#1080#1087' '#1076#1086#1075#1086#1074#1086#1088#1072
          Width = 175
        end
      end
      object l3: TcxGridLevel
        GridView = v3
      end
    end
    object doc3: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 713
      Height = 28
      Align = dalTop
      BarManager = BarManager1
      Visible = False
    end
    object doc4: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 713
      Height = 28
      Align = dalTop
      BarManager = BarManager1
      Visible = False
    end
    object grd4: TcxGrid
      Left = 10000
      Top = 10000
      Width = 250
      Height = 200
      TabOrder = 7
      Visible = False
      object v4: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_HOUSEDOG1C
        DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv4CODE
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        object clv4CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
        end
        object clv4M: TcxGridDBColumn
          DataBinding.FieldName = 'M'
          Visible = False
          VisibleForCustomization = False
        end
        object clv4Y: TcxGridDBColumn
          DataBinding.FieldName = 'Y'
          Visible = False
          VisibleForCustomization = False
        end
        object clv4HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv4SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Width = 246
        end
        object clv4NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 51
        end
        object clv4DOG1C: TcxGridDBColumn
          DataBinding.FieldName = 'DOG1C'
          Visible = False
        end
      end
      object l4: TcxGridLevel
        GridView = v4
      end
    end
    object doc5: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 737
      Height = 28
      Align = dalTop
      BarManager = BarManager1
      Visible = False
    end
    object grd5: TcxGrid
      Left = 10000
      Top = 10000
      Width = 250
      Height = 200
      TabOrder = 9
      Visible = False
      object v5: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_DOG1CNGP
        DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object clv5CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Width = 50
        end
        object clv5NAME: TcxGridDBColumn
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1076#1086#1075#1086#1074#1086#1088#1072
          DataBinding.FieldName = 'NAME'
          HeaderHint = #1054#1087#1080#1089#1072#1085#1080#1077' '#1076#1086#1075#1086#1074#1086#1088#1072
          Width = 188
        end
        object clv5ACTIVE: TcxGridDBColumn
          Caption = #1055#1088#1080#1079#1085#1072#1082' '#1072#1082#1090#1080#1074#1085#1086#1089#1090#1080' '#1076#1086#1075#1086#1074#1086#1088#1072
          DataBinding.FieldName = 'ACTIVE'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Options.ShowCaption = False
          Width = 29
        end
        object clv5KONTRAGENT1: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT1'
          Visible = False
          VisibleForCustomization = False
        end
        object clv5KNAME: TcxGridDBColumn
          Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090' '#1087#1086' '#1076#1086#1075#1086#1074#1086#1088#1091
          DataBinding.FieldName = 'KNAME'
          HeaderHint = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090' '#1087#1086' '#1076#1086#1075#1086#1074#1086#1088#1091
          Width = 165
        end
        object clv5CALCSUMTYPE: TcxGridDBColumn
          DataBinding.FieldName = 'CALCSUMTYPE'
          Visible = False
          VisibleForCustomization = False
          Width = 130
        end
        object clv5CSTNAME: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1088#1072#1089#1095#1077#1090#1072
          DataBinding.FieldName = 'CSTNAME'
          HeaderHint = #1058#1080#1087' '#1088#1072#1089#1095#1077#1090#1072
          Width = 109
        end
        object clv5DOGTYPE: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1076#1086#1075#1086#1074#1086#1088#1072
          DataBinding.FieldName = 'DOGTYPE'
          Visible = False
          HeaderHint = #1058#1080#1087' '#1076#1086#1075#1086#1074#1086#1088#1072
          VisibleForCustomization = False
        end
        object clv5NDNAME: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1076#1086#1075#1086#1074#1086#1088#1072
          DataBinding.FieldName = 'NDNAME'
          Visible = False
          HeaderHint = #1058#1080#1087' '#1076#1086#1075#1086#1074#1086#1088#1072
          Width = 123
        end
        object clv5SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Width = 140
        end
        object clv5NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 39
        end
        object clv5SQ: TcxGridDBColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'SQ'
          Width = 56
        end
        object clv5NOTE: TcxGridDBColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077' '#1080#1079' 1'#1057
          DataBinding.FieldName = 'NOTE'
          Width = 231
        end
        object clv5NGPROOM1: TcxGridDBColumn
          DataBinding.FieldName = 'NGPROOM1'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l5: TcxGridLevel
        GridView = v5
      end
    end
    object doc6: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 938
      Height = 28
      Align = dalTop
      BarManager = BarManager1
      Visible = False
    end
    object grd6: TcxGrid
      Left = 10000
      Top = 10000
      Width = 938
      Height = 391
      TabOrder = 11
      Visible = False
      object v6: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_OBOROT1C
        DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv6SALDO1
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv6OPL
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv6NACH
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv6SALDO
          end
          item
            Kind = skCount
            Column = clv6DNAME
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        object clv6CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
        end
        object clv6M: TcxGridDBColumn
          DataBinding.FieldName = 'M'
          Visible = False
          VisibleForCustomization = False
        end
        object clv6Y: TcxGridDBColumn
          DataBinding.FieldName = 'Y'
          Visible = False
          VisibleForCustomization = False
        end
        object clv6DOG1C: TcxGridDBColumn
          DataBinding.FieldName = 'DOG1C'
          Visible = False
          VisibleForCustomization = False
        end
        object clv6DNAME: TcxGridDBColumn
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1076#1086#1075#1086#1074#1086#1088#1072
          DataBinding.FieldName = 'DNAME'
          Width = 159
        end
        object clv6ACTIVE: TcxGridDBColumn
          Caption = #1055#1088#1080#1079#1085#1072#1082' '#1072#1082#1090#1080#1074#1085#1086#1089#1090#1080' '#1076#1086#1075#1086#1074#1086#1088#1072
          DataBinding.FieldName = 'ACTIVE'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          HeaderHint = #1055#1088#1080#1079#1085#1072#1082' '#1072#1082#1090#1080#1074#1085#1086#1089#1090#1080' '#1076#1086#1075#1086#1074#1086#1088#1072
          Options.ShowCaption = False
          Width = 26
        end
        object clv6KONTRAGENT1: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT1'
          Visible = False
          VisibleForCustomization = False
        end
        object clv6KNAME: TcxGridDBColumn
          Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090' '#1087#1086' '#1076#1086#1075#1086#1074#1086#1088#1091
          DataBinding.FieldName = 'KNAME'
          Width = 144
        end
        object clv6CALCSUMTYPE: TcxGridDBColumn
          DataBinding.FieldName = 'CALCSUMTYPE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv6CNAME: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1088#1072#1089#1095#1077#1090#1072
          DataBinding.FieldName = 'CNAME'
          Width = 84
        end
        object clv6DOGTYPE: TcxGridDBColumn
          DataBinding.FieldName = 'DOGTYPE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv6DTNAME: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1076#1086#1075#1086#1074#1086#1088#1072
          DataBinding.FieldName = 'DTNAME'
          Width = 94
        end
        object clv6SALDO: TcxGridDBColumn
          Caption = #1057#1072#1083#1100#1076#1086' '#1085#1072' '#1085#1072#1095#1072#1083#1086' '#1084#1077#1089#1103#1094#1072
          DataBinding.FieldName = 'SALDO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 82
        end
        object clv6NACH: TcxGridDBColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'NACH'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 80
        end
        object clv6OPL: TcxGridDBColumn
          Caption = #1054#1087#1083#1072#1090#1099
          DataBinding.FieldName = 'OPL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
        end
        object clv6SALDO1: TcxGridDBColumn
          Caption = #1057#1072#1083#1100#1076#1086' '#1085#1072' '#1082#1086#1085#1077#1094' '#1084#1077#1089#1103#1094#1072
          DataBinding.FieldName = 'SALDO1'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 86
        end
      end
      object l6: TcxGridLevel
        GridView = v6
      end
    end
    object doc7: TdxBarDockControl
      Left = 22
      Top = 47
      Width = 822
      Height = 28
      Align = dalTop
      BarManager = BarManager1
    end
    object grd7: TcxGrid
      Left = 22
      Top = 81
      Width = 822
      Height = 430
      TabOrder = 13
      object v7: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_HOUSEOBOROT1C
        DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv7SALDO1
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv7OPL
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv7NACH
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv7SALDO
          end
          item
            Kind = skCount
            Column = clv7SNAME
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = dvSaldo1C
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = dvNach1C
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = dvOpl1C
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = dvSaldo1C1
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        object clv7CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Width = 34
        end
        object clv7CALCSUMTYPE: TcxGridDBColumn
          DataBinding.FieldName = 'CALCSUMTYPE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv7M: TcxGridDBColumn
          DataBinding.FieldName = 'M'
          Visible = False
          VisibleForCustomization = False
        end
        object clv7Y: TcxGridDBColumn
          DataBinding.FieldName = 'Y'
          Visible = False
          VisibleForCustomization = False
        end
        object clv7HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv7SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Width = 163
        end
        object clv7NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 40
        end
        object clv7DOG1C: TcxGridDBColumn
          DataBinding.FieldName = 'DOG1C'
          Visible = False
          VisibleForCustomization = False
        end
        object clv7DNAME: TcxGridDBColumn
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1076#1086#1075#1086#1074#1086#1088#1072
          DataBinding.FieldName = 'DNAME'
          Width = 124
        end
        object clv7ACTIVE: TcxGridDBColumn
          Caption = #1055#1088#1080#1079#1085#1072#1082' '#1072#1082#1090#1080#1074#1085#1086#1089#1090#1080' '#1076#1086#1075#1086#1074#1086#1088#1072
          DataBinding.FieldName = 'ACTIVE'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderHint = #1055#1088#1080#1079#1085#1072#1082' '#1072#1082#1090#1080#1074#1085#1086#1089#1090#1080' '#1076#1086#1075#1086#1074#1086#1088#1072
          Options.ShowCaption = False
          Width = 28
        end
        object clv7KONTRAGENT1: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT1'
          Visible = False
          VisibleForCustomization = False
        end
        object clv7DOGTYPE: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1076#1086#1075#1086#1074#1086#1088#1072
          DataBinding.FieldName = 'DOGTYPE'
          Visible = False
          HeaderHint = #1058#1080#1087' '#1076#1086#1075#1086#1074#1086#1088#1072
          VisibleForCustomization = False
          Width = 81
        end
        object clv7KNAME: TcxGridDBColumn
          Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090' '#1087#1086' '#1076#1086#1075#1086#1074#1086#1088#1091
          DataBinding.FieldName = 'KNAME'
          HeaderHint = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090' '#1087#1086' '#1076#1086#1075#1086#1074#1086#1088#1091
          Width = 141
        end
        object dvKShortName: TcxGridDBColumn
          Caption = #1050#1088#1072#1090#1082#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'KSHORTNAME'
          Width = 160
        end
        object clv7CNAME: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1088#1072#1089#1095#1077#1090#1072
          DataBinding.FieldName = 'CNAME'
          Width = 79
        end
        object clv7DTNAME: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1076#1086#1075#1086#1074#1086#1088#1072
          DataBinding.FieldName = 'DTNAME'
          HeaderHint = #1058#1080#1087' '#1076#1086#1075#1086#1074#1086#1088#1072
          Width = 82
        end
        object clv7SALDO: TcxGridDBColumn
          Caption = #1057#1072#1083#1100#1076#1086' '#1085#1072' '#1085#1072#1095#1072#1083#1086' '#1084#1077#1089#1103#1094#1072
          DataBinding.FieldName = 'SALDO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 89
        end
        object clv7NACH: TcxGridDBColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'NACH'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 73
        end
        object clv7OPL: TcxGridDBColumn
          Caption = #1054#1087#1083#1072#1090#1099
          DataBinding.FieldName = 'OPL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
        end
        object clv7SALDO1: TcxGridDBColumn
          Caption = #1057#1072#1083#1100#1076#1086' '#1085#1072' '#1082#1086#1085#1077#1094' '#1084#1077#1089#1103#1094#1072
          DataBinding.FieldName = 'SALDO1'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 93
        end
        object dvSaldo1C: TcxGridDBColumn
          Caption = #1057#1072#1083#1100#1076#1086' 1'#1057
          DataBinding.FieldName = 'SALDO1C'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 80
        end
        object dvNach1C: TcxGridDBColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086' 1'#1057
          DataBinding.FieldName = 'NACH1C'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 80
        end
        object dvOpl1C: TcxGridDBColumn
          Caption = #1054#1087#1083#1072#1090#1099' 1'#1057
          DataBinding.FieldName = 'OPL1C'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 80
        end
        object dvSaldo1C1: TcxGridDBColumn
          Caption = #1050#1086#1085#1077#1095#1085#1099#1081' '#1086#1089#1090#1072#1090#1086#1082' 1'#1057
          DataBinding.FieldName = 'SALDO1C1'
          Width = 90
        end
      end
      object l7: TcxGridLevel
        GridView = v7
      end
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 5
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = -1
    end
    object lgrplc1Group1: TdxLayoutGroup
      Tag = 1
      CaptionOptions.Text = #1055#1086#1084#1077#1097#1077#1085#1080#1103' '#1053#1046#1055
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object lgrplc1Group2: TdxLayoutGroup
      Tag = 2
      CaptionOptions.Text = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099' '#1080#1079' 1'#1057
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object lgrplc1Group3: TdxLayoutGroup
      Tag = 3
      CaptionOptions.Text = #1044#1086#1075#1086#1074#1086#1088#1099' '#1080#1079' 1'#1057
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object lgrplc1Group4: TdxLayoutGroup
      Tag = 4
      CaptionOptions.Text = #1054#1073#1086#1088#1086#1090#1085#1099#1077' '#1074#1077#1076#1086#1084#1086#1089#1090#1080' '#1087#1086' '#1076#1086#1075#1086#1074#1086#1088#1072#1084
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 4
    end
    object lgrplc1Group5: TdxLayoutGroup
      Tag = 5
      CaptionOptions.Text = #1054#1073#1086#1088#1086#1090#1085#1099#1077' '#1074#1077#1076#1086#1084#1086#1089#1090#1080' '#1074' '#1088#1072#1088#1077#1079#1077' '#1076#1086#1084#1086#1074
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 5
    end
    object LItemlc1Item1: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = lgrplc1Group1
      Control = doc1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemlc1Item11: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lgrplc1Group1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LItemlc1Item12: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = lgrplc1Group2
      Control = doc2
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemlc1Item13: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lgrplc1Group2
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lgrplc1Group6: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1044#1086#1075#1086#1074#1086#1088#1099' '#1080#1079' 1'#1057
      Parent = lgrplc1Group3
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object lgrplc1Group7: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1044#1086#1084#1072' '#1082' '#1076#1086#1075#1086#1074#1086#1088#1072#1084' '#1074' 1'#1057
      Parent = lgrplc1Group3
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object lc1Item1: TdxLayoutItem
      CaptionOptions.Text = 'New Item'
      Index = -1
    end
    object spl1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = lgrplc1Group3
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object lgrplc1Group8: TdxLayoutGroup
      CaptionOptions.Text = #1044#1086#1075#1086#1074#1086#1088#1099' '#1080#1079' 1'#1057' ('#1053#1046#1055')'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 3
    end
    object LItemlc1Item2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lgrplc1Group6
      Control = grd3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LItemlc1Item21: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = lgrplc1Group6
      Control = doc3
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemlc1Item22: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = lgrplc1Group7
      Control = doc4
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemlc1Item23: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lgrplc1Group7
      Control = grd4
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LItemlc1Item24: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = lgrplc1Group8
      Control = doc5
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemlc1Item25: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lgrplc1Group8
      Control = grd5
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LItemlc1Item26: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = lgrplc1Group4
      Control = doc6
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemlc1Item27: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lgrplc1Group4
      Control = grd6
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LItemlc1Item28: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = lgrplc1Group5
      Control = doc7
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemlc1Item29: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lgrplc1Group5
      Control = grd7
      ControlOptions.ShowBorder = False
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
        Component = BarCombo1
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = bItm_Y
        Properties.Strings = (
          'EditValue')
      end>
    StorageName = 'prop1'
    Left = 728
    Top = 120
  end
  object BarManager1: TdxBarManager
    AlwaysSaveText = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default'
      #1055#1086#1084#1077#1097#1077#1085#1080#1103' '#1053#1046#1055
      #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099' '#1080#1079' 1'#1057
      #1044#1086#1075#1086#1074#1086#1088#1099' '#1080#1079' 1'#1057
      #1044#1086#1075#1086#1074#1086#1088#1099' '#1080#1079' 1'#1057' ('#1053#1046#1055')'
      #1054#1073#1086#1088#1086#1090#1085#1099#1077' '#1074#1077#1076#1086#1084#1086#1089#1090#1080' '#1087#1086' '#1076#1086#1075#1086#1074#1086#1088#1072#1084
      #1044#1086#1084#1072' '#1082' '#1076#1086#1075#1086#1074#1086#1088#1072#1084' '#1074' 1'#1057
      #1054#1073#1086#1088#1086#1090#1085#1099#1077' '#1074#1077#1076#1086#1084#1086#1089#1090#1080' '#1074' '#1088#1072#1088#1077#1079#1077' '#1076#1086#1084#1086#1074)
    Categories.ItemsVisibles = (
      2
      2
      2
      2
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True
      True
      True
      True
      True)
    ImageOptions.Images = cmDb.iml1
    LookAndFeel.NativeStyle = False
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    SunkenBorder = True
    UseSystemFont = True
    Left = 672
    Top = 208
    DockControlHeights = (
      0
      0
      0
      0)
    object br1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = #1055#1086#1084#1077#1097#1077#1085#1080#1103' '#1053#1046#1055
      CaptionButtons = <>
      DockControl = doc1
      DockedDockControl = doc1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 904
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_Refresh1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Excel1'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object br2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = doc2
      DockedDockControl = doc2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 904
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_Refresh2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Excel2'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object br3: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockControl = doc3
      DockedDockControl = doc3
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 904
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_Refresh3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Excel3'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object br4: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 4'
      CaptionButtons = <>
      DockControl = doc4
      DockedDockControl = doc4
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 904
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'BarCombo1'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 55
          Visible = True
          ItemName = 'bItm_Y'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Refresh3_1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Excel3_1'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object br5: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 5'
      CaptionButtons = <>
      DockControl = doc5
      DockedDockControl = doc5
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 904
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_Refresh5'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Excel4'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object br6: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 6'
      CaptionButtons = <>
      DockControl = doc6
      DockedDockControl = doc6
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 892
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bc_M'
        end
        item
          Visible = True
          ItemName = 'b_Y'
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'b_Active'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Refresh6'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Excel5'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object br7: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 7'
      CaptionButtons = <>
      DockControl = doc7
      DockedDockControl = doc7
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 892
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bc_M2'
        end
        item
          Visible = True
          ItemName = 'b_Y2'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'b_Active1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Refresh7'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Excel7'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_Excel1: TdxBarButton
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Category = 0
      Enabled = False
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 16
      OnClick = btn_Excel1Click
    end
    object btn_Excel2: TdxBarButton
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Category = 0
      Enabled = False
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 16
      OnClick = btn_Excel2Click
    end
    object btn_Excel3: TdxBarButton
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Category = 0
      Enabled = False
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 16
      OnClick = btn_Excel3Click
    end
    object btn_Excel3_1: TdxBarButton
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Category = 0
      Enabled = False
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 16
      OnClick = btn_Excel3_1Click
    end
    object btn_Excel4: TdxBarButton
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Category = 0
      Enabled = False
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 16
      OnClick = btn_Excel4Click
    end
    object btn_Excel5: TdxBarButton
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Category = 0
      Enabled = False
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 16
      OnClick = btn_Excel5Click
    end
    object btn_Excel7: TdxBarButton
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Category = 0
      Enabled = False
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 16
      OnClick = btn_Excel7Click
    end
    object btn_Refresh1: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Category = 1
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Visible = ivAlways
      ImageIndex = 9
      OnClick = btn_Refresh1Click
    end
    object btn_Refresh2: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Category = 2
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Visible = ivAlways
      ImageIndex = 9
      OnClick = btn_Refresh2Click
    end
    object btn_Refresh3: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Category = 3
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Visible = ivAlways
      ImageIndex = 9
      OnClick = btn_Refresh3Click
    end
    object btn_Refresh5: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Category = 4
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Visible = ivAlways
      ImageIndex = 9
      OnClick = btn_Refresh5Click
    end
    object bc_M: TdxBarCombo
      Caption = #1084#1077#1089#1103#1094
      Category = 5
      Hint = #1084#1077#1089#1103#1094
      Visible = ivAlways
      ShowCaption = True
      Items.Strings = (
        ''
        #1103#1085#1074#1072#1088#1100
        #1092#1077#1074#1088#1072#1083#1100
        #1084#1072#1088#1090
        #1072#1087#1088#1077#1083#1100
        #1084#1072#1081
        #1080#1102#1085#1100
        #1080#1102#1083#1100
        #1072#1074#1075#1091#1089#1090
        #1089#1077#1085#1090#1103#1073#1088#1100
        #1086#1082#1090#1103#1073#1088#1100
        #1085#1086#1103#1073#1088#1100
        #1076#1077#1082#1072#1073#1088#1100)
      ItemIndex = -1
    end
    object b_Y: TcxBarEditItem
      Caption = #1075#1086#1076
      Category = 5
      Hint = #1075#1086#1076
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxMaskEditProperties'
    end
    object b_Active: TcxBarEditItem
      Caption = #1058#1086#1083#1100#1082#1086' '#1072#1082#1090#1080#1074#1085#1099#1077
      Category = 5
      Hint = #1058#1086#1083#1100#1082#1086' '#1072#1082#1090#1080#1074#1085#1099#1077
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      InternalEditValue = True
    end
    object btn_Refresh6: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Category = 5
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Visible = ivAlways
      ImageIndex = 9
      OnClick = btn_Refresh6Click
    end
    object bItm_Y: TcxBarEditItem
      Caption = #1075#1086#1076
      Category = 6
      Hint = #1075#1086#1076
      Visible = ivAlways
      PropertiesClassName = 'TcxMaskEditProperties'
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = ' ([123][0-9])? [0-9][0-9]'
      InternalEditValue = '2013'
    end
    object btn_Refresh3_1: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Category = 6
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Visible = ivAlways
      ImageIndex = 9
      OnClick = btn_Refresh3_1Click
    end
    object BarCombo1: TdxBarCombo
      Caption = #1084#1077#1089#1103#1094
      Category = 6
      Hint = #1084#1077#1089#1103#1094
      Visible = ivAlways
      Text = #1103#1085#1074#1072#1088#1100
      Items.Strings = (
        ''
        #1103#1085#1074#1072#1088#1100
        #1092#1077#1074#1088#1072#1083#1100
        #1084#1072#1088#1090
        #1072#1087#1088#1077#1083#1100
        #1084#1072#1081
        #1080#1102#1085#1100
        #1080#1102#1083#1100
        #1072#1074#1075#1091#1089#1090
        #1089#1077#1085#1090#1103#1073#1088#1100
        #1086#1082#1090#1103#1073#1088#1100
        #1085#1086#1103#1073#1088#1100
        #1076#1077#1082#1072#1073#1088#1100)
      ItemIndex = 1
    end
    object bc_M2: TdxBarCombo
      Caption = #1084#1077#1089#1103#1094
      Category = 7
      Hint = #1084#1077#1089#1103#1094
      Visible = ivAlways
      ShowCaption = True
      Items.Strings = (
        ''
        #1103#1085#1074#1072#1088#1100
        #1092#1077#1074#1088#1072#1083#1100
        #1084#1072#1088#1090
        #1072#1087#1088#1077#1083#1100
        #1084#1072#1081
        #1080#1102#1085#1100
        #1080#1102#1083#1100
        #1072#1074#1075#1091#1089#1090
        #1089#1077#1085#1090#1103#1073#1088#1100
        #1086#1082#1090#1103#1073#1088#1100
        #1085#1086#1103#1073#1088#1100
        #1076#1077#1082#1072#1073#1088#1100)
      ItemIndex = -1
    end
    object b_Y2: TcxBarEditItem
      Caption = #1075#1086#1076
      Category = 7
      Hint = #1075#1086#1076
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxMaskEditProperties'
    end
    object btn_Refresh7: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Category = 7
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Visible = ivAlways
      ImageIndex = 9
      OnClick = btn_Refresh7Click
    end
    object b_Active1: TcxBarEditItem
      Caption = #1058#1086#1083#1100#1082#1086' '#1072#1082#1090#1080#1074#1085#1099#1077
      Category = 7
      Hint = #1058#1086#1083#1100#1082#1086' '#1072#1082#1090#1080#1074#1085#1099#1077
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      InternalEditValue = True
    end
  end
  object src_NGPROOM1: TDataSource
    DataSet = ds_NGPROOM1
    Left = 512
    Top = 224
  end
  object ds_NGPROOM1: TpFIBDataSet
    SelectSQL.Strings = (
      'select NG.CODE, NG.HOUSE, NG.SQ, NG.NOTE,'
      '       H.NOMER, S.NAME SNAME'
      'from NGPROOM1 NG'
      'left outer join house h on h.CODE = ng.HOUSE'
      'left outer join street s on s.CODE = h.STREET'
      'order by s.NAME, h.NOMER')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 480
    Top = 224
  end
  object src_Kontragent1: TDataSource
    DataSet = ds_Kontragent1
    Left = 512
    Top = 264
  end
  object ds_Kontragent1: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME'
      'from KONTRAGENT1'
      'order by NAME')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 480
    Top = 264
  end
  object ds_DOG1C: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT DG.CODE,'
      '       DG.NAME,'
      '       DG."ACTIVE",'
      '       DG.KONTRAGENT1, K.NAME KNAME,'
      '       DG.CALCSUMTYPE,'
      '       C.NAME CSTName,'
      '       DG.DOGTYPE, ND.NAME NDNAME,'
      '       DG.NGPROOM1'
      'FROM DOG1C DG'
      'LEFT OUTER JOIN KONTRAGENT1 K ON K.CODE = DG.KONTRAGENT1'
      'left outer join CALCSUMTYPE C on C.ID = dg.CALCSUMTYPE'
      'LEFT OUTER JOIN NGP$DOGTYPE nd ON ND.ID = dg.DOGTYPE'
      '--WHERE DG.DOGTYPE<>0'
      'ORDER BY DG.NAME')
    AfterOpen = ds_DOG1CAfterOpen
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 472
    Top = 176
  end
  object src_DOG1C: TDataSource
    DataSet = ds_DOG1C
    Left = 512
    Top = 176
  end
  object ds_HOUSEDOG1C: TpFIBDataSet
    SelectSQL.Strings = (
      'select HD.CODE, HD.M, HD.Y, HD.HOUSE,'
      '       S.NAME SNAME, H.NOMER, HD.DOG1C'
      'from HOUSEDOG1C HD'
      'left outer join HOUSE H on H.CODE = HD.HOUSE'
      'left outer join STREET S on S.CODE = H.STREET')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 480
    Top = 344
  end
  object src_HOUSEDOG1C: TDataSource
    DataSet = ds_HOUSEDOG1C
    Left = 512
    Top = 344
  end
  object ds_DOG1CNGP: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT DG.CODE,'
      '       DG.NAME,'
      '       DG."ACTIVE",'
      '       DG.KONTRAGENT1, K.NAME KNAME,'
      '       DG.CALCSUMTYPE,'
      '       C.NAME CSTName,'
      '       DG.DOGTYPE, ND.NAME NDNAME, S.NAME SNAME,'
      '       H.NOMER, NR.SQ, NR.NOTE,'
      '       DG.NGPROOM1'
      'FROM DOG1C DG'
      'LEFT OUTER JOIN KONTRAGENT1 K ON K.CODE = DG.KONTRAGENT1'
      'left outer join CALCSUMTYPE C on C.ID = dg.CALCSUMTYPE'
      'LEFT OUTER JOIN NGP$DOGTYPE nd ON ND.ID = dg.DOGTYPE'
      'left outer join NGPROOM1 NR on NR.CODE = DG.NGPROOM1'
      'left outer join HOUSE H on H.CODE = NR.HOUSE'
      'left outer join STREET S on S.CODE = H.STREET'
      'WHERE DG.DOGTYPE=0'
      'ORDER BY DG.NAME')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 480
    Top = 304
  end
  object src_DOG1CNGP: TDataSource
    DataSet = ds_DOG1CNGP
    Left = 512
    Top = 304
  end
  object ds_OBOROT1C: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT O.CODE,'
      '       O.M, '
      '       O.Y, '
      '       O.DOG1C, '
      '       D.NAME DNAME, D."ACTIVE",'
      '       D.KONTRAGENT1, K.NAME KNAME,'
      '       D.CALCSUMTYPE, C.NAME CNAME,'
      '       D.DOGTYPE, DT.NAME DTNAME,'
      '       O.SALDO, '
      '       O.NACH, '
      '       O.OPL,'
      '       IIF(O.SALDO is NULL,0,O.SALDO) +'
      '       IIF(O.NACH is NULL,0,O.NACH) -'
      '       IIF(O.OPL is NULL, 0, O.OPL) SALDO1'
      'FROM OBOROT1C O'
      'left outer join DOG1C D on D.CODE = O.DOG1C'
      'left OUTER join KONTRAGENT1 K on K.CODE = D.KONTRAGENT1'
      'left outer join CALCSUMTYPE C on C.ID = D.CALCSUMTYPE'
      'left outer join NGP$DOGTYPE DT on DT.ID = D.DOGTYPE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 480
    Top = 384
  end
  object src_OBOROT1C: TDataSource
    DataSet = ds_OBOROT1C
    Left = 512
    Top = 384
  end
  object ds_HOUSEOBOROT1C: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT O.CODE,'
      '       O.M,'
      '       O.Y,'
      '       O.HOUSE,'
      '       S.NAME SNAME, H.NOMER,'
      '       O.DOG1C,'
      '       D.NAME DNAME, D."ACTIVE",'
      '       D.KONTRAGENT1,'
      '       K.NAME KNAME,'
      '       K.ShortName KShortName,'
      '       D.CALCSUMTYPE,'
      '       C.NAME CNAME,'
      '       O.DOGTYPE, DT.NAME DTNAME,'
      '       O.SALDO,'
      '       O.NACH,'
      '       O.OPL,'
      '       O.Saldo1C,'
      '       O.Nach1C,'
      '       O.Opl1C,'
      '       IIF(O.SALDO IS NULL,0,O.SALDO) +'
      '       IIF(O.NACH IS NULL,0,O.NACH) -'
      '       IIF(O.OPL IS NULL, 0, O.OPL) SALDO1,'
      '       COALESCE(O.Saldo1C,0)+COALESCE(O.Nach1C,0)-'
      '       COALESCE(O.Opl1C,0) Saldo1C1'
      'FROM HOUSEOBOROT1C O'
      'LEFT OUTER JOIN DOG1C D ON D.CODE = O.DOG1C'
      'LEFT OUTER JOIN KONTRAGENT1 K ON K.CODE = D.KONTRAGENT1'
      'LEFT OUTER JOIN CALCSUMTYPE C ON C.ID = D.CALCSUMTYPE'
      'LEFT OUTER JOIN NGP$DOGTYPE DT ON DT.ID = O.DOGTYPE'
      'LEFT OUTER JOIN HOUSE H ON H.CODE = O.HOUSE'
      'LEFT OUTER JOIN STREET S ON S.CODE = H.STREET')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 480
    Top = 432
  end
  object src_HOUSEOBOROT1C: TDataSource
    DataSet = ds_HOUSEOBOROT1C
    Left = 512
    Top = 432
  end
end
