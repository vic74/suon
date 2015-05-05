object GrafRepForm: TGrafRepForm
  Left = 0
  Top = 0
  Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1075#1088#1072#1092#1080#1082#1072#1084' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103' '#1088#1072#1073#1086#1090
  ClientHeight = 645
  ClientWidth = 960
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
    Width = 960
    Height = 645
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object dt1: TcxDateEdit
      Left = 89
      Top = 23
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object dt2: TcxDateEdit
      Left = 236
      Top = 23
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cbb_po: TcxLookupComboBox
      Left = 434
      Top = 23
      Properties.CaseSensitiveSearch = True
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_kontr
      Style.HotTrack = False
      TabOrder = 2
      Width = 145
    end
    object cbb_type: TcxLookupComboBox
      Left = 89
      Top = 66
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
      Properties.ListSource = src_GRAPHTO
      Style.HotTrack = False
      TabOrder = 3
      Width = 145
    end
    object btn1: TcxButton
      Left = 797
      Top = 56
      Width = 143
      Height = 39
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
      TabOrder = 5
      OnClick = btn1Click
    end
    object grd1: TcxGrid
      Left = 10
      Top = 106
      Width = 250
      Height = 200
      TabOrder = 6
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = v1CellDblClick
        DataController.DataSource = src_GRAPHSPEC
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = clv1DELAYED
          end
          item
            Kind = skSum
            Column = clv1CLOSED
          end
          item
            Kind = skSum
            Column = clv1CNT
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object clv1GRAPHLIST: TcxGridDBColumn
          Caption = #1050#1086#1076' '#1075#1088#1072#1092#1080#1082#1072
          DataBinding.FieldName = 'GRAPHLIST'
          Width = 78
        end
        object clv1GTNAME: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1075#1088#1072#1092#1080#1082#1072
          DataBinding.FieldName = 'GTNAME'
          Width = 356
        end
        object clv1KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1KNAME: TcxGridDBColumn
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'KNAME'
          Width = 118
        end
        object clv1CNT: TcxGridDBColumn
          Caption = #1042#1089#1077#1075#1086
          DataBinding.FieldName = 'CNT'
          Width = 79
        end
        object clv1CLOSED: TcxGridDBColumn
          Caption = #1047#1072#1082#1088#1099#1090#1099#1077
          DataBinding.FieldName = 'CLOSED'
          Width = 80
        end
        object clv1DELAYED: TcxGridDBColumn
          Caption = #1055#1088#1086#1089#1088#1086#1095'.'
          DataBinding.FieldName = 'DELAYED'
          Width = 74
        end
        object cl_FLAT_CNT: TcxGridDBColumn
          Caption = #1082#1086#1083'-'#1074#1086' '#1082#1074'.'
          DataBinding.FieldName = 'FLAT_CNT'
        end
        object cl_ACTFACT: TcxGridDBColumn
          Caption = #1082#1086#1083'-'#1074#1086' '#1086#1089#1084#1086#1090#1088#1077#1085#1085#1099#1093' '#1082#1074'.'
          DataBinding.FieldName = 'ACTFACT'
          Width = 73
        end
        object cl_PROC: TcxGridDBColumn
          Caption = '% '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
          DataBinding.FieldName = 'PROC'
          PropertiesClassName = 'TcxProgressBarProperties'
          Width = 69
        end
        object cl_v1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
        end
        object clv1FLATPLAN: TcxGridDBColumn
          Caption = #1050#1074'. '#1087#1083#1072#1085
          DataBinding.FieldName = 'FLATPLAN'
          Styles.Content = cmDb.stl_ReadOnly
          Width = 44
        end
        object clv1FLAT: TcxGridDBColumn
          Caption = #1050#1074'. '#1092#1072#1082#1090
          DataBinding.FieldName = 'FLAT'
          Styles.Content = cmDb.stl_ReadOnly
          Width = 50
        end
        object clv1pr1: TcxGridDBColumn
          Caption = '%'
          DataBinding.FieldName = 'pr1'
          PropertiesClassName = 'TcxProgressBarProperties'
          Styles.Content = cmDb.stl_ReadOnly
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd3: TcxGrid
      Left = 10
      Top = 298
      Width = 911
      Height = 337
      TabOrder = 7
      LockedStateImageOptions.Effect = lsieDark
      LockedStateImageOptions.ShowText = True
      LockedStateImageOptions.Text = #1055#1086#1076#1086#1078#1076#1080#1090#1077' ...'
      object v3: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_GrapSpec
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.InvertSelect = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsSelection.CellMultiSelect = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        Styles.Inactive = cmDb.styl1
        Styles.Selection = cmDb.styl1
        object clv2CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2GRAPHLIST: TcxGridDBColumn
          DataBinding.FieldName = 'GRAPHLIST'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2Flag: TcxGridDBColumn
          Caption = #1047#1072#1082#1088#1099#1090
          DataBinding.FieldName = 'ISCLOSED'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderGlyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFBFBFB
            F4F4F4EAEAEADADADACACACAC0C0C0BABABABCBCBCC3C3C3CECECEDDDDDDEBEB
            EBF3F3F3F8F8F8FDFDFDFFFFFFFEFEFEF9F9F9C2C2C2A1A1A17E7E7E7F7F7F88
            88888A8A8A838383828282A2A2A2C1C1C1F7F7F7FCFCFCFFFFFFFFFFFFFFFFFF
            FFFFFFD0D0D0D6D6D6B7B7B7C1C1C1CFCFCFD1D1D1C3C3C3B6B6B6D5D5D5D1D1
            D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1D8D8D8B8B8B8C1C1C1D0
            D0D0D1D1D1C3C3C3B7B7B7D6D6D6D1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFCFCFCFD9D9D9B3B3B3BEBEBED1D1D1D3D3D3C1C1C1B1B1B1D6D6D6D0D0
            D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECECEDBDBDBB1B1B1BBBBBBCD
            CDCDCFCFCFBDBDBDADADADD8D8D8CFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFD1D1D1E4E4E4B9B9B9BFBFBFCFCFCFD1D1D1C1C1C1B5B5B5E2E2E2D1D1
            D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1E6E6E6BDBDBDC1C1C1CF
            CFCFD1D1D1C3C3C3BBBBBBE4E4E4D2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFD8D8D8BFC0C0BFBFBFD5D5D5DFDFDFE1E1E1D7D7D7C7C7C7C1C1C1D0D0
            D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B1B2DADADAFFFFFFFF
            FFFFFFFFFFFFFFFFEFEFEFAFB0B1E4E4E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFB2B3B3D9D9D9FFFFFFFFFFFFFFFFFFFFFFFFEEEEEEADAEAFE6E6
            E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1C2C2C2C2C3FFFFFFFF
            FFFFFFFFFFFFFFFFDADADA9D9E9FF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFDBDBDB999A9AF2F2F2FFFFFFFFFFFFFAFAFAA2A2A3C0C1C1FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8DCDCDCBBBBBBB1
            B2B2B2B2B2BFBFBFD7D7D8F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF7F7F7E3E3E3C2C3C3BFC0C0E1E2E2F5F5F5FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Options.Editing = False
          Options.ShowCaption = False
          Width = 27
        end
        object clv2STName: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STName'
          Options.Editing = False
          Width = 174
        end
        object clv2HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2nomer: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'nomer'
          Options.Editing = False
          Width = 51
        end
        object clv2D1: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1086#1089#1084#1086#1090#1088#1072
          DataBinding.FieldName = 'D1'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ImmediatePost = True
          Options.Editing = False
          Width = 102
        end
        object clv2D2: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103' '#1086#1089#1084#1086#1090#1088#1072
          DataBinding.FieldName = 'D2'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ImmediatePost = True
          Options.Editing = False
          Width = 119
        end
        object clv2D3: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1089#1076#1072#1095#1080' '#1072#1082#1090#1072
          DataBinding.FieldName = 'D3'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ImmediatePost = True
          Options.Editing = False
          Width = 83
        end
        object cl_PROSR: TcxGridDBColumn
          Caption = #1076#1085#1077#1081' '#1087#1088#1086#1089#1088#1086#1095#1082#1080
          DataBinding.FieldName = 'PROSR'
        end
        object ACTFACT: TcxGridDBColumn
          Caption = #1086#1089#1084#1086#1090#1088#1077#1085#1085#1099#1093' '#1082#1074#1072#1088#1090#1080#1088
          DataBinding.FieldName = 'ACTFACT'
          Visible = False
          Width = 72
        end
        object FLAT_CNT: TcxGridDBColumn
          Caption = #1082#1086#1083'-'#1074#1086' '#1082#1074'.'
          DataBinding.FieldName = 'FLAT_CNT'
          Visible = False
          Options.Editing = False
          Width = 41
        end
        object PROC: TcxGridDBColumn
          Caption = '% '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
          DataBinding.FieldName = 'PROC'
          PropertiesClassName = 'TcxProgressBarProperties'
          Visible = False
          Options.Editing = False
          Width = 70
        end
      end
      object l_1: TcxGridLevel
        GridView = v3
      end
    end
    object cbb_Month: TcxComboBox
      Left = 797
      Top = 23
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
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
      TabOrder = 4
      Width = 121
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grlc1Group7: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grlc1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Parent = grlc1Group7
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 80
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object grlc1Group4: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grlc1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object grlc1Group3: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grlc1Group4
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itm_dt1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1055#1077#1088#1080#1086#1076' '#1089
      Parent = grlc1Group3
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_dt2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1087#1086' '
      Parent = grlc1Group3
      Control = dt2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_po: TdxLayoutItem
      CaptionOptions.Text = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      Parent = grlc1Group3
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 281
      Control = cbb_po
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object grlc1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grlc1Group4
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object itm_type: TdxLayoutItem
      CaptionOptions.Text = #1058#1080#1087' '#1075#1088#1072#1092#1080#1082#1072
      Parent = grlc1Group5
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 623
      Control = cbb_type
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grlc1Group6: TdxLayoutGroup
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      Parent = grlc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 64
      SizeOptions.Width = 143
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object itmlc1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group6
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 31
      SizeOptions.Width = 116
      Control = btn1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grlc1Group2: TdxLayoutGroup
      AlignVert = avClient
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
      Parent = grlc1Group2
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object spl_2: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grlc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object itm_grd3: TdxLayoutItem
      Parent = grlc1Group2
      Control = grd3
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itmlc1Item11: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxComboBox1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grlc1Group6
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 115
      Control = cbb_Month
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 768
    Top = 232
    object lcl1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = dt1
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = dt2
        Properties.Strings = (
          'EditValue')
      end>
    StorageName = 'prop1'
    Left = 740
    Top = 232
  end
  object ds_GRAPHSPEC: TpFIBDataSet
    SelectSQL.Strings = (
      
        'select GS.GRAPHLIST, GT.NAME GTNAME, GL.KONTRAGENT, K.NAME KNAME' +
        ','
      '       GLT.CODE, count(GS.D1) CNT,'
      
        '       sum(iif(GS.ISCLOSED = 0 and GS.D2 < current_date, 1, 0)) ' +
        'DELAYED,'
      '       sum(iif(GS.ISCLOSED = 1, 1, 0)) CLOSED,'
      
        '       sum(H.FLAT_CNT) FLAT_CNT, sum(iif(GS.ACTFACT is null, 0, ' +
        'GS.ACTFACT)) ACTFACT,'
      
        '       iif(sum(H.FLAT_CNT) > 0 and sum(iif(GS.ACTFACT is null, 0' +
        ', GS.ACTFACT)) > 0,'
      
        '       (sum(iif(GS.ACTFACT is null, 0, GS.ACTFACT)) * 1.0) / (su' +
        'm(H.FLAT_CNT) * 1.0) * 100, 0) PROC'
      'from GRAPHSPEC GS'
      'left outer join GRAPHLIST GL on GS.GRAPHLIST = GL.CODE'
      'left outer join KONTRAGENT K on K.CODE = GL.KONTRAGENT'
      'left outer join HOUSE H on H.CODE = GS.HOUSE'
      'left outer join STREET S on S.CODE = GS.STREET'
      'left outer join GRAPHTO GT on GT.CODE = GL.GRAPHTO'
      'left outer join GRAPHTYPE GLT on GLT.CODE = GT.GRAPHTYPE'
      'group by 1, GT.NAME, GL.KONTRAGENT, K.NAME,GLT.CODE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 264
    Top = 240
  end
  object src_GRAPHSPEC: TDataSource
    DataSet = ds_GRAPHSPEC
    Left = 296
    Top = 240
  end
  object src_kontr: TDataSource
    Left = 304
    Top = 312
  end
  object ds_GRAPHTO: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    CODE,'
      '    NAME'
      'FROM'
      '    GRAPHTO '
      'order by name')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 272
    Top = 432
  end
  object src_GRAPHTO: TDataSource
    DataSet = ds_GRAPHTO
    Left = 301
    Top = 432
  end
  object ds_GrapSpec: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE GRAPHSPEC'
      'SET '
      '    GRAPHLIST = :GRAPHLIST,'
      '    STREET = :STREET,'
      '    HOUSE = :HOUSE,'
      '    D1 = :D1,'
      '    D2 = :D2,'
      '    D3 = :D3'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    GRAPHSPEC'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO GRAPHSPEC('
      '    CODE,'
      '    GRAPHLIST,'
      '    STREET,'
      '    HOUSE,'
      '    D1,'
      '    D2,'
      '    D3'
      ')'
      'VALUES('
      '    :CODE,'
      '    :GRAPHLIST,'
      '    :STREET,'
      '    :HOUSE,'
      '    :D1,'
      '    :D2,'
      '    :D3'
      ')')
    RefreshSQL.Strings = (
      'SELECT GS.CODE, '
      '       GS.GRAPHLIST, '
      '       GS.STREET, s.name STName,'
      '       GS.HOUSE, h.nomer,'
      '       GS.D1, '
      '       GS.D2,'
      '       GS.d3'
      'FROM GRAPHSPEC GS'
      'left outer join street s on s.code=gs.street'
      'left outer join house h on h.code=gs.house'
      ''
      ' WHERE '
      '        GS.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT GS.ISCLOSED,'
      '       GS.CODE, '
      '       GS.GRAPHLIST, '
      '       GS.STREET, s.name STName,'
      '       GS.HOUSE, h.nomer,'
      '       GS.D1, '
      '       GS.D2,'
      '       GS.d3,'
      '       GS.prosr,'
      '       GS.actfact,'
      '       h.flat_cnt,'
      
        '       iif(GS.actfact>0 and h.flat_cnt>0,(((GS.actfact*1.0) / (h' +
        '.flat_cnt*1.0))*100),0) proc'
      'FROM GRAPHSPEC GS'
      'left outer join street s on s.code=gs.street'
      'left outer join house h on h.code=gs.house'
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 432
    Top = 440
  end
  object src_GrapSpec: TDataSource
    DataSet = ds_GrapSpec
    Left = 464
    Top = 440
  end
end
