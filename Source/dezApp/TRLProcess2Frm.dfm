object TRLProcess2Form: TTRLProcess2Form
  Left = 0
  Top = 0
  HelpContext = 112
  Caption = #1044#1077#1092#1077#1082#1090#1085#1099#1077' '#1074#1077#1076#1086#1084#1086#1089#1090#1080' ('#1051#1080#1092#1090')'
  ClientHeight = 652
  ClientWidth = 870
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
    Top = 31
    Width = 870
    Height = 621
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    ExplicitHeight = 769
    object grd1: TcxGrid
      Left = 2
      Top = 17
      Width = 250
      Height = 200
      TabOrder = 0
      LockedStateImageOptions.Effect = lsieLight
      LockedStateImageOptions.ShowText = True
      LockedStateImageOptions.Text = #1055#1086#1078#1072#1083#1091#1081#1089#1090#1072' '#1087#1086#1076#1086#1078#1076#1080#1090#1077'...'
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        DataController.DataSource = src_TRFACT
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsBehavior.PullFocusing = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          Options.Editing = False
          Width = 67
        end
        object clv1DATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = 'DATA'
          Visible = False
          Options.Editing = False
          Width = 72
        end
        object clv1STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv1SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Options.Editing = False
          Width = 156
        end
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Options.Editing = False
          Width = 35
        end
        object clv1MLIST: TcxGridDBColumn
          DataBinding.FieldName = 'MLIST'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv1MNAME: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'MNAME'
          Options.Editing = False
          Width = 148
        end
        object clv1KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv1KNAME: TcxGridDBColumn
          Caption = #1055#1086#1076#1088#1103#1076#1085#1072#1103' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'KNAME'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
          Width = 145
        end
        object clv1MANAGER: TcxGridDBColumn
          DataBinding.FieldName = 'MANAGER'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv1DPLACE: TcxGridDBColumn
          Caption = #1052#1077#1089#1090#1086' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#1088#1077#1084#1086#1085#1090#1072' ('#1085#1072' '#1089#1072#1081#1090')'
          DataBinding.FieldName = 'DPLACE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.LookupItemsSorted = True
          Properties.ValidateOnEnter = True
          Properties.OnEditValueChanged = clv1DPLACEPropertiesEditValueChanged
          Width = 130
        end
        object clv1NOTE: TcxGridDBColumn
          Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
          DataBinding.FieldName = 'NOTE'
          Width = 195
        end
        object clv1FIO: TcxGridDBColumn
          Caption = #1054#1090#1074'. '#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
          DataBinding.FieldName = 'FIO'
          Options.Editing = False
          Width = 154
        end
        object clv1NCALC: TcxGridDBColumn
          Caption = #8470' '#1082#1072#1083#1100#1082#1091#1083#1103#1094#1080#1080
          DataBinding.FieldName = 'NCALC'
          Visible = False
          Options.Editing = False
          Width = 72
        end
        object clv1NCALCDATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1082#1072#1083#1100#1082#1091#1083#1103#1094#1080#1080
          DataBinding.FieldName = 'NCALCDATE'
          Visible = False
          Options.Editing = False
          Width = 78
        end
        object clv1NSUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1087#1086' '#1082#1072#1083#1100#1082#1091#1083#1103#1094#1080#1080
          DataBinding.FieldName = 'NSUMMA'
          Visible = False
          Options.Editing = False
          Width = 82
        end
        object clv1NDOP: TcxGridDBColumn
          Caption = #8470' '#1076#1086#1087'. '#1089#1086#1075#1083#1072#1096#1077#1085#1080#1103
          DataBinding.FieldName = 'NDOP'
          Visible = False
          Options.Editing = False
          Width = 75
        end
        object clv1SUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1088#1072#1073#1086#1090' '#1092#1072#1082#1090
          DataBinding.FieldName = 'SUMMA'
          Visible = False
          Options.Editing = False
          Width = 84
        end
        object clv1PLANCODE: TcxGridDBColumn
          DataBinding.FieldName = 'PLANCODE'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv1STATE: TcxGridDBColumn
          DataBinding.FieldName = 'STATE'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv1DNum: TcxGridDBColumn
          Caption = #8470' '#1076#1077#1092'.'#1074#1077#1076#1086#1084#1086#1089#1090#1080
          DataBinding.FieldName = 'DNum'
          Options.Editing = False
          Width = 87
        end
        object clv1DDate: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1076#1077#1092'. '#1074#1077#1076#1086#1084#1086#1089#1090#1080
          DataBinding.FieldName = 'DDate'
          Options.Editing = False
          Width = 93
        end
        object clv1FIRM: TcxGridDBColumn
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'FIRM'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownSizeable = True
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = cmDb.src_FIRM
          Width = 190
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 10000
      Top = 10000
      Width = 816
      Height = 358
      TabOrder = 1
      Visible = False
      LockedStateImageOptions.Effect = lsieLight
      LockedStateImageOptions.ShowText = True
      LockedStateImageOptions.Text = #1055#1086#1078#1072#1083#1091#1081#1089#1090#1072' '#1087#1086#1076#1086#1078#1076#1080#1090#1077'...'
      object v2: TcxGridDBTableView
        OnKeyUp = v2KeyUp
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsBehavior.PullFocusing = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object clv2CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
        end
        object clv2DATA: TcxGridDBColumn
          DataBinding.FieldName = 'DATA'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Width = 199
        end
        object clv2HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 47
        end
        object clv2MLIST: TcxGridDBColumn
          DataBinding.FieldName = 'MLIST'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2MNAME: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'MNAME'
          Width = 227
        end
        object clv2KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2KNAME: TcxGridDBColumn
          Caption = #1055#1086#1076#1088#1103#1076#1085#1072#1103' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'KNAME'
          Visible = False
          VisibleForCustomization = False
          Width = 157
        end
        object clv2MANAGER: TcxGridDBColumn
          DataBinding.FieldName = 'MANAGER'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2FIO: TcxGridDBColumn
          Caption = #1054#1090#1074'. '#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
          DataBinding.FieldName = 'FIO'
          Width = 174
        end
        object clv2NCALC: TcxGridDBColumn
          Caption = #8470' '#1089#1084#1077#1090#1099
          DataBinding.FieldName = 'NCALC'
          Visible = False
          Width = 77
        end
        object clv2NCALCDATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1089#1084#1077#1090#1099
          DataBinding.FieldName = 'NCALCDATE'
          Visible = False
          Width = 78
        end
        object clv2NSUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1087#1086' '#1089#1084#1077#1090#1077
          DataBinding.FieldName = 'NSUMMA'
          Visible = False
          Width = 75
        end
        object clv2NDOP: TcxGridDBColumn
          Caption = #8470' '#1076#1086#1087'. '#1089#1086#1075#1083#1072#1096#1077#1085#1080#1103
          DataBinding.FieldName = 'NDOP'
          Visible = False
          Width = 72
        end
        object clv2SUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1088#1072#1073#1086#1090' '#1087#1086' '#1089#1084#1077#1090#1077
          DataBinding.FieldName = 'SUMMA'
          Visible = False
          Width = 107
        end
        object clv2NOTE: TcxGridDBColumn
          DataBinding.FieldName = 'NOTE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2PLANCODE: TcxGridDBColumn
          DataBinding.FieldName = 'PLANCODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2STATE: TcxGridDBColumn
          DataBinding.FieldName = 'STATE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2genlist: TcxGridDBColumn
          DataBinding.FieldName = 'genlist'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object grd3: TcxGrid
      Left = 25
      Top = 379
      Width = 758
      Height = 290
      TabOrder = 16
      LockedStateImageOptions.Effect = lsieLight
      LockedStateImageOptions.ShowText = True
      LockedStateImageOptions.Text = #1055#1086#1078#1072#1083#1091#1081#1089#1090#1072' '#1087#1086#1076#1086#1078#1076#1080#1090#1077'...'
      object v3: TcxGridDBTableView
        OnKeyUp = v3KeyUp
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_Smeta
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsBehavior.PullFocusing = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object clv3CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
        end
        object clv3DATA: TcxGridDBColumn
          DataBinding.FieldName = 'DATA'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Width = 228
        end
        object clv3HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 36
        end
        object clv3MLIST: TcxGridDBColumn
          DataBinding.FieldName = 'MLIST'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3MNAME: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'MNAME'
          Width = 175
        end
        object clv3KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3KNAME: TcxGridDBColumn
          Caption = #1055#1086#1076#1088#1103#1076#1085#1072#1103' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'KNAME'
          Visible = False
          VisibleForCustomization = False
          Width = 204
        end
        object clv3MANAGER: TcxGridDBColumn
          DataBinding.FieldName = 'MANAGER'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3FIO: TcxGridDBColumn
          Caption = #1054#1090#1074'. '#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
          DataBinding.FieldName = 'FIO'
          Width = 186
        end
        object clv3NCALC: TcxGridDBColumn
          Caption = #8470' '#1089#1084#1077#1090#1099
          DataBinding.FieldName = 'NCALC'
          Width = 81
        end
        object clv3NCALCDATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1089#1084#1077#1090#1099
          DataBinding.FieldName = 'NCALCDATE'
          Width = 88
        end
        object clv3NSUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1087#1086' '#1089#1084#1077#1090#1077
          DataBinding.FieldName = 'NSUMMA'
          Width = 78
        end
        object clv3NDOP: TcxGridDBColumn
          Caption = #8470' '#1076#1086#1087'. '#1089#1086#1075#1083#1072#1096#1077#1085#1080#1103
          DataBinding.FieldName = 'NDOP'
          Visible = False
          Width = 96
        end
        object clv3SUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1088#1072#1073#1086#1090' '#1092#1072#1082#1090
          DataBinding.FieldName = 'SUMMA'
          Visible = False
          Width = 119
        end
        object clv3NOTE: TcxGridDBColumn
          DataBinding.FieldName = 'NOTE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3PLANCODE: TcxGridDBColumn
          DataBinding.FieldName = 'PLANCODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3STATE: TcxGridDBColumn
          DataBinding.FieldName = 'STATE'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l3: TcxGridLevel
        GridView = v3
      end
    end
    object grd4: TcxGrid
      Left = 10000
      Top = 10000
      Width = 536
      Height = 410
      TabOrder = 15
      Visible = False
      object v4: TcxGridDBTableView
        OnKeyUp = v4KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v4CellClick
        DataController.DataSource = src_TRDEFECTVED
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv4CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
        end
        object clv4TRFACT: TcxGridDBColumn
          DataBinding.FieldName = 'TRLFACT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv4SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Options.Editing = False
          Width = 158
        end
        object clv4NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Options.Editing = False
          Width = 33
        end
        object clv4MNAME: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'MNAME'
          Options.Editing = False
          Width = 111
        end
        object clv4WNOTE: TcxGridDBColumn
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'WNOTE'
          Options.Editing = False
          Width = 143
        end
        object clv4ED: TcxGridDBColumn
          Caption = #1045#1076'. '#1080#1079#1084
          DataBinding.FieldName = 'ED'
          Options.Editing = False
          Width = 47
        end
        object clv4QUANTITY: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086
          DataBinding.FieldName = 'QUANTITY'
        end
        object clv4NOTE: TcxGridDBColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          DataBinding.FieldName = 'NOTE'
          Width = 159
        end
      end
      object l4: TcxGridLevel
        GridView = v4
      end
    end
    object m_WNote: TcxMemo
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 2
      Visible = False
      Height = 26
      Width = 247
    end
    object txt1: TcxTextEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 3
      Visible = False
      Width = 75
    end
    object ced_Quant: TcxCalcEdit
      Left = 10000
      Top = 10000
      EditValue = 0.000000000000000000
      Style.HotTrack = False
      TabOrder = 4
      Visible = False
      Width = 75
    end
    object m_Note: TcxMemo
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 5
      Visible = False
      Height = 27
      Width = 247
    end
    object btn_add: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 6
      Visible = False
      OnClick = btn_addClick
    end
    object btn_edit: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      TabOrder = 7
      Visible = False
      OnClick = btn_editClick
    end
    object btn_del: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 8
      Visible = False
      OnClick = btn_delClick
    end
    object btn_print: TcxButton
      Left = 10000
      Top = 10000
      Width = 247
      Height = 25
      Margins.Left = 10
      Caption = #1055#1077#1095#1072#1090#1100
      TabOrder = 9
      Visible = False
      OnClick = btn_printClick
    end
    object cbb_shab: TcxLookupComboBox
      Left = 10000
      Top = 10000
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
      Properties.ListSource = src_WSHEAD
      Style.HotTrack = False
      TabOrder = 11
      Visible = False
      Width = 222
    end
    object btn_spr: TcxButton
      Left = 10000
      Top = 10000
      Width = 24
      Height = 25
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000010101020101010401010106010101090101010B0101010C0101010C0101
        010B010101090101010701010104010101020000000000000000000000010101
        0108010101110101011B010101240101012C010101340103023E0103023E0101
        01350101012E010101250101011C010101130101010900000001000000000000
        000000000000000000010107041105442183098C43D90BB256FE0BB256FE098C
        43D9054421830107041101010102000000000000000000000000000000000000
        00000000000002170B2E0A9247E125DC81FF3EEDA2FF4AF3B1FF4AF4B2FF3FED
        A4FF26DC83FF0A9347E102170B2E000000000000000000000000000000000000
        0000010D06170F9C52E543EEA8FF54FABFFF4CECABFFADEBCEFFADE8CCFF4CE5
        A8FF54FABFFF45F0ABFF119D54E5010D06170000000000000000000000000000
        0000075E2E973EEAA2FF4BF5B3FF4BF5B3FF4AE7A3FFFFFFFFFFFFFFFFFF49E0
        A0FF4BF5B3FF4BF5B3FF40ECA5FF085E2F970000000000000000000000000104
        02071BB568F152F2AFFF4CEDA4FF4AE9A1FF48DE97FFFFFFFFFFFFFFFFFF47D1
        90FF42D997FF3ED895FF41F1A8FF1EB76CF1010402070000000000000000021E
        0E2E3ACE84FF6AF2B5FFAFF4D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFA6DCC1FF46EEA3FF3CD187FF021E0E2E00000000000000000224
        113540C981FF73F0B5FFB1F4D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFADDCC3FF6FEFB3FF40CB83FF022411350000000000000000010E
        071427B366FD7CEBB3FF6BEAA8FF6CE7A7FF64DD9DFFFFFFFFFFFFFFFFFF63CF
        96FF6BD89FFF69D79FFF7BECB4FF27B466FD010E071400000000000000000000
        0000098440C16EC897FF87ECB7FF88EFB9FF74E3A7FFFFFFFFFFFFFFFFFF73DC
        A4FF87EFB9FF86ECB8FF6CC997FF098440C10000000000000000000000000000
        00000331183F29A962FD8DCDAAFF93DFB5FF7BDFA8FFB7E9CDFFB7E6CCFF7BD8
        A5FF93DFB6FF8CCDA9FF26A85FFD0331183F0000000000000000000000000000
        00000000000006582A7236AB6AFE95CAADFFA0CFB5FFA0CFB5FFA0CFB5FFA0CF
        B5FF95C9ADFF34A969FE06582A72000000000000000000000000000000000000
        0000000000000000000005401F4D159950DA4CB27AFF6AB189FF6CB28BFF4FB4
        7DFF159A50DA05401F4D00000000000000000000000000000000000000000000
        000000000000000000000000000000010101042D16340652286006522860042D
        1634000101010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 12
      Visible = False
      OnClick = btn_sprClick
    end
    object btn_clear: TcxButton
      Left = 10000
      Top = 10000
      Width = 112
      Height = 25
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1085#1091#1083#1077#1074#1099#1077
      TabOrder = 14
      Visible = False
      OnClick = btn_clearClick
    end
    object btn_fill: TcxButton
      Left = 10000
      Top = 10000
      Width = 112
      Height = 25
      Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100
      TabOrder = 13
      Visible = False
      OnClick = btn_fillClick
    end
    object cbb_filter: TcxComboBox
      Left = 10000
      Top = 10000
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        #1074#1089#1077
        #1101#1083#1077#1082#1090#1088#1080#1082#1072
        #1086#1073#1097#1077#1089#1090#1088#1086#1081
        #1083#1080#1092#1090)
      Properties.OnEditValueChanged = cbb_filterPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 10
      Text = #1074#1089#1077
      Visible = False
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
    object grlc1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 300
      SizeOptions.Width = 306
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1055#1086#1086#1073#1098#1077#1082#1090#1085#1099#1081' '#1078#1091#1088#1085#1072#1083
      CaptionOptions.Layout = clTop
      Parent = grlc1Group1
      Control = grd1
      ControlOptions.ShowBorder = False
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
    object grlc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'F3 '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077' '#1079#1072#1087#1080#1089#1080
      LayoutLookAndFeel = lcl1
      Parent = grp1
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldTabbed
      Index = 2
    end
    object group3: TdxLayoutGroup
      CaptionOptions.Text = #1055#1088#1077#1076#1088#1077#1084#1086#1085#1090#1085#1072#1103' '#1074#1089#1090#1088#1077#1095#1072
      Parent = grlc1Group2
      ButtonOptions.Buttons = <>
      OnCaptionClick = group3CaptionClick
      Index = 0
    end
    object itm_grd2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = group3
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grlc1Group3: TdxLayoutGroup
      CaptionOptions.Text = #1044#1077#1092#1077#1082#1090#1085#1072#1103' '#1074#1077#1076#1086#1084#1086#1089#1090#1100
      Parent = grlc1Group2
      ButtonOptions.Buttons = <>
      OnCaptionClick = grlc1Group3CaptionClick
      Index = 1
    end
    object grlc1Group7: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grlc1Group3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grlc1Group9: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grlc1Group7
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object grlc1Group5: TdxLayoutGroup
      CaptionOptions.Text = #1054#1087#1080#1089#1072#1085#1080#1077' '#1088#1072#1073#1086#1090'                        '
      Parent = grlc1Group9
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 191
      SizeOptions.Width = 248
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      OnCaptionClick = grlc1Group5CaptionClick
      OnExpanded = grlc1Group5Expanded
      Index = 0
    end
    object itm_WNote: TdxLayoutItem
      CaptionOptions.Text = #1054#1087#1080#1089#1072#1085#1080#1077' '#1088#1072#1073#1086#1090' '#1080' '#1092#1086#1088#1084#1072' '#1087#1086#1076#1089#1095#1077#1090#1072' '#1086#1073#1098#1077#1084#1086#1074
      CaptionOptions.Layout = clTop
      Parent = grlc1Group5
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 41
      Control = m_WNote
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_txt: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1045#1076'. '#1080#1079#1084#1077#1088#1077#1085#1080#1103
      Parent = grlc1Group5
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 150
      Control = txt1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_Quant: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1050#1086#1083'-'#1074#1086
      Parent = grlc1Group5
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 150
      Control = ced_Quant
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_Note: TdxLayoutItem
      CaptionOptions.Text = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      CaptionOptions.Layout = clTop
      Parent = grlc1Group5
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 42
      Control = m_Note
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object grlc1Group6: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grlc1Group5
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object itm_add: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group6
      Control = btn_add
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_edit: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Offsets.Left = 10
      Parent = grlc1Group6
      Control = btn_edit
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_del: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Offsets.Left = 10
      Parent = grlc1Group6
      Control = btn_del
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_print: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group5
      Control = btn_print
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object grlc1Group8: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1044#1086#1073#1072#1074#1080#1090#1100' '#1080#1079' '#1096#1072#1073#1083#1086#1085#1072'                  '
      Parent = grlc1Group9
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 232
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Expanded = False
      OnCaptionClick = grlc1Group8CaptionClick
      OnExpanded = grlc1Group8Expanded
      Index = 1
    end
    object itmlc1Item1: TdxLayoutItem
      CaptionOptions.Text = #1060#1080#1083#1100#1090#1088
      Parent = grlc1Group8
      Control = cbb_filter
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grlc1Group11: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grlc1Group8
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object itm_shab: TdxLayoutItem
      AlignHorz = ahClient
      CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1096#1072#1073#1083#1086#1085#1072
      CaptionOptions.Layout = clTop
      Parent = grlc1Group11
      Control = cbb_shab
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_spr: TdxLayoutItem
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grlc1Group11
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 24
      Control = btn_spr
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grlc1Group10: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grlc1Group8
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object itm_fill: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group10
      SizeOptions.Width = 112
      Control = btn_fill
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_clear: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grlc1Group10
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 112
      Control = btn_clear
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_grd4: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grlc1Group7
      Control = grd4
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grlc1Group4: TdxLayoutGroup
      CaptionOptions.Text = #1057#1084#1077#1090#1072
      Parent = grlc1Group2
      ButtonOptions.Buttons = <>
      OnCaptionClick = grlc1Group4CaptionClick
      Index = 2
    end
    object itm_grd3: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grlc1Group4
      Control = grd3
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 656
    Top = 96
    object lcl1: TdxLayoutCxLookAndFeel
      GroupOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      GroupOptions.CaptionOptions.Font.Color = clWindowText
      GroupOptions.CaptionOptions.Font.Height = -11
      GroupOptions.CaptionOptions.Font.Name = 'Tahoma'
      GroupOptions.CaptionOptions.Font.Style = [fsBold, fsItalic]
      GroupOptions.CaptionOptions.UseDefaultFont = False
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
        Component = cbb_filter
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = cbb_Firm
        Properties.Strings = (
          'EditValue')
      end>
    StorageName = 'prop1'
    Left = 636
    Top = 96
  end
  object ds_TRFACT: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  TF.CODE, TF.DATA, S.CODE STREET, S.NAME SNAME, TF.HOUSE,'
      '  H.NOMER, TF.MLIST, M.NAME MNAME, TF.KONTRAGENT,'
      
        '  K.NAME KNAME, TF.MANAGER,(P.F || '#39' '#39' || P.I || '#39' '#39' || P.O) FIO' +
        ','
      '  TF.NCALC, TF.NCALCDATE, TF.NSUMMA, TF.NDOP, TF.SUMMA, TF.NOTE,'
      '  TF.PLANCODE,TF.STATE, TF.DPLACE, TF.DNum, TF.DDate, TF.FIRM'
      'from TRLFACT TF'
      ' left outer join HOUSE H on H.CODE = TF.HOUSE'
      ' left outer join STREET S on S.CODE = H.STREET'
      ' left outer join MLIST M on M.CODE = TF.MLIST'
      ' left outer join KONTRAGENT K on K.CODE = TF.KONTRAGENT'
      ' left outer join WORKER W on W.CODE = TF.MANAGER'
      ' left outer join PIPLE P on P.CODE = W.PIPLE')
    Filter = 'STATE=1'
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Filtered = True
    Container = FibContainer1
    Left = 40
    Top = 112
  end
  object src_TRFACT: TDataSource
    DataSet = ds_TRFACT
    OnDataChange = src_TRFACTDataChange
    Left = 69
    Top = 112
  end
  object ds1: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE TRFACT'
      'SET '
      '    DATA = :DATA,'
      '    HOUSE = :HOUSE,'
      '    MLIST = :MLIST,'
      '    KONTRAGENT = :KONTRAGENT,'
      '    MANAGER = :MANAGER,'
      '    NCALC = :NCALC,'
      '    NCALCDATE = :NCALCDATE,'
      '    NSUMMA = :NSUMMA,'
      '    NDOP = :NDOP,'
      '    SUMMA = :SUMMA,'
      '    NOTE = :NOTE,'
      '    PLANCODE = :PLANCODE,'
      '    STATE = :STATE'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    TRFACT'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO TRFACT('
      '    CODE,'
      '    DATA,'
      '    HOUSE,'
      '    MLIST,'
      '    KONTRAGENT,'
      '    MANAGER,'
      '    NCALC,'
      '    NCALCDATE,'
      '    NSUMMA,'
      '    NDOP,'
      '    SUMMA,'
      '    NOTE,'
      '    PLANCODE,'
      '    STATE'
      ')'
      'VALUES('
      '    :CODE,'
      '    :DATA,'
      '    :HOUSE,'
      '    :MLIST,'
      '    :KONTRAGENT,'
      '    :MANAGER,'
      '    :NCALC,'
      '    :NCALCDATE,'
      '    :NSUMMA,'
      '    :NDOP,'
      '    :SUMMA,'
      '    :NOTE,'
      '    :PLANCODE,'
      '    :STATE'
      ')')
    RefreshSQL.Strings = (
      'select'
      '  TF.CODE, TF.DATA, S.CODE STREET, S.NAME SNAME, TF.HOUSE,'
      '  H.NOMER, TF.MLIST, M.NAME MNAME, TF.KONTRAGENT,'
      
        '  K.NAME KNAME, TF.MANAGER,(P.F || '#39' '#39' || P.I || '#39' '#39' || P.O) FIO' +
        ','
      '  TF.NCALC, TF.NCALCDATE, TF.NSUMMA, TF.NDOP, TF.SUMMA, TF.NOTE,'
      '  TF.PLANCODE,TF.STATE'
      'from TRFACT TF'
      ' left outer join HOUSE H on H.CODE = TF.HOUSE'
      ' left outer join STREET S on S.CODE = H.STREET'
      ' left outer join MLIST M on M.CODE = TF.MLIST'
      ' left outer join KONTRAGENT K on K.CODE = TF.KONTRAGENT'
      ' left outer join WORKER W on W.CODE = TF.MANAGER'
      ' left outer join PIPLE P on P.CODE = W.PIPLE'
      ''
      ' WHERE '
      '        TF.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'select'
      '  TF.CODE, TF.DATA, S.CODE STREET, S.NAME SNAME, TF.HOUSE,'
      '  H.NOMER, TF.MLIST, M.NAME MNAME, TF.KONTRAGENT,'
      
        '  K.NAME KNAME, TF.MANAGER,(P.F || '#39' '#39' || P.I || '#39' '#39' || P.O) FIO' +
        ','
      '  TF.NCALC, TF.NCALCDATE, TF.NSUMMA, TF.NDOP, TF.SUMMA, TF.NOTE,'
      
        '  TF.PLANCODE,TF.STATE,W.genlist, TF.DPLACE, TF.DNum, TF.DDate, ' +
        'TF.FIRM '
      'from TRLFACT TF'
      ' left outer join HOUSE H on H.CODE = TF.HOUSE'
      ' left outer join STREET S on S.CODE = H.STREET'
      ' left outer join MLIST M on M.CODE = TF.MLIST'
      ' left outer join KONTRAGENT K on K.CODE = TF.KONTRAGENT'
      ' left outer join WORKER W on W.CODE = TF.MANAGER'
      ' left outer join PIPLE P on P.CODE = W.PIPLE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Filtered = True
    Container = FibContainer1
    Left = 384
    Top = 128
  end
  object src1: TDataSource
    DataSet = ds1
    Left = 413
    Top = 128
  end
  object ds_TRDEFECTVED: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT df.CODE, '
      '       df.TRLFACT,'
      '       tf.house,S.NAME SNAME,H.NOMER,M.NAME MNAME,'
      '       tf.mlist,'
      '       df.WNOTE, '
      '       df.ED, '
      '       df.QUANTITY, '
      '       df.NOTE'
      'FROM TRLDEFECTVED df'
      'left outer join trlfact tf on tf.code=df.trLfact'
      ' left outer join HOUSE H on H.CODE = TF.HOUSE'
      ' left outer join STREET S on S.CODE = H.STREET'
      ' left outer join MLIST M on M.CODE = TF.MLIST')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 328
    Top = 408
  end
  object src_TRDEFECTVED: TDataSource
    DataSet = ds_TRDEFECTVED
    Left = 357
    Top = 408
  end
  object fr1: TfrxReport
    Version = '4.15.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    OldStyleProgress = True
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40813.633144513900000000
    ReportOptions.LastChange = 41221.790628553240000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 442
    Top = 128
    Datasets = <
      item
        DataSet = fr1.Q1
        DataSetName = 'Q1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object fdb: TfrxFIBDatabase
        DatabaseName = '192.168.1.6:/home/share/base/DEZ.FDB'
        LoginPrompt = False
        Params.Strings = (
          'user_name=sysdba'
          'password=masterkey'
          'sql_role_name=')
        SQLDialect = 3
        pLeft = 20
        pTop = 28
      end
      object Q1: TfrxFIBQuery
        UserName = 'Q1'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'cod'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'SELECT df.CODE, '
          '       df.TRLFACT,'
          '       tf.house,S.NAME SNAME,H.NOMER,M.NAME MNAME,'
          '       tf.mlist,'
          '       df.WNOTE, '
          '       df.ED, '
          '       df.QUANTITY, '
          '       df.NOTE'
          'FROM TRLDEFECTVED df'
          'left outer join trlfact tf on tf.code=df.trlfact'
          ' left outer join HOUSE H on H.CODE = TF.HOUSE'
          ' left outer join STREET S on S.CODE = H.STREET'
          ' left outer join MLIST M on M.CODE = TF.MLIST'
          'where tf.code=:cod             ')
        Database = fr1.fdb
        pLeft = 20
        pTop = 76
        Parameters = <
          item
            Name = 'cod'
            DataType = ftUnknown
          end>
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 211.653680000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Rich1: TfrxRichView
          Align = baWidth
          Top = 3.779530000000001000
          Width = 718.110700000000000000
          Height = 204.094620000000000000
          ShowHint = False
          StretchMode = smActualHeight
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C666E696C5C6663686172736574323034205461686F6D613B7D7B5C66315C
            666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C2A5C6765
            6E657261746F7220526963686564323020362E332E393630307D5C766965776B
            696E64345C756331200D0A5C706172645C71725C66305C667331365C7061720D
            0A5C7061720D0A0D0A5C706172645C2763655C2763655C27636520225C276334
            5C2763355C276337205C2763615C2765305C2765625C2765385C2765645C2765
            385C2765645C2766315C2765615C2765655C2765335C276565205C2766305C27
            65305C2765395C2765655C2765645C276530225C7061720D0A5C625C66315C66
            7332305C6C616E67313033335C7061720D0A0D0A5C706172645C71635C66305C
            667332345C6C616E67313034395C2763345C2765355C2766345C2765355C2765
            615C2766325C2765645C2765305C276666205C2765325C2765355C2765345C27
            65655C2765635C2765655C2766315C2766325C2766635C66315C6C616E673130
            33332020205C66305C6C616E67313034395C2762395C66315C6C616E67313033
            33205B7661724E6F6D5D205C66305C6C616E67313034395C2765655C27663220
            5C66315C6C616E6731303333205B766172446174655D5C66305C6C616E673130
            34395C7061720D0A0D0A5C706172645C62305C667331365C7061720D0A5C7061
            720D0A5C2765615C2765655C2765635C2765385C2766315C2766315C2765385C
            276666205C276532205C2766315C2765655C2766315C2766325C2765305C2765
            325C2765353A5C625C66315C6C616E67313033332020205B7661724973705D20
            5C66305C6C616E67313034395C7061720D0A5C62305C7061720D0A5C2765665C
            2766305C2765655C2765385C2765375C2765325C2765355C2765625C27653020
            5C2765655C2766315C2765635C2765655C2766325C276630205C2765655C2765
            315C2766615C2765355C2765615C2766325C2765303A5C625C66315C6C616E67
            3130333320205B766172416464725D20205C62305C66305C6C616E6731303439
            5C7061720D0A5C7061720D0A5C7061720D0A5C2763665C2766305C2765385C27
            66375C2765385C2765645C276662205C2766305C2765355C2765635C2765655C
            2765645C2766325C2765303A5C625C66315C6C616E673130333320205B766172
            50726963685D5C66305C6C616E67313034395C7061720D0A5C62305C7061720D
            0A5C7061720D0A7D0D0A00}
        end
      end
      object Header1: TfrxHeader
        Height = 34.015748031496100000
        Top = 291.023810000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          Align = baLeft
          Width = 30.236220470000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470' '#1087'/'#1087)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Align = baLeft
          Left = 30.236220470000000000
          Width = 309.921460000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = 14211288
          DataSet = fr1.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1087#1080#1089#1072#1085#1080#1077' '#1088#1072#1073#1086#1090' '#1080' '#1092#1086#1088#1084#1091#1083#1072' '#1087#1086#1076#1089#1095#1077#1090#1072' '#1086#1073#1098#1077#1084#1086#1074)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          Left = 340.157680470000000000
          Width = 37.795300000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = 14211288
          DataSet = fr1.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1045#1076'. '#1080#1079#1084'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Align = baLeft
          Left = 377.952980470000000000
          Width = 86.929190000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = 14211288
          DataSet = fr1.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Align = baWidth
          Left = 464.882170470000000000
          Width = 253.228529529999900000
          Height = 34.015748030000000000
          ShowHint = False
          Color = 14211288
          DataSet = fr1.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 347.716760000000000000
        Width = 718.110700000000000000
        DataSet = fr1.Q1
        DataSetName = 'Q1'
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          Align = baLeft
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baLeft
          Left = 30.236240000000000000
          Width = 309.921460000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'WNOTE'
          DataSet = fr1.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q1."WNOTE"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          Left = 340.157700000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'ED'
          DataSet = fr1.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q1."ED"]')
          ParentFont = False
        end
        object Q1QUANTITY: TfrxMemoView
          Align = baLeft
          Left = 377.953000000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'QUANTITY'
          DataSet = fr1.Q1
          DataSetName = 'Q1'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q1."QUANTITY"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baWidth
          Left = 464.882190000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NOTE'
          DataSet = fr1.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q1."NOTE"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 75.590600000000000000
        Top = 427.086890000000000000
        Width = 718.110700000000000000
        object Rich2: TfrxRichView
          Align = baClient
          Width = 718.110700000000000000
          Height = 75.590600000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C666E696C5C6663686172736574323034205461686F6D613B7D7B5C66315C
            666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C2A5C6765
            6E657261746F7220526963686564323020362E332E393630307D5C766965776B
            696E64345C756331200D0A5C706172645C66305C667331365C2763385C276631
            5C2765665C2765655C2765625C2765645C2765385C2766325C2765355C276562
            5C2766633A5C625C66315C6C616E67313033332020205B7661724973705D205C
            62305C66305C6C616E67313034395C7061720D0A5C7061720D0A5C2763665C27
            66305C2765655C2765325C2765355C2766305C2765385C2765623A205C276538
            5C2765645C2765365C2765355C2765645C2765355C2766302D5C2765615C2766
            335C2766305C2765305C2766325C2765655C276630205C2763655C2763655C27
            636520225C2763345C2763355C276337205C2763615C2765305C2765625C2765
            385C2765645C2765385C2765645C2766315C2765615C2765655C2765335C2765
            65205C2766305C2765305C2765395C2765655C2765645C276530223A5C706172
            0D0A7D0D0A00}
        end
      end
    end
  end
  object ds_WSHEAD: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME, WTYPE'
      'from WSHEAD')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Container = FibContainer1
    Left = 328
    Top = 592
  end
  object src_WSHEAD: TDataSource
    DataSet = ds_WSHEAD
    Left = 356
    Top = 592
  end
  object ppm1: TcxGridPopupMenu
    Grid = grd1
    PopupMenus = <>
    AlwaysFireOnPopup = True
    Left = 208
    Top = 160
  end
  object ppm2: TcxGridPopupMenu
    PopupMenus = <>
    AlwaysFireOnPopup = True
    Left = 120
    Top = 440
  end
  object FibContainer1: TDataSetsContainer
    OnDataSetEvent = FibContainer1DataSetEvent
    Left = 416
    Top = 192
  end
  object barM: TdxBarManager
    AllowReset = False
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
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    SunkenBorder = True
    UseSystemFont = True
    Left = 344
    Top = 208
    DockControlHeights = (
      0
      0
      31
      0)
    object brbar1: TdxBar
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
      FloatLeft = 938
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          UserDefine = [udWidth]
          UserWidth = 229
          Visible = True
          ItemName = 'cbb_Firm'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Refresh'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_Refresh: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Visible = ivAlways
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
      OnClick = btn_RefreshClick
    end
    object cbb_Firm: TcxBarEditItem
      Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      Category = 0
      Hint = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = cmDb.src_FIRM
      Properties.OnEditValueChanged = cbb_FirmPropertiesEditValueChanged
    end
  end
  object ds_Smeta: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  TF.CODE, TF.DATA, S.CODE STREET, S.NAME SNAME, TF.HOUSE,'
      '  H.NOMER, TF.MLIST, M.NAME MNAME, TF.KONTRAGENT,'
      
        '  K.NAME KNAME, TF.MANAGER,(P.F || '#39' '#39' || P.I || '#39' '#39' || P.O) FIO' +
        ','
      '  TF.NCALC, TF.NCALCDATE, TF.NSUMMA, TF.NDOP, TF.SUMMA, TF.NOTE,'
      
        '  TF.PLANCODE,TF.STATE,W.genlist, TF.DPLACE, TF.DNum, TF.DDate, ' +
        'TF.FIRM'
      'from TRLFACT TF'
      ' left outer join HOUSE H on H.CODE = TF.HOUSE'
      ' left outer join STREET S on S.CODE = H.STREET'
      ' left outer join MLIST M on M.CODE = TF.MLIST'
      ' left outer join KONTRAGENT K on K.CODE = TF.KONTRAGENT'
      ' left outer join WORKER W on W.CODE = TF.MANAGER'
      ' left outer join PIPLE P on P.CODE = W.PIPLE'
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 600
    Top = 512
  end
  object src_Smeta: TDataSource
    DataSet = ds_Smeta
    Left = 568
    Top = 512
  end
end
