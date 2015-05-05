object PlanFactTOForm: TPlanFactTOForm
  Left = 0
  Top = 0
  Caption = #1057#1074#1086#1076#1085#1099#1081' '#1086#1090#1095#1077' ('#1087#1083#1072#1085'/'#1092#1072#1082#1090') '#1058#1054
  ClientHeight = 699
  ClientWidth = 1046
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
    Width = 1046
    Height = 699
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    object grd1: TcxGrid
      Left = 10
      Top = 90
      Width = 1026
      Height = 599
      Align = alClient
      TabOrder = 5
      LockedStateImageOptions.Effect = lsieLight
      LockedStateImageOptions.ShowText = True
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv1STREETNAME
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SRVDOG: TcxGridDBColumn
          DataBinding.FieldName = 'SRVDOG'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1STREETNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STREETNAME'
          HeaderAlignmentHorz = taCenter
          Options.CellMerging = True
          Width = 189
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          HeaderAlignmentHorz = taCenter
          Options.CellMerging = True
          Width = 61
        end
        object clv1STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1MLIST: TcxGridDBColumn
          DataBinding.FieldName = 'MLIST'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1DUNAME: TcxGridDBColumn
          Caption = #1044#1059
          DataBinding.FieldName = 'DUNAME'
          HeaderAlignmentHorz = taCenter
          Options.CellMerging = True
          Width = 59
        end
        object clv1SUMY: TcxGridDBColumn
          Caption = #1055#1083#1072#1085' '#1085#1072' '#1075#1086#1076' '#1085#1072' '#1084#1072#1090#1077#1088#1080#1072#1083#1099', '#1088#1091#1073'. '
          DataBinding.FieldName = 'SUMY'
          RepositoryItem = CurrencyItem
          HeaderAlignmentHorz = taCenter
          Width = 95
        end
        object clv1OST: TcxGridDBColumn
          Caption = #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1085#1072#1095#1072#1083#1086' '#1075#1086#1076#1072' '#1085#1072' '#1084#1072#1090#1077#1088#1080#1072#1083#1099', '#1088#1091#1073'.'
          DataBinding.FieldName = 'OST'
          RepositoryItem = CurrencyItem
          HeaderAlignmentHorz = taCenter
          Options.CellMerging = True
          Width = 100
        end
        object clv1MLISTNAME: TcxGridDBColumn
          Caption = #1074#1080#1076' '#1088#1072#1073#1086#1090#1099' ('#1087#1083#1072#1085#1086#1074#1099#1077')'
          DataBinding.FieldName = 'MLISTNAME'
          HeaderAlignmentHorz = taCenter
          Width = 200
        end
        object clv1KONTNAME: TcxGridDBColumn
          Caption = #1055#1086#1076#1088#1103#1076#1085#1072#1103' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'KONTNAME'
          HeaderAlignmentHorz = taCenter
          Options.CellMerging = True
          Width = 168
        end
        object clv1SUM1: TcxGridDBColumn
          Caption = '1 '#1082#1074#1072#1088#1090#1072#1083
          DataBinding.FieldName = 'SUM1'
          RepositoryItem = CurrencyItem
          HeaderAlignmentHorz = taCenter
          Width = 88
        end
        object clv1SUM2: TcxGridDBColumn
          Caption = '2 '#1082#1074#1072#1088#1090#1072#1083
          DataBinding.FieldName = 'SUM2'
          RepositoryItem = CurrencyItem
          HeaderAlignmentHorz = taCenter
          Width = 77
        end
        object clv1SUM3: TcxGridDBColumn
          Caption = '3 '#1082#1074#1072#1088#1090#1072#1083
          DataBinding.FieldName = 'SUM3'
          RepositoryItem = CurrencyItem
          HeaderAlignmentHorz = taCenter
        end
        object clv1SUM4: TcxGridDBColumn
          Caption = '4 '#1082#1074#1072#1088#1090#1072#1083
          DataBinding.FieldName = 'SUM4'
          RepositoryItem = CurrencyItem
          HeaderAlignmentHorz = taCenter
          Width = 73
        end
        object clv1KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1MANAGER: TcxGridDBColumn
          DataBinding.FieldName = 'MANAGER'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1FIO: TcxGridDBColumn
          Caption = #1052#1072#1089#1090#1077#1088
          DataBinding.FieldName = 'FIO'
          Visible = False
          Width = 139
        end
        object clv1NOTE: TcxGridDBColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          DataBinding.FieldName = 'NOTE'
          Visible = False
          Width = 300
        end
        object clv1FIRM: TcxGridDBColumn
          DataBinding.FieldName = 'FIRM'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1M1: TcxGridDBColumn
          Caption = #1103#1085#1074#1072#1088#1100
          DataBinding.FieldName = 'M1'
          RepositoryItem = CurrencyItem
          HeaderAlignmentHorz = taCenter
          Width = 66
        end
        object clv1M2: TcxGridDBColumn
          Caption = #1092#1077#1074#1088#1072#1083#1100
          DataBinding.FieldName = 'M2'
          RepositoryItem = CurrencyItem
          HeaderAlignmentHorz = taCenter
          Width = 66
        end
        object clv1M3: TcxGridDBColumn
          Caption = #1084#1072#1088#1090
          DataBinding.FieldName = 'M3'
          RepositoryItem = CurrencyItem
          HeaderAlignmentHorz = taCenter
          Width = 66
        end
        object clv1M4: TcxGridDBColumn
          Caption = #1072#1087#1088#1077#1083#1100
          DataBinding.FieldName = 'M4'
          RepositoryItem = CurrencyItem
          HeaderAlignmentHorz = taCenter
          Width = 66
        end
        object clv1M5: TcxGridDBColumn
          Caption = #1084#1072#1081
          DataBinding.FieldName = 'M5'
          RepositoryItem = CurrencyItem
          HeaderAlignmentHorz = taCenter
          Width = 66
        end
        object clv1M6: TcxGridDBColumn
          Caption = #1080#1102#1085#1100
          DataBinding.FieldName = 'M6'
          RepositoryItem = CurrencyItem
          HeaderAlignmentHorz = taCenter
          Width = 66
        end
        object clv1M7: TcxGridDBColumn
          Caption = #1080#1102#1083#1100
          DataBinding.FieldName = 'M7'
          RepositoryItem = CurrencyItem
          HeaderAlignmentHorz = taCenter
          Width = 66
        end
        object clv1M8: TcxGridDBColumn
          Caption = #1072#1074#1075#1091#1089#1090
          DataBinding.FieldName = 'M8'
          RepositoryItem = CurrencyItem
          HeaderAlignmentHorz = taCenter
          Width = 66
        end
        object clv1M9: TcxGridDBColumn
          Caption = #1089#1077#1085#1090#1103#1073#1088#1100
          DataBinding.FieldName = 'M9'
          RepositoryItem = CurrencyItem
          HeaderAlignmentHorz = taCenter
          Width = 66
        end
        object clv1M10: TcxGridDBColumn
          Caption = #1086#1082#1090#1103#1073#1088#1100
          DataBinding.FieldName = 'M10'
          RepositoryItem = CurrencyItem
          HeaderAlignmentHorz = taCenter
          Width = 66
        end
        object clv1M11: TcxGridDBColumn
          Caption = #1085#1086#1103#1073#1088#1100
          DataBinding.FieldName = 'M11'
          RepositoryItem = CurrencyItem
          HeaderAlignmentHorz = taCenter
          Width = 66
        end
        object clv1M12: TcxGridDBColumn
          Caption = #1076#1077#1082#1072#1073#1088#1100
          DataBinding.FieldName = 'M12'
          RepositoryItem = CurrencyItem
          HeaderAlignmentHorz = taCenter
          Width = 66
        end
        object clv1PLANSUM: TcxGridDBColumn
          Caption = 'C'#1091#1084#1084#1072' '#1085#1072' '#1084#1072#1090#1077#1088#1080#1072#1083#1099' ('#1075#1086#1076'), '#1088#1091#1073'.'
          DataBinding.FieldName = 'PLANSUM'
          RepositoryItem = CurrencyItem
          HeaderAlignmentHorz = taCenter
          Options.CellMerging = True
          Width = 73
        end
        object clv1OSTSUM: TcxGridDBColumn
          Caption = #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1082#1086#1085#1077#1094' '#1075#1086#1076#1072' '#1085#1072' '#1084#1072#1090#1077#1088#1080#1072#1083#1099', '#1088#1091#1073'.'
          DataBinding.FieldName = 'OSTSUM'
          RepositoryItem = CurrencyItem
          HeaderAlignmentHorz = taCenter
          Width = 94
        end
      end
      object vb1: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_PLANFACT
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1OSTSUM
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1PLANSUM
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1M12
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1M11
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1M10
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1M9
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1M8
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1M7
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1M6
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1M5
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1M4
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1M3
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1M2
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1M1
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1SUM4
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1SUM3
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1SUM2
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1SUM1
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1SUMY
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1OST
          end
          item
            Kind = skCount
            Column = clvb1STREETNAME
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnSorting = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.Indicator = True
        Styles.OnGetContentStyle = vb1StylesGetContentStyle
        Bands = <
          item
            Caption = #1040#1076#1088#1077#1089
            FixedKind = fkLeft
            Width = 292
          end
          item
            Caption = #1055#1083#1072#1085
            Styles.Content = Style2
            Styles.Header = Style2
            Width = 929
          end
          item
            Caption = #1060#1072#1082#1090
            Styles.Content = Style4
            Styles.Header = Style4
            Width = 813
          end
          item
            Caption = #1048#1090#1086#1075#1080
            Styles.Content = Style3
            Styles.Header = Style3
            Width = 190
          end>
        object clvb1CODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1SRVDOG: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SRVDOG'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1HOUSE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1NOMER: TcxGridDBBandedColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          HeaderAlignmentHorz = taCenter
          Options.CellMerging = True
          Width = 44
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clvb1STREET: TcxGridDBBandedColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clvb1STREETNAME: TcxGridDBBandedColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STREETNAME'
          HeaderAlignmentHorz = taCenter
          Options.CellMerging = True
          Width = 202
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1DUNAME: TcxGridDBBandedColumn
          Caption = #1044#1059
          DataBinding.FieldName = 'DUNAME'
          HeaderAlignmentHorz = taCenter
          Options.CellMerging = True
          Width = 38
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object clvb1MLIST: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MLIST'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object clvb1MLISTNAME: TcxGridDBBandedColumn
          Caption = #1074#1080#1076' '#1088#1072#1073#1086#1090#1099' ('#1087#1083#1072#1085#1086#1074#1099#1077')'
          DataBinding.FieldName = 'MLISTNAME'
          HeaderAlignmentHorz = taCenter
          Width = 256
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1OST: TcxGridDBBandedColumn
          Caption = #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1085#1072#1095#1072#1083#1086' '#1075#1086#1076#1072' '#1085#1072' '#1084#1072#1090#1077#1088#1080#1072#1083#1099', '#1088#1091#1073'.'
          DataBinding.FieldName = 'OST'
          RepositoryItem = CurrencyItem
          HeaderAlignmentHorz = taCenter
          Width = 91
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1SUMY: TcxGridDBBandedColumn
          Caption = #1055#1083#1072#1085' '#1085#1072' '#1075#1086#1076' '#1085#1072' '#1084#1072#1090#1077#1088#1080#1072#1083#1099', '#1088#1091#1073'. '
          DataBinding.FieldName = 'SUMY'
          RepositoryItem = CurrencyItem
          HeaderAlignmentHorz = taCenter
          Width = 80
          Position.BandIndex = 1
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clvb1SUM1: TcxGridDBBandedColumn
          Caption = '1 '#1082#1074#1072#1088#1090#1072#1083
          DataBinding.FieldName = 'SUM1'
          RepositoryItem = CurrencyItem
          HeaderAlignmentHorz = taCenter
          Width = 60
          Position.BandIndex = 1
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clvb1SUM2: TcxGridDBBandedColumn
          Caption = '2 '#1082#1074#1072#1088#1090#1072#1083
          DataBinding.FieldName = 'SUM2'
          RepositoryItem = CurrencyItem
          HeaderAlignmentHorz = taCenter
          Width = 61
          Position.BandIndex = 1
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object clvb1SUM3: TcxGridDBBandedColumn
          Caption = '3 '#1082#1074#1072#1088#1090#1072#1083
          DataBinding.FieldName = 'SUM3'
          RepositoryItem = CurrencyItem
          HeaderAlignmentHorz = taCenter
          Width = 67
          Position.BandIndex = 1
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object clvb1SUM4: TcxGridDBBandedColumn
          Caption = '4 '#1082#1074#1072#1088#1090#1072#1083
          DataBinding.FieldName = 'SUM4'
          RepositoryItem = CurrencyItem
          HeaderAlignmentHorz = taCenter
          Width = 61
          Position.BandIndex = 1
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object clvb1KONTRAGENT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object clvb1KONTNAME: TcxGridDBBandedColumn
          Caption = #1055#1086#1076#1088#1103#1076#1085#1072#1103' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'KONTNAME'
          Options.CellMerging = True
          Width = 166
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1MANAGER: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MANAGER'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object clvb1FIO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FIO'
          Visible = False
          Position.BandIndex = 1
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object clvb1NOTE: TcxGridDBBandedColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          DataBinding.FieldName = 'NOTE'
          Visible = False
          Width = 86
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1FIRM: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FIRM'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object clvb1M1: TcxGridDBBandedColumn
          Caption = #1103#1085#1074#1072#1088#1100
          DataBinding.FieldName = 'M1'
          RepositoryItem = CurrencyItem
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1M2: TcxGridDBBandedColumn
          Caption = #1092#1077#1074#1088#1072#1083#1100
          DataBinding.FieldName = 'M2'
          RepositoryItem = CurrencyItem
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1M3: TcxGridDBBandedColumn
          Caption = #1084#1072#1088#1090
          DataBinding.FieldName = 'M3'
          RepositoryItem = CurrencyItem
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1M4: TcxGridDBBandedColumn
          Caption = #1072#1087#1088#1077#1083#1100
          DataBinding.FieldName = 'M4'
          RepositoryItem = CurrencyItem
          Position.BandIndex = 2
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1M5: TcxGridDBBandedColumn
          Caption = #1084#1072#1081
          DataBinding.FieldName = 'M5'
          RepositoryItem = CurrencyItem
          Position.BandIndex = 2
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clvb1M6: TcxGridDBBandedColumn
          Caption = #1080#1102#1085#1100
          DataBinding.FieldName = 'M6'
          RepositoryItem = CurrencyItem
          Position.BandIndex = 2
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clvb1M7: TcxGridDBBandedColumn
          Caption = #1080#1102#1083#1100
          DataBinding.FieldName = 'M7'
          RepositoryItem = CurrencyItem
          Position.BandIndex = 2
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object clvb1M8: TcxGridDBBandedColumn
          Caption = #1072#1074#1075#1091#1089#1090
          DataBinding.FieldName = 'M8'
          RepositoryItem = CurrencyItem
          Position.BandIndex = 2
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object clvb1M9: TcxGridDBBandedColumn
          Caption = #1089#1077#1085#1090#1103#1073#1088#1100
          DataBinding.FieldName = 'M9'
          RepositoryItem = CurrencyItem
          Position.BandIndex = 2
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object clvb1M10: TcxGridDBBandedColumn
          Caption = #1086#1082#1090#1103#1073#1088#1100
          DataBinding.FieldName = 'M10'
          RepositoryItem = CurrencyItem
          Position.BandIndex = 2
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object clvb1M11: TcxGridDBBandedColumn
          Caption = #1085#1086#1103#1073#1088#1100
          DataBinding.FieldName = 'M11'
          RepositoryItem = CurrencyItem
          Position.BandIndex = 2
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object clvb1M12: TcxGridDBBandedColumn
          Caption = #1076#1077#1082#1072#1073#1088#1100
          DataBinding.FieldName = 'M12'
          RepositoryItem = CurrencyItem
          Position.BandIndex = 2
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object clvb1PLANSUM: TcxGridDBBandedColumn
          Caption = 'C'#1091#1084#1084#1072' '#1085#1072' '#1084#1072#1090#1077#1088#1080#1072#1083#1099' ('#1075#1086#1076'), '#1088#1091#1073'.'
          DataBinding.FieldName = 'PLANSUM'
          RepositoryItem = CurrencyItem
          Options.CellMerging = True
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1OSTSUM: TcxGridDBBandedColumn
          Caption = #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1082#1086#1085#1077#1094' '#1075#1086#1076#1072' '#1085#1072' '#1084#1072#1090#1077#1088#1080#1072#1083#1099', '#1088#1091#1073'.'
          DataBinding.FieldName = 'OSTSUM'
          RepositoryItem = CurrencyItem
          Options.CellMerging = True
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
      end
      object l1: TcxGridLevel
        GridView = vb1
      end
    end
    object cbb_Y: TcxComboBox
      Left = 82
      Top = 23
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020')
      Style.HotTrack = False
      TabOrder = 0
      Text = '2015'
      Width = 121
    end
    object cbb_FSTREET: TcxLookupComboBox
      Left = 245
      Top = 23
      Properties.CaseSensitiveSearch = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = cmDb.src_STREET
      Style.HotTrack = False
      TabOrder = 1
      Width = 328
    end
    object cbb_FWORKER: TcxLookupComboBox
      Left = 353
      Top = 50
      Properties.CaseSensitiveSearch = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'FIO'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_WORKER
      Style.HotTrack = False
      TabOrder = 3
      Width = 221
    end
    object cbb_FKONTR: TcxLookupComboBox
      Left = 82
      Top = 50
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_KONTRAGENT
      Properties.OnEditValueChanged = cbb_FKONTRPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 2
      Width = 223
    end
    object btn_load: TcxButton
      Left = 580
      Top = 46
      Width = 117
      Height = 25
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      OptionsImage.ImageIndex = 9
      OptionsImage.Images = cmDb.iml1
      TabOrder = 4
      OnClick = btn_loadClick
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
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object lGrplc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object litm_lc1Item1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group2
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item11: TdxLayoutItem
      CaptionOptions.Text = #1043#1086#1076
      Parent = lGrplc1Group3
      Control = cbb_Y
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item12: TdxLayoutItem
      CaptionOptions.Text = #1059#1083#1080#1094#1072
      Parent = lGrplc1Group3
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 364
      Control = cbb_FSTREET
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litm_lc1Item13: TdxLayoutItem
      CaptionOptions.Text = #1052#1072#1089#1090#1077#1088
      Parent = lGrplc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 263
      Control = cbb_FWORKER
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litm_lc1Item14: TdxLayoutItem
      CaptionOptions.Text = #1055#1086#1076#1088#1103#1076#1095#1080#1082
      Parent = lGrplc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 285
      Control = cbb_FKONTR
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item15: TdxLayoutItem
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group6
      Control = btn_load
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lGrplc1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = lGrplc1Group1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object lGrplc1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lGrplc1Group5
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lGrplc1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lGrplc1Group5
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lGrplc1Group6: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = lGrplc1Group1
      ButtonOptions.Buttons = <>
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
        Component = cbb_FKONTR
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = cbb_FSTREET
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = cbb_FWORKER
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
  object ds_PLANFACT: TpFIBDataSet
    SelectSQL.Strings = (
      
        'select CODE, SRVDOG, HOUSE, NOMER, STREET, STREETNAME, MLIST, ML' +
        'ISTNAME, SUMY, SUM1, SUM2, SUM3, SUM4, KONTRAGENT,'
      
        '       KONTNAME, MANAGER, FIO, NOTE, FIRM, M1, M2, M3, M4, M5, M' +
        '6, M7, M8, M9, M10, M11, M12, DUNAME'
      'from REPOTR_PF_TO(:Y, :FSTREET, :FWORKER, :FKONTR)'
      'order by KONTNAME, STREETNAME, NOMER ASC, MLIST DESC')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 776
    Top = 328
  end
  object src_PLANFACT: TDataSource
    DataSet = md_PLANFACT
    Left = 816
    Top = 384
  end
  object md_PLANFACT: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 776
    Top = 384
  end
  object rep1: TcxEditRepository
    Left = 496
    Top = 328
    object CurrencyItem: TcxEditRepositoryCurrencyItem
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.UseThousandSeparator = True
    end
  end
  object StyleRepository1: TcxStyleRepository
    Left = 408
    Top = 336
    PixelsPerInch = 96
    object Style1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlue
    end
    object Style2: TcxStyle
      AssignedValues = [svColor]
      Color = clMoneyGreen
    end
    object Style3: TcxStyle
      AssignedValues = [svColor]
      Color = clSilver
    end
    object Style4: TcxStyle
      AssignedValues = [svColor]
      Color = clSkyBlue
    end
  end
  object ds_KONTRAGENT: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    K.CODE,'
      '    K.NAME,'
      '    K.FULLNAME'
      'FROM'
      '    KONTRAGENT K'
      'WHERE K.CODE>2    '
      'ORDER BY NAME')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 288
    Top = 472
  end
  object ds_WORKER: TpFIBDataSet
    SelectSQL.Strings = (
      'select W.CODE, (P.F || '#39' '#39' || P.I || '#39' '#39' || P.O) FIO'
      'from WORKER W'
      'left outer join PIPLE P on P.CODE = W.PIPLE'
      'where w.kontragent = :CODE and w.ISACTIVE=1'
      'ORDER BY 2')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 440
    Top = 472
  end
  object src_KONTRAGENT: TDataSource
    DataSet = ds_KONTRAGENT
    Left = 288
    Top = 520
  end
  object src_WORKER: TDataSource
    DataSet = ds_WORKER
    Left = 440
    Top = 520
  end
end
