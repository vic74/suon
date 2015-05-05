object ReversStateForm: TReversStateForm
  Left = 0
  Top = 0
  Caption = #1054#1073#1086#1088#1086#1090#1085#1072#1103' '#1074#1077#1076#1086#1084#1086#1089#1090#1100
  ClientHeight = 675
  ClientWidth = 891
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
    Width = 891
    Height = 675
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    ExplicitWidth = 881
    object grd1: TcxGrid
      Left = 10
      Top = 41
      Width = 861
      Height = 286
      TabOrder = 6
      LockedStateImageOptions.Effect = lsieDark
      LockedStateImageOptions.ShowText = True
      object vb1: TcxGridDBBandedTableView
        OnKeyUp = vb1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = vb1CellClick
        DataController.DataSource = src_md1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = clvb1SALDO0
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1PSUM0
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1RSUM0
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1SALDO_END0
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1SALDO1
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1PSUM1
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1RSUM1
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1SALDO_END1
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1SALDO2
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1PSUM2
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1RSUM2
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1SALDO_END2
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1SALDO3
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1PSUM3
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1RSUM3
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1SALDO_END3
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1SALDO
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1PSUM
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1RSUM
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1SALDO_END
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1SALDO5
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1PSUM5
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1RSUM5
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1SALDO_END5
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1SALDO4
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1PSUM4
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1RSUM4
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1SALDO_END4
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = #1040#1076#1088#1077#1089
            Options.HoldOwnColumnsOnly = True
            Width = 254
          end
          item
            Caption = #1053#1072#1088#1091#1078#1085#1072#1103' '#1088#1077#1082#1083#1072#1084#1072
            Options.HoldOwnColumnsOnly = True
            Width = 295
          end
          item
            Caption = #1041#1072#1079#1086#1074#1099#1077' '#1089#1090#1072#1085#1094#1080#1080
            Options.HoldOwnColumnsOnly = True
            Width = 283
          end
          item
            Caption = #1048#1085#1090#1077#1088#1085#1077#1090' '#1080' '#1082#1072#1073#1077#1083#1100#1085#1086#1077
            Options.HoldOwnColumnsOnly = True
            Width = 274
          end
          item
            Caption = #1040#1088#1077#1085#1076#1072' '#1087#1086#1084#1077#1097#1077#1085#1080#1081' '#1054#1048' '#1052#1050#1044
            Options.HoldOwnColumnsOnly = True
            Width = 292
          end
          item
            Caption = #1072#1088#1077#1085#1076#1072' ('#1053#1046#1055')'
            Width = 314
          end
          item
            Caption = #1050#1086#1083#1103#1089#1086#1095#1085#1099#1077
            Options.HoldOwnColumnsOnly = True
            Width = 327
          end
          item
            Caption = #1048#1090#1086#1075#1080
            Options.HoldOwnColumnsOnly = True
            Width = 322
          end>
        object clvb1HOUSE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1SNAME: TcxGridDBBandedColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Width = 209
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1NOMER: TcxGridDBBandedColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 45
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1SALDO0: TcxGridDBBandedColumn
          Caption = #1053#1072#1095'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO0'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1PSUM0: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'PSUM0'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1RSUM0: TcxGridDBBandedColumn
          Caption = #1054#1087#1083#1072#1090#1099
          DataBinding.FieldName = 'RSUM0'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1SALDO_END0: TcxGridDBBandedColumn
          Caption = #1050#1086#1085'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO_END0'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1SALDO1: TcxGridDBBandedColumn
          Caption = #1053#1072#1095'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO1'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1PSUM1: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'PSUM1'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1RSUM1: TcxGridDBBandedColumn
          Caption = #1054#1087#1083#1072#1090#1099
          DataBinding.FieldName = 'RSUM1'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1SALDO_END1: TcxGridDBBandedColumn
          Caption = #1050#1086#1085'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO_END1'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 2
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1SALDO2: TcxGridDBBandedColumn
          Caption = #1053#1072#1095'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO2'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1PSUM2: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'PSUM2'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1RSUM2: TcxGridDBBandedColumn
          Caption = #1054#1087#1083#1072#1090#1099
          DataBinding.FieldName = 'RSUM2'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1SALDO_END2: TcxGridDBBandedColumn
          Caption = #1050#1086#1085'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO_END2'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 3
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1SALDO3: TcxGridDBBandedColumn
          Caption = #1053#1072#1095'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO3'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1PSUM3: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'PSUM3'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 4
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1RSUM3: TcxGridDBBandedColumn
          Caption = #1054#1087#1083#1072#1090#1099
          DataBinding.FieldName = 'RSUM3'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 4
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1SALDO_END3: TcxGridDBBandedColumn
          Caption = #1050#1086#1085'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO_END3'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 4
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1SALDO: TcxGridDBBandedColumn
          Caption = #1053#1072#1095'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 7
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1PSUM: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'PSUM'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 7
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1RSUM: TcxGridDBBandedColumn
          Caption = #1054#1087#1083#1072#1090#1099
          DataBinding.FieldName = 'RSUM'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 7
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1SALDO_END: TcxGridDBBandedColumn
          Caption = #1050#1086#1085'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO_END'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 7
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1SALDO5: TcxGridDBBandedColumn
          Caption = #1053#1072#1095'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO5'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 6
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1PSUM5: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'PSUM5'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 6
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1RSUM5: TcxGridDBBandedColumn
          Caption = #1054#1087#1083#1072#1090#1099
          DataBinding.FieldName = 'RSUM5'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 6
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1SALDO_END5: TcxGridDBBandedColumn
          Caption = #1050#1086#1085'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO_END5'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 6
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1SALDO4: TcxGridDBBandedColumn
          Caption = #1053#1072#1095'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO4'
          Position.BandIndex = 5
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1PSUM4: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'PSUM4'
          Position.BandIndex = 5
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1RSUM4: TcxGridDBBandedColumn
          Caption = #1054#1087#1083#1072#1090#1099
          DataBinding.FieldName = 'RSUM4'
          Position.BandIndex = 5
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1SALDO_END4: TcxGridDBBandedColumn
          Caption = #1050#1086#1085'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO_END4'
          Position.BandIndex = 5
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
      end
      object l1: TcxGridLevel
        GridView = vb1
      end
    end
    object cbb_m1: TcxComboBox
      Left = 61
      Top = 10
      Properties.Items.Strings = (
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
      Style.HotTrack = False
      TabOrder = 0
      Text = #1103#1085#1074#1072#1088#1100
      Width = 121
    end
    object cbb_m2: TcxComboBox
      Left = 205
      Top = 10
      Properties.Items.Strings = (
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
      Style.HotTrack = False
      TabOrder = 1
      Text = #1103#1085#1074#1072#1088#1100
      Width = 121
    end
    object msk_y2: TcxMaskEdit
      Left = 332
      Top = 10
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 2
      Text = '2011'
      Width = 67
    end
    object cbb_Dtype: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.DropDownListStyle = lsFixedList
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
      Properties.ListSource = src_DOGIMMKD_TYPE
      Style.HotTrack = False
      TabOrder = 9
      Visible = False
      Width = 145
    end
    object btn_exec: TcxButton
      Left = 561
      Top = 10
      Width = 103
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
      TabOrder = 4
      OnClick = btn_execClick
    end
    object grd2: TcxGrid
      Left = 10
      Top = 380
      Width = 861
      Height = 285
      TabOrder = 8
      object vb2: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_md2
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = clvb2SALDO0
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2PSUM0
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2RSUM0
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2SALDO_END0
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2SALDO1
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2PSUM1
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2RSUM1
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2SALDO_END1
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2SALDO2
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2PSUM2
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2RSUM2
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2SALDO_END2
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2SALDO3
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2PSUM3
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2RSUM3
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2SALDO_END3
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2SALDO
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2PSUM
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2RSUM
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2SALDO_END
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2SALDO5
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2PSUM5
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2RSUM5
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2SALDO_END5
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2SALDO_END4
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2RSUM4
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2PSUM4
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2SALDO4
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Options.HoldOwnColumnsOnly = True
            Width = 495
          end
          item
            Caption = #1053#1072#1088#1091#1078#1085#1072#1103' '#1088#1077#1082#1083#1072#1084#1072
            Options.HoldOwnColumnsOnly = True
            Width = 312
          end
          item
            Caption = #1041#1072#1079#1086#1074#1099#1077' '#1089#1090#1072#1085#1094#1080#1080
            Options.HoldOwnColumnsOnly = True
            Width = 298
          end
          item
            Caption = #1048#1085#1090#1077#1088#1085#1077#1090' '#1080' '#1082#1072#1073#1077#1083#1100#1085#1086#1077
            Options.HoldOwnColumnsOnly = True
            Width = 322
          end
          item
            Caption = #1040#1088#1077#1085#1076#1072' '#1087#1086#1084#1077#1097#1077#1085#1080#1081' '#1054#1048' '#1052#1050#1044
            Options.HoldOwnColumnsOnly = True
            Width = 294
          end
          item
            Caption = #1072#1088#1077#1085#1076#1072' ('#1053#1046#1055')'
            Width = 332
          end
          item
            Caption = #1050#1086#1083#1103#1089#1086#1095#1085#1072#1103
            Options.HoldOwnColumnsOnly = True
            Width = 352
          end
          item
            Caption = #1048#1090#1086#1075#1080
            Options.HoldOwnColumnsOnly = True
            Width = 323
          end>
        object clvb2ARENDATOR: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ARENDATOR'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb2ARNAME: TcxGridDBBandedColumn
          Caption = #1040#1088#1077#1085#1076#1072#1090#1086#1088
          DataBinding.FieldName = 'ARNAME'
          Width = 141
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb2DOGIMMKD: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DOGIMMKD'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb2DNOTE: TcxGridDBBandedColumn
          Caption = #1044#1086#1075#1086#1074#1086#1088
          DataBinding.FieldName = 'DNOTE'
          Width = 118
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb2SALDO0: TcxGridDBBandedColumn
          Caption = #1053#1072#1095'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO0'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb2PSUM0: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'PSUM0'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb2RSUM0: TcxGridDBBandedColumn
          Caption = #1054#1087#1083#1072#1090#1099
          DataBinding.FieldName = 'RSUM0'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb2SALDO_END0: TcxGridDBBandedColumn
          Caption = #1050#1086#1085'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO_END0'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb2SALDO1: TcxGridDBBandedColumn
          Caption = #1053#1072#1095'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO1'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb2PSUM1: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'PSUM1'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb2RSUM1: TcxGridDBBandedColumn
          Caption = #1054#1087#1083#1072#1090#1099
          DataBinding.FieldName = 'RSUM1'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb2SALDO_END1: TcxGridDBBandedColumn
          Caption = #1050#1086#1085'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO_END1'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 2
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb2SALDO2: TcxGridDBBandedColumn
          Caption = #1053#1072#1095'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO2'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb2PSUM2: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'PSUM2'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb2RSUM2: TcxGridDBBandedColumn
          Caption = #1054#1087#1083#1072#1090#1099
          DataBinding.FieldName = 'RSUM2'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb2SALDO_END2: TcxGridDBBandedColumn
          Caption = #1050#1086#1085'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO_END2'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 3
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb2SALDO3: TcxGridDBBandedColumn
          Caption = #1053#1072#1095'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO3'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb2PSUM3: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'PSUM3'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 4
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb2RSUM3: TcxGridDBBandedColumn
          Caption = #1054#1087#1083#1072#1090#1099
          DataBinding.FieldName = 'RSUM3'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 4
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb2SALDO_END3: TcxGridDBBandedColumn
          Caption = #1050#1086#1085'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO_END3'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 4
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb2SALDO: TcxGridDBBandedColumn
          Caption = #1053#1072#1095'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 7
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb2PSUM: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'PSUM'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 7
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb2RSUM: TcxGridDBBandedColumn
          Caption = #1054#1087#1083#1072#1090#1099
          DataBinding.FieldName = 'RSUM'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 7
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb2SALDO_END: TcxGridDBBandedColumn
          Caption = #1050#1086#1085'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO_END'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 7
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb2SALDO5: TcxGridDBBandedColumn
          Caption = #1053#1072#1095'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO5'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 6
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb2PSUM5: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'PSUM5'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 6
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb2RSUM5: TcxGridDBBandedColumn
          Caption = #1054#1087#1083#1072#1090#1099
          DataBinding.FieldName = 'RSUM5'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 6
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb2SALDO_END5: TcxGridDBBandedColumn
          Caption = #1050#1086#1085'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO_END5'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 6
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb2SALDO4: TcxGridDBBandedColumn
          Caption = #1053#1072#1095'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO4'
          Position.BandIndex = 5
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb2PSUM4: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'PSUM4'
          Position.BandIndex = 5
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb2RSUM4: TcxGridDBBandedColumn
          Caption = #1054#1087#1083#1072#1090#1099
          DataBinding.FieldName = 'RSUM4'
          Position.BandIndex = 5
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb2SALDO_END4: TcxGridDBBandedColumn
          Caption = #1050#1086#1085'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO_END4'
          Position.BandIndex = 5
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb2SNAME: TcxGridDBBandedColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Visible = False
          Width = 171
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clvb2NOMER: TcxGridDBBandedColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Visible = False
          Width = 46
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
      end
      object l2: TcxGridLevel
        GridView = vb2
      end
    end
    object chk_1c: TcxCheckBox
      Left = 434
      Top = 13
      Caption = #1044#1072#1085#1085#1099#1077' 1'#1057
      State = cbsChecked
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object btn_Excel: TcxButton
      Left = 670
      Top = 10
      Width = 83
      Height = 25
      Caption = 'Excel'
      OptionsImage.ImageIndex = 16
      OptionsImage.Images = cmDb.iml1
      TabOrder = 5
      OnClick = btn_ExcelClick
    end
    object doc1: TdxBarDockControl
      Left = 10
      Top = 345
      Width = 861
      Height = 29
      Align = dalTop
      BarManager = barM1
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
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itm_m1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1055#1077#1088#1080#1086#1076' '#1089
      Parent = grlc1Group1
      Control = cbb_m1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_m2: TdxLayoutItem
      CaptionOptions.Text = #1087#1086
      Parent = grlc1Group1
      Control = cbb_m2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_y2: TdxLayoutItem
      CaptionOptions.Text = #1075#1086#1076#1072
      CaptionOptions.Layout = clRight
      Parent = grlc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 96
      Control = msk_y2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_1c: TdxLayoutItem
      AlignVert = avCenter
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Parent = grlc1Group1
      Control = chk_1c
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_exec: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 103
      Control = btn_exec
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grp1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object spl1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 2
    end
    object itm_grd2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itm_DType: TdxLayoutItem
      CaptionOptions.Text = #1058#1080#1087' '#1076#1086#1075#1086#1074#1086#1088#1072
      Control = cbb_Dtype
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object itmlc1Item1: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group1
      Control = btn_Excel
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object litm_lc1Item1: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = grp1
      Control = doc1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 648
    Top = 192
    object lcl1: TdxLayoutCxLookAndFeel
      LookAndFeel.NativeStyle = False
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_Dtype
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = cbb_m1
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = cbb_m2
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = msk_y2
        Properties.Strings = (
          'Text')
      end>
    StorageName = 'prop1'
    Left = 676
    Top = 192
  end
  object ds_DOGIMMKD_TYPE: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME'
      'from DOGIMMKD_TYPE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DataSet_ID = 6
    Description = 'DOGIMMKD_TYPE'
    Left = 648
    Top = 136
    poApplyRepositary = True
  end
  object src_DOGIMMKD_TYPE: TDataSource
    DataSet = ds_DOGIMMKD_TYPE
    Left = 672
    Top = 136
  end
  object ds_HMOVEIMMKD: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT hm.DATA,'
      '       hm.HOUSE,h.nomer, s.name SNAME,'
      '       hm.DTYPE,'
      '       sum(hm.SALDO) SALDO,'
      '       sum(hm.PSUM) PSUM,'
      '       sum(hm.RSUM) RSUM,'
      '       sum(iif(hm.saldo1 is null,0,hm.saldo1)) saldo1,'
      '       sum(iif(hm.psum1 is null, 0,hm.psum1)-'
      '           iif(hm.psum_ is null, 0,hm.psum_)) psum1,'
      '       sum(iif(hm.rsum1 is null,0,hm.rsum1)-'
      '           iif(hm.rsum_ is null,0,hm.rsum_)) rsum1'
      'FROM HMOVEIMMKD hm'
      'left outer join house h on h.code=hm.house'
      'left outer join street s on s.code=h.street'
      'group by hm.DATA,hm.HOUSE,h.nomer, s.name,hm.DTYPE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 272
    Top = 112
  end
  object md1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 264
    Top = 152
  end
  object src_md1: TDataSource
    DataSet = md1
    Left = 300
    Top = 152
  end
  object md2: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 312
    Top = 416
  end
  object src_md2: TDataSource
    DataSet = md2
    Left = 341
    Top = 416
  end
  object ds_HMOVEIMMKD2: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT hm.DATA,'
      '       hm.ARENDATOR,a.name ArName,'
      '       hm.DOGIMMKD,'
      
        '       (iif(dt.nomer='#39#39','#39#39','#39#8470#39'||dt.nomer)||'#39' '#39'||iif(dt.note='#39#39', ' +
        #39#39',dt.note)) DNote,'
      '       hm.DTYPE,'
      '       sum(hm.SALDO) SALDO,'
      '       sum(hm.PSUM) PSUM,'
      '       sum(hm.RSUM) RSUM,'
      '       sum(iif(hm.saldo1 is null,0,hm.saldo1)) saldo1,'
      '       sum(iif(hm.psum1 is null, 0,hm.psum1)-'
      '           iif(hm.psum_ is null, 0,hm.psum_)) psum1,'
      '       sum(iif(hm.rsum1 is null,0,hm.rsum1)-'
      '           iif(hm.rsum_ is null,0,hm.rsum_)) rsum1'
      'FROM HMOVEIMMKD hm'
      'left outer join house h on h.code=hm.house'
      'left outer join street s on s.code=h.street'
      'left outer join dogimmkd dt on dt.code=hm.dogimmkd'
      'left outer join arendator a on a.code=hm.arendator')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 216
    Top = 440
  end
  object xlr1: TEXLReport
    About = 'EMS Advanced Excel Report(tm) Component Suite for Delphi(R)'
    DataSet = md1
    Dictionary = <>
    _Version = '1.9.0.2'
    Left = 608
    Top = 192
  end
  object ds_HOUSEOBOROT1C: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT --HO.CODE,'
      '      -- HO.M,'
      '      -- HO.Y,'
      '       CAST('#39'01.'#39'||HO.M||'#39'.'#39'||HO.Y as Date) DATA,'
      '       HO.HOUSE, h.nomer, s.name SNAME,'
      '       --HO.DOG1C,'
      '       sum(HO.SALDO1C) SALDO,'
      '       sum(HO.NACH1C) PSUM,'
      '       sum(HO.OPL1C) RSUM,'
      '       HO.DOGTYPE DTYPE,'
      '       sum(iif(HO.SALDO is null,0,HO.SALDO)) SALDO1,'
      '       sum(iif(HO.NACH is null, 0,HO.NACH)) PSUM1,'
      '       sum(iif(HO.OPL is null,0,HO.OPL)) RSUM1'
      'FROM HOUSEOBOROT1C HO'
      'left outer join house h on h.code=ho.house'
      'left outer join street s on s.code=h.street'
      'group by  HO.HOUSE, 1, h.nomer, s.name, HO.DOGTYPE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 384
    Top = 240
  end
  object ds_HOUSEOBOROT1C2: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT --HO.CODE,'
      '       --HO.M,'
      '       --HO.Y,'
      '       CAST('#39'01.'#39'||HO.M||'#39'.'#39'||HO.Y as Date) DATA,'
      '       k1.CODE ARENDATOR, k1.NAME ArName,'
      '       ho.DOG1C DOGIMMKD,'
      '       d.NAME DNote,'
      '       HO.DOGTYPE DTYPE,'
      '       sum(HO.SALDO1C) SALDO,'
      '       sum(HO.NACH1C) PSUM,'
      '       sum(HO.OPL1C) RSUM,'
      '       sum(iif(HO.SALDO is null,0,HO.SALDO)) SALDO1,'
      '       sum(iif(HO.NACH is null, 0,HO.NACH)) PSUM1,'
      '       sum(iif(HO.OPL is null,0,HO.OPL)) RSUM1'
      'FROM HOUSEOBOROT1C HO'
      'left outer join house h on h.code=ho.house'
      'left outer join street s on s.code=h.street'
      'left outer join DOG1C d on d.CODE = ho.DOG1C'
      'left outer join kontragent1 k1 on k1.CODE = d.KONTRAGENT1'
      'group by k1.CODE, ho.DOG1C, 1, k1.NAME,  d.NAME,HO.DOGTYPE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 216
    Top = 488
  end
  object barM1: TdxBarManager
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
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 664
    Top = 448
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
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = doc1
      DockedDockControl = doc1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 915
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'bi2'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bi1: TcxBarEditItem
      Caption = #1055#1086' '#1072#1076#1088#1077#1089#1091
      Category = 0
      Hint = #1055#1086' '#1072#1076#1088#1077#1089#1091
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.UseAlignmentWhenInplace = True
    end
    object bi2: TcxBarEditItem
      Caption = #1055#1086' '#1074#1089#1077#1084' '#1072#1076#1088#1077#1089#1072#1084
      Category = 0
      Hint = #1055#1086' '#1074#1089#1077#1084' '#1072#1076#1088#1077#1089#1072#1084
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
    end
    object btn_Refresh: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
      OnClick = btn_RefreshClick
    end
  end
end
