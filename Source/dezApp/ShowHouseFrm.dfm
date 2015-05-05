object ShowHouseForm: TShowHouseForm
  Left = 0
  Top = 0
  HelpContext = 16
  Caption = #1040#1082#1090#1099' '#1086#1089#1084#1086#1090#1088#1086#1074
  ClientHeight = 706
  ClientWidth = 856
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
  object lcntr1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 856
    Height = 706
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = LCxSkin1
    object grd1: TcxGrid
      Left = 56
      Top = 16
      Width = 790
      Height = 208
      TabOrder = 3
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        OnEditKeyDown = v1EditKeyDown
        DataController.DataSource = src_osm
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          Width = 58
        end
        object clv1ALOCK: TcxGridDBColumn
          DataBinding.FieldName = 'ALOCK'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.FullFocusRect = True
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = clv1ALOCKPropertiesEditValueChanged
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
          Width = 24
          IsCaptionAssigned = True
        end
        object clv1SRVDOG: TcxGridDBColumn
          Caption = #1044#1086#1075#1086#1074#1086#1088
          DataBinding.FieldName = 'SRVDOG'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownSizeable = True
          Properties.DropDownWidth = 250
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'Code'
          Properties.ListColumns = <
            item
              Caption = #1050#1086#1076
              MinWidth = 0
              Width = 0
              FieldName = 'CODE'
            end
            item
              Caption = #1053#1086#1084#1077#1088
              Width = 78
              FieldName = 'NOMER'
            end
            item
              Caption = #1055#1086#1076#1088#1103#1076#1095#1080#1082
              Width = 150
              FieldName = 'Name'
            end
            item
              Caption = #1040#1082#1090#1080#1074#1085#1086#1089#1090#1100
              Width = 100
              FieldName = 'Act'
            end
            item
              MinWidth = 0
              Width = 0
              FieldName = 'KONTRAGENT'
            end>
          Properties.ListFieldIndex = 1
          Properties.ListSource = src_srvdog
          Properties.OnEditValueChanged = clv1SRVDOGPropertiesEditValueChanged
          Options.Editing = False
          Width = 96
        end
        object clv1Kontragent: TcxGridDBColumn
          Caption = #1055#1086#1076#1088#1103#1076#1095#1080#1082
          DataBinding.FieldName = 'kontragent'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownSizeable = True
          Properties.GridMode = True
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'Code'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = src_kontagent
          Options.Editing = False
          Width = 199
        end
        object clv1SHOWDATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103
          DataBinding.FieldName = 'SHOWDATE'
          Options.Editing = False
          Width = 91
        end
        object clv1STYPE: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1086#1089#1084#1086#1090#1088#1072
          DataBinding.FieldName = 'STYPE'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownSizeable = True
          Properties.GridMode = True
          Properties.KeyFieldNames = 'Code'
          Properties.ListColumns = <
            item
              MinWidth = 0
              Width = 0
              FieldName = 'Code'
            end
            item
              FieldName = 'Name'
            end>
          Properties.ListFieldIndex = 1
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = src_type
          Options.Editing = False
          Width = 97
        end
        object clv1SYEAR: TcxGridDBColumn
          Caption = #1043#1086#1076
          DataBinding.FieldName = 'SYEAR'
          Options.Editing = False
          Width = 83
        end
        object clv1STATE: TcxGridDBColumn
          Caption = #1057#1090#1072#1090#1091#1089
          DataBinding.FieldName = 'STATE'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownSizeable = True
          Properties.KeyFieldNames = 'Code'
          Properties.ListColumns = <
            item
              MinWidth = 0
              Width = 0
              FieldName = 'Code'
            end
            item
              FieldName = 'Name'
            end>
          Properties.ListFieldIndex = 1
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = src_state
          Options.Editing = False
          Width = 189
        end
        object clv1SHOWPRIKAZPO: TcxGridDBColumn
          DataBinding.FieldName = 'SHOWPRIKAZPO'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1NUM: TcxGridDBColumn
          Caption = #8470' '#1087#1088#1080#1082#1072#1079#1072
          DataBinding.FieldName = 'NUM'
          Visible = False
          Options.Editing = False
          Width = 73
        end
        object clv1graphlist: TcxGridDBColumn
          Caption = #1050#1086#1076' '#1075#1088#1072#1092#1080#1082#1072
          DataBinding.FieldName = 'graphlist'
          Options.Editing = False
          Width = 74
        end
        object clv1KName: TcxGridDBColumn
          DataBinding.FieldName = 'KName'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1ATYPE: TcxGridDBColumn
          DataBinding.FieldName = 'ATYPE'
          Visible = False
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 10
      Top = 280
      Width = 836
      Height = 425
      TabOrder = 5
      LockedStateImageOptions.Effect = lsieDark
      LockedStateImageOptions.ShowText = True
      LockedStateImageOptions.Text = #1055#1086#1083#1091#1095#1072#1077#1084' '#1076#1072#1085#1085#1099#1077'...'
      object v2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = v2CellDblClick
        DataController.DataSource = src_HousePlan
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv2HOUSE
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.ImmediateEditor = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ShowEditButtons = gsebForFocusedRecord
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.OnGetContentStyle = v2StylesGetContentStyle
        object clv2CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv2SHOWHOUSE: TcxGridDBColumn
          Caption = #1055#1083#1072#1085' '#1086#1089#1084#1086#1090#1088#1072
          DataBinding.FieldName = 'SHOWHOUSE'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
          Width = 103
        end
        object clv2HOUSE: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'HOUSE'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
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
              FieldName = 'NOMER'
            end>
          Properties.ListFieldIndex = 1
          Properties.ListSource = src_house
          Options.Editing = False
          Options.ShowEditButtons = isebNever
        end
        object clv2StreetName: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'StreetName'
          Options.Editing = False
          Width = 149
        end
        object clv2D1: TcxGridDBColumn
          Caption = #1053#1072#1095'. '#1076#1072#1090#1072
          DataBinding.FieldName = 'D1'
          Options.Editing = False
          Options.ShowEditButtons = isebNever
          Width = 108
        end
        object clv2D2: TcxGridDBColumn
          Caption = #1050#1086#1085'. '#1076#1072#1090#1072
          DataBinding.FieldName = 'D2'
          Options.Editing = False
          Options.ShowEditButtons = isebNever
          Width = 106
        end
        object clv2SHOWDATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1089#1076#1072#1095#1080' '#1072#1082#1090#1072
          DataBinding.FieldName = 'SHOWDATE'
          Options.Editing = False
          Width = 113
        end
        object clv2Lock: TcxGridDBColumn
          Caption = #1047#1072#1082#1088#1099#1090#1100' '#1072#1082#1090
          DataBinding.FieldName = 'LOCK'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = clv2LockPropertiesEditValueChanged
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
          Options.ShowCaption = False
          Width = 26
        end
        object clv2LOCKDATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1079#1072#1082#1088#1099#1090#1080#1103
          DataBinding.FieldName = 'LOCKDATA'
          Width = 94
        end
        object clv2Nomer: TcxGridDBColumn
          DataBinding.FieldName = 'Nomer'
          Visible = False
          VisibleForCustomization = False
        end
        object cl_v2structdefect: TcxGridDBColumn
          DataBinding.FieldName = 'structdefect'
          Visible = False
        end
        object cl_v2stat: TcxGridDBColumn
          DataBinding.FieldName = 'stat'
          Visible = False
        end
        object v2Column1: TcxGridDBColumn
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Caption = #1089#1076#1072#1090#1100' '#1072#1082#1090
              Default = True
              Kind = bkText
            end>
          Properties.ViewStyle = vsButtonsOnly
          Properties.OnButtonClick = v2Column1PropertiesButtonClick
          Width = 85
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object doc1: TdxBarDockControl
      Left = 10
      Top = 236
      Width = 836
      Height = 26
      Align = dalTop
      BarManager = bm1
    end
    object grd3: TcxGrid
      Left = 10000
      Top = 10000
      Width = 418
      Height = 151
      TabOrder = 0
      Visible = False
      object v3: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_GRAPHLIST
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        object clv3CODE: TcxGridDBColumn
          Caption = #1082#1086#1076
          DataBinding.FieldName = 'CODE'
          Width = 42
        end
        object clv3YEAR: TcxGridDBColumn
          Caption = #1075#1086#1076
          DataBinding.FieldName = 'YEAR'
          Width = 60
        end
        object clv3KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3KNAME: TcxGridDBColumn
          Caption = #1087#1086#1076#1088#1103#1076#1095#1080#1082
          DataBinding.FieldName = 'KNAME'
          Width = 140
        end
        object clv3GRAPHTO: TcxGridDBColumn
          DataBinding.FieldName = 'GRAPHTO'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3GTNAME: TcxGridDBColumn
          Caption = #1090#1080#1087' '#1075#1088#1072#1092#1080#1082#1072
          DataBinding.FieldName = 'GTNAME'
          Width = 290
        end
        object clv3NOTE: TcxGridDBColumn
          DataBinding.FieldName = 'NOTE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3SHOWPRIKAZPO: TcxGridDBColumn
          DataBinding.FieldName = 'SHOWPRIKAZPO'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3ALOCK: TcxGridDBColumn
          DataBinding.FieldName = 'ALOCK'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3SRVDOG: TcxGridDBColumn
          DataBinding.FieldName = 'SRVDOG'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l3: TcxGridLevel
        GridView = v3
      end
    end
    object btn_create: TcxButton
      Left = 10000
      Top = 10000
      Width = 163
      Height = 25
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1086#1089#1084#1086#1090#1088
      TabOrder = 1
      Visible = False
      OnClick = btn_createClick
    end
    object btn_OutPlan: TcxButton
      Left = 10000
      Top = 10000
      Width = 184
      Height = 25
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1074#1085#1077#1087#1083#1072#1085#1086#1074#1099#1081' '#1086#1089#1084#1086#1090#1088
      TabOrder = 2
      Visible = False
      OnClick = btn_OutPlanClick
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = LCxSkin1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object lcntr1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object grplcntr1Group1: TdxLayoutGroup
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcntr1Group2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grp_head: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Parent = grplcntr1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 433
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Expanded = False
      OnCaptionClick = grp_headCaptionClick
      OnCollapsed = grp_headCollapsed
      Index = 0
    end
    object itm_grd3: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grp_head
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 150
      Control = grd3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grplcntr1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp_head
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object itm_create: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplcntr1Group2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 163
      Control = btn_create
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_OutPlan: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplcntr1Group2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 184
      Control = btn_OutPlan
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object spl3: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grplcntr1Group1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object Itm1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1057#1087#1080#1089#1086#1082' '#1086#1089#1084#1086#1090#1088#1086#1074
      CaptionOptions.Layout = clTop
      Parent = grplcntr1Group1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 223
      SizeOptions.Width = 366
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object splt2: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = lcntr1Group2
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object Itm_doc: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = lcntr1Group2
      Control = doc1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object Item2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1055#1083#1072#1085#1099' '#1086#1089#1084#1086#1090#1088#1086#1074
      CaptionOptions.Layout = clTop
      Parent = lcntr1Group2
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = clv1SHOWDATE
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1SRVDOG
        Properties.Strings = (
          'Properties.DropDownWidth'
          'Width')
      end
      item
        Component = clv1STATE
        Properties.Strings = (
          'Properties.DropDownWidth'
          'Width')
      end
      item
        Component = clv1STYPE
        Properties.Strings = (
          'Properties.DropDownWidth'
          'Width')
      end
      item
        Component = clv1SYEAR
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv2CODE
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv2D1
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv2D2
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv2HOUSE
        Properties.Strings = (
          'Properties.DropDownWidth'
          'Width')
      end
      item
        Component = clv2SHOWDATE
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv2SHOWHOUSE
        Properties.Strings = (
          'Width')
      end
      item
        Component = dlg1
        Properties.Strings = (
          'Path')
      end
      item
        Component = editm_type
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = edit_year
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = v1
        Properties.Strings = (
          'FilterRow.Visible'
          'OptionsView.Footer'
          'OptionsView.GroupByBox')
      end
      item
        Component = v2
        Properties.Strings = (
          'FilterRow.Visible'
          'OptionsView.Footer'
          'OptionsView.GroupByBox')
      end>
    StorageName = 'prop1'
    Left = 616
    Top = 65532
  end
  object bm1: TdxBarManager
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
    LookAndFeel.SkinName = 'Office2010Blue'
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 644
    Top = 65532
    DockControlHeights = (
      0
      0
      0
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
      FloatLeft = 758
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn1'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 68
          Visible = True
          ItemName = 'edit_year'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 113
          Visible = True
          ItemName = 'editm_type'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_rep'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_rep2'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = False
      WholeRow = True
    end
    object bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = doc1
      DockedDockControl = doc1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 758
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_sync'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_print'
        end
        item
          Visible = True
          ItemName = 'dxbrsbtm1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_passAkt'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_pdf'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn1: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1086#1089#1084#1086#1090#1088' '
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1086#1089#1084#1086#1090#1088' '
      Visible = ivAlways
      OnClick = btn1Click
    end
    object edit_year: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxSpinEditProperties'
      Properties.ImmediatePost = True
      Properties.MinValue = 2000.000000000000000000
      Properties.ValueType = vtInt
      InternalEditValue = 2011
    end
    object editm_type: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.KeyFieldNames = 'Code'
      Properties.ListColumns = <
        item
          MinWidth = 0
          Width = 0
          FieldName = 'Code'
        end
        item
          FieldName = 'Name'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_type
    end
    object btn_sync: TdxBarButton
      Caption = #1057#1080#1085#1093#1088#1086#1085#1080#1079#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1057#1080#1085#1093#1088#1086#1085#1080#1079#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      OnClick = btn_syncClick
    end
    object btn_rep: TdxBarButton
      Caption = #1043#1088#1072#1092#1080#1082' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#1086#1089#1084#1086#1090#1088#1072
      Category = 0
      Hint = #1043#1088#1072#1092#1080#1082' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#1086#1089#1084#1086#1090#1088#1072
      Visible = ivAlways
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF636E7B
        FF00FFC2A6A4C2A6A4C2A6A4C2A6A4C2A6A4C2A6A4C2A6A4C2A6A4C2A6A4C2A6
        A4C2A6A4C2A6A4FF00FF5E98C73489D07F859DC2A6A4FEFCFBFEFCFBFEFCFBFE
        FCFBFEFCFBFEFCFBFEFCFBFEFCFBFEFCFBFEFCFBC2A6A4FF00FFFF00FF4BB6FF
        288BE0858498FEFCFBFEFCFBFEFCFBFEFCFBFEFCFBFEFCFBFEFCFBFEFCFBFEFC
        FBFEFCFBC2A6A4FF00FFFF00FFFF00FF4DB5FF278BDE79819AFEFBF7FEFBF7FE
        FBF7FEFBF7FEFBF7FEFBF7FEFBF7FEFBF7FEFBF7C2A6A4FF00FFFF00FFFF00FF
        FF00FF4CB9FF5A91BFE0CCC8C4A39FB08783C4A39FE0CCC8FEF9F4FEF9F4FEF9
        F4FEF9F4C2A6A4FF00FFFF00FFFF00FFFF00FFC2A6A4D1B7B2B8908AD3B5A8EF
        DBC3D2B1A0B78E86E0CBC5FEF7F0FEF7F0FEF7F0C2A6A4FF00FFFF00FFFF00FF
        FF00FFC2A6A4C4A29DD4B9B1F9EADAF8E7D2FFFFF7D2B0A0C4A29DFEF5ECFEF5
        ECFEF5ECC2A6A4FF00FFFF00FFFF00FFFF00FFC2A6A4B08682F5EAE3F9EFE3F8
        EADAFFFFF0F0DAC4B08682FEF3E9FEF3E9FEF3E9C2A6A4FF00FFFF00FFFF00FF
        FF00FFC2A6A4C4A19BD6BFBAFBF3EBFAEFE2FFFFDED3B5A8C4A19BFFF1E5FFF1
        E5FFF1E5C2A6A4FF00FFFF00FFFF00FFFF00FFC2A6A4E0C7BCB8928FD6BFBAF5
        EAE2D4B9B1B8908ACBB2A8DDCFC2DDCFC2DDCFC2C2A6A4FF00FFFF00FFFF00FF
        FF00FFC2A6A4FFEEDEE0C5BAC4A099B08682C4A099E0C5BAC5B5A9C3B4A8C2B3
        A7C1B2A6C2A6A4FF00FFFF00FFFF00FFFF00FFC2A6A4FFECDAFFECDAFFECDAFF
        ECDAFFECDAFFECDAB0A296B0A296B0A296B0A296C2A6A4FF00FFFF00FFFF00FF
        FF00FFC2A6A4FFEAD7FFEAD7FFEAD7FFEAD7FFEAD7C9B9ACFBF8F4FBF8F4E6DA
        D9C2A6A4FF00FFFF00FFFF00FFFF00FFFF00FFC2A6A4FFE8D3FFE8D3FFE8D3FF
        E8D3FFE8D3C9B9ACFBF8F4DFCEC7C2A6A4FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFC2A6A4FFE6D0FFE6D0FFE6D0FFE6D0FFE6D0C9B9ACDFCEC7C2A6A4FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC2A6A4C2A6A4C2A6A4C2A6A4C2
        A6A4C2A6A4C2A6A4C2A6A4FF00FFFF00FFFF00FFFF00FFFF00FF}
      OnClick = btn_repClick
    end
    object btn_rep2: TdxBarButton
      Caption = #1054#1090#1095#1077#1090' '#1055#1054' '#1086' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1080' '#1086#1089#1077#1085#1085#1077#1075#1086'/'#1074#1077#1089#1077#1085#1085#1077#1075#1086' '#1086#1089#1084#1086#1090#1088#1072' '
      Category = 0
      HelpContext = 16
      Hint = #1054#1090#1095#1077#1090' '#1055#1054' '#1086' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1080' '#1086#1089#1077#1085#1085#1077#1075#1086'/'#1074#1077#1089#1077#1085#1085#1077#1075#1086' '#1086#1089#1084#1086#1090#1088#1072' '
      Visible = ivNever
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000503
        020C3A1D1988793C1ADA934811ED7F3E16E046221A9D09040517010305070537
        6882075DB0D50263C4E70056B3D8073A6E8C01070D11000000000603020B6A38
        1DBFC4680FFFD16700FFD77A1AFFD6740EFFC96102FF6B3921D3145191C02D97
        F1FF3B9BF3FF2E91F0FF4A9CF1FF0373E6FF0756A5CC01070E1249260F7BD17D
        2BFFDF882DFFFCF4ECFFFDF9F4FFF8E6D4FFE2852BFF776957FF279FFBFF45A9
        F7FFEFF2F4FFEFF2F3FFE9EEF3FF4097F0FF006EE6FF073D74949E5A21DBE89D
        4FFFFDF7F0FFE5AD74FFE09E5BFFDB8E3FFFC8690BFF4B8BBDFF45B7FFFF30A1
        F5FF79C0F8FFE5EDF3FF007AECFF1783ECFF0074EBFF0661BEE3BF7530F0F2B7
        79FFFFFEFCFFFCF5EEFFFBF3EAFFE29A50FFBD640DFF4AA1E2FF52C0FFFF49B2
        F8FFEEF2F4FFF2F3F4FFD9E7F2FF0E83EDFF097DECFF0669CCEFAF6826DAF5B7
        78FFFEFAF4FFE8AA6AFFE59E55FFE49E56FFD7883CFF60A2D4FF5FCEFFFF4CB9
        FDFF9DD6FCFFEAF0F4FF2A9AF2FF2391F0FF1688F0FF0C65BFE35B300677F0B0
        70FFF9C791FFFEFBF7FFFEF8F2FFFAE9D8FFF4BB89FF7A7F78FF4DB5E1FF59BF
        FAFF7FD1FFFFEAF0F4FFE6EFF3FF4CAAF6FF1D8DEEFF09407696070300099757
        18BDF3B779FFFBC48AFFFFCA9AFFA3975EFF2A7210FF0C860BFF048A17FF127E
        30FF3996A3FF6FC9FFFF6DC4FDFF3AA4F3FF1363AED301080F14000000000A05
        000D6A360A88BB6F36D8857936FA008711FF04B41CFF6FD87AFFC8ECC4FF0AB3
        12FF008802FF2A868BFC3089DDDD114A86990109121700000000000000000000
        0000000000000B0B00240A761DF223C54BFFB6EABDFFEEF4E6FFEEF4E5FFA5E4
        ABFF13BC20FF017708F70311122F000000000000000000000000000000000000
        0000000000000027055A23B252FF3CC96BFF59CD76FF4AC862FFBEE6BBFFF3F6
        EAFF35C342FF01A30FFF0121006A000000000000000000000000000000000000
        00000000000006400B7A2EBE63FF29C265FF41C76BFFF0F5E9FFF5F7ECFF79D6
        86FF08B317FF07AD17FF0231058B000000000000000000000000000000000000
        0000000000000431075525B755FF3DC976FFF3F6EDFF98E1B4FFC3E9C7FF19B9
        3AFF12BA29FF09A318FF02210366000000000000000000000000000000000000
        000000000000010D0215169B2FE839C773FFBAECCFFFEDF4E8FFF0F5EAFFACE7
        BEFF1FC245FF097215F10008001B000000000000000000000000000000000000
        000000000000000000000430074C19AB3BF63FC773FF91E1B2FFD3EFD9FF3EC7
        70FF138E2EFA011C025900000000000000000000000000000000000000000000
        0000000000000000000000000000032005330A7118AD0E972BE70E912AE80860
        15B20218033B0000000000000000000000000000000000000000}
      OnClick = btn_rep2Click
    end
    object btn_print: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1072#1082#1090#1072
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1072#1082#1090#1072
      Visible = ivAlways
      ImageIndex = 3
      PaintStyle = psCaptionGlyph
      OnClick = btn_printClick
    end
    object btn_passAkt: TdxBarButton
      Caption = #1057#1076#1072#1090#1100' '#1072#1082#1090
      Category = 0
      Hint = #1057#1076#1072#1090#1100' '#1072#1082#1090
      Visible = ivAlways
      OnClick = btn_passAktClick
    end
    object btn_pdf: TdxBarButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1074' PDF'
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1074' PDF'
      Visible = ivAlways
      OnClick = btn_pdfClick
    end
    object dxbrsbtm1: TdxBarSubItem
      Caption = #1055#1077#1095#1072#1090#1100
      Category = 0
      Visible = ivNever
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_PrintAktEx'
        end>
    end
    object btn_PrintAktEx: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1103
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1103
      Visible = ivAlways
      ImageIndex = 11
      OnClick = btn_PrintAktExClick
    end
  end
  object LSkin1: TdxLayoutLookAndFeelList
    Left = 672
    Top = 65532
    object LCxSkin1: TdxLayoutCxLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetVert = 1
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Blue'
    end
  end
  object ds_osm: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE SHOWHOUSE'
      'SET '
      '    SRVDOG = :SRVDOG,'
      '    SHOWDATE = :SHOWDATE,'
      '    STYPE = :STYPE,'
      '    SYEAR = :SYEAR,'
      '    STATE = :STATE,'
      '    SHOWPRIKAZPO = :SHOWPRIKAZPO,'
      '    GRAPHLIST = :GRAPHLIST'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    SHOWHOUSE'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO SHOWHOUSE('
      '    CODE,'
      '    SRVDOG,'
      '    SHOWDATE,'
      '    STYPE,'
      '    SYEAR,'
      '    STATE,'
      '    SHOWPRIKAZPO,'
      '    GRAPHLIST'
      ')'
      'VALUES('
      '    :CODE,'
      '    :SRVDOG,'
      '    :SHOWDATE,'
      '    :STYPE,'
      '    :SYEAR,'
      '    :STATE,'
      '    :SHOWPRIKAZPO,'
      '    :GRAPHLIST'
      ')')
    RefreshSQL.Strings = (
      'select sh.CODE, sh.SRVDOG, sh.SHOWDATE, sh.STYPE, sh.SYEAR,'
      ' sh.STATE, sd.kontragent, sh.SHOWPRIKAZPO,sp.num,sh.graphlist,'
      'k.name KName'
      'from SHOWHOUSE sh'
      'left outer join srvdog sd on sh.srvdog=sd.code'
      'left outer join showprokazpo sp on sp.code = sh.showprikazpo'
      'left outer join graphlist gl on gl.code=sh.graphlist'
      'left outer join kontragent k on k.code=sd.kontragent'
      ''
      ' WHERE '
      '        SH.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'select sh.CODE, sh.SRVDOG, sh.SHOWDATE, sh.STYPE, sh.SYEAR,'
      ' sh.STATE, sd.kontragent, sh.SHOWPRIKAZPO,sp.num,sh.graphlist,'
      'k.name KName, sh.ALOCK, sd.ATYPE'
      'from SHOWHOUSE sh'
      'left outer join srvdog sd on sh.srvdog=sd.code'
      'left outer join showprokazpo sp on sp.code = sh.showprikazpo'
      'left outer join graphlist gl on gl.code=sh.graphlist'
      'left outer join kontragent k on k.code=sd.kontragent')
    AfterInsert = ds_osmAfterInsert
    BeforePost = ds_osmBeforePost
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 413
    Top = 172
  end
  object src_osm: TDataSource
    DataSet = ds_osm
    Left = 449
    Top = 171
  end
  object mt_type: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 536
    Top = 167
  end
  object mt_state: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 564
    Top = 167
  end
  object src_type: TDataSource
    DataSet = mt_type
    Left = 536
    Top = 195
  end
  object src_state: TDataSource
    DataSet = mt_state
    Left = 564
    Top = 195
  end
  object ds_SrvDog: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT s.CODE, '
      '       s.KONTRAGENT,k.name,'
      '       s.NOMER, '
      '       s.D1, '
      '       s.D2, '
      '       iif(s."ACTIVE"=0,'#39#1085#1077' '#1072#1082#1090#1080#1074#1077#1085#39','#39#1072#1082#1090#1080#1074#1077#1085#39') Act,'
      '       s.DATA'
      'FROM SRVDOG s'
      'left outer join kontragent k on s.kontragent=k.code')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 536
    Top = 120
  end
  object src_srvdog: TDataSource
    DataSet = ds_SrvDog
    Left = 564
    Top = 120
  end
  object ds_HousePlan: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE SHOWHOUSEPLAN'
      'SET '
      '    SHOWHOUSE = :SHOWHOUSE,'
      '    HOUSE = :HOUSE,'
      '    D1 = :D1,'
      '    D2 = :D2,'
      '    SHOWDATE = :SHOWDATE,'
      '    LOCK = :LOCK,'
      '    LOCKDATA = :LOCKDATA'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    SHOWHOUSEPLAN'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO SHOWHOUSEPLAN('
      '    CODE,'
      '    SHOWHOUSE,'
      '    HOUSE,'
      '    D1,'
      '    D2,'
      '    SHOWDATE,'
      '    LOCK,'
      '    LOCKDATA'
      ')'
      'VALUES('
      '    :CODE,'
      '    :SHOWHOUSE,'
      '    :HOUSE,'
      '    :D1,'
      '    :D2,'
      '    :SHOWDATE,'
      '    :LOCK,'
      '    :LOCKDATA'
      ')')
    RefreshSQL.Strings = (
      'select sd.CODE, sd.SHOWHOUSE, sd.HOUSE, sd.D1, sd.D2, '
      '       sd.SHOWDATE,s.name StreetName, sd.lock,'
      '       sd.LOCKDATA '
      'from SHOWHOUSEPLAN sd'
      'left outer join house h on sd.house=h.code'
      'left outer join street s on h.street=s.code'
      ''
      ' WHERE '
      '        SD.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'select sd.CODE, sd.SHOWHOUSE, sd.HOUSE,h.Nomer, sd.D1, sd.D2,'
      '       sd.SHOWDATE,s.name StreetName, sd.lock,'
      '       sd.LOCKDATA,'
      
        '       iif((select first 1 postate from showresult where postate' +
        ' >0'
      
        '            and SHOWHOUSE=:HousePlan and house= sd.HOUSE) is nul' +
        'l, 0,1) stat'
      'from SHOWHOUSEPLAN sd'
      'left outer join house h on sd.house=h.code'
      'left outer join street s on h.street=s.code')
    BeforePost = ds_HousePlanBeforePost
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 32
    Top = 416
  end
  object src_HousePlan: TDataSource
    DataSet = ds_HousePlan
    Left = 63
    Top = 416
  end
  object ds_house: TpFIBDataSet
    SelectSQL.Strings = (
      'select h.CODE, h.NOMER, h.STREET, s.name'
      'from HOUSE h'
      'left outer join street s on h.street=s.code')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 216
    Top = 416
  end
  object src_house: TDataSource
    DataSet = ds_house
    Left = 260
    Top = 415
  end
  object frReport: TfrxReport
    Version = '4.15.10'
    DataSetName = 'usds'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40561.913060613400000000
    ReportOptions.LastChange = 41407.509875983800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure SubdetailData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                  '
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  AType :string;                                        '
      'begin'
      
        '   //'#1086#1090#1082#1088#1099#1090#1100' '#1079#1072#1087#1088#1086#1089' '#1087#1086' '#1076#1086#1084#1091' '#1089' '#1087#1072#1088#1072#1084#1077#1090#1088#1086#1084' Report.variables['#39'varHo' +
        'useCod'#39'];'
      
        '  QHouse.ParamByName('#39'CODE'#39').Value:=Report.variables['#39'varHouseCo' +
        'd'#39'];'
      '  QHouse.Open;'
      
        '   if Report.variables['#39'varASType'#39']='#39#1074#1077#1089#1085#1072#39' then AType:='#39#1074#1077#1089#1077#1085#1085#1077 +
        #1075#1086' '#1086#1089#1084#1086#1090#1088#1072#39' else                    '
      
        '   if Report.variables['#39'varASType'#39']='#39#1086#1089#1077#1085#1100#39' then AType:='#39#1086#1089#1077#1085#1085#1077#1075 +
        #1086' '#1086#1089#1084#1086#1090#1088#1072#39'  else               '
      
        '   if Report.variables['#39'varASType'#39']='#39#1074#1085#1077#1087#1083#1072#1085#1086#1074#1099#1081#39' then AType:='#39#1074 +
        #1085#1077#1087#1083#1072#1085#1086#1074#1086#1075#1086' '#1086#1089#1084#1086#1090#1088#1072#39' else'
      
        '                                                 AType:='#39#1086#1073#1097#1077#1075#1086' ' +
        #1086#1089#1077#1085#1085#1077#1075#1086'/'#1074#1077#1089#1077#1085#1085#1077#1075#1086' '#1086#1089#1084#1086#1090#1088#1072#39';                 '
      '  if Report.variables['#39'varSType'#39']=0 then'
      '  begin      '
      '   Memo3.text:='#39#1040#1082#1090#39'+#13+    '
      '               AType+#13+    '
      
        '               '#39#1089#1090#1088#1086#1080#1090#1077#1083#1100#1085#1099#1093' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1081' '#1080' '#1080#1085#1078#1077#1085#1077#1088#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072 +
        #1085#1080#1103#39';    '
      '  '
      '   Report.Variables['#39'varRole'#39']:=#39+'#39#1089#1090'.'#1084#1077#1085#1077#1076#1078#1077#1088#1072' '#1057#1069#39'+#39;  '
      
        '   Memo19.text:='#39#1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1086#1089#1084#1086#1090#1088#1072' '#1089#1090#1088#1086#1080#1090#1077#1083#1100#1085#1099#1093' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1081' '#1080' '#1080 +
        #1085#1078#1077#1085#1077#1088#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103'.'#39
      '  end;'
      '  if Report.variables['#39'varSType'#39']=1 then      '
      
        '  begin                                                         ' +
        '         '
      '   Memo3.text:='#39#1040#1082#1090#39'+#13+                  '
      '               AType+#13+     '
      
        '               '#39#1080#1085#1078#1077#1085#1077#1088#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' ('#1101#1083#1077#1082#1090#1088#1080#1095#1077#1089#1082#1072#1103' '#1095#1072#1089#1090#1100')'#39';' +
        '    '
      '          '
      
        '   Memo19.text:='#39#1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1086#1089#1084#1086#1090#1088#1072' '#1080#1085#1078#1077#1085#1077#1088#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' ('#1101#1083 +
        #1077#1082#1090#1088#1086#1090#1077#1093#1085#1080#1095#1077#1089#1082#1072#1103' '#1095#1072#1089#1090#1100').'#39';'
      
        '   Report.Variables['#39'varRole'#39']:=#39+'#39#1101#1085#1077#1088#1075#1077#1090#1080#1082' '#1057#1069#39'+#39;         ' +
        '                                            '
      
        '   Report.variables['#39'varMSE'#39']:=#39+'#39#1057#1091#1074#1086#1088#1086#1074' '#1054#1083#1077#1075' '#1051#1077#1086#1085#1080#1076#1086#1074#1080#1095#39'+#39' +
        ';                             '
      '  end;'
      '  if Report.variables['#39'varSType'#39']=3 then'
      '  begin      '
      '   Memo3.text:='#39#1040#1082#1090#39'+#13+    '
      '               AType+#13+    '
      
        '               '#39#1080#1085#1078#1077#1085#1077#1088#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' ('#1074#1085#1091#1090#1088#1080#1076#1086#1084#1086#1074#1086#1077' '#1075#1072#1079#1086#1074#1086#1077' ' +
        #1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077')'#39';    '
      '  '
      '   Report.Variables['#39'varRole'#39']:=#39+'#39#1084#1077#1085#1077#1076#1078#1077#1088' '#1057#1069#39'+#39;'
      
        '   Report.variables['#39'varMSE'#39']:=#39+'#39#1054#1089#1080#1087#1077#1085#1082#1086' '#1040#1085#1090#1086#1085' '#1057#1077#1088#1075#1077#1077#1074#1080#1095#39'+#3' +
        '9;       '
      
        '   Memo19.text:='#39#1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1086#1089#1084#1086#1090#1088#1072' '#1080#1085#1078#1077#1085#1077#1088#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' ('#1074#1085 +
        #1091#1090#1088#1080#1076#1086#1084#1086#1074#1086#1077' '#1075#1072#1079#1086#1074#1086#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077').'#39
      '  end;'
      '  if Report.variables['#39'varSType'#39']=2 then'
      '  begin      '
      '   Memo3.text:='#39#1040#1082#1090#39'+#13+    '
      '               AType+#13+    '
      
        '               '#39#1080#1085#1078#1077#1085#1077#1088#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' ('#1051#1080#1092#1090#1086#1074#1086#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077')' +
        #39';    '
      '  '
      '   Report.Variables['#39'varRole'#39']:=#39+'#39#1084#1077#1085#1077#1076#1078#1077#1088' '#1057#1069#39'+#39;'
      
        '   Report.variables['#39'varMSE'#39']:=#39+'#39#1054#1089#1080#1087#1077#1085#1082#1086' '#1040#1085#1090#1086#1085' '#1057#1077#1088#1075#1077#1077#1074#1080#1095#39'+#3' +
        '9;       '
      
        '   Memo19.text:='#39#1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1086#1089#1084#1086#1090#1088#1072' '#1080#1085#1078#1077#1085#1077#1088#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' ('#1051#1080 +
        #1092#1090#1086#1074#1086#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077').'#39
      '  end;      '
      
        '  FIBQuery1.ParamByName('#39'House'#39').Value:=Report.variables['#39'varHou' +
        'seCod'#39'];'
      
        '  FIBQuery1.ParamByName('#39'shouse'#39').Value:=Report.variables['#39'varAk' +
        't'#39'];'
      '  FIBQuery1.Open;'
      '  if FIBQuery1.FieldByName('#39'SHOWDATE'#39').AsVariant=null then'
      '  memo4.text:='#39#39' else'
      
        '  memo4.text:='#39#1044#1072#1090#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#39'+FIBQuery1.FieldByName('#39'SHOWDATE' +
        #39').AsString;'
      '  // [VarToStr([IIF(<QHouse."WALL"><>0,<QHouse."WALL">,'#39#39')])]'
      
        ' // fio.ParamByName('#39'cod'#39').Value:=Report.variables['#39'varHouseCod'#39 +
        '];'
      '//  fio.Open;'
      '  '
      'end;  '
      '  '
      'procedure Page2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Q_Struct.ParamByName('#39'stp'#39').Value:=Report.variables['#39'varSType'#39 +
        '];                          '
      
        '  Q3.ParamByName('#39'house'#39').Value:=Report.variables['#39'varHouseCod'#39']' +
        ';'
      '  Q3.ParamByName('#39'shouse'#39').Value:=Report.variables['#39'varAkt'#39'];'
      '  Q3.ParamByName('#39'stp'#39').Value:=Report.variables['#39'varSType'#39'];'
      ''
      
        '  Q4.ParamByName('#39'house'#39').Value:=Report.variables['#39'varHouseCod'#39']' +
        ';'
      '  Q4.ParamByName('#39'shouse'#39').Value:=Report.variables['#39'varAkt'#39'];'
      
        '  Q4.ParamByName('#39'stp'#39').Value:=Report.variables['#39'varSType'#39'];    ' +
        '  '
      '  {if Q3.recordcount = 0 then'
      '  memo22.text:='#39#1091#1090#1074#1077#1088#1076#1080#1090#1077#1083#1100#1085#1086#39' else'
      '  memo22.text:='#39#39';}'
      
        '                                                                ' +
        '                                                           '
      'end;'
      ''
      'procedure Memo15OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if <Q3."NUM"> > 0 then'
      '    Memo15.text:='#39#39' else'
      '    //Memo15.text:='#39'<font color="#059E00">'#1091#1090#1074#1077#1088#1076#1080#1090#1077#1083#1100#1085#1086'</font>'#39';'
      
        '    Memo15.text:='#39'<font color=green>'#1091#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1086'</font>'#39';  ' +
        '      '
      'end;'
      ''
      'procedure Memo71OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   if <Q5."NUM"> > 0 then                        '
      '    Memo71.text:='#39#39' else'
      '    Memo71.text:='#39'<font color=green>'#1091#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1086'</font>'#39';  '
      'end;  '
      '  '
      'procedure Memo18OnBeforePrint(Sender: TfrxComponent);'
      'var '
      
        '  en,flor,flat,typ :string;                                     ' +
        '              '
      'begin'
      '  if <Q3."ENTRANCE"> <> 0 then'
      
        '  en:='#39#1087#1076'.'#39'+VarToStr(<Q3."ENTRANCE">) else en:='#39#39';              ' +
        '                     '
      '  if <Q3."FLOOR"> <> 0 then'
      
        '  flor:='#39' '#1101#1090#1072#1078#39'+VarToStr(<Q3."FLOOR">)+'#39' '#39' else flor:='#39#39';       ' +
        '                                     '
      '  //Memo18.Text:=Memo18.Text+'#39' '#1101#1090#1072#1078' '#39'+VarToStr(<Q3."FLOOR">);  '
      '  if (<Q3."FLAT"> <> '#39#39') and (<Q3."FLAT"> <> '#39#1085#1077' '#1091#1082#1072#1079#1072#1085#1072#39') then'
      '  flat:='#39' '#1082#1074'.'#39'+<Q3."FLAT">+'#39' '#39' else flat:='#39#39';;            '
      '  //Memo18.Text:=Memo18.Text+'#39' '#1082#1074'. '#39'+<Q3."FLAT">;'
      '  if <Q3."ACOD">=0 then typ:='#39#39' else'
      '                        typ:=<Q3."ATYPE">;                '
      '  Memo18.Text:=en+flor+flat+'#39'  '#39'+typ;                     '
      'end;'
      ''
      'procedure Memo21OnBeforePrint(Sender: TfrxComponent);'
      ''
      '  procedure ClearTO;'
      '  begin'
      '    Memo21.Text:='#39#39';'
      '    Memo17.Text:='#39#39';'
      '    Memo10.Text:='#39#39';        '
      '  end;            '
      'begin'
      '  if <Q3."RCod">=0 then'
      '  begin'
      '    ClearTO;  '
      '    Memo21.Text:=<Q3."RTYPE">;                       '
      '  end;'
      '  if <Q3."RCod">=1 then'
      '  begin'
      '    ClearTO;  '
      '    Memo17.Text:=<Q3."RTYPE">;                       '
      '  end;  '
      '  if <Q3."RCod">=2 then'
      '  begin'
      '    ClearTO;  '
      '    Memo10.Text:=<Q3."RTYPE">;'
      '   if <Q3."QUANTITY">=0 then'
      '   begin               '
      '    Q3MLISTED1.Text:='#39#39';'
      '    Q3QUANTITY1.Text:='#39#39';                '
      '   end;             '
      '  end;        '
      'end;'
      ''
      'procedure Memo74OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <Q5."RCod">=1 then'
      '  begin  '
      '    Memo74.Text:=<Q5."RTYPE">;                       '
      '  end;  '
      '  if <Q5."RCod">=2 then'
      '  begin  '
      '    Memo73.Text:=<Q5."RTYPE">;                       '
      '  end;  '
      'end;  '
      ''
      'procedure Page5OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '              '
      'end;'
      '  '
      'procedure Page4OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Q_Struct.ParamByName('#39'stp'#39').Value:=Report.variables['#39'varSType'#39 +
        '];                          '
      
        '  Q5.ParamByName('#39'house'#39').Value:=Report.variables['#39'varHouseCod'#39']' +
        ';'
      '  Q5.ParamByName('#39'shouse'#39').Value:=Report.variables['#39'varAkt'#39'];'
      '  Q5.ParamByName('#39'stp'#39').Value:=Report.variables['#39'varSType'#39'];'
      
        ' // ShowMessage(Report.variables['#39'varHouseCod'#39'] +'#39' '#39'+Report.vari' +
        'ables['#39'varAkt'#39']+'#39' '#39'+Report.variables['#39'varSType'#39']);              ' +
        '              '
      
        '   //'#1086#1090#1082#1088#1099#1090#1100' '#1079#1072#1087#1088#1086#1089' '#1087#1086' '#1076#1086#1084#1091' '#1089' '#1087#1072#1088#1072#1084#1077#1090#1088#1086#1084' Report.variables['#39'varHo' +
        'useCod'#39'];'
      
        '  QHouse.ParamByName('#39'CODE'#39').Value:=Report.variables['#39'varHouseCo' +
        'd'#39'];'
      '  QHouse.Open;        '
      'end;'
      ''
      'begin'
      '  if Report.variables['#39'varRep'#39']=1 then'
      '  begin'
      '   Page1.Visible:=true;'
      '   Page2.Visible:=true;'
      '   //Page3.Visible:=true;'
      '   Page4.Visible:=false;'
      '   Page5.Visible:=false;  '
      '  end else'
      '  begin'
      '   Page1.Visible:=false;'
      '   Page2.Visible:=false;'
      '   //Page3.Visible:=false;'
      '   Page4.Visible:=true;'
      '   Page5.Visible:=true;  '
      '  end;            '
      'end.')
    OnStartReport = 'frOnStartReport'
    Left = 320
    Top = 400
    Datasets = <
      item
        DataSet = frReport.dom
        DataSetName = 'dom'
      end
      item
        DataSet = frds_1
        DataSetName = 'ds_kr'
      end
      item
        DataSet = frReport.FIBQuery1
        DataSetName = 'FIBQuery1'
      end
      item
        DataSet = frReport.fio
        DataSetName = 'fio'
      end
      item
        DataSet = frReport.Gl
        DataSetName = 'Gl'
      end
      item
        DataSet = frReport.Q_KR
        DataSetName = 'Q_KR'
      end
      item
        DataSet = frReport.Q_TO
        DataSetName = 'Q_TO'
      end
      item
        DataSet = frReport.Q_TR
        DataSetName = 'Q_TR'
      end
      item
        DataSet = frReport.Q_zam
        DataSetName = 'Q_zam'
      end
      item
        DataSet = frReport.Q3
        DataSetName = 'Q3'
      end
      item
        DataSet = frReport.Q4
        DataSetName = 'Q4'
      end
      item
        DataSet = frReport.Q5
        DataSetName = 'Q5'
      end
      item
        DataSet = frReport.QDef
        DataSetName = 'QDef'
      end
      item
        DataSet = frReport.QHouse
        DataSetName = 'QHouse'
      end
      item
        DataSet = frReport.Q_Struct
        DataSetName = 'QStruct'
      end
      item
        DataSet = frReport.street
        DataSetName = 'street'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'name1'
        Value = Null
      end
      item
        Name = 'ttt'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object FIBDatabase1: TfrxFIBDatabase
        LoginPrompt = False
        Params.Strings = (
          'user_name=sysdba'
          'password=victris'
          'sql_role_name=')
        SQLDialect = 3
        pLeft = 100
        pTop = 148
      end
      object FIBQuery1: TfrxFIBQuery
        UserName = 'FIBQuery1'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'shouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'SELECT SHOWDATE'
          'FROM SHOWHOUSEPLAN'
          
            'where SHOWHOUSE=:shouse and HOUSE=:house                        ' +
            '                 ')
        Database = frReport.FIBDatabase1
        pLeft = 200
        pTop = 244
        Parameters = <
          item
            Name = 'shouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end>
      end
      object Q_Struct: TfrxFIBQuery
        UserName = 'QStruct'
        CloseDataSource = True
        FieldAliases.Strings = (
          'CODE=CODE'
          'NAME=NAME'
          'STYPE=STYPE'
          'NUM=NUM')
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'stp'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'select CODE, NAME, STYPE, NUM'
          'from SHOWSTRUCT'
          'where stype=:stp                           '
          'order by num  ')
        Database = frReport.FIBDatabase1
        pLeft = 100
        pTop = 244
        Parameters = <
          item
            Name = 'stp'
            DataType = ftUnknown
          end>
      end
      object QDef: TfrxFIBQuery
        UserName = 'QDef'
        CloseDataSource = True
        FieldAliases.Strings = (
          'CODE=CODE'
          'SHOWSTRUCT=SHOWSTRUCT'
          'NAME=NAME'
          'NUM=NUM'
          'ED=ED')
        BCDToCurrency = False
        Master = frReport.Q_Struct
        IgnoreDupParams = False
        Params = <>
        SQL.Strings = (
          '                                             ')
        Database = frReport.FIBDatabase1
        pLeft = 100
        pTop = 292
        Parameters = <>
      end
      object Q3: TfrxFIBQuery
        UserName = 'Q3'
        CloseDataSource = True
        FieldAliases.Strings = (
          'STRUCTDEFECT=STRUCTDEFECT'
          'NUM=NUM'
          'NAME=NAME'
          'ED=ED'
          'MLIST=MLIST'
          'MLISTNAME=MLISTNAME'
          'QUANTITY=QUANTITY'
          'MLISTED=MLISTED'
          'NOTE=NOTE'
          'ENTRANCE=ENTRANCE'
          'FLOOR=FLOOR'
          'FLAT=FLAT'
          'MNOTE=MNOTE'
          'RTYPE=RTYPE'
          'RCOD=RCOD'
          'ATYPE=ATYPE'
          'ACOD=ACOD')
        BCDToCurrency = False
        Master = frReport.QDef
        IgnoreDupParams = False
        Params = <
          item
            Name = 'shouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end
          item
            Name = 'mas_code'
            DataType = ftUnknown
          end
          item
            Name = 'stp'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          
            'select sr.structdefect,sd.num,sd.name,sd.ed, sr.mlist,m.name Mli' +
            'stName,sr.quantity,'
          
            '/*iif(m.ed is null, sd.ed,m.ed)*/ m.ed MlistEd, sr.note, sr.entr' +
            'ance,sr."FLOOR",sr.flat,'
          'sr.MNOTE,                '
          '  case'
          '    when sr.rtype = 0 then '#39#1058#1054#39
          '    when sr.rtype = 1 then '#39#1058#1056#39
          '    when sr.rtype = 2 then '#39#1050#1056#39
          '    else '#39' '#39' '
          '  end RTYPE,sr.rtype RCod,               '
          '  case'
          '    when sr.atype = 0 then '#39#1085#1077' '#1091#1082#1072#1079#1072#1085#39
          '    when sr.atype = 1 then '#39#1091#1083#1080#1095#1085#1099#1081' '#1092#1072#1089#1072#1076#39
          '    when sr.atype = 2 then '#39#1076#1074#1086#1088#1086#1074#1086#1081' '#1092#1072#1089#1072#1076#39
          '    when sr.atype = 3 then '#39#1090#1086#1088#1077#1094' '#1079#1076#1072#1085#1080#1103#39
          '    else '#39#1086#1096#1080#1073#1082#1072' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1080#1103'!!'#39' '
          
            '  end ATYPE, sr.atype ACod                                      ' +
            ' '
          'from SHOWRESULT sr'
          'left outer join STRUCTDEFECT sd on sr.structdefect=sd.code'
          'left outer join showstruct ss on sd.showstruct=ss.code'
          'left outer join mlist m on sr.mlist=m.code'
          'where sr.SHOWHOUSE=:shouse'
          '      and sr.house=:house'
          '      and sr.structdefect=:mas_code'
          
            '      and ss.stype=:stp --'#1090#1080#1087' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1080' 0 - '#1089#1090#1088#1086#1077#1085#1080#1103' 1 - '#1077#1083#1077#1082#1090 +
            #1088#1080#1082#1072
          ''
          
            'order by sr.mlist, sr.entrance, sr."FLOOR"                      ' +
            '        ')
        Database = frReport.FIBDatabase1
        pLeft = 100
        pTop = 344
        Parameters = <
          item
            Name = 'shouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end
          item
            Name = 'mas_code'
            DataType = ftUnknown
          end
          item
            Name = 'stp'
            DataType = ftUnknown
          end>
      end
      object QHouse: TfrxFIBQuery
        UserName = 'QHouse'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'CODE'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'SELECT CODE, '
          '       NOMER, '
          '       STREET, '
          '       DU, '
          '       TOTAL_SQ, '
          '       LIVING_SQ, '
          '       LODGER_CNT, '
          '       CELLAR_SQ, '
          '       FLAT_CNT, '
          '       ACCCODE_CNT, '
          '       FLOOR_CNT, '
          '       LIFT_CNT, '
          '       ENTRANCE_CNT, '
          '       GARBAGE_CNT, '
          '       COMMERCE_SQ, '
          '       BUILDYEAR, '
          '       "ACTIVE", '
          '       BUDGET, '
          '       MSE, '
          '       USERNAME, '
          '       LASTTIME, '
          '       LAST_KR, '
          '        (case Wall'
          '           when 0 then '#39#1055#1072#1085#1077#1083#1100#1085#1099#1077#39
          '           when 1 then '#39#1050#1088#1091#1087#1085#1086#1073#1083#1086#1095#1085#1099#1077#39
          '           when 2 then '#39#1064#1083#1072#1082#1086#1073#1083#1086#1095#1085#1099#1077#39
          '           when 2 then '#39#1050#1080#1088#1087#1080#1095#1085#1099#1077#39
          '           else '#39#39
          '        end) Wall'
          'FROM HOUSE '
          ''
          'where CODE=:CODE')
        Database = frReport.FIBDatabase1
        pLeft = 200
        pTop = 292
        Parameters = <
          item
            Name = 'CODE'
            DataType = ftUnknown
          end>
      end
      object fio: TfrxFIBQuery
        UserName = 'fio'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'cod'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          '/*SELECT (p.f||'#39' '#39'||p.i||'#39' '#39'||p.o) mse,'
          '       (p1.f||'#39' '#39'||p1.i||'#39' '#39'||p1.o) pse'
          'FROM HOUSE h'
          'left outer join worker w on w.code=h.mse'
          'left outer join worker w1 on w1.code=h.pse'
          'left outer join piple p on p.code=w.piple'
          'left outer join piple p1 on p1.code=w1.piple'
          'where h.code=:cod  */      ')
        Database = frReport.FIBDatabase1
        pLeft = 200
        pTop = 352
        Parameters = <
          item
            Name = 'cod'
            DataType = ftUnknown
          end>
      end
      object street: TfrxFIBQuery
        UserName = 'street'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <>
        SQL.Strings = (
          'select CODE, NAME from STREET'
          'order by name  ')
        Database = frReport.FIBDatabase1
        pLeft = 200
        pTop = 148
        Parameters = <>
      end
      object dom: TfrxFIBQuery
        UserName = 'dom'
        CloseDataSource = True
        BCDToCurrency = False
        Master = frReport.street
        IgnoreDupParams = False
        Params = <
          item
            Name = 'mas_code'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'select CODE, NOMER'
          'from HOUSE'
          'where street = :mas_code  ')
        Database = frReport.FIBDatabase1
        pLeft = 232
        pTop = 148
        Parameters = <
          item
            Name = 'mas_code'
            DataType = ftUnknown
          end>
      end
      object Q4: TfrxFIBQuery
        UserName = 'Q4'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'shouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end
          item
            Name = 'mas_code'
            DataType = ftUnknown
          end
          item
            Name = 'stp'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'select distinct(s.mlist),m.name,s.v,'
          '  case'
          '    when s.rtype = 0 then '#39#1058#1054#39
          '    when s.rtype = 1 then '#39#1058#1056#39
          '    when s.rtype = 2 then '#39#1050#1056#39
          '    else '#39' '#39' '
          '  end RTYP      '
          'from showresult s'
          'left outer join mlist m on s.mlist=m.code'
          'left outer join STRUCTDEFECT sd on s.structdefect=sd.code'
          'left outer join showstruct ss on sd.showstruct=ss.code'
          'where s.SHOWHOUSE=:shouse'
          '      and s.house=:house'
          '    --  and s.structdefect=:mas_code'
          
            '    --  and ss.stype=:stp --'#1090#1080#1087' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1080' 0 - '#1089#1090#1088#1086#1077#1085#1080#1103' 1 - '#1077#1083#1077 +
            #1082#1090#1088#1080#1082#1072
          '      and s.v>0                           '
          'order by 4,s.v  ')
        Database = frReport.FIBDatabase1
        pLeft = 172
        pTop = 444
        Parameters = <
          item
            Name = 'shouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end
          item
            Name = 'mas_code'
            DataType = ftUnknown
          end
          item
            Name = 'stp'
            DataType = ftUnknown
          end>
      end
      object Gl: TfrxFIBQuery
        UserName = 'Gl'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'gl'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'SELECT g.D3 FROM GRAPHSPEC g'
          'where g.GRAPHLIST=:gl and g.HOUSE=:house  ')
        Database = frReport.FIBDatabase1
        pLeft = 208
        pTop = 444
        Parameters = <
          item
            Name = 'gl'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end>
      end
      object Q_zam: TfrxFIBQuery
        UserName = 'Q_zam'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'sh'
            DataType = ftUnknown
          end
          item
            Name = 'h'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          ' select SR.PONOTE from SHOWRESULT SR'
          ' where SR.SHOWHOUSE=:sh and SR.HOUSE=:h'
          ' and SR.POSTATE in(1,2)                ')
        Database = frReport.FIBDatabase1
        pLeft = 100
        pTop = 448
        Parameters = <
          item
            Name = 'sh'
            DataType = ftUnknown
          end
          item
            Name = 'h'
            DataType = ftUnknown
          end>
      end
      object Q5: TfrxFIBQuery
        UserName = 'Q5'
        CloseDataSource = True
        BCDToCurrency = False
        Master = frReport.QDef
        IgnoreDupParams = False
        Params = <
          item
            Name = 'shouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end
          item
            Name = 'mas_code'
            DataType = ftUnknown
          end
          item
            Name = 'stp'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          
            'select distinct(sr.mlist),sr.structdefect,sd.num,sd.name,sd.ed, ' +
            'm.name MlistName,sr.quantity,'
          '/*iif(m.ed is null, sd.ed,m.ed)*/ m.ed MlistEd, sr.note,'
          'sr.MNOTE,                '
          '  case'
          '    when sr.rtype = 0 then '#39#1058#1054#39
          '    when sr.rtype = 1 then '#39#1058#1056#39
          '    when sr.rtype = 2 then '#39#1050#1056#39
          '    else '#39' '#39' '
          '  end RTYPE,sr.rtype RCod,               '
          '  case'
          '    when sr.atype = 0 then '#39#1085#1077' '#1091#1082#1072#1079#1072#1085#39
          '    when sr.atype = 1 then '#39#1091#1083#1080#1095#1085#1099#1081' '#1092#1072#1089#1072#1076#39
          '    when sr.atype = 2 then '#39#1076#1074#1086#1088#1086#1074#1086#1081' '#1092#1072#1089#1072#1076#39
          '    when sr.atype = 3 then '#39#1090#1086#1088#1077#1094' '#1079#1076#1072#1085#1080#1103#39
          '    else '#39#1086#1096#1080#1073#1082#1072' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1080#1103'!!'#39' '
          
            '  end ATYPE, sr.atype ACod                                      ' +
            ' '
          'from SHOWRESULT sr'
          'left outer join STRUCTDEFECT sd on sr.structdefect=sd.code'
          'left outer join showstruct ss on sd.showstruct=ss.code'
          'left outer join mlist m on sr.mlist=m.code'
          'where sr.SHOWHOUSE=:shouse'
          '      and sr.house=:house'
          '      and sr.structdefect=:mas_code'
          
            '      and ss.stype=:stp --'#1090#1080#1087' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1080' 0 - '#1089#1090#1088#1086#1077#1085#1080#1103' 1 - '#1077#1083#1077#1082#1090 +
            #1088#1080#1082#1072
          ''
          'order by sr.mlist, sr.entrance, sr."FLOOR"  ')
        Database = frReport.FIBDatabase1
        pLeft = 316
        pTop = 252
        Parameters = <
          item
            Name = 'shouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end
          item
            Name = 'mas_code'
            DataType = ftUnknown
          end
          item
            Name = 'stp'
            DataType = ftUnknown
          end>
      end
      object Q_KR: TfrxFIBQuery
        UserName = 'Q_KR'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'srvHouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'select m.name KR'
          'from showresult s'
          'left outer join mlist m on s.mlist=m.code'
          'left outer join STRUCTDEFECT sd on s.structdefect=sd.code'
          'left outer join showstruct ss on sd.showstruct=ss.code'
          'where s.SHOWHOUSE=:srvHouse and s.house=:house and s.rtype = 2  ')
        Database = frReport.FIBDatabase1
        pLeft = 100
        pTop = 540
        Parameters = <
          item
            Name = 'srvHouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end>
      end
      object Q_TO: TfrxFIBQuery
        UserName = 'Q_TO'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'srvHouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'select m.name STO'
          'from showresult s'
          'left outer join mlist m on s.mlist=m.code'
          'left outer join STRUCTDEFECT sd on s.structdefect=sd.code'
          'left outer join showstruct ss on sd.showstruct=ss.code'
          'where s.SHOWHOUSE=:srvHouse and s.house=:house and s.rtype = 0  ')
        Database = frReport.FIBDatabase1
        pLeft = 140
        pTop = 540
        Parameters = <
          item
            Name = 'srvHouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end>
      end
      object Q_TR: TfrxFIBQuery
        UserName = 'Q_TR'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'srvHouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'select m.name TR, s.v'
          'from showresult s'
          'left outer join mlist m on s.mlist=m.code'
          'left outer join STRUCTDEFECT sd on s.structdefect=sd.code'
          'left outer join showstruct ss on sd.showstruct=ss.code'
          'where s.SHOWHOUSE=:srvHouse and s.house=:house and s.rtype = 1'
          'and s.v>0'
          '  order by s.v  ')
        Database = frReport.FIBDatabase1
        pLeft = 184
        pTop = 540
        Parameters = <
          item
            Name = 'srvHouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end>
      end
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
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        Height = 498.897960000000000000
        Top = 16.000000000000000000
        Width = 1046.929810000000000000
        Stretched = True
        object Memo2: TfrxMemoView
          Width = 1046.929810000000000000
          Height = 128.504020000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            ''
            #1059#1058#1042#1045#1056#1046#1044#1040#1070'  '
            #1054#1054#1054' '#171#1044#1045#1047' '#1050#1072#1083#1080#1085#1080#1085#1089#1082#1086#1075#1086' '#1088#1072#1081#1086#1085#1072#187
            '__________________'#1057#1084#1080#1088#1085#1086#1074' '#1050'.'#1048'.'
            #171'___'#187'___________________20   '#1075'  ')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baWidth
          Top = 128.504020000000000000
          Width = 1046.929810000000000000
          Height = 71.811070000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ''
            #1040#1082#1090
            #1086#1073#1097#1077#1075#1086' '#1086#1089#1077#1085#1085#1077#1075#1086'/'#1074#1077#1089#1077#1085#1085#1077#1075#1086'  '#1086#1089#1084#1086#1090#1088#1072'  '
            #1080#1085#1078#1077#1085#1077#1088#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' ('#1101#1083#1077#1082#1090#1088#1080#1095#1077#1089#1082#1072#1103' '#1095#1072#1089#1090#1100')')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Top = 200.315090000000000000
          Width = 313.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FIBQuery1."SHOWDATE"]  ')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Top = 219.212740000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1044#1086#1084' '#8470)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 49.070810000000000000
          Top = 218.842610000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[varHouse]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 138.637910000000000000
          Top = 219.212740000000000000
          Width = 684.094930000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[varStreet]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 97.385900000000000000
          Top = 219.212740000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ' '#1087#1086' '#1091#1083' ')
          ParentFont = False
        end
        object Rich1: TfrxRichView
          Align = baBottom
          Top = 275.905690000000000000
          Width = 1046.929810000000000000
          Height = 222.992270000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C666E696C5C66636861727365743230347B5C2A5C666E616D652041726961
            6C3B7D417269616C204359523B7D7B5C66315C666E696C5C6663686172736574
            3020417269616C3B7D7D0D0A7B5C2A5C67656E657261746F7220526963686564
            323020362E332E393630307D5C766965776B696E64345C756331200D0A5C7061
            72645C66305C667332305C2763655C2765315C2766395C2765385C276535205C
            2766315C2765325C2765355C2765345C2765355C2765645C2765385C27666620
            5C2765665C276565205C2766315C2766325C2766305C2765655C2765355C2765
            645C2765385C2766653A5C7061720D0A5C2763335C2765655C276534205C2765
            665C2765655C2766315C2766325C2766305C2765655C2765395C2765615C2765
            383A20202020205B51486F7573652E224255494C4459454152225D5C7061720D
            0A5C2763335C2765655C276534205C276538205C2765325C2765385C27653420
            5C2765665C2765655C2766315C2765625C2765355C2765345C2765645C276535
            5C2765335C276565205C2765615C2765305C2765665C2765385C2766325C2765
            305C2765625C2766635C2765645C2765655C2765335C276565205C2766305C27
            65355C2765635C2765655C2765645C2766325C2765303A205B494946283C5148
            6F7573652E224C4153545F4B52223E3C3E302C3C51486F7573652E224C415354
            5F4B52223E2C2727295D5C7061720D0A5B494946283C7661724B523E3C3E2727
            2C3C7661724B523E2C2727295D5C7061720D0A5C2763635C2765305C2766325C
            2765355C2766305C2765385C2765305C276562205C2766315C2766325C276535
            5C2765643A20202020205B566172546F537472283C51486F7573652E2257414C
            4C223E295D5C7061720D0A5C2764375C2765385C2766315C2765625C27656520
            205C2766645C2766325C2765305C2765365C2765355C2765393A20202020205B
            51486F7573652E22464C4F4F525F434E54225D5C7061720D0A5C7061720D0A5C
            2763615C2765655C2765635C2765385C2766315C2766315C2765385C27666620
            5C276532205C2766315C2765655C2766315C2766325C2765305C2765325C2765
            353A5C7061720D0A5C2763665C2766305C2765355C2765345C2766315C276535
            5C2765345C2765305C2766325C2765355C2765625C2766663A5C6220205C6631
            5C6C616E6731303333205B766172526F6C655D5C66305C6C616E673130343920
            205C62305C2763655C2763655C276365205C66315C6C616E67313033335C2761
            625C66305C6C616E67313034395C2763345C2763355C276337205C2763615C27
            65305C2765625C2765385C2765645C2765385C2765645C2766315C2765615C27
            65655C2765335C276565205C2766305C2765305C2765395C2765655C2765645C
            2765305C66315C6C616E67313033335C2762623A205C622020205B7661724D53
            455D205C7061720D0A5C62305C66305C6C616E67313034395C2764375C276562
            5C2765355C2765645C2765655C276532205C2765615C2765655C2765635C2765
            385C2766315C2766315C2765385C2765383A5C7061720D0A5C2763665C276630
            5C2765355C2765345C2766315C2766325C2765305C2765325C2765385C276632
            5C2765355C2765625C27666620285C2765345C2765655C2765625C2765365C27
            65645C2765655C2766315C2766325C276663292020202020202020205B566172
            546F537472283C7661724B6F6E74724E616D653E295D3A205C66315C6C616E67
            3130333320205C625C66305C6C616E673130343920205B7661725053455D5C66
            315C6C616E673130333320205C62305C66305C6C616E67313034395C7061720D
            0A5C2763665C2766305C2765355C2765345C2766315C2766325C2765305C2765
            325C2765385C2766325C2765355C2765625C276666205C2766315C2765655C27
            65315C2766315C2766325C2765325C2765355C2765645C2765645C2765385C27
            65615C2765655C276532205C2763635C2763615C276334205F5C66315C6C616E
            6731303333205F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5C66305C6C
            616E6731303439205F5F5F5F5F5F5C2764342E5C2763382E5C2763652E205C27
            65665C2766305C2765655C2765365C2765385C2765325C2765305C2766655C27
            66395C2765355C2765335C276565205C2765665C276565205C2765305C276534
            5C2766305C2765355C2766315C2766333A205C2766335C2765622E205F5F5F5C
            66315C6C616E6731303333205F5F5F5F5F5F5F5F5F5F5C66305C6C616E673130
            3439205F5F5F5F5F5F5F5F5F5F5F5F5F2C205C2765345C2765655C276563205C
            276239205F5F5F5F2C205C2765615C2765322E5C276239205F5F5F2E5C706172
            0D0A5C2763665C2766305C2765655C2765385C2765375C2765325C2765355C27
            65625C276530205C2765655C2766315C2765635C2765655C2766325C27663020
            5C2765325C2766625C2766385C2765355C2766335C2765615C2765305C276537
            5C2765305C2765645C2765645C2765655C2765335C276565205C2766315C2766
            325C2766305C2765655C2765355C2765645C2765385C276666205C276538205C
            2766335C2766315C2766325C2765305C2765645C2765655C2765325C2765385C
            2765625C276530205C2766315C2765625C2765355C2765345C2766335C276665
            5C2766395C2765355C2765353A5C667331365C7061720D0A7D0D0A00}
        end
      end
      object Memo19: TfrxMemoView
        Align = baBottom
        Top = 691.653989999999900000
        Width = 1046.929810000000000000
        Height = 26.456710000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          
            #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1086#1089#1084#1086#1090#1088#1072' '#1080#1085#1078#1077#1085#1077#1088#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' ('#1101#1083#1077#1082#1090#1088#1080#1095#1077#1089#1082#1072#1103' '#1095#1072#1089#1090#1100 +
            ').')
        ParentFont = False
      end
    end
    object Page2: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page2OnBeforePrint'
      object PageHeader1: TfrxPageHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 13.228297640000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        PrintOnFirstPage = False
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 204.094620000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frReport.Q_Struct
        DataSetName = 'QStruct'
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        OnMasterDetail = 'MasterData1OnMasterDetail'
        object QStructNAME: TfrxMemoView
          Left = 22.677180000000000000
          Width = 1023.496062990000000000
          Height = 18.897650000000000000
          OnAfterPrint = 'QStructNAMEOnAfterPrint'
          ShowHint = False
          DataField = 'NAME'
          DataSet = frReport.Q_Struct
          DataSetName = 'QStruct'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[QStruct."NAME"]')
          ParentFont = False
        end
        object QStructNUM: TfrxMemoView
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NUM'
          DataSet = frReport.Q_Struct
          DataSetName = 'QStruct'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            '[QStruct."NUM"]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        Height = 18.897650000000000000
        Top = 245.669450000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'DetailData1OnBeforePrint'
        DataSet = frReport.QDef
        DataSetName = 'QDef'
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object QDefNAME: TfrxMemoView
          Left = 3.779530000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'QDefNAMEOnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frReport.QDef
          DataSetName = 'QDef'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '-[QDef."NAME"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 185.220343070000000000
          Width = 187.086614170000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo15OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          AllowHTMLTags = True
          DataSet = frReport.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 909.732283460000000000
          Width = 136.818897640000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frReport.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 504.566929130000000000
          Width = 109.606299210000000000
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
        object Memo22: TfrxMemoView
          Left = 371.905511810000000000
          Width = 132.283464570000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo22OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 701.102362200000000000
          Width = 208.629921260000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frReport.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 648.299630000000000000
          Width = 52.913385830000000000
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
        object Memo31: TfrxMemoView
          Left = 614.173228350000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
      end
      object SubdetailData1: TfrxSubdetailData
        Height = 18.897650000000000000
        Top = 287.244280000000000000
        Width = 1046.929810000000000000
        OnAfterPrint = 'SubdetailData1OnAfterPrint'
        OnBeforePrint = 'SubdetailData1OnBeforePrint'
        DataSet = frReport.Q3
        DataSetName = 'Q3'
        KeepTogether = True
        RowCount = 0
        Stretched = True
        OnMasterDetail = 'SubdetailData1OnMasterDetail'
        object Q3MLISTNAME: TfrxMemoView
          Left = 371.905511810000000000
          Width = 132.283464570000000000
          Height = 18.897650000000000000
          OnAfterData = 'Q3MLISTNAMEOnAfterData'
          OnBeforePrint = 'Q3MLISTNAMEOnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frReport.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q3."MLISTNAME"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 185.236108190000000000
          Width = 187.086614170000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NOTE'
          DataSet = frReport.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q3."NOTE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 504.566929130000000000
          Width = 109.606299210000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'MNOTE'
          DataSet = frReport.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q3."MNOTE"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 701.102362200000000000
          Top = 0.118119999999976200
          Width = 208.629921260000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo18OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frReport.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Q3MLISTED1: TfrxMemoView
          Left = 614.173228350000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'MLISTED'
          DataSet = frReport.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q3."MLISTED"]')
          ParentFont = False
        end
        object Q3QUANTITY1: TfrxMemoView
          Left = 648.188976380000000000
          Width = 52.913385830000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frReport.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[IIF(<Q3."QUANTITY">=0,'#39#39',<Q3."QUANTITY">)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 1000.440944880000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 955.221090000000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 909.732283460000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo21OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
      end
      object MasterData4: TfrxMasterData
        Height = 18.897637800000000000
        Top = 408.189240000000000000
        Width = 1046.929810000000000000
        DataSet = frds_1
        DataSetName = 'ds_kr'
        RowCount = 0
        Stretched = True
        object Memo96: TfrxMemoView
          Align = baLeft
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'KR'
          DataSet = frds_1
          DataSetName = 'ds_kr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_kr."KR"]')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Align = baLeft
          Left = 381.732530000000000000
          Width = 309.921460000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'TR'
          DataSet = frds_1
          DataSetName = 'ds_kr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_kr."TR"]')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Align = baLeft
          Left = 340.157700000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'V'
          DataSet = frds_1
          DataSetName = 'ds_kr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_kr."V"]')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          Align = baLeft
          Left = 691.653990000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'TO'
          DataSet = frds_1
          DataSetName = 'ds_kr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_kr."TO"]')
          ParentFont = False
        end
      end
      object Header4: TfrxHeader
        Height = 56.692950000000000000
        Top = 328.819110000000000000
        Width = 1046.929810000000000000
        object Memo82: TfrxMemoView
          Left = 294.803340000000000000
          Top = 11.338590000000010000
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1042#1099#1074#1086#1076#1099' '#1080' '#1087#1088#1077#1076#1083#1086#1078#1077#1085#1080#1103' '#1087#1086' '#1092#1072#1082#1090#1091' '#1075#1086#1090#1086#1074#1085#1086#1089#1090#1080' '#1079#1076#1072#1085#1080#1103' '#1082' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1080':')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Align = baLeft
          Top = 37.795300000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16777180
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1072#1087#1080#1090#1072#1083#1100#1085#1099#1081' '#1088#1077#1084#1086#1085#1090)
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Align = baLeft
          Left = 691.653990000000000000
          Top = 37.795300000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16777180
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1077#1093#1085#1080#1095#1077#1089#1082#1086#1077' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077)
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Align = baLeft
          Left = 340.157700000000000000
          Top = 37.795300000000000000
          Width = 351.496290000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16777180
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1077#1082#1091#1097#1080#1081' '#1088#1077#1084#1086#1085#1090)
          ParentFont = False
        end
      end
      object ReportSummary3: TfrxReportSummary
        Height = 181.417147090000000000
        Top = 597.165740000000000000
        Width = 1046.929810000000000000
        object Memo93: TfrxMemoView
          Align = baClient
          Width = 1046.929810000000000000
          Height = 181.417147090000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ''
            #1055#1086#1076#1087#1080#1089#1080' '#1082#1086#1084#1080#1089#1089#1080#1080':'
            
              #1055#1088#1077#1076#1089#1077#1076#1072#1090#1077#1083#1100' '#8211' [varRole]  '#1054#1054#1054' '#171#1044#1045#1047' '#1050#1072#1083#1080#1085#1080#1085#1089#1082#1086#1075#1086' '#1088#1072#1081#1086#1085#1072#187' [varMSE]' +
              '          _____________________________________'
            
              '                                                                ' +
              '                                                                ' +
              '                                                                ' +
              ' '#1087#1086#1076#1087#1080#1089#1100'                                                        ' +
              '                  '#1060'.'#1048'.'#1054'.'
            #1063#1083#1077#1085#1099' '#1082#1086#1084#1080#1089#1089#1080#1080' '
            
              #1048#1085#1078#1077#1085#1077#1088'-'#1082#1091#1088#1072#1090#1086#1088' '#1057#1069' '#1054#1054#1054' '#171#1044#1045#1047' '#1050#1072#1083#1080#1085#1080#1085#1089#1082#1086#1075#1086' '#1088#1072#1081#1086#1085#1072#187'            ____' +
              '____________________              ______________________________' +
              '_______'
            
              '                                                                ' +
              '                                                                ' +
              '                                                                ' +
              ' '#1087#1086#1076#1087#1080#1089#1100'                                                        ' +
              '                  '#1060'.'#1048'.'#1054'.'
            
              #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100' '#1054#1054#1054'___________________________________     _______' +
              '_________________           ____________________________________'
            
              '                                                                ' +
              '    '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'                                    ' +
              '                                         '#1087#1086#1076#1087#1080#1089#1100'                ' +
              '                                                            '#1060'.'#1048'.' +
              #1054'.'
            
              #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1080#1082#1086#1074' '#1052#1050#1044' _______________________   ______' +
              '__________________         _____________________________________'
            
              '                                                                ' +
              ' '#1040#1076#1088#1077#1089' '#1076#1086#1084#1072', '#8470' '#1082#1074#1072#1088#1090#1080#1088#1099',                                        ' +
              '                                            '#1087#1086#1076#1087#1080#1089#1100'             ' +
              '                                                              '#1060'.' +
              #1048'.'#1054'.')
          ParentFont = False
        end
      end
      object Header3: TfrxHeader
        Height = 86.929133858267700000
        Top = 94.488250000000000000
        Width = 1046.929810000000000000
        object Memo9: TfrxMemoView
          Top = 0.779529999999994100
          Width = 185.196970000000000000
          Height = 86.929190000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1081','
            #1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' '#1080' '#1101#1083#1077#1084#1077#1085#1090#1086#1074' '#1073#1083#1072#1075#1086#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072)
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 185.220360160000000000
          Top = 0.779529999999994100
          Width = 187.086655670000000000
          Height = 86.929190000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1087#1080#1089#1072#1085#1080#1077' '#1076#1077#1092#1077#1082#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 701.157665830000000000
          Top = 1.267716540000009000
          Width = 208.629921260000000000
          Height = 86.929190000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1052#1077#1089#1090#1086' '#1088#1072#1089#1087#1086#1083#1086#1078#1077#1085#1080#1103' '#1076#1077#1092#1077#1082#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 909.866141730000000000
          Top = 0.889763780000009700
          Width = 136.818897640000000000
          Height = 66.141732280000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1077#1096#1077#1085#1080#1077' '#1086' '#1087#1088#1080#1085#1103#1090#1080#1080' '#1084#1077#1088)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 371.748300000000000000
          Top = 1.000000000000000000
          Width = 132.283464570000000000
          Height = 86.929190000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1080#1076' '#1088#1072#1073#1086#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 504.457020000000000000
          Top = 1.000000000000000000
          Width = 109.606370000000000000
          Height = 86.929133860000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1052#1072#1090#1077#1088#1080#1072#1083)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 614.063390000000000000
          Top = 1.000000000000000000
          Width = 34.015672360000000000
          Height = 86.929190000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1045#1076'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 648.079160000000000000
          Top = 1.110233779999987000
          Width = 52.913420000000000000
          Height = 86.929133860000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1073#1098#1077#1084' '#1088#1077#1084#1086#1085#1090#1085#1099#1093' '#1088#1072#1073#1086#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 1000.354950710000000000
          Top = 67.031540000000010000
          Width = 45.354360000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1056)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 955.000620000000000000
          Top = 67.031540000000010000
          Width = 45.354330710000000000
          Height = 20.787401570000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1056)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 909.866730000000000000
          Top = 67.031540000000010000
          Width = 45.354330710000000000
          Height = 20.787401570000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1054)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object M5: TfrxMasterData
        Height = 18.897637800000000000
        Top = 517.795610000000000000
        Width = 1046.929810000000000000
        DataSet = frReport.Q_zam
        DataSetName = 'Q_zam'
        KeepHeader = True
        KeepTogether = True
        RowCount = 0
        object Memo95: TfrxMemoView
          Align = baWidth
          Top = 0.086580000000026300
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frReport.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q_zam."PONOTE"]')
          ParentFont = False
        end
      end
      object H5: TfrxHeader
        Height = 45.354360000000000000
        Top = 449.764070000000000000
        Width = 1046.929810000000000000
        object Memo94: TfrxMemoView
          Align = baWidth
          Top = 22.677180000000020000
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1047#1072#1084#1077#1095#1072#1085#1080#1103' '#1082' '#1072#1082#1090#1091)
          ParentFont = False
        end
      end
    end
    object Page3: TfrxReportPage
      Visible = False
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportSummary1: TfrxReportSummary
        Height = 249.448687090000000000
        Top = 143.622140000000000000
        Width = 1046.929810000000000000
        object Memo20: TfrxMemoView
          Align = baClient
          Width = 1046.929810000000000000
          Height = 249.448687090000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ''
            #1055#1086#1076#1087#1080#1089#1080' '#1082#1086#1084#1080#1089#1089#1080#1080':'
            ''
            
              #1055#1088#1077#1076#1089#1077#1076#1072#1090#1077#1083#1100' '#8211' [varRole]  '#1054#1054#1054' '#171#1044#1045#1047' '#1050#1072#1083#1080#1085#1080#1085#1089#1082#1086#1075#1086' '#1088#1072#1081#1086#1085#1072#187' [varMSE]' +
              '          _____________________________________'
            
              '                                                                ' +
              '                                                                ' +
              '                                                                ' +
              ' '#1087#1086#1076#1087#1080#1089#1100'                                                        ' +
              '                  '#1060'.'#1048'.'#1054'.'
            #1063#1083#1077#1085#1099' '#1082#1086#1084#1080#1089#1089#1080#1080' '
            
              #1048#1085#1078#1077#1085#1077#1088'-'#1082#1091#1088#1072#1090#1086#1088' '#1057#1069' '#1054#1054#1054' '#171#1044#1045#1047' '#1050#1072#1083#1080#1085#1080#1085#1089#1082#1086#1075#1086' '#1088#1072#1081#1086#1085#1072#187'            ____' +
              '____________________              ______________________________' +
              '_______'
            
              '                                                                ' +
              '                                                                ' +
              '                                                                ' +
              ' '#1087#1086#1076#1087#1080#1089#1100'                                                        ' +
              '                  '#1060'.'#1048'.'#1054'.'
            ''
            
              #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100' '#1054#1054#1054'___________________________________     _______' +
              '_________________           ____________________________________'
            
              '                                                                ' +
              '    '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'                                    ' +
              '                                         '#1087#1086#1076#1087#1080#1089#1100'                ' +
              '                                                            '#1060'.'#1048'.' +
              #1054'.'
            ''
            ''
            
              #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1080#1082#1086#1074' '#1052#1050#1044' _______________________   ______' +
              '__________________         _____________________________________'
            
              '                                                                ' +
              ' '#1040#1076#1088#1077#1089' '#1076#1086#1084#1072', '#8470' '#1082#1074#1072#1088#1090#1080#1088#1099',                                        ' +
              '                                            '#1087#1086#1076#1087#1080#1089#1100'             ' +
              '                                                              '#1060'.' +
              #1048'.'#1054'.')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        Height = 18.897637800000000000
        Top = 64.252010000000000000
        Width = 1046.929810000000000000
        DataSet = frReport.Q4
        DataSetName = 'Q4'
        RowCount = 0
        Stretched = True
        object Memo83: TfrxMemoView
          Align = baWidth
          Left = 30.236240000000000000
          Width = 1016.693570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NAME'
          DataSet = frReport.Q4
          DataSetName = 'Q4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Q4."NAME"]')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'V'
          DataSet = frReport.Q4
          DataSetName = 'Q4'
          Memo.UTF8W = (
            '[Q4."V"]')
        end
      end
      object Header2: TfrxHeader
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo87: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1042#1099#1074#1086#1076#1099' '#1080' '#1087#1088#1077#1076#1083#1086#1078#1077#1085#1080#1103' '#1087#1086' '#1092#1072#1082#1090#1091' '#1075#1086#1090#1086#1074#1085#1086#1089#1090#1080' '#1079#1076#1072#1085#1080#1103' '#1082' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1080':')
          ParentFont = False
        end
      end
    end
    object Page4: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page4OnBeforePrint'
      object ReportTitle2: TfrxReportTitle
        Height = 1024.252630000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo35: TfrxMemoView
          Left = 548.031850000000000000
          Top = 10.000000000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1054#1054#1054' "'#1044#1077#1079' '#1050#1072#1083#1080#1085#1080#1085#1089#1082#1086#1075#1086' '#1088#1072#1081#1086#1085#1072'"')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 317.480520000000000000
          Top = 28.897650000000000000
          Width = 400.630180000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077' '#8470'1'
            #1082' '#1076#1086#1075#1086#1074#1086#1088#1091' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1103
            #1084#1085#1086#1075#1086#1082#1074#1072#1088#1090#1080#1088#1085#1099#1084' '#1076#1086#1084#1086#1084' '#8470' [varHouse] '#1086#1090' ________20___'#1075'.')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Align = baWidth
          Top = 247.031540000000000000
          Width = 718.110700000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #1040#1082#1090
            
              #1054' '#1089#1086#1089#1090#1086#1103#1085#1080#1080' '#1086#1073#1097#1077#1075#1086' '#1080#1084#1091#1097#1077#1089#1090#1074#1072' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1080#1082#1086#1074' '#1087#1086#1084#1077#1097#1077#1085#1080#1081' '#1074' '#1084#1085#1086#1075#1086#1082#1074#1072#1088 +
              #1090#1080#1088#1085#1086#1084' '#1076#1086#1084#1077)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Align = baWidth
          Top = 296.165430000000000000
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470'[varHouse]  '#1087#1086' '#1091#1083'. [varStreet]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Align = baWidth
          Top = 322.622140000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #1086#1090'  [Gl."D3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Align = baWidth
          Top = 366.299320000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1054#1073#1097#1080#1077' '#1089#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1084#1085#1086#1075#1086#1082#1074#1072#1088#1090#1080#1088#1085#1086#1084' '#1076#1086#1084#1077':')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Align = baWidth
          Top = 395.212740000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              ' '#1050#1072#1076#1072#1089#1090#1088#1086#1074#1099#1081' '#1085#1086#1084#1077#1088' '#1084#1085#1086#1075#1086#1082#1074#1072#1088#1090#1080#1088#1085#1086#1075#1086' '#1076#1086#1084#1072'  ______________________' +
              '__________________')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Align = baLeft
          Top = 414.110390000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1043#1086#1076' '#1087#1086#1089#1090#1088#1086#1081#1082#1080':')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Align = baWidth
          Top = 433.008040000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              #1057#1090#1077#1087#1077#1085#1100' '#1080#1079#1085#1086#1089#1072' '#1087#1086' '#1076#1072#1085#1085#1099#1084' '#1075#1086#1089#1091#1076#1072#1088#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1090#1077#1093#1085#1080#1095#1077#1089#1082#1086#1075#1086' '#1091#1095#1077#1090#1072' ___' +
              '____________________')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Align = baWidth
          Top = 451.905690000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              #1057#1090#1077#1087#1077#1085#1100' '#1092#1072#1082#1090#1080#1095#1077#1089#1082#1086#1075#1086' '#1080#1079#1085#1086#1089#1072' ____________________________________' +
              '_________________')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Align = baWidth
          Top = 470.803340000000000000
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              #1056#1077#1082#1074#1080#1079#1080#1090#1099' '#1087#1088#1072#1074#1086#1074#1086#1075#1086' '#1072#1082#1090#1072' '#1086' '#1087#1088#1080#1079#1085#1072#1085#1080#1080' '#1084#1085#1086#1075#1086#1082#1074#1072#1088#1090#1080#1088#1085#1086#1075#1086' '#1076#1086#1084#1072' '#1072#1074#1072#1088#1080 +
              #1081#1085#1099#1084' '#1080
            
              #1087#1086#1076#1083#1077#1078#1072#1097#1080#1084' '#1089#1085#1086#1089#1091' _______________________________________________' +
              '_______________')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Align = baLeft
          Top = 508.598640000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1052#1072#1090#1077#1088#1080#1072#1083' '#1089#1090#1077#1085':')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Align = baLeft
          Top = 527.496290000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1063#1080#1089#1083#1086' '#1101#1090#1072#1078#1077#1081':')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Align = baLeft
          Top = 546.393940000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1053#1072#1083#1080#1095#1080#1077' '#1087#1086#1076#1074#1072#1083#1072' '#1080#1083#1080' '#1087#1086#1083#1091#1087#1086#1076#1074#1072#1083#1072':')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Align = baWidth
          Top = 565.291590000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1054#1073#1097#1072#1103' '#1087#1083#1086#1097#1072#1076#1100' '#1087#1086#1084#1077#1097#1077#1085#1080#1081':')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Align = baLeft
          Top = 584.189240000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1050#1086#1083'-'#1074#1086' '#1087#1086#1076#1098#1077#1079#1076#1086#1074':')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Align = baWidth
          Top = 603.086890000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1055#1083#1086#1097#1072#1076#1100' '#1083'/'#1082#1083#1077#1090#1086#1082':')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Align = baWidth
          Top = 621.984540000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1059#1073#1086#1088#1086#1095#1085#1072#1103' '#1087#1083#1086#1097#1072#1076#1100' ('#1087#1088#1080#1076#1086#1084#1086#1074#1086#1081' '#1090#1077#1088#1088#1080#1090#1086#1088#1080#1080'):')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Align = baLeft
          Top = 640.882190000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1055#1083#1086#1097#1072#1076#1100' '#1095#1077#1088#1076#1072#1082#1086#1074' ('#1090#1077#1093#1085#1080#1095#1077#1089'. '#1101#1090#1072#1078#1077#1081'):')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Align = baLeft
          Top = 659.779840000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1042#1080#1076' '#1082#1088#1086#1074#1083#1080':')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Align = baWidth
          Left = 90.708720000000000000
          Top = 659.779840000000000000
          Width = 627.401980000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 257.007874020000000000
          Top = 640.858267720000000000
          Width = 461.102660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Align = baLeft
          Top = 678.677490000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1050#1086#1083'-'#1074#1086' '#1097#1080#1090#1086#1074#1099#1093':')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Align = baWidth
          Left = 124.724490000000000000
          Top = 678.677490000000000000
          Width = 593.386210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Align = baLeft
          Top = 697.575140000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1051#1080#1092#1090#1099' ('#1082#1086#1083'-'#1074#1086', '#1074#1080#1076'):')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 143.622047240000000000
          Top = 697.551181100000000000
          Width = 574.488560000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Align = baLeft
          Top = 716.472790000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1058#1077#1083#1077#1074#1080#1076#1077#1085#1080#1077':')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 143.622047240000000000
          Top = 716.448818900000000000
          Width = 574.488560000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Align = baLeft
          Top = 735.370440000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1042#1077#1085#1090#1080#1083#1103#1094#1080#1103':')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 102.047244090000000000
          Top = 735.346456690000000000
          Width = 616.063390000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Align = baLeft
          Top = 754.268090000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1052#1091#1089#1086#1088#1086#1087#1088#1086#1074#1086#1076':')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Align = baWidth
          Top = 884.945270000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1086#1089#1084#1086#1090#1088#1072' '#1089#1090#1088#1086#1080#1090#1077#1083#1100#1085#1099#1093' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1081' '#1080' '#1080#1085#1078#1077#1085#1077#1088#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076 +
              #1086#1074#1072#1085#1080#1103)
          ParentFont = False
        end
        object QHouseBUILDYEAR: TfrxMemoView
          Left = 105.826840000000000000
          Top = 413.968770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BUILDYEAR'
          DataSet = frReport.QHouse
          DataSetName = 'QHouse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[QHouse."BUILDYEAR"]')
          ParentFont = False
        end
        object QHouseFLOOR_CNT: TfrxMemoView
          Left = 109.606370000000000000
          Top = 527.622047244095000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FLOOR_CNT'
          DataSet = frReport.QHouse
          DataSetName = 'QHouse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[QHouse."FLOOR_CNT"]')
          ParentFont = False
        end
        object QHouseCELLAR_SQ: TfrxMemoView
          Left = 241.889920000000000000
          Top = 546.519685039370000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CELLAR_SQ'
          DataSet = frReport.QHouse
          DataSetName = 'QHouse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[QHouse."CELLAR_SQ"]')
          ParentFont = False
        end
        object QHouseTOTAL_SQ: TfrxMemoView
          Left = 196.535560000000000000
          Top = 565.417322834646000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TOTAL_SQ'
          DataSet = frReport.QHouse
          DataSetName = 'QHouse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[QHouse."TOTAL_SQ"]')
          ParentFont = False
        end
        object QHouseENTRANCE_CNT: TfrxMemoView
          Left = 147.401670000000000000
          Top = 584.314960629921000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ENTRANCE_CNT'
          DataSet = frReport.QHouse
          DataSetName = 'QHouse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[QHouse."ENTRANCE_CNT"]')
          ParentFont = False
        end
        object QHouseLIFT_CNT: TfrxMemoView
          Left = 151.181200000000000000
          Top = 697.700787401575000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'LIFT_CNT'
          DataSet = frReport.QHouse
          DataSetName = 'QHouse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[QHouse."LIFT_CNT"]')
          ParentFont = False
        end
        object QHouseGARBAGE_CNT: TfrxMemoView
          Left = 136.063080000000000000
          Top = 754.393700787402000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'GARBAGE_CNT'
          DataSet = frReport.QHouse
          DataSetName = 'QHouse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[QHouse."GARBAGE_CNT"]')
          ParentFont = False
        end
        object QHouseWALL: TfrxMemoView
          Left = 115.165430000000000000
          Top = 508.724409450000000000
          Width = 476.220780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'WALL'
          DataSet = frReport.QHouse
          DataSetName = 'QHouse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[QHouse."WALL"]')
          ParentFont = False
        end
      end
    end
    object Page5: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page5OnBeforePrint'
      object Header1: TfrxHeader
        Height = 45.354330708661400000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo77: TfrxMemoView
          Align = baRight
          Left = 638.740570000000000000
          Width = 79.370130000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1072#1087#1080#1090#1072#1083#1100#1085#1099#1081' '#1088#1077#1084#1086#1085#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 559.929500000000000000
          Width = 79.370078740000000000
          Height = 45.354360000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1077#1082#1091#1097#1080#1081' '#1088#1077#1084#1086#1085#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          Width = 185.196970000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1081', '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' '#1080' '#1101#1083#1077#1084#1077#1085#1090#1086#1074' '#1073#1083#1072#1075#1086#1091#1089#1090#1088#1086#1081#1089#1090 +
              #1074#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Left = 185.196970000000000000
          Width = 374.929133860000000000
          Height = 45.354360000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1094#1077#1085#1082#1072' '#1089#1086#1089#1090#1086#1103#1085#1080#1103' '#1080#1083#1080' '#1082#1088#1072#1090#1082#1086#1077' '#1086#1087#1080#1089#1072#1085#1080#1077' '#1076#1077#1092#1077#1082#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        Height = 18.897637800000000000
        Top = 86.929190000000000000
        Width = 718.110700000000000000
        DataSet = frReport.Q_Struct
        DataSetName = 'QStruct'
        RowCount = 0
        object Memo68: TfrxMemoView
          Align = baWidth
          Left = 22.677180000000000000
          Width = 695.433520000000000000
          Height = 18.897650000000000000
          OnAfterPrint = 'QStructNAMEOnAfterPrint'
          ShowHint = False
          DataField = 'NAME'
          DataSet = frReport.Q_Struct
          DataSetName = 'QStruct'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[QStruct."NAME"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Align = baLeft
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NUM'
          DataSet = frReport.Q_Struct
          DataSetName = 'QStruct'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            '[QStruct."NUM"]')
          ParentFont = False
        end
      end
      object DetailData2: TfrxDetailData
        Height = 18.897650000000000000
        Top = 128.504020000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'DetailData1OnBeforePrint'
        DataSet = frReport.QDef
        DataSetName = 'QDef'
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        object Memo70: TfrxMemoView
          Left = 3.779530000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'QDefNAMEOnBeforePrint'
          ShowHint = False
          DataSet = frReport.QDef
          DataSetName = 'QDef'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '-[QDef."NAME"]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 909.732283464567000000
          Width = 136.818897640000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frReport.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Left = 185.196850390000000000
          Width = 374.929133860000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo71OnBeforePrint'
          ShowHint = False
          AllowHTMLTags = True
          DataSet = frReport.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 638.740157480000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 559.748031500000000000
          Width = 79.370078740157500000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
      end
      object SubdetailData2: TfrxSubdetailData
        Height = 18.897650000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'SubdetailData1OnAfterPrint'
        OnBeforePrint = 'SubdetailData1OnBeforePrint'
        DataSet = frReport.Q5
        DataSetName = 'Q5'
        KeepTogether = True
        RowCount = 0
        Stretched = True
        OnMasterDetail = 'SubdetailData1OnMasterDetail'
        object Memo78: TfrxMemoView
          Left = 185.196850390000000000
          Width = 374.929133860000000000
          Height = 18.897650000000000000
          OnAfterData = 'Q3MLISTNAMEOnAfterData'
          OnBeforePrint = 'Q3MLISTNAMEOnBeforePrint'
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frReport.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HideZeros = True
          Memo.UTF8W = (
            '[Q5."MLISTNAME"]')
          ParentFont = False
          SuppressRepeated = True
        end
        object Memo84: TfrxMemoView
          Left = 1000.440944880000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 955.221090000000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 909.732283460000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo21OnBeforePrint'
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 638.740157480000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
          SuppressRepeated = True
        end
        object Memo74: TfrxMemoView
          Left = 559.748031500000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo74OnBeforePrint'
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
          SuppressRepeated = True
        end
      end
      object ReportSummary2: TfrxReportSummary
        Height = 136.063080000000000000
        Top = 249.448980000000000000
        Width = 718.110700000000000000
        object Memo89: TfrxMemoView
          Align = baWidth
          Top = 55.000000000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '    '#1043#1077#1085#1077#1088#1072#1083#1100#1085#1099#1081' '#1076#1080#1088#1077#1082#1090#1086#1088)
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Align = baWidth
          Top = 77.677180000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '    '#1054#1054#1054' "'#1044#1045#1047' '#1050#1072#1083#1080#1085#1080#1085#1089#1082#1086#1075#1086' '#1088#1072#1081#1086#1085#1072'" __________________________'#1057#1084#1080#1088 +
              #1085#1086#1074' '#1050'.'#1048'.')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 444.409710000000000000
          Top = 102.574830000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1052'.'#1055'.                       "____"___________20  '#1075'.')
          ParentFont = False
        end
      end
    end
  end
  object pdf1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = False
    OverwritePrompt = True
    DataOnly = False
    OnBeginExport = pdf1BeginExport
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    CheckboxAsShape = False
    Left = 320
    Top = 432
  end
  object frxrtfxprt1: TfrxRTFExport
    ShowDialog = False
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OnBeginExport = frxrtfxprt1BeginExport
    PictureType = gpPNG
    OpenAfterExport = True
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 320
    Top = 460
  end
  object rep: TfrxReport
    Version = '4.15.10'
    DataSetName = 'usds'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40561.913060613400000000
    ReportOptions.LastChange = 41718.830108460700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure SubdetailData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                  '
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  AType :string;                                        '
      'begin'
      
        '   //'#1086#1090#1082#1088#1099#1090#1100' '#1079#1072#1087#1088#1086#1089' '#1087#1086' '#1076#1086#1084#1091' '#1089' '#1087#1072#1088#1072#1084#1077#1090#1088#1086#1084' Report.variables['#39'varHo' +
        'useCod'#39'];'
      
        '  QHouse.ParamByName('#39'CODE'#39').Value:=Report.variables['#39'varHouseCo' +
        'd'#39'];'
      '  QHouse.Open;'
      
        '   if Report.variables['#39'varASType'#39']='#39#1074#1077#1089#1085#1072#39' then AType:='#39#1074#1077#1089#1077#1085#1085#1077 +
        #1075#1086' '#1086#1089#1084#1086#1090#1088#1072#39' else                    '
      
        '   if Report.variables['#39'varASType'#39']='#39#1086#1089#1077#1085#1100#39' then AType:='#39#1086#1089#1077#1085#1085#1077#1075 +
        #1086' '#1086#1089#1084#1086#1090#1088#1072#39'  else               '
      
        '   if Report.variables['#39'varASType'#39']='#39#1074#1085#1077#1087#1083#1072#1085#1086#1074#1099#1081#39' then AType:='#39#1074 +
        #1085#1077#1087#1083#1072#1085#1086#1074#1086#1075#1086' '#1086#1089#1084#1086#1090#1088#1072#39' else'
      
        '                                                 AType:='#39#1086#1073#1097#1077#1075#1086' ' +
        #1086#1089#1077#1085#1085#1077#1075#1086'/'#1074#1077#1089#1077#1085#1085#1077#1075#1086' '#1086#1089#1084#1086#1090#1088#1072#39';                 '
      '  if Report.variables['#39'varSType'#39']=0 then'
      '  begin      '
      '   Memo3.text:='#39#1040#1082#1090#39'+#13+    '
      '               AType+#13+    '
      
        '               '#39#1089#1090#1088#1086#1080#1090#1077#1083#1100#1085#1099#1093' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1081' '#1080' '#1080#1085#1078#1077#1085#1077#1088#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072 +
        #1085#1080#1103#39';    '
      '  '
      '   Report.Variables['#39'varRole'#39']:=#39+'#39#1089#1090'.'#1084#1077#1085#1077#1076#1078#1077#1088#1072' '#1057#1069#39'+#39;  '
      
        '   Memo19.text:='#39#1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1086#1089#1084#1086#1090#1088#1072' '#1089#1090#1088#1086#1080#1090#1077#1083#1100#1085#1099#1093' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1081' '#1080' '#1080 +
        #1085#1078#1077#1085#1077#1088#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103'.'#39
      '  end;'
      '  if Report.variables['#39'varSType'#39']=1 then      '
      
        '  begin                                                         ' +
        '         '
      '   Memo3.text:='#39#1040#1082#1090#39'+#13+                  '
      '               AType+#13+     '
      
        '               '#39#1080#1085#1078#1077#1085#1077#1088#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' ('#1101#1083#1077#1082#1090#1088#1080#1095#1077#1089#1082#1072#1103' '#1095#1072#1089#1090#1100')'#39';' +
        '    '
      '          '
      
        '   Memo19.text:='#39#1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1086#1089#1084#1086#1090#1088#1072' '#1080#1085#1078#1077#1085#1077#1088#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' ('#1101#1083 +
        #1077#1082#1090#1088#1086#1090#1077#1093#1085#1080#1095#1077#1089#1082#1072#1103' '#1095#1072#1089#1090#1100').'#39';'
      
        '   Report.Variables['#39'varRole'#39']:=#39+'#39#1101#1085#1077#1088#1075#1077#1090#1080#1082' '#1057#1069#39'+#39;         ' +
        '                                            '
      
        '   Report.variables['#39'varMSE'#39']:=#39+'#39#1057#1091#1074#1086#1088#1086#1074' '#1054#1083#1077#1075' '#1051#1077#1086#1085#1080#1076#1086#1074#1080#1095#39'+#39' +
        ';                             '
      '  end;'
      '  if Report.variables['#39'varSType'#39']=3 then'
      '  begin      '
      '   Memo3.text:='#39#1040#1082#1090#39'+#13+    '
      '               AType+#13+    '
      
        '               '#39#1080#1085#1078#1077#1085#1077#1088#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' ('#1074#1085#1091#1090#1088#1080#1076#1086#1084#1086#1074#1086#1077' '#1075#1072#1079#1086#1074#1086#1077' ' +
        #1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077')'#39';    '
      '  '
      '   Report.Variables['#39'varRole'#39']:=#39+'#39#1084#1077#1085#1077#1076#1078#1077#1088' '#1057#1069#39'+#39;'
      
        '   Report.variables['#39'varMSE'#39']:=#39+'#39#1054#1089#1080#1087#1077#1085#1082#1086' '#1040#1085#1090#1086#1085' '#1057#1077#1088#1075#1077#1077#1074#1080#1095#39'+#3' +
        '9;       '
      
        '   Memo19.text:='#39#1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1086#1089#1084#1086#1090#1088#1072' '#1080#1085#1078#1077#1085#1077#1088#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' ('#1074#1085 +
        #1091#1090#1088#1080#1076#1086#1084#1086#1074#1086#1077' '#1075#1072#1079#1086#1074#1086#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077').'#39
      '  end;'
      '  if Report.variables['#39'varSType'#39']=2 then'
      '  begin      '
      '   Memo3.text:='#39#1040#1082#1090#39'+#13+    '
      '               AType+#13+    '
      
        '               '#39#1080#1085#1078#1077#1085#1077#1088#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' ('#1051#1080#1092#1090#1086#1074#1086#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077')' +
        #39';    '
      '  '
      '   Report.Variables['#39'varRole'#39']:=#39+'#39#1084#1077#1085#1077#1076#1078#1077#1088' '#1057#1069#39'+#39;'
      
        '   Report.variables['#39'varMSE'#39']:=#39+'#39#1054#1089#1080#1087#1077#1085#1082#1086' '#1040#1085#1090#1086#1085' '#1057#1077#1088#1075#1077#1077#1074#1080#1095#39'+#3' +
        '9;       '
      
        '   Memo19.text:='#39#1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1086#1089#1084#1086#1090#1088#1072' '#1080#1085#1078#1077#1085#1077#1088#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' ('#1051#1080 +
        #1092#1090#1086#1074#1086#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077').'#39
      '  end;      '
      
        '  FIBQuery1.ParamByName('#39'House'#39').Value:=Report.variables['#39'varHou' +
        'seCod'#39'];'
      
        '  FIBQuery1.ParamByName('#39'shouse'#39').Value:=Report.variables['#39'varAk' +
        't'#39'];'
      '  FIBQuery1.Open;'
      '  if FIBQuery1.FieldByName('#39'SHOWDATE'#39').AsVariant=null then'
      '  memo4.text:='#39#39' else'
      
        '  memo4.text:='#39#1044#1072#1090#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#39'+FIBQuery1.FieldByName('#39'SHOWDATE' +
        #39').AsString;'
      '  // [VarToStr([IIF(<QHouse."WALL"><>0,<QHouse."WALL">,'#39#39')])]'
      
        ' // fio.ParamByName('#39'cod'#39').Value:=Report.variables['#39'varHouseCod'#39 +
        '];'
      '//  fio.Open;'
      '  '
      'end;  '
      '  '
      'procedure Page2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Q_Struct.ParamByName('#39'stp'#39').Value:=Report.variables['#39'varSType'#39 +
        '];                          '
      
        '  Q3.ParamByName('#39'house'#39').Value:=Report.variables['#39'varHouseCod'#39']' +
        ';'
      '  Q3.ParamByName('#39'shouse'#39').Value:=Report.variables['#39'varAkt'#39'];'
      '  Q3.ParamByName('#39'stp'#39').Value:=Report.variables['#39'varSType'#39'];'
      ''
      
        '  Q4.ParamByName('#39'house'#39').Value:=Report.variables['#39'varHouseCod'#39']' +
        ';'
      '  Q4.ParamByName('#39'shouse'#39').Value:=Report.variables['#39'varAkt'#39'];'
      
        '  Q4.ParamByName('#39'stp'#39').Value:=Report.variables['#39'varSType'#39'];    ' +
        '  '
      '  {if Q3.recordcount = 0 then'
      '  memo22.text:='#39#1091#1090#1074#1077#1088#1076#1080#1090#1077#1083#1100#1085#1086#39' else'
      '  memo22.text:='#39#39';}'
      
        '                                                                ' +
        '                                                           '
      'end;'
      ''
      'procedure Memo15OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if <Q3."NUM"> > 0 then'
      '    Memo15.text:='#39#39' else'
      '    //Memo15.text:='#39'<font color="#059E00">'#1091#1090#1074#1077#1088#1076#1080#1090#1077#1083#1100#1085#1086'</font>'#39';'
      
        '    Memo15.text:='#39'<font color=green>'#1091#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1086'</font>'#39';  ' +
        '      '
      'end;'
      ''
      'procedure Memo71OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   if <Q5."NUM"> > 0 then                        '
      '    Memo71.text:='#39#39' else'
      '    Memo71.text:='#39'<font color=green>'#1091#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1086'</font>'#39';  '
      'end;  '
      '  '
      'procedure Memo18OnBeforePrint(Sender: TfrxComponent);'
      'var '
      
        '  en,flor,flat,typ :string;                                     ' +
        '              '
      'begin'
      '  if <Q3."ENTRANCE"> <> 0 then'
      
        '  en:='#39#1087#1076'.'#39'+VarToStr(<Q3."ENTRANCE">) else en:='#39#39';              ' +
        '                     '
      '  if <Q3."FLOOR"> <> 0 then'
      
        '  flor:='#39' '#1101#1090#1072#1078#39'+VarToStr(<Q3."FLOOR">)+'#39' '#39' else flor:='#39#39';       ' +
        '                                     '
      '  //Memo18.Text:=Memo18.Text+'#39' '#1101#1090#1072#1078' '#39'+VarToStr(<Q3."FLOOR">);  '
      '  if (<Q3."FLAT"> <> '#39#39') and (<Q3."FLAT"> <> '#39#1085#1077' '#1091#1082#1072#1079#1072#1085#1072#39') then'
      '  flat:='#39' '#1082#1074'.'#39'+<Q3."FLAT">+'#39' '#39' else flat:='#39#39';;            '
      '  //Memo18.Text:=Memo18.Text+'#39' '#1082#1074'. '#39'+<Q3."FLAT">;'
      '  if <Q3."ACOD">=0 then typ:='#39#39' else'
      '                        typ:=<Q3."ATYPE">;                '
      '  Memo18.Text:=en+flor+flat+'#39'  '#39'+typ;                     '
      'end;'
      ''
      'procedure Memo21OnBeforePrint(Sender: TfrxComponent);'
      ''
      '  procedure ClearTO;'
      '  begin'
      '    Memo21.Text:='#39#39';'
      '    Memo17.Text:='#39#39';'
      '    Memo10.Text:='#39#39';        '
      '  end;            '
      'begin'
      '  if <Q3."RCod">=0 then'
      '  begin'
      '    ClearTO;  '
      '    Memo21.Text:=<Q3."RTYPE">;                       '
      '  end;'
      '  if <Q3."RCod">=1 then'
      '  begin'
      '    ClearTO;  '
      '    Memo17.Text:=<Q3."RTYPE">;                       '
      '  end;  '
      '  if <Q3."RCod">=2 then'
      '  begin'
      '    ClearTO;  '
      '    Memo10.Text:=<Q3."RTYPE">;'
      '   if <Q3."QUANTITY">=0 then'
      '   begin               '
      '    Q3MLISTED1.Text:='#39#39';'
      '    Q3QUANTITY1.Text:='#39#39';                '
      '   end;             '
      '  end;        '
      'end;'
      ''
      'procedure Memo74OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <Q5."RCod">=1 then'
      '  begin  '
      '    Memo74.Text:=<Q5."RTYPE">;                       '
      '  end;  '
      '  if <Q5."RCod">=2 then'
      '  begin  '
      '    Memo73.Text:=<Q5."RTYPE">;                       '
      '  end;  '
      'end;  '
      ''
      'procedure Page5OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '              '
      'end;'
      '  '
      'procedure Page4OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Q_Struct.ParamByName('#39'stp'#39').Value:=Report.variables['#39'varSType'#39 +
        '];                          '
      
        '  Q5.ParamByName('#39'house'#39').Value:=Report.variables['#39'varHouseCod'#39']' +
        ';'
      '  Q5.ParamByName('#39'shouse'#39').Value:=Report.variables['#39'varAkt'#39'];'
      '  Q5.ParamByName('#39'stp'#39').Value:=Report.variables['#39'varSType'#39'];'
      
        ' // ShowMessage(Report.variables['#39'varHouseCod'#39'] +'#39' '#39'+Report.vari' +
        'ables['#39'varAkt'#39']+'#39' '#39'+Report.variables['#39'varSType'#39']);              ' +
        '              '
      
        '   //'#1086#1090#1082#1088#1099#1090#1100' '#1079#1072#1087#1088#1086#1089' '#1087#1086' '#1076#1086#1084#1091' '#1089' '#1087#1072#1088#1072#1084#1077#1090#1088#1086#1084' Report.variables['#39'varHo' +
        'useCod'#39'];'
      
        '  QHouse.ParamByName('#39'CODE'#39').Value:=Report.variables['#39'varHouseCo' +
        'd'#39'];'
      '  QHouse.Open;        '
      'end;'
      ''
      'begin'
      '  if Report.variables['#39'varRep'#39']=1 then'
      '  begin'
      '   Page1.Visible:=true;'
      '   Page2.Visible:=true;'
      '   //Page3.Visible:=true;'
      '   Page4.Visible:=false;'
      '   Page5.Visible:=false;  '
      '  end else'
      '  begin'
      '   Page1.Visible:=false;'
      '   Page2.Visible:=false;'
      '   //Page3.Visible:=false;'
      '   Page4.Visible:=true;'
      '   Page5.Visible:=true;  '
      '  end;            '
      'end.')
    OnStartReport = 'frOnStartReport'
    Left = 328
    Top = 120
    Datasets = <
      item
        DataSet = rep.dom
        DataSetName = 'dom'
      end
      item
        DataSet = frds_1
        DataSetName = 'ds_kr'
      end
      item
        DataSet = rep.FIBQuery1
        DataSetName = 'FIBQuery1'
      end
      item
        DataSet = rep.fio
        DataSetName = 'fio'
      end
      item
        DataSet = rep.Gl
        DataSetName = 'Gl'
      end
      item
        DataSet = rep.Q_KR
        DataSetName = 'Q_KR'
      end
      item
        DataSet = rep.Q_TO
        DataSetName = 'Q_TO'
      end
      item
        DataSet = rep.Q_TR
        DataSetName = 'Q_TR'
      end
      item
        DataSet = rep.Q_zam
        DataSetName = 'Q_zam'
      end
      item
        DataSet = rep.Q3
        DataSetName = 'Q3'
      end
      item
        DataSet = rep.Q4
        DataSetName = 'Q4'
      end
      item
        DataSet = rep.Q5
        DataSetName = 'Q5'
      end
      item
        DataSet = rep.QDef
        DataSetName = 'QDef'
      end
      item
        DataSet = rep.QHouse
        DataSetName = 'QHouse'
      end
      item
        DataSet = rep.Q_Struct
        DataSetName = 'QStruct'
      end
      item
        DataSet = rep.street
        DataSetName = 'street'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'name1'
        Value = Null
      end
      item
        Name = 'ttt'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object FIBDatabase1: TfrxFIBDatabase
        LoginPrompt = False
        Params.Strings = (
          'user_name=sysdba'
          'password=victris'
          'sql_role_name=')
        SQLDialect = 3
        pLeft = 100
        pTop = 148
      end
      object FIBQuery1: TfrxFIBQuery
        UserName = 'FIBQuery1'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'shouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'SELECT SHOWDATE'
          'FROM SHOWHOUSEPLAN'
          
            'where SHOWHOUSE=:shouse and HOUSE=:house                        ' +
            '                 ')
        Database = rep.FIBDatabase1
        pLeft = 200
        pTop = 244
        Parameters = <
          item
            Name = 'shouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end>
      end
      object Q_Struct: TfrxFIBQuery
        UserName = 'QStruct'
        CloseDataSource = True
        FieldAliases.Strings = (
          'CODE=CODE'
          'NAME=NAME'
          'STYPE=STYPE'
          'NUM=NUM')
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'stp'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'select CODE, NAME, STYPE, NUM'
          'from SHOWSTRUCT'
          'where stype=:stp                           '
          'order by num  ')
        Database = rep.FIBDatabase1
        pLeft = 100
        pTop = 244
        Parameters = <
          item
            Name = 'stp'
            DataType = ftUnknown
          end>
      end
      object QDef: TfrxFIBQuery
        UserName = 'QDef'
        CloseDataSource = True
        FieldAliases.Strings = (
          'CODE=CODE'
          'SHOWSTRUCT=SHOWSTRUCT'
          'NAME=NAME'
          'NUM=NUM'
          'ED=ED')
        BCDToCurrency = False
        Master = rep.Q_Struct
        IgnoreDupParams = False
        Params = <>
        SQL.Strings = (
          '                                             ')
        Database = rep.FIBDatabase1
        pLeft = 100
        pTop = 292
        Parameters = <>
      end
      object Q3: TfrxFIBQuery
        UserName = 'Q3'
        CloseDataSource = True
        FieldAliases.Strings = (
          'STRUCTDEFECT=STRUCTDEFECT'
          'NUM=NUM'
          'NAME=NAME'
          'ED=ED'
          'MLIST=MLIST'
          'MLISTNAME=MLISTNAME'
          'QUANTITY=QUANTITY'
          'MLISTED=MLISTED'
          'NOTE=NOTE'
          'ENTRANCE=ENTRANCE'
          'FLOOR=FLOOR'
          'FLAT=FLAT'
          'MNOTE=MNOTE'
          'RTYPE=RTYPE'
          'RCOD=RCOD'
          'ATYPE=ATYPE'
          'ACOD=ACOD')
        BCDToCurrency = False
        Master = rep.QDef
        IgnoreDupParams = False
        Params = <
          item
            Name = 'shouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end
          item
            Name = 'mas_code'
            DataType = ftUnknown
          end
          item
            Name = 'stp'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          
            'select sr.structdefect,sd.num,sd.name,sd.ed, sr.mlist,m.name Mli' +
            'stName,sr.quantity,'
          
            '/*iif(m.ed is null, sd.ed,m.ed)*/ m.ed MlistEd, sr.note, sr.entr' +
            'ance,sr."FLOOR",sr.flat,'
          'sr.MNOTE,                '
          '  case'
          '    when sr.rtype = 0 then '#39#1058#1054#39
          '    when sr.rtype = 1 then '#39#1058#1056#39
          '    when sr.rtype = 2 then '#39#1050#1056#39
          '    else '#39' '#39' '
          '  end RTYPE,sr.rtype RCod,               '
          '  case'
          '    when sr.atype = 0 then '#39#1085#1077' '#1091#1082#1072#1079#1072#1085#39
          '    when sr.atype = 1 then '#39#1091#1083#1080#1095#1085#1099#1081' '#1092#1072#1089#1072#1076#39
          '    when sr.atype = 2 then '#39#1076#1074#1086#1088#1086#1074#1086#1081' '#1092#1072#1089#1072#1076#39
          '    when sr.atype = 3 then '#39#1090#1086#1088#1077#1094' '#1079#1076#1072#1085#1080#1103#39
          '    else '#39#1086#1096#1080#1073#1082#1072' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1080#1103'!!'#39' '
          
            '  end ATYPE, sr.atype ACod                                      ' +
            ' '
          'from SHOWRESULT sr'
          'left outer join STRUCTDEFECT sd on sr.structdefect=sd.code'
          'left outer join showstruct ss on sd.showstruct=ss.code'
          'left outer join mlist m on sr.mlist=m.code'
          'where sr.SHOWHOUSE=:shouse'
          '      and sr.house=:house'
          '      and sr.structdefect=:mas_code'
          
            '      and ss.stype=:stp --'#1090#1080#1087' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1080' 0 - '#1089#1090#1088#1086#1077#1085#1080#1103' 1 - '#1077#1083#1077#1082#1090 +
            #1088#1080#1082#1072
          ''
          
            'order by sr.mlist, sr.entrance, sr."FLOOR"                      ' +
            '        ')
        Database = rep.FIBDatabase1
        pLeft = 100
        pTop = 344
        Parameters = <
          item
            Name = 'shouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end
          item
            Name = 'mas_code'
            DataType = ftUnknown
          end
          item
            Name = 'stp'
            DataType = ftUnknown
          end>
      end
      object QHouse: TfrxFIBQuery
        UserName = 'QHouse'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'CODE'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'SELECT CODE, '
          '       NOMER, '
          '       STREET, '
          '       DU, '
          '       TOTAL_SQ, '
          '       LIVING_SQ, '
          '       LODGER_CNT, '
          '       CELLAR_SQ, '
          '       FLAT_CNT, '
          '       ACCCODE_CNT, '
          '       FLOOR_CNT, '
          '       LIFT_CNT, '
          '       ENTRANCE_CNT, '
          '       GARBAGE_CNT, '
          '       COMMERCE_SQ, '
          '       BUILDYEAR, '
          '       "ACTIVE", '
          '       BUDGET, '
          '       MSE, '
          '       USERNAME, '
          '       LASTTIME, '
          '       LAST_KR, '
          '        (case Wall'
          '           when 0 then '#39#1055#1072#1085#1077#1083#1100#1085#1099#1077#39
          '           when 1 then '#39#1050#1088#1091#1087#1085#1086#1073#1083#1086#1095#1085#1099#1077#39
          '           when 2 then '#39#1064#1083#1072#1082#1086#1073#1083#1086#1095#1085#1099#1077#39
          '           when 2 then '#39#1050#1080#1088#1087#1080#1095#1085#1099#1077#39
          '           else '#39#39
          '        end) Wall'
          'FROM HOUSE '
          ''
          'where CODE=:CODE')
        Database = rep.FIBDatabase1
        pLeft = 200
        pTop = 292
        Parameters = <
          item
            Name = 'CODE'
            DataType = ftUnknown
          end>
      end
      object fio: TfrxFIBQuery
        UserName = 'fio'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'cod'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          '/*SELECT (p.f||'#39' '#39'||p.i||'#39' '#39'||p.o) mse,'
          '       (p1.f||'#39' '#39'||p1.i||'#39' '#39'||p1.o) pse'
          'FROM HOUSE h'
          'left outer join worker w on w.code=h.mse'
          'left outer join worker w1 on w1.code=h.pse'
          'left outer join piple p on p.code=w.piple'
          'left outer join piple p1 on p1.code=w1.piple'
          'where h.code=:cod  */      ')
        Database = rep.FIBDatabase1
        pLeft = 200
        pTop = 352
        Parameters = <
          item
            Name = 'cod'
            DataType = ftUnknown
          end>
      end
      object street: TfrxFIBQuery
        UserName = 'street'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <>
        SQL.Strings = (
          'select CODE, NAME from STREET'
          'order by name  ')
        Database = rep.FIBDatabase1
        pLeft = 200
        pTop = 148
        Parameters = <>
      end
      object dom: TfrxFIBQuery
        UserName = 'dom'
        CloseDataSource = True
        BCDToCurrency = False
        Master = rep.street
        IgnoreDupParams = False
        Params = <
          item
            Name = 'mas_code'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'select CODE, NOMER'
          'from HOUSE'
          'where street = :mas_code  ')
        Database = rep.FIBDatabase1
        pLeft = 232
        pTop = 148
        Parameters = <
          item
            Name = 'mas_code'
            DataType = ftUnknown
          end>
      end
      object Q4: TfrxFIBQuery
        UserName = 'Q4'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'shouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end
          item
            Name = 'mas_code'
            DataType = ftUnknown
          end
          item
            Name = 'stp'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'select distinct(s.mlist),m.name,s.v,'
          '  case'
          '    when s.rtype = 0 then '#39#1058#1054#39
          '    when s.rtype = 1 then '#39#1058#1056#39
          '    when s.rtype = 2 then '#39#1050#1056#39
          '    else '#39' '#39' '
          '  end RTYP      '
          'from showresult s'
          'left outer join mlist m on s.mlist=m.code'
          'left outer join STRUCTDEFECT sd on s.structdefect=sd.code'
          'left outer join showstruct ss on sd.showstruct=ss.code'
          'where s.SHOWHOUSE=:shouse'
          '      and s.house=:house'
          '    --  and s.structdefect=:mas_code'
          
            '    --  and ss.stype=:stp --'#1090#1080#1087' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1080' 0 - '#1089#1090#1088#1086#1077#1085#1080#1103' 1 - '#1077#1083#1077 +
            #1082#1090#1088#1080#1082#1072
          '      and s.v>0                           '
          'order by 4,s.v  ')
        Database = rep.FIBDatabase1
        pLeft = 172
        pTop = 444
        Parameters = <
          item
            Name = 'shouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end
          item
            Name = 'mas_code'
            DataType = ftUnknown
          end
          item
            Name = 'stp'
            DataType = ftUnknown
          end>
      end
      object Gl: TfrxFIBQuery
        UserName = 'Gl'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'gl'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'SELECT g.D3 FROM GRAPHSPEC g'
          'where g.GRAPHLIST=:gl and g.HOUSE=:house  ')
        Database = rep.FIBDatabase1
        pLeft = 208
        pTop = 444
        Parameters = <
          item
            Name = 'gl'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end>
      end
      object Q_zam: TfrxFIBQuery
        UserName = 'Q_zam'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'sh'
            DataType = ftUnknown
          end
          item
            Name = 'h'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          ' select SR.PONOTE from SHOWRESULT SR'
          ' where SR.SHOWHOUSE=:sh and SR.HOUSE=:h'
          ' and SR.POSTATE in(1,2)                ')
        Database = rep.FIBDatabase1
        pLeft = 100
        pTop = 448
        Parameters = <
          item
            Name = 'sh'
            DataType = ftUnknown
          end
          item
            Name = 'h'
            DataType = ftUnknown
          end>
      end
      object Q5: TfrxFIBQuery
        UserName = 'Q5'
        CloseDataSource = True
        BCDToCurrency = False
        Master = rep.QDef
        IgnoreDupParams = False
        Params = <
          item
            Name = 'shouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end
          item
            Name = 'mas_code'
            DataType = ftUnknown
          end
          item
            Name = 'stp'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          
            'select distinct(sr.mlist),sr.structdefect,sd.num,sd.name,sd.ed, ' +
            'm.name MlistName,sr.quantity,'
          '/*iif(m.ed is null, sd.ed,m.ed)*/ m.ed MlistEd, sr.note,'
          'sr.MNOTE,                '
          '  case'
          '    when sr.rtype = 0 then '#39#1058#1054#39
          '    when sr.rtype = 1 then '#39#1058#1056#39
          '    when sr.rtype = 2 then '#39#1050#1056#39
          '    else '#39' '#39' '
          '  end RTYPE,sr.rtype RCod,               '
          '  case'
          '    when sr.atype = 0 then '#39#1085#1077' '#1091#1082#1072#1079#1072#1085#39
          '    when sr.atype = 1 then '#39#1091#1083#1080#1095#1085#1099#1081' '#1092#1072#1089#1072#1076#39
          '    when sr.atype = 2 then '#39#1076#1074#1086#1088#1086#1074#1086#1081' '#1092#1072#1089#1072#1076#39
          '    when sr.atype = 3 then '#39#1090#1086#1088#1077#1094' '#1079#1076#1072#1085#1080#1103#39
          '    else '#39#1086#1096#1080#1073#1082#1072' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1080#1103'!!'#39' '
          
            '  end ATYPE, sr.atype ACod                                      ' +
            ' '
          'from SHOWRESULT sr'
          'left outer join STRUCTDEFECT sd on sr.structdefect=sd.code'
          'left outer join showstruct ss on sd.showstruct=ss.code'
          'left outer join mlist m on sr.mlist=m.code'
          'where sr.SHOWHOUSE=:shouse'
          '      and sr.house=:house'
          '      and sr.structdefect=:mas_code'
          
            '      and ss.stype=:stp --'#1090#1080#1087' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1080' 0 - '#1089#1090#1088#1086#1077#1085#1080#1103' 1 - '#1077#1083#1077#1082#1090 +
            #1088#1080#1082#1072
          ''
          'order by sr.mlist, sr.entrance, sr."FLOOR"  ')
        Database = rep.FIBDatabase1
        pLeft = 316
        pTop = 252
        Parameters = <
          item
            Name = 'shouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end
          item
            Name = 'mas_code'
            DataType = ftUnknown
          end
          item
            Name = 'stp'
            DataType = ftUnknown
          end>
      end
      object Q_KR: TfrxFIBQuery
        UserName = 'Q_KR'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'srvHouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'select m.name KR'
          'from showresult s'
          'left outer join mlist m on s.mlist=m.code'
          'left outer join STRUCTDEFECT sd on s.structdefect=sd.code'
          'left outer join showstruct ss on sd.showstruct=ss.code'
          'where s.SHOWHOUSE=:srvHouse and s.house=:house and s.rtype = 2  ')
        Database = rep.FIBDatabase1
        pLeft = 100
        pTop = 540
        Parameters = <
          item
            Name = 'srvHouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end>
      end
      object Q_TO: TfrxFIBQuery
        UserName = 'Q_TO'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'srvHouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'select m.name STO'
          'from showresult s'
          'left outer join mlist m on s.mlist=m.code'
          'left outer join STRUCTDEFECT sd on s.structdefect=sd.code'
          'left outer join showstruct ss on sd.showstruct=ss.code'
          'where s.SHOWHOUSE=:srvHouse and s.house=:house and s.rtype = 0  ')
        Database = rep.FIBDatabase1
        pLeft = 140
        pTop = 540
        Parameters = <
          item
            Name = 'srvHouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end>
      end
      object Q_TR: TfrxFIBQuery
        UserName = 'Q_TR'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'srvHouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'select m.name TR, s.v'
          'from showresult s'
          'left outer join mlist m on s.mlist=m.code'
          'left outer join STRUCTDEFECT sd on s.structdefect=sd.code'
          'left outer join showstruct ss on sd.showstruct=ss.code'
          'where s.SHOWHOUSE=:srvHouse and s.house=:house and s.rtype = 1'
          'and s.v>0'
          '  order by s.v  ')
        Database = rep.FIBDatabase1
        pLeft = 184
        pTop = 540
        Parameters = <
          item
            Name = 'srvHouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end>
      end
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
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        Height = 498.897960000000000000
        Top = 16.000000000000000000
        Width = 1046.929810000000000000
        Stretched = True
        object Memo2: TfrxMemoView
          Width = 1046.929810000000000000
          Height = 128.504020000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            ''
            #1059#1058#1042#1045#1056#1046#1044#1040#1070'  '
            #1054#1054#1054' '#171#1044#1045#1047' '#1050#1072#1083#1080#1085#1080#1085#1089#1082#1086#1075#1086' '#1088#1072#1081#1086#1085#1072#187
            '__________________'#1057#1084#1080#1088#1085#1086#1074' '#1050'.'#1048'.'
            #171'___'#187'___________________20   '#1075'  ')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baWidth
          Top = 128.504020000000000000
          Width = 1046.929810000000000000
          Height = 71.811070000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ''
            #1040#1082#1090
            #1086#1073#1097#1077#1075#1086' '#1086#1089#1077#1085#1085#1077#1075#1086'/'#1074#1077#1089#1077#1085#1085#1077#1075#1086'  '#1086#1089#1084#1086#1090#1088#1072'  '
            #1080#1085#1078#1077#1085#1077#1088#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' ('#1101#1083#1077#1082#1090#1088#1080#1095#1077#1089#1082#1072#1103' '#1095#1072#1089#1090#1100')')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Top = 200.315090000000000000
          Width = 313.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FIBQuery1."SHOWDATE"]  ')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Top = 219.212740000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1044#1086#1084' '#8470)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 49.070810000000000000
          Top = 218.842610000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[varHouse]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 138.637910000000000000
          Top = 219.212740000000000000
          Width = 684.094930000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[varStreet]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 97.385900000000000000
          Top = 219.212740000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ' '#1087#1086' '#1091#1083' ')
          ParentFont = False
        end
        object Rich1: TfrxRichView
          Align = baBottom
          Top = 275.905690000000000000
          Width = 1046.929810000000000000
          Height = 222.992270000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C666E696C5C66636861727365743230347B5C2A5C666E616D652041726961
            6C3B7D417269616C204359523B7D7B5C66315C666E696C5C6663686172736574
            3020417269616C3B7D7D0D0A7B5C2A5C67656E657261746F7220526963686564
            323020362E332E393630307D5C766965776B696E64345C756331200D0A5C7061
            72645C66305C667332305C2763655C2765315C2766395C2765385C276535205C
            2766315C2765325C2765355C2765345C2765355C2765645C2765385C27666620
            5C2765665C276565205C2766315C2766325C2766305C2765655C2765355C2765
            645C2765385C2766653A5C7061720D0A5C2763335C2765655C276534205C2765
            665C2765655C2766315C2766325C2766305C2765655C2765395C2765615C2765
            383A20202020205B51486F7573652E224255494C4459454152225D5C7061720D
            0A5C2763335C2765655C276534205C276538205C2765325C2765385C27653420
            5C2765665C2765655C2766315C2765625C2765355C2765345C2765645C276535
            5C2765335C276565205C2765615C2765305C2765665C2765385C2766325C2765
            305C2765625C2766635C2765645C2765655C2765335C276565205C2766305C27
            65355C2765635C2765655C2765645C2766325C2765303A205B494946283C5148
            6F7573652E224C4153545F4B52223E3C3E302C3C51486F7573652E224C415354
            5F4B52223E2C2727295D5C7061720D0A5B494946283C7661724B523E3C3E2727
            2C3C7661724B523E2C2727295D5C7061720D0A5C2763635C2765305C2766325C
            2765355C2766305C2765385C2765305C276562205C2766315C2766325C276535
            5C2765643A20202020205B566172546F537472283C51486F7573652E2257414C
            4C223E295D5C7061720D0A5C2764375C2765385C2766315C2765625C27656520
            205C2766645C2766325C2765305C2765365C2765355C2765393A20202020205B
            51486F7573652E22464C4F4F525F434E54225D5C7061720D0A5C7061720D0A5C
            2763615C2765655C2765635C2765385C2766315C2766315C2765385C27666620
            5C276532205C2766315C2765655C2766315C2766325C2765305C2765325C2765
            353A5C7061720D0A5C2763665C2766305C2765355C2765345C2766315C276535
            5C2765345C2765305C2766325C2765355C2765625C2766663A5C6220205C6631
            5C6C616E6731303333205B766172526F6C655D5C66305C6C616E673130343920
            205C62305C2763655C2763655C276365205C66315C6C616E67313033335C2761
            625C66305C6C616E67313034395C2763345C2763355C276337205C2763615C27
            65305C2765625C2765385C2765645C2765385C2765645C2766315C2765615C27
            65655C2765335C276565205C2766305C2765305C2765395C2765655C2765645C
            2765305C66315C6C616E67313033335C2762623A205C622020205B7661724D53
            455D205C7061720D0A5C62305C66305C6C616E67313034395C2764375C276562
            5C2765355C2765645C2765655C276532205C2765615C2765655C2765635C2765
            385C2766315C2766315C2765385C2765383A5C7061720D0A5C2763665C276630
            5C2765355C2765345C2766315C2766325C2765305C2765325C2765385C276632
            5C2765355C2765625C27666620285C2765345C2765655C2765625C2765365C27
            65645C2765655C2766315C2766325C276663292020202020202020205B566172
            546F537472283C7661724B6F6E74724E616D653E295D3A205C66315C6C616E67
            3130333320205C625C66305C6C616E673130343920205B7661725053455D5C66
            315C6C616E673130333320205C62305C66305C6C616E67313034395C7061720D
            0A5C2763665C2766305C2765355C2765345C2766315C2766325C2765305C2765
            325C2765385C2766325C2765355C2765625C276666205C2766315C2765655C27
            65315C2766315C2766325C2765325C2765355C2765645C2765645C2765385C27
            65615C2765655C276532205C2763635C2763615C276334205F5C66315C6C616E
            6731303333205F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5C66305C6C
            616E6731303439205F5F5F5F5F5F5C2764342E5C2763382E5C2763652E205C27
            65665C2766305C2765655C2765365C2765385C2765325C2765305C2766655C27
            66395C2765355C2765335C276565205C2765665C276565205C2765305C276534
            5C2766305C2765355C2766315C2766333A205C2766335C2765622E205F5F5F5C
            66315C6C616E6731303333205F5F5F5F5F5F5F5F5F5F5C66305C6C616E673130
            3439205F5F5F5F5F5F5F5F5F5F5F5F5F2C205C2765345C2765655C276563205C
            276239205F5F5F5F2C205C2765615C2765322E5C276239205F5F5F2E5C706172
            0D0A5C2763665C2766305C2765655C2765385C2765375C2765325C2765355C27
            65625C276530205C2765655C2766315C2765635C2765655C2766325C27663020
            5C2765325C2766625C2766385C2765355C2766335C2765615C2765305C276537
            5C2765305C2765645C2765645C2765655C2765335C276565205C2766315C2766
            325C2766305C2765655C2765355C2765645C2765385C276666205C276538205C
            2766335C2766315C2766325C2765305C2765645C2765655C2765325C2765385C
            2765625C276530205C2766315C2765625C2765355C2765345C2766335C276665
            5C2766395C2765355C2765353A5C667331365C7061720D0A7D0D0A00}
        end
      end
      object Memo19: TfrxMemoView
        Align = baBottom
        Top = 691.653989999999900000
        Width = 1046.929810000000000000
        Height = 26.456710000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          
            #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1086#1089#1084#1086#1090#1088#1072' '#1080#1085#1078#1077#1085#1077#1088#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' ('#1101#1083#1077#1082#1090#1088#1080#1095#1077#1089#1082#1072#1103' '#1095#1072#1089#1090#1100 +
            ').')
        ParentFont = False
      end
    end
    object Page2: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page2OnBeforePrint'
      object PageHeader1: TfrxPageHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 1.889822360000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        PrintOnFirstPage = False
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 192.756030000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = rep.Q_Struct
        DataSetName = 'QStruct'
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        OnMasterDetail = 'MasterData1OnMasterDetail'
        object QStructNAME: TfrxMemoView
          Left = 22.677180000000000000
          Width = 1023.496062990000000000
          Height = 18.897650000000000000
          OnAfterPrint = 'QStructNAMEOnAfterPrint'
          ShowHint = False
          DataField = 'NAME'
          DataSet = rep.Q_Struct
          DataSetName = 'QStruct'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[QStruct."NAME"]')
          ParentFont = False
        end
        object QStructNUM: TfrxMemoView
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NUM'
          DataSet = rep.Q_Struct
          DataSetName = 'QStruct'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            '[QStruct."NUM"]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        Height = 18.897650000000000000
        Top = 234.330860000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'DetailData1OnBeforePrint'
        DataSet = rep.QDef
        DataSetName = 'QDef'
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object QDefNAME: TfrxMemoView
          Left = 3.779530000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'QDefNAMEOnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rep.QDef
          DataSetName = 'QDef'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '-[QDef."NAME"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 185.220343070000000000
          Width = 187.086614170000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo15OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          AllowHTMLTags = True
          DataSet = rep.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 909.732283460000000000
          Width = 136.818897640000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rep.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 504.566929130000000000
          Width = 109.606299210000000000
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
        object Memo22: TfrxMemoView
          Left = 371.905511810000000000
          Width = 132.283464570000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo22OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 701.102362200000000000
          Width = 208.629921260000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rep.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 648.299630000000000000
          Width = 52.913385830000000000
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
        object Memo31: TfrxMemoView
          Left = 614.173228350000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
      end
      object SubdetailData1: TfrxSubdetailData
        Height = 18.897650000000000000
        Top = 275.905690000000000000
        Width = 1046.929810000000000000
        OnAfterPrint = 'SubdetailData1OnAfterPrint'
        OnBeforePrint = 'SubdetailData1OnBeforePrint'
        DataSet = rep.Q3
        DataSetName = 'Q3'
        KeepTogether = True
        RowCount = 0
        Stretched = True
        OnMasterDetail = 'SubdetailData1OnMasterDetail'
        object Q3MLISTNAME: TfrxMemoView
          Left = 371.905511810000000000
          Width = 132.283464570000000000
          Height = 18.897650000000000000
          OnAfterData = 'Q3MLISTNAMEOnAfterData'
          OnBeforePrint = 'Q3MLISTNAMEOnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rep.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q3."MLISTNAME"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 185.236108190000000000
          Width = 187.086614170000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NOTE'
          DataSet = rep.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q3."NOTE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 504.566929130000000000
          Width = 109.606299210000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'MNOTE'
          DataSet = rep.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q3."MNOTE"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 701.102362200000000000
          Top = 0.118119999999976000
          Width = 208.629921260000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo18OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rep.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Q3MLISTED1: TfrxMemoView
          Left = 614.173228350000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'MLISTED'
          DataSet = rep.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q3."MLISTED"]')
          ParentFont = False
        end
        object Q3QUANTITY1: TfrxMemoView
          Left = 648.188976380000000000
          Width = 52.913385830000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = rep.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[IIF(<Q3."QUANTITY">=0,'#39#39',<Q3."QUANTITY">)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 1000.440944880000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 955.221090000000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 909.732283460000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo21OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
      end
      object MasterData4: TfrxMasterData
        Height = 18.897637800000000000
        Top = 396.850650000000000000
        Width = 1046.929810000000000000
        DataSet = frds_1
        DataSetName = 'ds_kr'
        RowCount = 0
        Stretched = True
        object Memo96: TfrxMemoView
          Align = baLeft
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'KR'
          DataSet = frds_1
          DataSetName = 'ds_kr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_kr."KR"]')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Align = baLeft
          Left = 381.732530000000000000
          Width = 309.921460000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'TR'
          DataSet = frds_1
          DataSetName = 'ds_kr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_kr."TR"]')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Align = baLeft
          Left = 340.157700000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'V'
          DataSet = frds_1
          DataSetName = 'ds_kr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_kr."V"]')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          Align = baLeft
          Left = 691.653990000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'TO'
          DataSet = frds_1
          DataSetName = 'ds_kr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_kr."TO"]')
          ParentFont = False
        end
      end
      object Header4: TfrxHeader
        Height = 56.692950000000000000
        Top = 317.480520000000000000
        Width = 1046.929810000000000000
        object Memo82: TfrxMemoView
          Left = 294.803340000000000000
          Top = 11.338590000000000000
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1042#1099#1074#1086#1076#1099' '#1080' '#1087#1088#1077#1076#1083#1086#1078#1077#1085#1080#1103' '#1087#1086' '#1092#1072#1082#1090#1091' '#1075#1086#1090#1086#1074#1085#1086#1089#1090#1080' '#1079#1076#1072#1085#1080#1103' '#1082' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1080':')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Align = baLeft
          Top = 37.795300000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16777180
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1072#1087#1080#1090#1072#1083#1100#1085#1099#1081' '#1088#1077#1084#1086#1085#1090)
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Align = baLeft
          Left = 691.653990000000000000
          Top = 37.795300000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16777180
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1077#1093#1085#1080#1095#1077#1089#1082#1086#1077' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077)
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Align = baLeft
          Left = 340.157700000000000000
          Top = 37.795300000000000000
          Width = 351.496290000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16777180
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1077#1082#1091#1097#1080#1081' '#1088#1077#1084#1086#1085#1090)
          ParentFont = False
        end
      end
      object ReportSummary3: TfrxReportSummary
        Height = 211.653387090000000000
        Top = 585.827150000000000000
        Width = 1046.929810000000000000
        object Memo93: TfrxMemoView
          Align = baClient
          Width = 1046.929810000000000000
          Height = 211.653387090000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ''
            #1055#1086#1076#1087#1080#1089#1080' '#1082#1086#1084#1080#1089#1089#1080#1080':'
            
              #1055#1088#1077#1076#1089#1077#1076#1072#1090#1077#1083#1100' '#8211' [varRole]  '#1054#1054#1054' '#171#1044#1045#1047' '#1050#1072#1083#1080#1085#1080#1085#1089#1082#1086#1075#1086' '#1088#1072#1081#1086#1085#1072#187'         ' +
              '          __________________         [varMSE]'
            
              '                                                                ' +
              '                                                                ' +
              '                '#1087#1086#1076#1087#1080#1089#1100'                                         ' +
              #1060'.'#1048'.'#1054'.'
            #1063#1083#1077#1085#1099' '#1082#1086#1084#1080#1089#1089#1080#1080' '
            
              #1048#1085#1078#1077#1085#1077#1088'-'#1082#1091#1088#1072#1090#1086#1088' '#1057#1069' '#1054#1054#1054' '#171#1044#1045#1047' '#1050#1072#1083#1080#1085#1080#1085#1089#1082#1086#1075#1086' '#1088#1072#1081#1086#1085#1072#187'            ____' +
              '____________________              ______________________________' +
              '_______'
            
              '                                                                ' +
              '                                                                ' +
              '   '#1087#1086#1076#1087#1080#1089#1100'                                                      ' +
              '              '#1060'.'#1048'.'#1054'.'
            ''
            
              #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100' '#1054#1054#1054' - [VarToStr(<varKontrName>)]:                 ' +
              '       ________________________             [varPSE]'
            
              '                                                                ' +
              '                                                                ' +
              '  '#1087#1086#1076#1087#1080#1089#1100'                                                  '#1060'.'#1048'.'#1054 +
              '.'
            ''
            
              #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1080#1082#1086#1074' '#1052#1050#1044' _______________________   ______' +
              '__________________         _____________________________________'
            
              '                                                                ' +
              ' '#1040#1076#1088#1077#1089' '#1076#1086#1084#1072', '#8470' '#1082#1074#1072#1088#1090#1080#1088#1099',                      '#1087#1086#1076#1087#1080#1089#1100'           ' +
              '                                             '#1060'.'#1048'.'#1054'.')
          ParentFont = False
        end
      end
      object Header3: TfrxHeader
        Height = 86.929133860000000000
        Top = 83.149660000000000000
        Width = 1046.929810000000000000
        object Memo9: TfrxMemoView
          Top = 0.779529999999994000
          Width = 185.196970000000000000
          Height = 86.929190000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1081','
            #1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' '#1080' '#1101#1083#1077#1084#1077#1085#1090#1086#1074' '#1073#1083#1072#1075#1086#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072)
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 185.220360160000000000
          Top = 0.779529999999994000
          Width = 187.086655670000000000
          Height = 86.929190000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1087#1080#1089#1072#1085#1080#1077' '#1076#1077#1092#1077#1082#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 701.157665830000000000
          Top = 1.267716540000010000
          Width = 208.629921260000000000
          Height = 86.929190000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1052#1077#1089#1090#1086' '#1088#1072#1089#1087#1086#1083#1086#1078#1077#1085#1080#1103' '#1076#1077#1092#1077#1082#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 909.866141730000000000
          Top = 0.889763780000010000
          Width = 136.818897640000000000
          Height = 66.141732280000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1077#1096#1077#1085#1080#1077' '#1086' '#1087#1088#1080#1085#1103#1090#1080#1080' '#1084#1077#1088)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 371.748300000000000000
          Top = 1.000000000000000000
          Width = 132.283464570000000000
          Height = 86.929190000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1080#1076' '#1088#1072#1073#1086#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 504.457020000000000000
          Top = 1.000000000000000000
          Width = 109.606370000000000000
          Height = 86.929133860000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1052#1072#1090#1077#1088#1080#1072#1083)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 614.063390000000000000
          Top = 1.000000000000000000
          Width = 34.015672360000000000
          Height = 86.929190000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1045#1076'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 648.079160000000000000
          Top = 1.110233779999990000
          Width = 52.913420000000000000
          Height = 86.929133860000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1073#1098#1077#1084' '#1088#1077#1084#1086#1085#1090#1085#1099#1093' '#1088#1072#1073#1086#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 1000.354950710000000000
          Top = 67.031540000000000000
          Width = 45.354360000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1056)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 955.000620000000000000
          Top = 67.031540000000000000
          Width = 45.354330710000000000
          Height = 20.787401570000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1056)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 909.866730000000000000
          Top = 67.031540000000000000
          Width = 45.354330710000000000
          Height = 20.787401570000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1054)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object M5: TfrxMasterData
        Height = 18.897637800000000000
        Top = 506.457020000000000000
        Width = 1046.929810000000000000
        DataSet = rep.Q_zam
        DataSetName = 'Q_zam'
        KeepHeader = True
        KeepTogether = True
        RowCount = 0
        object Memo95: TfrxMemoView
          Align = baWidth
          Top = 0.086580000000026300
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rep.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q_zam."PONOTE"]')
          ParentFont = False
        end
      end
      object H5: TfrxHeader
        Height = 45.354360000000000000
        Top = 438.425480000000000000
        Width = 1046.929810000000000000
        object Memo94: TfrxMemoView
          Align = baWidth
          Top = 22.677180000000000000
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1047#1072#1084#1077#1095#1072#1085#1080#1103' '#1082' '#1072#1082#1090#1091)
          ParentFont = False
        end
      end
    end
    object Page3: TfrxReportPage
      Visible = False
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportSummary1: TfrxReportSummary
        Height = 249.448687090000000000
        Top = 143.622140000000000000
        Width = 1046.929810000000000000
        object Memo20: TfrxMemoView
          Align = baClient
          Width = 1046.929810000000000000
          Height = 249.448687090000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ''
            #1055#1086#1076#1087#1080#1089#1080' '#1082#1086#1084#1080#1089#1089#1080#1080':'
            ''
            
              #1055#1088#1077#1076#1089#1077#1076#1072#1090#1077#1083#1100' '#8211' [varRole]  '#1054#1054#1054' '#171#1044#1045#1047' '#1050#1072#1083#1080#1085#1080#1085#1089#1082#1086#1075#1086' '#1088#1072#1081#1086#1085#1072#187' [varMSE]' +
              '          _____________________________________'
            
              '                                                                ' +
              '                                                                ' +
              '                                                                ' +
              ' '#1087#1086#1076#1087#1080#1089#1100'                                                        ' +
              '                  '#1060'.'#1048'.'#1054'.'
            #1063#1083#1077#1085#1099' '#1082#1086#1084#1080#1089#1089#1080#1080' '
            
              #1048#1085#1078#1077#1085#1077#1088'-'#1082#1091#1088#1072#1090#1086#1088' '#1057#1069' '#1054#1054#1054' '#171#1044#1045#1047' '#1050#1072#1083#1080#1085#1080#1085#1089#1082#1086#1075#1086' '#1088#1072#1081#1086#1085#1072#187'            ____' +
              '____________________              ______________________________' +
              '_______'
            
              '                                                                ' +
              '                                                                ' +
              '                                                                ' +
              ' '#1087#1086#1076#1087#1080#1089#1100'                                                        ' +
              '                  '#1060'.'#1048'.'#1054'.'
            ''
            
              #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100' '#1054#1054#1054'___________________________________     _______' +
              '_________________           ____________________________________'
            
              '                                                                ' +
              '    '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'                                    ' +
              '                                         '#1087#1086#1076#1087#1080#1089#1100'                ' +
              '                                                            '#1060'.'#1048'.' +
              #1054'.'
            ''
            ''
            
              #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1080#1082#1086#1074' '#1052#1050#1044' _______________________   ______' +
              '__________________         _____________________________________'
            
              '                                                                ' +
              ' '#1040#1076#1088#1077#1089' '#1076#1086#1084#1072', '#8470' '#1082#1074#1072#1088#1090#1080#1088#1099',                                        ' +
              '                                            '#1087#1086#1076#1087#1080#1089#1100'             ' +
              '                                                              '#1060'.' +
              #1048'.'#1054'.')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        Height = 18.897637800000000000
        Top = 64.252010000000000000
        Width = 1046.929810000000000000
        DataSet = rep.Q4
        DataSetName = 'Q4'
        RowCount = 0
        Stretched = True
        object Memo83: TfrxMemoView
          Align = baWidth
          Left = 30.236240000000000000
          Width = 1016.693570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NAME'
          DataSet = rep.Q4
          DataSetName = 'Q4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Q4."NAME"]')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'V'
          DataSet = rep.Q4
          DataSetName = 'Q4'
          Memo.UTF8W = (
            '[Q4."V"]')
        end
      end
      object Header2: TfrxHeader
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo87: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1042#1099#1074#1086#1076#1099' '#1080' '#1087#1088#1077#1076#1083#1086#1078#1077#1085#1080#1103' '#1087#1086' '#1092#1072#1082#1090#1091' '#1075#1086#1090#1086#1074#1085#1086#1089#1090#1080' '#1079#1076#1072#1085#1080#1103' '#1082' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1080':')
          ParentFont = False
        end
      end
    end
    object Page4: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page4OnBeforePrint'
      object ReportTitle2: TfrxReportTitle
        Height = 1024.252630000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo35: TfrxMemoView
          Left = 548.031850000000000000
          Top = 10.000000000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Visible = False
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1054#1054#1054' "'#1044#1077#1079' '#1050#1072#1083#1080#1085#1080#1085#1089#1082#1086#1075#1086' '#1088#1072#1081#1086#1085#1072'"')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 317.480520000000000000
          Top = 28.897650000000000000
          Width = 400.630180000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077' '#8470'3'
            #1082' '#1076#1086#1075#1086#1074#1086#1088#1091' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1103
            #1084#1085#1086#1075#1086#1082#1074#1072#1088#1090#1080#1088#1085#1099#1084' '#1076#1086#1084#1086#1084' '#8470' [varHouse] '#1086#1090' ________20___'#1075'.')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Align = baWidth
          Top = 247.031540000000000000
          Width = 718.110700000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #1040#1082#1090
            
              #1054' '#1089#1086#1089#1090#1086#1103#1085#1080#1080' '#1086#1073#1097#1077#1075#1086' '#1080#1084#1091#1097#1077#1089#1090#1074#1072' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1080#1082#1086#1074' '#1087#1086#1084#1077#1097#1077#1085#1080#1081' '#1074' '#1084#1085#1086#1075#1086#1082#1074#1072#1088 +
              #1090#1080#1088#1085#1086#1084' '#1076#1086#1084#1077)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Align = baWidth
          Top = 296.165430000000000000
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470'[varHouse]  '#1087#1086' '#1091#1083'. [varStreet]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Align = baWidth
          Top = 322.622140000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #1086#1090'  [Gl."D3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Align = baWidth
          Top = 366.299320000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1054#1073#1097#1080#1077' '#1089#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1084#1085#1086#1075#1086#1082#1074#1072#1088#1090#1080#1088#1085#1086#1084' '#1076#1086#1084#1077':')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Align = baWidth
          Top = 395.212740000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              ' '#1050#1072#1076#1072#1089#1090#1088#1086#1074#1099#1081' '#1085#1086#1084#1077#1088' '#1084#1085#1086#1075#1086#1082#1074#1072#1088#1090#1080#1088#1085#1086#1075#1086' '#1076#1086#1084#1072'  ______________________' +
              '__________________')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Align = baLeft
          Top = 414.110390000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1043#1086#1076' '#1087#1086#1089#1090#1088#1086#1081#1082#1080':')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Align = baWidth
          Top = 433.008040000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              #1057#1090#1077#1087#1077#1085#1100' '#1080#1079#1085#1086#1089#1072' '#1087#1086' '#1076#1072#1085#1085#1099#1084' '#1075#1086#1089#1091#1076#1072#1088#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1090#1077#1093#1085#1080#1095#1077#1089#1082#1086#1075#1086' '#1091#1095#1077#1090#1072' ___' +
              '____________________')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Align = baWidth
          Top = 451.905690000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              #1057#1090#1077#1087#1077#1085#1100' '#1092#1072#1082#1090#1080#1095#1077#1089#1082#1086#1075#1086' '#1080#1079#1085#1086#1089#1072' ____________________________________' +
              '_________________')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Align = baWidth
          Top = 470.803340000000000000
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              #1056#1077#1082#1074#1080#1079#1080#1090#1099' '#1087#1088#1072#1074#1086#1074#1086#1075#1086' '#1072#1082#1090#1072' '#1086' '#1087#1088#1080#1079#1085#1072#1085#1080#1080' '#1084#1085#1086#1075#1086#1082#1074#1072#1088#1090#1080#1088#1085#1086#1075#1086' '#1076#1086#1084#1072' '#1072#1074#1072#1088#1080 +
              #1081#1085#1099#1084' '#1080
            
              #1087#1086#1076#1083#1077#1078#1072#1097#1080#1084' '#1089#1085#1086#1089#1091' _______________________________________________' +
              '_______________')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Align = baLeft
          Top = 508.598640000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1052#1072#1090#1077#1088#1080#1072#1083' '#1089#1090#1077#1085':')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Align = baLeft
          Top = 527.496290000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1063#1080#1089#1083#1086' '#1101#1090#1072#1078#1077#1081':')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Align = baLeft
          Top = 546.393940000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1053#1072#1083#1080#1095#1080#1077' '#1087#1086#1076#1074#1072#1083#1072' '#1080#1083#1080' '#1087#1086#1083#1091#1087#1086#1076#1074#1072#1083#1072':')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Align = baWidth
          Top = 565.291590000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1054#1073#1097#1072#1103' '#1087#1083#1086#1097#1072#1076#1100' '#1087#1086#1084#1077#1097#1077#1085#1080#1081':')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Align = baLeft
          Top = 584.189240000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1050#1086#1083'-'#1074#1086' '#1087#1086#1076#1098#1077#1079#1076#1086#1074':')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Align = baWidth
          Top = 603.086890000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1055#1083#1086#1097#1072#1076#1100' '#1083'/'#1082#1083#1077#1090#1086#1082':')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Align = baWidth
          Top = 621.984540000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1059#1073#1086#1088#1086#1095#1085#1072#1103' '#1087#1083#1086#1097#1072#1076#1100' ('#1087#1088#1080#1076#1086#1084#1086#1074#1086#1081' '#1090#1077#1088#1088#1080#1090#1086#1088#1080#1080'):')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Align = baLeft
          Top = 640.882190000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1055#1083#1086#1097#1072#1076#1100' '#1095#1077#1088#1076#1072#1082#1086#1074' ('#1090#1077#1093#1085#1080#1095#1077#1089'. '#1101#1090#1072#1078#1077#1081'):')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Align = baLeft
          Top = 659.779840000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1042#1080#1076' '#1082#1088#1086#1074#1083#1080':')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Align = baWidth
          Left = 90.708720000000000000
          Top = 659.779840000000000000
          Width = 627.401980000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 257.007874020000000000
          Top = 640.858267720000000000
          Width = 461.102660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Align = baLeft
          Top = 678.677490000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1050#1086#1083'-'#1074#1086' '#1097#1080#1090#1086#1074#1099#1093':')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Align = baWidth
          Left = 124.724490000000000000
          Top = 678.677490000000000000
          Width = 593.386210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Align = baLeft
          Top = 697.575140000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1051#1080#1092#1090#1099' ('#1082#1086#1083'-'#1074#1086', '#1074#1080#1076'):')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 143.622047240000000000
          Top = 697.551181100000000000
          Width = 574.488560000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Align = baLeft
          Top = 716.472790000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1058#1077#1083#1077#1074#1080#1076#1077#1085#1080#1077':')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 143.622047240000000000
          Top = 716.448818900000000000
          Width = 574.488560000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Align = baLeft
          Top = 735.370440000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1042#1077#1085#1090#1080#1083#1103#1094#1080#1103':')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 102.047244090000000000
          Top = 735.346456690000000000
          Width = 616.063390000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Align = baLeft
          Top = 754.268090000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1052#1091#1089#1086#1088#1086#1087#1088#1086#1074#1086#1076':')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Align = baWidth
          Top = 884.945270000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1086#1089#1084#1086#1090#1088#1072' '#1089#1090#1088#1086#1080#1090#1077#1083#1100#1085#1099#1093' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1081' '#1080' '#1080#1085#1078#1077#1085#1077#1088#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076 +
              #1086#1074#1072#1085#1080#1103)
          ParentFont = False
        end
        object QHouseBUILDYEAR: TfrxMemoView
          Left = 105.826840000000000000
          Top = 413.968770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BUILDYEAR'
          DataSet = rep.QHouse
          DataSetName = 'QHouse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[QHouse."BUILDYEAR"]')
          ParentFont = False
        end
        object QHouseFLOOR_CNT: TfrxMemoView
          Left = 109.606370000000000000
          Top = 527.622047244095000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FLOOR_CNT'
          DataSet = rep.QHouse
          DataSetName = 'QHouse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[QHouse."FLOOR_CNT"]')
          ParentFont = False
        end
        object QHouseCELLAR_SQ: TfrxMemoView
          Left = 241.889920000000000000
          Top = 546.519685039370000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CELLAR_SQ'
          DataSet = rep.QHouse
          DataSetName = 'QHouse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[QHouse."CELLAR_SQ"]')
          ParentFont = False
        end
        object QHouseTOTAL_SQ: TfrxMemoView
          Left = 196.535560000000000000
          Top = 565.417322834646000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TOTAL_SQ'
          DataSet = rep.QHouse
          DataSetName = 'QHouse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[QHouse."TOTAL_SQ"]')
          ParentFont = False
        end
        object QHouseENTRANCE_CNT: TfrxMemoView
          Left = 147.401670000000000000
          Top = 584.314960629921000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ENTRANCE_CNT'
          DataSet = rep.QHouse
          DataSetName = 'QHouse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[QHouse."ENTRANCE_CNT"]')
          ParentFont = False
        end
        object QHouseLIFT_CNT: TfrxMemoView
          Left = 151.181200000000000000
          Top = 697.700787401575000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'LIFT_CNT'
          DataSet = rep.QHouse
          DataSetName = 'QHouse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[QHouse."LIFT_CNT"]')
          ParentFont = False
        end
        object QHouseGARBAGE_CNT: TfrxMemoView
          Left = 136.063080000000000000
          Top = 754.393700787402000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'GARBAGE_CNT'
          DataSet = rep.QHouse
          DataSetName = 'QHouse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[QHouse."GARBAGE_CNT"]')
          ParentFont = False
        end
        object QHouseWALL: TfrxMemoView
          Left = 115.165430000000000000
          Top = 508.724409450000000000
          Width = 476.220780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'WALL'
          DataSet = rep.QHouse
          DataSetName = 'QHouse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[QHouse."WALL"]')
          ParentFont = False
        end
      end
    end
    object Page5: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page5OnBeforePrint'
      object Header1: TfrxHeader
        Height = 45.354330708661400000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo77: TfrxMemoView
          Align = baRight
          Left = 638.740570000000000000
          Width = 79.370130000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1072#1087#1080#1090#1072#1083#1100#1085#1099#1081' '#1088#1077#1084#1086#1085#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 559.929500000000000000
          Width = 79.370078740000000000
          Height = 45.354360000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1077#1082#1091#1097#1080#1081' '#1088#1077#1084#1086#1085#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          Width = 185.196970000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1081', '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' '#1080' '#1101#1083#1077#1084#1077#1085#1090#1086#1074' '#1073#1083#1072#1075#1086#1091#1089#1090#1088#1086#1081#1089#1090 +
              #1074#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Left = 185.196970000000000000
          Width = 374.929133860000000000
          Height = 45.354360000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1094#1077#1085#1082#1072' '#1089#1086#1089#1090#1086#1103#1085#1080#1103' '#1080#1083#1080' '#1082#1088#1072#1090#1082#1086#1077' '#1086#1087#1080#1089#1072#1085#1080#1077' '#1076#1077#1092#1077#1082#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        Height = 18.897637800000000000
        Top = 86.929190000000000000
        Width = 718.110700000000000000
        DataSet = rep.Q_Struct
        DataSetName = 'QStruct'
        RowCount = 0
        object Memo68: TfrxMemoView
          Align = baWidth
          Left = 22.677180000000000000
          Width = 695.433520000000000000
          Height = 18.897650000000000000
          OnAfterPrint = 'QStructNAMEOnAfterPrint'
          ShowHint = False
          DataField = 'NAME'
          DataSet = rep.Q_Struct
          DataSetName = 'QStruct'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[QStruct."NAME"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Align = baLeft
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NUM'
          DataSet = rep.Q_Struct
          DataSetName = 'QStruct'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            '[QStruct."NUM"]')
          ParentFont = False
        end
      end
      object DetailData2: TfrxDetailData
        Height = 18.897650000000000000
        Top = 128.504020000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'DetailData1OnBeforePrint'
        DataSet = rep.QDef
        DataSetName = 'QDef'
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        object Memo70: TfrxMemoView
          Left = 3.779530000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'QDefNAMEOnBeforePrint'
          ShowHint = False
          DataSet = rep.QDef
          DataSetName = 'QDef'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '-[QDef."NAME"]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 909.732283464567000000
          Width = 136.818897640000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rep.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Left = 185.196850390000000000
          Width = 374.929133860000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo71OnBeforePrint'
          ShowHint = False
          AllowHTMLTags = True
          DataSet = rep.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 638.740157480000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 559.748031500000000000
          Width = 79.370078740157500000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
      end
      object SubdetailData2: TfrxSubdetailData
        Height = 18.897650000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'SubdetailData1OnAfterPrint'
        OnBeforePrint = 'SubdetailData1OnBeforePrint'
        DataSet = rep.Q5
        DataSetName = 'Q5'
        KeepTogether = True
        RowCount = 0
        Stretched = True
        OnMasterDetail = 'SubdetailData1OnMasterDetail'
        object Memo78: TfrxMemoView
          Left = 185.196850390000000000
          Width = 374.929133860000000000
          Height = 18.897650000000000000
          OnAfterData = 'Q3MLISTNAMEOnAfterData'
          OnBeforePrint = 'Q3MLISTNAMEOnBeforePrint'
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = rep.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HideZeros = True
          Memo.UTF8W = (
            '[Q5."MLISTNAME"]')
          ParentFont = False
          SuppressRepeated = True
        end
        object Memo84: TfrxMemoView
          Left = 1000.440944880000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 955.221090000000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 909.732283460000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo21OnBeforePrint'
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 638.740157480000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
          SuppressRepeated = True
        end
        object Memo74: TfrxMemoView
          Left = 559.748031500000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo74OnBeforePrint'
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
          SuppressRepeated = True
        end
      end
      object ReportSummary2: TfrxReportSummary
        Height = 136.063080000000000000
        Top = 249.448980000000000000
        Width = 718.110700000000000000
        object Memo89: TfrxMemoView
          Align = baWidth
          Top = 55.000000000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Visible = False
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '    '#1043#1077#1085#1077#1088#1072#1083#1100#1085#1099#1081' '#1076#1080#1088#1077#1082#1090#1086#1088)
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Align = baWidth
          Top = 77.677180000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '   '#1044#1080#1088#1077#1082#1090#1086#1088' '#1054#1054#1054' "'#1050#1072#1083#1080#1085#1080#1085#1089#1082#1080#1081' '#1044#1045#1047'" __________________________'#1050'.'#1048'.' +
              ' '#1057#1084#1080#1088#1085#1086#1074)
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 444.409710000000000000
          Top = 102.574830000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1052'.'#1055'.                       "____"___________20  '#1075'.')
          ParentFont = False
        end
      end
    end
  end
  object src_kontagent: TDataSource
    Left = 440
    Top = 120
  end
  object fr: TfrxReport
    Version = '4.15.10'
    DataSetName = 'usds'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    OldStyleProgress = True
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40561.913060613400000000
    ReportOptions.LastChange = 42128.832308425930000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure SubdetailData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                  '
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  AType :string;                                        '
      'begin'
      
        '   //'#1086#1090#1082#1088#1099#1090#1100' '#1079#1072#1087#1088#1086#1089' '#1087#1086' '#1076#1086#1084#1091' '#1089' '#1087#1072#1088#1072#1084#1077#1090#1088#1086#1084' Report.variables['#39'varHo' +
        'useCod'#39'];'
      
        '  QHouse.ParamByName('#39'CODE'#39').Value:=Report.variables['#39'varHouseCo' +
        'd'#39'];'
      '  QHouse.Open;'
      
        '   if Report.variables['#39'varASType'#39']='#39#1074#1077#1089#1085#1072#39' then AType:='#39#1074#1077#1089#1077#1085#1085#1077 +
        #1075#1086' '#1086#1089#1084#1086#1090#1088#1072#39' else                    '
      
        '   if Report.variables['#39'varASType'#39']='#39#1086#1089#1077#1085#1100#39' then AType:='#39#1086#1089#1077#1085#1085#1077#1075 +
        #1086' '#1086#1089#1084#1086#1090#1088#1072#39'  else               '
      
        '   if Report.variables['#39'varASType'#39']='#39#1074#1085#1077#1087#1083#1072#1085#1086#1074#1099#1081#39' then AType:='#39#1074 +
        #1085#1077#1087#1083#1072#1085#1086#1074#1086#1075#1086' '#1086#1089#1084#1086#1090#1088#1072#39' else'
      
        '                                                 AType:='#39#1086#1073#1097#1077#1075#1086' ' +
        #1086#1089#1077#1085#1085#1077#1075#1086'/'#1074#1077#1089#1077#1085#1085#1077#1075#1086' '#1086#1089#1084#1086#1090#1088#1072#39';                 '
      '  if Report.variables['#39'varSType'#39']=0 then'
      '  begin      '
      '   Memo3.text:='#39#1040#1082#1090#39'+#13+    '
      '               AType+#13+    '
      
        '               '#39#1089#1090#1088#1086#1080#1090#1077#1083#1100#1085#1099#1093' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1081' '#1080' '#1080#1085#1078#1077#1085#1077#1088#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072 +
        #1085#1080#1103#39';    '
      '  '
      '   Report.Variables['#39'varRole'#39']:=#39+'#39#1089#1090'.'#1084#1077#1085#1077#1076#1078#1077#1088#1072' '#1057#1069#39'+#39;  '
      
        '   Memo19.text:='#39#1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1086#1089#1084#1086#1090#1088#1072' '#1089#1090#1088#1086#1080#1090#1077#1083#1100#1085#1099#1093' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1081' '#1080' '#1080 +
        #1085#1078#1077#1085#1077#1088#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103'.'#39
      '  end;'
      '  if Report.variables['#39'varSType'#39']=1 then      '
      
        '  begin                                                         ' +
        '         '
      '   Memo3.text:='#39#1040#1082#1090#39'+#13+                  '
      '               AType+#13+     '
      
        '               '#39#1080#1085#1078#1077#1085#1077#1088#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' ('#1101#1083#1077#1082#1090#1088#1080#1095#1077#1089#1082#1072#1103' '#1095#1072#1089#1090#1100')'#39';' +
        '    '
      '          '
      
        '   Memo19.text:='#39#1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1086#1089#1084#1086#1090#1088#1072' '#1080#1085#1078#1077#1085#1077#1088#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' ('#1101#1083 +
        #1077#1082#1090#1088#1086#1090#1077#1093#1085#1080#1095#1077#1089#1082#1072#1103' '#1095#1072#1089#1090#1100').'#39';'
      
        '   Report.Variables['#39'varRole'#39']:=#39+'#39#1101#1085#1077#1088#1075#1077#1090#1080#1082' '#1057#1069#39'+#39;         ' +
        '                                            '
      
        '   Report.variables['#39'varMSE'#39']:=#39+'#39#1057#1091#1074#1086#1088#1086#1074' '#1054#1083#1077#1075' '#1051#1077#1086#1085#1080#1076#1086#1074#1080#1095#39'+#39' +
        ';                             '
      '  end;'
      '  if Report.variables['#39'varSType'#39']=3 then'
      '  begin      '
      '   Memo3.text:='#39#1040#1082#1090#39'+#13+    '
      '               AType+#13+    '
      
        '               '#39#1080#1085#1078#1077#1085#1077#1088#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' ('#1074#1085#1091#1090#1088#1080#1076#1086#1084#1086#1074#1086#1077' '#1075#1072#1079#1086#1074#1086#1077' ' +
        #1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077')'#39';    '
      '  '
      '   Report.Variables['#39'varRole'#39']:=#39+'#39#1084#1077#1085#1077#1076#1078#1077#1088' '#1057#1069#39'+#39;'
      
        '   Report.variables['#39'varMSE'#39']:=#39+'#39#1054#1089#1080#1087#1077#1085#1082#1086' '#1040#1085#1090#1086#1085' '#1057#1077#1088#1075#1077#1077#1074#1080#1095#39'+#3' +
        '9;       '
      
        '   Memo19.text:='#39#1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1086#1089#1084#1086#1090#1088#1072' '#1080#1085#1078#1077#1085#1077#1088#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' ('#1074#1085 +
        #1091#1090#1088#1080#1076#1086#1084#1086#1074#1086#1077' '#1075#1072#1079#1086#1074#1086#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077').'#39
      '  end;'
      '  if Report.variables['#39'varSType'#39']=2 then'
      '  begin      '
      '   Memo3.text:='#39#1040#1082#1090#39'+#13+    '
      '               AType+#13+    '
      
        '               '#39#1080#1085#1078#1077#1085#1077#1088#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' ('#1051#1080#1092#1090#1086#1074#1086#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077')' +
        #39';    '
      '  '
      '   Report.Variables['#39'varRole'#39']:=#39+'#39#1084#1077#1085#1077#1076#1078#1077#1088' '#1057#1069#39'+#39;'
      
        '   Report.variables['#39'varMSE'#39']:=#39+'#39#1054#1089#1080#1087#1077#1085#1082#1086' '#1040#1085#1090#1086#1085' '#1057#1077#1088#1075#1077#1077#1074#1080#1095#39'+#3' +
        '9;       '
      
        '   Memo19.text:='#39#1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1086#1089#1084#1086#1090#1088#1072' '#1080#1085#1078#1077#1085#1077#1088#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' ('#1051#1080 +
        #1092#1090#1086#1074#1086#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077').'#39
      '  end;      '
      
        '  FIBQuery1.ParamByName('#39'House'#39').Value:=Report.variables['#39'varHou' +
        'seCod'#39'];'
      
        '  FIBQuery1.ParamByName('#39'shouse'#39').Value:=Report.variables['#39'varAk' +
        't'#39'];'
      '  FIBQuery1.Open;'
      '  if FIBQuery1.FieldByName('#39'SHOWDATE'#39').AsVariant=null then'
      '  memo4.text:='#39#39' else'
      
        '  memo4.text:='#39#1044#1072#1090#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#39'+FIBQuery1.FieldByName('#39'SHOWDATE' +
        #39').AsString;'
      '  // [VarToStr([IIF(<QHouse."WALL"><>0,<QHouse."WALL">,'#39#39')])]'
      
        ' // fio.ParamByName('#39'cod'#39').Value:=Report.variables['#39'varHouseCod'#39 +
        '];'
      '//  fio.Open;'
      '  '
      'end;  '
      '  '
      'procedure Page2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Q_Struct.ParamByName('#39'stp'#39').Value:=Report.variables['#39'varSType'#39 +
        '];                          '
      
        '  Q3.ParamByName('#39'house'#39').Value:=Report.variables['#39'varHouseCod'#39']' +
        ';'
      '  Q3.ParamByName('#39'shouse'#39').Value:=Report.variables['#39'varAkt'#39'];'
      '  Q3.ParamByName('#39'stp'#39').Value:=Report.variables['#39'varSType'#39'];'
      ''
      
        '  Q4.ParamByName('#39'house'#39').Value:=Report.variables['#39'varHouseCod'#39']' +
        ';'
      '  Q4.ParamByName('#39'shouse'#39').Value:=Report.variables['#39'varAkt'#39'];'
      
        '  Q4.ParamByName('#39'stp'#39').Value:=Report.variables['#39'varSType'#39'];    ' +
        '  '
      '  {if Q3.recordcount = 0 then'
      '  memo22.text:='#39#1091#1090#1074#1077#1088#1076#1080#1090#1077#1083#1100#1085#1086#39' else'
      '  memo22.text:='#39#39';}'
      
        '                                                                ' +
        '                                                           '
      'end;'
      ''
      'procedure Memo15OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if <Q3."NUM"> > 0 then'
      '    Memo15.text:='#39#39' else'
      '    //Memo15.text:='#39'<font color="#059E00">'#1091#1090#1074#1077#1088#1076#1080#1090#1077#1083#1100#1085#1086'</font>'#39';'
      
        '    Memo15.text:='#39'<font color=green>'#1091#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1086'</font>'#39';  ' +
        '      '
      'end;'
      ''
      'procedure Memo71OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   if <Q5."NUM"> > 0 then                        '
      '    Memo71.text:='#39#39' else'
      '    Memo71.text:='#39'<font color=green>'#1091#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1086'</font>'#39';  '
      'end;  '
      '  '
      'procedure Memo18OnBeforePrint(Sender: TfrxComponent);'
      'var '
      
        '  en,flor,flat,typ :string;                                     ' +
        '              '
      'begin'
      '  if <Q3."ENTRANCE"> <> 0 then'
      
        '  en:='#39#1087#1076'.'#39'+VarToStr(<Q3."ENTRANCE">) else en:='#39#39';              ' +
        '                     '
      '  if <Q3."FLOOR"> <> 0 then'
      
        '  flor:='#39' '#1101#1090#1072#1078#39'+VarToStr(<Q3."FLOOR">)+'#39' '#39' else flor:='#39#39';       ' +
        '                                     '
      '  //Memo18.Text:=Memo18.Text+'#39' '#1101#1090#1072#1078' '#39'+VarToStr(<Q3."FLOOR">);  '
      '  if (<Q3."FLAT"> <> '#39#39') and (<Q3."FLAT"> <> '#39#1085#1077' '#1091#1082#1072#1079#1072#1085#1072#39') then'
      '  flat:='#39' '#1082#1074'.'#39'+<Q3."FLAT">+'#39' '#39' else flat:='#39#39';;            '
      '  //Memo18.Text:=Memo18.Text+'#39' '#1082#1074'. '#39'+<Q3."FLAT">;'
      '  if <Q3."ACOD">=0 then typ:='#39#39' else'
      '                        typ:=<Q3."ATYPE">;                '
      '  Memo18.Text:=en+flor+flat+'#39'  '#39'+typ;                     '
      'end;'
      ''
      'procedure Memo21OnBeforePrint(Sender: TfrxComponent);'
      ''
      '  procedure ClearTO;'
      '  begin'
      '    Memo21.Text:='#39#39';'
      '    Memo17.Text:='#39#39';'
      '    Memo10.Text:='#39#39';        '
      '  end;            '
      'begin'
      '  if <Q3."RCod">=0 then'
      '  begin'
      '    ClearTO;  '
      '    Memo21.Text:=<Q3."RTYPE">;                       '
      '  end;'
      '  if <Q3."RCod">=1 then'
      '  begin'
      '    ClearTO;  '
      '    Memo17.Text:=<Q3."RTYPE">;                       '
      '  end;  '
      '  if <Q3."RCod">=2 then'
      '  begin'
      '    ClearTO;  '
      '    Memo10.Text:=<Q3."RTYPE">;'
      '   if <Q3."QUANTITY">=0 then'
      '   begin               '
      '    Q3MLISTED1.Text:='#39#39';'
      '    Q3QUANTITY1.Text:='#39#39';                '
      '   end;             '
      '  end;        '
      'end;'
      ''
      'procedure Memo74OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <Q5."RCod">=1 then'
      '  begin  '
      '    Memo74.Text:=<Q5."RTYPE">;                       '
      '  end;  '
      '  if <Q5."RCod">=2 then'
      '  begin  '
      '    Memo73.Text:=<Q5."RTYPE">;                       '
      '  end;  '
      'end;  '
      ''
      'procedure Page5OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '              '
      'end;'
      '  '
      'procedure Page4OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Q_Struct.ParamByName('#39'stp'#39').Value:=Report.variables['#39'varSType'#39 +
        '];                          '
      
        '  Q5.ParamByName('#39'house'#39').Value:=Report.variables['#39'varHouseCod'#39']' +
        ';'
      '  Q5.ParamByName('#39'shouse'#39').Value:=Report.variables['#39'varAkt'#39'];'
      '  Q5.ParamByName('#39'stp'#39').Value:=Report.variables['#39'varSType'#39'];'
      
        ' // ShowMessage(Report.variables['#39'varHouseCod'#39'] +'#39' '#39'+Report.vari' +
        'ables['#39'varAkt'#39']+'#39' '#39'+Report.variables['#39'varSType'#39']);              ' +
        '              '
      
        '   //'#1086#1090#1082#1088#1099#1090#1100' '#1079#1072#1087#1088#1086#1089' '#1087#1086' '#1076#1086#1084#1091' '#1089' '#1087#1072#1088#1072#1084#1077#1090#1088#1086#1084' Report.variables['#39'varHo' +
        'useCod'#39'];'
      
        '  QHouse.ParamByName('#39'CODE'#39').Value:=Report.variables['#39'varHouseCo' +
        'd'#39'];'
      '  QHouse.Open;        '
      'end;'
      ''
      'begin'
      '  if Report.variables['#39'varRep'#39']=1 then'
      '  begin'
      '   Page1.Visible:=true;'
      '   Page2.Visible:=true;'
      '   //Page3.Visible:=true;'
      '   Page4.Visible:=false;'
      '   Page5.Visible:=false;  '
      '  end else'
      '  begin'
      '   Page1.Visible:=false;'
      '   Page2.Visible:=false;'
      '   //Page3.Visible:=false;'
      '   Page4.Visible:=true;'
      '   Page5.Visible:=true;  '
      '  end;            '
      'end.')
    OnStartReport = 'frOnStartReport'
    Left = 360
    Top = 120
    Datasets = <
      item
        DataSet = fr.dom
        DataSetName = 'dom'
      end
      item
        DataSet = frds_1
        DataSetName = 'ds_kr'
      end
      item
        DataSet = fr.FIBQuery1
        DataSetName = 'FIBQuery1'
      end
      item
        DataSet = fr.fio
        DataSetName = 'fio'
      end
      item
        DataSet = fr.Gl
        DataSetName = 'Gl'
      end
      item
        DataSet = fr.Q_KR
        DataSetName = 'Q_KR'
      end
      item
        DataSet = fr.Q_TO
        DataSetName = 'Q_TO'
      end
      item
        DataSet = fr.Q_TR
        DataSetName = 'Q_TR'
      end
      item
        DataSet = fr.Q_zam
        DataSetName = 'Q_zam'
      end
      item
        DataSet = fr.Q3
        DataSetName = 'Q3'
      end
      item
        DataSet = fr.Q4
        DataSetName = 'Q4'
      end
      item
        DataSet = fr.Q5
        DataSetName = 'Q5'
      end
      item
        DataSet = fr.QDef
        DataSetName = 'QDef'
      end
      item
        DataSet = fr.QHouse
        DataSetName = 'QHouse'
      end
      item
        DataSet = fr.Q_Struct
        DataSetName = 'QStruct'
      end
      item
        DataSet = fr.street
        DataSetName = 'street'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'name1'
        Value = Null
      end
      item
        Name = 'ttt'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object FIBDatabase1: TfrxFIBDatabase
        LoginPrompt = False
        Params.Strings = (
          'user_name=sysdba'
          'password=victris'
          'sql_role_name=')
        SQLDialect = 3
        pLeft = 100
        pTop = 148
      end
      object FIBQuery1: TfrxFIBQuery
        UserName = 'FIBQuery1'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'shouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'SELECT SHOWDATE'
          'FROM SHOWHOUSEPLAN'
          
            'where SHOWHOUSE=:shouse and HOUSE=:house                        ' +
            '                 ')
        Database = fr.FIBDatabase1
        pLeft = 200
        pTop = 244
        Parameters = <
          item
            Name = 'shouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end>
      end
      object Q_Struct: TfrxFIBQuery
        UserName = 'QStruct'
        CloseDataSource = True
        FieldAliases.Strings = (
          'CODE=CODE'
          'NAME=NAME'
          'STYPE=STYPE'
          'NUM=NUM')
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'stp'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'select CODE, NAME, STYPE, NUM'
          'from SHOWSTRUCT'
          'where stype=:stp                           '
          'order by num  ')
        Database = fr.FIBDatabase1
        pLeft = 100
        pTop = 244
        Parameters = <
          item
            Name = 'stp'
            DataType = ftUnknown
          end>
      end
      object QDef: TfrxFIBQuery
        UserName = 'QDef'
        CloseDataSource = True
        FieldAliases.Strings = (
          'CODE=CODE'
          'SHOWSTRUCT=SHOWSTRUCT'
          'NAME=NAME'
          'NUM=NUM'
          'ED=ED')
        BCDToCurrency = False
        Master = fr.Q_Struct
        IgnoreDupParams = False
        Params = <>
        SQL.Strings = (
          '                                             ')
        Database = fr.FIBDatabase1
        pLeft = 100
        pTop = 292
        Parameters = <>
      end
      object Q3: TfrxFIBQuery
        UserName = 'Q3'
        CloseDataSource = True
        FieldAliases.Strings = (
          'STRUCTDEFECT=STRUCTDEFECT'
          'NUM=NUM'
          'NAME=NAME'
          'ED=ED'
          'MLIST=MLIST'
          'MLISTNAME=MLISTNAME'
          'QUANTITY=QUANTITY'
          'MLISTED=MLISTED'
          'NOTE=NOTE'
          'ENTRANCE=ENTRANCE'
          'FLOOR=FLOOR'
          'FLAT=FLAT'
          'MNOTE=MNOTE'
          'RTYPE=RTYPE'
          'RCOD=RCOD'
          'ATYPE=ATYPE'
          'ACOD=ACOD')
        BCDToCurrency = False
        Master = fr.QDef
        IgnoreDupParams = False
        Params = <
          item
            Name = 'shouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end
          item
            Name = 'mas_code'
            DataType = ftUnknown
          end
          item
            Name = 'stp'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          
            'select sr.structdefect,sd.num,sd.name,sd.ed, sr.mlist,m.name Mli' +
            'stName,sr.quantity,'
          
            '/*iif(m.ed is null, sd.ed,m.ed)*/ m.ed MlistEd, sr.note, sr.entr' +
            'ance,sr."FLOOR",sr.flat,'
          'sr.MNOTE,                '
          '  case'
          '    when sr.rtype = 0 then '#39#1058#1054#39
          '    when sr.rtype = 1 then '#39#1058#1056#39
          '    when sr.rtype = 2 then '#39#1050#1056#39
          '    else '#39' '#39' '
          '  end RTYPE,sr.rtype RCod,               '
          '  case'
          '    when sr.atype = 0 then '#39#1085#1077' '#1091#1082#1072#1079#1072#1085#39
          '    when sr.atype = 1 then '#39#1091#1083#1080#1095#1085#1099#1081' '#1092#1072#1089#1072#1076#39
          '    when sr.atype = 2 then '#39#1076#1074#1086#1088#1086#1074#1086#1081' '#1092#1072#1089#1072#1076#39
          '    when sr.atype = 3 then '#39#1090#1086#1088#1077#1094' '#1079#1076#1072#1085#1080#1103#39
          '    else '#39#1086#1096#1080#1073#1082#1072' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1080#1103'!!'#39' '
          
            '  end ATYPE, sr.atype ACod                                      ' +
            ' '
          'from SHOWRESULT sr'
          'left outer join STRUCTDEFECT sd on sr.structdefect=sd.code'
          'left outer join showstruct ss on sd.showstruct=ss.code'
          'left outer join mlist m on sr.mlist=m.code'
          'where sr.SHOWHOUSE=:shouse'
          '      and sr.house=:house'
          '      and sr.structdefect=:mas_code'
          
            '      and ss.stype=:stp --'#1090#1080#1087' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1080' 0 - '#1089#1090#1088#1086#1077#1085#1080#1103' 1 - '#1077#1083#1077#1082#1090 +
            #1088#1080#1082#1072
          ''
          
            'order by sr.mlist, sr.entrance, sr."FLOOR"                      ' +
            '        ')
        Database = fr.FIBDatabase1
        pLeft = 100
        pTop = 344
        Parameters = <
          item
            Name = 'shouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end
          item
            Name = 'mas_code'
            DataType = ftUnknown
          end
          item
            Name = 'stp'
            DataType = ftUnknown
          end>
      end
      object QHouse: TfrxFIBQuery
        UserName = 'QHouse'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'CODE'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'SELECT CODE, '
          '       NOMER, '
          '       STREET, '
          '       DU, '
          '       TOTAL_SQ, '
          '       LIVING_SQ, '
          '       LODGER_CNT, '
          '       CELLAR_SQ, '
          '       FLAT_CNT, '
          '       ACCCODE_CNT, '
          '       FLOOR_CNT, '
          '       LIFT_CNT, '
          '       ENTRANCE_CNT, '
          '       GARBAGE_CNT, '
          '       COMMERCE_SQ, '
          '       BUILDYEAR, '
          '       "ACTIVE", '
          '       BUDGET, '
          '       MSE, '
          '       USERNAME, '
          '       LASTTIME, '
          '       LAST_KR, '
          '        (case Wall'
          '           when 0 then '#39#1055#1072#1085#1077#1083#1100#1085#1099#1077#39
          '           when 1 then '#39#1050#1088#1091#1087#1085#1086#1073#1083#1086#1095#1085#1099#1077#39
          '           when 2 then '#39#1064#1083#1072#1082#1086#1073#1083#1086#1095#1085#1099#1077#39
          '           when 2 then '#39#1050#1080#1088#1087#1080#1095#1085#1099#1077#39
          '           else '#39#39
          '        end) Wall'
          'FROM HOUSE '
          ''
          'where CODE=:CODE')
        Database = fr.FIBDatabase1
        pLeft = 200
        pTop = 292
        Parameters = <
          item
            Name = 'CODE'
            DataType = ftUnknown
          end>
      end
      object fio: TfrxFIBQuery
        UserName = 'fio'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'cod'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          '/*SELECT (p.f||'#39' '#39'||p.i||'#39' '#39'||p.o) mse,'
          '       (p1.f||'#39' '#39'||p1.i||'#39' '#39'||p1.o) pse'
          'FROM HOUSE h'
          'left outer join worker w on w.code=h.mse'
          'left outer join worker w1 on w1.code=h.pse'
          'left outer join piple p on p.code=w.piple'
          'left outer join piple p1 on p1.code=w1.piple'
          'where h.code=:cod  */      ')
        Database = fr.FIBDatabase1
        pLeft = 200
        pTop = 352
        Parameters = <
          item
            Name = 'cod'
            DataType = ftUnknown
          end>
      end
      object street: TfrxFIBQuery
        UserName = 'street'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <>
        SQL.Strings = (
          'select CODE, NAME from STREET'
          'order by name  ')
        Database = fr.FIBDatabase1
        pLeft = 200
        pTop = 148
        Parameters = <>
      end
      object dom: TfrxFIBQuery
        UserName = 'dom'
        CloseDataSource = True
        BCDToCurrency = False
        Master = fr.street
        IgnoreDupParams = False
        Params = <
          item
            Name = 'mas_code'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'select CODE, NOMER'
          'from HOUSE'
          'where street = :mas_code  ')
        Database = fr.FIBDatabase1
        pLeft = 232
        pTop = 148
        Parameters = <
          item
            Name = 'mas_code'
            DataType = ftUnknown
          end>
      end
      object Q4: TfrxFIBQuery
        UserName = 'Q4'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'shouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end
          item
            Name = 'mas_code'
            DataType = ftUnknown
          end
          item
            Name = 'stp'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'select distinct(s.mlist),m.name,s.v,'
          '  case'
          '    when s.rtype = 0 then '#39#1058#1054#39
          '    when s.rtype = 1 then '#39#1058#1056#39
          '    when s.rtype = 2 then '#39#1050#1056#39
          '    else '#39' '#39' '
          '  end RTYP      '
          'from showresult s'
          'left outer join mlist m on s.mlist=m.code'
          'left outer join STRUCTDEFECT sd on s.structdefect=sd.code'
          'left outer join showstruct ss on sd.showstruct=ss.code'
          'where s.SHOWHOUSE=:shouse'
          '      and s.house=:house'
          '    --  and s.structdefect=:mas_code'
          
            '    --  and ss.stype=:stp --'#1090#1080#1087' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1080' 0 - '#1089#1090#1088#1086#1077#1085#1080#1103' 1 - '#1077#1083#1077 +
            #1082#1090#1088#1080#1082#1072
          '      and s.v>0                           '
          'order by 4,s.v  ')
        Database = fr.FIBDatabase1
        pLeft = 172
        pTop = 444
        Parameters = <
          item
            Name = 'shouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end
          item
            Name = 'mas_code'
            DataType = ftUnknown
          end
          item
            Name = 'stp'
            DataType = ftUnknown
          end>
      end
      object Gl: TfrxFIBQuery
        UserName = 'Gl'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'gl'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'SELECT g.D3 FROM GRAPHSPEC g'
          'where g.GRAPHLIST=:gl and g.HOUSE=:house  ')
        Database = fr.FIBDatabase1
        pLeft = 208
        pTop = 444
        Parameters = <
          item
            Name = 'gl'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end>
      end
      object Q_zam: TfrxFIBQuery
        UserName = 'Q_zam'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'sh'
            DataType = ftUnknown
          end
          item
            Name = 'h'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          ' select SR.PONOTE from SHOWRESULT SR'
          ' where SR.SHOWHOUSE=:sh and SR.HOUSE=:h'
          ' and SR.POSTATE in(1,2)                ')
        Database = fr.FIBDatabase1
        pLeft = 100
        pTop = 448
        Parameters = <
          item
            Name = 'sh'
            DataType = ftUnknown
          end
          item
            Name = 'h'
            DataType = ftUnknown
          end>
      end
      object Q5: TfrxFIBQuery
        UserName = 'Q5'
        CloseDataSource = True
        BCDToCurrency = False
        Master = fr.QDef
        IgnoreDupParams = False
        Params = <
          item
            Name = 'shouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end
          item
            Name = 'mas_code'
            DataType = ftUnknown
          end
          item
            Name = 'stp'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          
            'select distinct(sr.mlist),sr.structdefect,sd.num,sd.name,sd.ed, ' +
            'm.name MlistName,sr.quantity,'
          '/*iif(m.ed is null, sd.ed,m.ed)*/ m.ed MlistEd, sr.note,'
          'sr.MNOTE,                '
          '  case'
          '    when sr.rtype = 0 then '#39#1058#1054#39
          '    when sr.rtype = 1 then '#39#1058#1056#39
          '    when sr.rtype = 2 then '#39#1050#1056#39
          '    else '#39' '#39' '
          '  end RTYPE,sr.rtype RCod,               '
          '  case'
          '    when sr.atype = 0 then '#39#1085#1077' '#1091#1082#1072#1079#1072#1085#39
          '    when sr.atype = 1 then '#39#1091#1083#1080#1095#1085#1099#1081' '#1092#1072#1089#1072#1076#39
          '    when sr.atype = 2 then '#39#1076#1074#1086#1088#1086#1074#1086#1081' '#1092#1072#1089#1072#1076#39
          '    when sr.atype = 3 then '#39#1090#1086#1088#1077#1094' '#1079#1076#1072#1085#1080#1103#39
          '    else '#39#1086#1096#1080#1073#1082#1072' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1080#1103'!!'#39' '
          
            '  end ATYPE, sr.atype ACod                                      ' +
            ' '
          'from SHOWRESULT sr'
          'left outer join STRUCTDEFECT sd on sr.structdefect=sd.code'
          'left outer join showstruct ss on sd.showstruct=ss.code'
          'left outer join mlist m on sr.mlist=m.code'
          'where sr.SHOWHOUSE=:shouse'
          '      and sr.house=:house'
          '      and sr.structdefect=:mas_code'
          
            '      and ss.stype=:stp --'#1090#1080#1087' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1080' 0 - '#1089#1090#1088#1086#1077#1085#1080#1103' 1 - '#1077#1083#1077#1082#1090 +
            #1088#1080#1082#1072
          ''
          'order by sr.mlist, sr.entrance, sr."FLOOR"  ')
        Database = fr.FIBDatabase1
        pLeft = 316
        pTop = 252
        Parameters = <
          item
            Name = 'shouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end
          item
            Name = 'mas_code'
            DataType = ftUnknown
          end
          item
            Name = 'stp'
            DataType = ftUnknown
          end>
      end
      object Q_KR: TfrxFIBQuery
        UserName = 'Q_KR'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'srvHouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'select m.name KR'
          'from showresult s'
          'left outer join mlist m on s.mlist=m.code'
          'left outer join STRUCTDEFECT sd on s.structdefect=sd.code'
          'left outer join showstruct ss on sd.showstruct=ss.code'
          'where s.SHOWHOUSE=:srvHouse and s.house=:house and s.rtype = 2  ')
        Database = fr.FIBDatabase1
        pLeft = 100
        pTop = 540
        Parameters = <
          item
            Name = 'srvHouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end>
      end
      object Q_TO: TfrxFIBQuery
        UserName = 'Q_TO'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'srvHouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'select m.name STO'
          'from showresult s'
          'left outer join mlist m on s.mlist=m.code'
          'left outer join STRUCTDEFECT sd on s.structdefect=sd.code'
          'left outer join showstruct ss on sd.showstruct=ss.code'
          'where s.SHOWHOUSE=:srvHouse and s.house=:house and s.rtype = 0  ')
        Database = fr.FIBDatabase1
        pLeft = 140
        pTop = 540
        Parameters = <
          item
            Name = 'srvHouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end>
      end
      object Q_TR: TfrxFIBQuery
        UserName = 'Q_TR'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'srvHouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'select m.name TR, s.v'
          'from showresult s'
          'left outer join mlist m on s.mlist=m.code'
          'left outer join STRUCTDEFECT sd on s.structdefect=sd.code'
          'left outer join showstruct ss on sd.showstruct=ss.code'
          'where s.SHOWHOUSE=:srvHouse and s.house=:house and s.rtype = 1'
          'and s.v>0'
          '  order by s.v  ')
        Database = fr.FIBDatabase1
        pLeft = 184
        pTop = 540
        Parameters = <
          item
            Name = 'srvHouse'
            DataType = ftUnknown
          end
          item
            Name = 'house'
            DataType = ftUnknown
          end>
      end
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
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        Height = 498.897960000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        Stretched = True
        object Memo2: TfrxMemoView
          Width = 1046.929810000000000000
          Height = 128.504020000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            ''
            #1059#1058#1042#1045#1056#1046#1044#1040#1070'  '
            #1054#1054#1054' '#171#1044#1045#1047' '#1050#1072#1083#1080#1085#1080#1085#1089#1082#1086#1075#1086' '#1088#1072#1081#1086#1085#1072#187
            '__________________'#1040#1083#1077#1096#1082#1080#1085' '#1053'.'#1042'.'
            #171'___'#187'___________________20   '#1075'  ')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baWidth
          Top = 128.504020000000000000
          Width = 1046.929810000000000000
          Height = 71.811070000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            ''
            #1040#1082#1090
            #1086#1073#1097#1077#1075#1086' '#1086#1089#1077#1085#1085#1077#1075#1086'/'#1074#1077#1089#1077#1085#1085#1077#1075#1086'  '#1086#1089#1084#1086#1090#1088#1072'  '
            #1080#1085#1078#1077#1085#1077#1088#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' ('#1101#1083#1077#1082#1090#1088#1080#1095#1077#1089#1082#1072#1103' '#1095#1072#1089#1090#1100')')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Top = 200.315090000000000000
          Width = 313.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FIBQuery1."SHOWDATE"]  ')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Top = 219.212740000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1044#1086#1084' '#8470)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 49.070810000000000000
          Top = 218.842610000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[varHouse]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 138.637910000000000000
          Top = 219.212740000000000000
          Width = 684.094930000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[varStreet]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 97.385900000000000000
          Top = 219.212740000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ' '#1087#1086' '#1091#1083' ')
          ParentFont = False
        end
        object Rich1: TfrxRichView
          Align = baBottom
          Top = 275.905690000000000000
          Width = 1046.929810000000000000
          Height = 222.992270000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C666E696C5C66636861727365743230347B5C2A5C666E616D652041726961
            6C3B7D417269616C204359523B7D7B5C66315C666E696C5C6663686172736574
            3020417269616C3B7D7D0D0A7B5C2A5C67656E657261746F7220526963686564
            323020362E332E393630307D5C766965776B696E64345C756331200D0A5C7061
            72645C66305C667332305C2763655C2765315C2766395C2765385C276535205C
            2766315C2765325C2765355C2765345C2765355C2765645C2765385C27666620
            5C2765665C276565205C2766315C2766325C2766305C2765655C2765355C2765
            645C2765385C2766653A5C7061720D0A5C2763335C2765655C276534205C2765
            665C2765655C2766315C2766325C2766305C2765655C2765395C2765615C2765
            383A20202020205B51486F7573652E224255494C4459454152225D5C7061720D
            0A5C2763335C2765655C276534205C276538205C2765325C2765385C27653420
            5C2765665C2765655C2766315C2765625C2765355C2765345C2765645C276535
            5C2765335C276565205C2765615C2765305C2765665C2765385C2766325C2765
            305C2765625C2766635C2765645C2765655C2765335C276565205C2766305C27
            65355C2765635C2765655C2765645C2766325C2765303A205B494946283C5148
            6F7573652E224C4153545F4B52223E3C3E302C3C51486F7573652E224C415354
            5F4B52223E2C2727295D5C7061720D0A5B494946283C7661724B523E3C3E2727
            2C3C7661724B523E2C2727295D5C7061720D0A5C2763635C2765305C2766325C
            2765355C2766305C2765385C2765305C276562205C2766315C2766325C276535
            5C2765643A20202020205B566172546F537472283C51486F7573652E2257414C
            4C223E295D5C7061720D0A5C2764375C2765385C2766315C2765625C27656520
            205C2766645C2766325C2765305C2765365C2765355C2765393A20202020205B
            51486F7573652E22464C4F4F525F434E54225D5C7061720D0A5C7061720D0A5C
            2763615C2765655C2765635C2765385C2766315C2766315C2765385C27666620
            5C276532205C2766315C2765655C2766315C2766325C2765305C2765325C2765
            353A5C7061720D0A5C2763665C2766305C2765355C2765345C2766315C276535
            5C2765345C2765305C2766325C2765355C2765625C2766663A5C6220205C6631
            5C6C616E6731303333205B766172526F6C655D5C66305C6C616E673130343920
            205C62305C2763655C2763655C276365205C66315C6C616E67313033335C2761
            625C66305C6C616E67313034395C2763345C2763355C276337205C2763615C27
            65305C2765625C2765385C2765645C2765385C2765645C2766315C2765615C27
            65655C2765335C276565205C2766305C2765305C2765395C2765655C2765645C
            2765305C66315C6C616E67313033335C2762623A205C622020205B7661724D53
            455D205C7061720D0A5C62305C66305C6C616E67313034395C2764375C276562
            5C2765355C2765645C2765655C276532205C2765615C2765655C2765635C2765
            385C2766315C2766315C2765385C2765383A5C7061720D0A5C2763665C276630
            5C2765355C2765345C2766315C2766325C2765305C2765325C2765385C276632
            5C2765355C2765625C27666620285C2765345C2765655C2765625C2765365C27
            65645C2765655C2766315C2766325C276663292020202020202020205B566172
            546F537472283C7661724B6F6E74724E616D653E295D3A205C66315C6C616E67
            3130333320205C625C66305C6C616E673130343920205B7661725053455D5C66
            315C6C616E673130333320205C62305C66305C6C616E67313034395C7061720D
            0A5C2763665C2766305C2765355C2765345C2766315C2766325C2765305C2765
            325C2765385C2766325C2765355C2765625C276666205C2766315C2765655C27
            65315C2766315C2766325C2765325C2765355C2765645C2765645C2765385C27
            65615C2765655C276532205C2763635C2763615C276334205F5C66315C6C616E
            6731303333205F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5C66305C6C
            616E6731303439205F5F5F5F5F5F5C2764342E5C2763382E5C2763652E205C27
            65665C2766305C2765655C2765365C2765385C2765325C2765305C2766655C27
            66395C2765355C2765335C276565205C2765665C276565205C2765305C276534
            5C2766305C2765355C2766315C2766333A205C2766335C2765622E205F5F5F5C
            66315C6C616E6731303333205F5F5F5F5F5F5F5F5F5F5C66305C6C616E673130
            3439205F5F5F5F5F5F5F5F5F5F5F5F5F2C205C2765345C2765655C276563205C
            276239205F5F5F5F2C205C2765615C2765322E5C276239205F5F5F2E5C706172
            0D0A5C2763665C2766305C2765655C2765385C2765375C2765325C2765355C27
            65625C276530205C2765655C2766315C2765635C2765655C2766325C27663020
            5C2765325C2766625C2766385C2765355C2766335C2765615C2765305C276537
            5C2765305C2765645C2765645C2765655C2765335C276565205C2766315C2766
            325C2766305C2765655C2765355C2765645C2765385C276666205C276538205C
            2766335C2766315C2766325C2765305C2765645C2765655C2765325C2765385C
            2765625C276530205C2766315C2765625C2765355C2765345C2766335C276665
            5C2766395C2765355C2765353A5C667331365C7061720D0A7D0D0A00}
        end
      end
      object Memo19: TfrxMemoView
        Align = baBottom
        Top = 691.653989999999900000
        Width = 1046.929810000000000000
        Height = 26.456710000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          
            #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1086#1089#1084#1086#1090#1088#1072' '#1080#1085#1078#1077#1085#1077#1088#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' ('#1101#1083#1077#1082#1090#1088#1080#1095#1077#1089#1082#1072#1103' '#1095#1072#1089#1090#1100 +
            ').')
        ParentFont = False
      end
    end
    object Page2: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      LargeDesignHeight = True
      OnBeforePrint = 'Page2OnBeforePrint'
      object PageHeader1: TfrxPageHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 1.889822360000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        PrintOnFirstPage = False
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 192.756030000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = fr.Q_Struct
        DataSetName = 'QStruct'
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        OnMasterDetail = 'MasterData1OnMasterDetail'
        object QStructNAME: TfrxMemoView
          Left = 22.677180000000000000
          Width = 1023.496062990000000000
          Height = 18.897650000000000000
          OnAfterPrint = 'QStructNAMEOnAfterPrint'
          ShowHint = False
          DataField = 'NAME'
          DataSet = fr.Q_Struct
          DataSetName = 'QStruct'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[QStruct."NAME"]')
          ParentFont = False
        end
        object QStructNUM: TfrxMemoView
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NUM'
          DataSet = fr.Q_Struct
          DataSetName = 'QStruct'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            '[QStruct."NUM"]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        Height = 18.897650000000000000
        Top = 234.330860000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'DetailData1OnBeforePrint'
        DataSet = fr.QDef
        DataSetName = 'QDef'
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object QDefNAME: TfrxMemoView
          Left = 3.779530000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'QDefNAMEOnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = fr.QDef
          DataSetName = 'QDef'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '-[QDef."NAME"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 185.220343070000000000
          Width = 187.086614170000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo15OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          AllowHTMLTags = True
          DataSet = fr.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 909.732283460000000000
          Width = 136.818897640000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = fr.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 504.566929130000000000
          Width = 109.606299210000000000
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
        object Memo22: TfrxMemoView
          Left = 371.905511810000000000
          Width = 132.283464570000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo22OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 701.102362200000000000
          Width = 208.629921260000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = fr.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 648.299630000000000000
          Width = 52.913385830000000000
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
        object Memo31: TfrxMemoView
          Left = 614.173228350000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
      end
      object SubdetailData1: TfrxSubdetailData
        Height = 18.897650000000000000
        Top = 275.905690000000000000
        Width = 1046.929810000000000000
        OnAfterPrint = 'SubdetailData1OnAfterPrint'
        OnBeforePrint = 'SubdetailData1OnBeforePrint'
        DataSet = fr.Q3
        DataSetName = 'Q3'
        KeepTogether = True
        RowCount = 0
        Stretched = True
        OnMasterDetail = 'SubdetailData1OnMasterDetail'
        object Q3MLISTNAME: TfrxMemoView
          Left = 371.905511810000000000
          Width = 132.283464570000000000
          Height = 18.897650000000000000
          OnAfterData = 'Q3MLISTNAMEOnAfterData'
          OnBeforePrint = 'Q3MLISTNAMEOnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = fr.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q3."MLISTNAME"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 185.236108190000000000
          Width = 187.086614170000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NOTE'
          DataSet = fr.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q3."NOTE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 504.566929130000000000
          Width = 109.606299210000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'MNOTE'
          DataSet = fr.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q3."MNOTE"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 701.102362200000000000
          Top = 0.118119999999976200
          Width = 208.629921260000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo18OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = fr.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Q3MLISTED1: TfrxMemoView
          Left = 614.173228350000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'MLISTED'
          DataSet = fr.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q3."MLISTED"]')
          ParentFont = False
        end
        object Q3QUANTITY1: TfrxMemoView
          Left = 648.188976380000000000
          Width = 52.913385830000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = fr.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[IIF(<Q3."QUANTITY">=0,'#39#39',<Q3."QUANTITY">)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 1000.440944880000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 955.221090000000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 909.732283460000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo21OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
      end
      object MasterData4: TfrxMasterData
        Height = 18.897637800000000000
        Top = 396.850650000000000000
        Width = 1046.929810000000000000
        DataSet = frds_1
        DataSetName = 'ds_kr'
        RowCount = 0
        Stretched = True
        object Memo96: TfrxMemoView
          Align = baLeft
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'KR'
          DataSet = frds_1
          DataSetName = 'ds_kr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_kr."KR"]')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Align = baLeft
          Left = 381.732530000000000000
          Width = 309.921460000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'TR'
          DataSet = frds_1
          DataSetName = 'ds_kr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_kr."TR"]')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Align = baLeft
          Left = 340.157700000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'V'
          DataSet = frds_1
          DataSetName = 'ds_kr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_kr."V"]')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          Align = baLeft
          Left = 691.653990000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'TO'
          DataSet = frds_1
          DataSetName = 'ds_kr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_kr."TO"]')
          ParentFont = False
        end
      end
      object Header4: TfrxHeader
        Height = 56.692950000000000000
        Top = 317.480520000000000000
        Width = 1046.929810000000000000
        object Memo82: TfrxMemoView
          Left = 294.803340000000000000
          Top = 11.338590000000010000
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1042#1099#1074#1086#1076#1099' '#1080' '#1087#1088#1077#1076#1083#1086#1078#1077#1085#1080#1103' '#1087#1086' '#1092#1072#1082#1090#1091' '#1075#1086#1090#1086#1074#1085#1086#1089#1090#1080' '#1079#1076#1072#1085#1080#1103' '#1082' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1080':')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Align = baLeft
          Top = 37.795300000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16777180
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1072#1087#1080#1090#1072#1083#1100#1085#1099#1081' '#1088#1077#1084#1086#1085#1090)
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Align = baLeft
          Left = 691.653990000000000000
          Top = 37.795300000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16777180
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1077#1093#1085#1080#1095#1077#1089#1082#1086#1077' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077)
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Align = baLeft
          Left = 340.157700000000000000
          Top = 37.795300000000000000
          Width = 351.496290000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16777180
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1077#1082#1091#1097#1080#1081' '#1088#1077#1084#1086#1085#1090)
          ParentFont = False
        end
      end
      object ReportSummary3: TfrxReportSummary
        Height = 272.125867090000000000
        Top = 585.827150000000000000
        Width = 1046.929810000000000000
        object Memo93: TfrxMemoView
          Align = baLeft
          Top = 26.039269999999990000
          Width = 442.205010000000000000
          Height = 34.015770000000010000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1055#1088#1077#1076#1089#1077#1076#1072#1090#1077#1083#1100' '#8211' [varRole]  '#1054#1054#1054' '#171#1044#1045#1047' '#1050#1072#1083#1080#1085#1080#1085#1089#1082#1086#1075#1086' '#1088#1072#1081#1086#1085#1072#187)
          ParentFont = False
        end
        object Memo107: TfrxMemoView
          Align = baLeft
          Top = 79.031540000000060000
          Width = 442.205010000000000000
          Height = 34.015770000000010000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1048#1085#1078#1077#1085#1077#1088'-'#1082#1091#1088#1072#1090#1086#1088' '#1057#1069' '#1054#1054#1054' '#171#1044#1045#1047' '#1050#1072#1083#1080#1085#1080#1085#1089#1082#1086#1075#1086' '#1088#1072#1081#1086#1085#1072#187)
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          Align = baLeft
          Top = 60.133889999999950000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1063#1083#1077#1085#1099' '#1082#1086#1084#1080#1089#1089#1080#1080':')
          ParentFont = False
        end
        object Memo109: TfrxMemoView
          Align = baLeft
          Top = 123.826840000000000000
          Width = 442.205010000000000000
          Height = 34.015770000000010000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1044#1080#1088#1077#1082#1090#1086#1088'  [VarToStr(<varKontrName>)]')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          Align = baLeft
          Top = 167.842610000000000000
          Width = 442.205010000000000000
          Height = 34.015770000000010000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100' [VarToStr(<varKontrName>)]')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          Align = baWidth
          Top = 210.858380000000000000
          Width = 1046.929810000000000000
          Height = 34.015770000000010000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1080#1082#1086#1074' '#1052#1050#1044':  ______________________________' +
              '_____ ________________________/_________________________________' +
              '__________'
            
              '                                                                ' +
              '  '#1040#1076#1088#1077#1089' '#1076#1086#1084#1072', '#8470' '#1082#1074#1072#1088#1090#1080#1088#1099',                              '#1087#1086#1076#1087#1080#1089#1100'  ' +
              '                                                 '#1060'.'#1048'.'#1054'.')
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          Align = baLeft
          Left = 442.205010000000000000
          Top = 26.118119999999980000
          Width = 604.724800000000000000
          Height = 34.015770000000010000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ' _______________________________/      [varMSE]'
            
              '                   '#1087#1086#1076#1087#1080#1089#1100'                                      ' +
              '             '#1060'.'#1048'.'#1054'.')
          ParentFont = False
        end
        object Memo113: TfrxMemoView
          Align = baLeft
          Left = 442.205010000000000000
          Top = 78.811069999999970000
          Width = 604.724800000000000000
          Height = 34.015770000000010000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              ' _______________________________/_______________________________' +
              '____________'
            
              '                   '#1087#1086#1076#1087#1080#1089#1100'                                      ' +
              '             '#1060'.'#1048'.'#1054'.')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          Align = baLeft
          Left = 442.205010000000000000
          Top = 124.165430000000000000
          Width = 604.724800000000000000
          Height = 34.015770000000010000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ' _______________________________/      [VarToStr(<varDir>)]'
            
              '                   '#1087#1086#1076#1087#1080#1089#1100'                                      ' +
              '             '#1060'.'#1048'.'#1054'.')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          Align = baLeft
          Left = 442.205010000000000000
          Top = 168.519789999999900000
          Width = 604.724800000000000000
          Height = 34.015770000000010000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ' _______________________________/       [varPSE] '
            
              '                   '#1087#1086#1076#1087#1080#1089#1100'                                      ' +
              '             '#1060'.'#1048'.'#1054'.')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Align = baWidth
          Top = 4.220469999999978000
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1055#1086#1076#1087#1080#1089#1080' '#1082#1086#1084#1080#1089#1089#1080#1080':')
          ParentFont = False
        end
      end
      object Header3: TfrxHeader
        Height = 86.929133860000000000
        Top = 83.149660000000000000
        Width = 1046.929810000000000000
        object Memo9: TfrxMemoView
          Top = 0.779529999999994100
          Width = 185.196970000000000000
          Height = 86.929190000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1081','
            #1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' '#1080' '#1101#1083#1077#1084#1077#1085#1090#1086#1074' '#1073#1083#1072#1075#1086#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072)
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 185.220360160000000000
          Top = 0.779529999999994100
          Width = 187.086655670000000000
          Height = 86.929190000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1087#1080#1089#1072#1085#1080#1077' '#1076#1077#1092#1077#1082#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 701.157665830000000000
          Top = 1.267716540000009000
          Width = 208.629921260000000000
          Height = 86.929190000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1052#1077#1089#1090#1086' '#1088#1072#1089#1087#1086#1083#1086#1078#1077#1085#1080#1103' '#1076#1077#1092#1077#1082#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 909.866141730000000000
          Top = 0.889763780000009700
          Width = 136.818897640000000000
          Height = 66.141732280000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1077#1096#1077#1085#1080#1077' '#1086' '#1087#1088#1080#1085#1103#1090#1080#1080' '#1084#1077#1088)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 371.748300000000000000
          Top = 1.000000000000000000
          Width = 132.283464570000000000
          Height = 86.929190000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1080#1076' '#1088#1072#1073#1086#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 504.457020000000000000
          Top = 1.000000000000000000
          Width = 109.606370000000000000
          Height = 86.929133860000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1052#1072#1090#1077#1088#1080#1072#1083)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 614.063390000000000000
          Top = 1.000000000000000000
          Width = 34.015672360000000000
          Height = 86.929190000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1045#1076'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 648.079160000000000000
          Top = 1.110233779999987000
          Width = 52.913420000000000000
          Height = 86.929133860000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1073#1098#1077#1084' '#1088#1077#1084#1086#1085#1090#1085#1099#1093' '#1088#1072#1073#1086#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 1000.354950710000000000
          Top = 67.031539999999990000
          Width = 45.354360000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1056)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 955.000620000000000000
          Top = 67.031539999999990000
          Width = 45.354330710000000000
          Height = 20.787401570000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1056)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 909.866730000000000000
          Top = 67.031539999999990000
          Width = 45.354330710000000000
          Height = 20.787401570000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1054)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object M5: TfrxMasterData
        Height = 18.897637800000000000
        Top = 506.457020000000000000
        Width = 1046.929810000000000000
        DataSet = fr.Q_zam
        DataSetName = 'Q_zam'
        KeepHeader = True
        KeepTogether = True
        RowCount = 0
        object Memo95: TfrxMemoView
          Align = baWidth
          Top = 0.086580000000026300
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fr.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q_zam."PONOTE"]')
          ParentFont = False
        end
      end
      object H5: TfrxHeader
        Height = 45.354360000000000000
        Top = 438.425480000000000000
        Width = 1046.929810000000000000
        object Memo94: TfrxMemoView
          Align = baWidth
          Top = 22.677180000000020000
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1047#1072#1084#1077#1095#1072#1085#1080#1103' '#1082' '#1072#1082#1090#1091)
          ParentFont = False
        end
      end
    end
    object Page3: TfrxReportPage
      Visible = False
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportSummary1: TfrxReportSummary
        Height = 275.905397090000000000
        Top = 143.622140000000000000
        Width = 1046.929810000000000000
        object Memo100: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            #1055#1086#1076#1087#1080#1089#1080' '#1082#1086#1084#1080#1089#1089#1080#1080':')
        end
        object Memo101: TfrxMemoView
          Align = baWidth
          Top = 21.818800000000000000
          Width = 1046.929810000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              #1055#1088#1077#1076#1089#1077#1076#1072#1090#1077#1083#1100' '#8211' [varRole]  '#1054#1054#1054' '#171#1044#1045#1047' '#1050#1072#1083#1080#1085#1080#1085#1089#1082#1086#1075#1086' '#1088#1072#1081#1086#1085#1072#187' [varMSE]' +
              ' _______________________________/_______________________________' +
              '____________'
            
              '                                                                ' +
              '                                                           '#1087#1086#1076#1087#1080 +
              #1089#1100'                                                   '#1060'.'#1048'.'#1054'.')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          Align = baWidth
          Top = 74.811070000000000000
          Width = 1046.929810000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              #1048#1085#1078#1077#1085#1077#1088'-'#1082#1091#1088#1072#1090#1086#1088' '#1057#1069' '#1054#1054#1054' '#171#1044#1045#1047' '#1050#1072#1083#1080#1085#1080#1085#1089#1082#1086#1075#1086' '#1088#1072#1081#1086#1085#1072#187'  ______________' +
              '_________________/___________________________________________'
            
              '                                                                ' +
              '                                                           '#1087#1086#1076#1087#1080 +
              #1089#1100'                                                   '#1060'.'#1048'.'#1054'.')
          ParentFont = False
        end
        object Memo103: TfrxMemoView
          Align = baLeft
          Top = 55.913420000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1063#1083#1077#1085#1099' '#1082#1086#1084#1080#1089#1089#1080#1080':')
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          Align = baWidth
          Top = 119.606370000000000000
          Width = 1046.929810000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsUnderline]
          Highlight.Condition = '[VarToStr(<varKontrName>)]'
          Memo.UTF8W = (
            
              #1044#1080#1088#1077#1082#1090#1086#1088'  [VarToStr(<varKontrName>)]:                           ' +
              '                   _______________________________/[varDir]'
            
              '                                                                ' +
              '                                                           '#1087#1086#1076#1087#1080 +
              #1089#1100'                                                   '#1060'.'#1048'.'#1054'.')
          ParentFont = False
        end
        object Memo105: TfrxMemoView
          Align = baWidth
          Top = 163.622140000000000000
          Width = 1046.929810000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100' [VarToStr(<varKontrName>)]:  _____________________' +
              '__________/___________________________________________'
            
              '                                                                ' +
              '                                                           '#1087#1086#1076#1087#1080 +
              #1089#1100'                                                   '#1060'.'#1048'.'#1054'.')
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          Align = baWidth
          Top = 206.637910000000000000
          Width = 1046.929810000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1080#1082#1086#1074' '#1052#1050#1044':  ______________________________' +
              '_____ _______________________________/__________________________' +
              '_________________'
            
              '                                                                ' +
              '  '#1040#1076#1088#1077#1089' '#1076#1086#1084#1072', '#8470' '#1082#1074#1072#1088#1090#1080#1088#1099',                             '#1087#1086#1076#1087#1080#1089#1100'   ' +
              '                                                '#1060'.'#1048'.'#1054'.')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        Height = 18.897637800000000000
        Top = 64.252010000000000000
        Width = 1046.929810000000000000
        DataSet = fr.Q4
        DataSetName = 'Q4'
        RowCount = 0
        Stretched = True
        object Memo83: TfrxMemoView
          Align = baWidth
          Left = 30.236240000000000000
          Width = 1016.693570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NAME'
          DataSet = fr.Q4
          DataSetName = 'Q4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Q4."NAME"]')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'V'
          DataSet = fr.Q4
          DataSetName = 'Q4'
          Memo.UTF8W = (
            '[Q4."V"]')
        end
      end
      object Header2: TfrxHeader
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo87: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1042#1099#1074#1086#1076#1099' '#1080' '#1087#1088#1077#1076#1083#1086#1078#1077#1085#1080#1103' '#1087#1086' '#1092#1072#1082#1090#1091' '#1075#1086#1090#1086#1074#1085#1086#1089#1090#1080' '#1079#1076#1072#1085#1080#1103' '#1082' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1080':')
          ParentFont = False
        end
      end
    end
    object Page4: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page4OnBeforePrint'
      object ReportTitle2: TfrxReportTitle
        Height = 1024.252630000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo35: TfrxMemoView
          Left = 548.031850000000000000
          Top = 10.000000000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Visible = False
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1054#1054#1054' "'#1044#1077#1079' '#1050#1072#1083#1080#1085#1080#1085#1089#1082#1086#1075#1086' '#1088#1072#1081#1086#1085#1072'"')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 317.480520000000000000
          Top = 28.897650000000000000
          Width = 400.630180000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077' '#8470'3'
            #1082' '#1076#1086#1075#1086#1074#1086#1088#1091' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1103
            #1084#1085#1086#1075#1086#1082#1074#1072#1088#1090#1080#1088#1085#1099#1084' '#1076#1086#1084#1086#1084' '#8470' [varHouse] '#1086#1090' ________20___'#1075'.')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Align = baWidth
          Top = 247.031540000000000000
          Width = 718.110700000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #1040#1082#1090
            
              #1054' '#1089#1086#1089#1090#1086#1103#1085#1080#1080' '#1086#1073#1097#1077#1075#1086' '#1080#1084#1091#1097#1077#1089#1090#1074#1072' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1080#1082#1086#1074' '#1087#1086#1084#1077#1097#1077#1085#1080#1081' '#1074' '#1084#1085#1086#1075#1086#1082#1074#1072#1088 +
              #1090#1080#1088#1085#1086#1084' '#1076#1086#1084#1077)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Align = baWidth
          Top = 296.165430000000000000
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470'[varHouse]  '#1087#1086' '#1091#1083'. [varStreet]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Align = baWidth
          Top = 322.622140000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #1086#1090'  [Gl."D3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Align = baWidth
          Top = 366.299320000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1054#1073#1097#1080#1077' '#1089#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1084#1085#1086#1075#1086#1082#1074#1072#1088#1090#1080#1088#1085#1086#1084' '#1076#1086#1084#1077':')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Align = baWidth
          Top = 395.212740000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              ' '#1050#1072#1076#1072#1089#1090#1088#1086#1074#1099#1081' '#1085#1086#1084#1077#1088' '#1084#1085#1086#1075#1086#1082#1074#1072#1088#1090#1080#1088#1085#1086#1075#1086' '#1076#1086#1084#1072'  ______________________' +
              '__________________')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Align = baLeft
          Top = 414.110390000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1043#1086#1076' '#1087#1086#1089#1090#1088#1086#1081#1082#1080':')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Align = baWidth
          Top = 433.008040000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              #1057#1090#1077#1087#1077#1085#1100' '#1080#1079#1085#1086#1089#1072' '#1087#1086' '#1076#1072#1085#1085#1099#1084' '#1075#1086#1089#1091#1076#1072#1088#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1090#1077#1093#1085#1080#1095#1077#1089#1082#1086#1075#1086' '#1091#1095#1077#1090#1072' ___' +
              '____________________')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Align = baWidth
          Top = 451.905690000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              #1057#1090#1077#1087#1077#1085#1100' '#1092#1072#1082#1090#1080#1095#1077#1089#1082#1086#1075#1086' '#1080#1079#1085#1086#1089#1072' ____________________________________' +
              '_________________')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Align = baWidth
          Top = 470.803340000000000000
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              #1056#1077#1082#1074#1080#1079#1080#1090#1099' '#1087#1088#1072#1074#1086#1074#1086#1075#1086' '#1072#1082#1090#1072' '#1086' '#1087#1088#1080#1079#1085#1072#1085#1080#1080' '#1084#1085#1086#1075#1086#1082#1074#1072#1088#1090#1080#1088#1085#1086#1075#1086' '#1076#1086#1084#1072' '#1072#1074#1072#1088#1080 +
              #1081#1085#1099#1084' '#1080
            
              #1087#1086#1076#1083#1077#1078#1072#1097#1080#1084' '#1089#1085#1086#1089#1091' _______________________________________________' +
              '_______________')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Align = baLeft
          Top = 508.598640000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1052#1072#1090#1077#1088#1080#1072#1083' '#1089#1090#1077#1085':')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Align = baLeft
          Top = 527.496290000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1063#1080#1089#1083#1086' '#1101#1090#1072#1078#1077#1081':')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Align = baLeft
          Top = 546.393940000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1053#1072#1083#1080#1095#1080#1077' '#1087#1086#1076#1074#1072#1083#1072' '#1080#1083#1080' '#1087#1086#1083#1091#1087#1086#1076#1074#1072#1083#1072':')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Align = baWidth
          Top = 565.291590000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1054#1073#1097#1072#1103' '#1087#1083#1086#1097#1072#1076#1100' '#1087#1086#1084#1077#1097#1077#1085#1080#1081':')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Align = baLeft
          Top = 584.189240000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1050#1086#1083'-'#1074#1086' '#1087#1086#1076#1098#1077#1079#1076#1086#1074':')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Align = baWidth
          Top = 603.086890000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1055#1083#1086#1097#1072#1076#1100' '#1083'/'#1082#1083#1077#1090#1086#1082':')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Align = baWidth
          Top = 621.984540000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1059#1073#1086#1088#1086#1095#1085#1072#1103' '#1087#1083#1086#1097#1072#1076#1100' ('#1087#1088#1080#1076#1086#1084#1086#1074#1086#1081' '#1090#1077#1088#1088#1080#1090#1086#1088#1080#1080'):')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Align = baLeft
          Top = 640.882190000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1055#1083#1086#1097#1072#1076#1100' '#1095#1077#1088#1076#1072#1082#1086#1074' ('#1090#1077#1093#1085#1080#1095#1077#1089'. '#1101#1090#1072#1078#1077#1081'):')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Align = baLeft
          Top = 659.779840000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1042#1080#1076' '#1082#1088#1086#1074#1083#1080':')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Align = baWidth
          Left = 90.708720000000000000
          Top = 659.779840000000000000
          Width = 627.401980000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 257.007874020000000000
          Top = 640.858267720000000000
          Width = 461.102660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Align = baLeft
          Top = 678.677490000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1050#1086#1083'-'#1074#1086' '#1097#1080#1090#1086#1074#1099#1093':')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Align = baWidth
          Left = 124.724490000000000000
          Top = 678.677490000000000000
          Width = 593.386210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Align = baLeft
          Top = 697.575140000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1051#1080#1092#1090#1099' ('#1082#1086#1083'-'#1074#1086', '#1074#1080#1076'):')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 143.622047240000000000
          Top = 697.551181100000000000
          Width = 574.488560000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Align = baLeft
          Top = 716.472790000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1058#1077#1083#1077#1074#1080#1076#1077#1085#1080#1077':')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 143.622047240000000000
          Top = 716.448818900000000000
          Width = 574.488560000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Align = baLeft
          Top = 735.370440000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1042#1077#1085#1090#1080#1083#1103#1094#1080#1103':')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 102.047244090000000000
          Top = 735.346456690000000000
          Width = 616.063390000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Align = baLeft
          Top = 754.268090000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   '#1052#1091#1089#1086#1088#1086#1087#1088#1086#1074#1086#1076':')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Align = baWidth
          Top = 884.945270000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1086#1089#1084#1086#1090#1088#1072' '#1089#1090#1088#1086#1080#1090#1077#1083#1100#1085#1099#1093' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1081' '#1080' '#1080#1085#1078#1077#1085#1077#1088#1085#1086#1075#1086' '#1086#1073#1086#1088#1091#1076 +
              #1086#1074#1072#1085#1080#1103)
          ParentFont = False
        end
        object QHouseBUILDYEAR: TfrxMemoView
          Left = 105.826840000000000000
          Top = 413.968770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BUILDYEAR'
          DataSet = fr.QHouse
          DataSetName = 'QHouse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[QHouse."BUILDYEAR"]')
          ParentFont = False
        end
        object QHouseFLOOR_CNT: TfrxMemoView
          Left = 109.606370000000000000
          Top = 527.622047244095000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FLOOR_CNT'
          DataSet = fr.QHouse
          DataSetName = 'QHouse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[QHouse."FLOOR_CNT"]')
          ParentFont = False
        end
        object QHouseCELLAR_SQ: TfrxMemoView
          Left = 241.889920000000000000
          Top = 546.519685039370000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CELLAR_SQ'
          DataSet = fr.QHouse
          DataSetName = 'QHouse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[QHouse."CELLAR_SQ"]')
          ParentFont = False
        end
        object QHouseTOTAL_SQ: TfrxMemoView
          Left = 196.535560000000000000
          Top = 565.417322834646000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TOTAL_SQ'
          DataSet = fr.QHouse
          DataSetName = 'QHouse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[QHouse."TOTAL_SQ"]')
          ParentFont = False
        end
        object QHouseENTRANCE_CNT: TfrxMemoView
          Left = 147.401670000000000000
          Top = 584.314960629921000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ENTRANCE_CNT'
          DataSet = fr.QHouse
          DataSetName = 'QHouse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[QHouse."ENTRANCE_CNT"]')
          ParentFont = False
        end
        object QHouseLIFT_CNT: TfrxMemoView
          Left = 151.181200000000000000
          Top = 697.700787401575000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'LIFT_CNT'
          DataSet = fr.QHouse
          DataSetName = 'QHouse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[QHouse."LIFT_CNT"]')
          ParentFont = False
        end
        object QHouseGARBAGE_CNT: TfrxMemoView
          Left = 136.063080000000000000
          Top = 754.393700787402000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'GARBAGE_CNT'
          DataSet = fr.QHouse
          DataSetName = 'QHouse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[QHouse."GARBAGE_CNT"]')
          ParentFont = False
        end
        object QHouseWALL: TfrxMemoView
          Left = 115.165430000000000000
          Top = 508.724409450000000000
          Width = 476.220780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'WALL'
          DataSet = fr.QHouse
          DataSetName = 'QHouse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[QHouse."WALL"]')
          ParentFont = False
        end
      end
    end
    object Page5: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page5OnBeforePrint'
      object Header1: TfrxHeader
        Height = 45.354330708661400000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo77: TfrxMemoView
          Align = baRight
          Left = 638.740570000000000000
          Width = 79.370130000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1072#1087#1080#1090#1072#1083#1100#1085#1099#1081' '#1088#1077#1084#1086#1085#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 559.929500000000000000
          Width = 79.370078740000000000
          Height = 45.354360000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1077#1082#1091#1097#1080#1081' '#1088#1077#1084#1086#1085#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          Width = 185.196970000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1081', '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' '#1080' '#1101#1083#1077#1084#1077#1085#1090#1086#1074' '#1073#1083#1072#1075#1086#1091#1089#1090#1088#1086#1081#1089#1090 +
              #1074#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Left = 185.196970000000000000
          Width = 374.929133860000000000
          Height = 45.354360000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1094#1077#1085#1082#1072' '#1089#1086#1089#1090#1086#1103#1085#1080#1103' '#1080#1083#1080' '#1082#1088#1072#1090#1082#1086#1077' '#1086#1087#1080#1089#1072#1085#1080#1077' '#1076#1077#1092#1077#1082#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        Height = 18.897637800000000000
        Top = 86.929190000000000000
        Width = 718.110700000000000000
        DataSet = fr.Q_Struct
        DataSetName = 'QStruct'
        RowCount = 0
        object Memo68: TfrxMemoView
          Align = baWidth
          Left = 22.677180000000000000
          Width = 695.433520000000000000
          Height = 18.897650000000000000
          OnAfterPrint = 'QStructNAMEOnAfterPrint'
          ShowHint = False
          DataField = 'NAME'
          DataSet = fr.Q_Struct
          DataSetName = 'QStruct'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[QStruct."NAME"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Align = baLeft
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NUM'
          DataSet = fr.Q_Struct
          DataSetName = 'QStruct'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            '[QStruct."NUM"]')
          ParentFont = False
        end
      end
      object DetailData2: TfrxDetailData
        Height = 18.897650000000000000
        Top = 128.504020000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'DetailData1OnBeforePrint'
        DataSet = fr.QDef
        DataSetName = 'QDef'
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        object Memo70: TfrxMemoView
          Left = 3.779530000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'QDefNAMEOnBeforePrint'
          ShowHint = False
          DataSet = fr.QDef
          DataSetName = 'QDef'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '-[QDef."NAME"]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 909.732283464567000000
          Width = 136.818897640000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fr.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Left = 185.196850390000000000
          Width = 374.929133860000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo71OnBeforePrint'
          ShowHint = False
          AllowHTMLTags = True
          DataSet = fr.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 638.740157480000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 559.748031500000000000
          Width = 79.370078740157500000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
      end
      object SubdetailData2: TfrxSubdetailData
        Height = 18.897650000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'SubdetailData1OnAfterPrint'
        OnBeforePrint = 'SubdetailData1OnBeforePrint'
        DataSet = fr.Q5
        DataSetName = 'Q5'
        KeepTogether = True
        RowCount = 0
        Stretched = True
        OnMasterDetail = 'SubdetailData1OnMasterDetail'
        object Memo78: TfrxMemoView
          Left = 185.196850390000000000
          Width = 374.929133860000000000
          Height = 18.897650000000000000
          OnAfterData = 'Q3MLISTNAMEOnAfterData'
          OnBeforePrint = 'Q3MLISTNAMEOnBeforePrint'
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = fr.Q3
          DataSetName = 'Q3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HideZeros = True
          Memo.UTF8W = (
            '[Q5."MLISTNAME"]')
          ParentFont = False
          SuppressRepeated = True
        end
        object Memo84: TfrxMemoView
          Left = 1000.440944880000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 955.221090000000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 909.732283460000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo21OnBeforePrint'
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 638.740157480000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
          SuppressRepeated = True
        end
        object Memo74: TfrxMemoView
          Left = 559.748031500000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo74OnBeforePrint'
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
          SuppressRepeated = True
        end
      end
      object ReportSummary2: TfrxReportSummary
        Height = 136.063080000000000000
        Top = 249.448980000000000000
        Width = 718.110700000000000000
        object Memo89: TfrxMemoView
          Align = baWidth
          Top = 55.000000000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Visible = False
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '    '#1043#1077#1085#1077#1088#1072#1083#1100#1085#1099#1081' '#1076#1080#1088#1077#1082#1090#1086#1088)
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Align = baWidth
          Top = 77.677180000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '   '#1044#1080#1088#1077#1082#1090#1086#1088' '#1054#1054#1054' "'#1050#1072#1083#1080#1085#1080#1085#1089#1082#1080#1081' '#1044#1045#1047'" __________________________'#1050'.'#1048'.' +
              ' '#1057#1084#1080#1088#1085#1086#1074)
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 444.409710000000000000
          Top = 102.574830000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1052'.'#1055'.                       "____"___________20  '#1075'.')
          ParentFont = False
        end
      end
    end
  end
  object ds_GRAPHLIST: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT GL.CODE, '
      '       GL."YEAR", '
      '       GL.KONTRAGENT,k.name KName,'
      '       GL.GRAPHTO,gt.name GTName,'
      '       GL.NOTE,'
      '       GL.showprikazpo,sp.srvdog,'
      '       GL.alock'
      'FROM GRAPHLIST GL'
      'left outer join kontragent k on k.code=gl.kontragent'
      'left outer join GRAPHTO gt on gt.code=gl.graphto'
      'left outer join SHOWPROKAZPO sp on sp.code=GL.showprikazpo')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 56
    Top = 96
  end
  object src_GRAPHLIST: TDataSource
    DataSet = ds_GRAPHLIST
    Left = 88
    Top = 96
  end
  object md_kr: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 464
    Top = 400
    object fld__krKR: TStringField
      FieldName = 'KR'
      Size = 256
    end
    object fld__krTO: TStringField
      FieldName = 'TO'
      Size = 256
    end
    object fld__krV: TStringField
      FieldName = 'V'
      Size = 6
    end
    object fld__krTR: TStringField
      FieldName = 'TR'
      Size = 256
    end
  end
  object frds_1: TfrxDBDataset
    UserName = 'ds_kr'
    CloseDataSource = False
    DataSet = md_kr
    BCDToCurrency = False
    Left = 496
    Top = 400
  end
  object dlg1: TcxShellBrowserDialog
    Left = 360
    Top = 400
  end
end
