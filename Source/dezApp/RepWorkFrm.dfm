object RepWorkForm: TRepWorkForm
  Left = 0
  Top = 0
  Caption = #1048#1089#1090#1086#1088#1080#1103' '#1080#1079#1084#1077#1085#1077#1085#1080#1081
  ClientHeight = 660
  ClientWidth = 959
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
    Width = 959
    Height = 660
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    object grd1: TcxGrid
      Left = 279
      Top = 137
      Width = 663
      Height = 508
      TabOrder = 17
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        OnCellDblClick = v1CellDblClick
        DataController.DataSource = src_HISTORYAPP
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = cl_v1ID
          end
          item
            Kind = skSum
            Column = cl_v1RATE_HOUR
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object cl_v1ID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Width = 25
        end
        object cl_v1TASKCODE: TcxGridDBColumn
          Caption = #1050#1086#1076' '#1079#1072#1076#1072#1095#1080
          DataBinding.FieldName = 'TASKCODE'
          Width = 41
        end
        object cl_v1TSNAME: TcxGridDBColumn
          Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
          DataBinding.FieldName = 'TSNAME'
          Width = 59
        end
        object cl_v1DATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = 'DATA'
          Width = 74
        end
        object cl_v1FORM: TcxGridDBColumn
          Caption = #1060#1086#1088#1084#1072
          DataBinding.FieldName = 'FORM'
          Width = 140
        end
        object cl_v1NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'NAME'
          Width = 145
        end
        object cl_v1RATE_HOUR: TcxGridDBColumn
          Caption = #1095#1077#1083'/'#1095#1072#1089
          DataBinding.FieldName = 'RATE_HOUR'
          Width = 47
        end
        object cl_v1UNIT: TcxGridDBColumn
          Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1085#1086#1077' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' '
          DataBinding.FieldName = 'UNIT'
          Width = 91
        end
        object cl_v1UNIT_COMENT: TcxGridDBColumn
          Caption = #1047#1072#1084#1077#1095#1072#1085#1080#1103
          DataBinding.FieldName = 'UNIT_COMENT'
          Visible = False
          Width = 189
        end
        object cl_v1TASKSTATUS: TcxGridDBColumn
          DataBinding.FieldName = 'TASKSTATUS'
          Visible = False
        end
        object cl_v1TASKCOMPLETE: TcxGridDBColumn
          Caption = #1043#1086#1090#1086#1074#1085#1086#1089#1090#1100' (%)'
          DataBinding.FieldName = 'TASKCOMPLETE'
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object dt1: TcxDateEdit
      Left = 62
      Top = 262
      Properties.DateButtons = [btnClear, btnNow, btnToday]
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 8
      Width = 177
    end
    object txt_form: TcxTextEdit
      Left = 62
      Top = 284
      Properties.LookupItemsSorted = True
      Style.HotTrack = False
      TabOrder = 9
      Width = 177
    end
    object m_name: TcxMemo
      Left = 21
      Top = 321
      Style.HotTrack = False
      TabOrder = 10
      Height = 89
      Width = 218
    end
    object spn_1: TcxSpinEdit
      Left = 62
      Top = 411
      Properties.ImmediatePost = True
      Properties.ValueType = vtFloat
      Style.HotTrack = False
      TabOrder = 11
      Width = 177
    end
    object txt_unit: TcxTextEdit
      Left = 21
      Top = 448
      Style.HotTrack = False
      TabOrder = 12
      Width = 218
    end
    object m_unitcomment: TcxMemo
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 14
      Visible = False
      Height = 89
      Width = 185
    end
    object doc1: TdxBarDockControl
      Left = 21
      Top = 470
      Width = 218
      Height = 28
      Align = dalTop
      BarManager = bar1
    end
    object doc2: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 144
      Height = 28
      Align = dalTop
      BarManager = bar1
      Visible = False
    end
    object dt_1: TcxDateEdit
      Left = 62
      Top = 32
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Width = 121
    end
    object dt_2: TcxDateEdit
      Left = 204
      Top = 32
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object btn_exec: TcxButton
      Left = 326
      Top = 32
      Width = 127
      Height = 25
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      LookAndFeel.NativeStyle = False
      OptionsImage.ImageIndex = 9
      OptionsImage.Images = cmDb.iml1
      TabOrder = 2
      OnClick = btn_execClick
    end
    object btn_txt_code: TcxButtonEdit
      Left = 62
      Top = 240
      Properties.Buttons = <
        item
          Default = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            F0F0FF9595E51B1B4CB9B9B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFEDEDFFC1C1FFDADAFF4D4DD208083FB7B7B7FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDFFC1C1FF
            D1D1FF7D7DE80C0CC70000B9080845B7B7B7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFBFBFFFCECEFF7E7EEA0000BD0000BF0000C60000B802
            0241BBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3FF7F7FE9
            0000BB0000BF0000C00000C00000C40000B90A0A43B7B7B7FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFDADAFC3232D00000BB0000C00000C00000C000
            00C50103BC26183AB9B9B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            E1E1FE3232D00000BC0000C00000BF0000BC9CAAF7EFAAA0410404BBBBBBFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFD3838D00000BA0000BC91
            9BEDFFFAE8FF9293E75B5B460A0AB7B7B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFE0E0FF3536D19199EBFFF1ECFF8483FF7B7BFF8B8BE45E5E4105
            05B9B9B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBE9FFFFD5CCFF
            8584FF7B7BFF8080FF8080FF8989E45E5E430909B7B7B7FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFDAD9FF8E8EFF7C7CFF8080FF8080FF7F7FFF8A
            8AE75E5E450A0AB7B7B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            E0E0FF9090FF7B7BFF8080FF8080FF8080FF8A8AE35E5E4D1111FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFF9191FF7B7BFF8080FF80
            80FF8080FF9090AE2626FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFE0E0FF9191FF7B7BFF8282FF8A8ABF4040402626FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0FF9090FF85
            85C13F3F412A2AE3E3E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFE2E2C659593C2828E3E3E3FFFFFF}
          Kind = bkGlyph
        end>
      Properties.Images = cmDb.iml1
      Properties.ReadOnly = True
      Properties.OnButtonClick = btn_txt_codePropertiesButtonClick
      Properties.OnEditValueChanged = btn_txt_codePropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 7
      Width = 177
    end
    object btn_print: TcxButton
      Left = 454
      Top = 32
      Width = 75
      Height = 25
      Caption = #1055#1077#1095#1072#1090#1100
      TabOrder = 3
      OnClick = btn_printClick
    end
    object TASKCODE: TcxTextEdit
      Left = 114
      Top = 146
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 4
      Width = 115
    end
    object TASKSTATUS: TcxLookupComboBox
      Left = 31
      Top = 183
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
      Properties.ListSource = src_TASKSTATUS
      Style.HotTrack = False
      TabOrder = 5
      Width = 198
    end
    object TASKCOMPLETE: TcxSpinEdit
      Left = 114
      Top = 205
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 6
      Width = 115
    end
    object grd2: TcxGrid
      Left = 10000
      Top = 10000
      Width = 250
      Height = 200
      TabOrder = 19
      Visible = False
      object v2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_TASK
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = cl_v2CODE
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object cl_v2CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Width = 31
        end
        object cl_v2TASKHEAD: TcxGridDBColumn
          Caption = #1047#1072#1076#1072#1095#1072
          DataBinding.FieldName = 'TASKHEAD'
          Width = 242
        end
        object cl_v2PRIORITY: TcxGridDBColumn
          Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090
          DataBinding.FieldName = 'PRIORITY'
          Width = 69
        end
        object cl_v2TASKPRIORITY: TcxGridDBColumn
          DataBinding.FieldName = 'TASKPRIORITY'
          Visible = False
        end
        object cl_v2TASKSTATUS: TcxGridDBColumn
          DataBinding.FieldName = 'TASKSTATUS'
          Visible = False
        end
        object cl_v2TSNAME: TcxGridDBColumn
          Caption = #1057#1090#1072#1090#1091#1089
          DataBinding.FieldName = 'TSNAME'
          Width = 71
        end
        object cl_v2TASKCOMPLETE: TcxGridDBColumn
          Caption = #1043#1086#1090#1086#1074#1085#1086#1089#1090#1100' (%)'
          DataBinding.FieldName = 'TASKCOMPLETE'
          Width = 90
        end
        object cl_v2TASKUSER: TcxGridDBColumn
          DataBinding.FieldName = 'TASKUSER'
          Visible = False
        end
        object cl_v2FIO: TcxGridDBColumn
          Caption = #1055#1086#1089#1090#1072#1085#1086#1074#1097#1080#1082' '#1079#1072#1076#1072#1095#1080
          DataBinding.FieldName = 'FIO'
          Width = 92
        end
        object cl_v2TASKASSIGNEDTO: TcxGridDBColumn
          DataBinding.FieldName = 'TASKASSIGNEDTO'
          Visible = False
        end
        object cl_v2TASKSIZE: TcxGridDBColumn
          DataBinding.FieldName = 'TASKSIZE'
          Visible = False
        end
        object cl_v2TASKSIZEREAL: TcxGridDBColumn
          DataBinding.FieldName = 'TASKSIZEREAL'
          Visible = False
        end
        object cl_v2TASKFINISH: TcxGridDBColumn
          DataBinding.FieldName = 'TASKFINISH'
          Visible = False
          Width = 81
        end
        object cl_v2LASTTIME: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103' '#1079#1072#1076#1072#1095#1080
          DataBinding.FieldName = 'LASTTIME'
          Width = 85
        end
        object cl_v2TASKBEGIN: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1079#1072#1076#1072#1095#1080
          DataBinding.FieldName = 'TASKBEGIN'
          Width = 75
        end
        object cl_v2TASKEND: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1087#1083#1072#1085#1080#1088#1091#1077#1084#1086#1075#1086' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103' '#1079#1072#1076#1072#1095#1080
          DataBinding.FieldName = 'TASKEND'
          Width = 108
        end
        object cl_v2TASKBODY: TcxGridDBColumn
          DataBinding.FieldName = 'TASKBODY'
          Visible = False
        end
        object cl_v2LASTEDITTIME: TcxGridDBColumn
          DataBinding.FieldName = 'LASTEDITTIME'
          Visible = False
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object doc4: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 100
      Height = 28
      Align = dalTop
      BarManager = bar1
      Visible = False
    end
    object doc5: TdxBarDockControl
      Left = 279
      Top = 108
      Width = 663
      Height = 28
      Align = dalTop
      BarManager = bar1
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object grp_lc1Group1: TdxLayoutGroup
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 68
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object grp_lc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      Parent = grp_lc1Group4
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 2
    end
    object grp_lc1Group3: TdxLayoutGroup
      Parent = grp_lc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 258
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 0
    end
    object grp_lc1Group4: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lsi_1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grp_lc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1042#1099#1087#1086#1083#1085#1077#1085#1085#1099#1077' '#1088#1072#1073#1086#1090#1099
      CaptionOptions.Visible = False
      Parent = grp_lc1Group9
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_dt1: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072
      Parent = grp_lc1Group6
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_form: TdxLayoutItem
      CaptionOptions.Text = #1060#1086#1088#1084#1072
      Parent = grp_lc1Group6
      Control = txt_form
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_name: TdxLayoutItem
      CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090
      CaptionOptions.Layout = clTop
      Parent = grp_lc1Group6
      Control = m_name
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itm_lc1Item11: TdxLayoutItem
      CaptionOptions.Text = #1095#1077#1083'/'#1095#1072#1089
      Parent = grp_lc1Group6
      Control = spn_1
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object grp_lc1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp_lc1Group3
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Expanded = False
      Index = 1
    end
    object grp_lc1Group6: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp_lc1Group3
      ButtonOptions.Buttons = <
        item
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000373746468B8BDBF5111142F5000000460000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000003636
            4848B9B9F7F7DADAFFFF4D4DD2FF000037F70000004800000000000000000000
            000000000000000000000000000000000000000000000000000036364848BABA
            F7F7D1D1FFFF7D7DE8FF0C0CC7FF0000B9FF00003EF700000048000000000000
            0000000000000000000000000000000000000000000000000000BFBFFFFFCECE
            FFFF7E7EEAFF0000BDFF0000BFFF0000C6FF0000B8FF00003FFD000000440000
            0000000000000000000000000000000000000000000000000000686883837F7F
            E9FF0000BBFF0000BFFF0000C0FF0000C0FF0000C4FF0000B9FF00003AF50000
            0048000000000000000000000000000000000000000000000000000000005959
            7B7E3232D0FF0000BBFF0000C0FF0000C0FF0000C0FF0000C5FF0103BCFF2013
            35F9000000460000000000000000000000000000000000000000000000000000
            000060607E7E3232D0FF0000BCFF0000C0FF0000BFFF0000BCFF9CAAF7FFEFAA
            A0FF3D0000FB0000004400000000000000000000000000000000000000000000
            000000000000646481833838D0FF0000BAFF0000BCFF919BEDFFFFFAE8FFFF92
            93FFE75B5BFF3D0000F500000048000000000000000000000000000000000000
            000000000000000000005D5D7C7C3536D1FF9199EBFFFFF1ECFFFF8483FFFF7B
            7BFFFF8B8BFFE45E5EFF410505FF000000460000000000000000000000000000
            00000000000000000000000000006D6C8181FFD5CCFFFF8584FFFF7B7BFFFF80
            80FFFF8080FFFF8989FFE45E5EFF3B0202F70000004800000000000000000000
            000000000000000000000000000000000000815D5B81FF8E8EFFFF7C7CFFFF80
            80FFFF8080FFFF7F7FFFFF8A8AFFE75E5EFF3E0303F700000048000000000000
            000000000000000000000000000000000000000000007C5E5E7CFF9090FFFF7B
            7BFFFF8080FFFF8080FFFF8080FFFF8A8AFFE35E5EFF470C0CF9000000000000
            000000000000000000000000000000000000000000000000000083636383FF91
            91FFFF7B7BFFFF8080FFFF8080FFFF8080FFFF9090FFAD2525FD000000000000
            0000000000000000000000000000000000000000000000000000000000007E5F
            5F7EFF9191FFFF7B7BFFFF8282FFFF8A8AFFBF4040FF1C0303DB000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00007E5F5F7EFF9090FFFF8585FFC13F3FFF170000D50000001C000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000083676783BC5050F5140000D70000001C00000000}
          OnClick = grp_lc1Group6Button0Click
        end>
      ButtonOptions.ShowExpandButton = True
      Index = 0
    end
    object itm_lc1Item12: TdxLayoutItem
      CaptionOptions.Text = #1057#1090#1088#1091#1082#1090#1091#1088#1085#1086#1077' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' '
      CaptionOptions.Layout = clTop
      Parent = grp_lc1Group6
      Control = txt_unit
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object itm_lc1Item13: TdxLayoutItem
      CaptionOptions.Text = #1047#1072#1084#1077#1095#1072#1085#1080#1103
      CaptionOptions.Layout = clTop
      Parent = grp_lc1Group5
      Control = m_unitcomment
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_lc1Item14: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = grp_lc1Group6
      Control = doc1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object itm_lc1Item16: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grp_lc1Group5
      Control = doc2
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_lc1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1055#1077#1088#1080#1086#1076' '#1089' '
      Parent = grp_lc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Control = dt_1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_lc1Item17: TdxLayoutItem
      CaptionOptions.Text = ' '#1087#1086' '
      Parent = grp_lc1Group1
      Control = dt_2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_lc1Item18: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp_lc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 127
      Control = btn_exec
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_lc1Item19: TdxLayoutItem
      CaptionOptions.Text = #1050#1086#1076
      Parent = grp_lc1Group6
      Control = btn_txt_code
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_lc1Item15: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp_lc1Group1
      Control = btn_print
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_lc1Item110: TdxLayoutItem
      CaptionOptions.Text = #1050#1086#1076' '#1079#1072#1076#1072#1095#1080
      Parent = grp_lc1Group7
      Control = TASKCODE
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grp_lc1Group7: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp_lc1Group6
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object itm_lc1Item111: TdxLayoutItem
      CaptionOptions.Text = #1057#1090#1072#1090#1091#1089
      CaptionOptions.Layout = clTop
      Parent = grp_lc1Group7
      Control = TASKSTATUS
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_lc1Item112: TdxLayoutItem
      CaptionOptions.Text = #1043#1086#1090#1086#1074#1085#1086#1089#1090#1100' (%)'
      Parent = grp_lc1Group7
      Control = TASKCOMPLETE
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object grp_lc1Group8: TdxLayoutGroup
      CaptionOptions.Text = #1058#1077#1082#1091#1097#1080#1077' '#1079#1072#1076#1072#1095#1080
      Parent = grp_lc1Group2
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object itm_lc1Item113: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grp_lc1Group8
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_lc1Item114: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = grp_lc1Group8
      Control = doc4
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_lc1Item115: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = grp_lc1Group9
      Control = doc5
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grp_lc1Group9: TdxLayoutGroup
      CaptionOptions.Text = #1042#1099#1087#1086#1083#1085#1077#1085#1099#1077' '#1088#1072#1073#1086#1090#1099
      Parent = grp_lc1Group2
      ButtonOptions.Buttons = <>
      Index = 0
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 744
    Top = 40
    object lcf1: TdxLayoutCxLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetVert = 1
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = dt_1
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = dt_2
        Properties.Strings = (
          'EditValue')
      end>
    StorageName = 'prop1'
    Left = 704
    Top = 40
  end
  object ds_HISTORYAPP: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT h.ID, '
      '       h.DATA, '
      '       h.FORM, '
      '       h.NAME, '
      '       h.UNIT, '
      '       h.UNIT_COMENT, '
      '       h.RATE_HOUR, '
      '       h.LASTTIME, '
      '       h.TASKCODE, '
      '       h.TASKSTATUS, ts.name TsName,'
      '       h.TASKCOMPLETE'
      'FROM HISTORYAPP h'
      'left outer join task t on t.code = h.taskcode'
      'left outer join taskstatus ts on ts.code = h.taskstatus')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 504
    Top = 248
  end
  object src_HISTORYAPP: TDataSource
    DataSet = ds_HISTORYAPP
    Left = 536
    Top = 248
  end
  object bar1: TdxBarManager
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
    ImageOptions.Images = il_1
    LookAndFeel.NativeStyle = True
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 392
    Top = 312
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
      FloatLeft = 993
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_Add'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Del'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
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
      FloatLeft = 993
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_zamadd'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_zamdel'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
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
      DockControl = doc4
      DockedDockControl = doc4
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 993
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_Update'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object br_EditRec: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 4'
      CaptionButtons = <>
      DockControl = doc5
      DockedDockControl = doc5
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 993
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_EditRec'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_Add: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      OnClick = btn_AddClick
    end
    object btn_Del: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 2
      OnClick = btn_DelClick
    end
    object btn_zamadd: TdxBarButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      OnClick = btn_zamaddClick
    end
    object btn_zamdel: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 2
      OnClick = btn_zamdelClick
    end
    object btn_Update: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 3
      PaintStyle = psCaptionGlyph
      OnClick = btn_UpdateClick
    end
    object btn_EditRec: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
      Visible = ivAlways
      ImageIndex = 5
      PaintStyle = psCaptionGlyph
      OnClick = btn_EditRecClick
    end
  end
  object il_1: TcxImageList
    FormatVersion = 1
    DesignInfo = 15204784
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000000
          00000000000000000000000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F
          7F007F7F7F007F7F7F0000000000000000000080800000808000000000000000
          00000000000000000000000000007F7F7F00BFBFBF00BFBFBF00BFBFBF00BFBF
          BF00BFBFBF00BFBFBF0000000000000000000000000000808000000000000000
          00000000000000000000000000007F7F7F00BFBFBF000000000000000000BFBF
          BF00BFBFBF00BFBFBF0000000000000000000000000000808000000000000000
          00000000000000000000000000007F7F7F00BFBFBF000000000000000000BFBF
          BF00BFBFBF00BFBFBF0000000000000000000000000000808000000000000000
          00000000000000000000000000007F7F7F00BFBFBF00BFBFBF00BFBFBF00BFBF
          BF00BFBFBF00BFBFBF0000000000000000000000000000808000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000808000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000808000000000000000
          000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000000000000000000000808000000000000000
          000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000000000000000000000808000000000000000
          000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000000000000000000000808000000000000000
          000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000000000000000000000808000000000000000
          000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000000000000000000000808000000000000000
          000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00000000007F7F7F000000000000808000000000000000
          000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000000000000000000000808000008080000000
          0000000000000000FF000000FF000000FF000000FF000000FF000000FF000000
          FF000000FF000000FF0000000000000000000080800000808000}
        MaskColor = clOlive
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          200000000000000400000000000000000000000000000000000000808000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000808000FFFF
          FF000000000000000000000000000000000000000000FFFFFF00000000000000
          000000000000000000000000000000000000000000000000000000808000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000
          FF000000FF000000FF000000FF000000FF000000FF000000FF0000808000FFFF
          FF0000000000000000000000000000000000000000000000FF000000FF000000
          FF000000FF000000FF000000FF000000FF000000FF000000FF0000808000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000808000FFFF
          FF000000000000000000000000000000000000000000FFFFFF00000000000000
          000000000000FFFFFF000000000000000000000000000000000000808000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000808000FFFF
          FF000000000000000000000000000000000000000000FFFFFF00000000000000
          000000000000FFFFFF000000000000000000000000000000000000808000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000808000FFFF
          FF000000000000000000000000000000000000000000FFFFFF00000000000000
          000000000000FFFFFF000000000000000000000000000000000000808000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000808000FFFF
          FF000000000000000000000000000000000000000000FFFFFF00000000000000
          000000000000FFFFFF000000000000000000000000000000000000808000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00008080000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000808000FFFF
          FF0000000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
          0000FF000000FF000000FF00000000000000FFFFFF0000000000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000}
        MaskColor = clOlive
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000031B300004223C0001070C0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000001080F00095A9F000F8DF9000F90FF000F90FF000F90FF000C
          73CC00031E360000000000000000000000000000000000000000000000000000
          000000032039011089ED081D9FFF0522A9FF0A2FB7FF0B32B8FF082CB5FF0825
          A7FF051898FD0008487E00000000000000000000000000000000000000000001
          0A12010F87EB0A20A5FF010D9DFF525ABCFF0A16A0FF0936C5FF1F29A9FF1A26
          B4FF020C8FFF041698FF00042A4B000000000000000000000000000000000008
          4C8704179BFF0A2FB8FF7186D2FFFFFFFFFFCFD4EEFF2731ACFFE3E8F8FFDAE1
          F6FF2048C8FF051C9FFF000D7AD800000000000000000000000000000000000D
          7CDB0824ADFF0430BFFF3452C2FFF3F5FBFFFFFFFFFFFDFDFEFFFFFFFFFFCBD3
          F0FF143FC6FF0525ACFF000F90FF0002182A000000000000000000000203000F
          8EFC082BB7FF0938C7FF042FC0FF414AB6FFFCFDFEFFFFFFFFFFF9FAFDFF1620
          A5FF0834C2FF0724A6FF000F90FF00052F54000000000000000000000000000E
          8BF6092AB4FF0639CDFF1F29A9FFE1E3F6FFFFFFFFFFF9FAFEFFFFFFFFFFC1C4
          EBFF0A16A0FF0521A5FF000F90FF00042A4B000000000000000000000000000B
          6EC30921A5FF0F44D4FF5679DCFFFDFDFEFFD2D9F3FF4E69CFFFEBEEF9FFFAFB
          FEFF4668D4FF0925AAFF000F90FF0002111E0000000000000000000000000006
          3A66021294FF2045C5FF154CD8FF4C72DDFF0F42D0FF0035CBFF254DCBFF5071
          D6FF1740C4FF0D23A4FF000B67B7000000000000000000000000000000000000
          0306000C72C9051698FF2B4BC5FF2657D9FF174ED8FF134BD5FF1D4FD3FF2E56
          CCFF162CAAFF01108EF70002182A000000000000000000000000000000000000
          000000020F1B000C72C9021294FF1428A6FF2844BBFF2D4BC0FF223BB4FF091B
          9CFF010F88EE0004274500000000000000000000000000000000000000000000
          0000000000000000030600063D6C000C73CC000F90FF000F90FF000E82E70008
          519000010E180000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FCFDFC00FCFD
          FC00FCFDFC00FCFDFC00FCFDFC00FCFDFC00FCFDFC00FCFDFC00FCFDFC00FCFD
          FC00FCFDFC00FCFDFC00FCFDFC00FCFDFC00FCFDFC00FCFDFC00FCFDFC00E4ED
          E100F5EBEB00FFFFFF00F7EEEE009B554B00710F0000710F0000710F0000710F
          00009B554B00F0E1E100F8F2F200FFFFFF00FFFFFF00FFFFFF00E3F1E300166A
          00008C554100E1C3C3009A675700215F00000080000000800000008000000080
          0000215F0000621E0000A97A6C00F5EBEB00FFFFFF00FFFFFF00E3F1E3000080
          00001C640000532D0000255B00000080000000A3000000AD000000AD000000AD
          0000009E0000008000002E520000A87D6E00F5EBEB00FFFFFF00E3F1E3000080
          000000800000008000000080000000A800005DF05D0078FF780078FF780078FF
          780050E9500000A00000008000002D530000A7766900F8F2F200E3F1E3000080
          000000800000008000000080000064D56400E8FFE800FFFFFF00FFFFFF00FFFF
          FF00DCFFDC0053E8530000A0000000800000641C0000F1E3E300E3F1E3000080
          000000800000008000000080000032993200D7EBD700FFFFFF00FFFFFF00FFFF
          FF00FFFFFF008EFF8E00328600005A26000078080000F1E3E300E3FDE30000E9
          000000E9000000E9000000E9000000E9000023FA2300E8FFE800FFFFFF00FFFF
          FF00FFFFFF00EBFFEB00DFE6D200E9D2D200E9D2D200FDFAFA00FDFFFD00F0FF
          F000F0FFF000F0FFF000F0FFF000F0FFF000F0FFF000FDFFFD00FFFFFF00FFFF
          FF00FDFAFA00F8F0F000F8F0F000F8F0F000F8F0F000F8F0F000FAFFFA00D7F5
          D200E9D2D200E9D2D200F5EBEB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F5FF
          F500AFB28C00691700006917000069170000691700007D030000E3FFE30014CF
          00005A2600006B150000C78E8E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D7FF
          D70032E1320000950000008000000080000000800000720E0000EEFFEE0052EE
          520000A30000215F0000926B5300EEDCDC00FFFFFF00FFFFFF00FFFFFF00F3E8
          E800999664001D8C0000008000000080000000800000720E0000FFFFFF00C6FF
          C60000D5000000800000215F000091675000BC787800BC787800BC7878009F6C
          5D003C440000215F0000008000000080000000800000720E0000FFFFFF00EBFF
          EB006EF06E0000AE0000008000001E6200002D5300002D5300002D530000235D
          0000008000000080000000AE000000D2000000920000720E0000FFFFFF00FFFF
          FF00EBFFEB006CF26C0000E1000000A000000080000000800000008000000080
          000000A0000000E100006CF26C00C3FFC3002BE82B00C8C6AD00FFFFFF00FFFF
          FF00FFFFFF00F2FFF200E1FFE1004BF54B0000F0000000F0000000F0000000F0
          00004BF54B00E1FFE100F2FFF200FFFFFF00E8FFE800FCFFFC00}
        MaskColor = 16580092
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000001190A30011F0C3C0006020C0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000008030F0252209F048132F9048433FF048433FF048433FF036A
          29CC011C0B360000000000000000000000000000000000000000000000000000
          0000011E0B39047B2FEB0C9940FF19A64DFF1BA44DFF19A24BFF1AA24BFF0E9A
          40FF048533FC023E187800000000000000000000000000000000000000000009
          0412047B30EB10A44AFF14AC56FF09A348FF058A37FF058A37FF07983BFF119C
          43FF129F45FF048834FF01270F4B000000000000000000000000000000000246
          1B870A9B41FF0EB760FF06AE53FF11AC53FFE4F5EBFFC7EAD5FF03993AFF0397
          39FF0B993EFF0B9B3EFF03702BD8000000000000000000000000000000000371
          2CDB0BB459FF09BD66FF058A37FF129042FFE4F5EBFFBDE2CBFF058A37FF058A
          37FF05973AFF089B3DFF048433FF0116082A0000000000000000000201030482
          32FC0AC168FF03C166FFDAF2E5FFE4F5EBFFE4F5EBFFE4F5EBFFE4F5EBFFA1DB
          B8FF019838FF069A3CFF048433FF012B1154000000000000000000000000047F
          31F60AC56BFF05C76EFFB7EAD1FFCFEEDEFFE4F5EBFFE4F5EBFFCEEEDDFF87D5
          A8FF029F40FF069D40FF048433FF01270F4B0000000000000000000000000365
          27C310BF6AFF0BD385FF08CF7FFF0DC873FFE4F5EBFFD8F2E4FF00B857FF03B9
          5CFF06B356FF0CA94CFF048433FF0010061E0000000000000000000000000235
          146610A14BFF1AD995FF08D488FF18D48CFFE4F5EBFFBFEDD7FF09C673FF05C0
          68FF11C06CFF14A64EFF035F25B7000000000000000000000000000000000003
          0106036C2ACC23B565FF27DB98FF0ED68DFF05D485FF04D07FFF0BCD7EFF1FCD
          83FF27B767FF058533F70116082A000000000000000000000000000000000000
          0000000E051B036C2ACC1BA552FF37CA84FF37D794FF35D592FF37CA84FF1FA9
          56FF058032EF01240E4500000000000000000000000000000000000000000000
          000000000000000301060238166C036A29CC048433FF048433FF04782EE7024B
          1D90000C05180000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000000000000000000000000000000000000D0D0D1C2424
          245225252554252525542525255425252554242424530B0B0B16000000000000
          00000000000000000000000000000000000000000000000000002626264FEAEA
          EAFFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE1E1E1FF8A8A8AD61010101A0000
          000000000000000000000000000000000000000000000000000026262650E7E7
          E7FFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFC6C6C6FB929292D61313
          131D00000000000000000000000000000000000000000000000026262651F1F1
          F1FFC3C3C3FFE3E3E3FFEBEBEBFFEBEBEBFFEBEBEBFFDADADAFCBFBFBFFBAFAF
          AFD916161621000000000000000000000000000000000000000026262652FBFB
          FBFFB6B8BCFF9FB1CDFFBFCFE7FFF1F3F6FFF8F8F8FFE2E2E2F9C8C8C8FCECEC
          ECFFBDBDBDDB191919250000000000000000000000000000000026262652FFFF
          FFFFF7F9FCFFB9CBE7FFA1BDE5FF82B9DEFFD5F4F9FFF1F1F1FCBFBFBFFDC2C2
          C2FBBBBBBBFD9F9F9FDC1C1C1C2D00000000000000000000000026262652FFFF
          FFFFFFFFFFFFCDDDEEFF8DC8E9FF0CC0E5FF1BB6DAFFD5F4F9FFFFFFFFFFFBFB
          FCFFE6E6E6FFB8B8B8FC8A8A8AE91616162D000000000000000026262652FFFF
          FFFFFFFFFFFFFAFCFEFF79DEF1FF3DD5F1FF01C0E5FF1BB6DAFFD5F4F9FFFFFF
          FFFFFEFEFEFFF0F0F1FFC4C4C5FF28282850000000000000000026262652FFFF
          FFFFFFFFFFFFFFFFFFFFFCFEFFFF79DEF1FF3DD5F1FF01BFE4FF1BB3D8FFD5F4
          F9FFFFFFFFFFFEFEFEFFF0F0F0FF2828284F000000000000000026262652FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEFFFF79DEF1FF41D7F1FF01BFE4FF1AAD
          D5FFD5F4F9FFFFFFFFFFFEFEFEFF2929294E000000000000000026262652FFFF
          FFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFBFEFEFF7CDFF1FF49DFF4FF01C2
          E5FF1DA9D2FFEBF6F9FFFFFFFFFF2A2A2A4E000000000000000026262652FAFA
          FAFFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF4F7F7FF7EDDEEFF54E3
          F5FF67C0D6FFC3C5C6FFF1F1F1FF2B2B2B4F000000000000000026262652F3F3
          F3FFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEAECEDFF94CA
          D8FFE0E2E2FFCFCECDFFBDBDBDFF2F2F2F51000000000000000026262652ECEC
          ECFFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE2E2
          E1FFD1D1D1FFE3E3E2FFAEAECAFF3333A6CC050511170000000028282855F0F0
          F0FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
          E8FFE7E7E7FFC6C6D8FF6F6FDFFF4A4AD9F40E0E2D37000000000D0D0D1C3131
          3155313131553131315531313155313131553131315531313155313131553131
          3155313131552F2F32553F3F7D90171742490000000000000000}
      end>
  end
  object fr: TfrxReport
    Version = '4.15.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40990.808013240700000000
    ReportOptions.LastChange = 41198.966495416670000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 512
    Top = 336
    Datasets = <
      item
        DataSet = frdb
        DataSetName = 'HISTORYAPP'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 86.929190000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Rich1: TfrxRichView
          Align = baClient
          Width = 1046.929810000000000000
          Height = 86.929190000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C66726F6D616E5C66707271325C66636861727365743230347B5C2A5C666E
            616D652054696D6573204E657720526F6D616E3B7D54696D6573204E65772052
            6F6D616E204359523B7D7B5C66315C66726F6D616E5C66707271325C66636861
            72736574302054696D6573204E657720526F6D616E3B7D7B5C66325C666E696C
            5C6663686172736574323034205461686F6D613B7D7D0D0A7B5C2A5C67656E65
            7261746F7220526963686564323020362E332E393630307D5C766965776B696E
            64345C756331200D0A5C706172645C71725C625C66305C667332305C27656120
            5C2765345C2765655C2765335C2765655C2765325C2765655C2766305C276633
            205C2765645C276530205C2765385C2765645C2766345C2765655C2766305C27
            65635C2765305C2766365C2765385C2765655C2765645C2765645C2765652D5C
            2766315C2765665C2766305C2765305C2765325C2765655C2766375C2765645C
            2765655C276535205C2765655C2765315C2766315C2765625C2766335C276536
            5C2765385C2765325C2765305C2765645C2765385C276535205C276239312F31
            325C7061720D0A0D0A5C706172645C62305C667332345C7061720D0A0D0A5C70
            6172645C71635C625C667332385C2763655C2766325C2766375C2765355C2766
            32205C2765385C2766315C2765665C2765655C2765625C2765645C2765385C27
            66325C2765355C2765625C2766665C7061720D0A5C62305C2763665C2765355C
            2766305C2765385C2765655C2765343A205C756C5C66315C6C616E6731303333
            205B76617244315D5C756C6E6F6E6520205C66305C6C616E6731303439202D20
            5C756C5C66315C6C616E6731303333205B76617244325D5C756C6E6F6E655C66
            305C6C616E67313034395C7061720D0A0D0A5C706172645C66325C667331365C
            7061720D0A7D0D0A00}
        end
      end
      object Header1: TfrxHeader
        Height = 60.472480000000000000
        Top = 166.299320000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Align = baLeft
          Width = 34.015770000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Color = 15790320
          DataSet = frdb
          DataSetName = 'HISTORYAPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470)
          ParentFont = False
          VAlign = vaCenter
        end
        object HISTORYAPPDATA: TfrxMemoView
          Align = baLeft
          Left = 34.015770000000010000
          Width = 71.811070000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Color = 15790320
          DataSet = frdb
          DataSetName = 'HISTORYAPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object HISTORYAPPFORM: TfrxMemoView
          Align = baLeft
          Left = 680.315400000000100000
          Width = 226.771800000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Color = 15790320
          DataSet = frdb
          DataSetName = 'HISTORYAPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1047#1072#1084#1077#1095#1072#1085#1080#1103' '#1088#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1103' '#1089#1090#1088#1091#1082#1090#1091#1088#1085#1086#1075#1086' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103' '#1047#1072#1082#1072#1079#1095#1080#1082#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object HISTORYAPPNAME: TfrxMemoView
          Align = baLeft
          Left = 151.181200000000000000
          Width = 343.937230000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Color = 15790320
          DataSet = frdb
          DataSetName = 'HISTORYAPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object HISTORYAPPRATE_HOUR: TfrxMemoView
          Align = baLeft
          Left = 495.118430000000000000
          Width = 83.149660000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Color = 15790320
          DataSet = frdb
          DataSetName = 'HISTORYAPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1047#1072#1090#1088#1072#1090#1099' '#1074#1088#1077#1084#1077#1085#1080', '#1095#1077#1083'/'#1095#1072#1089'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object HISTORYAPPUNIT: TfrxMemoView
          Align = baLeft
          Left = 578.268090000000000000
          Width = 102.047310000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Color = 15790320
          DataSet = frdb
          DataSetName = 'HISTORYAPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090#1088#1091#1082#1090#1091#1088#1085#1086#1077' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' '
            #1054#1054#1054' '#171#1044#1045#1047#187)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          Left = 907.087200000000000000
          Width = 139.842610000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1086#1076#1087#1080#1089#1100' '#1088#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          Left = 105.826840000000000000
          Width = 45.354360000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Color = 15790320
          DataSet = frdb
          DataSetName = 'HISTORYAPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1076' '#1079#1072#1103#1074#1082#1080)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 19.275590550000000000
        Top = 249.448980000000000000
        Width = 1046.929810000000000000
        DataSet = frdb
        DataSetName = 'HISTORYAPP'
        RowCount = 0
        Stretched = True
        object HISTORYAPPID: TfrxMemoView
          Align = baLeft
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'ID'
          DataSet = frdb
          DataSetName = 'HISTORYAPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[HISTORYAPP."ID"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baLeft
          Left = 34.015770000000010000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'DATA'
          DataSet = frdb
          DataSetName = 'HISTORYAPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[HISTORYAPP."DATA"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          Left = 680.315400000000100000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frdb
          DataSetName = 'HISTORYAPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[HISTORYAPP."UNIT_COMENT"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Left = 495.118430000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'RATE_HOUR'
          DataSet = frdb
          DataSetName = 'HISTORYAPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[HISTORYAPP."RATE_HOUR"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baLeft
          Left = 578.268090000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'UNIT'
          DataSet = frdb
          DataSetName = 'HISTORYAPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[HISTORYAPP."UNIT"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baLeft
          Left = 907.087200000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Rich3: TfrxRichView
          Align = baLeft
          Left = 151.181200000000000000
          Width = 343.937230000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frdb
          DataSetName = 'HISTORYAPP'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C666E696C5C66636861727365743230347B5C2A5C666E616D652054696D65
            73204E657720526F6D616E3B7D54696D6573204E657720526F6D616E20435952
            3B7D7D0D0A7B5C2A5C67656E657261746F7220526963686564323020362E332E
            393630307D5C766965776B696E64345C756331200D0A5C706172645C625C6630
            5C66733136205B484953544F52594150502E22464F524D225D5C7061720D0A20
            2020205B484953544F52594150502E224E414D45225D5C7061720D0A7D0D0A00}
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 105.826840000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'TASKCODE'
          DataSet = frdb
          DataSetName = 'HISTORYAPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[HISTORYAPP."TASKCODE"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 257.008040000000000000
        Top = 328.819110000000000000
        Width = 1046.929810000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 495.118430000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[SUM(<HISTORYAPP."RATE_HOUR">,MasterData1)]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 400.630180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1048#1090#1086#1075#1086':')
          ParentFont = False
        end
        object Rich2: TfrxRichView
          Align = baWidth
          Top = 49.133890000000010000
          Width = 1046.929810000000000000
          Height = 204.094620000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C66726F6D616E5C66707271325C66636861727365743230347B5C2A5C666E
            616D652054696D6573204E657720526F6D616E3B7D54696D6573204E65772052
            6F6D616E204359523B7D7B5C66315C666E696C5C666368617273657432303420
            5461686F6D613B7D7D0D0A7B5C2A5C67656E657261746F722052696368656432
            3020362E332E393630307D5C766965776B696E64345C756331200D0A5C706172
            645C625C66305C667332345C2763665C2766305C2765655C2766375C2765385C
            276535205C2765375C2765305C2765635C2765355C2766375C2765305C276564
            5C2765385C2766663A5C623020205F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5C7061720D0A5C
            2763655C2766325C2766375C2765355C276632205C2765635C2765655C276536
            5C2765355C276632205C2765665C2765655C2765345C2765665C2765385C2766
            315C2766625C2765325C2765305C2766325C2766635C2766315C276666205C27
            65355C2765365C2765355C2765645C2765355C2765345C2765355C2765625C27
            66635C2765645C2765652E205C2763665C2765655C2765345C2765665C276538
            5C2766315C2765305C2765645C2765645C2766625C276539205C2765655C2766
            325C2766375C2765355C276632205C2766315C2765345C2765305C2765355C27
            66325C2766315C276666205C2763385C2766315C2765665C2765655C2765625C
            2765645C2765385C2766325C2765355C2765625C2765355C276563205C276532
            205C2765665C2766305C2765385C2765355C2765635C2765645C2766335C2766
            65205C2763375C2765305C2765615C2765305C2765375C2766375C2765385C27
            65615C276530205C276538205C2766305C2765355C2765335C2765385C276631
            5C2766325C2766305C2765385C2766305C2766335C2765355C2766325C276631
            5C276666205C2763375C2765305C2765615C2765305C2765375C2766375C2765
            385C2765615C2765655C2765632E5C7061720D0A5C2763655C2766325C276637
            5C2765355C276632205C2766305C2765305C2766315C2766315C2765635C2765
            305C2766325C2766305C2765385C2765325C2765305C2765355C2766325C2766
            315C276666205C276538205C2765665C2765655C2765345C2765665C2765385C
            2766315C2766625C2765325C2765305C2765355C2766325C2766315C27666620
            5C2763375C2765305C2765615C2765305C2765375C2766375C2765385C276561
            5C2765655C276563205C276532205C2766325C2765355C2766375C2765355C27
            65645C2765385C2765352035205C2766305C2765305C2765315C2765655C2766
            375C2765385C276635205C2765345C2765645C2765355C2765392E5C2763345C
            2765305C2765645C2765645C2765305C276666205C2766345C2765655C276630
            5C2765635C276530205C276538205C2765665C2765655C2766305C2766665C27
            65345C2765655C276561205C2765655C2766325C2766375C2765355C2766325C
            2765645C2765655C2766315C2766325C276538205C2765345C2765355C276539
            5C2766315C2766325C2765325C2766335C2765355C276632205C276631203230
            2E30322E32303132205C2765332E5C7061720D0A5C7061720D0A5C625C276338
            5C2766315C2765665C2765655C2765625C2765645C2765385C2766325C276535
            5C2765625C2766635C7461622020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020205C2763375C2765305C2765
            615C2765305C2765375C2766375C2765385C2765615C7061720D0A5C62302020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020205C2763655C2763655C276365205C2761625C2763345C
            2763355C276337205C2763615C2765305C2765625C2765385C2765645C276538
            5C2765645C2766315C2765615C2765655C2765335C276565205C2766305C2765
            305C2765395C2765655C2765645C2765305C2762625C7061720D0A5C2764385C
            2765355C2765325C2766665C2765615C2765655C276532205C2763322E5C2763
            322E202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020205C2764315C2765635C2765
            385C2766305C2765645C2765655C276532205C2763612E5C2763382E5C706172
            0D0A5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F2F5F5F5F5F5F5F5F2F
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020205F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F2F5F5F5F5F5F5F5F2F5C7061720D0A5C66315C667331365C7061
            720D0A7D0D0A00}
        end
      end
    end
  end
  object frdb: TfrxDBDataset
    UserName = 'HISTORYAPP'
    CloseDataSource = False
    DataSet = ds_HISTORYAPP
    BCDToCurrency = False
    Left = 544
    Top = 336
  end
  object rtf_1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = True
    DataOnly = False
    PictureType = gpPNG
    OpenAfterExport = True
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 592
    Top = 336
  end
  object ds_TASKEDIT: TpFIBDataSet
    SelectSQL.Strings = (
      
        'select CODE, TASKPRIORITY, TASKSTATUS, TASKCOMPLETE, TASKUSER, T' +
        'ASKASSIGNEDTO, TASKSIZE, TASKSIZEREAL, TASKFINISH,'
      
        '       LASTTIME, TASKBEGIN, TASKHEAD, TASKBODY, LASTEDITTIME, TA' +
        'SKEND'
      'from TASK')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 384
    Top = 480
  end
  object ds_TASKSTATUS: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME'
      'from TASKSTATUS')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 384
    Top = 512
  end
  object src_TASKSTATUS: TDataSource
    DataSet = ds_TASKSTATUS
    Left = 413
    Top = 512
  end
  object src_TASK: TDataSource
    DataSet = ds_TASK
    Left = 413
    Top = 544
  end
  object ds_TASK: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT t.CODE, '
      '       case'
      '         when t.TASKPRIORITY=0 then '#39#1053#1080#1079#1082#1080#1081#39
      '         when t.TASKPRIORITY=1 then '#39#1053#1086#1088#1084#1072#1083#1100#1085#1099#1081#39
      '         when t.TASKPRIORITY=2 then '#39#1042#1099#1089#1086#1082#1080#1081#39
      '         else '#39#1086#1096#1080#1073#1082#1072' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1080#1103'!!'#39
      '       end PRIORITY,'
      '       t.TASKPRIORITY, '
      '       t.TASKSTATUS,ts.name tsName, '
      '       t.TASKCOMPLETE, '
      '       t.TASKUSER, (p.f||'#39' '#39'||p.i||'#39' '#39'||p.o) fio,'
      '       t.TASKASSIGNEDTO, '
      '       t.TASKSIZE, '
      '       t.TASKSIZEREAL, '
      '       t.TASKFINISH, '
      '       t.LASTTIME, '
      '       t.TASKBEGIN,'
      '       t.TASKEND,'
      '       t.TASKHEAD, '
      '       t.TASKBODY, '
      '       t.LASTEDITTIME'
      'FROM TASK t'
      'left outer join worker w on w.code=t.taskuser'
      'left outer join piple p on p.code=w.piple'
      'left outer join taskstatus ts on ts.code=t.taskstatus')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 384
    Top = 544
  end
  object gpop_1: TcxGridPopupMenu
    Grid = grd2
    PopupMenus = <
      item
        GridView = v2
        HitTypes = [gvhtCell, gvhtRecord]
        Index = 0
        PopupMenu = pm_1
      end>
    AlwaysFireOnPopup = True
    Left = 696
    Top = 240
  end
  object pm_1: TPopupMenu
    Left = 696
    Top = 288
    object N1: TMenuItem
      Caption = #1047#1072#1074#1077#1088#1096#1080#1090#1100' '#1079#1072#1076#1072#1095#1091
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1079#1072#1076#1072#1095#1091
      OnClick = N2Click
    end
  end
end
