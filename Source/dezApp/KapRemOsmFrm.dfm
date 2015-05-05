object KapRemOsmForm: TKapRemOsmForm
  Left = 0
  Top = 0
  Caption = #1041#1072#1079#1072' '#1076#1072#1085#1085#1099#1093' '#1052#1050#1044
  ClientHeight = 589
  ClientWidth = 719
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
    Width = 719
    Height = 563
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
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_showresult
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SHOWHOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'SHOWHOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1STREETNAME: TcxGridDBColumn
          DataBinding.FieldName = 'STREETNAME'
        end
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1NOMER: TcxGridDBColumn
          DataBinding.FieldName = 'NOMER'
        end
        object clv1JWORK: TcxGridDBColumn
          DataBinding.FieldName = 'JWORK'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1V: TcxGridDBColumn
          DataBinding.FieldName = 'V'
        end
        object clv1MLNAME: TcxGridDBColumn
          DataBinding.FieldName = 'MLNAME'
        end
        object clv1MLIST: TcxGridDBColumn
          DataBinding.FieldName = 'MLIST'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1TOTAL_SQ: TcxGridDBColumn
          DataBinding.FieldName = 'TOTAL_SQ'
        end
        object clv1FLAT_CNT: TcxGridDBColumn
          DataBinding.FieldName = 'FLAT_CNT'
        end
        object clv1ENTRANCE_CNT: TcxGridDBColumn
          DataBinding.FieldName = 'ENTRANCE_CNT'
        end
        object clv1FLOOR_CNT: TcxGridDBColumn
          DataBinding.FieldName = 'FLOOR_CNT'
        end
        object clv1BUILDYEAR: TcxGridDBColumn
          DataBinding.FieldName = 'BUILDYEAR'
        end
      end
      object vb1: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_showresult
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        Bands = <
          item
            Caption = #1069#1090#1072#1087'/'#1086#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081
          end
          item
            Caption = #1055#1086#1076#1075#1086#1090#1086#1074#1082#1072' '#1055#1057#1044
            Visible = False
            VisibleForCustomization = False
            Width = 654
          end
          item
            Caption = #1054#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077' '#1080#1089#1090#1086#1095#1085#1080#1082#1072' '#1092#1080#1085#1072#1085#1089#1080#1088#1086#1074#1072#1085#1080#1103
            Visible = False
            VisibleForCustomization = False
          end
          item
            Caption = #1041#1072#1079#1072' '#1076#1072#1085#1085#1099#1093' '#1052#1050#1044', '#1085#1091#1078#1076#1072#1102#1097#1080#1093#1089#1103' '#1074' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1080' '#1050#1056
            Position.BandIndex = 0
            Position.ColIndex = 0
          end
          item
            Caption = #1053#1072#1083#1080#1095#1080#1077
            Position.BandIndex = 1
            Position.ColIndex = 0
            Visible = False
            VisibleForCustomization = False
            Width = 243
          end
          item
            Caption = #1055#1086#1076#1075#1086#1090#1086#1074#1082#1072' '#1090#1077#1093'.'#1079#1072#1076#1072#1085#1080#1103
            Options.HoldOwnColumnsOnly = True
            Position.BandIndex = 1
            Position.ColIndex = 1
            Styles.Header = cxstyl1
            Visible = False
            VisibleForCustomization = False
            Width = 68
          end
          item
            Caption = #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
            Position.BandIndex = 1
            Position.ColIndex = 2
            Visible = False
            VisibleForCustomization = False
            Width = 68
          end
          item
            Caption = #1054#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077' '#1089#1090#1086#1080#1084#1086#1089#1090#1080' '#1055#1057#1044' '#1089' 1'#1084'2'
            Position.BandIndex = 1
            Position.ColIndex = 3
            Visible = False
            VisibleForCustomization = False
            Width = 70
          end
          item
            Caption = #1055#1088#1086#1074#1077#1076#1077#1085#1080#1077' '#1054#1054#1057' '#1087#1086' '#1074#1086#1087#1088#1086#1089#1091' '#1086#1087#1083#1072#1090#1099' '#1055#1057#1044
            Position.BandIndex = 1
            Position.ColIndex = 4
            Visible = False
            VisibleForCustomization = False
            Width = 114
          end
          item
            Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1077' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1080#1082#1072#1084' '#1079#1072' '#1055#1057#1044'/'#1041#1050#1055
            Position.BandIndex = 1
            Position.ColIndex = 5
            Visible = False
            VisibleForCustomization = False
            Width = 91
          end>
        OnCustomDrawBandHeader = vb1CustomDrawBandHeader
        object clvb1CODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1SHOWHOUSE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SHOWHOUSE'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1STREETNAME: TcxGridDBBandedColumn
          AlternateCaption = '2'
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STREETNAME'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 131
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1HOUSE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 3
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1NOMER: TcxGridDBBandedColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 38
          Position.BandIndex = 3
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clvb1BUILDYEAR: TcxGridDBBandedColumn
          Caption = #1043#1086#1076' '#1087#1086#1089#1090#1088#1086#1081#1082#1080
          DataBinding.FieldName = 'BUILDYEAR'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 3
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clvb1FLOOR_CNT: TcxGridDBBandedColumn
          Caption = #1069#1090#1072#1078#1085#1086#1089#1090#1100
          DataBinding.FieldName = 'FLOOR_CNT'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 3
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object clvb1ENTRANCE_CNT: TcxGridDBBandedColumn
          Caption = #1050#1086#1083'-'#1074#1086' '#1087#1086#1076#1098#1077#1079#1076#1086#1074
          DataBinding.FieldName = 'ENTRANCE_CNT'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 3
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object clvb1FLAT_CNT: TcxGridDBBandedColumn
          Caption = #1050#1086#1083'-'#1074#1086' '#1082#1074#1072#1088#1090#1080#1088
          DataBinding.FieldName = 'FLAT_CNT'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 3
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object clvb1TOTAL_SQ: TcxGridDBBandedColumn
          Caption = #1054#1073#1097#1072#1103' '#1087#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'TOTAL_SQ'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 3
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object clvb1MLIST: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MLIST'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          VisibleForCustomization = False
          Position.BandIndex = 3
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object clvb1MLNAME: TcxGridDBBandedColumn
          Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'MLNAME'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 155
          Position.BandIndex = 3
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object clvb1NOTE: TcxGridDBBandedColumn
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'NOTE'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 131
          Position.BandIndex = 3
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object clvb1V: TcxGridDBBandedColumn
          Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090#1085#1086#1089#1090#1100
          DataBinding.FieldName = 'V'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 49
          Position.BandIndex = 3
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object clvb1JWORK: TcxGridDBBandedColumn
          DataBinding.FieldName = 'JWORK'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 3
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object clvb1_11: TcxGridDBBandedColumn
          Caption = #1057#1047#1047
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1_12: TcxGridDBBandedColumn
          Caption = #1057#1069
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 5
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1_13: TcxGridDBBandedColumn
          Caption = #1057#1047#1047
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 6
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1_14: TcxGridDBBandedColumn
          Caption = #1057#1047#1047
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 7
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1_15: TcxGridDBBandedColumn
          Caption = #1054#1054#1050
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 8
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1_16: TcxGridDBBandedColumn
          Caption = #1055#1083#1072#1085
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 9
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1_17: TcxGridDBBandedColumn
          Caption = #1060#1072#1082#1090
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 9
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1_18: TcxGridDBBandedColumn
          Caption = #1057#1047#1047
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 4
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1_19: TcxGridDBBandedColumn
          Caption = #1057#1047#1047
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 4
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1_20: TcxGridDBBandedColumn
          Caption = #1057#1047#1047
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 4
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1_21: TcxGridDBBandedColumn
          Caption = #1057#1047#1047
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1_22: TcxGridDBBandedColumn
          Caption = #1057#1047#1047
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1_23: TcxGridDBBandedColumn
          Caption = #1057#1047#1047
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1_24: TcxGridDBBandedColumn
          Caption = #1057#1047#1047
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 2
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1_25: TcxGridDBBandedColumn
          Caption = #1058#1080#1087' '#1054#1057#1057
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 2
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clvb1_26: TcxGridDBBandedColumn
          Caption = #1044#1072#1090#1072
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 2
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clvb1_27: TcxGridDBBandedColumn
          Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 2
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object clvb1_28: TcxGridDBBandedColumn
          Caption = #1057#1047#1047
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 2
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
      end
      object l1: TcxGridLevel
        GridView = vb1
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
      Parent = grp1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object lkf1: TdxLayoutLookAndFeelList
    Left = 648
    Top = 288
    object laf1: TdxLayoutCxLookAndFeel
    end
  end
  object brm1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 656
    Top = 192
    DockControlHeights = (
      0
      0
      26
      0)
    object brm1Bar1: TdxBar
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
      FloatLeft = 745
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_exec'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_xls'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object btn_exec: TdxBarButton
      Caption = #1055#1086#1083#1091#1095#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Category = 0
      Hint = #1055#1086#1083#1091#1095#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000003300000030000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000329EDEFF2E93CFF10000002D0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000002676A6C4329DDEFF2B8BC4E90000003300000006000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000012384E5A329BDDFF67C6EEFF369FDEFF0612194A000000050000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000319ADBFF83D7F3FF89E4FAFF349CDCFF051017490000
        0012000000000000000000000000000000000000000000000000000000000000
        00000000000000000000246D9DBA57BEEAFFA9F5FFFF7BDEF8FF369CDCFF1337
        4E7B000000110000000000000000000000000000000000000000000000000000
        000000000033000000330E2A3C6B42A9E2FFBDF5FEFF81E7FBFF76DBF6FF379B
        DCFF13354B790000001A00000000000000000000000000000000000000000000
        0000389BDCFF48ACE4FF45A9E2FF3FA5E1FFBDF3FDFF7FE4F8FF7AE3FAFF70D9
        F5FF42A5E0FF1C4D6E9900000022000000000000000000000000000000000000
        00003799DBFF9EF1FDFF80E5F9FF73E0F9FF6FDEF7FF6DDCF7FF6EDDF7FF71E0
        F9FF70DFF8FF40A6E0FF266691B9000000230000000000000000000000000000
        00002D7AB0D285DCF5FF89E5F8FF68DAF6FF68DAF6FFB9F0FCFFB8F2FDFFB4F2
        FCFFA9F1FDFFABF1FCFF44A9E2FF2A6C98BF0000000000000000000000000000
        00001E4D6E856DC5ECFF9CE8FAFF5FD6F4FF61D7F4FF46B4E6FF3191D8FF3595
        DAFF3797DAFF3A99DBFF3E9CDCFF409EDDFF0000000000000000000000000000
        00000C1E2B324CAEE4FFB0EEFBFF66D8F4FF57D3F3FFACEDFBFF63B4E5FF1840
        5C89000000010000000000000000000000000000000000000000000000000000
        0000000000003B9ADAFFACEEFBFF82DDF5FF4CCEF1FF82DFF6FFABE6F8FF3996
        D9FF0103042D0000000000000000000000000000000000000000000000000000
        000000000000317AAFD28BDAF3FFACEAF9FF3FCBF0FF45CDF0FFBBF0FBFF6DBA
        E7FF327DB1D90000000E00000000000000000000000000000000000000000000
        000000000000214E6F876CC5EBFFD7FAFFFFCDF6FDFFC3F3FDFFD2F8FFFFC6F1
        FBFF409ADAFF132C3E6D00000000000000000000000000000000000000000000
        0000000000001023323A439ADAFF3F97D9FF3E96D9FF3E96D9FF3E97D9FF4099
        DAFF459CDBFF489EDCFF00000000000000000000000000000000}
      PaintStyle = psCaptionGlyph
      OnClick = btn_execClick
    end
    object btn_xls: TdxBarButton
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Ecxel'
      Category = 0
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' Ecxel'
      Visible = ivAlways
      Glyph.Data = {
        26040000424D2604000000000000360000002800000012000000120000000100
        180000000000F003000000000000000000000000000000000000FFFFFFFFFFFF
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
      PaintStyle = psCaptionGlyph
      OnClick = btn_xlsClick
    end
  end
  object ds_showresult: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE SHOWRESULT'
      'SET '
      '    SHOWHOUSE = :SHOWHOUSE,'
      '    HOUSE = :HOUSE,'
      '    MLIST = :MLIST,'
      '    V = :V,'
      '    JWORK = :JWORK'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    SHOWRESULT'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO SHOWRESULT('
      '    CODE,'
      '    SHOWHOUSE,'
      '    HOUSE,'
      '    MLIST,'
      '    V,'
      '    JWORK'
      ')'
      'VALUES('
      '    :CODE,'
      '    :SHOWHOUSE,'
      '    :HOUSE,'
      '    :MLIST,'
      '    :V,'
      '    :JWORK'
      ')')
    RefreshSQL.Strings = (
      'SELECT SR.CODE, '
      '       SR.SHOWHOUSE,'
      '       s.name StreetName, '
      '       SR.HOUSE, H.nomer,'
      
        '       h.buildyear,H.floor_cnt,H.entrance_cnt,H.flat_cnt,h.total' +
        '_sq,'
      '       --SR.STRUCTDEFECT,'
      '       --SR.NOTE,'
      '       --SR.QUANTITY,'
      '       --SR.ENTRANCE,'
      '       --SR."FLOOR",'
      '       --SR.FLAT,'
      '       --SR.ATYPE,'
      '       --SR.RTYPE,'
      '       SR.MLIST,m.name MlName,'
      '       --SR.MNOTE,'
      '       SR.V, '
      '       --SR.TRPLAN,'
      '       --SR.COPYFLAG,'
      '       SR.JWORK'
      'FROM SHOWRESULT SR'
      'left outer join house h on sr.house=h.code'
      'left outer join street s on h.street=s.code'
      'left outer join mlist m on sr.mlist=m.code'
      ' WHERE '
      '        SR.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT SR.CODE, '
      '       SR.SHOWHOUSE,'
      '       s.name StreetName, '
      '       SR.HOUSE, H.nomer,'
      
        '       h.buildyear,H.floor_cnt,H.entrance_cnt,H.flat_cnt,h.total' +
        '_sq,'
      '       --SR.STRUCTDEFECT,'
      '       SR.NOTE,'
      '       --SR.QUANTITY,'
      '       --SR.ENTRANCE,'
      '       --SR."FLOOR",'
      '       --SR.FLAT,'
      '       --SR.ATYPE,'
      '       --SR.RTYPE,'
      '       SR.MLIST,m.name MlName,'
      '       --SR.MNOTE,'
      '       SR.V, '
      '       --SR.TRPLAN,'
      '       --SR.COPYFLAG,'
      '       SR.JWORK'
      'FROM SHOWRESULT SR'
      'left outer join house h on sr.house=h.code'
      'left outer join street s on h.street=s.code'
      'left outer join mlist m on sr.mlist=m.code')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 144
    Top = 96
  end
  object src_showresult: TDataSource
    DataSet = ds_showresult
    Left = 172
    Top = 96
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 636
    Top = 152
  end
  object stl1: TcxStyleRepository
    Left = 224
    Top = 360
    PixelsPerInch = 96
    object cxstyl1: TcxStyle
    end
  end
  object xls1: TEXLReport
    About = 'EMS Advanced Excel Report(tm) Component Suite for Delphi(R)'
    DataSet = ds_showresult
    Dictionary = <>
    _Version = '1.6.0.3'
    Left = 376
    Top = 272
  end
end
