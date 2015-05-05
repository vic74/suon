object TRProcess7Form: TTRProcess7Form
  Left = 0
  Top = 0
  Caption = #1092#1072#1082#1090' '#1074#1099#1087#1086#1083#1085#1077#1085#1085#1099#1093' '#1088#1072#1073#1086#1090
  ClientHeight = 708
  ClientWidth = 998
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
    Top = 26
    Width = 998
    Height = 682
    HelpContext = 116
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object grd1: TcxGrid
      Left = 10
      Top = 10
      Width = 903
      Height = 627
      TabOrder = 0
      LockedStateImageOptions.Effect = lsieDark
      LockedStateImageOptions.ShowText = True
      object vb1: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_m1
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Position = spFooter
            Column = clvb1SUMY
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Position = spFooter
            Column = clvb1M1
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Position = spFooter
            Column = clvb1M2
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Position = spFooter
            Column = clvb1M3
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Position = spFooter
            Column = clvb1M4
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Position = spFooter
            Column = clvb1M5
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Position = spFooter
            Column = clvb1M6
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Position = spFooter
            Column = clvb1M7
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Position = spFooter
            Column = clvb1M8
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Position = spFooter
            Column = clvb1M9
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Position = spFooter
            Column = clvb1M10
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Position = spFooter
            Column = clvb1M11
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Position = spFooter
            Column = clvb1M12
          end>
        DataController.Summary.FooterSummaryItems = <
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
            Column = clvb1SUMY
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1SUM1
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1SUM2
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1R1
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1R2
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1R3
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1R4
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1WORKSUM
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1BEGINOST
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1FACT
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1M1
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1M2
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1M3
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1M4
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1M5
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1M6
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1M7
          end
          item
            Kind = skSum
            FieldName = ',0.00;-,0.00'
            Column = clvb1M8
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1M9
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1M10
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1M11
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1M12
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1BALANC2
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1OI_1
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1OI_2
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1OI_3
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1OI_4
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1OI_5
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1OI_6
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1OI_7
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1OI_8
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1OI_9
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1OI_10
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1OI_11
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1OI_12
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1OI_SUM
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnSorting = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsCustomize.BandsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.Footer = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooterMultiSummaries = True
        OptionsView.GroupFooters = gfAlwaysVisible
        OptionsView.HeaderAutoHeight = True
        Bands = <
          item
            Caption = #1040#1076#1088#1077#1089
            FixedKind = fkLeft
            Width = 314
          end
          item
            Caption = #1055#1083#1072#1085
            Styles.Content = styl1
            Width = 438
          end
          item
            Caption = #1060#1072#1082#1090
            Styles.Content = styl2
            Width = 586
          end
          item
            Caption = '1-'#1081' '#1082#1074#1072#1088#1090#1072#1083
            Width = 260
          end
          item
            Caption = '2-'#1081' '#1082#1074#1072#1088#1090#1072#1083
            Width = 260
          end
          item
            Caption = '3-'#1081' '#1082#1074#1072#1088#1090#1072#1083
            Options.HoldOwnColumnsOnly = True
            Width = 260
          end
          item
            Caption = '4-'#1081' '#1082#1074#1072#1088#1090#1072#1083
            Options.HoldOwnColumnsOnly = True
            Width = 260
          end
          item
            Options.HoldOwnColumnsOnly = True
            Width = 448
          end
          item
            Caption = #1054#1073#1097#1077#1077' '#1080#1084#1091#1097#1077#1089#1090#1074#1086
            Styles.Content = cmDb.stl_ReadOnly
            Styles.Header = cmDb.stl_ReadOnly
          end>
        object clvb1PCODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PCODE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1SNAME: TcxGridDBBandedColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Options.CellMerging = True
          Options.Sorting = False
          SortIndex = 0
          SortOrder = soAscending
          Width = 180
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
          Caption = #1076#1086#1084
          DataBinding.FieldName = 'NOMER'
          Options.CellMerging = True
          SortIndex = 1
          SortOrder = soAscending
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1MLIST: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MLIST'
          Visible = False
          SortIndex = 2
          SortOrder = soDescending
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1MNAME: TcxGridDBBandedColumn
          Caption = #1074#1080#1076' '#1088#1072#1073#1086#1090#1099
          DataBinding.FieldName = 'MNAME'
          Width = 129
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1SUMOST: TcxGridDBBandedColumn
          Caption = #1086#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1085#1072#1095#1072#1083#1086' '#1075#1086#1076#1072
          DataBinding.FieldName = 'SUMOST'
          Visible = False
          Options.CellMerging = True
          VisibleForCustomization = False
          Width = 91
          Position.BandIndex = 7
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1SUMY: TcxGridDBBandedColumn
          Caption = #1086#1088#1080#1077#1085#1090#1080#1088#1086#1074#1086#1095#1085#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100
          DataBinding.FieldName = 'SUMY'
          Width = 95
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1KONTRAGENT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1KNAME: TcxGridDBBandedColumn
          Caption = #1055#1086#1076#1088#1103#1076#1095#1080#1082
          DataBinding.FieldName = 'KNAME'
          Width = 123
          Position.BandIndex = 1
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clvb1MANAGER: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MANAGER'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clvb1FACTCODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FACTCODE'
          Visible = False
          Position.BandIndex = 1
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object clvb1STATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'STATE'
          Visible = False
          Position.BandIndex = 1
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object clvb1NOTE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOTE'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object clvb1FCODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FCODE'
          Visible = False
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1FMLIST: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FMLIST'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1FMNAME: TcxGridDBBandedColumn
          Caption = #1074#1080#1076' '#1088#1072#1073#1086#1090#1099
          DataBinding.FieldName = 'FMNAME'
          Width = 164
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1FKONTRAGENT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FKONTRAGENT'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 2
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1FKNAME: TcxGridDBBandedColumn
          Caption = #1055#1086#1076#1088#1103#1076#1095#1080#1082
          DataBinding.FieldName = 'FKNAME'
          Width = 116
          Position.BandIndex = 2
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clvb1NDOP: TcxGridDBBandedColumn
          Caption = #1076#1086#1087'. '#1089#1086#1075#1083#1072#1096#1077#1085#1080#1077
          DataBinding.FieldName = 'NDOP'
          Width = 77
          Position.BandIndex = 2
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clvb1DPLACE: TcxGridDBBandedColumn
          Caption = #1084#1077#1089#1090#1086' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103
          DataBinding.FieldName = 'DPLACE'
          Visible = False
          Width = 97
          Position.BandIndex = 2
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object clvb1SUMMA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SUMMA'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 2
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object clvb1DNUM: TcxGridDBBandedColumn
          Caption = #1076#1077#1092'. '#1074#1077#1076#1086#1084#1086#1089#1090#1100
          DataBinding.FieldName = 'DNUM'
          Width = 63
          Position.BandIndex = 2
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object clvb1PLANCODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PLANCODE'
          Visible = False
          Position.BandIndex = 2
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object clvb1FSTATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FSTATE'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 2
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object clvb1FSTATENAME: TcxGridDBBandedColumn
          Caption = #1089#1090#1072#1090#1091#1089
          DataBinding.FieldName = 'FSTATENAME'
          Width = 166
          Position.BandIndex = 2
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object clvb1M1: TcxGridDBBandedColumn
          Caption = #1103#1085#1074#1072#1088#1100
          DataBinding.FieldName = 'M1'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          RepositoryItem = CurrencyItemEditRepository1CurrencyItem1
          OnCustomDrawCell = clvb1M1CustomDrawCell
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1M2: TcxGridDBBandedColumn
          Caption = #1092#1077#1074#1088#1072#1083#1100
          DataBinding.FieldName = 'M2'
          RepositoryItem = CurrencyItemEditRepository1CurrencyItem1
          OnCustomDrawCell = clvb1M2CustomDrawCell
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1M3: TcxGridDBBandedColumn
          Caption = #1084#1072#1088#1090
          DataBinding.FieldName = 'M3'
          RepositoryItem = CurrencyItemEditRepository1CurrencyItem1
          OnCustomDrawCell = clvb1M3CustomDrawCell
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1M4: TcxGridDBBandedColumn
          Caption = #1072#1087#1088#1077#1083#1100
          DataBinding.FieldName = 'M4'
          RepositoryItem = CurrencyItemEditRepository1CurrencyItem1
          OnCustomDrawCell = clvb1M4CustomDrawCell
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1R1: TcxGridDBBandedColumn
          AlternateCaption = #1056#1077#1082#1083#1072#1084#1072
          Caption = #1056#1077#1082#1083#1072#1084#1072
          DataBinding.FieldName = 'R1'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Visible = False
          Styles.Content = styl6
          Styles.Footer = styl6
          Position.BandIndex = 3
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1M5: TcxGridDBBandedColumn
          Caption = #1084#1072#1081
          DataBinding.FieldName = 'M5'
          RepositoryItem = CurrencyItemEditRepository1CurrencyItem1
          OnCustomDrawCell = clvb1M5CustomDrawCell
          Position.BandIndex = 4
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1M6: TcxGridDBBandedColumn
          Caption = #1080#1102#1085#1100
          DataBinding.FieldName = 'M6'
          RepositoryItem = CurrencyItemEditRepository1CurrencyItem1
          OnCustomDrawCell = clvb1M6CustomDrawCell
          Position.BandIndex = 4
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1M7: TcxGridDBBandedColumn
          Caption = #1080#1102#1083#1100
          DataBinding.FieldName = 'M7'
          RepositoryItem = CurrencyItemEditRepository1CurrencyItem1
          OnCustomDrawCell = clvb1M7CustomDrawCell
          Position.BandIndex = 5
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1M8: TcxGridDBBandedColumn
          Caption = #1072#1074#1075#1091#1089#1090
          DataBinding.FieldName = 'M8'
          RepositoryItem = CurrencyItemEditRepository1CurrencyItem1
          OnCustomDrawCell = clvb1M8CustomDrawCell
          Position.BandIndex = 5
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1M9: TcxGridDBBandedColumn
          Caption = #1089#1077#1085#1090#1103#1073#1088#1100
          DataBinding.FieldName = 'M9'
          RepositoryItem = CurrencyItemEditRepository1CurrencyItem1
          OnCustomDrawCell = clvb1M9CustomDrawCell
          Position.BandIndex = 5
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1M10: TcxGridDBBandedColumn
          Caption = #1086#1082#1090#1103#1073#1088#1100
          DataBinding.FieldName = 'M10'
          RepositoryItem = CurrencyItemEditRepository1CurrencyItem1
          OnCustomDrawCell = clvb1M10CustomDrawCell
          Position.BandIndex = 6
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1M11: TcxGridDBBandedColumn
          Caption = #1085#1086#1103#1073#1088#1100
          DataBinding.FieldName = 'M11'
          RepositoryItem = CurrencyItemEditRepository1CurrencyItem1
          OnCustomDrawCell = clvb1M11CustomDrawCell
          Position.BandIndex = 6
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1M12: TcxGridDBBandedColumn
          Caption = #1076#1077#1082#1072#1073#1088#1100
          DataBinding.FieldName = 'M12'
          RepositoryItem = CurrencyItemEditRepository1CurrencyItem1
          OnCustomDrawCell = clvb1M12CustomDrawCell
          Position.BandIndex = 6
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1SUM1: TcxGridDBBandedColumn
          Caption = #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1082#1086#1085#1077#1094' '#1075#1086#1076#1072
          DataBinding.FieldName = 'SUM1'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 62
          Position.BandIndex = 7
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clvb1SUM2: TcxGridDBBandedColumn
          Caption = #1057#1091#1084#1084#1072' ('#1087#1086' '#1079#1072#1074#1077#1088#1096#1077#1085#1085#1099#1084')'
          DataBinding.FieldName = 'SUM2'
          Visible = False
          Position.BandIndex = 7
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clvb1WORKSUM: TcxGridDBBandedColumn
          Caption = 'C'#1091#1084#1084#1072' '#1085#1072' '#1075#1086#1076
          DataBinding.FieldName = 'WORKSUM'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 71
          Position.BandIndex = 7
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1BEGINOST: TcxGridDBBandedColumn
          Caption = #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1085#1072#1095#1072#1083#1086' '#1075#1086#1076#1072
          DataBinding.FieldName = 'BEGINOST'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 71
          Position.BandIndex = 7
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1R2: TcxGridDBBandedColumn
          Caption = #1056#1077#1082#1083#1072#1084#1072
          DataBinding.FieldName = 'R2'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Visible = False
          Styles.Content = styl6
          Styles.Footer = styl6
          Position.BandIndex = 4
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1R3: TcxGridDBBandedColumn
          Caption = #1056#1077#1082#1083#1072#1084#1072
          DataBinding.FieldName = 'R3'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Visible = False
          Styles.Content = styl6
          Styles.Footer = styl6
          Position.BandIndex = 5
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1R4: TcxGridDBBandedColumn
          Caption = #1056#1077#1082#1083#1072#1084#1072
          DataBinding.FieldName = 'R4'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Visible = False
          Styles.Content = styl6
          Styles.Footer = styl6
          Position.BandIndex = 6
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1FACT: TcxGridDBBandedColumn
          AlternateCaption = #1089#1091#1084#1084#1072' '#1074#1099#1087#1086#1083#1085#1077#1085#1099#1093' '#1088#1072#1073#1086#1090
          Caption = #1089#1091#1084#1084#1072' '#1074#1099#1087#1086#1083#1085#1077#1085#1099#1093' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'FACT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 79
          Position.BandIndex = 7
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1DUNAME: TcxGridDBBandedColumn
          Caption = #1044#1059
          DataBinding.FieldName = 'DUNAME'
          Options.CellMerging = True
          Width = 68
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clvb1BALANC2: TcxGridDBBandedColumn
          Caption = #1041#1072#1083#1072#1085#1089'_2'
          DataBinding.FieldName = 'BALANC2'
          RepositoryItem = CurrencyItemEditRepository1CurrencyItem1
          Styles.Content = styl6
          Styles.Footer = styl6
          Styles.Header = styl6
          Position.BandIndex = 7
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object clvb1OI_1: TcxGridDBBandedColumn
          Caption = #1071#1085#1074#1072#1088#1100
          DataBinding.FieldName = 'OI_1'
          RepositoryItem = CurrencyItemEditRepository1CurrencyItem1
          Position.BandIndex = 8
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1OI_2: TcxGridDBBandedColumn
          Caption = #1060#1077#1074#1088#1072#1083#1100
          DataBinding.FieldName = 'OI_2'
          RepositoryItem = CurrencyItemEditRepository1CurrencyItem1
          Position.BandIndex = 8
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1OI_3: TcxGridDBBandedColumn
          Caption = #1052#1072#1088#1090
          DataBinding.FieldName = 'OI_3'
          RepositoryItem = CurrencyItemEditRepository1CurrencyItem1
          Position.BandIndex = 8
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1OI_4: TcxGridDBBandedColumn
          Caption = #1040#1087#1088#1077#1083#1100
          DataBinding.FieldName = 'OI_4'
          RepositoryItem = CurrencyItemEditRepository1CurrencyItem1
          Position.BandIndex = 8
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1OI_5: TcxGridDBBandedColumn
          Caption = #1052#1072#1081
          DataBinding.FieldName = 'OI_5'
          RepositoryItem = CurrencyItemEditRepository1CurrencyItem1
          Styles.Footer = cmDb.stl_ReadOnly
          Position.BandIndex = 8
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clvb1OI_6: TcxGridDBBandedColumn
          Caption = #1048#1102#1085#1100
          DataBinding.FieldName = 'OI_6'
          RepositoryItem = CurrencyItemEditRepository1CurrencyItem1
          Styles.Footer = cmDb.stl_ReadOnly
          Position.BandIndex = 8
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clvb1OI_7: TcxGridDBBandedColumn
          Caption = #1048#1102#1083#1100
          DataBinding.FieldName = 'OI_7'
          RepositoryItem = CurrencyItemEditRepository1CurrencyItem1
          Styles.Footer = cmDb.stl_ReadOnly
          Position.BandIndex = 8
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object clvb1OI_8: TcxGridDBBandedColumn
          Caption = #1040#1074#1075#1091#1089#1090
          DataBinding.FieldName = 'OI_8'
          RepositoryItem = CurrencyItemEditRepository1CurrencyItem1
          Styles.Footer = cmDb.stl_ReadOnly
          Position.BandIndex = 8
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object clvb1OI_9: TcxGridDBBandedColumn
          Caption = #1057#1077#1085#1090#1103#1073#1088#1100
          DataBinding.FieldName = 'OI_9'
          RepositoryItem = CurrencyItemEditRepository1CurrencyItem1
          Styles.Footer = cmDb.stl_ReadOnly
          Width = 66
          Position.BandIndex = 8
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object clvb1OI_10: TcxGridDBBandedColumn
          Caption = #1054#1082#1090#1103#1073#1088#1100
          DataBinding.FieldName = 'OI_10'
          RepositoryItem = CurrencyItemEditRepository1CurrencyItem1
          Styles.Footer = cmDb.stl_ReadOnly
          Width = 69
          Position.BandIndex = 8
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object clvb1OI_11: TcxGridDBBandedColumn
          Caption = #1053#1086#1103#1073#1088#1100
          DataBinding.FieldName = 'OI_11'
          RepositoryItem = CurrencyItemEditRepository1CurrencyItem1
          Styles.Footer = cmDb.stl_ReadOnly
          Width = 67
          Position.BandIndex = 8
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object clvb1OI_12: TcxGridDBBandedColumn
          Caption = #1044#1077#1082#1072#1073#1088#1100
          DataBinding.FieldName = 'OI_12'
          RepositoryItem = CurrencyItemEditRepository1CurrencyItem1
          Styles.Footer = cmDb.stl_ReadOnly
          Width = 70
          Position.BandIndex = 8
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object clvb1OI_SUM: TcxGridDBBandedColumn
          Caption = #1048#1090#1086#1075
          DataBinding.FieldName = 'OI_SUM'
          RepositoryItem = CurrencyItemEditRepository1CurrencyItem1
          Styles.Footer = cmDb.stl_ReadOnly
          Width = 69
          Position.BandIndex = 8
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
      end
      object l1: TcxGridLevel
        GridView = vb1
      end
    end
    object grd2: TcxGrid
      Left = 10000
      Top = 10000
      Width = 250
      Height = 200
      TabOrder = 2
      Visible = False
      object vb2: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_m2
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnSorting = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooters = gfAlwaysVisible
        OptionsView.HeaderAutoHeight = True
        Bands = <
          item
            Caption = #1040#1076#1088#1077#1089
            Width = 207
          end
          item
            Caption = #1055#1083#1072#1085
            Width = 369
          end
          item
            Caption = #1060#1072#1082#1090
            Width = 565
          end
          item
            Caption = '1-'#1081' '#1082#1074#1072#1088#1090#1072#1083
          end
          item
            Caption = '2-'#1081' '#1082#1074#1072#1088#1090#1072#1083
          end
          item
            Caption = '3-'#1081' '#1082#1074#1072#1088#1090#1072#1083
          end
          item
            Caption = '4-'#1081' '#1082#1074#1072#1088#1090#1072#1083
          end
          item
            Width = 285
          end>
        object clvb2PCODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PCODE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb2STREET: TcxGridDBBandedColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb2SNAME: TcxGridDBBandedColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Width = 175
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb2HOUSE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb2NOMER: TcxGridDBBandedColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 41
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clvb2MLIST: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MLIST'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clvb2MNAME: TcxGridDBBandedColumn
          Caption = #1074#1080#1076' '#1088#1072#1073#1086#1090#1099
          DataBinding.FieldName = 'MNAME'
          Width = 151
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb2SUMOST: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SUMOST'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object clvb2SUMY: TcxGridDBBandedColumn
          Caption = #1086#1088#1080#1077#1085#1090#1080#1088#1086#1074#1086#1095#1085#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100
          DataBinding.FieldName = 'SUMY'
          Width = 89
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb2KONTRAGENT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object clvb2KNAME: TcxGridDBBandedColumn
          Caption = #1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'KNAME'
          Width = 129
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb2MANAGER: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MANAGER'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object clvb2FACTCODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FACTCODE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object clvb2STATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'STATE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object clvb2NOTE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOTE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object clvb2FCODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FCODE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object clvb2FMLIST: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FMLIST'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object clvb2FMNAME: TcxGridDBBandedColumn
          Caption = #1074#1080#1076' '#1088#1072#1073#1086#1090#1099
          DataBinding.FieldName = 'FMNAME'
          Width = 139
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb2FKONTRAGENT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FKONTRAGENT'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object clvb2FKNAME: TcxGridDBBandedColumn
          Caption = #1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'FKNAME'
          Width = 132
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb2NDOP: TcxGridDBBandedColumn
          Caption = #1076#1086#1087'. '#1089#1086#1075#1083#1072#1096#1077#1085#1080#1077
          DataBinding.FieldName = 'NDOP'
          Width = 101
          Position.BandIndex = 2
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb2DPLACE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DPLACE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object clvb2DNUM: TcxGridDBBandedColumn
          Caption = #1076#1077#1092'. '#1074#1077#1076#1086#1084#1086#1089#1090#1100
          DataBinding.FieldName = 'DNUM'
          Width = 70
          Position.BandIndex = 2
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clvb2SUMMA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SUMMA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object clvb2PLANCODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PLANCODE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object clvb2FSTATE: TcxGridDBBandedColumn
          Caption = #1089#1090#1072#1090#1091#1089
          DataBinding.FieldName = 'FSTATE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object clvb2FSTATENAME: TcxGridDBBandedColumn
          Caption = #1089#1090#1072#1090#1091#1089
          DataBinding.FieldName = 'FSTATENAME'
          Width = 123
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb2ZDATA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ZDATA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
        object clvb2SUM1: TcxGridDBBandedColumn
          Caption = #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1082#1086#1085#1077#1094' '#1075#1086#1076#1072
          DataBinding.FieldName = 'SUM1'
          Position.BandIndex = 7
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb2SUM2: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SUM2'
          Visible = False
          Position.BandIndex = 7
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb2M1: TcxGridDBBandedColumn
          Caption = #1103#1085#1074#1072#1088#1100
          DataBinding.FieldName = 'M1'
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb2M2: TcxGridDBBandedColumn
          Caption = #1092#1077#1074#1088#1072#1083#1100
          DataBinding.FieldName = 'M2'
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb2M3: TcxGridDBBandedColumn
          Caption = #1084#1072#1088#1090
          DataBinding.FieldName = 'M3'
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb2M4: TcxGridDBBandedColumn
          Caption = #1072#1087#1088#1077#1083#1100
          DataBinding.FieldName = 'M4'
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb2M5: TcxGridDBBandedColumn
          Caption = #1084#1072#1081
          DataBinding.FieldName = 'M5'
          Position.BandIndex = 4
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb2M6: TcxGridDBBandedColumn
          Caption = #1080#1102#1085#1100
          DataBinding.FieldName = 'M6'
          Position.BandIndex = 4
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb2M7: TcxGridDBBandedColumn
          Caption = #1080#1102#1083#1100
          DataBinding.FieldName = 'M7'
          Position.BandIndex = 5
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb2M8: TcxGridDBBandedColumn
          Caption = #1072#1074#1075#1091#1089#1090
          DataBinding.FieldName = 'M8'
          Position.BandIndex = 5
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb2M9: TcxGridDBBandedColumn
          Caption = #1089#1077#1085#1090#1103#1073#1088#1100
          DataBinding.FieldName = 'M9'
          Position.BandIndex = 5
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb2M10: TcxGridDBBandedColumn
          Caption = #1086#1082#1090#1103#1073#1088#1100
          DataBinding.FieldName = 'M10'
          Position.BandIndex = 6
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb2M11: TcxGridDBBandedColumn
          Caption = #1085#1086#1103#1073#1088#1100
          DataBinding.FieldName = 'M11'
          Position.BandIndex = 6
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb2M12: TcxGridDBBandedColumn
          Caption = #1076#1077#1082#1072#1073#1088#1100
          DataBinding.FieldName = 'M12'
          Position.BandIndex = 6
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb2REKLAMA: TcxGridDBBandedColumn
          Caption = #1088#1077#1082#1083#1072#1084#1072
          DataBinding.FieldName = 'REKLAMA'
          Position.BandIndex = 7
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb2WORKSUM: TcxGridDBBandedColumn
          Caption = 'C'#1091#1084#1084#1072' '#1085#1072' '#1075#1086#1076
          DataBinding.FieldName = 'WORKSUM'
          Position.BandIndex = 7
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clvb2BEGINOST: TcxGridDBBandedColumn
          Caption = #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1085#1072#1095#1072#1083#1086' '#1075#1086#1076#1072
          DataBinding.FieldName = 'BEGINOST'
          Position.BandIndex = 7
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
      end
      object l2: TcxGridLevel
        GridView = vb2
      end
    end
    object msk_Y1: TcxMaskEdit
      Left = 10000
      Top = 10000
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 4
      Text = '2011'
      Visible = False
      Width = 97
    end
    object cbb_manager1: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.CaseSensitiveSearch = True
      Properties.ClearKey = 46
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          MinWidth = 0
          Width = 0
          FieldName = 'CODE'
        end
        item
          FieldName = 'FIO'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_worker
      Style.HotTrack = False
      TabOrder = 5
      Visible = False
      Width = 231
    end
    object cbb_street: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.DropDownSizeable = True
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
      Properties.ListSource = src_STREET
      Properties.OnEditValueChanged = cbb_streetPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 6
      Visible = False
      Width = 145
    end
    object cbb_house: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          MinWidth = 0
          Width = 0
          FieldName = 'CODE'
        end
        item
          FieldName = 'NOMER'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_HOUSE
      Style.HotTrack = False
      TabOrder = 7
      Visible = False
      Width = 145
    end
    object btn_ex: TcxButton
      Left = 10000
      Top = 10000
      Width = 123
      Height = 25
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      OptionsImage.Glyph.Data = {
        72010000424D7201000000000000760000002800000014000000150000000100
        040000000000FC000000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFF0000FFFFFF00FFFFFFFFFFFF0000FFFFFF0B0FFFFFFFFFFF
        0000FFFFFFF0B0FFFFFFFFFF0000FFFFFFF0FB0FFFFFFFFF0000FFFFFFFF0FB0
        FFFFFFFF0000FFFFFF000B000FFFFFFF0000FFFFFFF0BF0FFFFFFFFF0000FFFF
        FFFF0BF0FFFFFFFF0000FFFFFFFF0FBF0FFFFFFF0000FFFFF0000F0000FFFFFF
        0000FFFFFF0BFBF0FFFFFFFF0000FFFFFFF0BFBF0FFFFFFF0000FFFFFFF0FBFB
        F0FFFFFF0000FFFFFFFF0000000FFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000}
      TabOrder = 8
      Visible = False
      OnClick = btn_exClick
    end
    object chk1: TcxCheckBox
      Left = 10000
      Top = 10000
      Caption = 'chk1'
      Style.HotTrack = False
      TabOrder = 3
      Visible = False
      Width = 121
    end
    object grd3: TcxGrid
      Left = 10000
      Top = 10000
      Width = 250
      Height = 200
      TabOrder = 1
      Visible = False
      object v3: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object clHOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Width = 46
        end
        object clSNAME: TcxGridDBColumn
          DataBinding.FieldName = 'SNAME'
          Width = 116
        end
        object clNOMER: TcxGridDBColumn
          DataBinding.FieldName = 'NOMER'
          Width = 50
        end
        object clSUMOST: TcxGridDBColumn
          DataBinding.FieldName = 'SUMOST'
          Width = 108
        end
        object clSUMY: TcxGridDBColumn
          DataBinding.FieldName = 'SUMY'
          Width = 131
        end
        object clv3TfSumY: TcxGridDBColumn
          DataBinding.FieldName = 'TfSumY'
        end
      end
      object l3: TcxGridLevel
        GridView = v3
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
    object grlc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object grlc1Group3: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1054#1090#1095#1077#1090
      Parent = grlc1Group2
      ButtonOptions.Buttons = <>
      ShowBorder = False
      OnCaptionClick = grlc1Group3CaptionClick
      Index = 0
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grlc1Group3
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grlc1Group8: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Index = -1
    end
    object grlc1Group4: TdxLayoutGroup
      CaptionOptions.Text = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1076#1072#1085#1085#1099#1093
      ButtonOptions.Buttons = <>
      ShowBorder = False
      UseIndent = False
      OnCaptionClick = grlc1Group4CaptionClick
      Index = -1
    end
    object grlc1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grlc1Group4
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 14
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grlc1Group7: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grlc1Group5
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object grlc1Group9: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grlc1Group7
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grlc1Group6: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grlc1Group9
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itm_Y1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1075#1086#1076
      Parent = grlc1Group6
      Control = msk_Y1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_man1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1084#1077#1085#1077#1076#1078#1077#1088
      Parent = grlc1Group6
      Control = cbb_manager1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_street: TdxLayoutItem
      CaptionOptions.Text = #1091#1083#1080#1094#1072
      Parent = grlc1Group6
      Control = cbb_street
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_house: TdxLayoutItem
      CaptionOptions.Text = #1076#1086#1084
      Parent = grlc1Group6
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 100
      Control = cbb_house
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_ex: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Offsets.Left = 10
      Parent = grlc1Group6
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 123
      Control = btn_ex
      ControlOptions.MinWidth = 123
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itm_grd2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object itmlc1Item1: TdxLayoutItem
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = chk1
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object itmlc1Item11: TdxLayoutItem
      CaptionOptions.Text = 'cxGrid1'
      Control = grd3
      ControlOptions.ShowBorder = False
      Index = -1
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 848
    Top = 200
    object lcl1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_Firm
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = manager
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = Y
        Properties.Strings = (
          'EditValue')
      end>
    StorageName = 'prop1'
    Left = 820
    Top = 200
  end
  object ds_trplan: TpFIBDataSet
    SelectSQL.Strings = (
      'select TP.code PCODE,'
      '       H.STREET,'
      '       S.name SName,'
      '       du.name DUNAME,'
      '       TP.HOUSE,h.nomer,'
      '       TP.MLIST, m.name MName,'
      '       TF.sumost,tf.sumy TfSumY,'
      '       TP.SUMY,'
      '       TP.KONTRAGENT,k.name KName,'
      '       mh.worker MANAGER,'
      '       TP.FACTCODE,'
      '       TP.STATE,'
      '       TP.NOTE'
      'from TRPLAN TP'
      'left outer join mlist m on m.code=tp.mlist'
      'left outer join house h on h.code=tp.house'
      
        'left outer join mhouse mh on mh.house=tp.house and mh.kontragent' +
        '=1'
      'left outer join du on du.code=h.du'
      'left outer join street s on s.code=h.street'
      'left outer join kontragent k on k.code=tp.kontragent'
      'left outer join trfinplan tf on tf.house=tp.house and tf.y=:Y'
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 664
    Top = 192
  end
  object m1: TdxMemData
    Indexes = <>
    SortOptions = [soDesc]
    Left = 344
    Top = 288
  end
  object src_m1: TDataSource
    DataSet = m1
    Left = 376
    Top = 288
  end
  object ds_fact: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT TF.code FCODE,'
      '       s.name SName,'
      '       tf.HOUSE, h.nomer,'
      '       du.name DUNAME,'
      '       tf.MLIST FMLIST, m.name FMName,'
      '       tf.KONTRAGENT FKONTRAGENT, k.name FKName,'
      '       tf.MANAGER, '
      '       tf.NCALC, '
      '       tf.NSUMMA, '
      '       tf.NDOP, '
      '       tf.DNUM, '
      '       tf.DPLACE, '
      '         case'
      '           when tf.STATE = 0 then 0'
      '           when tf.STATE = 1 then 0'
      '           when tf.STATE = 2 then 0'
      '           when tf.STATE = 3 then 0'
      '           when tf.STATE = 4 then tf.NSUMMA'
      '           when tf.STATE = 5 then tf.SUMMA'
      '         end SUMMA,'
      '       tf.NOTE, '
      '       tf.PLANCODE, '
      '       tf.STATE FSTATE,'
      '         case'
      '           when tf.STATE = 0 then '#39#1087#1088#1077#1076#1088#1077#1084#1086#1085#1090#1085#1072#1103' '#1074#1089#1090#1088#1077#1095#1072#39
      '           when tf.STATE = 1 then '#39#1076#1077#1092#1077#1082#1090#1085#1072#1103' '#1074#1077#1076#1086#1084#1086#1089#1090#1100#39
      '           when tf.STATE = 2 then '#39#1089#1084#1077#1090#1072#39
      '           when tf.STATE = 3 then '#39#1076#1086#1087'. '#1089#1086#1075#1083#1072#1096#1077#1085#1080#1077#39
      '           when tf.STATE = 4 then '#39#1074' '#1088#1072#1073#1086#1090#1077#39
      '           when tf.STATE = 5 then '#39#1079#1072#1074#1077#1088#1096#1077#1085#1086#39
      '         end FSTATENAME,'
      '         case'
      '           when tf.STATE = 0 then tf.DATA'
      '           when tf.STATE = 1 then tf.DDATE'
      '           when tf.STATE = 2 then tf.NCALCDATE'
      
        '           when tf.STATE = 3 then iif(td.d2 is null,tf.NCALCDATE' +
        ',td.d2 )'
      
        '           when tf.STATE = 4 then iif(td.d2 is null,tf.NCALCDATE' +
        ',td.d2 )'
      '           when tf.STATE = 5 then tf.ZD'
      '         end ZDATA,'
      '       tf.RECV, '
      '       tf.TRDOPSOG, '
      '       tf.SD, '
      '       tf.SMANAGER,'
      '       mh.worker'
      'FROM TRFACT tf'
      'left outer join house h on h.code=tf.house'
      'left outer join street s on s.code=h.street'
      'left outer join du on du.code=h.du'
      'left outer join mlist m on m.code=tf.mlist'
      'left outer join kontragent k on k.code=tf.kontragent'
      
        'left outer join mhouse mh on mh.house=tf.house and mh.kontragent' +
        '=1'
      'left outer join trdopsog ds on ds.code=tf.trdopsog'
      'left outer join trdop td on td.code=ds.trdop')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 664
    Top = 224
  end
  object str_plan: TcxStyleRepository
    Left = 184
    Top = 328
    PixelsPerInch = 96
    object styl1: TcxStyle
      AssignedValues = [svColor]
      Color = clMoneyGreen
    end
    object styl2: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object styl3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object styl4: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object styl5: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object styl6: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object styl7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object styl8: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object styl9: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object styl10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object styl11: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object styl12: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object styl13: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object styl14: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object styl15: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxgrdtblvwstylshtGridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = styl2
      Styles.Content = styl3
      Styles.ContentEven = styl4
      Styles.ContentOdd = styl5
      Styles.FilterBox = styl6
      Styles.Inactive = styl11
      Styles.IncSearch = styl12
      Styles.Selection = styl15
      Styles.Footer = styl7
      Styles.Group = styl8
      Styles.GroupByBox = styl9
      Styles.Header = styl10
      Styles.Indicator = styl13
      Styles.Preview = styl14
      BuiltIn = True
    end
  end
  object ds_worker: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT w.CODE,(p.f||'#39' '#39'||p.i||'#39' '#39'||p.o) fio'
      'FROM WORKER w'
      'left outer join piple p on p.code=w.piple'
      'where w.kontragent=1 and w.code<>9 and'
      '      w.arole in (4,7,22,23,24,53,54)')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 216
    Top = 184
  end
  object src_worker: TDataSource
    DataSet = ds_worker
    Left = 244
    Top = 184
  end
  object ds_reklama: TpFIBDataSet
    SelectSQL.Strings = (
      'select  HM.HOUSE, ((EXTRACT(MONTH FROM HM.DATA)-1)/3+1) Quart,'
      '        sum(coalesce(HM.RSUM1,0) - coalesce(HM.RSUM_,0 )) RSUM'
      'from HMOVEIMMKD HM'
      'left outer join mhouse mh on mh.house = hm.house')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 664
    Top = 272
  end
  object ds_plan1: TpFIBDataSet
    SelectSQL.Strings = (
      'select TP.code PCODE,'
      '       H.STREET,'
      '       S.name SName,'
      '       TP.HOUSE,h.nomer,'
      '       du.name DUNAME,'
      '       TP.MLIST, m.name MName,'
      '       TF.sumost,'
      '       TP.SUMY,'
      '       TP.KONTRAGENT,k.name KName,'
      '       TP.MANAGER,'
      '       TP.FACTCODE,'
      '       TP.STATE,'
      '       TP.NOTE'
      'from TRPLAN TP'
      'left outer join mlist m on m.code=tp.mlist'
      'left outer join house h on h.code=tp.house'
      'left outer join street s on s.code=h.street'
      'left outer join du on du.code=h.du'
      'left outer join kontragent k on k.code=tp.kontragent'
      'left outer join trfinplan tf on tf.house=tp.house and tf.y=:Y'
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 80
    Top = 219
  end
  object ds_fact1: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT TF.code FCODE,'
      '       s.name SName,'
      '       tf.HOUSE, h.nomer,'
      '       du.name DUNAME,'
      '       tf.MLIST FMLIST, m.name FMName,'
      '       tf.KONTRAGENT FKONTRAGENT, k.name FKName,'
      '       tf.MANAGER, '
      '       tf.NCALC, '
      '       tf.NSUMMA, '
      '       tf.NDOP, '
      '       tf.DNUM, '
      '       tf.DPLACE, '
      '         case'
      '           when tf.STATE = 0 then 0'
      '           when tf.STATE = 1 then 0'
      '           when tf.STATE = 2 then 0'
      '           when tf.STATE = 3 then tf.NSUMMA'
      '           when tf.STATE = 4 then tf.NSUMMA'
      '           when tf.STATE = 5 then tf.SUMMA'
      '         end SUMMA,'
      '       tf.NOTE, '
      '       tf.PLANCODE, '
      '       tf.STATE FSTATE,'
      '         case'
      '           when tf.STATE = 0 then '#39#1087#1088#1077#1076#1088#1077#1084#1086#1085#1090#1085#1072#1103' '#1074#1089#1090#1088#1077#1095#1072#39
      '           when tf.STATE = 1 then '#39#1076#1077#1092#1077#1082#1090#1085#1072#1103' '#1074#1077#1076#1086#1084#1086#1089#1090#1100#39
      '           when tf.STATE = 2 then '#39#1089#1084#1077#1090#1072#39
      '           when tf.STATE = 3 then '#39#1076#1086#1087'. '#1089#1086#1075#1083#1072#1096#1077#1085#1080#1077#39
      '           when tf.STATE = 4 then '#39#1074' '#1088#1072#1073#1086#1090#1077#39
      '           when tf.STATE = 5 then '#39#1079#1072#1074#1077#1088#1096#1077#1085#1086#39
      '         end FSTATENAME,'
      '         case'
      '           when tf.STATE = 0 then tf.DATA'
      '           when tf.STATE = 1 then tf.DDATE'
      '           when tf.STATE = 2 then tf.NCALCDATE'
      '           when tf.STATE = 3 then tf.NCALCDATE'
      '           when tf.STATE = 4 then tf.NCALCDATE'
      '           when tf.STATE = 5 then tf.ZD'
      '         end ZDATA,'
      '       tf.RECV, '
      '       tf.TRDOPSOG, '
      '       tf.SD, '
      '       tf.SMANAGER,'
      '       mh.worker'
      'FROM TRFACT tf'
      'left outer join house h on h.code=tf.house'
      'left outer join street s on s.code=h.street'
      'left outer join du on du.code=h.du'
      'left outer join mlist m on m.code=tf.mlist'
      'left outer join kontragent k on k.code=tf.kontragent'
      
        'left outer join mhouse mh on mh.house=tf.house and mh.kontragent' +
        '=1'
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 80
    Top = 248
  end
  object m2: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 72
    Top = 376
  end
  object src_m2: TDataSource
    Left = 101
    Top = 376
  end
  object ds_reklama1: TpFIBDataSet
    SelectSQL.Strings = (
      'select  HM.HOUSE,'
      '        sum(coalesce(HM.RSUM1,0) - coalesce(HM.RSUM_,0 )) RSUM'
      'from HMOVEIMMKD HM'
      'left outer join mhouse mh on mh.house = hm.house')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 80
    Top = 280
  end
  object ds_STREET: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       NAME'
      'FROM STREET'
      'order by name')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DataSet_ID = 1
    Description = 'Simple STREET'
    Left = 72
    Top = 432
    poApplyRepositary = True
  end
  object src_STREET: TDataSource
    DataSet = ds_STREET
    Left = 104
    Top = 432
  end
  object src_HOUSE: TDataSource
    DataSet = ds_HOUSE
    Left = 104
    Top = 472
  end
  object ds_HOUSE: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       NOMER,'
      '       Street'
      'FROM HOUSE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 72
    Top = 472
    poApplyRepositary = True
  end
  object brm1: TdxBarManager
    AlwaysSaveText = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = cmDb.iml1
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 744
    Top = 272
    DockControlHeights = (
      0
      0
      26
      0)
    object bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 987
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          UserDefine = [udWidth]
          UserWidth = 110
          Visible = True
          ItemName = 'Y'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 237
          Visible = True
          ItemName = 'manager'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxbrsbtm1'
        end
        item
          Visible = True
          ItemName = 'btn_GetNew'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_rep'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_exl'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Period'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object Y: TcxBarEditItem
      Caption = #1043#1086#1076
      Category = 0
      Hint = #1043#1086#1076
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxMaskEditProperties'
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
    end
    object manager: TcxBarEditItem
      Caption = #1052#1077#1085#1077#1076#1078#1077#1088
      Category = 0
      Hint = #1052#1077#1085#1077#1076#1078#1077#1088
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          MinWidth = 0
          Width = 0
          FieldName = 'CODE'
        end
        item
          FieldName = 'FIO'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_worker
    end
    object btn_Get: TdxBarButton
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' ('#1089#1090#1072#1088#1099#1081' '#1074#1072#1088#1080#1072#1085#1090')'
      Category = 0
      Hint = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' ('#1089#1090#1072#1088#1099#1081' '#1074#1072#1088#1080#1072#1085#1090')'
      Visible = ivAlways
      Glyph.Data = {
        72010000424D7201000000000000760000002800000014000000150000000100
        040000000000FC00000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFF0000FFFFFF00FFFFFFFFFFFF0000FFFFFF0B0FFFFFFFFFFF
        0000FFFFFFF0B0FFFFFFFFFF0000FFFFFFF0FB0FFFFFFFFF0000FFFFFFFF0FB0
        FFFFFFFF0000FFFFFF000B000FFFFFFF0000FFFFFFF0BF0FFFFFFFFF0000FFFF
        FFFF0BF0FFFFFFFF0000FFFFFFFF0FBF0FFFFFFF0000FFFFF0000F0000FFFFFF
        0000FFFFFF0BFBF0FFFFFFFF0000FFFFFFF0BFBF0FFFFFFF0000FFFFFFF0FBFB
        F0FFFFFF0000FFFFFFFF0000000FFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000}
      PaintStyle = psCaptionGlyph
      OnClick = btn_GetClick
    end
    object btn_rep: TdxBarButton
      Caption = #1054#1090#1095#1077#1090
      Category = 0
      Hint = #1054#1090#1095#1077#1090
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
        0000333330FFFFFFFFF0003000000FF000F0E00FBFBFB0FFFFF0E0FBFB00000F
        F0F0E0BFBFBFBFB0FFF0E0FBFB00000FF0F0E0BFBFBFBFB0FFF0E0FB0000000F
        F0F0000FB0FFFFFFFFF0333000FFFFFFFFF0333330F000FF0000333330FFFFFF
        0FF0333330CCCCCC0F03333330FFFFFF00333333300000000333}
      PaintStyle = psCaptionGlyph
      OnClick = btn_repClick
    end
    object btn_Period: TdxBarButton
      Caption = #1047#1072#1082#1088#1099#1090#1080#1077' '#1087#1077#1088#1080#1086#1076#1072
      Category = 0
      Enabled = False
      HelpContext = 119
      Hint = #1047#1072#1082#1088#1099#1090#1080#1077' '#1087#1077#1088#1080#1086#1076#1072
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000085CA0FF1066A0FF1066A0FF1066A0FF1066A0FF1066A0FF1066A0FF1066
        A0FF1066A0FF1066A0FF084C8AFF000000000000000000000000000000000000
        000034A4D6FF4D9FC7FF3B8EBBFF3B8EBBFF3B8EBBFF3488B6FF3B8EBBFF3B8E
        BBFF3B8EBBFF4D9FC7FF3388B8FF000000000000000000000000000000000000
        000032A9DBFF65BCDBFF65BCDBFF4BA2C9FF4596BBFF194864FF4596BBFF4BA2
        C9FF65BCDBFF65BCDBFF318CBCFF000000000000000000000000000000000000
        000031ADE0FF51B1D5FF51B1D5FF409DC7FF2B7194FF14405CFF2B7194FF409D
        C7FF51B1D5FF51B1D5FF3090C0FF000000000000000000000000000000000000
        00002FB2E5FF5FC6E5FF5FC6E5FF51B5D9FF37819FFF184761FF37819FFF51B5
        D9FF5FC6E5FF5FC6E5FF2E93C5FF000000000000000000000000000000000000
        00006DCCF0FF82CFE8FF82CFE8FF82CFE8FF74BAD4FF2B566EFF74BAD4FF82CF
        E8FF82CFE8FF82CFE8FF6CB6D9FF000000000000000000000000000000000000
        00006CD0F3FF8BDEF3FF8BDEF3FF8BDEF3FF8BDEF3FF84D7EEFF8BDEF3FF8BDE
        F3FF8BDEF3FF8BDEF3FF6BB9DBFF000000000000000000000000000000000000
        0000D3F1FCFF6BBADCFF6BBADCFF6BBADCFF6BBADCFF6BBADCFF6BBADCFF6BBA
        DCFF6BBADCFF6BBADCFFD3EAF5FF000000000000000000000000000000000000
        0000000000001B7BB0FF0D3D587F000000000000000000000000000000000000
        00000D3D587F1B7BB0FF00000000000000000000000000000000000000000000
        00000000000012649EFF09324F7F000000000000000000000000000000000000
        000009324F7F12649EFF00000000000000000000000000000000000000000000
        000000000000094E8BFF0427457F000000000000000000000000000000000000
        00000427457F094E8BFF00000000000000000000000000000000000000000000
        000000000000285F92F1214769AA000000000000000000000000000000000000
        0000214769AA285F92F100000000000000000000000000000000000000000000
        000000000000345676B14E7BA5F40F1B263A0000000000000000000000000F1B
        263A4E7BA5F4345676B100000000000000000000000000000000000000000000
        000000000000050A0E15446D93DB5382ADFF2E4E6BA2294660922E4E6BA25382
        ADFF446D93DB050A0E1500000000000000000000000000000000000000000000
        00000000000000000000050A0E152A47619348739BE75382ADFF48739BE72A47
        6193050A0E150000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      PaintStyle = psCaptionGlyph
      OnClick = btn_PeriodClick
    end
    object btn_exl: TdxBarButton
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Category = 0
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 16
      OnClick = btn_exlClick
    end
    object dxbrsbtm1: TdxBarSubItem
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Visible = ivNever
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_Get'
        end>
    end
    object btn_GetNew: TdxBarButton
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      OnClick = btn_GetNewClick
    end
    object cbb_Firm: TcxBarEditItem
      Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      Category = 0
      Hint = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = cmDb.src_FIRM
      Properties.OnEditValueChanged = cbb_FirmPropertiesEditValueChanged
    end
  end
  object ds_rep: TpFIBDataSet
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 528
    Top = 104
  end
  object fr: TfrxReport
    Version = '4.15.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40813.633144513900000000
    ReportOptions.LastChange = 41085.601960138900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 528
    Top = 152
    Datasets = <
      item
        DataSet = fr.Q1
        DataSetName = 'Q1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object fdb: TfrxFIBDatabase
        DatabaseName = '192.168.1.6:/home/share/base/DEZ.FDB'
        LoginPrompt = False
        Params.Strings = (
          'user_name=sysdba'
          'password=masterkey'
          'sql_role_name=')
        SQLDialect = 3
        pLeft = 20
        pTop = 28
      end
      object Q1: TfrxFIBQuery
        UserName = 'Q1'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'cod'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'SELECT df.CODE, '
          '       df.TRFACT,'
          '       tf.house,S.NAME SNAME,H.NOMER,M.NAME MNAME,'
          '       tf.mlist,'
          '       df.WNOTE, '
          '       df.ED, '
          '       df.QUANTITY, '
          '       df.NOTE'
          'FROM TRDEFECTVED df'
          'left outer join trfact tf on tf.code=df.trfact'
          ' left outer join HOUSE H on H.CODE = TF.HOUSE'
          ' left outer join STREET S on S.CODE = H.STREET'
          ' left outer join MLIST M on M.CODE = TF.MLIST'
          'where tf.code=:cod'
          'order by df.NUM                               ')
        Database = fr.fdb
        pLeft = 20
        pTop = 76
        Parameters = <
          item
            Name = 'cod'
            DataType = ftUnknown
          end>
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 249.448980000000000000
        Top = 16.000000000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Rich1: TfrxRichView
          Align = baClient
          Width = 718.110700000000000000
          Height = 249.448980000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C666E696C5C6663686172736574323034205461686F6D613B7D7B5C66315C
            666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C2A5C6765
            6E657261746F7220526963686564323020362E332E393630307D5C766965776B
            696E64345C756331200D0A5C706172645C71725C66305C667331365C7061720D
            0A5C7061720D0A0D0A5C706172645C2763655C2763655C27636520225C276334
            5C2763355C276337205C2763615C2765305C2765625C2765385C2765645C2765
            385C2765645C2766315C2765615C2765655C2765335C276565205C2766305C27
            65305C2765395C2765655C2765645C276530225C7061720D0A5C625C66315C66
            7332305C6C616E67313033335C7061720D0A0D0A5C706172645C71635C66305C
            667332345C6C616E67313034395C2763345C2765355C2766345C2765355C2765
            615C2766325C2765645C2765305C276666205C2765325C2765355C2765345C27
            65655C2765635C2765655C2766315C2766325C2766635C66315C6C616E673130
            33332020205C66305C6C616E67313034395C2762395C66315C6C616E67313033
            33205B7661724E6F6D5D205C66305C6C616E67313034395C2765655C27663220
            5C66315C6C616E6731303333205B766172446174655D5C66305C6C616E673130
            34395C7061720D0A0D0A5C706172645C62305C667331365C7061720D0A5C7061
            720D0A5C2765615C2765655C2765635C2765385C2766315C2766315C2765385C
            276666205C276532205C2766315C2765655C2766315C2766325C2765305C2765
            325C2765353A5C625C66315C6C616E67313033332020205B7661724973705D20
            5C66305C6C616E67313034395C7061720D0A5C62305C7061720D0A5C2765665C
            2766305C2765655C2765385C2765375C2765325C2765355C2765625C27653020
            5C2765655C2766315C2765635C2765655C2766325C276630205C2765655C2765
            315C2766615C2765355C2765615C2766325C2765303A5C625C66315C6C616E67
            3130333320205B766172416464725D20205C62305C66305C6C616E6731303439
            5C7061720D0A5C7061720D0A5C7061720D0A5C2763665C2766305C2765385C27
            66375C2765385C2765645C276662205C2766305C2765355C2765635C2765655C
            2765645C2766325C2765303A5C625C66315C6C616E673130333320205B766172
            50726963685D5C66305C6C616E67313034395C7061720D0A5C62305C7061720D
            0A5C7061720D0A7D0D0A00}
        end
      end
      object Header1: TfrxHeader
        Height = 34.015748031496100000
        Top = 284.000000000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          Align = baLeft
          Width = 30.236220470000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470' '#1087'/'#1087)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Align = baLeft
          Left = 30.236220470000000000
          Width = 309.921460000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = 14211288
          DataSet = fr.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1087#1080#1089#1072#1085#1080#1077' '#1088#1072#1073#1086#1090' '#1080' '#1092#1086#1088#1084#1091#1083#1072' '#1087#1086#1076#1089#1095#1077#1090#1072' '#1086#1073#1098#1077#1084#1086#1074)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          Left = 340.157680470000000000
          Width = 37.795300000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = 14211288
          DataSet = fr.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1045#1076'. '#1080#1079#1084'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Align = baLeft
          Left = 377.952980470000000000
          Width = 86.929190000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = 14211288
          DataSet = fr.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Align = baWidth
          Left = 464.882170470000000000
          Width = 253.228529529999900000
          Height = 34.015748030000000000
          ShowHint = False
          Color = 14211288
          DataSet = fr.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 340.000000000000000000
        Width = 718.110700000000000000
        DataSet = fr.Q1
        DataSetName = 'Q1'
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          Align = baLeft
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baLeft
          Left = 30.236240000000000000
          Width = 309.921460000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'WNOTE'
          DataSet = fr.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q1."WNOTE"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          Left = 340.157700000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'ED'
          DataSet = fr.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q1."ED"]')
          ParentFont = False
        end
        object Q1QUANTITY: TfrxMemoView
          Align = baLeft
          Left = 377.953000000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'QUANTITY'
          DataSet = fr.Q1
          DataSetName = 'Q1'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q1."QUANTITY"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baWidth
          Left = 464.882190000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NOTE'
          DataSet = fr.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q1."NOTE"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 75.590600000000000000
        Top = 380.000000000000000000
        Width = 718.110700000000000000
        object Rich2: TfrxRichView
          Align = baClient
          Width = 718.110700000000000000
          Height = 75.590600000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C666E696C5C6663686172736574323034205461686F6D613B7D7B5C66315C
            666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C2A5C6765
            6E657261746F7220526963686564323020362E332E393630307D5C766965776B
            696E64345C756331200D0A5C706172645C66305C667331365C2763385C276631
            5C2765665C2765655C2765625C2765645C2765385C2766325C2765355C276562
            5C2766633A5C625C66315C6C616E67313033332020205B7661724973705D205C
            62305C66305C6C616E67313034395C7061720D0A5C7061720D0A5C2763665C27
            66305C2765655C2765325C2765355C2766305C2765385C2765623A205C276538
            5C2765645C2765365C2765355C2765645C2765355C2766302D5C2765615C2766
            335C2766305C2765305C2766325C2765655C276630205C2763655C2763655C27
            636520225C2763345C2763355C276337205C2763615C2765305C2765625C2765
            385C2765645C2765385C2765645C2766315C2765615C2765655C2765335C2765
            65205C2766305C2765305C2765395C2765655C2765645C276530223A5C706172
            0D0A7D0D0A00}
        end
      end
    end
  end
  object dbds1: TfrxDBDataset
    UserName = 'ds'
    CloseDataSource = False
    DataSet = ds_rep
    BCDToCurrency = False
    Left = 560
    Top = 152
  end
  object Xexp1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 536
    Top = 176
  end
  object wexp1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 536
    Top = 216
  end
  object xlr1: TEXLReport
    About = 'EMS Advanced Excel Report(tm) Component Suite for Delphi(R)'
    DataSet = m1
    Dictionary = <>
    _Version = '1.9.0.2'
    OnFormatCell = xlr1FormatCell
    Left = 624
    Top = 368
  end
  object EditRepository1: TcxEditRepository
    Left = 416
    Top = 432
    object CurrencyItemEditRepository1CurrencyItem1: TcxEditRepositoryCurrencyItem
      Properties.DisplayFormat = ',0.00;-,0.00'
    end
  end
  object ds_plan: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT SUM(tp.SUM1)SUM1,'
      '       SUM(tp.SUM2)SUM2,'
      '       SUM(tp.SUM3)SUM3,'
      '       SUM(tp.SUM4)SUM4'
      'FROM TRFINPLAN tp'
      'left outer join house h on h.code=tp.house'
      'left outer join mhouse m on m.house=h.code and m.kontragent=1')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DefaultFormats.NumericEditFormat = '#,##0.'
    Left = 664
    Top = 336
  end
  object ds_Proc: TpFIBDataSet
    SelectSQL.Strings = (
      'select * from GET_PLAN_FACT(:Y, :MN, :KONTR)')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 376
    Top = 136
  end
end
