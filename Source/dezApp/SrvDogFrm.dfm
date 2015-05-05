object SrvDogForm: TSrvDogForm
  Left = 0
  Top = 0
  HelpContext = 6
  Caption = #1044#1086#1075#1086#1074#1086#1088#1099' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1103
  ClientHeight = 660
  ClientWidth = 899
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lcntr1: TdxLayoutControl
    Left = 0
    Top = 26
    Width = 899
    Height = 634
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = LCxSkin1
    object grd1: TcxGrid
      Left = 11
      Top = 11
      Width = 250
      Height = 200
      TabOrder = 0
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = il1
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.ImageIndex = 0
        Navigator.Buttons.Delete.ImageIndex = 3
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.ImageIndex = 1
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        OnCellClick = v1CellClick
        DataController.DataSource = src_dog
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv1KONTRAGENT
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.ImmediateEditor = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.ShowEditButtons = gsebForFocusedRecord
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          Options.Editing = False
          Options.ShowEditButtons = isebNever
        end
        object clv1FIRM: TcxGridDBColumn
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'FIRM'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = cmDb.src_FIRM
          Options.Editing = False
          Options.ShowEditButtons = isebNever
          Width = 129
        end
        object clv1KONTRAGENT: TcxGridDBColumn
          Caption = #1055#1086#1076#1088#1103#1076#1095#1080#1082
          DataBinding.FieldName = 'KONTRAGENT'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownSizeable = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = src_kontr
          Options.Editing = False
          Options.ShowEditButtons = isebNever
          Width = 169
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1053#1086#1084#1077#1088' '#1076#1086#1075#1086#1074#1086#1088#1072
          DataBinding.FieldName = 'NOMER'
          Options.Editing = False
          Options.ShowEditButtons = isebNever
          Width = 106
        end
        object clv1D1: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1079#1072#1082#1083#1102#1095#1077#1085#1080#1103
          DataBinding.FieldName = 'D1'
          Options.Editing = False
          Options.ShowEditButtons = isebNever
          Width = 108
        end
        object clv1D2: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
          DataBinding.FieldName = 'D2'
          Options.Editing = False
          Options.ShowEditButtons = isebNever
          Width = 114
        end
        object clvAType: TcxGridDBColumn
          Caption = #1058#1080#1087
          DataBinding.FieldName = 'AType'
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
          Properties.ListSource = src_SRVDOGTYPE
          Options.Editing = False
          Options.ShowEditButtons = isebNever
          Width = 112
        end
        object clv1SIGNDOG: TcxGridDBColumn
          Caption = #1055#1088#1080#1079#1085#1072#1082
          DataBinding.FieldName = 'SIGNDOG'
          Visible = False
          VisibleForCustomization = False
          Width = 120
        end
        object clv1SIGNNAME: TcxGridDBColumn
          Caption = #1055#1088#1080#1079#1085#1072#1082
          DataBinding.FieldName = 'SIGNNAME'
          Width = 95
        end
        object clv1ACTIVE: TcxGridDBColumn
          Caption = #1040#1082#1090#1080#1074#1085#1086#1089#1090#1100
          DataBinding.FieldName = 'ACTIVE'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownSizeable = True
          Properties.KeyFieldNames = 'Active'
          Properties.ListColumns = <
            item
              Width = 20
              FieldName = 'Active'
            end
            item
              FieldName = 'Name'
            end>
          Properties.ListFieldIndex = 1
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = src_active
          Properties.OnEditValueChanged = clv1ACTIVEPropertiesEditValueChanged
          Width = 99
        end
        object clv1DATA: TcxGridDBColumn
          DataBinding.FieldName = 'DATA'
          Visible = False
          Options.Editing = False
          Options.ShowEditButtons = isebNever
          VisibleForCustomization = False
        end
        object clv1house: TcxGridDBColumn
          Caption = #1082#1086#1083'-'#1074#1086' '#1076#1086#1084#1086#1074
          DataBinding.FieldName = 'house'
          Options.Editing = False
          Options.ShowEditButtons = isebNever
          Width = 82
        end
        object clv1LIVING_SQ: TcxGridDBColumn
          Caption = #1046#1080#1083'. '#1087#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'LIVING_SQ'
          Options.Editing = False
          Options.ShowEditButtons = isebNever
          Width = 90
        end
        object clv1KNAME: TcxGridDBColumn
          DataBinding.FieldName = 'KNAME'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 22
      Top = 285
      Width = 329
      Height = 309
      TabOrder = 1
      object v2: TcxGridDBTableView
        OnKeyUp = v2KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = v2CellDblClick
        DataController.DataSource = src_DogHouse
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv2SRVDOG
          end
          item
            Kind = skSum
            Column = clv2living_sq
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        object clv2SRVDOG: TcxGridDBColumn
          Caption = #1044#1086#1075#1086#1074#1086#1088
          DataBinding.FieldName = 'SRVDOG'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
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
          Properties.ListSource = src_dog
          Properties.ReadOnly = True
          Width = 66
        end
        object clv2HOUSE: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'HOUSE'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
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
          Properties.ListSource = src_hs
          Properties.ReadOnly = True
          Width = 48
        end
        object clv2street: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'street'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownSizeable = True
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
          Properties.ListSource = src_street
          Properties.ReadOnly = True
          Width = 185
        end
        object clv2living_sq: TcxGridDBColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'living_sq'
        end
        object clv2TOTAL_SQ: TcxGridDBColumn
          Caption = #1054#1073#1097#1072#1103' '#1087#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'TOTAL_SQ'
          Visible = False
          Width = 95
        end
        object clv2LODGER_CNT: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086' '#1087#1088#1086#1078#1080#1074#1072#1102#1097#1080#1093
          DataBinding.FieldName = 'LODGER_CNT'
          Visible = False
          Width = 119
        end
        object clv2CELLAR_SQ: TcxGridDBColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100' '#1087#1086#1076#1074#1072#1083#1100#1085#1099#1093' '#1087#1086#1084#1077#1097#1077#1085#1080#1081
          DataBinding.FieldName = 'CELLAR_SQ'
          Visible = False
          Width = 84
        end
        object clv2FLAT_CNT: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086' '#1082#1074#1072#1088#1090#1080#1088
          DataBinding.FieldName = 'FLAT_CNT'
          Visible = False
          Width = 54
        end
        object clv2ACCCODE_CNT: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086' '#1083#1080#1094#1077#1074#1099#1093' '#1089#1095#1077#1090#1086#1074
          DataBinding.FieldName = 'ACCCODE_CNT'
          Visible = False
          Width = 54
        end
        object clv2FLOOR_CNT: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086' '#1101#1090#1072#1078#1077#1081
          DataBinding.FieldName = 'FLOOR_CNT'
          Visible = False
        end
        object clv2LIFT_CNT: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086' '#1083#1080#1092#1090#1086#1074
          DataBinding.FieldName = 'LIFT_CNT'
          Visible = False
        end
        object clv2ENTRANCE_CNT: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086' '#1087#1086#1076#1098#1077#1079#1076#1086#1074
          DataBinding.FieldName = 'ENTRANCE_CNT'
          Visible = False
          Width = 61
        end
        object clv2GARBAGE_CNT: TcxGridDBColumn
          Caption = #1063#1080#1089#1083#1086' '#1084#1091#1089#1086#1088#1086#1087#1088#1086#1074#1086#1076#1086#1074
          DataBinding.FieldName = 'GARBAGE_CNT'
          Visible = False
          Width = 71
        end
        object clv2COMMERCE_SQ: TcxGridDBColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100' '#1085#1077' '#1078#1080#1083#1099#1093' '#1087#1086#1084#1077#1097#1077#1085#1080#1081
          DataBinding.FieldName = 'COMMERCE_SQ'
          Visible = False
          Width = 67
        end
        object clv2BUILDYEAR: TcxGridDBColumn
          Caption = #1043#1086#1076' '#1087#1086#1089#1090#1088#1086#1081#1082#1080' '#1076#1086#1084#1072' '
          DataBinding.FieldName = 'BUILDYEAR'
          Visible = False
          Width = 58
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object grd3: TcxGrid
      Left = 369
      Top = 285
      Width = 441
      Height = 309
      TabOrder = 2
      object v3: TcxGridDBTableView
        OnKeyUp = v3KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = v3CellDblClick
        DataController.DataSource = src_memhouse
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv3NOMER
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv3CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3NOMER: TcxGridDBColumn
          Caption = #1053#1086#1084#1077#1088
          DataBinding.FieldName = 'NOMER'
          Width = 85
        end
        object clv3STREET: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STREET'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownSizeable = True
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
          Properties.ListSource = src_street
          Width = 224
        end
      end
      object l3: TcxGridLevel
        GridView = v3
      end
    end
    object grd4: TcxGrid
      Left = 10000
      Top = 10000
      Width = 250
      Height = 200
      TabOrder = 3
      Visible = False
      object v4: TcxGridDBTableView
        OnKeyUp = v4KeyUp
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        OnCellClick = v4CellClick
        DataController.DataSource = src_ZTOPATH
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object clv4CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv4SRVDOG: TcxGridDBColumn
          DataBinding.FieldName = 'SRVDOG'
          Visible = False
          VisibleForCustomization = False
        end
        object clv4NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1095#1072#1089#1090#1082#1072
          DataBinding.FieldName = 'NAME'
        end
      end
      object l4: TcxGridLevel
        GridView = v4
      end
    end
    object grd5: TcxGrid
      Left = 10000
      Top = 10000
      Width = 250
      Height = 200
      TabOrder = 4
      Visible = False
      object v5: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = v5CellDblClick
        DataController.DataSource = src_SRVDOGHOUSE
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv5SNAME
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object clv5SRVDOG: TcxGridDBColumn
          DataBinding.FieldName = 'SRVDOG'
          Visible = False
          VisibleForCustomization = False
        end
        object clv5HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv5SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Width = 200
        end
        object clv5NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 49
        end
        object clv5ZTOPATH: TcxGridDBColumn
          DataBinding.FieldName = 'ZTOPATH'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l5: TcxGridLevel
        GridView = v5
      end
    end
    object grd6: TcxGrid
      Left = 10000
      Top = 10000
      Width = 250
      Height = 200
      TabOrder = 5
      Visible = False
      object v6: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = v6CellDblClick
        DataController.DataSource = src_ZTOHOUSE
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv6STREET
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object clv6STREET: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STREET'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
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
          Properties.ListSource = src_street
          Width = 185
        end
        object clv6HOUSE: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 50
        end
        object clv6CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l6: TcxGridLevel
        GridView = v6
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
    object Itm1: TdxLayoutItem
      AlignHorz = ahClient
      CaptionOptions.Text = #1057#1087#1080#1089#1086#1082' '#1076#1086#1075#1086#1074#1086#1088#1086#1074
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grp1
      Control = grd1
      Index = 0
    end
    object splt1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object gr4: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 2
    end
    object grp3: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1044#1086#1084#1072' '#1087#1086' '#1076#1086#1075#1086#1074#1086#1088#1091
      Parent = gr4
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object Itm2: TdxLayoutItem
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = #1044#1086#1084#1072', '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1077#1084#1099#1077' '#1087#1086' '#1076#1086#1075#1086#1074#1086#1088#1091
      CaptionOptions.Layout = clTop
      Parent = grp3
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 329
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object splt2: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grp3
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object Itm3: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1044#1086#1084#1072', '#1082#1086#1090#1086#1088#1099#1077' '#1084#1086#1078#1085#1086' '#1076#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1076#1086#1075#1086#1074#1086#1088
      CaptionOptions.Layout = clTop
      Parent = grp3
      Control = grd3
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object gr5: TdxLayoutGroup
      CaptionOptions.Text = #1059#1095#1072#1089#1090#1082#1080
      Parent = gr4
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object gr6: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = gr5
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 236
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itm_grd4: TdxLayoutItem
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = gr6
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 227
      Control = grd4
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object spl3: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = gr6
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object gr7: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = gr6
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 208
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object itm_grd5: TdxLayoutItem
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = #1044#1086#1084#1072' '#1079#1072#1082#1088#1077#1087#1083#1077#1085#1085#1099#1077' '#1079#1072' '#1091#1095#1072#1089#1090#1082#1086#1084
      CaptionOptions.Layout = clTop
      Parent = gr7
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 257
      Control = grd5
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object spl4: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = gr6
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 3
    end
    object grlcntr1Group3: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = gr6
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 4
    end
    object itm_grd6: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1044#1086#1084#1072', '#1082#1086#1090#1086#1088#1099#1077' '#1084#1086#1078#1085#1086' '#1079#1072#1082#1088#1077#1087#1080#1090#1100' '#1079#1072' '#1091#1095#1072#1089#1090#1082#1086#1084
      CaptionOptions.Layout = clTop
      Parent = grlcntr1Group3
      Control = grd6
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object LSkin1: TdxLayoutLookAndFeelList
    Left = 576
    Top = 65528
    object LCxSkin1: TdxLayoutCxLookAndFeel
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Blue'
    end
  end
  object ppm1: TcxGridPopupMenu
    PopupMenus = <>
    Left = 624
    Top = 96
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = Itm1
        Properties.Strings = (
          'SizeOptions.Height'
          'SizeOptions.Width')
      end
      item
        Component = Itm2
        Properties.Strings = (
          'SizeOptions.Height'
          'SizeOptions.Width')
      end
      item
        Component = Itm3
        Properties.Strings = (
          'SizeOptions.Height'
          'SizeOptions.Width')
      end
      item
        Component = v1
        Properties.Strings = (
          'FilterRow.Visible'
          'OptionsView.GroupByBox')
      end
      item
        Component = v2
        Properties.Strings = (
          'FilterRow.Visible'
          'OptionsView.GroupByBox')
      end
      item
        Component = v3
        Properties.Strings = (
          'FilterRow.Visible'
          'OptionsView.GroupByBox')
      end>
    StorageName = 'prop1'
    Left = 602
    Top = 65529
  end
  object ds_dog: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE SRVDOG'
      'SET '
      '    KONTRAGENT = :KONTRAGENT,'
      '    NOMER = :NOMER,'
      '    D1 = :D1,'
      '    D2 = :D2,'
      '    "ACTIVE" = :"ACTIVE",'
      '    DATA = :DATA,'
      '    ATYPE = :ATYPE'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    SRVDOG'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO SRVDOG('
      '    CODE,'
      '    KONTRAGENT,'
      '    NOMER,'
      '    D1,'
      '    D2,'
      '    "ACTIVE",'
      '    DATA,'
      '    ATYPE'
      ')'
      'VALUES('
      '    :CODE,'
      '    :KONTRAGENT,'
      '    :NOMER,'
      '    :D1,'
      '    :D2,'
      '    :"ACTIVE",'
      '    :DATA,'
      '    :ATYPE'
      ')')
    RefreshSQL.Strings = (
      'SELECT sd.CODE, '
      '       sd.KONTRAGENT, '
      '       sd.NOMER, '
      '       sd.D1, '
      '       sd.D2, '
      '       sd."ACTIVE", '
      '       sd.DATA,'
      '       count(sdh.house) house,'
      '       sum(h.living_sq) living_sq,'
      '       sd.atype'
      'FROM SRVDOG sd'
      'left outer join srvdoghouse sdh on sdh.srvdog=sd.code'
      'left outer join house h on h.code=sdh.house'
      ''
      ' WHERE '
      '        SD.CODE = :OLD_CODE'
      '    '
      'group by sd.CODE,sd.KONTRAGENT,sd.NOMER,sd.D1,'
      '         sd.D2,sd."ACTIVE",sd.DATA,sd.atype')
    SelectSQL.Strings = (
      'SELECT sd.CODE,'
      '       sd.KONTRAGENT,'
      '       sd.NOMER,'
      '       sd.D1,'
      '       sd.D2,'
      '       sd."ACTIVE",'
      '       sd.DATA, k.Name KNAME,'
      '       count(sdh.house) house,'
      '       sum(h.living_sq) living_sq,'
      '       sd.atype, sd.FIRM, sd.SIGNDOG, si.NAME SIGNNAME'
      'FROM SRVDOG sd'
      'left outer join srvdoghouse sdh on sdh.srvdog=sd.code'
      'left outer join house h on h.code=sdh.house'
      'left outer join kontragent k on k.code = sd.KONTRAGENT'
      'left outer join SIGNDOG si on si.ID = sd.SIGNDOG'
      'group by sd.CODE,sd.KONTRAGENT,k.Name,sd.NOMER,sd.D1,'
      
        '         sd.D2,sd."ACTIVE",sd.DATA,sd.atype, sd.FIRM, sd.SIGNDOG' +
        ', si.NAME')
    BeforePost = ds_dogBeforePost
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 104
    Top = 96
  end
  object src_dog: TDataSource
    DataSet = ds_dog
    OnDataChange = src_dogDataChange
    Left = 68
    Top = 96
  end
  object src_kontr: TDataSource
    Left = 52
    Top = 120
  end
  object ds_DogHouse: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE SRVDOGHOUSE'
      'SET '
      'WHERE'
      '    SRVDOG = :OLD_SRVDOG'
      '    and HOUSE = :OLD_HOUSE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    SRVDOGHOUSE'
      'WHERE'
      '        SRVDOG = :OLD_SRVDOG'
      '    and HOUSE = :OLD_HOUSE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO SRVDOGHOUSE('
      '    SRVDOG,'
      '    HOUSE'
      ')'
      'VALUES('
      '    :SRVDOG,'
      '    :HOUSE'
      ')')
    RefreshSQL.Strings = (
      'select s.SRVDOG, s.HOUSE, h.street,h.living_sq'
      'from SRVDOGHOUSE s'
      'left outer join house h on s.house=h.code'
      ''
      ' WHERE '
      '        S.SRVDOG = :OLD_SRVDOG'
      '    and S.HOUSE = :OLD_HOUSE'
      '    ')
    SelectSQL.Strings = (
      'select s.SRVDOG, s.HOUSE, h.street,'
      '       H.TOTAL_SQ, '
      '       H.LIVING_SQ,'
      '       H.LODGER_CNT,'
      '       H.CELLAR_SQ,'
      '       H.FLAT_CNT,'
      '       H.ACCCODE_CNT,'
      '       H.FLOOR_CNT,'
      '       H.LIFT_CNT,'
      '       H.ENTRANCE_CNT,'
      '       H.GARBAGE_CNT,'
      '       H.COMMERCE_SQ,'
      '       H.BUILDYEAR,'
      '       h.nomer,st.name STName'
      'from SRVDOGHOUSE s'
      'left outer join house h on s.house=h.code'
      'left outer join street st on st.code=h.street')
    AutoUpdateOptions.UpdateTableName = 'SRVDOGHOUSE'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.UpdateOnlyModifiedFields = True
    BeforePost = ds_DogHouseBeforePost
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 176
    Top = 144
  end
  object src_DogHouse: TDataSource
    DataSet = ds_DogHouse
    Left = 220
    Top = 144
  end
  object ds_house: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE,NOMER,STREET FROM HOUSE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 376
    Top = 144
  end
  object src_house: TDataSource
    DataSet = ds_house
    Left = 404
    Top = 144
  end
  object mt_active: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 648
    Top = 96
  end
  object src_active: TDataSource
    DataSet = mt_active
    Left = 676
    Top = 96
  end
  object mt_house: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 368
    Top = 200
  end
  object src_memhouse: TDataSource
    DataSet = mt_house
    Left = 397
    Top = 200
  end
  object dshouse: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE,NOMER,STREET FROM HOUSE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 184
    Top = 200
  end
  object src_hs: TDataSource
    DataSet = dshouse
    Left = 224
    Top = 184
  end
  object il1: TcxImageList
    FormatVersion = 1
    DesignInfo = 11010069
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000009140B231E46247D32783ADB33833DF3308139F32871
          2FDB163F197D0511072300000000000000000000000000000000000000000000
          00000000000018321D533E874BE6419950FF7DC28FFF96D0A6FF96CFA6FF78BE
          89FF368D42FF28742FE60D291053000000000000000000000000000000000000
          00001A3420534A9559F464B478FFA8DBB5FF87CC98FF66BC7DFF64BA7CFF86CB
          98FFA5D9B4FF58AA6BFF2A7B32F40D2910530000000000000000000000000C16
          0E224D925CE56AB97DFFA8DBB2FF60BC77FF5CBA73FF59B870FF59B56FFF58B5
          6FFF5BB774FFA5D9B3FF5AAA6CFF28752FE50511062200000000000000002E54
          377E53AB68FFAADDB4FF64C179FF5FBE71FF60BC77FFFFFFFFFFFFFFFFFF59B8
          70FF58B56EFF5CB774FFA6DAB4FF388F43FF16401A7E00000000000000005394
          64DB8ACC98FF89D396FF6BC67AFF63C170FF55AB65FFFFFFFFFFFFFFFFFF59B8
          70FF59B870FF5BB972FF85CC97FF7BBE8DFF297231DB000000000000000061A9
          76F6A9DDB3FF7DCF8AFF75CC81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF59B870FF67BE7DFF9CD4ABFF32833BF6000000000000000065AC
          7AF6B6E2BEFF8BD597FF7AC986FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF59B870FF69C17EFF9DD4AAFF368640F600000000000000005E9B
          71DBACDDB6FFA6DFAFFF81CB8CFF7CC986FF6EBD79FFFFFFFFFFFFFFFFFF5BAC
          6AFF60BC77FF5CBA73FF8BD199FF80C592FF347A3DDB0000000000000000375B
          437E85C797FFD2EED7FF95D9A0FF8AD394FF7FC889FFFFFFFFFFFFFFFFFF79CD
          85FF6BC37CFF6FC77EFFACDFB5FF459E57FF2048267E00000000000000000F19
          122265A579E5AADAB7FFD8F1DCFF92D89DFF88CD93FF84CC8EFF8BD496FF8AD4
          95FF83D28EFFAFE0B7FF6BB97DFF41894DE509140B2200000000000000000000
          0000253D2D536BB081F4AFDCBBFFDCF2E0FFB6E4BDFF9BDBA5FF96D9A0FFA5DF
          AFFFC0E8C5FF79C28AFF4D975BF419321E530000000000000000000000000000
          000000000000253D2D5366A67AE694CEA4FFC3E6CBFFCFEBD4FFC9E9CEFFAFDD
          B8FF6DB97FFF4F955FE61B342153000000000000000000000000000000000000
          00000000000000000000101A1323375B437D5E9C71DB65AB7AF362A976F35595
          66DB2F54387D0D170F2300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000205020A0103010700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000205030A37833DFF307936FB01030107000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000306030A408E47FF54A35CFF4F9F57FF327C38FE010402080000
          0000000000000000000000000000000000000000000000000000000000000000
          00000306030A499A51FF5BAC64FF77CA82FF74C87EFF51A059FF337D39FE0104
          0208000000000000000000000000000000000000000000000000000000000307
          040A51A65AFF63B56DFF7ECE89FF7BCC87FF76CA81FF76C981FF52A25AFF347E
          3AFE0204020800000000000000000000000000000000000000000306040959B0
          63FF6BBD76FF84D290FF7AC985FF60B26AFF63B46DFF78C983FF78CB82FF53A3
          5CFF347E3AFD02040208000000000000000000000000000000001A331D4651A2
          5BE479C986FF80CE8DFF50A459FC2246256F28552C8B5CAD67FF7CCC86FF79CB
          85FF54A45DFF347E3AFC0204020800000000000000000000000000000000162C
          193C53A45CE66DC079FF254B296F00000000000000002A592F915EAE68FF7DCD
          89FF7CCD87FF56A55FFF357F3BFC020402080000000000000000000000000000
          000019311C4324482965000000000000000000000000000000002B5A2F915FAF
          69FF7FCE8AFF7ECE89FF57A660FF36803CFC0204020800000000000000000000
          0000000000000000000000000000000000000000000000000000000000002B5A
          309160B06AFF81CF8DFF7FCF8BFF58A761FF398540FF02040208000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002B5B309162B26CFF82D18FFF7AC885FF57A660FF1B401E7B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002C5C319163B36DFF5FAF69FF1F45237900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000002C5C3191254E297F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000010103C4102020708000000000000000000000000000000000000
          0000000000000101070808073A41000000000000000000000000000000000000
          000013123D414F4CF2FF3F3EEBFD020207080000000000000000000000000000
          0000010107082422E1FC312FEAFF08073A410000000000000000000000001515
          3E415856F5FF6361FAFF5855F6FF403EEAFC0202070800000000000000000201
          07082B2AE3FC413FF1FF4C4AF6FF312FEAFF08073A4100000000000000000F0F
          292B5B58F6FF6562FAFF7170FFFF5956F6FF413FEBFC02020708020207083431
          E6FC4745F2FF6362FFFF4A48F4FF2F2DE9FF0605262B00000000000000000000
          00000F0F292B5B59F6FF6663FAFF7471FFFF5A58F6FF4240EBFC3E3CEAFD504D
          F4FF6867FFFF504EF5FF3634EBFF0707272B0000000000000000000000000000
          0000000000000F0F292B5C5AF6FF6764FAFF7472FFFF7370FFFF706EFFFF6E6C
          FFFF5755F7FF3F3DEEFF0808272B000000000000000000000000000000000000
          00000000000000000000100F292B5D5BF7FF7976FFFF5956FFFF5754FFFF7270
          FFFF4846F0FF0A0A282B00000000000000000000000000000000000000000000
          00000000000000000000030308085C59F4FD7D79FFFF5E5BFFFF5B58FFFF7674
          FFFF4542EDFD0202070800000000000000000000000000000000000000000000
          000000000000030308086562F6FC706DFBFF807EFFFF7E7BFFFF7C79FFFF7977
          FFFF5E5CF7FF4643ECFC02020708000000000000000000000000000000000000
          0000040308086D6AF9FC7774FDFF8682FFFF7673FCFF6462F8FF605DF7FF6D6A
          FAFF7B79FFFF605DF7FF4744ECFC020207080000000000000000000000000404
          08087370FCFD7D7AFEFF8A87FFFF7C79FDFF6C69FBFF11102A2B10102A2B615E
          F8FF6E6CFAFF7D7AFFFF615FF7FF4845EDFC0101050500000000000000000E0E
          1F1F7A77FFFF817EFFFF817EFEFF7471FDFF12122A2B00000000000000001010
          2A2B625FF8FF6F6DFBFF7E7CFFFF625FF8FF201F686F01010202000000000000
          00000E0E1F1F7A77FFFF7976FEFF13132B2B0000000000000000000000000000
          000010102A2B6461F8FF6A68F9FF3735A0A80D0C272900000000000000000000
          0000000000000E0E1F1F14142B2B000000000000000000000000000000000000
          00000000000011102A2B28286C6F16153C3E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000004040A0A000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000090C1B231C275F7D3047A3DB334DB4F32E47B3F32843
          9EDB15255A7D050A192300000000000000000000000000000000000000000000
          000000000000171D41533C4DB3E63C52CCFF757AE8FF8F92EEFF8F92EEFF7178
          E4FF334DC1FF2743A5E60D183B53000000000000000000000000000000000000
          0000191D43534655C2F45C65E0FFA1A6F5FF7E86EFFF5B63E9FF595DE7FF7D84
          EEFF9EA0F4FF515DD7FF2947AFF40D183B530000000000000000000000000B0D
          1C224B57BAE5616BE3FFA1ACF5FF545FECFF505CEAFF4D59E9FF4E59E6FF4C56
          E6FF5056E6FF9EA2F4FF5460D6FF2642A5E5050A182200000000000000002B2F
          697E4B56DBFFA2ABF6FF5664F0FF5266EEFF4D59E9FF4D59E9FF4D59E9FF4D59
          E9FF4C58E6FF525AE6FF9FA3F5FF3450C4FF15255B7E00000000000000004F54
          B9DB818CEEFF7E91F7FF5D73F3FF4D59E9FF4D59E9FF4D59E9FF4D59E9FF4D59
          E9FF4D59E9FF4F5BE9FF7B83F0FF757BE2FF2840A0DB00000000000000005C60
          D2F6A1ABF7FF7086F8FF6882F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF4D59E9FF5C66EAFF969CF1FF304DB5F600000000000000006065
          D3F6AFB9F9FF7F93FAFF7085F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF4D59E9FF5E6AEEFF969DF1FF344CB7F60000000000000000585B
          BFDBA5AFF5FF9DABFAFF778CF0FF545FECFF545FECFF545FECFF545FECFF545F
          ECFF545FECFF6377F2FF818EF4FF787FE9FF3247A5DB00000000000000003434
          6F7E7D83EAFFCDD4FCFF8B9DFAFF7E93F7FF758AEEFF6C84F6FF6C84F6FF6C84
          F6FF6C84F6FF6379F3FFA4AFF8FF3E4FD0FF1F2A607E00000000000000000E0E
          1E225F5EC9E5A3A7F3FFD4DBFDFF879AFAFF7F91F0FF7A8EF1FF7F94F8FF7E92
          F9FF768CF8FFA8B6F8FF636EE3FF3E4EB3E5090B1A2200000000000000000000
          000023234A536564D6F4AAADF2FFD8DCFDFFAEBAFAFF91A3FAFF8B9DFAFF9CA9
          FBFFBAC7FCFF707BE9FF4957C3F4171D42530000000000000000000000000000
          00000000000023234A536060C9E68E93EDFFBEC3F8FFCCD3F9FFC4CBF9FFAAB4
          F4FF6670E2FF4B55BDE61A1E4353000000000000000000000000000000000000
          000000000000000000000F0F1F2334346E7D595BBEDB5E5FD2F35C5FD0F35055
          BADB2D31697D0C0D1D2300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000307936FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000037833EFF347E3AFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003F8D46FF57A15EFF559E5AFF357F3BFF317B37FF2662
          2AD31230146B0000000000000000000000000000000000000000000000000000
          00000000000046984EFF5FA966FF83C68BFF81C587FF7EC385FF7CC282FF6DB5
          74FF4D9552FF235C27CB040B051A000000000000000000000000000000000000
          0000000000004A9D53FF63AD6AFF87C98FFF85C78BFF82C689FF7FC487FF75BF
          7CFF7BC282FF559D5BFF235C27CB000000000000000000000000000000000000
          000000000000000000004B9E53FF63AE6CFF60AA68FF409048FF5AA361FF81C5
          87FF7EC485FF7CC282FF4E9654FF1331156B0000000000000000000000000000
          00000000000000000000000000004B9F54FF489A50FF000000002A5E30A63E8B
          44FD7CC184FF77C17EFF71B777FF29662ED80000000000000000000000000000
          0000000000000000000000000000000000004CA055FF0000000000000000224A
          258263AB6AFF83C78AFF82C588FF347E3AFF0000000000000000000000000000
          00005CB666FF59B263FF56AE60FF53A95CFF254D2A770000000000000000244D
          288267AF6FFF88C98FFF85C88CFF38843EFF0000000000000000000000000000
          0000509E5AD894D19DFF9DD5A6FF93CF9BFF52A95CFD29552D8227522C82499B
          51FD89C990FF85C88CFF7DC084FF337439D80000000000000000000000000000
          000029502E6B7BC785FFA0D7A9FF9ED6A7FF97D1A0FF77C081FF75BC7EFF8ECC
          97FF93CF9BFF90CE98FF61AB69FF1B3C1E6B0000000000000000000000000000
          0000000000004E9857CB82CA8CFFA1D8ABFF99D4A2FF9CD5A6FF9BD4A4FF92D0
          9BFF96D19EFF71B879FF397A40CB000000000000000000000000000000000000
          0000000000000A140B1A4E9858CB7CC887FF96D3A1FFA0D8AAFF9ED6A7FF90CE
          99FF70BA78FF3F8246CB0810091A000000000000000000000000000000000000
          00000000000000000000000000002A512E6B519F5BD85EB969FF5BB566FF4B96
          54D82449286B0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001340
          58FF15425EFF25699CFF2C76B4FF285E7EAD0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001242
          59FF5D9CD4FFA6CFF5FFA9CFECFF488BC1FF2C76B4FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000001E6D
          93FFCBE3F9FF61AAECFF4098E8FF1567C2FF1660AAFF2C76B4FF000000000000
          0000000000000000000000000000000000000000000000000000000000001E6D
          93FFC8E1F2FFD1E7FAFF347DB5FF3199C3FF6DC4DCFF4A9CCFFF3483C7FF0000
          000000000000000000000000000000000000000000000000000000000000040C
          13202689B9FFB0CBE1FF67A9C8FF60DCF5FF44D6F4FF8EEEFAFF5DB4E6FF3B8F
          D9FF000000000000000000000000000000000000000000000000000000000000
          0000000000002689B9FFBEE6F2FFB3F4FCFF60DCF5FF44D6F4FF8EEEFAFF5DB4
          E6FF3B8FD9FF0000000000000000000000000000000000000000000000000000
          000000000000000000002790BFFFC3EDF8FFB3F4FCFF60DCF5FF44D6F4FF8EEE
          FAFF5DB4E6FF3B8FD9FF00000000000000000000000000000000000000000000
          00000000000000000000000000002FBAE4FFC3EDF8FFB3F4FCFF60DCF5FF44D6
          F4FF8EEEFAFF5DB4E6FF3B8FD9FF000000000000000000000000000000000000
          0000000000000000000000000000000000002FBAE4FFC3EDF8FFB3F4FCFF60DC
          F5FF44D6F4FF8EEEFAFF5DB4E6FF3B8FD9FF0000000000000000000000000000
          000000000000000000000000000000000000000000002FBAE4FFC3EDF8FFB3F4
          FCFF68D9F5FF6FCFF3FF599DD0FF73ABDDFF4F91C9FF00000000000000000000
          00000000000000000000000000000000000000000000000000002FBAE4FFC3ED
          F8FFA8E2F8FF6CAEDDFFA5CFF4FFA5CFF4FFBDDBF7FF508EC5F7000000000000
          0000000000000000000000000000000000000000000000000000000000002FBA
          E4FFA7D4F4FFC5E1F8FFCCE3F9FFCCE3F9FFBDDBF7FF4E8FC7FD000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000050A8D9FF6AA5D8FFC9E1F7FFCBE3F8FF4295CAFF215984AE000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000002070809489CC9EA4F92C8FD4E90C8FF2989B8DF05101619000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object m_AType: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 496
    Top = 152
  end
  object src_AType: TDataSource
    DataSet = m_AType
    Left = 524
    Top = 152
  end
  object ds_street: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME, STR_TYPE from STREET')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 376
    Top = 112
  end
  object src_street: TDataSource
    DataSet = ds_street
    Left = 404
    Top = 112
  end
  object ds_ZTOPATH: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, SRVDOG, NAME'
      'from ZTOPATH')
    BeforePost = ds_ZTOPATHBeforePost
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 56
    Top = 344
  end
  object src_ZTOPATH: TDataSource
    DataSet = ds_ZTOPATH
    Left = 85
    Top = 344
  end
  object ds_SRVDOGHOUSE: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT sd.SRVDOG, '
      '       sd.HOUSE,h.nomer,s.name SNAME,'
      '       sd.ZTOPATH'
      'FROM SRVDOGHOUSE sd'
      'left outer join house h on h.code=sd.house'
      'left outer join street s on s.code=h.street'
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 328
    Top = 344
  end
  object src_SRVDOGHOUSE: TDataSource
    DataSet = ds_SRVDOGHOUSE
    Left = 328
    Top = 384
  end
  object m_ZTOHOUSE: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 584
    Top = 336
  end
  object src_ZTOHOUSE: TDataSource
    DataSet = m_ZTOHOUSE
    Left = 584
    Top = 376
  end
  object ds1: TpFIBDataSet
    SelectSQL.Strings = (
      'select s.house code,h.nomer, h.street'
      'from SRVDOGHOUSE s'
      'left outer join house h on h.code=s.house'
      'where s.srvdog=:sd')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 640
    Top = 360
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
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 472
    Top = 112
    DockControlHeights = (
      0
      0
      26
      0)
    object bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 864
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_addDog'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_EdidDog'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_addDog: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1075#1086#1074#1086#1088
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1075#1086#1074#1086#1088
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = btn_addDogClick
    end
    object btn_EdidDog: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1076#1086#1075#1086#1074#1086#1088
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1076#1086#1075#1086#1074#1086#1088
      Visible = ivAlways
      ImageIndex = 1
      PaintStyle = psCaptionGlyph
      OnClick = btn_EdidDogClick
    end
  end
  object cprint1: TdxComponentPrinter
    CurrentLink = GridReportLink1
    Version = 0
    Left = 192
    Top = 352
    object GridReportLink1: TdxGridReportLink
      Active = True
      Component = grd2
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 42081.544347233790000000
      BuiltInReportLink = True
    end
  end
  object src_SRVDOGTYPE: TDataSource
    DataSet = ds_SRVDOGTYPE
    Left = 328
    Top = 80
  end
  object ds_SRVDOGTYPE: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME'
      'from SRVDOGTYPE'
      'order by name')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 296
    Top = 80
  end
end
