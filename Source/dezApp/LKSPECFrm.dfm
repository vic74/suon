object LKSPECForm: TLKSPECForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103' '#1075#1088#1072#1092#1080#1082#1072' '#1091#1073#1086#1088#1082#1080' '#1083#1077#1089#1090#1085#1080#1095#1085#1099#1093' '#1082#1083#1077#1090#1086#1082
  ClientHeight = 672
  ClientWidth = 832
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
    Top = 29
    Width = 832
    Height = 643
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    ExplicitTop = 0
    ExplicitHeight = 672
    object dt1: TcxDateEdit
      Left = 433
      Top = 512
      Style.HotTrack = False
      TabOrder = 3
      Width = 178
    end
    object doc1: TdxBarDockControl
      Left = 434
      Top = 585
      Width = 373
      Height = 29
      Align = dalTop
      BarManager = brm1
    end
    object grd1: TcxGrid
      Left = 21
      Top = 42
      Width = 786
      Height = 230
      TabOrder = 0
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        DataController.DataSource = src_LKSPEC
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          Width = 41
        end
        object clv1LKHEAD: TcxGridDBColumn
          DataBinding.FieldName = 'LKHEAD'
          Visible = False
          Width = 41
        end
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          Width = 36
        end
        object clv1SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Width = 203
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 48
        end
        object clv1LKTYPE: TcxGridDBColumn
          DataBinding.FieldName = 'LKTYPE'
          Visible = False
          Width = 29
        end
        object clv1LTNAME: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1091#1073#1086#1088#1082#1080
          DataBinding.FieldName = 'LTNAME'
          Width = 219
        end
        object clv1DATA: TcxGridDBColumn
          Caption = #1076#1072#1090#1072
          DataBinding.FieldName = 'DATA'
          Width = 80
        end
        object clv1ENTRANCE: TcxGridDBColumn
          Caption = #1084#1077#1089#1090#1086' '#1091#1073#1086#1088#1082#1080
          DataBinding.FieldName = 'ENTRANCE'
          Width = 110
        end
        object cl_v1lk1data: TcxGridDBColumn
          Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1072#1103' '#1076#1072#1090#1072
          DataBinding.FieldName = 'lk1data'
          Width = 111
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 21
      Top = 322
      Width = 374
      Height = 317
      TabOrder = 1
      object v2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_SRVDOGHOUSE
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object clv2FLAG: TcxGridDBColumn
          DataBinding.FieldName = 'FLAG'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderGlyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF0080000000FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
            0000FF00FF00800000008000000080000000FF00FF0000000000FF00FF00FF00
            FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
            0000FF00FF00FF00FF0080000000FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF0080000000FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00800000008000000080000000FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF0080000000FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Width = 25
          IsCaptionAssigned = True
        end
        object clv2SRVDOG: TcxGridDBColumn
          DataBinding.FieldName = 'SRVDOG'
          Visible = False
        end
        object clv2HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
        end
        object clv2SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Options.Editing = False
          Width = 252
        end
        object clv2NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Options.Editing = False
          Width = 48
        end
        object cl_v2FLOOR_CNT: TcxGridDBColumn
          Caption = #1082#1086#1083'-'#1074#1086' '#1101#1090#1072#1078#1077#1081
          DataBinding.FieldName = 'FLOOR_CNT'
          Width = 52
        end
        object cl_v2ENTRANCE_CNT: TcxGridDBColumn
          Caption = #1082#1086#1083'-'#1074#1086' '#1087#1086#1076#1098#1077#1079#1076#1086#1074
          DataBinding.FieldName = 'ENTRANCE_CNT'
          Width = 62
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object txt_entr: TcxButtonEdit
      Left = 433
      Top = 557
      Properties.Buttons = <
        item
          Caption = #1054#1095#1080#1089#1090#1080#1090#1100
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
          Hint = #1054#1095#1080#1089#1090#1080#1090#1100
          Kind = bkGlyph
        end>
      Properties.LookupItemsSorted = True
      Properties.OnButtonClick = txt_entrPropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 4
      Width = 375
    end
    object grd3: TcxGrid
      Left = 434
      Top = 340
      Width = 373
      Height = 147
      TabOrder = 2
      object v3: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_LKTYPE
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object clv3FLAG: TcxGridDBColumn
          DataBinding.FieldName = 'FLAG'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderGlyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF0080000000FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
            0000FF00FF00800000008000000080000000FF00FF0000000000FF00FF00FF00
            FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
            0000FF00FF00FF00FF0080000000FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF0080000000FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00800000008000000080000000FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF0080000000FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Width = 25
          IsCaptionAssigned = True
        end
        object clv3CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
        end
        object clv3SNAME: TcxGridDBColumn
          DataBinding.FieldName = 'SNAME'
          Options.Editing = False
          Width = 36
          IsCaptionAssigned = True
        end
        object clv3NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'NAME'
          Options.Editing = False
          Width = 314
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
    object grlc1Group1: TdxLayoutGroup
      CaptionOptions.Text = #1044#1086#1084#1072' '#1074' '#1075#1088#1072#1092#1080#1082#1077
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 262
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grlc1Group1
      Control = grd1
      Index = 0
    end
    object spl1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object grlc1Group4: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object grlc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1044#1086#1084#1072' '#1087#1086' '#1076#1086#1075#1086#1074#1086#1088#1091
      Parent = grlc1Group4
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      ButtonOptions.Buttons = <
        item
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF0080000000FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
            0000FF00FF00800000008000000080000000FF00FF0000000000FF00FF00FF00
            FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
            0000FF00FF00FF00FF0080000000FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF0080000000FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00800000008000000080000000FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF0080000000FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Height = 16
          Hint = #1054#1090#1084#1077#1090#1080#1090#1100' '#1074#1089#1077
          Width = 32
          OnClick = grlc1Group2Button0Click
        end
        item
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Hint = #1057#1085#1103#1090#1100' '#1086#1090#1084#1077#1090#1082#1080
          Width = 32
          OnClick = grlc1Group2Button1Click
        end>
      Index = 0
    end
    object itm_grd2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grlc1Group2
      Control = grd2
      Index = 0
    end
    object spl2: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grlc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object grlc1Group3: TdxLayoutGroup
      CaptionOptions.Text = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
      Parent = grlc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 399
      ButtonOptions.Buttons = <
        item
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF0080000000FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
            0000FF00FF00800000008000000080000000FF00FF0000000000FF00FF00FF00
            FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
            0000FF00FF00FF00FF0080000000FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF0080000000FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00800000008000000080000000FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF0080000000FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Hint = #1054#1090#1084#1077#1090#1080#1090#1100' '#1074#1089#1077
          Width = 32
          OnClick = grlc1Group3Button0Click
        end
        item
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Hint = #1057#1085#1103#1090#1100' '#1086#1090#1084#1077#1090#1082#1080
          Width = 32
          OnClick = grlc1Group3Button1Click
        end>
      Index = 2
    end
    object itm_grd3: TdxLayoutItem
      CaptionOptions.Text = #1058#1080#1087' '#1091#1073#1086#1088#1082#1080
      CaptionOptions.Layout = clTop
      Parent = grlc1Group3
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 167
      Control = grd3
      Index = 0
    end
    object itm_data: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1044#1072#1090#1072
      CaptionOptions.Layout = clTop
      Parent = grlc1Group3
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 178
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmlc1Item11: TdxLayoutItem
      CaptionOptions.Text = #1052#1077#1089#1090#1086' '#1091#1073#1086#1088#1082#1080
      CaptionOptions.Layout = clTop
      Parent = grlc1Group3
      Control = txt_entr
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itmlc1Item1: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grlc1Group3
      Control = doc1
      ControlOptions.AutoColor = True
      Index = 3
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 688
    Top = 144
    object lcl1: TdxLayoutCxLookAndFeel
      LookAndFeel.NativeStyle = False
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 660
    Top = 144
  end
  object brm1: TdxBarManager
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
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 720
    Top = 144
    DockControlHeights = (
      0
      0
      29
      0)
    object bar1: TdxBar
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
      FloatLeft = 966
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_add'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Edit'
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
    object bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 966
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_GPrint'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_HPrint'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_add: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1075#1088#1072#1092#1080#1082
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1075#1088#1072#1092#1080#1082
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = btn_addClick
    end
    object btn_Edit: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 1
      PaintStyle = psCaptionGlyph
      OnClick = btn_EditClick
    end
    object btn_Del: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 2
      PaintStyle = psCaptionGlyph
      OnClick = btn_DelClick
    end
    object btn_GPrint: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1075#1088#1072#1092#1080#1082#1072
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1075#1088#1072#1092#1080#1082#1072
      Visible = ivAlways
      ImageIndex = 3
      PaintStyle = psCaptionGlyph
      OnClick = btn_GPrintClick
    end
    object btn_HPrint: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1075#1088#1072#1092#1080#1082#1072' '#1087#1086' '#1076#1086#1084#1091
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1075#1088#1072#1092#1080#1082#1072' '#1087#1086' '#1076#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 11
      PaintStyle = psCaptionGlyph
      OnClick = btn_HPrintClick
    end
  end
  object ds_SRVDOGHOUSE: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT 0 FLAG,'
      '       sh.SRVDOG, '
      '       sh.HOUSE,'
      '       h.nomer,'
      '       s.name SNAME,'
      '       h.floor_cnt, h.entrance_cnt'
      'FROM SRVDOGHOUSE sh'
      'left outer join house h on h.code=sh.house'
      'left outer join street s on s.code=h.street'
      'where sh.SRVDOG = :SRVDOG'
      'order by s.name,h.nomer')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 296
    Top = 416
    dcForceOpen = True
  end
  object src_SRVDOGHOUSE: TDataSource
    DataSet = m_dog
    Left = 328
    Top = 416
  end
  object m_dog: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 328
    Top = 464
  end
  object fr: TfrxReport
    Version = '4.13.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40913.006012303200000000
    ReportOptions.LastChange = 41576.666660532420000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      '                                            '
      'procedure FormatMemo(Sender: TfrxComponent);'
      'var'
      '  i, cnt,D :integer;'
      '  Y, M :Variant;      '
      '  s, s1 : string;'
      '  fld: string;                                  '
      'begin'
      ' Y:=Report.Variables['#39'varY'#39'];'
      ' M:=Report.Variables['#39'varMCod'#39'];'
      ' cnt:=DaysInMonth(Y,M);'
      
        ' d:=StrToInt(Copy(TfrxMemoView(Sender).DataField,2,Length(TfrxMe' +
        'moView(Sender).DataField)-1));'
      ' if d>cnt then begin'
      '   TfrxMemoView(Sender).Visible:=false;'
      '   Exit;               '
      ' end;             '
      
        ' //s1:=Copy(TfrxMemoView(Sender).DataField,2,Length(TfrxMemoView' +
        '(Sender).DataField)-1);                 '
      ' //s:=fld;'
      ' s:=TfrxMemoView(Sender).Text;'
      ' fld:= s;                    '
      ' if Length(s)<1 then begin'
      '  TfrxMemoView(Sender).Color:=clNone;   '
      '  Exit;'
      ' end;            '
      ' i :=Pos('#39#1042#1055#39',s);               '
      ' if i>0 then begin                                   '
      '   TfrxMemoView(Sender).Color:=$00FFBA75;'
      '   Delete(s,i,2);'
      '   // ShowMessage(s);                  '
      '   TfrxMemoView(Sender).Text :=s;                      '
      ' end else begin'
      '   //Report.Variables['#39'VP'#39']:=VarToStr(fld);'
      '   TfrxMemoView(Sender).Color:=clNone;      '
      ' end;'
      ' //ShowMessage(IntToStr(d));'
      '                     '
      'end;          '
      ''
      'procedure IsSunDay (Sender: TfrxComponent);'
      'var'
      '  Y, M, D :Variant;'
      '  i :integer;                                             '
      'begin'
      '  Y:=Report.Variables['#39'varY'#39'];'
      '  M:=Report.Variables['#39'varMCod'#39'];'
      '  D:=TfrxMemoView(Sender).Text;'
      
        '  //ShowMessage(VarToStr(Y)+'#39' '#39'+VarToStr(M));                   ' +
        '             '
      '  i :=DaysInMonth(Y,M);'
      
        '  if D<=i then begin                                            ' +
        '   '
      '  //ShowMessage(Y+'#39' '#39'+M+'#39' '#39'+D);                              '
      '  if DayOfWeek(EncodeDate(Y,M,D))=1 then'
      
        '                                        TfrxMemoView(Sender).Col' +
        'or:=clRed else'
      
        '                                        TfrxMemoView(Sender).Col' +
        'or:=$00E4E4E4;'
      '  end else begin'
      
        '   TfrxMemoView(Sender).Visible:=false;                         ' +
        '  '
      '  end;               '
      'end;          '
      ''
      'procedure Memo73OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if <ds_type."SNAME"> = '#39#1042#1055#39' then TfrxMemoView(Sender).Color:=$' +
        '00FFBA75 else'
      
        '                                   TfrxMemoView(Sender).Color:=c' +
        'lNone;                                                          ' +
        '                      '
      'end;'
      ''
      'procedure Memo42OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  IsSunDay(Sender);                                             ' +
        '                       '
      'end;'
      ''
      ''
      'procedure Memo43OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    IsSunDay(Sender);  '
      'end;'
      ''
      'procedure Memo44OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  IsSunDay(Sender);    '
      'end;'
      ''
      'procedure Memo45OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  IsSunDay(Sender);  '
      'end;'
      ''
      'procedure Memo46OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  IsSunDay(Sender);  '
      'end;'
      ''
      'procedure Memo47OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  IsSunDay(Sender);  '
      'end;'
      ''
      'procedure Memo48OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  IsSunDay(Sender);  '
      'end;'
      ''
      'procedure Memo49OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  IsSunDay(Sender);  '
      'end;'
      ''
      'procedure Memo50OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  IsSunDay(Sender);  '
      'end;'
      ''
      'procedure Memo51OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  IsSunDay(Sender);  '
      'end;'
      ''
      'procedure Memo52OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  IsSunDay(Sender);  '
      'end;'
      ''
      'procedure Memo53OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  IsSunDay(Sender);  '
      'end;'
      ''
      'procedure Memo54OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  IsSunDay(Sender);  '
      'end;'
      ''
      'procedure Memo55OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  IsSunDay(Sender);  '
      'end;'
      ''
      'procedure Memo56OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  IsSunDay(Sender);  '
      'end;'
      ''
      'procedure Memo57OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  IsSunDay(Sender);  '
      'end;'
      ''
      'procedure Memo58OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  IsSunDay(Sender);  '
      'end;'
      ''
      'procedure Memo59OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  IsSunDay(Sender);  '
      'end;'
      ''
      'procedure Memo60OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  IsSunDay(Sender);  '
      'end;'
      ''
      'procedure Memo61OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  IsSunDay(Sender);  '
      'end;'
      ''
      'procedure Memo62OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  IsSunDay(Sender);  '
      'end;'
      ''
      'procedure Memo63OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  IsSunDay(Sender);  '
      'end;'
      ''
      'procedure Memo64OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  IsSunDay(Sender);  '
      'end;'
      ''
      'procedure Memo65OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  IsSunDay(Sender);  '
      'end;'
      ''
      'procedure Memo66OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  IsSunDay(Sender);  '
      'end;'
      ''
      'procedure Memo67OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  IsSunDay(Sender);  '
      'end;'
      ''
      'procedure Memo68OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  IsSunDay(Sender);  '
      'end;'
      ''
      'procedure Memo69OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  IsSunDay(Sender);  '
      'end;'
      ''
      'procedure Memo70OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  IsSunDay(Sender);  '
      'end;'
      ''
      'procedure Memo71OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  IsSunDay(Sender);  '
      'end;'
      ''
      'procedure Memo72OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  IsSunDay(Sender);  '
      'end;'
      ''
      'procedure Memo19OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        ' //  if <rep2."FLD">=14 then TfrxMemoView(Sender).Text:=TfrxMemo' +
        'View(Sender).Text+<rep2."SNAME">;    '
      ' FormatMemo(Sender);  '
      'end;'
      ''
      'procedure Memo6OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        ' //  if <rep2."FLD">=1 then TfrxMemoView(Sender).Text:=TfrxMemoV' +
        'iew(Sender).Text+<rep2."SNAME">;                                ' +
        '     '
      '   FormatMemo(Sender);  '
      'end;'
      ''
      'procedure Memo7OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        ' //  if <rep2."FLD">=2 then TfrxMemoView(Sender).Text:=TfrxMemoV' +
        'iew(Sender).Text+<rep2."SNAME">;  '
      '   FormatMemo(Sender);'
      'end;'
      ''
      'procedure Memo8OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        '//  if <rep2."FLD">=3 then TfrxMemoView(Sender).Text:=TfrxMemoVi' +
        'ew(Sender).Text+<rep2."SNAME">;    '
      '  FormatMemo(Sender);  '
      'end;'
      ''
      'procedure Memo10OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        '//   if <rep2."FLD">=5 then TfrxMemoView(Sender).Text:=TfrxMemoV' +
        'iew(Sender).Text+<rep2."SNAME">;    '
      '   FormatMemo(Sender);  '
      'end;'
      ''
      'procedure Memo11OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        '//   if <rep2."FLD">=6 then TfrxMemoView(Sender).Text:=TfrxMemoV' +
        'iew(Sender).Text+<rep2."SNAME">;    '
      '   FormatMemo(Sender);  '
      'end;'
      ''
      'procedure Memo12OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        '//   if <rep2."FLD">=7 then TfrxMemoView(Sender).Text:=TfrxMemoV' +
        'iew(Sender).Text+<rep2."SNAME">;    '
      '   FormatMemo(Sender);  '
      'end;'
      ''
      'procedure Memo13OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        '//   if <rep2."FLD">=8 then TfrxMemoView(Sender).Text:=TfrxMemoV' +
        'iew(Sender).Text+<rep2."SNAME">;    '
      '   FormatMemo(Sender);  '
      'end;'
      ''
      ''
      'procedure Memo14OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        '//   if <rep2."FLD">=9 then TfrxMemoView(Sender).Text:=TfrxMemoV' +
        'iew(Sender).Text+<rep2."SNAME">;    '
      '   FormatMemo(Sender);  '
      'end;'
      ''
      'procedure Memo15OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        '//   if <rep2."FLD">=10 then TfrxMemoView(Sender).Text:=TfrxMemo' +
        'View(Sender).Text+<rep2."SNAME">;    '
      '   FormatMemo(Sender);  '
      'end;'
      ''
      'procedure Memo16OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        '//   if <rep2."FLD">=11 then TfrxMemoView(Sender).Text:=TfrxMemo' +
        'View(Sender).Text+<rep2."SNAME">;    '
      '   FormatMemo(Sender);  '
      'end;'
      ''
      'procedure Memo17OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        '//   if <rep2."FLD">=12 then TfrxMemoView(Sender).Text:=TfrxMemo' +
        'View(Sender).Text+<rep2."SNAME">;    '
      '   FormatMemo(Sender);  '
      'end;'
      ''
      'procedure Memo20OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        '//   if <rep2."FLD">=15 then TfrxMemoView(Sender).Text:=TfrxMemo' +
        'View(Sender).Text+<rep2."SNAME">;    '
      '   FormatMemo(Sender);  '
      'end;'
      ''
      'procedure Memo21OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        '//   if <rep2."FLD">=16 then TfrxMemoView(Sender).Text:=TfrxMemo' +
        'View(Sender).Text+<rep2."SNAME">;    '
      '   FormatMemo(Sender);  '
      'end;'
      ''
      'procedure Memo22OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        '//   if <rep2."FLD">=17 then TfrxMemoView(Sender).Text:=TfrxMemo' +
        'View(Sender).Text+<rep2."SNAME">;    '
      '   FormatMemo(Sender);  '
      'end;'
      ''
      'procedure Memo23OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        '//   if <rep2."FLD">=18 then TfrxMemoView(Sender).Text:=TfrxMemo' +
        'View(Sender).Text+<rep2."SNAME">;    '
      '   FormatMemo(Sender);  '
      'end;'
      ''
      'procedure Memo24OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        '//   if <rep2."FLD">=19 then TfrxMemoView(Sender).Text:=TfrxMemo' +
        'View(Sender).Text+<rep2."SNAME">;    '
      '   FormatMemo(Sender);  '
      'end;'
      ''
      'procedure Memo26OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        '//   if <rep2."FLD">=21 then TfrxMemoView(Sender).Text:=TfrxMemo' +
        'View(Sender).Text+<rep2."SNAME">;    '
      '   FormatMemo(Sender);  '
      'end;'
      ''
      'procedure Memo27OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        '//   if <rep2."FLD">=22 then TfrxMemoView(Sender).Text:=TfrxMemo' +
        'View(Sender).Text+<rep2."SNAME">;    '
      '   FormatMemo(Sender);  '
      'end;'
      ''
      'procedure Memo28OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        '//   if <rep2."FLD">=23 then TfrxMemoView(Sender).Text:=TfrxMemo' +
        'View(Sender).Text+<rep2."SNAME">;    '
      '   FormatMemo(Sender);  '
      'end;'
      ''
      'procedure Memo29OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        '//   if <rep2."FLD">=24 then TfrxMemoView(Sender).Text:=TfrxMemo' +
        'View(Sender).Text+<rep2."SNAME">;    '
      '   FormatMemo(Sender);  '
      'end;'
      ''
      'procedure Memo30OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        '//   if <rep2."FLD">=25 then TfrxMemoView(Sender).Text:=TfrxMemo' +
        'View(Sender).Text+<rep2."SNAME">;    '
      '   FormatMemo(Sender);  '
      'end;'
      ''
      'procedure Memo31OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        '//   if <rep2."FLD">=26 then TfrxMemoView(Sender).Text:=TfrxMemo' +
        'View(Sender).Text+<rep2."SNAME">;    '
      '   FormatMemo(Sender);  '
      'end;'
      ''
      'procedure Memo32OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        '//   if <rep2."FLD">=27 then TfrxMemoView(Sender).Text:=TfrxMemo' +
        'View(Sender).Text+<rep2."SNAME">;    '
      '   FormatMemo(Sender);  '
      'end;'
      ''
      'procedure Memo33OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        '//   if <rep2."FLD">=28 then TfrxMemoView(Sender).Text:=TfrxMemo' +
        'View(Sender).Text+<rep2."SNAME">;    '
      '   FormatMemo(Sender);  '
      'end;'
      ''
      'procedure Memo34OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        '//   if <rep2."FLD">=29 then TfrxMemoView(Sender).Text:=TfrxMemo' +
        'View(Sender).Text+<rep2."SNAME">;    '
      '   FormatMemo(Sender);  '
      'end;'
      ''
      'procedure Memo35OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        '//   if <rep2."FLD">=30 then TfrxMemoView(Sender).Text:=TfrxMemo' +
        'View(Sender).Text+<rep2."SNAME">;    '
      '   FormatMemo(Sender);  '
      'end;'
      ''
      'procedure Memo36OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        '//   if <rep2."FLD">=31 then TfrxMemoView(Sender).Text:=TfrxMemo' +
        'View(Sender).Text+<rep2."SNAME">;    '
      '   FormatMemo(Sender);  '
      'end;'
      ''
      'procedure Memo18OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        '//   if <rep2."FLD">=13 then TfrxMemoView(Sender).Text:=TfrxMemo' +
        'View(Sender).Text+<rep2."SNAME">;    '
      '   FormatMemo(Sender);  '
      'end;'
      ''
      'procedure Memo25OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        '//   if <rep2."FLD">=20 then TfrxMemoView(Sender).Text:=TfrxMemo' +
        'View(Sender).Text+<rep2."SNAME">;    '
      '   FormatMemo(Sender);  '
      'end;'
      ''
      'procedure Memo9OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        '//   if <rep2."FLD">=4 then TfrxMemoView(Sender).Text:=TfrxMemoV' +
        'iew(Sender).Text+<rep2."SNAME">;    '
      '   FormatMemo(Sender);  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 496
    Top = 224
    Datasets = <
      item
        DataSet = dbds2
        DataSetName = 'ds_type'
      end
      item
        DataSet = dbds3
        DataSetName = 'rep2'
      end>
    Variables = <
      item
        Name = ' rep'
        Value = Null
      end
      item
        Name = 'VP'
        Value = Null
      end>
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
      LeftMargin = 3.000000000000000000
      RightMargin = 3.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 139.842610000000000000
        Top = 18.897650000000000000
        Width = 1099.843230000000000000
        object Rich1: TfrxRichView
          Align = baClient
          Width = 1099.843230000000000000
          Height = 139.842610000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
            666C616E67313034397B5C666F6E7474626C7B5C66305C666E696C5C66636861
            72736574323034205461686F6D613B7D7B5C66315C666E696C5C666368617273
            657430205461686F6D613B7D7D0D0A7B5C2A5C67656E657261746F72204D7366
            746564697420352E34312E32312E323531303B7D5C766965776B696E64345C75
            63315C706172645C71725C625C66305C667331365C2763665C2766305C276538
            5C2765625C2765655C2765365C2765355C2765645C2765385C276535205C2762
            395C6C616E67313033335C663120335C6C616E67313034395C66305C7061720D
            0A5C276561205C2763665C2765655C2765625C2765655C2765365C2765355C27
            65645C2765385C276665205C276565205C2765665C2765655C2766305C276666
            5C2765345C2765615C2765355C7061720D0A5C2765655C2766305C2765335C27
            65305C2765645C2765385C2765375C2765305C2766365C2765385C276538205C
            276538205C2765615C2765655C2765645C2766325C2766305C2765655C276562
            5C276666205C2765615C2765305C2766375C2765355C2766315C2766325C2765
            325C2765305C7061720D0A5C2766315C2765305C2765645C2765385C2766325C
            2765305C2766305C2765645C2765655C2765335C276565205C2766315C276565
            5C2765345C2765355C2766305C2765365C2765305C2765645C2765385C276666
            205C2763635C2763615C2763345C62305C7061720D0A5C706172645C7061720D
            0A5C706172645C71635C625C667332305C2763335C2766305C2765305C276634
            5C2765385C2765615C276538205C2766335C2765315C2765655C2766305C2765
            615C2765385C7061720D0A5C2765665C276565205C2765305C2765345C276630
            5C2765355C2766315C2766333A5C6C616E67313033335C756C5C62305C663120
            205B7661725374726565745D5C6C616E67313034395C663020205C756C6E6F6E
            65202C5C625C2765345C2765655C2765635C623020205C6C616E67313033335C
            756C5C6631205B7661724E6F6D65725D205C756C6E6F6E655C7061720D0A5B76
            61724D5D205B766172595D5C6C616E67313034395C66305C667331365C706172
            0D0A7D0D0A00}
        end
      end
      object Header1: TfrxHeader
        Height = 52.913420000000000000
        Top = 219.212740000000000000
        Width = 1099.843230000000000000
        object Memo42: TfrxMemoView
          Align = baLeft
          Top = 3.779529999999994000
          Width = 35.527559060000000000
          Height = 49.133858270000000000
          OnAfterData = 'Memo42OnAfterData'
          OnAfterPrint = 'Memo42OnAfterPrint'
          OnBeforePrint = 'Memo42OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Align = baLeft
          Left = 35.527559060000000000
          Top = 3.779529999999994000
          Width = 35.527559055118100000
          Height = 49.133858270000000000
          OnBeforePrint = 'Memo43OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Align = baLeft
          Left = 71.055118115118110000
          Top = 3.779529999999994000
          Width = 35.527559055118100000
          Height = 49.133858270000000000
          OnBeforePrint = 'Memo44OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Align = baLeft
          Left = 106.582677170236200000
          Top = 3.779529999999994000
          Width = 35.527559055118100000
          Height = 49.133858270000000000
          OnBeforePrint = 'Memo45OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '4')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Align = baLeft
          Left = 142.110236225354300000
          Top = 3.779529999999994000
          Width = 35.527559055118100000
          Height = 49.133858270000000000
          OnBeforePrint = 'Memo46OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '5')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Align = baLeft
          Left = 177.637795280472400000
          Top = 3.779529999999994000
          Width = 35.527559055118100000
          Height = 49.133858270000000000
          OnBeforePrint = 'Memo47OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '6')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Align = baLeft
          Left = 213.165354335590500000
          Top = 3.779529999999994000
          Width = 35.527559055118100000
          Height = 49.133858270000000000
          OnBeforePrint = 'Memo48OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '7')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Align = baLeft
          Left = 248.692913390708600000
          Top = 3.779529999999994000
          Width = 35.527559055118100000
          Height = 49.133858270000000000
          OnBeforePrint = 'Memo49OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '8')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Align = baLeft
          Left = 284.220472445826700000
          Top = 3.779529999999994000
          Width = 35.527559055118100000
          Height = 49.133858270000000000
          OnBeforePrint = 'Memo50OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '9')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Align = baLeft
          Left = 319.748031500944800000
          Top = 3.779529999999994000
          Width = 35.527559055118100000
          Height = 49.133858270000000000
          OnBeforePrint = 'Memo51OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '10')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Align = baLeft
          Left = 355.275590556062900000
          Top = 3.779529999999994000
          Width = 35.527559055118100000
          Height = 49.133858270000000000
          OnBeforePrint = 'Memo52OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '11')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Align = baLeft
          Left = 390.803149611181100000
          Top = 3.779529999999994000
          Width = 35.527559055118100000
          Height = 49.133858270000000000
          OnBeforePrint = 'Memo53OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '12')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Align = baLeft
          Left = 426.330708666299100000
          Top = 3.779529999999994000
          Width = 35.527559055118100000
          Height = 49.133858270000000000
          OnBeforePrint = 'Memo54OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '13')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Align = baLeft
          Left = 461.858267721417200000
          Top = 3.779529999999994000
          Width = 35.527559055118100000
          Height = 49.133858270000000000
          OnAfterData = 'Memo55OnAfterData'
          OnBeforePrint = 'Memo55OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '14')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Align = baLeft
          Left = 497.385826776535400000
          Top = 3.779529999999994000
          Width = 35.527559055118100000
          Height = 49.133858270000000000
          OnBeforePrint = 'Memo56OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '15')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Align = baLeft
          Left = 532.913385831653400000
          Top = 3.779529999999994000
          Width = 35.527559055118100000
          Height = 49.133858270000000000
          OnBeforePrint = 'Memo57OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '16')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Align = baLeft
          Left = 568.440944886771500000
          Top = 3.779529999999994000
          Width = 35.527559055118100000
          Height = 49.133858270000000000
          OnBeforePrint = 'Memo58OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '17')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Align = baLeft
          Left = 603.968503941889500000
          Top = 3.779529999999994000
          Width = 35.527559055118100000
          Height = 49.133858270000000000
          OnBeforePrint = 'Memo59OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '18')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Align = baLeft
          Left = 639.496062997007700000
          Top = 3.779529999999994000
          Width = 35.527559055118100000
          Height = 49.133858270000000000
          OnBeforePrint = 'Memo60OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '19')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Align = baLeft
          Left = 675.023622052125800000
          Top = 3.779529999999994000
          Width = 35.527559055118100000
          Height = 49.133858270000000000
          OnBeforePrint = 'Memo61OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '20')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Align = baLeft
          Left = 710.551181107243900000
          Top = 3.779529999999994000
          Width = 35.527559055118100000
          Height = 49.133858270000000000
          OnBeforePrint = 'Memo62OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '21')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Align = baLeft
          Left = 746.078740162362000000
          Top = 3.779529999999994000
          Width = 35.527559055118100000
          Height = 49.133858270000000000
          OnBeforePrint = 'Memo63OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '22')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Align = baLeft
          Left = 781.606299217480100000
          Top = 3.779529999999994000
          Width = 35.527559055118100000
          Height = 49.133858270000000000
          OnBeforePrint = 'Memo64OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '23')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Align = baLeft
          Left = 817.133858272598300000
          Top = 3.779529999999994000
          Width = 35.527559055118100000
          Height = 49.133858270000000000
          OnBeforePrint = 'Memo65OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '24')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Align = baLeft
          Left = 852.661417327716400000
          Top = 3.779529999999994000
          Width = 35.527559055118100000
          Height = 49.133858270000000000
          OnBeforePrint = 'Memo66OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '25')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Align = baLeft
          Left = 888.188976382834400000
          Top = 3.779529999999994000
          Width = 35.527559055118100000
          Height = 49.133858270000000000
          OnBeforePrint = 'Memo67OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '26')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Align = baLeft
          Left = 923.716535437952500000
          Top = 3.779529999999994000
          Width = 35.527559055118100000
          Height = 49.133858270000000000
          OnBeforePrint = 'Memo68OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '27')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Align = baLeft
          Left = 959.244094493070600000
          Top = 3.779529999999994000
          Width = 35.527559055118100000
          Height = 49.133858270000000000
          OnBeforePrint = 'Memo69OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '28')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Align = baLeft
          Left = 994.771653548188800000
          Top = 3.779529999999994000
          Width = 35.527559055118100000
          Height = 49.133858270000000000
          OnBeforePrint = 'Memo70OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '29')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Align = baLeft
          Left = 1030.299212603307000000
          Top = 3.779529999999994000
          Width = 35.527559055118100000
          Height = 49.133858270000000000
          OnBeforePrint = 'Memo71OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '30')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Align = baLeft
          Left = 1065.826771658425000000
          Top = 3.779529999999994000
          Width = 35.527559060000000000
          Height = 49.133858270000000000
          OnBeforePrint = 'Memo72OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '31')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 20.787401570000000000
        Top = 294.803340000000000000
        Width = 1099.843230000000000000
        DataSet = dbds3
        DataSetName = 'rep2'
        RowCount = 0
        Stretched = True
        object Memo6: TfrxMemoView
          Align = baLeft
          Width = 35.527559055118100000
          Height = 18.897650000000000000
          OnAfterData = 'Memo6OnAfterData'
          OnBeforePrint = 'Memo6OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F1'
          DataSet = dbds3
          DataSetName = 'rep2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rep2."F1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          Left = 35.527559055118100000
          Width = 35.527559055118100000
          Height = 18.897650000000000000
          OnAfterData = 'Memo7OnAfterData'
          OnBeforePrint = 'Memo7OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F2'
          DataSet = dbds3
          DataSetName = 'rep2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rep2."F2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Align = baLeft
          Left = 71.055118110236200000
          Width = 35.527559055118100000
          Height = 18.897650000000000000
          OnAfterData = 'Memo8OnAfterData'
          OnBeforePrint = 'Memo8OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F3'
          DataSet = dbds3
          DataSetName = 'rep2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rep2."F3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Align = baLeft
          Left = 106.582677165354300000
          Width = 35.527559055118100000
          Height = 18.897650000000000000
          OnAfterData = 'Memo9OnAfterData'
          OnBeforePrint = 'Memo9OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F4'
          DataSet = dbds3
          DataSetName = 'rep2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rep2."F4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          Left = 142.110236220472400000
          Width = 35.527559055118100000
          Height = 18.897650000000000000
          OnAfterData = 'Memo10OnAfterData'
          OnBeforePrint = 'Memo10OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F5'
          DataSet = dbds3
          DataSetName = 'rep2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rep2."F5"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Align = baLeft
          Left = 177.637795275590500000
          Width = 35.527559055118100000
          Height = 18.897650000000000000
          OnAfterData = 'Memo11OnAfterData'
          OnBeforePrint = 'Memo11OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F6'
          DataSet = dbds3
          DataSetName = 'rep2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rep2."F6"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Align = baLeft
          Left = 213.165354330708600000
          Width = 35.527559055118100000
          Height = 18.897650000000000000
          OnAfterData = 'Memo12OnAfterData'
          OnBeforePrint = 'Memo12OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F7'
          DataSet = dbds3
          DataSetName = 'rep2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rep2."F7"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Align = baLeft
          Left = 248.692913385826700000
          Width = 35.527559055118100000
          Height = 18.897650000000000000
          OnAfterData = 'Memo13OnAfterData'
          OnBeforePrint = 'Memo13OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F8'
          DataSet = dbds3
          DataSetName = 'rep2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rep2."F8"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Align = baLeft
          Left = 284.220472440944800000
          Width = 35.527559055118100000
          Height = 18.897650000000000000
          OnAfterData = 'Memo14OnAfterData'
          OnBeforePrint = 'Memo14OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F9'
          DataSet = dbds3
          DataSetName = 'rep2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rep2."F9"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Align = baLeft
          Left = 319.748031496062800000
          Width = 35.527559055118100000
          Height = 18.897650000000000000
          OnAfterData = 'Memo15OnAfterData'
          OnBeforePrint = 'Memo15OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F10'
          DataSet = dbds3
          DataSetName = 'rep2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rep2."F10"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Align = baLeft
          Left = 355.275590551181000000
          Width = 35.527559055118100000
          Height = 18.897650000000000000
          OnAfterData = 'Memo16OnAfterData'
          OnBeforePrint = 'Memo16OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F11'
          DataSet = dbds3
          DataSetName = 'rep2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rep2."F11"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Align = baLeft
          Left = 390.803149606299100000
          Width = 35.527559055118100000
          Height = 18.897650000000000000
          OnAfterData = 'Memo17OnAfterData'
          OnBeforePrint = 'Memo17OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F12'
          DataSet = dbds3
          DataSetName = 'rep2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rep2."F12"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Align = baLeft
          Left = 426.330708661417200000
          Width = 35.527559055118100000
          Height = 18.897650000000000000
          OnAfterData = 'Memo18OnAfterData'
          OnBeforePrint = 'Memo18OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F13'
          DataSet = dbds3
          DataSetName = 'rep2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rep2."F13"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Align = baLeft
          Left = 461.858267716535300000
          Width = 35.527559055118100000
          Height = 18.897650000000000000
          OnAfterData = 'Memo19OnAfterData'
          OnBeforePrint = 'Memo19OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F14'
          DataSet = dbds3
          DataSetName = 'rep2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rep2."F14"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Align = baLeft
          Left = 497.385826771653400000
          Width = 35.527559055118100000
          Height = 18.897650000000000000
          OnAfterData = 'Memo20OnAfterData'
          OnBeforePrint = 'Memo20OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F15'
          DataSet = dbds3
          DataSetName = 'rep2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rep2."F15"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Align = baLeft
          Left = 532.913385826771500000
          Width = 35.527559055118100000
          Height = 18.897650000000000000
          OnAfterData = 'Memo21OnAfterData'
          OnBeforePrint = 'Memo21OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F16'
          DataSet = dbds3
          DataSetName = 'rep2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rep2."F16"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Align = baLeft
          Left = 568.440944881889500000
          Width = 35.527559055118100000
          Height = 18.897650000000000000
          OnAfterData = 'Memo22OnAfterData'
          OnBeforePrint = 'Memo22OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F17'
          DataSet = dbds3
          DataSetName = 'rep2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rep2."F17"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Align = baLeft
          Left = 603.968503937007600000
          Width = 35.527559055118100000
          Height = 18.897650000000000000
          OnAfterData = 'Memo23OnAfterData'
          OnBeforePrint = 'Memo23OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F18'
          DataSet = dbds3
          DataSetName = 'rep2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rep2."F18"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Align = baLeft
          Left = 639.496062992125700000
          Width = 35.527559055118100000
          Height = 18.897650000000000000
          OnAfterData = 'Memo24OnAfterData'
          OnBeforePrint = 'Memo24OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F19'
          DataSet = dbds3
          DataSetName = 'rep2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rep2."F19"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          Left = 675.023622047243900000
          Width = 35.527559055118100000
          Height = 18.897650000000000000
          OnAfterData = 'Memo25OnAfterData'
          OnBeforePrint = 'Memo25OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F20'
          DataSet = dbds3
          DataSetName = 'rep2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rep2."F20"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Align = baLeft
          Left = 710.551181102362000000
          Width = 35.527559055118100000
          Height = 18.897650000000000000
          OnAfterData = 'Memo26OnAfterData'
          OnBeforePrint = 'Memo26OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F21'
          DataSet = dbds3
          DataSetName = 'rep2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rep2."F21"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Align = baLeft
          Left = 746.078740157480100000
          Width = 35.527559055118100000
          Height = 18.897650000000000000
          OnAfterData = 'Memo27OnAfterData'
          OnBeforePrint = 'Memo27OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F22'
          DataSet = dbds3
          DataSetName = 'rep2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rep2."F22"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Align = baLeft
          Left = 781.606299212598100000
          Width = 35.527559055118100000
          Height = 18.897650000000000000
          OnAfterData = 'Memo28OnAfterData'
          OnBeforePrint = 'Memo28OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F23'
          DataSet = dbds3
          DataSetName = 'rep2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rep2."F23"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Align = baLeft
          Left = 817.133858267716200000
          Width = 35.527559055118100000
          Height = 18.897650000000000000
          OnAfterData = 'Memo29OnAfterData'
          OnBeforePrint = 'Memo29OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F24'
          DataSet = dbds3
          DataSetName = 'rep2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rep2."F24"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Align = baLeft
          Left = 852.661417322834400000
          Width = 35.527559055118100000
          Height = 18.897650000000000000
          OnAfterData = 'Memo30OnAfterData'
          OnBeforePrint = 'Memo30OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F25'
          DataSet = dbds3
          DataSetName = 'rep2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rep2."F25"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Align = baLeft
          Left = 888.188976377952500000
          Width = 35.527559055118100000
          Height = 18.897650000000000000
          OnAfterData = 'Memo31OnAfterData'
          OnBeforePrint = 'Memo31OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F26'
          DataSet = dbds3
          DataSetName = 'rep2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rep2."F26"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Align = baLeft
          Left = 923.716535433070600000
          Width = 35.527559055118100000
          Height = 18.897650000000000000
          OnAfterData = 'Memo32OnAfterData'
          OnBeforePrint = 'Memo32OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F27'
          DataSet = dbds3
          DataSetName = 'rep2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rep2."F27"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Align = baLeft
          Left = 959.244094488188700000
          Width = 35.527559055118100000
          Height = 18.897650000000000000
          OnAfterData = 'Memo33OnAfterData'
          OnBeforePrint = 'Memo33OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F28'
          DataSet = dbds3
          DataSetName = 'rep2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rep2."F28"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Align = baLeft
          Left = 994.771653543306800000
          Width = 35.527559055118100000
          Height = 18.897650000000000000
          OnAfterData = 'Memo34OnAfterData'
          OnBeforePrint = 'Memo34OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F29'
          DataSet = dbds3
          DataSetName = 'rep2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rep2."F29"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Align = baLeft
          Left = 1030.299212598425000000
          Width = 35.527559055118100000
          Height = 18.897650000000000000
          OnAfterData = 'Memo35OnAfterData'
          OnBeforePrint = 'Memo35OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F30'
          DataSet = dbds3
          DataSetName = 'rep2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rep2."F30"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Align = baLeft
          Left = 1065.826771653543000000
          Width = 35.527559055118100000
          Height = 18.897650000000000000
          OnAfterData = 'Memo36OnAfterData'
          OnBeforePrint = 'Memo36OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F31'
          DataSet = dbds3
          DataSetName = 'rep2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[rep2."F31"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        Height = 26.456710000000000000
        Top = 419.527830000000000000
        Width = 1099.843230000000000000
        DataSet = dbds2
        DataSetName = 'ds_type'
        RowCount = 0
        object Memo73: TfrxMemoView
          Align = baLeft
          Top = 3.779530000000022000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo73OnBeforePrint'
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[ds_type."SNAME"]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Align = baLeft
          Left = 52.913420000000000000
          Top = 3.779530000000022000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            ' - ')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Align = baLeft
          Left = 68.031540000000010000
          Top = 3.779530000000022000
          Width = 763.465060000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ds_type."NAME"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 56.692950000000000000
        Top = 340.157700000000000000
        Width = 1099.843230000000000000
      end
    end
  end
  object src_LKSPEC: TDataSource
    DataSet = ds_LK_SPEC
    Left = 480
    Top = 104
  end
  object ds_LK_SPEC: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT lk.CODE,'
      '       lk.LKHEAD, '
      '       lk.HOUSE,'
      '       s.name SNAME, h.nomer,'
      '       lk.LKTYPE, lt.name LTNAME,'
      '       lk.DATA,'
      '       lk.ENTRANCE,max(lk1.data) lk1data'
      'FROM LK_SPEC lk'
      'left outer join house h on h.code=lk.house'
      'left outer join lktype lt on lt.code=lk.lktype'
      'left outer join street s on s.code=h.street'
      'left outer join lk_spec lk1 on lk1.house = lk.house'
      '    and lk1.lktype = lk.lktype and lk1.data<lk.data')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 448
    Top = 104
  end
  object m_fr: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 560
    Top = 224
  end
  object dbds1: TfrxDBDataset
    UserName = 'ds'
    CloseDataSource = False
    DataSet = m_fr
    BCDToCurrency = False
    Left = 528
    Top = 224
  end
  object ds_LKTYPE: TpFIBDataSet
    SelectSQL.Strings = (
      'select 0 Flag,CODE, NAME, SNAME'
      'from LKTYPE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 592
    Top = 392
  end
  object src_LKTYPE: TDataSource
    DataSet = m_LKTYPE
    Left = 672
    Top = 392
  end
  object ds_Type: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME, SNAME, PTYPE,'
      '   case'
      '     when PTYPE = 0 then '#39#1077#1078#1077#1085#1077#1076#1077#1083#1100#1085#1086#39
      '     when PTYPE = 1 then '#39'1 '#1088#1072#1079' '#1074' '#1084#1077#1089#1103#1094#39
      '     when PTYPE = 2 then '#39'2 '#1088#1072#1079#1072' '#1074' '#1084#1077#1089#1103#1094#39
      '     when PTYPE = 3 then '#39#1077#1078#1077#1082#1074#1072#1088#1090#1072#1083#1100#1085#1086#39
      '     when PTYPE = 4 then '#39#1088#1072#1079' '#1074' '#1087#1086#1083#1075#1086#1076#1072#39
      '   end PTYPENAME'
      'from LKTYPE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 424
    Top = 224
  end
  object dbds2: TfrxDBDataset
    UserName = 'ds_type'
    CloseDataSource = False
    DataSet = ds_Type
    BCDToCurrency = False
    Left = 400
    Top = 224
  end
  object ds_rep2: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT --LK.DATA,'
      
        '       lt.sname||iif(LK.ENTRANCE is null,'#39#39',LK.ENTRANCE)SNAME ,E' +
        'XTRACT(DAY from LK.DATA) FLD'
      'FROM LK_SPEC LK'
      'left outer join lktype lt on lt.code=lk.lktype'
      'where house=:house and LK.LKHEAD=:head'
      'order by LK.DATA')
    AfterOpen = ds_rep2AfterOpen
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 496
    Top = 176
  end
  object dbds3: TfrxDBDataset
    UserName = 'rep2'
    CloseDataSource = False
    DataSet = m2
    BCDToCurrency = False
    Left = 528
    Top = 176
  end
  object m2: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 456
    Top = 176
  end
  object m_LKTYPE: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 640
    Top = 392
  end
end
