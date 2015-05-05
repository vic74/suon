object BDR1Form: TBDR1Form
  Left = 0
  Top = 0
  Caption = #1055#1083#1072#1085' '#1041#1044#1056'1 ('#1086#1073#1097#1080#1081')'
  ClientHeight = 702
  ClientWidth = 1070
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
    Width = 1070
    Height = 702
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = laf1
    object grd1: TcxGrid
      Left = 14
      Top = 67
      Width = 1042
      Height = 510
      TabOrder = 1
      object vb1: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_mT1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F5
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F6
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F7
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F8
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F9
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F10
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F11
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F12
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F13
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F14
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F15
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F16
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F17
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F18
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F19
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F20
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F21
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F22
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F4
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
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
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Width = 382
          end
          item
            Caption = #1046#1080#1083#1086#1081' '#1092#1086#1085#1076
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Width = 624
          end
          item
            Caption = #1053#1077#1078#1080#1083#1086#1081' '#1092#1086#1085#1076
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Width = 397
          end
          item
            Caption = #1046#1080#1083#1086#1081'+'#1085#1077#1078#1080#1083#1086#1081' '#1092#1086#1085#1076
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Width = 688
          end
          item
            Visible = False
          end>
        object cl_F0: TcxGridDBBandedColumn
          Caption = #8470
          DataBinding.FieldName = 'F0'
          Width = 25
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cl_F1: TcxGridDBBandedColumn
          Caption = #1040#1076#1088#1077#1089
          DataBinding.FieldName = 'F1'
          HeaderAlignmentHorz = taCenter
          Width = 219
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cl_F2: TcxGridDBBandedColumn
          Caption = #1044#1059
          DataBinding.FieldName = 'F2'
          HeaderAlignmentHorz = taCenter
          Width = 37
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cl_F3: TcxGridDBBandedColumn
          Caption = #1058#1072#1088#1080#1092
          DataBinding.FieldName = 'F3'
          HeaderAlignmentHorz = taCenter
          Width = 81
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cl_F4: TcxGridDBBandedColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'F4'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 84
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cl_F5: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
          DataBinding.FieldName = 'F5'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 85
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cl_F6: TcxGridDBBandedColumn
          Caption = #1041#1072#1083#1072#1085#1089' (+,-) '#1087#1086' '#1085#1072#1095#1080#1089#1083#1077#1085#1080#1102' '#1079#1072' '#1087#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1087#1077#1088#1080#1086#1076
          DataBinding.FieldName = 'F6'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 105
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cl_F7: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086' ('#1089#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1072#1085#1086')'
          DataBinding.FieldName = 'F7'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 108
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cl_F8: TcxGridDBBandedColumn
          Caption = #1055#1083#1072#1090#1072' '#1079#1072' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1077
          DataBinding.FieldName = 'F8'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 85
          Position.BandIndex = 1
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cl_F9: TcxGridDBBandedColumn
          Caption = #1050#1086#1084#1080#1089#1089#1080#1086#1085#1085#1099#1081' '#1089#1073#1086#1088
          DataBinding.FieldName = 'F9'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 84
          Position.BandIndex = 1
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cl_F10: TcxGridDBBandedColumn
          Caption = #1057#1084#1077#1090#1085#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'F10'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 96
          Position.BandIndex = 1
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cl_F11: TcxGridDBBandedColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'F11'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 73
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cl_F12: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
          DataBinding.FieldName = 'F12'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 81
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cl_F13: TcxGridDBBandedColumn
          Caption = #1055#1083#1072#1090#1072' '#1079#1072' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1077
          DataBinding.FieldName = 'F13'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 63
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cl_F14: TcxGridDBBandedColumn
          Caption = #1050#1086#1084#1080#1089#1089#1080#1086#1085#1085#1099#1081' '#1089#1073#1086#1088
          DataBinding.FieldName = 'F14'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 85
          Position.BandIndex = 2
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cl_F15: TcxGridDBBandedColumn
          Caption = #1057#1084#1077#1090#1085#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'F15'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 95
          Position.BandIndex = 2
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cl_F16: TcxGridDBBandedColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'F16'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 92
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cl_F17: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
          DataBinding.FieldName = 'F17'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 92
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cl_F18: TcxGridDBBandedColumn
          Caption = #1041#1072#1083#1072#1085#1089' (+.-) '#1087#1086' '#1085#1072#1095#1080#1089#1083#1077#1085#1080#1102' '#1079#1072' '#1087#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1087#1077#1088#1080#1086#1076
          DataBinding.FieldName = 'F18'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 107
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cl_F19: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086' ('#1089#1082#1086#1088#1088#1077#1082#1090#1080#1088')'
          DataBinding.FieldName = 'F19'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 98
          Position.BandIndex = 3
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cl_F20: TcxGridDBBandedColumn
          Caption = #1042#1086#1079#1085#1072#1075#1088#1072#1078#1076#1077#1085#1080#1077' '#1059#1050
          DataBinding.FieldName = 'F20'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 95
          Position.BandIndex = 3
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cl_F21: TcxGridDBBandedColumn
          Caption = #1050#1086#1084#1080#1089#1089#1080#1086#1085#1085#1099#1081' '#1089#1073#1086#1088
          DataBinding.FieldName = 'F21'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 95
          Position.BandIndex = 3
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cl_F22: TcxGridDBBandedColumn
          Caption = #1057#1084#1077#1090#1085#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'F22'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 109
          Position.BandIndex = 3
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object vb1D: TcxGridDBBandedColumn
          Caption = #1044
          DataBinding.FieldName = 'D'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 20
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1A: TcxGridDBBandedColumn
          DataBinding.FieldName = 'A'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 20
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object vb1Column1: TcxGridDBBandedColumn
          DataBinding.FieldName = 'House'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
      end
      object l1: TcxGridLevel
        GridView = vb1
      end
    end
    object Memo: TcxMemo
      Left = 14
      Top = 578
      Properties.ReadOnly = True
      Properties.ScrollBars = ssVertical
      Style.HotTrack = False
      TabOrder = 2
      Height = 89
      Width = 1042
    end
    object StatusBar: TdxStatusBar
      Left = 14
      Top = 668
      Width = 1042
      Height = 20
      Panels = <
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          Width = 100
        end
        item
          PanelStyleClassName = 'TdxStatusBarContainerPanelStyle'
          PanelStyle.Container = StatusBarContainer1
        end>
      PaintStyle = stpsUseLookAndFeel
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      object StatusBarContainer1: TdxStatusBarContainerControl
        Left = 106
        Top = 4
        Width = 934
        Height = 14
        object ProgressBar: TcxProgressBar
          Left = 0
          Top = 0
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 926
          Width = 934
        end
      end
    end
    object doc1: TdxBarDockControl
      Left = 14
      Top = 38
      Width = 1042
      Height = 28
      Align = dalTop
      BarManager = brm1
    end
    object doc2: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1034
      Height = 28
      Align = dalTop
      BarManager = brm1
      Visible = False
    end
    object grd2: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1034
      Height = 612
      TabOrder = 5
      Visible = False
      LockedStateImageOptions.Effect = lsieDark
      LockedStateImageOptions.ShowText = True
      LockedStateImageOptions.Text = #1055#1086#1078#1072#1083#1091#1081#1089#1090#1072' '#1087#1086#1076#1086#1078#1076#1080#1090#1077'...'
      object vb2: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl6
          end
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
            Column = cl13
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
            Column = cl5
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
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
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Width = 382
          end
          item
            Caption = #1046#1080#1083#1086#1081' '#1092#1086#1085#1076
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Width = 624
          end
          item
            Caption = #1053#1077#1078#1080#1083#1086#1081' '#1092#1086#1085#1076
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Width = 397
          end
          item
            Caption = #1046#1080#1083#1086#1081'+'#1085#1077#1078#1080#1083#1086#1081' '#1092#1086#1085#1076
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Width = 688
          end
          item
            Visible = False
          end>
        object cl1: TcxGridDBBandedColumn
          Caption = #8470
          DataBinding.FieldName = 'F0'
          Visible = False
          VisibleForCustomization = False
          Width = 25
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cl2: TcxGridDBBandedColumn
          Caption = #1040#1076#1088#1077#1089
          DataBinding.FieldName = 'F1'
          HeaderAlignmentHorz = taCenter
          Width = 219
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cl3: TcxGridDBBandedColumn
          Caption = #1044#1059
          DataBinding.FieldName = 'F2'
          HeaderAlignmentHorz = taCenter
          Width = 37
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cl4: TcxGridDBBandedColumn
          Caption = #1058#1072#1088#1080#1092
          DataBinding.FieldName = 'F3'
          HeaderAlignmentHorz = taCenter
          Width = 81
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cl5: TcxGridDBBandedColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'F4'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 84
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cl6: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
          DataBinding.FieldName = 'F5'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 85
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cl7: TcxGridDBBandedColumn
          Caption = #1041#1072#1083#1072#1085#1089' (+,-) '#1087#1086' '#1085#1072#1095#1080#1089#1083#1077#1085#1080#1102' '#1079#1072' '#1087#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1087#1077#1088#1080#1086#1076
          DataBinding.FieldName = 'F6'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 105
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cl8: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086' ('#1089#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1072#1085#1086')'
          DataBinding.FieldName = 'F7'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 108
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cl9: TcxGridDBBandedColumn
          Caption = #1055#1083#1072#1090#1072' '#1079#1072' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1077
          DataBinding.FieldName = 'F8'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 85
          Position.BandIndex = 1
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cl10: TcxGridDBBandedColumn
          Caption = #1050#1086#1084#1080#1089#1089#1080#1086#1085#1085#1099#1081' '#1089#1073#1086#1088
          DataBinding.FieldName = 'F9'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 84
          Position.BandIndex = 1
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cl11: TcxGridDBBandedColumn
          Caption = #1057#1084#1077#1090#1085#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'F10'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 96
          Position.BandIndex = 1
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cl12: TcxGridDBBandedColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'F11'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 73
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cl13: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
          DataBinding.FieldName = 'F12'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 81
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cl14: TcxGridDBBandedColumn
          Caption = #1055#1083#1072#1090#1072' '#1079#1072' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1077
          DataBinding.FieldName = 'F13'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 67
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cl15: TcxGridDBBandedColumn
          Caption = #1050#1086#1084#1080#1089#1089#1080#1086#1085#1085#1099#1081' '#1089#1073#1086#1088
          DataBinding.FieldName = 'F14'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 83
          Position.BandIndex = 2
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cl16: TcxGridDBBandedColumn
          Caption = #1057#1084#1077#1090#1085#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'F15'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 92
          Position.BandIndex = 2
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cl17: TcxGridDBBandedColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'F16'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 92
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cl18: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
          DataBinding.FieldName = 'F17'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 92
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cl19: TcxGridDBBandedColumn
          Caption = #1041#1072#1083#1072#1085#1089' (+.-) '#1087#1086' '#1085#1072#1095#1080#1089#1083#1077#1085#1080#1102' '#1079#1072' '#1087#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1087#1077#1088#1080#1086#1076
          DataBinding.FieldName = 'F18'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 107
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cl20: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086' ('#1089#1082#1086#1088#1088#1077#1082#1090#1080#1088')'
          DataBinding.FieldName = 'F19'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 98
          Position.BandIndex = 3
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cl21: TcxGridDBBandedColumn
          Caption = #1042#1086#1079#1085#1072#1075#1088#1072#1078#1076#1077#1085#1080#1077' '#1059#1050
          DataBinding.FieldName = 'F20'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 95
          Position.BandIndex = 3
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cl22: TcxGridDBBandedColumn
          Caption = #1050#1086#1084#1080#1089#1089#1080#1086#1085#1085#1099#1081' '#1089#1073#1086#1088
          DataBinding.FieldName = 'F21'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 95
          Position.BandIndex = 3
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cl23: TcxGridDBBandedColumn
          Caption = #1057#1084#1077#1090#1085#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'F22'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 109
          Position.BandIndex = 3
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cl24: TcxGridDBBandedColumn
          Caption = #1044
          DataBinding.FieldName = 'D'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          VisibleForCustomization = False
          Width = 20
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cl25: TcxGridDBBandedColumn
          DataBinding.FieldName = 'A'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          VisibleForCustomization = False
          Width = 20
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cl26: TcxGridDBBandedColumn
          DataBinding.FieldName = 'House'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 6
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
      Parent = lgrplc1Group1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lc1Item2: TdxLayoutItem
      LayoutLookAndFeel = laf1
      Parent = lgrplc1Group1
      Control = Memo
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lc1Item1: TdxLayoutItem
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      Parent = lgrplc1Group1
      Control = StatusBar
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lgrplc1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1055#1083#1072#1085' '#1041#1044#1056'1'
      Parent = lgrplc1Group2
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object lgrplc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      Locked = True
      ShowBorder = False
      Index = 0
    end
    object LItemlc1Item3: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = lgrplc1Group1
      Control = doc1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lgrplc1Group3: TdxLayoutGroup
      CaptionOptions.Text = #1054#1090#1095#1077#1090
      Parent = lgrplc1Group2
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object LItemlc1Item31: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = lgrplc1Group3
      Control = doc2
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemlc1Item4: TdxLayoutItem
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
  object lkf1: TdxLayoutLookAndFeelList
    Left = 656
    Top = 120
    object laf1: TdxLayoutCxLookAndFeel
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 3
      Offsets.RootItemsAreaOffsetVert = 3
      LookAndFeel.NativeStyle = False
    end
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 624
    Top = 120
  end
  object brm1: TdxBarManager
    AlwaysSaveText = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
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
    SunkenBorder = True
    UseSystemFont = False
    Left = 592
    Top = 120
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
      FloatLeft = 766
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
          UserDefine = [udWidth]
          UserWidth = 187
          Visible = True
          ItemName = 'lb_srv'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_exec'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'btn_excel'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 261
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
      FloatLeft = 1096
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
          UserWidth = 50
          Visible = True
          ItemName = 'b_Y1'
        end
        item
          Visible = True
          ItemName = 'bc_M2'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 47
          Visible = True
          ItemName = 'b_Y2'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 162
          Visible = True
          ItemName = 'bI_SRV'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_ExecRep'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_rep'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object lb_month: TcxBarEditItem
      Caption = #1084#1077#1089#1103#1094
      Category = 0
      Hint = #1084#1077#1089#1103#1094
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
    object lb_srv: TcxBarEditItem
      Caption = #1091#1089#1083#1091#1075#1072
      Category = 0
      Hint = #1091#1089#1083#1091#1075#1072
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.DropDownSizeable = True
      Properties.GridMode = True
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
      Properties.ListSource = src__HOUSESRV
      Properties.OnEditValueChanged = lb_srvPropertiesEditValueChanged
    end
    object btn_exec: TdxBarButton
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
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
    object btn_excel: TdxBarButton
      Caption = 'Excel'
      Category = 0
      Hint = 'Excel'
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
      OnClick = btn_excelClick
    end
    object btn_rep: TdxBarButton
      Caption = 'Excel'
      Category = 0
      Hint = 'Excel'
      Visible = ivAlways
      ImageIndex = 16
      PaintStyle = psCaptionGlyph
      OnClick = btn_repClick
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
    object BarCombo: TdxBarCombo
      Caption = 'New Item'
      Category = 0
      Hint = #1042#1099#1073#1088#1072#1090#1100' '#1076#1086#1075#1086#1074#1086#1088' '#1089' '#1087#1086#1076#1088#1103#1076#1085#1086#1081' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1077#1081
      Visible = ivAlways
      ItemIndex = -1
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
    object dxBarButton4: TdxBarButton
      Caption = 'Recalc'
      Category = 0
      Hint = 'Recalc'
      Visible = ivAlways
    end
    object dxBarButton5: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object btn_ExecRep: TdxBarButton
      Caption = #1055#1086#1083#1091#1095#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Category = 0
      Hint = #1055#1086#1083#1091#1095#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Visible = ivAlways
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
      OnClick = btn_ExecRepClick
    end
    object bc_M1: TdxBarCombo
      Caption = ' '#1087#1077#1088#1080#1086#1076' '#1089' '
      Category = 0
      Hint = ' '#1087#1077#1088#1080#1086#1076' '#1089' '
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
    object b_Y1: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxMaskEditProperties'
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      InternalEditValue = '2013'
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
    object b_Y2: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxMaskEditProperties'
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      InternalEditValue = '2013'
    end
    object bI_SRV: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src__HOUSESRV
      Properties.OnEditValueChanged = bI_SRVPropertiesEditValueChanged
    end
  end
  object mT1: TdxMemData
    Indexes = <>
    SortOptions = []
    SortedField = 'F'
    Left = 584
    Top = 184
  end
  object src_mT1: TDataSource
    DataSet = mT1
    Left = 628
    Top = 184
  end
  object m_month: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 80
    Top = 176
  end
  object ds_HOUSESRV: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE,'
      '       NAME'
      'FROM HOUSESRV'
      'where code in(1,2,3,4,5,7,9,13,14)')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 80
    Top = 224
  end
  object src_month: TDataSource
    DataSet = m_month
    Left = 112
    Top = 176
  end
  object src__HOUSESRV: TDataSource
    DataSet = ds_HOUSESRV
    Left = 112
    Top = 224
  end
  object dlgSave: TSaveDialog
    Filter = #1060#1072#1081#1083#1099' Excel|*.xls'
    Left = 216
    Top = 176
  end
  object xl1: TEXLReport
    About = 'EMS Advanced Excel Report(tm) Component Suite for Delphi(R)'
    Bands.BandCount = 4
    Bands.GroupHeaderBandCount = 1
    Bands.GroupFooterBandCount = 1
    Bands.Items = <
      item
        Bands.BandType = 0
      end
      item
        Bands.Range = 'A5:W5'
        Bands.BandType = 2
      end
      item
        Bands.Range = 'A7:W7'
        Bands.BandType = 6
        Bands.GroupID = 1
      end
      item
        Bands.Range = 'A3:W3'
        Bands.FieldName = 'F2'
        Bands.FooterBand = 'GroupFooter1'
        Bands.BandType = 1
        Bands.GroupID = 1
      end>
    DataSet = mT1
    Dictionary = <>
    _Version = '1.6.0.3'
    OnFormatCell = xl1FormatCell
    Left = 216
    Top = 232
  end
  object ppm1: TcxGridPopupMenu
    Grid = grd1
    PopupMenus = <>
    AlwaysFireOnPopup = True
    Left = 400
    Top = 152
  end
  object md1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 760
    Top = 336
  end
  object src1: TDataSource
    DataSet = md1
    Left = 792
    Top = 344
  end
end
