object TRLProcess7Form: TTRLProcess7Form
  Left = 0
  Top = 0
  Caption = #1092#1072#1082#1090' '#1074#1099#1087#1086#1083#1085#1077#1085#1085#1099#1093' '#1088#1072#1073#1086#1090' ('#1051#1080#1092#1090')'
  ClientHeight = 731
  ClientWidth = 953
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
    Width = 953
    Height = 731
    HelpContext = 116
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object grd1: TcxGrid
      Left = 10
      Top = 41
      Width = 933
      Height = 680
      TabOrder = 4
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
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnSorting = False
        OptionsCustomize.ColumnsQuickCustomization = True
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
            Width = 356
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
            Width = 241
          end
          item
            Caption = '2-'#1081' '#1082#1074#1072#1088#1090#1072#1083
            Width = 223
          end
          item
            Caption = '3-'#1081' '#1082#1074#1072#1088#1090#1072#1083
            Options.HoldOwnColumnsOnly = True
            Width = 216
          end
          item
            Caption = '4-'#1081' '#1082#1074#1072#1088#1090#1072#1083
            Options.HoldOwnColumnsOnly = True
            Width = 233
          end
          item
            Options.HoldOwnColumnsOnly = True
            Width = 283
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
          Width = 156
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1HOUSE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
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
          Width = 41
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1MLIST: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MLIST'
          Visible = False
          SortIndex = 2
          SortOrder = soDescending
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
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1KNAME: TcxGridDBBandedColumn
          Caption = #1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'KNAME'
          Width = 123
          Position.BandIndex = 1
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clvb1MANAGER: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MANAGER'
          Visible = False
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
          Position.BandIndex = 2
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1FKNAME: TcxGridDBBandedColumn
          Caption = #1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
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
          OnCustomDrawCell = clvb1M1CustomDrawCell
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1M2: TcxGridDBBandedColumn
          Caption = #1092#1077#1074#1088#1072#1083#1100
          DataBinding.FieldName = 'M2'
          OnCustomDrawCell = clvb1M2CustomDrawCell
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1M3: TcxGridDBBandedColumn
          Caption = #1084#1072#1088#1090
          DataBinding.FieldName = 'M3'
          OnCustomDrawCell = clvb1M3CustomDrawCell
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1M4: TcxGridDBBandedColumn
          Caption = #1072#1087#1088#1077#1083#1100
          DataBinding.FieldName = 'M4'
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
          OnCustomDrawCell = clvb1M5CustomDrawCell
          Position.BandIndex = 4
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1M6: TcxGridDBBandedColumn
          Caption = #1080#1102#1085#1100
          DataBinding.FieldName = 'M6'
          OnCustomDrawCell = clvb1M6CustomDrawCell
          Position.BandIndex = 4
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1M7: TcxGridDBBandedColumn
          Caption = #1080#1102#1083#1100
          DataBinding.FieldName = 'M7'
          OnCustomDrawCell = clvb1M7CustomDrawCell
          Position.BandIndex = 5
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1M8: TcxGridDBBandedColumn
          Caption = #1072#1074#1075#1091#1089#1090
          DataBinding.FieldName = 'M8'
          OnCustomDrawCell = clvb1M8CustomDrawCell
          Position.BandIndex = 5
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1M9: TcxGridDBBandedColumn
          Caption = #1089#1077#1085#1090#1103#1073#1088#1100
          DataBinding.FieldName = 'M9'
          OnCustomDrawCell = clvb1M9CustomDrawCell
          Position.BandIndex = 5
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1M10: TcxGridDBBandedColumn
          Caption = #1086#1082#1090#1103#1073#1088#1100
          DataBinding.FieldName = 'M10'
          OnCustomDrawCell = clvb1M10CustomDrawCell
          Position.BandIndex = 6
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1M11: TcxGridDBBandedColumn
          Caption = #1085#1086#1103#1073#1088#1100
          DataBinding.FieldName = 'M11'
          OnCustomDrawCell = clvb1M11CustomDrawCell
          Position.BandIndex = 6
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1M12: TcxGridDBBandedColumn
          Caption = #1076#1077#1082#1072#1073#1088#1100
          DataBinding.FieldName = 'M12'
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
          Width = 145
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
      end
      object l1: TcxGridLevel
        GridView = vb1
      end
    end
    object msk_Y: TcxMaskEdit
      Left = 33
      Top = 10
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 0
      Text = '2011'
      Width = 97
    end
    object btn_exec: TcxButton
      Left = 136
      Top = 10
      Width = 109
      Height = 25
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 1
      OnClick = btn_execClick
    end
    object cbb_manager: TcxLookupComboBox
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
      Width = 145
    end
    object grd2: TcxGrid
      Left = 10000
      Top = 10000
      Width = 250
      Height = 200
      TabOrder = 11
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
      TabOrder = 6
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
      TabOrder = 7
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
      TabOrder = 8
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
      TabOrder = 9
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
      TabOrder = 10
      Visible = False
      OnClick = btn_exClick
    end
    object btn_print: TcxButton
      Left = 251
      Top = 10
      Width = 95
      Height = 25
      Caption = #1054#1090#1095#1077#1090
      OptionsImage.Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
        0000333330FFFFFFFFF0003000000FF000F0E00FBFBFB0FFFFF0E0FBFB00000F
        F0F0E0BFBFBFBFB0FFF0E0FBFB00000FF0F0E0BFBFBFBFB0FFF0E0FB0000000F
        F0F0000FB0FFFFFFFFF0333000FFFFFFFFF0333330F000FF0000333330FFFFFF
        0FF0333330CCCCCC0F03333330FFFFFF00333333300000000333}
      TabOrder = 2
      OnClick = btn_printClick
    end
    object btn_excel: TcxButton
      Left = 352
      Top = 10
      Width = 41
      Height = 25
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      OptionsImage.ImageIndex = 16
      OptionsImage.Images = cmDb.iml1
      PaintStyle = bpsGlyph
      TabOrder = 3
      OnClick = btn_excelClick
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grlc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = True
      SizeOptions.Height = 8
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itm_Y: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1075#1086#1076
      Parent = grlc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 120
      Control = msk_Y
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_exec: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 109
      Control = btn_exec
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmlc1Item1: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 95
      Control = btn_print
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object grlc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
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
      Parent = grlc1Group4
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_manager: TdxLayoutItem
      CaptionOptions.Text = #1084#1077#1085#1077#1076#1078#1077#1088
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 287
      Control = cbb_manager
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object itmlc1Item11: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group1
      Control = btn_excel
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 760
    Top = 8
    object lcl1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = msk_Y
        Properties.Strings = (
          'Text')
      end>
    StorageName = 'prop1'
    Left = 724
    Top = 8
  end
  object ds_trplan: TpFIBDataSet
    SelectSQL.Strings = (
      'select TP.code PCODE,'
      '       H.STREET,'
      '       S.name SName,'
      '       du.name DUNAME,'
      '       TP.HOUSE,h.nomer,'
      '       TP.MLIST, m.name MName,'
      '       TF.sumost,'
      '       TF.SUMY,'
      '       TP.KONTRAGENT,k.name KName,'
      '       TP.MANAGER,'
      '       TP.FACTCODE,'
      '       TP.STATE,'
      '       TP.NOTE'
      'from TRLPLAN TP'
      'left outer join mlist m on m.code=tp.mlist'
      'left outer join house h on h.code=tp.house'
      'left outer join du on du.code=h.du'
      'left outer join street s on s.code=h.street'
      'left outer join kontragent k on k.code=tp.kontragent'
      'left outer join trlfinplan tf on tf.house=tp.house and tf.y=:Y'
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
      '       tf.TRLDOPSOG,'
      '       tf.SD, '
      '       tf.SMANAGER,'
      '       mh.worker'
      'FROM TRLFACT tf'
      'left outer join house h on h.code=tf.house'
      'left outer join street s on s.code=h.street'
      'left outer join du on du.code=h.du'
      'left outer join mlist m on m.code=tf.mlist'
      'left outer join kontragent k on k.code=tf.kontragent'
      
        'left outer join mhouse mh on mh.house=tf.house and mh.kontragent' +
        '=1'
      'left outer join trldopsog ds on ds.code=tf.trldopsog'
      'left outer join trldop td on td.code=ds.trldop')
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
    object sth1: TcxGridTableViewStyleSheet
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
      '       TP.MLIST, m.name MName,'
      '       TF.sumost,'
      '       TP.SUMY,'
      '       TP.KONTRAGENT,k.name KName,'
      '       TP.MANAGER,'
      '       TP.FACTCODE,'
      '       TP.STATE,'
      '       TP.NOTE'
      'from TRLPLAN TP'
      'left outer join mlist m on m.code=tp.mlist'
      'left outer join house h on h.code=tp.house'
      'left outer join street s on s.code=h.street'
      'left outer join kontragent k on k.code=tp.kontragent'
      'left outer join trlfinplan tf on tf.house=tp.house and tf.y=:Y')
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
  object fr: TfrxReport
    Version = '4.15.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40946.995176608800000000
    ReportOptions.LastChange = 40947.866768287030000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 512
    Top = 168
    Datasets = <
      item
        DataSet = dbds1
        DataSetName = 'ds'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
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
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Rich1: TfrxRichView
          Align = baClient
          Width = 718.110700000000000000
          Height = 71.811070000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C666E696C5C6663686172736574323034205461686F6D613B7D7B5C66315C
            666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C2A5C6765
            6E657261746F7220526963686564323020362E332E393630307D5C766965776B
            696E64345C756331200D0A5C706172645C71635C625C66305C667332345C2763
            655C2766325C2766375C2765355C276632205C2765665C276565205C2766325C
            2765355C2765615C2766335C2766395C2765355C2765635C276633205C276630
            5C2765355C2765635C2765655C2765645C2766325C276633205C2763655C2763
            655C27636520225C2763345C2763355C276337205C2763615C2765305C276562
            5C2765385C2765645C2765385C2766315C2765615C2765655C2765635C276633
            205C2766305C2765305C2765395C2765655C2765645C276633225C7061720D0A
            5C2765375C276530205C2765665C2765355C2766305C2765655C276534205C27
            6631205C66315C6C616E6731303333205B76617244315D205C66305C6C616E67
            313034395C2765665C276565205C66315C6C616E6731303333205B7661724432
            5D5C62305C66305C667331365C6C616E67313034395C7061720D0A7D0D0A00}
        end
      end
      object Header1: TfrxHeader
        Height = 18.897637800000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          Align = baLeft
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1040#1076#1088#1077#1089)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baLeft
          Left = 226.771800000000000000
          Width = 389.291590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          Left = 616.063390000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1091#1084#1084#1072)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897637795275590000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        DataSet = dbds1
        DataSetName = 'ds'
        RowCount = 0
        object Memo1: TfrxMemoView
          Align = baLeft
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds."SNAME"] [ds."NOMER"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          Left = 226.771800000000000000
          Width = 389.291590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds."MNAME"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 616.063390000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds."summa"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 19.275590550000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        Condition = 'ds."KNAME"'
        object Memo2: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15000804
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ds."KNAME"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 18.897637795275590000
        Top = 275.905690000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          Left = 616.063390000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[SUM(<ds."summa">,MasterData1,0)]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 279.685220000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1048#1090#1086#1075#1086' '#1087#1086' [ds."KNAME"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 102.047310000000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          Left = 616.063390000000000000
          Top = 83.149659999999990000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[SUM(<ds."summa">,MasterData1,0)]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 279.685220000000000000
          Top = 83.149659999999990000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1048#1090#1086#1075#1086' '#1087#1086' '#1054#1054#1054' "'#1044#1045#1047' '#1050#1072#1083#1080#1085#1080#1089#1082#1086#1075#1086' '#1088#1072#1081#1086#1085#1072'"')
          ParentFont = False
        end
      end
    end
  end
  object dbds1: TfrxDBDataset
    UserName = 'ds'
    CloseDataSource = False
    DataSet = ds_rep
    BCDToCurrency = False
    Left = 544
    Top = 168
  end
  object ds_rep: TpFIBDataSet
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 512
    Top = 120
  end
  object xlr1: TEXLReport
    About = 'EMS Advanced Excel Report(tm) Component Suite for Delphi(R)'
    DataSet = m1
    Dictionary = <>
    _Version = '1.9.0.2'
    OnFormatCell = xlr1FormatCell
    Left = 640
    Top = 360
  end
  object frxrtfxprt1: TfrxRTFExport
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
    Left = 520
    Top = 224
  end
end
