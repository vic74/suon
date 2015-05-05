object RepMKDForm: TRepMKDForm
  Left = 0
  Top = 0
  Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1089#1090#1072#1090#1100#1077' "'#1040#1088#1077#1085#1076#1072' '#1086#1073#1097#1077#1075#1086' '#1080#1084#1091#1097#1077#1089#1090#1074#1072' '#1052#1050#1044'"'
  ClientHeight = 648
  ClientWidth = 913
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
    Width = 913
    Height = 648
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
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
    object msk_y1: TcxMaskEdit
      Left = 188
      Top = 10
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 1
      Text = '2011'
      Width = 49
    end
    object cbb_m2: TcxComboBox
      Left = 263
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
      TabOrder = 2
      Text = #1103#1085#1074#1072#1088#1100
      Width = 121
    end
    object msk_y2: TcxMaskEdit
      Left = 390
      Top = 10
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 3
      Text = '2011'
      Width = 49
    end
    object btn_exec: TcxButton
      Left = 445
      Top = 10
      Width = 110
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
    object grd1: TcxGrid
      Left = 10
      Top = 41
      Width = 250
      Height = 200
      TabOrder = 6
      object vb1: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_HMOVEIMMKD
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skCount
            Position = spFooter
            Column = clvb1DU
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Position = spFooter
            Column = clvb1RSUM10
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Position = spFooter
            Column = clvb1RSUM11
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Position = spFooter
            Column = clvb1RSUM12
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Position = spFooter
            Column = clvb1RSUM13
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Position = spFooter
            Column = clvb1RSUM15
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Position = spFooter
            Column = clvb1ITOG
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1RSUM12
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1RSUM13
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1RSUM10
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1RSUM11
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1RSUM15
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1ITOG
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
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        Bands = <
          item
            Options.HoldOwnColumnsOnly = True
            Width = 375
          end
          item
            Caption = 
              #1057#1091#1084#1084#1072' '#1082' '#1088#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1102' ('#1086#1087#1083#1072#1095#1077#1085#1086' '#1079#1072' '#1084#1080#1085#1091#1089#1086#1084' '#1053#1044#1057','#1087#1083#1072#1090#1099' '#1079#1072' '#1091#1087#1088#1072#1074#1083#1077#1085 +
              #1080#1077')'
            Options.HoldOwnColumnsOnly = True
            Width = 564
          end>
        object clvb1HOUSE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1NOMER: TcxGridDBBandedColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          SortIndex = 1
          SortOrder = soAscending
          Width = 52
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1SNAME: TcxGridDBBandedColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          SortIndex = 0
          SortOrder = soAscending
          Width = 176
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1DU: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DU'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clvb1DUNAME: TcxGridDBBandedColumn
          Caption = #1044#1059
          DataBinding.FieldName = 'DUNAME'
          GroupIndex = 0
          Width = 126
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1DTYPE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DTYPE'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clvb1DTNAME: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DTNAME'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object clvb1RSUM10: TcxGridDBBandedColumn
          Caption = #1053#1072#1088#1091#1078#1085#1072#1103' '#1088#1077#1082#1083#1072#1084#1072
          DataBinding.FieldName = 'RSUM10'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 90
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1RSUM11: TcxGridDBBandedColumn
          Caption = #1041#1072#1079#1086#1074#1099#1077' '#1089#1090#1072#1085#1094#1080#1080
          DataBinding.FieldName = 'RSUM11'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 90
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1RSUM12: TcxGridDBBandedColumn
          Caption = #1048#1085#1090#1077#1088#1085#1077#1090' '#1080' '#1082#1072#1073#1077#1083#1100#1085#1086#1077
          DataBinding.FieldName = 'RSUM12'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 94
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1RSUM13: TcxGridDBBandedColumn
          Caption = #1040#1088#1077#1085#1076#1072' '#1087#1086#1084#1077#1097#1077#1085#1080#1081' '#1054#1048' '#1052#1050#1044
          DataBinding.FieldName = 'RSUM13'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 110
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1RSUM15: TcxGridDBBandedColumn
          Caption = #1050#1086#1083#1103#1089#1086#1095#1085#1099#1077
          DataBinding.FieldName = 'RSUM15'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 98
          Position.BandIndex = 1
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clvb1ITOG: TcxGridDBBandedColumn
          Caption = #1042#1089#1077#1075#1086
          DataBinding.FieldName = 'ITOG'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 82
          Position.BandIndex = 1
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
      end
      object l1: TcxGridLevel
        GridView = vb1
      end
    end
    object btn_Excel: TcxButton
      Left = 561
      Top = 10
      Width = 25
      Height = 25
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      OptionsImage.ImageIndex = 16
      OptionsImage.Images = cmDb.iml1
      PaintStyle = bpsGlyph
      TabOrder = 5
      OnClick = btn_ExcelClick
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object gr1: TdxLayoutGroup
      AlignVert = avTop
      CaptionOptions.Text = 'dfs'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 13
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itm_m1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1055#1077#1088#1080#1086#1076' '#1089
      Parent = gr1
      Control = cbb_m1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_y1: TdxLayoutItem
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = gr1
      Control = msk_y1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_m2: TdxLayoutItem
      CaptionOptions.Text = ' '#1087#1086
      Parent = gr1
      Control = cbb_m2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_y2: TdxLayoutItem
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = gr1
      Control = msk_y2
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_exec: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = gr1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 110
      Control = btn_exec
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object gr2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'sdf'
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = gr2
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemlc1Item1: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = gr1
      Control = btn_Excel
      ControlOptions.ShowBorder = False
      Index = 5
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 640
    Top = 432
    object lcl1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 612
    Top = 432
  end
  object ds_HMOVEIMMKD: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT '
      '       hm.HOUSE,h.nomer, s.name SNAME,'
      '       h.du, du.name DUNAME,'
      '       hm.DTYPE,dt.name DTNAME,'
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
      'left outer join dogimmkd_type dt on dt.code=hm.dtype'
      'left outer join du on du.code=h.du'
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 88
    Top = 192
  end
  object src_HMOVEIMMKD: TDataSource
    DataSet = m1
    Left = 128
    Top = 216
  end
  object m1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 200
    Top = 120
  end
end
