object BDR2Form: TBDR2Form
  Left = 0
  Top = 0
  Caption = #1055#1083#1072#1085' '#1041#1044#1056'2 ('#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077' '#1080' '#1088#1077#1084#1086#1085#1090')'
  ClientHeight = 520
  ClientWidth = 1110
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1110
    Height = 500
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = laf1
    object grd1: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1082
      Height = 332
      TabOrder = 2
      Visible = False
      object vb1: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_mT1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF4
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF5
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF6
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF7
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF8
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF9
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF10
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF11
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF12
          end
          item
            Format = ',0.00'
            Kind = skSum
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF14
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF15
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF16
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF17
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF18
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF19
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF20
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF21
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF22
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF23
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF24
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF25
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF26
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF27
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF28
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF30
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF32
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF34
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = vb1Column1
          end
          item
            Kind = skSum
            Column = vb1Column2
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF36
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clDZI
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = vb1Column3
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF38
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF39
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF40
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF41
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsCustomize.BandMoving = False
        OptionsCustomize.BandsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        Bands = <
          item
            Width = 1500
          end
          item
            Caption = #1053#1077#1078#1080#1083#1086#1081' '#1092#1086#1085#1076
          end
          item
            Caption = #1046#1080#1083#1086#1081'+'#1053#1077#1078#1080#1083#1086#1081' '#1092#1086#1085#1076
          end
          item
            Width = 500
          end
          item
            Caption = #1058#1077#1093#1085#1080#1095#1077#1089#1082#1086#1077' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077
            Position.BandIndex = 3
            Position.ColIndex = 1
            Width = 392
          end
          item
            Position.BandIndex = 3
            Position.ColIndex = 0
            Width = 108
          end
          item
            Caption = #1057#1072#1085#1090#1077#1093'.,'#1086#1073#1097#1077#1089#1090#1088'. '#1088#1072#1073#1086#1090#1099
            Position.BandIndex = 4
            Position.ColIndex = 0
            Width = 149
          end
          item
            Caption = #1069#1083'.'#1084#1086#1085#1090#1072#1078'.'#1088#1072#1073#1086#1090#1099
            Position.BandIndex = 4
            Position.ColIndex = 1
            Width = 110
          end
          item
            Caption = #1058#1077#1082#1091#1097#1080#1081' '#1088#1077#1084#1086#1085#1090
            Position.BandIndex = 4
            Position.ColIndex = 2
            Width = 133
          end
          item
            Caption = #1055#1086#1076#1088#1103#1076#1095#1080#1082#1080
          end>
        object vDog: TcxGridDBBandedColumn
          Caption = #1044
          DataBinding.FieldName = 'D'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          MinWidth = 16
          Width = 16
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1A: TcxGridDBBandedColumn
          DataBinding.FieldName = 'A'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 20
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
          IsCaptionAssigned = True
        end
        object clF0: TcxGridDBBandedColumn
          Caption = #8470
          DataBinding.FieldName = 'F0'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clF1: TcxGridDBBandedColumn
          Caption = #1040#1076#1088#1077#1089
          DataBinding.FieldName = 'F1'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 181
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clF2: TcxGridDBBandedColumn
          Caption = #1044#1059
          DataBinding.FieldName = 'F2'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 32
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clF3: TcxGridDBBandedColumn
          Caption = #1058#1072#1088#1080#1092
          DataBinding.FieldName = 'F3'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 58
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clF4: TcxGridDBBandedColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'F4'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 65
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object clF5: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
          DataBinding.FieldName = 'F5'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 51
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object clF6: TcxGridDBBandedColumn
          Caption = #1041#1072#1083#1072#1085#1089
          DataBinding.FieldName = 'F6'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 68
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object clF7: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086' ('#1089#1082#1086#1088#1088'.)'
          DataBinding.FieldName = 'F7'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 68
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object clF8: TcxGridDBBandedColumn
          Caption = #1055#1083#1072#1090#1072' '#1079#1072' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1077
          DataBinding.FieldName = 'F8'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 74
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object clF9: TcxGridDBBandedColumn
          Caption = #1050#1086#1084#1080#1089#1089#1080#1086#1085#1085#1099#1081' '#1089#1073#1086#1088
          DataBinding.FieldName = 'F9'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 68
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object vb1Column1: TcxGridDBBandedColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100' '#1076#1077#1088#1072#1090#1080#1079
          DataBinding.FieldName = 'DRTZ'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 48
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object clF10: TcxGridDBBandedColumn
          Caption = #1044#1077#1088#1072#1090#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'F10'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 61
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object clF11: TcxGridDBBandedColumn
          Caption = #1044#1086#1089#1090#1072#1074#1082#1072' '#1080' '#1088#1072#1089#1087#1077#1095#1072#1090#1082#1072' '#1082#1074#1080#1090#1072#1085#1094#1080#1081
          DataBinding.FieldName = 'F11'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 70
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object clDZI: TcxGridDBBandedColumn
          Caption = #1044#1077#1079#1080#1085#1089#1077#1082#1094#1080#1103
          DataBinding.FieldName = 'F37'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 63
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object clF12: TcxGridDBBandedColumn
          Caption = #1054#1044#1057
          DataBinding.FieldName = 'F12'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 54
          Position.BandIndex = 0
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object clF14: TcxGridDBBandedColumn
          Caption = #1055#1088#1086#1095#1080#1077' '#1079#1072#1090#1088#1072#1090#1099
          DataBinding.FieldName = 'F14'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
        object clF15: TcxGridDBBandedColumn
          Caption = #1048#1090#1086#1075#1086' '#1079#1072#1090#1088#1072#1090#1099
          DataBinding.FieldName = 'F15'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 70
          Position.BandIndex = 0
          Position.ColIndex = 21
          Position.RowIndex = 0
        end
        object clF16: TcxGridDBBandedColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'F16'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 53
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clF17: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
          DataBinding.FieldName = 'F17'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 68
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clF18: TcxGridDBBandedColumn
          Caption = #1055#1083#1072#1090#1072' '#1079#1072' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1077
          DataBinding.FieldName = 'F18'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 97
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clF19: TcxGridDBBandedColumn
          Caption = #1050#1086#1084#1080#1089#1089#1080#1086#1085#1085#1099#1081' '#1089#1073#1086#1088
          DataBinding.FieldName = 'F19'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 91
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clF20: TcxGridDBBandedColumn
          Caption = #1055#1088#1086#1095#1080#1077' '#1079#1072#1090#1088#1072#1090#1099
          DataBinding.FieldName = 'F20'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 74
          Position.BandIndex = 1
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clF21: TcxGridDBBandedColumn
          Caption = #1048#1090#1086#1075#1086' '#1079#1072#1090#1088#1072#1090#1099
          DataBinding.FieldName = 'F21'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 81
          Position.BandIndex = 1
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clF22: TcxGridDBBandedColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'F22'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 63
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clF23: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
          DataBinding.FieldName = 'F23'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 78
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clF24: TcxGridDBBandedColumn
          Caption = #1042#1086#1079#1085#1072#1075#1088#1072#1078#1076#1077#1085#1080#1077' '#1059#1050
          DataBinding.FieldName = 'F24'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 93
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clF25: TcxGridDBBandedColumn
          Caption = #1050#1086#1084#1080#1089#1089#1080#1086#1085#1085#1099#1081' '#1089#1073#1086#1088
          DataBinding.FieldName = 'F25'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 85
          Position.BandIndex = 2
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clF26: TcxGridDBBandedColumn
          Caption = #1044#1077#1088#1072#1090#1080#1079#1072#1094#1080#1103'. '#1054#1044#1057'. '#1050#1074#1080#1090#1072#1085#1094#1080#1080'. '#1055#1088#1086#1095#1077#1077
          DataBinding.FieldName = 'F26'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 81
          Position.BandIndex = 2
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clF27: TcxGridDBBandedColumn
          Caption = #1048#1090#1086#1075#1086' '#1079#1072#1090#1088#1072#1090#1099
          DataBinding.FieldName = 'F27'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 81
          Position.BandIndex = 2
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object clF28: TcxGridDBBandedColumn
          Caption = #1057#1091#1084#1084#1072' '#1082' '#1088#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1102
          DataBinding.FieldName = 'F28'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 121
          Position.BandIndex = 5
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clF29: TcxGridDBBandedColumn
          Caption = '%'
          DataBinding.FieldName = 'F29'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 58
          Position.BandIndex = 6
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clF30: TcxGridDBBandedColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = 'F30'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 96
          Position.BandIndex = 6
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clF31: TcxGridDBBandedColumn
          Caption = '%'
          DataBinding.FieldName = 'F31'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 33
          Position.BandIndex = 7
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clF32: TcxGridDBBandedColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = 'F32'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 81
          Position.BandIndex = 7
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clF33: TcxGridDBBandedColumn
          Caption = '%'
          DataBinding.FieldName = 'F33'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 36
          Position.BandIndex = 8
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clF34: TcxGridDBBandedColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = 'F34'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 63
          Position.BandIndex = 8
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object vb1Column2: TcxGridDBBandedColumn
          Caption = #1051#1080#1094'.'#1089#1095#1077#1090#1072
          DataBinding.FieldName = 'AccCount'
          Width = 45
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object clF36: TcxGridDBBandedColumn
          Caption = #1059#1089#1090#1072#1085#1086#1074#1082#1072' '#1048#1055#1059
          DataBinding.FieldName = 'F36'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 20
          Position.RowIndex = 0
        end
        object vb1Column3: TcxGridDBBandedColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100' '#1076#1077#1079#1080#1085#1089#1077#1082#1094'.'
          DataBinding.FieldName = 'DZI'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object clF38: TcxGridDBBandedColumn
          AlternateCaption = '2'
          Caption = #1059#1073#1086#1088#1082#1072' '#1076#1074#1086#1088#1072
          DataBinding.FieldName = 'F38'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 70
          Position.BandIndex = 2
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object clF39: TcxGridDBBandedColumn
          Caption = #1059#1073#1086#1088#1082#1072' '#1087#1086#1076#1098#1077#1079#1076#1072
          DataBinding.FieldName = 'F39'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 70
          Position.BandIndex = 2
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object clF40: TcxGridDBBandedColumn
          Caption = #1042#1077#1085#1090#1080#1083#1103#1094#1080#1103
          DataBinding.FieldName = 'F40'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 70
          Position.BandIndex = 2
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clF41: TcxGridDBBandedColumn
          Caption = #1042#1077#1085#1090#1080#1083#1103#1094#1080#1103' ('#1101#1083#1077#1082#1090#1088#1086')'
          DataBinding.FieldName = 'F41'
          Visible = False
          Width = 70
          Position.BandIndex = 2
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object clK1: TcxGridDBBandedColumn
          Caption = #1069#1083#1077#1082#1090#1088#1080#1082#1072
          DataBinding.FieldName = 'KName1'
          Width = 120
          Position.BandIndex = 9
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clK2: TcxGridDBBandedColumn
          Caption = #1054#1073#1097#1077#1089#1090#1088#1086#1081
          DataBinding.FieldName = 'KName2'
          Width = 120
          Position.BandIndex = 9
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clK3: TcxGridDBBandedColumn
          Caption = #1059#1073#1086#1088#1082#1072' '#1076#1074#1086#1088#1072
          DataBinding.FieldName = 'KName3'
          Width = 120
          Position.BandIndex = 9
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clK4: TcxGridDBBandedColumn
          Caption = #1059#1073#1086#1088#1082#1072' '#1087#1086#1076#1098#1077#1079#1076#1072
          DataBinding.FieldName = 'KName4'
          Width = 120
          Position.BandIndex = 9
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clk5: TcxGridDBBandedColumn
          Caption = #1044#1077#1088#1072#1090#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'KName5'
          Visible = False
          Width = 120
          Position.BandIndex = 9
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clk6: TcxGridDBBandedColumn
          Caption = #1044#1077#1079#1080#1085#1089#1077#1082#1094#1080#1103
          DataBinding.FieldName = 'KName6'
          Visible = False
          Width = 120
          Position.BandIndex = 9
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clk7: TcxGridDBBandedColumn
          Caption = #1042#1077#1085#1090#1082#1072#1085#1072#1083#1099' ('#1075#1072#1079')'
          DataBinding.FieldName = 'KName7'
          Visible = False
          Width = 120
          Position.BandIndex = 9
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object clk8: TcxGridDBBandedColumn
          Caption = #1042#1077#1085#1090#1082#1072#1085#1072#1083#1099' ('#1101#1083#1077#1082#1090#1088#1086')'
          DataBinding.FieldName = 'KName8'
          Visible = False
          Width = 120
          Position.BandIndex = 9
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
      end
      object l1: TcxGridLevel
        GridView = vb1
      end
    end
    object Memo: TcxMemo
      Left = 10000
      Top = 10000
      Align = alBottom
      Properties.ReadOnly = True
      Properties.ScrollBars = ssVertical
      Style.HotTrack = False
      TabOrder = 0
      Visible = False
      Height = 89
      Width = 1082
    end
    object doc1: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1082
      Height = 26
      Align = dalTop
      BarManager = brm1
      Visible = False
    end
    object doc2: TdxBarDockControl
      Left = 12
      Top = 37
      Width = 1082
      Height = 26
      Align = dalTop
      BarManager = brm1
    end
    object grd2: TcxGrid
      Left = 12
      Top = 63
      Width = 1082
      Height = 421
      TabOrder = 4
      LockedStateImageOptions.Effect = lsieDark
      object vb2: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl7
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl8
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl9
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl10
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl11
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl12
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl14
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl15
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl16
          end
          item
            Format = ',0.00'
            Kind = skSum
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl17
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl18
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl19
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl20
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl21
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl22
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl23
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl24
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl25
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl26
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl27
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl28
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl29
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl30
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl31
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl33
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl35
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl37
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl13
          end
          item
            Kind = skSum
            Column = cl38
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clcDZI
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = vb2Column1
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb2F38
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb2F39
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb2F40
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsCustomize.BandMoving = False
        OptionsCustomize.BandsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        Bands = <
          item
            Width = 1349
          end
          item
            Caption = #1053#1077#1078#1080#1083#1086#1081' '#1092#1086#1085#1076
          end
          item
            Caption = #1046#1080#1083#1086#1081'+'#1053#1077#1078#1080#1083#1086#1081' '#1092#1086#1085#1076
          end
          item
            Width = 500
          end
          item
            Caption = #1058#1077#1093#1085#1080#1095#1077#1089#1082#1086#1077' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077
            Position.BandIndex = 3
            Position.ColIndex = 1
            Width = 392
          end
          item
            Position.BandIndex = 3
            Position.ColIndex = 0
            Width = 108
          end
          item
            Caption = #1057#1072#1085#1090#1077#1093'.,'#1086#1073#1097#1077#1089#1090#1088'. '#1088#1072#1073#1086#1090#1099
            Position.BandIndex = 4
            Position.ColIndex = 0
            Width = 149
          end
          item
            Caption = #1069#1083'.'#1084#1086#1085#1090#1072#1078'.'#1088#1072#1073#1086#1090#1099
            Position.BandIndex = 4
            Position.ColIndex = 1
            Width = 110
          end
          item
            Caption = #1058#1077#1082#1091#1097#1080#1081' '#1088#1077#1084#1086#1085#1090
            Position.BandIndex = 4
            Position.ColIndex = 2
            Width = 133
          end>
        object cl1: TcxGridDBBandedColumn
          Caption = #1044
          DataBinding.FieldName = 'D'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Visible = False
          MinWidth = 16
          VisibleForCustomization = False
          Width = 16
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cl2: TcxGridDBBandedColumn
          DataBinding.FieldName = 'A'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Visible = False
          VisibleForCustomization = False
          Width = 21
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
          IsCaptionAssigned = True
        end
        object cl3: TcxGridDBBandedColumn
          Caption = #8470
          DataBinding.FieldName = 'F0'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cl4: TcxGridDBBandedColumn
          Caption = #1040#1076#1088#1077#1089
          DataBinding.FieldName = 'F1'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 242
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cl5: TcxGridDBBandedColumn
          Caption = #1044#1059
          DataBinding.FieldName = 'F2'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 46
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cl6: TcxGridDBBandedColumn
          Caption = #1058#1072#1088#1080#1092
          DataBinding.FieldName = 'F3'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 77
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cl7: TcxGridDBBandedColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'F4'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 86
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cl8: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
          DataBinding.FieldName = 'F5'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 70
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object cl9: TcxGridDBBandedColumn
          Caption = #1041#1072#1083#1072#1085#1089
          DataBinding.FieldName = 'F6'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 68
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object cl10: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086' ('#1089#1082#1086#1088#1088'.)'
          DataBinding.FieldName = 'F7'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 68
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object cl11: TcxGridDBBandedColumn
          Caption = #1055#1083#1072#1090#1072' '#1079#1072' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1077
          DataBinding.FieldName = 'F8'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object cl12: TcxGridDBBandedColumn
          Caption = #1050#1086#1084#1080#1089#1089#1080#1086#1085#1085#1099#1081' '#1089#1073#1086#1088
          DataBinding.FieldName = 'F9'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object cl13: TcxGridDBBandedColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100' '#1076#1077#1088#1072#1090#1080#1079
          DataBinding.FieldName = 'DRTZ'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 81
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object cl14: TcxGridDBBandedColumn
          Caption = #1044#1077#1088#1072#1090#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'F10'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 85
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object clcDZI: TcxGridDBBandedColumn
          Caption = #1044#1077#1079#1080#1085#1089#1077#1082#1094#1080#1103
          DataBinding.FieldName = 'F37'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 71
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object cl15: TcxGridDBBandedColumn
          Caption = #1044#1086#1089#1090#1072#1074#1082#1072' '#1080' '#1088#1072#1089#1087#1077#1095#1072#1090#1082#1072' '#1082#1074#1080#1090#1072#1085#1094#1080#1081
          DataBinding.FieldName = 'F11'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 91
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object cl16: TcxGridDBBandedColumn
          Caption = #1054#1044#1057
          DataBinding.FieldName = 'F12'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 69
          Position.BandIndex = 0
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object cl17: TcxGridDBBandedColumn
          Caption = #1055#1088#1086#1095#1080#1077' '#1079#1072#1090#1088#1072#1090#1099
          DataBinding.FieldName = 'F14'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 82
          Position.BandIndex = 0
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
        object cl18: TcxGridDBBandedColumn
          Caption = #1048#1090#1086#1075#1086' '#1079#1072#1090#1088#1072#1090#1099
          DataBinding.FieldName = 'F15'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 72
          Position.BandIndex = 0
          Position.ColIndex = 21
          Position.RowIndex = 0
        end
        object cl19: TcxGridDBBandedColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'F16'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 53
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cl20: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
          DataBinding.FieldName = 'F17'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 68
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cl21: TcxGridDBBandedColumn
          Caption = #1055#1083#1072#1090#1072' '#1079#1072' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1077
          DataBinding.FieldName = 'F18'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 97
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cl22: TcxGridDBBandedColumn
          Caption = #1050#1086#1084#1080#1089#1089#1080#1086#1085#1085#1099#1081' '#1089#1073#1086#1088
          DataBinding.FieldName = 'F19'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 91
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cl23: TcxGridDBBandedColumn
          Caption = #1055#1088#1086#1095#1080#1077' '#1079#1072#1090#1088#1072#1090#1099
          DataBinding.FieldName = 'F20'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 74
          Position.BandIndex = 1
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cl24: TcxGridDBBandedColumn
          Caption = #1048#1090#1086#1075#1086' '#1079#1072#1090#1088#1072#1090#1099
          DataBinding.FieldName = 'F21'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 81
          Position.BandIndex = 1
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cl25: TcxGridDBBandedColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'F22'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 63
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cl26: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
          DataBinding.FieldName = 'F23'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 78
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cl27: TcxGridDBBandedColumn
          Caption = #1042#1086#1079#1085#1072#1075#1088#1072#1078#1076#1077#1085#1080#1077' '#1059#1050
          DataBinding.FieldName = 'F24'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 93
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cl28: TcxGridDBBandedColumn
          Caption = #1050#1086#1084#1080#1089#1089#1080#1086#1085#1085#1099#1081' '#1089#1073#1086#1088
          DataBinding.FieldName = 'F25'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 85
          Position.BandIndex = 2
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cl29: TcxGridDBBandedColumn
          Caption = #1044#1077#1088#1072#1090#1080#1079#1072#1094#1080#1103'. '#1054#1044#1057'. '#1050#1074#1080#1090#1072#1085#1094#1080#1080'. '#1055#1088#1086#1095#1077#1077
          DataBinding.FieldName = 'F26'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 81
          Position.BandIndex = 2
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cl30: TcxGridDBBandedColumn
          Caption = #1048#1090#1086#1075#1086' '#1079#1072#1090#1088#1072#1090#1099
          DataBinding.FieldName = 'F27'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 81
          Position.BandIndex = 2
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object cl31: TcxGridDBBandedColumn
          Caption = #1057#1091#1084#1084#1072' '#1082' '#1088#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1102
          DataBinding.FieldName = 'F28'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 121
          Position.BandIndex = 5
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cl32: TcxGridDBBandedColumn
          Caption = '%'
          DataBinding.FieldName = 'F29'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 58
          Position.BandIndex = 6
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cl33: TcxGridDBBandedColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = 'F30'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 96
          Position.BandIndex = 6
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cl34: TcxGridDBBandedColumn
          Caption = '%'
          DataBinding.FieldName = 'F31'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 33
          Position.BandIndex = 7
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cl35: TcxGridDBBandedColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = 'F32'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 81
          Position.BandIndex = 7
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cl36: TcxGridDBBandedColumn
          Caption = '%'
          DataBinding.FieldName = 'F33'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 36
          Position.BandIndex = 8
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cl37: TcxGridDBBandedColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = 'F34'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 63
          Position.BandIndex = 8
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cl38: TcxGridDBBandedColumn
          Caption = #1051#1080#1094'.'#1089#1095#1077#1090#1072
          DataBinding.FieldName = 'AccCount'
          Visible = False
          VisibleForCustomization = False
          Width = 57
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object vb2Column1: TcxGridDBBandedColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100' '#1076#1077#1079#1080#1085#1089#1077#1082#1094#1080#1080
          DataBinding.FieldName = 'DZI'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 77
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object clvb2F36: TcxGridDBBandedColumn
          Caption = #1059#1089#1090#1072#1085#1086#1074#1082#1072' '#1048#1055#1059
          DataBinding.FieldName = 'F36'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 0
          Position.ColIndex = 20
          Position.RowIndex = 0
        end
        object clvb2F38: TcxGridDBBandedColumn
          Caption = #1059#1073#1086#1088#1082#1072' '#1076#1074#1086#1088#1072
          DataBinding.FieldName = 'F38'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 2
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clvb2F39: TcxGridDBBandedColumn
          Caption = #1059#1073#1086#1088#1082#1072' '#1087#1086#1076#1098#1077#1079#1076#1072
          DataBinding.FieldName = 'F39'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 2
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object clvb2F40: TcxGridDBBandedColumn
          Caption = #1042#1077#1085#1090#1080#1083#1103#1094#1080#1103
          DataBinding.FieldName = 'F40'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 2
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
      end
      object l2: TcxGridLevel
        GridView = vb2
      end
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = laf1
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
      Parent = lgrplc1Group2
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lc1Item1: TdxLayoutItem
      AlignVert = avBottom
      Parent = lgrplc1Group2
      Control = Memo
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lgrplc1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object lgrplc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1055#1083#1072#1085' '#1041#1044#1056'2'
      Parent = lgrplc1Group1
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 0
    end
    object lgrplc1Group3: TdxLayoutGroup
      CaptionOptions.Text = #1054#1090#1095#1077#1090
      Parent = lgrplc1Group1
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object LItemlc1Item2: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = lgrplc1Group2
      Control = doc1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LItemlc1Item21: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = lgrplc1Group3
      Control = doc2
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemlc1Item3: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = lgrplc1Group3
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object StatusBar: TdxStatusBar
    Left = 0
    Top = 500
    Width = 1110
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarContainerPanelStyle'
        PanelStyle.Container = StatusBarContainer0
      end>
    PaintStyle = stpsUseLookAndFeel
    LookAndFeel.NativeStyle = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    object StatusBarContainer0: TdxStatusBarContainerControl
      Left = 3
      Top = 4
      Width = 1090
      Height = 13
      object ProgressBar: TcxProgressBar
        Left = 0
        Top = 0
        Align = alClient
        TabOrder = 0
        Width = 1090
      end
    end
  end
  object lkf1: TdxLayoutLookAndFeelList
    Left = 720
    Top = 184
    object laf1: TdxLayoutCxLookAndFeel
      Offsets.ControlOffsetHorz = 0
      Offsets.ControlOffsetVert = 0
      Offsets.ItemOffset = 0
      Offsets.RootItemsAreaOffsetHorz = 0
      Offsets.RootItemsAreaOffsetVert = 0
      LookAndFeel.NativeStyle = False
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 691
    Top = 184
  end
  object brm1: TdxBarManager
    AlwaysSaveText = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
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
    Left = 656
    Top = 184
    DockControlHeights = (
      0
      0
      0
      0)
    object brm1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = doc1
      DockedDockControl = doc1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 763
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lb_month'
        end
        item
          Visible = True
          ItemName = 'lb_year'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_exec'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'btn_xls'
        end
        item
          Visible = True
          ItemName = 'btn_MakeSmeta2015'
        end
        item
          Visible = True
          ItemName = 'btn_MakeDRTZ_Smeta'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 268
          Visible = True
          ItemName = 'BarCombo'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object brm1Bar2: TdxBar
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
      FloatLeft = 950
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bc_M1'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 58
          Visible = True
          ItemName = 'bI_Y1'
        end
        item
          Visible = True
          ItemName = 'bc_M2'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 49
          Visible = True
          ItemName = 'bI_Y2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Rep'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_ExcelRep'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object lb_month: TcxBarEditItem
      Caption = #1052#1077#1089#1103#1094
      Category = 0
      Hint = #1052#1077#1089#1103#1094
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
          FieldName = 'NAME'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_month
    end
    object lb_year: TcxBarEditItem
      Caption = #1075#1086#1076
      Category = 0
      Hint = #1075#1086#1076
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxMaskEditProperties'
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
    end
    object btn_exec: TdxBarButton
      Caption = #1057#1092#1086#1088#1084#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1057#1092#1086#1088#1084#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000303000C
        2929001A5959002A8989003CB9B90065E9E90051D4D400000000000000000000
        000000000000000000000000000000041212002597970039C7C70555F4F4096B
        FFFF0A81FFFF099DFFFF07B9FFFF03C6FFFF0053D8D800000000000000000000
        00000000000000000000000000000000030300218B8B1671FEFE34BFFFFF1DB2
        FFFF17B6FFFF12BAFFFF0DC0FFFF08BEFFFF0051DADA00000000000000000000
        00000000000000000000000005050000000000000000001873732C7FFFFF2FB2
        FFFF1DADFFFF18B2FFFF13B8FFFF0EBAFFFF014EDBDB00000000000000000000
        00000000000000000000001D9F9F0018838300000000001A86863698FFFF28A3
        FFFF23A7FFFF1DACFFFF18B3FFFF13B7FFFF0049DBDB00000000000000000000
        00000000000000010C0D0838E4F31053F7FE000F5F5F0535E2E339A1FFFF2E9C
        FFFF29A1FFFF23A8FFFF1FAFFFFF19B8FFFF0045DBDB00000000000000000000
        000000000000000B5B63195CF3FF2682FFFF083BF0FD1558F9FF2E92FFFF3196
        FFFF309DFFFF2CA6FFFF2A91FFFF35C6FFFF0248DCDC00000000000000000000
        0000000000000118ADC32579FFFF1F72FFFF2279FFFF2580FEFF2988FFFF2E90
        FFFF3399FFFF0C4FF5F5002192921468F9F90347DEDE00000000000000000000
        0000000322261846DEFE1C6CFFFF3D95FFFF1E71FFFF2279FFFF2783FFFF2883
        FFFF0539E9E9000D38380000000000103C3C0034B4B400000000000000000000
        000000076B86337BF7FF194CE2FE153FDCFB388FFFFF1E72FFFF1D6CFBFF0128
        CFD7000622220000000000000000000000000000000000000000000000000000
        0203091EB0E4316DEAFF000867880009667D3579F1FF1960F7FF001DADC00002
        1111000000000000000000000000000000000000000000000000000000000003
        3249102CC4FF000A7BA800000101000003040119ACCB001492A3000006060000
        0000000000000000000000000000000000000000000000000000000000000004
        70AA000786C300000608000000000000000000010B0B00000001000000000000
        0000000000000000000000000000000000000000000000000000000000000002
        84D100000D130000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btn_execClick
    end
    object btn_xls: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      Glyph.Data = {
        26040000424D2604000000000000360000002800000012000000120000000100
        180000000000F0030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000FFFFFF
        0000FFFFFF000000000000000000000000000000000000000000000000000000
        000000000000808000808000808000808000000000FFFFFF0000FFFFFF000000
        808080808080808080808080808080808080808080808080000000808000FFFF
        00FFFF00FFFFFF000000FFFFFFFFFFFF0000FFFFFFFFFFFF000000FFFF008080
        00808000808000808000808000000000808000FFFF00FFFF00FFFFFF000000FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF000000FFFF0080800080800080
        8000000000808000FFFF00FFFF00FFFFFF000000808000000000FFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00808000000000808000FFFF00
        FFFF00FFFFFF000000000000000000000000FFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000808000FFFF00FFFF00FFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000808000FFFF00FFFF00FFFFFF000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF000000808000FFFF00FF
        FF00FFFFFF000000808000808080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFF000000808000FFFF00FFFF00FFFFFF000000FFFF00
        808000808000808080000000FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        000000808000FFFF00FFFF00FFFFFF000000FFFFFF000000FFFF008080008080
        00808080000000FFFFFFFFFFFFFFFFFF0000FFFFFF000000FFFFFFFFFFFFFFFF
        FFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFF00FFFF00FFFF00FFFF0000
        0000FFFFFFFFFFFF0000FFFFFF000000000000000000000000000000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000FFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000}
      OnClick = btn_xlsClick
    end
    object dxBarButton1: TdxBarButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000101
        000266260592983700E67D5139ECA0A4A4F2B2ABA4F2C2C1BCF2C3C3C5F2AAAA
        AAF599A2A8FF762B01EB933603E691390EE34216017000000000000000007B35
        039FBE6317FFCD7927FF9E8770FFB98759FFCE700DFFDCAF7AFFFEFFFFFFFAFA
        FAFFD9E2EAFFAD7024FFDD9435FFECBE75FFA0410AF70000000000000000C968
        0DFFC07028FFC36C1EFFA7876BFFAE7C5AFFBA5809FFC69A6CFFD9DFE5FFF8F8
        F8FFF8FFFFFFA3631DFFD5872DFFE5AF69FFA5460AFF0000000000000000CB69
        0CFFBB6823FFBF6619FFB4906EFFB37C60FFAF4900FFB5875EFFBFC6CDFFDEE0
        E2FFFFFFFFFFA5641FFFD4842DFFE4B06CFFA44409FF0000000000000000C969
        0AFFB8631FFFBC6219FFB07F55FFC1BFBDFFB0ACA8FF98918BFF9A8E84FFA397
        8AFFAEA79FFF90581FFFA76723FFDA9542FFA6450DFF0000000000000000C967
        0AFFB55D1BFFB65D17FFB85B0FFFBA5808FFBE5D0AFFC2620EFFC56710FFC869
        13FFC96E16FFCE7824FFD07F2AFFD38932FFA5450EFF0000000000000000C868
        09FFB05514FFB16933FFAF7142FFAE703FFFAF7341FFB17340FFB07642FFB277
        41FFB47A43FFB47D46FFBD8041FFD1842DFFA6460EFF0000000000000000C765
        08FFAC4B09FFB59C89FFE6F2FBFFE4EDF3FFE6EEF5FFE6EDF4FFE1E9EFFFDDE5
        ECFFD5DEE4FFD1DCE6FFAD9A8AFFD07F26FFA4450EFF0000000000000000C865
        09FFA84303FFB89984FFF4F9FCFFD5D4D2FFBEBDBCFFC0BFBEFFC1C0BFFFC2C0
        BFFFCBCAC9FFDFE3E6FFB19B85FFCF7C22FFA4440DFF0000000000000000C765
        08FFA23C00FFBA9B85FFFAFFFFFFF1F1F1FFECECECFFEBEBEBFFE8E8E8FFE4E4
        E4FFE1E1E1FFE2E5E9FFB29B88FFCD7920FFA5440DFF0000000000000000C662
        07FF9E3700FFBC9C8AFFFFFFFFFFDDDCDBFFC2C1C0FFC4C3C2FFC4C3C2FFC2C1
        C0FFCECDCCFFE4E7EBFFB39D89FFCD771FFFA4440EFF0000000000000000C562
        06FF9A3100FFBF9D8AFFFFFFFFFFFBFBFBFFEEEEEEFFEFEFEFFFE9E9E9FFE4E4
        E4FFE4E4E4FFE6EAEDFFB5A089FFC2701DFFA9480DFF0000000000000000C05E
        05FA932800FFBE9D8DFFFFFFFFFFE5E4E3FFD0CFCEFFD1D0CFFFCFCECDFFCDCC
        CBFFD4D3D2FFE9EDF1FFB9A38CFF8A4F14FFAE4E0EFA00000000000000006C39
        0484BF5300FBC8A483FFD5D7D7FFD6D3D0FFD6D3D0FFD1CFCCFFCCCAC8FFC7C5
        C3FFC1BEBBFFBDBDBDFFB1947BFFBF5700FB5D2A058400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      Category = 0
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000143A4D61006696EF00638FDF0044649B00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000002D93BCFC007AADFF4CD9F7FF0CA3D2FF037FB2FC00699AE5004F
        76B100151F290000000000000000000000000000000000000000000000000000
        0000003348671888B6FC007DB0FF90EFFFFF30E0FFFF29E2FFFF1DCBEEFF0FA4
        D2FF0584B6FE006FA1EE005179B7000000000000000000000000000000000000
        0000065C7FB062B2D1FF007FB2FF81D2BFFF2BB998FF2ABC94FF21B793FF34E0
        FFFF33E2FFFF2DD0EEFF20B1DDFF0C86B6FF006290E40000000000000000002D
        3E560379ACED7DC998FF0081B4FF87DEB8FF5AE7C0FF50E0B5FF36C3A8FF4BE4
        FFFF45E2FFFF45E0FFFF46E2FFFF3FCFF0FF006DA0FF00000000000000000052
        709A62AD8CFE0C8012FF0084B7FF94E6C0FF64E7BDFF3FC38DFF68EDF9FF63EC
        FFFF5CEAFFFF58E9FFFF56E4FEFF64DAEDFF006FA2FF0000000000000000529A
        A3E1086D0BFF0F831AFF0086B9FF90DCABFF58D89EFF72ECD3FF82F6FFFF7AF4
        FFFF73F3FFFF6CF0FFFF4CC9E3FFAAFFFFFF0072A5FF00000000000000000171
        39FA0D9D14FF1B7E21FF0077AAFFDCFFFFFFA1FFFFFF9CFBFFFF94F9FFFF8CF7
        FFFF85F6FFFF7EF5FFFF5DCBDFFFD1FFFFFF0074A7FF00000000000000000175
        12FF23C534FF0E8F19FF5CA1C1FFC3EDF5FF209743FF85E3EFFF92F0F8FF9CFA
        FFFF94F8FFFF65D2E7FFAAF4F9FFDAFFFFFF0077AAFF00000000000000000270
        05F12ECC42FF3AD657FF12971FFF23902CFF048008FFABE7F0FF81D4E6FF6BC7
        DFFF65C6DFFF5FC2DBFFD3FFFFFFE7FFFFFF0079ACFF0000000000000000004F
        04B32FC646FF43DE64FF52ED7CFF4FE676FF098317FFA0D9E6FFD0EFF6FFE6FC
        FCFFF1FFFFFFE6FFFFFFDEFFFFFFF3FFFFFF007CAFFF0000000000000000000E
        001B027C07EF4BE56FFF59F285FF6CFFA3FF0B841AFF2E6B7D9800678DB6006E
        9ACC148EBEFCFFFFFFFFFFFFFFFFFFFFFFFF007EB1FF00000000000000000000
        0000002F005211971CFF76FFAFFF77FFB5FF0D871DFF00050008000000000000
        00000086B7F6EDF6FAFFFFFFFFFFFFFFFFFF007EB1FF00000000000000000000
        0000007809ED037B0EF601760BF101700BEA0059009D00030005000000000000
        0000006A95BA0086B9FF0084B7FF0082B5FF0046679D00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = dxBarButton2Click
    end
    object DogList: TcxBarEditItem
      Category = 0
      Visible = ivAlways
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.ListColumns = <>
    end
    object dxBarCombo1: TdxBarCombo
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      ItemIndex = -1
    end
    object BarCombo: TdxBarCombo
      Caption = 'New Item'
      Category = 0
      Hint = #1042#1099#1073#1088#1072#1090#1100' '#1076#1086#1075#1086#1074#1086#1088' '#1089' '#1087#1086#1076#1088#1103#1076#1085#1086#1081' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1077#1081
      Visible = ivAlways
      ItemIndex = -1
    end
    object DogCombo: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000008E8E9FAC686971F371645EFE6B6E85FC6F7CCCF82A3B
        AEF08F94CAEE9193BDDF32326B9200001C2C0000000000000000000000000000
        0000000000008D90C2DA626677FFD9AF8BFFFFD19BFFC7A386FF899BC4FF95A5
        D0FF786B69FF7E7169FF7D83ADFF3440B8FE010481C400000000000000000000
        000000000000666B7CFB707274FFEECDB1FFFFF5DBFFFFE1B4FF485263FF6263
        66FFFFDAA4FFFFD9A2FF7A7372FF8A96DAFF03098EE300000000000000000000
        00002D2D2DAA686868FFABACACFFAA9F9EFFF7E5DDFFBFA593FF5C5F62FF9A99
        99FFFFEDD7FFFFFBDFFF83776CFF97A2DFFF010367A800000000000000001E1E
        1E8BB5B5B5FF6B6B6BFFCDCECEFFFEFFFFFF666565FF5E6062FF828283FFECEF
        EFFFB1A6A6FF877C77FF898EA3FF5B6AC9FE0000294000000000000000003C3C
        3CF7B5B5B5FFD5D5D5FF979797FF6A6A6AFF4A4B4BFF3A3A3AFF999999FFD7D8
        D8FF7E8188FF8F9DC0FF7488D7FF01025D940000000000000000000000003838
        38AE737373FFABABABFFB6B6B6FFAEAEAEFFA9A9A9FFAAAAAAFF787879FF6B6E
        78FF939EDBFF3A4CBBF400014A77000001010000000000000000000000000101
        01041111112F0E0E0E271F1F1F5F727373DC646668FE77828CFFABC9E1FF99D3
        FFFF215AADBE0000070C00000000000000000000000000000000000000000000
        00000000000000000000000000006F8CA4A4C0E3FFFFB0DCFFFF83C8FFFF6EBE
        FFFF4EABFBFB050F161600000000000000000000000000000000000000000000
        00000000000000000000000000002B6FA1A183CCFFFF8ED2FFFF8AD0FFFF7BC6
        FFFF64B9FFFF03456B9800000000000000000000000000000000000000000000
        00000000000000000000000000001576AFE38CD1FFFF96D6FFFF91D3FFFF79C3
        FCFF0A70A6FF006FA3FD0006080C000000000000000000000000000000000000
        000000000000000000000000000000598AD972BFFCFF88CFFFFF89D0FFFF469A
        D3FF0087BAFF007FB2FE0006090E000000000000000000000000000000000000
        0000000000000000000000000000004160930271A4FF2D8DC5FF278BC2FF007E
        B2FF0099CCFF00638EC900000000000000000000000000000000000000000000
        00000000000000000000000000000005090E004566A5006A9AEC006796E3006A
        96DF005980C10010192700000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object dxBarButton3: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = #1055#1086#1084#1077#1090#1080#1090#1100' '#1076#1086#1084#1072' '#1087#1086' '#1074#1099#1073#1088#1072#1085#1085#1086#1084#1091' '#1076#1086#1075#1086#1074#1086#1088#1091
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000008E8E9FAC686971F371645EFE6B6E85FC6F7CCCF82A3B
        AEF08F94CAEE9193BDDF32326B9200001C2C0000000000000000000000000000
        0000000000008D90C2DA626677FFD9AF8BFFFFD19BFFC7A386FF899BC4FF95A5
        D0FF786B69FF7E7169FF7D83ADFF3440B8FE010481C400000000000000000000
        000000000000666B7CFB707274FFEECDB1FFFFF5DBFFFFE1B4FF485263FF6263
        66FFFFDAA4FFFFD9A2FF7A7372FF8A96DAFF03098EE300000000000000000000
        00002D2D2DAA686868FFABACACFFAA9F9EFFF7E5DDFFBFA593FF5C5F62FF9A99
        99FFFFEDD7FFFFFBDFFF83776CFF97A2DFFF010367A800000000000000001E1E
        1E8BB5B5B5FF6B6B6BFFCDCECEFFFEFFFFFF666565FF5E6062FF828283FFECEF
        EFFFB1A6A6FF877C77FF898EA3FF5B6AC9FE0000294000000000000000003C3C
        3CF7B5B5B5FFD5D5D5FF979797FF6A6A6AFF4A4B4BFF3A3A3AFF999999FFD7D8
        D8FF7E8188FF8F9DC0FF7488D7FF01025D940000000000000000000000003838
        38AE737373FFABABABFFB6B6B6FFAEAEAEFFA9A9A9FFAAAAAAFF787879FF6B6E
        78FF939EDBFF3A4CBBF400014A77000001010000000000000000000000000101
        01041111112F0E0E0E271F1F1F5F727373DC646668FE77828CFFABC9E1FF99D3
        FFFF215AADBE0000070C00000000000000000000000000000000000000000000
        00000000000000000000000000006F8CA4A4C0E3FFFFB0DCFFFF83C8FFFF6EBE
        FFFF4EABFBFB050F161600000000000000000000000000000000000000000000
        00000000000000000000000000002B6FA1A183CCFFFF8ED2FFFF8AD0FFFF7BC6
        FFFF64B9FFFF03456B9800000000000000000000000000000000000000000000
        00000000000000000000000000001576AFE38CD1FFFF96D6FFFF91D3FFFF79C3
        FCFF0A70A6FF006FA3FD0006080C000000000000000000000000000000000000
        000000000000000000000000000000598AD972BFFCFF88CFFFFF89D0FFFF469A
        D3FF0087BAFF007FB2FE0006090E000000000000000000000000000000000000
        0000000000000000000000000000004160930271A4FF2D8DC5FF278BC2FF007E
        B2FF0099CCFF00638EC900000000000000000000000000000000000000000000
        00000000000000000000000000000005090E004566A5006A9AEC006796E3006A
        96DF005980C10010192700000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = dxBarButton3Click
    end
    object btn_Rep: TdxBarButton
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
      OnClick = btn_RepClick
    end
    object bc_M1: TdxBarCombo
      Caption = #1055#1077#1088#1080#1086#1076' '#1089
      Category = 0
      Hint = #1055#1077#1088#1080#1086#1076' '#1089
      Visible = ivAlways
      ShowCaption = True
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
    object bI_Y1: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxMaskEditProperties'
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      InternalEditValue = '2014'
    end
    object bc_M2: TdxBarCombo
      Caption = ' '#1087#1086' '
      Category = 0
      Hint = ' '#1087#1086' '
      Visible = ivAlways
      ShowCaption = True
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
    object bI_Y2: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxMaskEditProperties'
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      InternalEditValue = '2014'
    end
    object btn_ExcelRep: TdxBarButton
      Caption = 'Excel'
      Category = 0
      Hint = 'Excel'
      Visible = ivAlways
      ImageIndex = 16
      PaintStyle = psCaptionGlyph
      OnClick = btn_ExcelRepClick
    end
    object btn_MakeSmeta2015: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = #1064#1072#1073#1083#1086#1085#1099' '#1089#1084#1077#1090' ('#1058#1054', '#1059#1073#1086#1088#1082#1072' '#1076#1074#1086#1088#1072', '#1059#1073#1086#1088#1082#1072' '#1087#1086#1076#1098#1077#1079#1076#1072')'
      Visible = ivAlways
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000802001E3A19047061310BA36A350DB3572A
        099F270F01670100001900000000000000000000000000000000000000000000
        0000D0BAACFF694731FF694731FF694731FF694731FF694731FF694731FF6947
        31FF694731FF68452FFF854920FFBC6B20FFCF7F27FFD08028FFD08028FFD080
        28FFCD7C26FFA65A1AFF63381CFF674530FF694731FF00000000000000000000
        0000D0BAACFFFAF8F7FFB7A293FFB7A293FFB7A293FFB7A293FFB7A293FFB7A2
        93FFB49D8DFFB67340FFD58936FFCE7F2FFFD69D66FFDAB392FFA46048FFDFB8
        92FFCF8E4DFFCE7D26FFC77623FF8B5D3DFF674530FF00000000000000000000
        0000D0BAACFFFDFBFBFFFAF8F7FFF8F4F3FFF6F1EFFFF3EEEBFFF1EAE7FFEFE7
        E3FFCB956EFFDB9448FFD48F4FFFEED7BCFFFAEFD4FFF7ECCCFFEADCBDFFFAF8
        E3FFFDFCF4FFE2C3A2FFCC7D2AFFC77623FF63381CFF00000000000000000000
        0000D0BAACFFFFFFFFFFB7A293FFB7A293FFB7A293FFB7A293FFB7A293FFB18E
        77FFDA9552FFD89350FFF0D2AEFFF8E1B9FFF8E5BEFFF8E9C3FFF8ECC8FFF8F0
        CEFFF8F4D4FFFCFBEEFFE2C3A2FFCE7D26FFA65A1AFF01000019000000000000
        0000D0BAACFFFFFFFFFFB7A293FFFFFFFFFFFFFFFFFFB7A293FFFFFFFFFFDCAD
        8BFFE5A663FFE0A977FFF8D9AFFFF8DDB4FFF8E1B9FFF8E5BEFFF8E9C3FFF8EC
        C8FFF8F0CEFFF8F4D3FFFCFCF1FFCF8E4DFFCD7C26FF270F0167000000000000
        0000D0BAACFFFFFFFFFFB7A293FFFFFFFFFFFFFFFFFFB7A293FFFFFFFFFFD99F
        6EFFE3A365FFEDC59AFFF8D5AAFFF8D9AFFFF8DDB4FFF7E1B9FFF3E1BBFFF8E9
        C3FFF8ECC8FFF8F0CEFFF9F6DEFFDFB891FFD08028FF572A099F000000000000
        0000D0BAACFFFFFFFFFFB7A293FFB7A293FFB7A293FFB7A293FFB7A293FFD695
        60FFDA9961FFAC7867FFFAECCDFFF8D6ABFFF8D9AFFFB8A589FF676663FF4641
        36FF464237FF7F7A68FFE9DABAFFA8664CFFD08028FF6A350DB3000000000000
        0000D0BAACFFFFFFFFFFB7A293FFFFFFFFFFFFFFFFFFB7A293FFFFFFFFFFDDA1
        74FFE5A870FFF2E3CBFFFCFFEBFFFAEBCBFFF8D5AAFFE1C59FFF534C41FF7167
        55FFDCCCA9FFE7D9B6FFF5E9C5FFD8AF8BFFD08028FF60310BA4000000000000
        0000D0BAACFFFFFFFFFFB7A293FFFFFFFFFFFFFFFFFFB7A293FFFFFFFFFFE2B1
        8EFFF1BC86FFE8C5A4FFFCFFEEFFFCFEEAFFF8D9AFFFF8D5AAFFEED0A8FF4139
        2EFF91846DFFF7E5BEFFF8EAC8FFD59B63FFCF7F27FF3A190470000000000000
        0000D0BAACFFFFFFFFFFB7A293FFB7A293FFB7A293FFB7A293FFB7A293FFB78C
        70FFF3BF8CFFE3A978FFFAF4E2FFFCFFEEFFFAEDD0FFF8D3A7FFF8D5AAFFEBCF
        A6FF3D362BFFA3957BFFECCEA7FFCE7F2EFFBC6B20FF0802001E000000000000
        0000D0BAACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7A293FFFFFFFFFFFDFB
        FBFFD2986EFFF4C28EFFE1AB7FFFFAF5E3FFFCFFEDFFFBF7DFFFF9E0BAFFF8D5
        AAFFEACDA5FFD7B891FFD38D49FFD58936FF854920FF00000000000000000000
        0000D0BAACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7A293FFFFFFFFFFFFFF
        FFFFB49580FFE5AF82FFF4C28EFFE3A978FFE8C6A6FFEDDDC5FFB48775FFEFD6
        B3FFE0A976FFD8924FFFDB9448FFB67340FF68452FFF00000000000000000000
        0000D0BAACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7A293FFB7A293FFB7A2
        93FFB7A293FFB49580FFD2996EFFF3BF8CFFF1BC86FFE4A870FFD8975FFFE3A4
        65FFE5A663FFDA9552FFCB956EFFB49D8DFF694731FF00000000000000000000
        0000D0BAACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFDFBFBFFE6C8B6FFE0B08DFFDDA173FFDA9B67FFD89D
        6CFFD8A683FFE0C8BBFFF0E9E5FFB7A293FF694731FF00000000000000000000
        0000CD7621FFCD7621FFCD7621FFCD7621FFCD7621FFCD7621FFCD7621FFCD76
        21FFCD7621FFCD7621FFCD7621FFCD7621FFCD7621FFCD7621FFCD7621FFCD76
        21FFCD7621FFCD7621FFCD7621FFCD7621FFCD7621FF00000000000000000000
        0000CD7621FFFBC39FFFFBC39FFFFBC39FFFFBC39FFFFBC39FFFFBC39FFFFABB
        95FFF9B38AFFF8AB80FFF8A375FFF79B6BFFF79361FFF78C58FFF6844EFFF57D
        44FFF5763BFFF46E31FFF46B2DFFF46B2DFFCD7621FF00000000000000000000
        0000CD7621FFFBC39FFFDDA687FF694731FFDDA687FFFBC39FFFFBC39FFFFBC3
        9FFFFABB95FFF9B38AFFF8AB80FFF8A375FFF79B6BFFF79361FFF78C58FFDA7D
        52FF694731FFD97446FFF46E31FFF46B2DFFCD7621FF00000000000000000000
        0000CD7621FFFBC39FFFA36F5AFFA36F5AFF694731FFFBC39FFFFBC39FFFFBC3
        9FFFFBC39FFFFABB95FFF9B38AFFF8AB80FFF8A375FFF79B6BFFF79361FFA36F
        5AFFA36F5AFF694731FFF5763BFFF46E31FFCD7621FF00000000000000000000
        0000CD7621FFCD7621FFA36F5AFFC89898FF694731FFCD7621FFCD7621FFCD76
        21FFCD7621FFCD7621FFCD7621FFCD7621FFCD7621FFCD7621FFCD7621FFA36F
        5AFFC89898FF694731FFCD7621FFCD7621FFCD7621FF00000000000000000000
        00000000000000000000A36F5AFFFFFFFFFF694731FF00000000000000000000
        000000000000000000000000000000000000000000000000000000000000A36F
        5AFFFFFFFFFF694731FF00000000000000000000000000000000000000000000
        000000000000000000005C3F3390A36F5AFF5C3F339000000000000000000000
        0000000000000000000000000000000000000000000000000000000000005C3F
        3390A36F5AFF5C3F339000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btn_MakeSmeta2015Click
    end
    object btn_MakeDRTZ_Smeta: TdxBarButton
      Category = 0
      Hint = #1064#1072#1073#1083#1086#1085#1099' '#1089#1084#1077#1090' '#1076#1077#1088#1072#1090#1080#1079#1072#1094#1080#1080' '#1080' '#1076#1077#1079#1080#1085#1089#1077#1082#1094#1080#1080
      Visible = ivAlways
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000CCB7
        A8FF694731FF694731FF694731FF694731FF694731FF694731FF694731FF6947
        31FF694731FF694731FF694731FF694731FF694731FF694731FF694731FF6947
        31FF694731FF694731FF694731FF694731FF694731FF694731FF00000000CCB7
        A8FFFDFCFBFFB7A293FFB7A293FFB7A293FFB7A293FFB7A293FFB7A293FFB7A2
        93FFB7A293FFB7A293FFB7A293FFB7A293FFB7A293FFB7A293FFB7A293FFB7A2
        93FFB7A293FFB7A293FFB7A293FFB7A293FFB7A293FF694731FF00000000CCB7
        A8FFFFFFFFFFFDFCFBFFFAF9F8FFF8F6F4FFF6F2F0FFF4EFECFFCCB7A8FFF0E8
        E4FFEEE5E0FFECE3DDFFEAE0DAFFE7DCD6FFE5D9D2FFB7A293FF694731FF6947
        31FF694731FF694731FF694731FF694731FFB7A293FF694731FF00000000CCB7
        A8FFFFFFFFFFFFFFFFFFFDFCFBFFFAF9F8FFF8F6F4FFF6F2F0FFCCB7A8FFF2EC
        E8FFF0E8E4FFEEE5E0FFECE3DDFFEAE0DAFFE7DCD6FFB7A293FFFFFFFFFF92A6
        FFFF7189FFFFEAEDFFFFFFFFFFFF694731FFB7A293FF694731FF00000000CCB7
        A8FFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFBFFFAF9F8FFF8F6F4FFCCB7A8FFF4EF
        ECFFF2ECE8FFF0E8E4FFEEE5E0FFECE3DDFFEAE0DAFFB7A293FFDBE2FFFF4A62
        FFFF0030F8FF9CA8FFFFF9FAFFFF694731FFB7A293FF694731FF00000000CCB7
        A8FFCCB7A8FFCCB7A8FFCCB7A8FFCCB7A8FFCCB7A8FFCCB7A8FFCCB7A8FFCCB7
        A8FFCCB7A8FFCCB7A8FFCCB7A8FFCCB7A8FFCCB7A8FFB7A293FF8A9EFFFF0030
        F8FF0030F8FF0030F8FFE4E6FFFF694731FFB7A293FF694731FF00000000CCB7
        A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFBFFCCB7A8FFF8F6
        F4FFF6F2F0FFF4EFECFFF2ECE8FFF0E8E4FFEEE5E0FFB7A293FF0030F8FF0030
        F8FFD7DFFFFF0030F8FF7090FFFF694731FFB7A293FF694731FF00000000CCB7
        A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCB7A8FFFCFB
        FAFFF9F7F6FFF7F4F2FFF5F1EEFFF3EDEAFFF1EAE6FFB7A293FFE7EBFFFF7090
        FFFFFFFFFFFFE4E6FFFF0030F8FF9CA8FFFFB7A293FF694731FF00000000CCB7
        A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCB7A8FFFEFE
        FDFFFCFBFAFFF9F7F6FFF7F4F2FFF5F1EEFFF3EDEAFFB7A293FFB7A293FFB7A2
        93FFB7A293FFB7A293FF9CA8FFFF0030F8FFB7A293FF694731FF00000000CCB7
        A8FFCCB7A8FFCCB7A8FFCCB7A8FFCCB7A8FFCCB7A8FFCCB7A8FFCCB7A8FFCCB7
        A8FFCCB7A8FFCCB7A8FFCCB7A8FFCCB7A8FFCCB7A8FFCCB7A8FFCCB7A8FFCCB7
        A8FFCCB7A8FFCCB7A8FFCCB7A8FF9CA8FFFF0030F8FF694731FF00000000CCB7
        A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCB7A8FFFFFF
        FFFFFFFFFFFFFEFEFDFFFCFBFAFFF9F7F6FFF7F4F2FFB7A293FF694731FF6947
        31FF694731FF694731FF694731FF694731FF9CA8FFFF0030F8FF00000000CCB7
        A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCB7A8FFFFFF
        FFFFFFFFFFFFFFFFFFFFFEFEFDFFFCFBFAFFF9F7F6FFB7A293FFFFFFFFFF92A6
        FFFF7189FFFFEAEDFFFFFFFFFFFF694731FFB7A293FF9CA8FFFF00000000CCB7
        A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCB7A8FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFCFBFAFFB7A293FFDBE2FFFF4A62
        FFFF0030F8FF9CA8FFFFF9FAFFFF694731FFB7A293FF694731FF00000000D080
        00FFD08000FFD08000FFD08000FFD08000FFD08000FFD08000FFD08000FFD080
        00FFD08000FFD08000FFD08000FFD08000FFD08000FFB7A293FF8A9EFFFF0030
        F8FF0030F8FF0030F8FFE4E6FFFF694731FFD08000FFD08000FF00000000D080
        00FFFBC39FFFFBC39FFFFBC39FFFFBC39FFFFBC39FFFFBC39FFFFBBC96FFFAB5
        8DFFF9AE84FFF9A87CFFF8A173FFF79A6AFFF79361FFB7A293FF0030F8FF0030
        F8FFD7DFFFFF0030F8FF7090FFFF694731FFF46B2DFFD08000FF00000000D080
        00FFFBC39FFFFBC39FFFFBC39FFFFBC39FFFFBC39FFFFBC39FFFFBC39FFFFBBC
        96FFFAB58DFFF9AE84FFF9A87CFFF8A173FFF79A6AFFB7A293FFE7EBFFFF7090
        FFFFFFFFFFFFE4E6FFFF0030F8FF9CA8FFFFF46B2DFFD08000FF00000000D080
        00FFFBC39FFFFBC39FFFFBC39FFFFBC39FFFFBC39FFFFBC39FFFFBC39FFFFBC3
        9FFFFBBC96FFFAB58DFFF9AE84FFF9A87CFFF8A173FFB7A293FFB7A293FFB7A2
        93FFB7A293FFB7A293FF9CA8FFFF0030F8FFF46B2DFFD08000FF00000000D080
        00FFFBC39FFFFBC39FFFFBC39FFFFBC39FFFFBC39FFFFBC39FFFFBC39FFFFBC3
        9FFFFBC39FFFFBBC96FFFAB58DFFF9AE84FFF9A87CFFF8A173FFF79A6AFFF793
        61FFF78D59FFF68650FFF57F47FF9CA8FFFF0030F8FFD08000FF00000000D080
        00FFD08000FFD08000FFD08000FFD08000FFD08000FFD08000FFD08000FFD080
        00FFD08000FFD08000FFD08000FFD08000FFD08000FFD08000FFD08000FFD080
        00FFD08000FFD08000FFD08000FFD08000FF9CA8FFFF0030F8FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000009CA8FFFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btn_MakeDRTZ_SmetaClick
    end
  end
  object m_month: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 528
    Top = 184
  end
  object src_month: TDataSource
    DataSet = m_month
    Left = 576
    Top = 184
  end
  object mT1: TdxMemData
    Indexes = <>
    SortOptions = []
    SortedField = 'F'
    Left = 528
    Top = 240
  end
  object src_mT1: TDataSource
    DataSet = mT1
    Left = 580
    Top = 240
  end
  object xlr: TEXLReport
    About = 'EMS Advanced Excel Report(tm) Component Suite for Delphi(R)'
    Bands.BandCount = 2
    Bands.GroupHeaderBandCount = 1
    Bands.Items = <
      item
        Bands.Range = 'A2:O2'
        Bands.BandType = 0
      end
      item
        Bands.BandType = 1
        Bands.GroupID = 1
      end>
    DataSet = mT1
    Dictionary = <>
    _Version = '1.6.0.3'
    OnFormatCell = xlrFormatCell
    Left = 192
    Top = 184
  end
  object dlgSave: TSaveDialog
    Filter = #1060#1072#1081#1083#1099' Excel|*.xls'
    Left = 224
    Top = 184
  end
  object ppm1: TcxGridPopupMenu
    Grid = grd1
    PopupMenus = <
      item
        GridView = vb1
        HitTypes = []
        Index = 0
      end>
    AlwaysFireOnPopup = True
    Left = 296
    Top = 184
  end
  object TdxBarSeparator
    Category = -1
    Visible = ivAlways
  end
  object TdxBarSeparator
    Category = -1
    Visible = ivAlways
  end
  object md1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 528
    Top = 312
  end
  object src1: TDataSource
    DataSet = md1
    Left = 576
    Top = 312
  end
end
