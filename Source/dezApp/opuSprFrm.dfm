object opuSprForm: TopuSprForm
  Left = 0
  Top = 0
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080' '#1054#1055#1059
  ClientHeight = 629
  ClientWidth = 992
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
    Width = 992
    Height = 629
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    object grd1: TcxGrid
      Left = 10000
      Top = 10000
      Width = 830
      Height = 563
      TabOrder = 0
      Visible = False
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = cmDb.iml1
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Hint = #1044#1086#1073#1072#1074#1080#1090#1100' <INSERT>'
        Navigator.Buttons.Append.ImageIndex = 0
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Delete.Hint = #1059#1076#1072#1083#1080#1090#1100' <DELETE>'
        Navigator.Buttons.Delete.ImageIndex = 2
        Navigator.Buttons.Edit.Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        Navigator.Buttons.Edit.ImageIndex = 1
        Navigator.Buttons.Post.Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        Navigator.Buttons.Post.ImageIndex = 10
        Navigator.Buttons.Cancel.Hint = #1054#1090#1084#1077#1085#1080#1090#1100' <ESC>'
        Navigator.Buttons.Cancel.ImageIndex = 12
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.DisplayMask = '[RecordIndex] '#1080#1079'  [RecordCount]'
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = src_OPUKONTR
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv1CODE
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.NavigatorHints = True
        OptionsData.Appending = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 16
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Options.Editing = False
          Options.Focusing = False
          Styles.Content = cmDb.stl_ReadOnly
          Width = 48
        end
        object clv1NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'NAME'
          Width = 207
        end
        object clv1INN: TcxGridDBColumn
          Caption = #1048#1053#1053
          DataBinding.FieldName = 'INN'
          Width = 154
        end
        object clv1KPP: TcxGridDBColumn
          Caption = #1050#1055#1055
          DataBinding.FieldName = 'KPP'
          Width = 124
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 10000
      Top = 10000
      Width = 250
      Height = 200
      Images = cmDb.iml1
      TabOrder = 7
      Visible = False
      object v2: TcxGridDBTableView
        OnKeyUp = v2KeyUp
        Navigator.Buttons.ConfirmDelete = True
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = cmDb.iml1
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Hint = #1044#1086#1073#1072#1074#1080#1090#1100' <INSERT>'
        Navigator.Buttons.Append.ImageIndex = 0
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Delete.Hint = #1059#1076#1072#1083#1080#1090#1100' <DELETE>'
        Navigator.Buttons.Delete.ImageIndex = 2
        Navigator.Buttons.Edit.Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        Navigator.Buttons.Edit.ImageIndex = 1
        Navigator.Buttons.Post.Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        Navigator.Buttons.Post.ImageIndex = 10
        Navigator.Buttons.Cancel.Hint = #1054#1090#1084#1077#1085#1080#1090#1100' <ESC>'
        Navigator.Buttons.Cancel.ImageIndex = 12
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.DisplayMask = '[RecordIndex] '#1080#1079'  [RecordCount]'
        Navigator.InfoPanel.Visible = True
        OnCellClick = v2CellClick
        DataController.DataSource = src_OPUHOUSE
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Images = cmDb.iml1
        OptionsBehavior.CellHints = True
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.NavigatorHints = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 16
        object clv2CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Options.Editing = False
          Styles.Content = cmDb.stl_ReadOnly
          Width = 47
        end
        object clv2NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1073#1083#1086#1082#1072
          DataBinding.FieldName = 'NAME'
          Width = 186
        end
        object clv2SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Visible = False
          Width = 157
        end
        object clv2HOUSE: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Visible = False
          Width = 43
        end
        object clv2IP: TcxGridDBColumn
          Caption = 'IP '#1072#1076#1088#1077#1089' '#1084#1086#1076#1077#1084#1072
          DataBinding.FieldName = 'IP'
          Width = 89
        end
        object clv2ISIP: TcxGridDBColumn
          Caption = #1055#1088#1080#1079#1085#1072#1082' '#1090#1086#1075#1086', '#1095#1090#1086' '#1084#1086#1076#1077#1084' '#1088#1072#1073#1086#1090#1072#1077#1090
          DataBinding.FieldName = 'ISIP'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Options.ShowCaption = False
          Width = 26
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object txt_Name: TcxTextEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 51
      Visible = False
      Width = 121
    end
    object cbb_Street: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = cmDb.src_STREET
      Properties.OnEditValueChanged = cbb_StreetPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 2
      Visible = False
      Width = 145
    end
    object cbb_house: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NOMER'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = cmDb.src_HOUSE
      Style.HotTrack = False
      TabOrder = 3
      Visible = False
      Width = 145
    end
    object txt_IPaddr: TcxTextEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 4
      Visible = False
      Width = 121
    end
    object chk_IP: TcxCheckBox
      Left = 10000
      Top = 10000
      Caption = #1052#1086#1076#1077#1084' '#1088#1072#1073#1086#1090#1072#1077#1090
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      State = cbsGrayed
      Style.HotTrack = False
      TabOrder = 5
      Visible = False
      Width = 121
    end
    object docm1: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 100
      Height = 26
      Align = dalTop
      BarManager = bm1
      Visible = False
    end
    object grd3: TcxGrid
      Left = 10000
      Top = 10000
      Width = 250
      Height = 200
      TabOrder = 10
      Visible = False
      object v3: TcxGridDBTableView
        OnKeyUp = v3KeyUp
        Navigator.Buttons.ConfirmDelete = True
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = cmDb.iml1
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Hint = #1044#1086#1073#1072#1074#1080#1090#1100' <INSERT>'
        Navigator.Buttons.Append.ImageIndex = 0
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Delete.Hint = #1059#1076#1072#1083#1080#1090#1100' <DELETE>'
        Navigator.Buttons.Delete.ImageIndex = 2
        Navigator.Buttons.Edit.Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        Navigator.Buttons.Edit.ImageIndex = 1
        Navigator.Buttons.Post.Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        Navigator.Buttons.Post.ImageIndex = 10
        Navigator.Buttons.Cancel.Hint = #1054#1090#1084#1077#1085#1080#1090#1100' <ESC>'
        Navigator.Buttons.Cancel.ImageIndex = 12
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.DisplayMask = '[RecordIndex] '#1080#1079'  [RecordCount]'
        Navigator.InfoPanel.Visible = True
        OnCellClick = v3CellClick
        DataController.DataSource = src_OPUTYPE
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Images = cmDb.iml1
        OptionsBehavior.CellHints = True
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.NavigatorHints = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 16
        object clv3CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Width = 36
        end
        object clv3NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1080#1087#1072
          DataBinding.FieldName = 'NAME'
          Width = 410
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
      TabOrder = 15
      Visible = False
      object v4: TcxGridDBTableView
        OnKeyUp = v4KeyUp
        Navigator.Buttons.ConfirmDelete = True
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = cmDb.iml1
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Hint = #1044#1086#1073#1072#1074#1080#1090#1100' <INSERT>'
        Navigator.Buttons.Append.ImageIndex = 0
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Delete.Hint = #1059#1076#1072#1083#1080#1090#1100' <DELETE>'
        Navigator.Buttons.Delete.ImageIndex = 2
        Navigator.Buttons.Edit.Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        Navigator.Buttons.Edit.ImageIndex = 1
        Navigator.Buttons.Post.Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        Navigator.Buttons.Post.ImageIndex = 10
        Navigator.Buttons.Cancel.Hint = #1054#1090#1084#1077#1085#1080#1090#1100' <ESC>'
        Navigator.Buttons.Cancel.ImageIndex = 12
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.DisplayMask = '[RecordIndex] '#1080#1079'  [RecordCount]'
        Navigator.InfoPanel.Visible = True
        OnCellClick = v4CellClick
        DataController.DataSource = src_OPUDEVICEMARK
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Images = cmDb.iml1
        OptionsBehavior.CellHints = True
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.NavigatorHints = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 16
        object clv4CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Width = 40
        end
        object clv4NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1080#1073#1086#1088#1072
          DataBinding.FieldName = 'NAME'
          Width = 244
        end
        object clv4OPU_TYPE: TcxGridDBColumn
          DataBinding.FieldName = 'OPU_TYPE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv4TNAME: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1087#1088#1080#1073#1086#1088#1072' '#1091#1095#1077#1090#1072
          DataBinding.FieldName = 'TNAME'
          Width = 164
        end
        object clv4PNAME: TcxGridDBColumn
          Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100
          DataBinding.FieldName = 'PNAME'
          Width = 108
        end
      end
      object l4: TcxGridLevel
        GridView = v4
      end
    end
    object txt_opu_Type: TcxTextEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 8
      Visible = False
      Width = 121
    end
    object txt_Name1: TcxTextEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 11
      Visible = False
      Width = 121
    end
    object cbb_opu_Type: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_OPUTYPE
      Style.HotTrack = False
      TabOrder = 12
      Visible = False
      Width = 145
    end
    object docm2: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 100
      Height = 26
      Align = dalTop
      BarManager = bm1
      Visible = False
    end
    object docm3: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 100
      Height = 26
      Align = dalTop
      BarManager = bm1
      Visible = False
    end
    object grd5: TcxGrid
      Left = 10000
      Top = 10000
      Width = 664
      Height = 530
      TabOrder = 25
      Visible = False
      object v5: TcxGridDBTableView
        OnKeyUp = v5KeyUp
        Navigator.Buttons.ConfirmDelete = True
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = cmDb.iml1
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Hint = #1044#1086#1073#1072#1074#1080#1090#1100' <INSERT>'
        Navigator.Buttons.Append.ImageIndex = 0
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Delete.Hint = #1059#1076#1072#1083#1080#1090#1100' <DELETE>'
        Navigator.Buttons.Delete.ImageIndex = 2
        Navigator.Buttons.Edit.Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        Navigator.Buttons.Edit.ImageIndex = 1
        Navigator.Buttons.Post.Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        Navigator.Buttons.Post.ImageIndex = 10
        Navigator.Buttons.Cancel.Hint = #1054#1090#1084#1077#1085#1080#1090#1100' <ESC>'
        Navigator.Buttons.Cancel.ImageIndex = 12
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.DisplayMask = '[RecordIndex] '#1080#1079'  [RecordCount]'
        Navigator.InfoPanel.Visible = True
        OnCellClick = v5CellClick
        DataController.DataSource = src_OPUDEVICE
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Images = cmDb.iml1
        OptionsBehavior.CellHints = True
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.NavigatorHints = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.Indicator = True
        object clv5CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 37
        end
        object clv5OPU_HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'OPU_HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv5HNAME: TcxGridDBColumn
          Caption = #1059#1079#1077#1083' '#1091#1095#1077#1090#1072
          DataBinding.FieldName = 'HNAME'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 169
        end
        object clv5SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 144
        end
        object clv5NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Visible = False
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 42
        end
        object clv5OPU_TYPE: TcxGridDBColumn
          DataBinding.FieldName = 'OPU_TYPE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv5TNAME: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1087#1088#1080#1073#1086#1088#1072
          DataBinding.FieldName = 'TNAME'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 148
        end
        object clv5INST_DATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1091#1089#1090#1072#1085#1086#1074#1082#1080' '#1087#1088#1080#1073#1086#1088#1072
          DataBinding.FieldName = 'INST_DATE'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 61
        end
        object clv5INST_KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'INST_KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv5KNAME: TcxGridDBColumn
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103', '#1091#1089#1090#1072#1085#1086#1074#1080#1074#1096#1072#1103' '#1087#1088#1080#1073#1086#1088
          DataBinding.FieldName = 'KNAME'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 128
        end
        object clv5TU_DATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1087#1086#1083#1091#1095#1077#1085#1080#1103' '#1058#1059
          DataBinding.FieldName = 'TU_DATA'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 66
        end
        object clv5TU_KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'TU_KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv5KNAME1: TcxGridDBColumn
          Caption = #1050#1090#1086' '#1074#1099#1076#1072#1083' '#1058#1059
          DataBinding.FieldName = 'KNAME1'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 101
        end
        object clv5PROJ_DATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1089#1086#1075#1083#1072#1089#1086#1074#1072#1085#1080#1103' '#1087#1088#1086#1077#1082#1090#1072
          DataBinding.FieldName = 'PROJ_DATE'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 67
        end
        object clv5PROJ_KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'PROJ_KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv5KNAME2: TcxGridDBColumn
          Caption = #1050#1090#1086' '#1087#1088#1086#1077#1082#1090#1080#1088#1086#1074#1072#1083
          DataBinding.FieldName = 'KNAME2'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 124
        end
      end
      object l5: TcxGridLevel
        GridView = v5
      end
    end
    object cbb_OType: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_OPUTYPE
      Style.HotTrack = False
      TabOrder = 17
      Visible = False
      Width = 145
    end
    object dt_Inst: TcxDateEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 18
      Visible = False
      Width = 121
    end
    object cbb_kontr1: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_OPUKONTR
      Properties.OnEditValueChanged = cbb_kontr1PropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 19
      Visible = False
      Width = 145
    end
    object dt_TU: TcxDateEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 20
      Visible = False
      Width = 121
    end
    object cbb_kontr2: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_OPUKONTR
      Style.HotTrack = False
      TabOrder = 21
      Visible = False
      Width = 145
    end
    object dt_Proj: TcxDateEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 22
      Visible = False
      Width = 121
    end
    object cbb_kontrProj: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_OPUKONTR
      Style.HotTrack = False
      TabOrder = 23
      Visible = False
      Width = 145
    end
    object docm4: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 100
      Height = 26
      Align = dalTop
      BarManager = bm1
      Visible = False
    end
    object grd6: TcxGrid
      Left = 10000
      Top = 10000
      Width = 631
      Height = 348
      TabOrder = 36
      Visible = False
      object v6: TcxGridDBTableView
        OnKeyUp = v6KeyUp
        Navigator.Buttons.ConfirmDelete = True
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = cmDb.iml1
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Hint = #1044#1086#1073#1072#1074#1080#1090#1100' <INSERT>'
        Navigator.Buttons.Append.ImageIndex = 0
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Delete.Hint = #1059#1076#1072#1083#1080#1090#1100' <DELETE>'
        Navigator.Buttons.Delete.ImageIndex = 2
        Navigator.Buttons.Edit.Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        Navigator.Buttons.Edit.ImageIndex = 1
        Navigator.Buttons.Post.Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        Navigator.Buttons.Post.ImageIndex = 10
        Navigator.Buttons.Cancel.Hint = #1054#1090#1084#1077#1085#1080#1090#1100' <ESC>'
        Navigator.Buttons.Cancel.ImageIndex = 12
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.DisplayMask = '[RecordIndex] '#1080#1079'  [RecordCount]'
        Navigator.InfoPanel.Visible = True
        OnCellClick = v6CellClick
        DataController.DataSource = src_OPUELEMENT
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Images = cmDb.iml1
        OptionsBehavior.CellHints = True
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.NavigatorHints = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.Indicator = True
        object clv6CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Width = 41
        end
        object clv6DEVICE: TcxGridDBColumn
          DataBinding.FieldName = 'DEVICE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv6DEVICEMARK: TcxGridDBColumn
          DataBinding.FieldName = 'DEVICEMARK'
          Visible = False
          VisibleForCustomization = False
        end
        object clv6HNAME: TcxGridDBColumn
          Caption = #1059#1079#1077#1083' '#1091#1095#1077#1090#1072
          DataBinding.FieldName = 'HNAME'
          Width = 138
        end
        object clv6DMARK: TcxGridDBColumn
          Caption = #1052#1072#1088#1082#1072' '#1087#1088#1080#1073#1086#1088#1072' '#1091#1095#1077#1090#1072
          DataBinding.FieldName = 'DMARK'
          Width = 123
        end
        object clv6NOMER: TcxGridDBColumn
          Caption = #1053#1086#1084#1077#1088' '#1087#1088#1080#1073#1086#1088#1072
          DataBinding.FieldName = 'NOMER'
          Width = 60
        end
        object clv6MAKEDATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1074#1099#1087#1091#1089#1082#1072' '#1087#1088#1080#1073#1086#1088#1072
          DataBinding.FieldName = 'MAKEDATE'
          Width = 83
        end
        object clv6DV: TcxGridDBColumn
          Caption = #1044#1080#1072#1084#1077#1090#1088' '#1074#1074#1086#1076#1072
          DataBinding.FieldName = 'DV'
          Width = 72
        end
        object clv6DR: TcxGridDBColumn
          Caption = #1044#1080#1072#1084#1077#1090#1088' '#1088#1072#1089#1093#1086#1076#1086#1084#1077#1088#1072
          DataBinding.FieldName = 'DR'
          Width = 77
        end
        object clv6QV: TcxGridDBColumn
          Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1074#1074#1086#1076#1086#1074' ('#1092#1072#1079')'
          DataBinding.FieldName = 'QV'
          Width = 81
        end
        object clv6ISDOC: TcxGridDBColumn
          Caption = #1053#1072#1083#1080#1095#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
          DataBinding.FieldName = 'ISDOC'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 75
        end
        object clv6ISWORK: TcxGridDBColumn
          Caption = #1055#1088#1080#1073#1086#1088' '#1088#1072#1073#1086#1090#1072#1077#1090
          DataBinding.FieldName = 'ISWORK'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 56
        end
      end
      object l6: TcxGridLevel
        GridView = v6
      end
    end
    object grd7: TcxGrid
      Left = 10000
      Top = 10000
      Width = 816
      Height = 175
      TabOrder = 26
      Visible = False
      object v7: TcxGridDBTableView
        OnKeyUp = v7KeyUp
        Navigator.Buttons.ConfirmDelete = True
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = cmDb.iml1
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Hint = #1044#1086#1073#1072#1074#1080#1090#1100' <INSERT>'
        Navigator.Buttons.Append.ImageIndex = 0
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Delete.Hint = #1059#1076#1072#1083#1080#1090#1100' <DELETE>'
        Navigator.Buttons.Delete.ImageIndex = 2
        Navigator.Buttons.Edit.Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        Navigator.Buttons.Edit.ImageIndex = 1
        Navigator.Buttons.Post.Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        Navigator.Buttons.Post.ImageIndex = 10
        Navigator.Buttons.Cancel.Hint = #1054#1090#1084#1077#1085#1080#1090#1100' <ESC>'
        Navigator.Buttons.Cancel.ImageIndex = 12
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.DisplayMask = '[RecordIndex] '#1080#1079'  [RecordCount]'
        Navigator.InfoPanel.Visible = True
        OnCellClick = v7CellClick
        DataController.DataSource = src_OPUDEVICE
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Images = cmDb.iml1
        OptionsBehavior.CellHints = True
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.NavigatorHints = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.Indicator = True
        object clv7CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Width = 32
        end
        object clv7OPU_HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'OPU_HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv7SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Width = 137
        end
        object clv7NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 39
        end
        object clv7OPU_TYPE: TcxGridDBColumn
          DataBinding.FieldName = 'OPU_TYPE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv7TNAME: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1087#1088#1080#1073#1086#1088#1072
          DataBinding.FieldName = 'TNAME'
          Width = 90
        end
        object clv7INST_DATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1091#1089#1090#1072#1085#1086#1074#1082#1080' '#1087#1088#1080#1073#1086#1088#1072
          DataBinding.FieldName = 'INST_DATE'
          Width = 67
        end
        object clv7INST_KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'INST_KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv7KNAME: TcxGridDBColumn
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103', '#1091#1089#1090#1072#1085#1086#1074#1080#1074#1096#1072#1103' '#1087#1088#1080#1073#1086#1088
          DataBinding.FieldName = 'KNAME'
          Width = 161
        end
        object clv7TU_DATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1087#1086#1083#1091#1095#1077#1085#1080#1103' '#1058#1059
          DataBinding.FieldName = 'TU_DATA'
        end
        object clv7TU_KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'TU_KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv7KNAME1: TcxGridDBColumn
          Caption = #1050#1090#1086' '#1074#1099#1076#1072#1083' '#1058#1059
          DataBinding.FieldName = 'KNAME1'
          Width = 89
        end
        object clv7PROJ_DATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1089#1086#1075#1083#1072#1089#1086#1074#1072#1085#1080#1103' '#1087#1088#1086#1077#1082#1090#1072
          DataBinding.FieldName = 'PROJ_DATE'
          Width = 76
        end
        object clv7PROJ_KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'PROJ_KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv7KNAME2: TcxGridDBColumn
          Caption = #1050#1090#1086' '#1087#1088#1086#1077#1082#1090#1080#1088#1086#1074#1072#1083
          DataBinding.FieldName = 'KNAME2'
          Width = 130
        end
      end
      object l7: TcxGridLevel
        GridView = v7
      end
    end
    object cbb_DeviceMark: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_OPUDEVICEMARK
      Style.HotTrack = False
      TabOrder = 27
      Visible = False
      Width = 171
    end
    object txt_num: TcxTextEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 28
      Visible = False
      Width = 171
    end
    object dt_Make: TcxDateEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 29
      Visible = False
      Width = 171
    end
    object clc_DV: TcxCalcEdit
      Left = 10000
      Top = 10000
      EditValue = 0.000000000000000000
      Style.HotTrack = False
      TabOrder = 30
      Visible = False
      Width = 171
    end
    object clc_DR: TcxCalcEdit
      Left = 10000
      Top = 10000
      EditValue = 0.000000000000000000
      Style.HotTrack = False
      TabOrder = 31
      Visible = False
      Width = 171
    end
    object clc_QV: TcxCalcEdit
      Left = 10000
      Top = 10000
      EditValue = 0.000000000000000000
      Properties.QuickClose = True
      Style.HotTrack = False
      TabOrder = 32
      Visible = False
      Width = 171
    end
    object chk_isDoc: TcxCheckBox
      Left = 10000
      Top = 10000
      Caption = #1053#1072#1083#1080#1095#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      State = cbsGrayed
      Style.HotTrack = False
      TabOrder = 33
      Visible = False
      Width = 171
    end
    object chk_isWork: TcxCheckBox
      Left = 10000
      Top = 10000
      Caption = #1055#1088#1080#1073#1086#1088' '#1088#1072#1073#1086#1090#1072#1077#1090
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.HotTrack = False
      TabOrder = 34
      Visible = False
      Width = 171
    end
    object docm5: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 171
      Height = 26
      Align = dalTop
      BarManager = bm1
      Visible = False
    end
    object grd8: TcxGrid
      Left = 10000
      Top = 10000
      Width = 681
      Height = 324
      TabOrder = 43
      Visible = False
      object v8: TcxGridDBTableView
        OnKeyUp = v8KeyUp
        Navigator.Buttons.ConfirmDelete = True
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = cmDb.iml1
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Hint = #1044#1086#1073#1072#1074#1080#1090#1100' <INSERT>'
        Navigator.Buttons.Append.ImageIndex = 0
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Delete.Hint = #1059#1076#1072#1083#1080#1090#1100' <DELETE>'
        Navigator.Buttons.Delete.ImageIndex = 2
        Navigator.Buttons.Edit.Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        Navigator.Buttons.Edit.ImageIndex = 1
        Navigator.Buttons.Post.Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        Navigator.Buttons.Post.ImageIndex = 10
        Navigator.Buttons.Cancel.Hint = #1054#1090#1084#1077#1085#1080#1090#1100' <ESC>'
        Navigator.Buttons.Cancel.ImageIndex = 12
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.DisplayMask = '[RecordIndex] '#1080#1079'  [RecordCount]'
        Navigator.InfoPanel.Visible = True
        OnCellClick = v8CellClick
        DataController.DataSource = src_WORKACT
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Images = cmDb.iml1
        OptionsBehavior.CellHints = True
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.NavigatorHints = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.Indicator = True
        object clv8CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Width = 30
        end
        object clv8DEVICE: TcxGridDBColumn
          DataBinding.FieldName = 'DEVICE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv8HNAME: TcxGridDBColumn
          Caption = #1059#1079#1077#1083' '#1091#1095#1077#1090#1072
          DataBinding.FieldName = 'HNAME'
          Width = 101
        end
        object clv8NOMER: TcxGridDBColumn
          Caption = #1053#1086#1084#1077#1088' '#1072#1082#1090#1072
          DataBinding.FieldName = 'NOMER'
          Width = 94
        end
        object clv8ACT_DATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1087#1086#1076#1087#1080#1089#1072#1085#1080#1103' '#1072#1082#1090#1072
          DataBinding.FieldName = 'ACT_DATA'
          Width = 95
        end
        object clv8ACT_KONTRAGENT: TcxGridDBColumn
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103', '#1089#1086#1089#1090#1072#1074#1080#1074#1096#1072#1103' '#1072#1082#1090
          DataBinding.FieldName = 'ACT_KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv8KNAME: TcxGridDBColumn
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103', '#1089#1086#1089#1090#1072#1074#1080#1074#1096#1072#1103' '#1072#1082#1090
          DataBinding.FieldName = 'KNAME'
          Width = 120
        end
        object clv8LASTDATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072', '#1076#1086' '#1082#1086#1090#1086#1088#1086#1081' '#1076#1077#1081#1089#1090#1074#1080#1090#1077#1083#1077#1085' '#1072#1082#1090
          DataBinding.FieldName = 'LASTDATA'
          Width = 117
        end
      end
      object l8: TcxGridLevel
        GridView = v8
      end
    end
    object grd9: TcxGrid
      Left = 10000
      Top = 10000
      Width = 904
      Height = 197
      TabOrder = 37
      Visible = False
      object v9: TcxGridDBTableView
        OnKeyUp = v9KeyUp
        Navigator.Buttons.ConfirmDelete = True
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = cmDb.iml1
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Hint = #1044#1086#1073#1072#1074#1080#1090#1100' <INSERT>'
        Navigator.Buttons.Append.ImageIndex = 0
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Delete.Hint = #1059#1076#1072#1083#1080#1090#1100' <DELETE>'
        Navigator.Buttons.Delete.ImageIndex = 2
        Navigator.Buttons.Edit.Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        Navigator.Buttons.Edit.ImageIndex = 1
        Navigator.Buttons.Post.Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        Navigator.Buttons.Post.ImageIndex = 10
        Navigator.Buttons.Cancel.Hint = #1054#1090#1084#1077#1085#1080#1090#1100' <ESC>'
        Navigator.Buttons.Cancel.ImageIndex = 12
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.DisplayMask = '[RecordIndex] '#1080#1079'  [RecordCount]'
        Navigator.InfoPanel.Visible = True
        OnCellClick = v9CellClick
        DataController.DataSource = src_OPUDEVICE
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Images = cmDb.iml1
        OptionsBehavior.CellHints = True
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.NavigatorHints = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.Indicator = True
        object cl1: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Width = 32
        end
        object cl2: TcxGridDBColumn
          DataBinding.FieldName = 'OPU_HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object cl3: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Width = 137
        end
        object cl4: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 39
        end
        object cl5: TcxGridDBColumn
          DataBinding.FieldName = 'OPU_TYPE'
          Visible = False
          VisibleForCustomization = False
        end
        object cl6: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1087#1088#1080#1073#1086#1088#1072
          DataBinding.FieldName = 'TNAME'
          Width = 90
        end
        object cl7: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1091#1089#1090#1072#1085#1086#1074#1082#1080' '#1087#1088#1080#1073#1086#1088#1072
          DataBinding.FieldName = 'INST_DATE'
          Width = 67
        end
        object cl8: TcxGridDBColumn
          DataBinding.FieldName = 'INST_KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object cl9: TcxGridDBColumn
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103', '#1091#1089#1090#1072#1085#1086#1074#1080#1074#1096#1072#1103' '#1087#1088#1080#1073#1086#1088
          DataBinding.FieldName = 'KNAME'
          Width = 161
        end
        object cl10: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1087#1086#1083#1091#1095#1077#1085#1080#1103' '#1058#1059
          DataBinding.FieldName = 'TU_DATA'
        end
        object cl11: TcxGridDBColumn
          DataBinding.FieldName = 'TU_KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object cl12: TcxGridDBColumn
          Caption = #1050#1090#1086' '#1074#1099#1076#1072#1083' '#1058#1059
          DataBinding.FieldName = 'KNAME1'
          Width = 89
        end
        object cl13: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1089#1086#1075#1083#1072#1089#1086#1074#1072#1085#1080#1103' '#1087#1088#1086#1077#1082#1090#1072
          DataBinding.FieldName = 'PROJ_DATE'
          Width = 76
        end
        object cl14: TcxGridDBColumn
          DataBinding.FieldName = 'PROJ_KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object cl15: TcxGridDBColumn
          Caption = #1050#1090#1086' '#1087#1088#1086#1077#1082#1090#1080#1088#1086#1074#1072#1083
          DataBinding.FieldName = 'KNAME2'
          Width = 130
        end
      end
      object l9: TcxGridLevel
        GridView = v9
      end
    end
    object txt_num1: TcxTextEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 38
      Visible = False
      Width = 210
    end
    object dt_act: TcxDateEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 39
      Visible = False
      Width = 210
    end
    object cbb_KontrAct: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_OPUKONTR
      Style.HotTrack = False
      TabOrder = 40
      Visible = False
      Width = 210
    end
    object dt_LastData: TcxDateEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 41
      Visible = False
      Width = 210
    end
    object docm6: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 210
      Height = 26
      Align = dalTop
      BarManager = bm1
      Visible = False
    end
    object grd10: TcxGrid
      Left = 136
      Top = 40
      Width = 830
      Height = 200
      TabOrder = 44
      object v10: TcxGridDBTableView
        OnKeyUp = v10KeyUp
        Navigator.Buttons.ConfirmDelete = True
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = cmDb.iml1
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Hint = #1044#1086#1073#1072#1074#1080#1090#1100' <INSERT>'
        Navigator.Buttons.Append.ImageIndex = 0
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Delete.Hint = #1059#1076#1072#1083#1080#1090#1100' <DELETE>'
        Navigator.Buttons.Delete.ImageIndex = 2
        Navigator.Buttons.Edit.Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        Navigator.Buttons.Edit.ImageIndex = 1
        Navigator.Buttons.Post.Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        Navigator.Buttons.Post.ImageIndex = 10
        Navigator.Buttons.Cancel.Hint = #1054#1090#1084#1077#1085#1080#1090#1100' <ESC>'
        Navigator.Buttons.Cancel.ImageIndex = 12
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.DisplayMask = '[RecordIndex] '#1080#1079'  [RecordCount]'
        Navigator.InfoPanel.Visible = True
        OnCellClick = v10CellClick
        DataController.DataSource = src_OPUELEMENT
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Images = cmDb.iml1
        OptionsBehavior.CellHints = True
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.NavigatorHints = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.Indicator = True
        object clv10CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Width = 33
        end
        object clv10DEVICE: TcxGridDBColumn
          DataBinding.FieldName = 'DEVICE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv10DEVICEMARK: TcxGridDBColumn
          DataBinding.FieldName = 'DEVICEMARK'
          Visible = False
          VisibleForCustomization = False
        end
        object clv10HNAME: TcxGridDBColumn
          Caption = #1059#1079#1077#1083' '#1091#1095#1077#1090#1072
          DataBinding.FieldName = 'HNAME'
          Width = 161
        end
        object clv10DMARK: TcxGridDBColumn
          Caption = #1052#1072#1088#1082#1072' '#1087#1088#1080#1073#1086#1088#1072' '#1091#1095#1077#1090#1072
          DataBinding.FieldName = 'DMARK'
          Width = 124
        end
        object clv10NOMER: TcxGridDBColumn
          Caption = #1053#1086#1084#1077#1088' '#1087#1088#1080#1073#1086#1088#1072
          DataBinding.FieldName = 'NOMER'
          Width = 48
        end
        object clv10MAKEDATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1074#1099#1087#1091#1089#1082#1072' '#1087#1088#1080#1073#1086#1088#1072
          DataBinding.FieldName = 'MAKEDATE'
          Width = 67
        end
        object clv10DV: TcxGridDBColumn
          Caption = #1044#1080#1072#1084#1077#1090#1088' '#1074#1074#1086#1076#1072
          DataBinding.FieldName = 'DV'
        end
        object clv10DR: TcxGridDBColumn
          Caption = #1044#1080#1072#1084#1077#1090#1088' '#1088#1072#1089#1093#1086#1076#1086#1084#1077#1088#1072
          DataBinding.FieldName = 'DR'
          Width = 75
        end
        object clv10QV: TcxGridDBColumn
          Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1074#1074#1086#1076#1086#1074' ('#1092#1072#1079')'
          DataBinding.FieldName = 'QV'
          Width = 73
        end
        object clv10ISDOC: TcxGridDBColumn
          Caption = #1053#1072#1083#1080#1095#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
          DataBinding.FieldName = 'ISDOC'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 71
        end
        object clv10ISWORK: TcxGridDBColumn
          Caption = #1055#1088#1080#1079#1085#1072#1082' '#1090#1086#1075#1086', '#1095#1090#1086' '#1087#1088#1080#1073#1086#1088' '#1088#1072#1073#1086#1090#1072#1077#1090
          DataBinding.FieldName = 'ISWORK'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 99
        end
      end
      object l10: TcxGridLevel
        GridView = v10
      end
    end
    object grd11: TcxGrid
      Left = 365
      Top = 276
      Width = 601
      Height = 327
      TabOrder = 50
      object v11: TcxGridDBTableView
        OnKeyUp = v11KeyUp
        Navigator.Buttons.ConfirmDelete = True
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = cmDb.iml1
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Hint = #1044#1086#1073#1072#1074#1080#1090#1100' <INSERT>'
        Navigator.Buttons.Append.ImageIndex = 0
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Delete.Hint = #1059#1076#1072#1083#1080#1090#1100' <DELETE>'
        Navigator.Buttons.Delete.ImageIndex = 2
        Navigator.Buttons.Edit.Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        Navigator.Buttons.Edit.ImageIndex = 1
        Navigator.Buttons.Post.Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        Navigator.Buttons.Post.ImageIndex = 10
        Navigator.Buttons.Cancel.Hint = #1054#1090#1084#1077#1085#1080#1090#1100' <ESC>'
        Navigator.Buttons.Cancel.ImageIndex = 12
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.DisplayMask = '[RecordIndex] '#1080#1079'  [RecordCount]'
        Navigator.InfoPanel.Visible = True
        OnCellClick = v11CellClick
        DataController.DataSource = src_PROVERKA
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Images = cmDb.iml1
        OptionsBehavior.CellHints = True
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.NavigatorHints = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.Indicator = True
        object clv11CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Width = 34
        end
        object clv11HNAME: TcxGridDBColumn
          Caption = #1059#1079#1077#1083' '#1091#1095#1077#1090#1072
          DataBinding.FieldName = 'HNAME'
          Width = 135
        end
        object clv11OUTDATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1089#1085#1103#1090#1080#1103' '#1087#1088#1080#1073#1086#1088#1072
          DataBinding.FieldName = 'OUTDATE'
          Width = 69
        end
        object clv11INDATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1091#1089#1090#1072#1085#1086#1074#1082#1080' '#1087#1088#1080#1073#1086#1088#1072
          DataBinding.FieldName = 'INDATE'
          Width = 82
        end
        object clv11KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv11KNAME: TcxGridDBColumn
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103', '#1074#1099#1087#1086#1083#1085#1103#1074#1096#1072#1103' '#1087#1086#1074#1077#1088#1082#1091' '#1087#1088#1080#1073#1086#1088#1072
          DataBinding.FieldName = 'KNAME'
          Width = 171
        end
        object clv11GARANTDATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1089#1083#1077#1076#1091#1102#1097#1077#1081' '#1087#1086#1074#1077#1088#1082#1080
          DataBinding.FieldName = 'GARANTDATE'
          Width = 78
        end
        object clv11ELEMENT: TcxGridDBColumn
          DataBinding.FieldName = 'ELEMENT'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l11: TcxGridLevel
        GridView = v11
      end
    end
    object dt_OutDate: TcxDateEdit
      Left = 146
      Top = 307
      Style.HotTrack = False
      TabOrder = 45
      Width = 191
    end
    object dt_InDate: TcxDateEdit
      Left = 146
      Top = 346
      Style.HotTrack = False
      TabOrder = 46
      Width = 191
    end
    object cbb_Kontr: TcxLookupComboBox
      Left = 146
      Top = 385
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_OPUKONTR
      Style.HotTrack = False
      TabOrder = 47
      Width = 191
    end
    object dt_GarantDate: TcxDateEdit
      Left = 146
      Top = 424
      Style.HotTrack = False
      TabOrder = 48
      Width = 191
    end
    object docm7: TdxBarDockControl
      Left = 146
      Top = 455
      Width = 191
      Height = 26
      Align = dalTop
      BarManager = bm1
    end
    object cbb_opuhouse: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_OPUHOUSE
      Style.HotTrack = False
      TabOrder = 16
      Visible = False
      Width = 145
    end
    object grd12: TcxGrid
      Left = 10000
      Top = 10000
      Width = 250
      Height = 200
      TabOrder = 1
      Visible = False
      object v12: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = cmDb.iml1
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Hint = #1044#1086#1073#1072#1074#1080#1090#1100' <INSERT>'
        Navigator.Buttons.Append.ImageIndex = 0
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Delete.Hint = #1059#1076#1072#1083#1080#1090#1100' <DELETE>'
        Navigator.Buttons.Delete.ImageIndex = 2
        Navigator.Buttons.Edit.Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        Navigator.Buttons.Edit.ImageIndex = 1
        Navigator.Buttons.Post.Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        Navigator.Buttons.Post.ImageIndex = 10
        Navigator.Buttons.Cancel.Hint = #1054#1090#1084#1077#1085#1080#1090#1100' <ESC>'
        Navigator.Buttons.Cancel.ImageIndex = 12
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.DisplayMask = '[RecordIndex] '#1080#1079'  [RecordCount]'
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = ds_Prodact
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.NavigatorHints = True
        OptionsData.Appending = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 16
        object clv12CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Options.Editing = False
          Options.Focusing = False
          Width = 45
        end
        object clv12NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1103
          DataBinding.FieldName = 'NAME'
          Width = 717
        end
      end
      object l12: TcxGridLevel
        GridView = v12
      end
    end
    object cbb_PRODACT: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_Prodact
      Style.HotTrack = False
      TabOrder = 13
      Visible = False
      Width = 145
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = lcf1
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 7
      LayoutDirection = ldTabbed
      ShowBorder = False
      TabbedOptions.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize, pcoTopToBottomText]
      TabbedOptions.Rotate = True
      TabbedOptions.TabPosition = tpLeft
      OnTabChanged = grp1TabChanged
      Index = -1
    end
    object glc1Group1: TdxLayoutGroup
      CaptionOptions.Text = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099
      LayoutLookAndFeel = lcf1
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object glc1Group2: TdxLayoutGroup
      CaptionOptions.Text = #1041#1083#1086#1082' '#1091#1095#1077#1090#1072
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object itmlc1Item1: TdxLayoutItem
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1086#1074' '#1073#1083#1086#1082#1072' OPU'
      CaptionOptions.Layout = clTop
      Parent = glc1Group1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item11: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1054#1073#1097#1077#1076#1086#1084#1086#1074#1086#1081' '#1073#1083#1086#1082' '#1091#1095#1077#1090#1072
      CaptionOptions.Layout = clTop
      Parent = glc1Group4
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object glc1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = glc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 194
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 0
    end
    object glc1Group4: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = glc1Group2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itmlc1Item12: TdxLayoutItem
      CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1073#1083#1086#1082#1072
      CaptionOptions.Layout = clTop
      Control = txt_Name
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object itmlc1Item13: TdxLayoutItem
      CaptionOptions.Text = #1059#1083#1080#1094#1072
      CaptionOptions.Layout = clTop
      Parent = glc1Group3
      Control = cbb_Street
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item14: TdxLayoutItem
      CaptionOptions.Text = #1044#1086#1084
      CaptionOptions.Layout = clTop
      Parent = glc1Group3
      Control = cbb_house
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmlc1Item15: TdxLayoutItem
      CaptionOptions.Text = 'IP '#1072#1076#1088#1077#1089' '#1084#1086#1076#1077#1084#1072
      CaptionOptions.Layout = clTop
      Parent = glc1Group3
      Control = txt_IPaddr
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itmlc1Item16: TdxLayoutItem
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = glc1Group3
      Control = chk_IP
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itmlc1Item17: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = glc1Group3
      Control = docm1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object glc1Group5: TdxLayoutGroup
      CaptionOptions.Text = #1058#1080#1087#1099' '#1087#1088#1080#1073#1086#1088#1086#1074
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 3
    end
    object itmlc1Item18: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1058#1080#1087#1099' '#1054#1055#1059
      CaptionOptions.Layout = clTop
      Parent = glc1Group7
      Control = grd3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmlc1Item19: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1052#1072#1088#1082#1080' '#1087#1088#1080#1073#1086#1088#1086#1074' '#1091#1095#1077#1090#1072
      CaptionOptions.Layout = clTop
      Parent = glc1Group9
      Control = grd4
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object split1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = glc1Group5
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object glc1Group6: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = glc1Group7
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 255
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 0
    end
    object glc1Group7: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = glc1Group5
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object glc1Group8: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = glc1Group9
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 255
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 0
    end
    object glc1Group9: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = glc1Group5
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object itmlc1Item110: TdxLayoutItem
      CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1080#1087#1072
      CaptionOptions.Layout = clTop
      Parent = glc1Group6
      Control = txt_opu_Type
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item111: TdxLayoutItem
      CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1080#1073#1086#1088#1072
      CaptionOptions.Layout = clTop
      Parent = glc1Group8
      Control = txt_Name1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item112: TdxLayoutItem
      CaptionOptions.Text = #1058#1080#1087' '#1087#1088#1080#1073#1086#1088#1072' '#1091#1095#1077#1090#1072
      CaptionOptions.Layout = clTop
      Parent = glc1Group8
      Control = cbb_opu_Type
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmlc1Item113: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = glc1Group6
      Control = docm2
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmlc1Item114: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = glc1Group8
      Control = docm3
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object glc1Group10: TdxLayoutGroup
      CaptionOptions.Text = #1059#1079#1077#1083' '#1091#1095#1077#1090#1072
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 4
    end
    object itmlc1Item115: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1059#1079#1077#1083' '#1091#1095#1077#1090#1072
      CaptionOptions.Layout = clTop
      Parent = glc1Group12
      Control = grd5
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object glc1Group11: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = glc1Group12
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 251
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 0
    end
    object glc1Group12: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = glc1Group10
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object split3: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = glc1Group12
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object itmlc1Item118: TdxLayoutItem
      CaptionOptions.Text = #1058#1080#1087' '#1087#1088#1080#1073#1086#1088#1072
      CaptionOptions.Layout = clTop
      Parent = glc1Group11
      Control = cbb_OType
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmlc1Item119: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1091#1089#1090#1072#1085#1086#1074#1082#1080' '#1087#1088#1080#1073#1086#1088#1072
      CaptionOptions.Layout = clTop
      Parent = glc1Group11
      Control = dt_Inst
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itmlc1Item120: TdxLayoutItem
      CaptionOptions.Text = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103', '#1091#1089#1090#1072#1085#1086#1074#1080#1074#1096#1072#1103' '#1087#1088#1080#1073#1086#1088
      CaptionOptions.Layout = clTop
      Parent = glc1Group11
      Control = cbb_kontr1
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itmlc1Item121: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1087#1086#1083#1091#1095#1077#1085#1080#1103' '#1058#1059
      CaptionOptions.Layout = clTop
      Parent = glc1Group11
      Control = dt_TU
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itmlc1Item122: TdxLayoutItem
      CaptionOptions.Text = #1050#1090#1086' '#1074#1099#1076#1072#1083' '#1058#1059
      CaptionOptions.Layout = clTop
      Parent = glc1Group11
      Control = cbb_kontr2
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object itmlc1Item123: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1089#1086#1075#1083#1072#1089#1086#1074#1072#1085#1080#1103' '#1087#1088#1086#1077#1082#1090#1072
      CaptionOptions.Layout = clTop
      Parent = glc1Group11
      Control = dt_Proj
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object itmlc1Item124: TdxLayoutItem
      CaptionOptions.Text = #1050#1090#1086' '#1087#1088#1086#1077#1082#1090#1080#1088#1086#1074#1072#1083
      CaptionOptions.Layout = clTop
      Parent = glc1Group11
      Control = cbb_kontrProj
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object itmlc1Item125: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = glc1Group11
      Control = docm4
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object glc1Group13: TdxLayoutGroup
      CaptionOptions.Text = #1055#1088#1080#1073#1086#1088' '#1091#1095#1077#1090#1072
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 5
    end
    object itmlc1Item126: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1055#1088#1080#1073#1086#1088' '#1091#1095#1077#1090#1072
      CaptionOptions.Layout = clTop
      Parent = glc1Group15
      Control = grd6
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object glc1Group14: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = glc1Group15
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 195
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      UseIndent = False
      Index = 0
    end
    object glc1Group15: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = glc1Group13
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object split4: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = glc1Group15
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object glc1Group16: TdxLayoutGroup
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1059#1079#1077#1083' '#1091#1095#1077#1090#1072
      Parent = glc1Group13
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 205
      ButtonOptions.Buttons = <>
      UseIndent = False
      Index = 0
    end
    object split5: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = glc1Group13
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object itmlc1Item127: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = glc1Group16
      Control = grd7
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item128: TdxLayoutItem
      CaptionOptions.Text = #1052#1072#1088#1082#1072' '#1087#1088#1080#1073#1086#1088#1072' '#1091#1095#1077#1090#1072
      CaptionOptions.Layout = clTop
      Parent = glc1Group14
      Control = cbb_DeviceMark
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item129: TdxLayoutItem
      CaptionOptions.Text = #1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088' '#1087#1088#1080#1073#1086#1088#1072
      CaptionOptions.Layout = clTop
      Parent = glc1Group14
      Control = txt_num
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmlc1Item130: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1074#1099#1087#1091#1089#1082#1072' '#1087#1088#1080#1073#1086#1088#1072
      CaptionOptions.Layout = clTop
      Parent = glc1Group14
      Control = dt_Make
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itmlc1Item131: TdxLayoutItem
      CaptionOptions.Text = #1044#1080#1072#1084#1077#1090#1088' '#1074#1074#1086#1076#1072
      CaptionOptions.Layout = clTop
      Parent = glc1Group14
      Control = clc_DV
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itmlc1Item132: TdxLayoutItem
      CaptionOptions.Text = #1044#1080#1072#1084#1077#1090#1088' '#1088#1072#1089#1093#1086#1076#1086#1084#1077#1088#1072
      CaptionOptions.Layout = clTop
      Parent = glc1Group14
      Control = clc_DR
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itmlc1Item133: TdxLayoutItem
      CaptionOptions.Text = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1074#1074#1086#1076#1086#1074' ('#1092#1072#1079')'
      CaptionOptions.Layout = clTop
      Parent = glc1Group14
      Control = clc_QV
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object itmlc1Item134: TdxLayoutItem
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = glc1Group14
      Control = chk_isDoc
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object itmlc1Item135: TdxLayoutItem
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = glc1Group14
      Control = chk_isWork
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object itmlc1Item136: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = glc1Group14
      Control = docm5
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object glc1Group17: TdxLayoutGroup
      CaptionOptions.Text = #1040#1082#1090#1099
      Parent = grp1
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      Index = 6
    end
    object itmlc1Item137: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1040#1082#1090#1099' '#1076#1086#1087#1091#1089#1082#1086#1074' '#1087#1088#1080#1073#1086#1088#1086#1074
      CaptionOptions.Layout = clTop
      Parent = glc1Group19
      Control = grd8
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object glc1Group18: TdxLayoutGroup
      AlignVert = avClient
      Parent = glc1Group19
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 234
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      ItemIndex = 2
      Index = 0
    end
    object glc1Group19: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = glc1Group17
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object split6: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = glc1Group19
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object glc1Group20: TdxLayoutGroup
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1059#1079#1077#1083' '#1091#1095#1077#1090#1072
      Parent = glc1Group17
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 227
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object split7: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = glc1Group17
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object itmlc1Item2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = glc1Group20
      Control = grd9
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item138: TdxLayoutItem
      CaptionOptions.Text = #1053#1086#1084#1077#1088' '#1072#1082#1090#1072
      CaptionOptions.Layout = clTop
      Parent = glc1Group18
      Control = txt_num1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item139: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1087#1086#1076#1087#1080#1089#1072#1085#1080#1103' '#1072#1082#1090#1072
      CaptionOptions.Layout = clTop
      Parent = glc1Group18
      Control = dt_act
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmlc1Item140: TdxLayoutItem
      CaptionOptions.Text = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103', '#1089#1086#1089#1090#1072#1074#1080#1074#1096#1072#1103' '#1072#1082#1090
      CaptionOptions.Layout = clTop
      Parent = glc1Group18
      Control = cbb_KontrAct
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itmlc1Item141: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072', '#1076#1086' '#1082#1086#1090#1086#1088#1086#1081' '#1076#1077#1081#1089#1090#1074#1080#1090#1077#1083#1077#1085' '#1072#1082#1090
      CaptionOptions.Layout = clTop
      Parent = glc1Group18
      Control = dt_LastData
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itmlc1Item142: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = glc1Group18
      Control = docm6
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object glc1Group21: TdxLayoutGroup
      CaptionOptions.Text = #1055#1086#1074#1077#1088#1082#1072' '#1087#1088#1080#1073#1086#1088#1086#1074
      Parent = grp1
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      Index = 7
    end
    object itmlc1Item143: TdxLayoutItem
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1055#1088#1080#1073#1086#1088#1099' '#1091#1095#1077#1090#1072
      CaptionOptions.Layout = clTop
      Parent = glc1Group21
      Control = grd10
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item144: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1044#1072#1085#1085#1099#1077' '#1086' '#1087#1086#1074#1077#1088#1082#1072#1093' '#1087#1088#1080#1073#1086#1088#1086#1074' '#1091#1095#1077#1090#1072
      CaptionOptions.Layout = clTop
      Parent = glc1Group23
      Control = grd11
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object split8: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = glc1Group21
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object glc1Group22: TdxLayoutGroup
      Parent = glc1Group23
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 211
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      UseIndent = False
      Index = 0
    end
    object glc1Group23: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = glc1Group21
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object split9: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = glc1Group23
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object itmlc1Item145: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1089#1085#1103#1090#1080#1103' '#1087#1088#1080#1073#1086#1088#1072
      CaptionOptions.Layout = clTop
      Parent = glc1Group22
      Control = dt_OutDate
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item146: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1091#1089#1090#1072#1085#1086#1074#1082#1080' '#1087#1088#1080#1073#1086#1088#1072
      CaptionOptions.Layout = clTop
      Parent = glc1Group22
      Control = dt_InDate
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmlc1Item147: TdxLayoutItem
      CaptionOptions.Text = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103', '#1074#1099#1087#1086#1083#1085#1103#1074#1096#1072#1103' '#1087#1086#1074#1077#1088#1082#1091
      CaptionOptions.Layout = clTop
      Parent = glc1Group22
      Control = cbb_Kontr
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itmlc1Item148: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1089#1083#1077#1076#1091#1102#1097#1077#1081' '#1087#1086#1074#1077#1088#1082#1080
      CaptionOptions.Layout = clTop
      Offsets.Bottom = 10
      Parent = glc1Group22
      Control = dt_GarantDate
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itmlc1Item149: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = glc1Group22
      Control = docm7
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itmlc1Item150: TdxLayoutItem
      CaptionOptions.Text = #1041#1083#1086#1082' '#1091#1095#1077#1090#1072
      CaptionOptions.Layout = clTop
      Parent = glc1Group11
      Control = cbb_opuhouse
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemlc1Item11: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1077#1081' '#1087#1088#1080#1073#1086#1088#1086#1074
      CaptionOptions.Layout = clTop
      Parent = lgrplc1Group1
      Control = grd12
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lblItm1: TdxLayoutLabeledItem
      CaptionOptions.Text = 'Label'
      Index = -1
    end
    object lgrplc1Group1: TdxLayoutGroup
      CaptionOptions.Text = #1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1080
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object LItemlc1Item1: TdxLayoutItem
      CaptionOptions.Text = #1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100' '#1087#1088#1080#1073#1086#1088#1072
      CaptionOptions.Layout = clTop
      Parent = glc1Group8
      Control = cbb_PRODACT
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 760
    Top = 120
    object lcf1: TdxLayoutCxLookAndFeel
      LookAndFeel.NativeStyle = False
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = glc1Group16
        Properties.Strings = (
          'SizeOptions.Height')
      end>
    StorageName = 'prop1'
    Left = 728
    Top = 120
  end
  object ds_OPUKONTR: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME, INN, KPP'
      'from OPU_KONTRAGENT')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DefaultFormats.NumericEditFormat = '#,##0.'
    Left = 536
    Top = 392
  end
  object src_OPUKONTR: TDataSource
    DataSet = ds_OPUKONTR
    Left = 632
    Top = 360
  end
  object ds_OPUHOUSE: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT OH.CODE,'
      '       OH.NAME,'
      '       OH.HOUSE,'
      '       S.NAME SNAME, H.NOMER,'
      '       S.CODE STREET,'
      '       OH.IP, '
      '       OH.ISIP'
      'FROM OPU_HOUSE OH'
      'LEFT OUTER JOIN HOUSE H ON H.CODE = OH.HOUSE'
      'LEFT OUTER JOIN STREET S ON S.CODE = H.STREET')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DefaultFormats.NumericEditFormat = '#,##0.'
    Left = 568
    Top = 392
  end
  object src_OPUHOUSE: TDataSource
    DataSet = ds_OPUHOUSE
    Left = 600
    Top = 360
  end
  object bm1: TdxBarManager
    AlwaysSaveText = True
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
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 560
    Top = 152
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
      DockControl = docm1
      DockedDockControl = docm1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 892
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
          ItemName = 'btn_Edit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Delete'
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
      DockControl = docm2
      DockedDockControl = docm2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 892
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_Add_opuType'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Edit_opuType'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Del_opuType'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object br_DeviceMark: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockControl = docm3
      DockedDockControl = docm3
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 892
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_Add_DeviceMark'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Edit_DeviceMark'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Del_DeviceMark'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object brDevice: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 4'
      CaptionButtons = <>
      DockControl = docm4
      DockedDockControl = docm4
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1026
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_AddDevice'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_EditDevice'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_DelDevice'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object brElement: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 5'
      CaptionButtons = <>
      DockControl = docm5
      DockedDockControl = docm5
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1026
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_AddElement'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_EditElement'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_DelElement'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object brAct: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 6'
      CaptionButtons = <>
      DockControl = docm6
      DockedDockControl = docm6
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1026
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_AddAct'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_EditAct'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_DelAct'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object br_Proverka: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 7'
      CaptionButtons = <>
      DockControl = docm7
      DockedDockControl = docm7
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1026
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_Addp'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Editp'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnDelp'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btn_Add: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
      Visible = ivAlways
      ImageIndex = 0
      OnClick = btn_AddClick
    end
    object btn_Edit: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 1
      OnClick = btn_EditClick
    end
    object btn_Delete: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 2
      OnClick = btn_DeleteClick
    end
    object btn_Add_opuType: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      OnClick = btn_Add_opuTypeClick
    end
    object btn_Edit_opuType: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 1
      OnClick = btn_Edit_opuTypeClick
    end
    object btn_Del_opuType: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 2
      OnClick = btn_Del_opuTypeClick
    end
    object btn_Add_DeviceMark: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      OnClick = btn_Add_DeviceMarkClick
    end
    object btn_Edit_DeviceMark: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 1
      OnClick = btn_Edit_DeviceMarkClick
    end
    object btn_Del_DeviceMark: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 2
      OnClick = btn_Del_DeviceMarkClick
    end
    object btn_AddDevice: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      OnClick = btn_AddDeviceClick
    end
    object btn_EditDevice: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 1
      OnClick = btn_EditDeviceClick
    end
    object btn_DelDevice: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 2
      OnClick = btn_DelDeviceClick
    end
    object btn_AddElement: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      OnClick = btn_AddElementClick
    end
    object btn_EditElement: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 1
      OnClick = btn_EditElementClick
    end
    object btn_DelElement: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 2
      OnClick = btn_DelElementClick
    end
    object btn_AddAct: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      OnClick = btn_AddActClick
    end
    object btn_EditAct: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 1
      OnClick = btn_EditActClick
    end
    object btn_DelAct: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 2
      OnClick = btn_DelActClick
    end
    object btn_Addp: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      OnClick = btn_AddpClick
    end
    object btn_Editp: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 1
      OnClick = btn_EditpClick
    end
    object btnDelp: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 2
      OnClick = btnDelpClick
    end
  end
  object ds_OPUTYPE: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, NAME FROM OPU_TYPE'
      'ORDER BY NAME')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DefaultFormats.NumericEditFormat = '#,##0.'
    Left = 600
    Top = 392
  end
  object src_OPUTYPE: TDataSource
    DataSet = ds_OPUTYPE
    Left = 568
    Top = 360
  end
  object ds_OPUDEVICEMARK: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT OD.CODE,'
      '       OD.NAME, '
      '       OD.OPU_TYPE, OT.NAME TNAME, OD.OPU_PRODACT, OP.NAME PNAME'
      ''
      'FROM OPU_DEVICEMARK OD'
      'LEFT OUTER JOIN OPU_TYPE OT ON OT.CODE = OD.OPU_TYPE'
      'left outer JOIN OPU_PRODACT OP ON OP.CODE = OD.OPU_PRODACT')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DefaultFormats.NumericEditFormat = '#,##0.'
    Left = 632
    Top = 392
  end
  object src_OPUDEVICEMARK: TDataSource
    DataSet = ds_OPUDEVICEMARK
    Left = 536
    Top = 360
  end
  object ds_OPUDEVICE: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT OD.CODE,'
      '       OD.OPU_HOUSE, S.NAME SNAME, H.NOMER,'
      '       OH.NAME HNAME,'
      '       S.CODE STREET,'
      '       OD.OPU_TYPE, OT.NAME TNAME,'
      '       OD.INST_DATE,'
      '       OD.INST_KONTRAGENT, OK.NAME KNAME,'
      '       OD.TU_DATA,'
      '       OD.TU_KONTRAGENT, OK1.NAME KNAME1,'
      '       OD.PROJ_DATE,'
      '       OD.PROJ_KONTRAGENT, OK2.NAME KNAME2'
      'FROM OPU_DEVICE OD'
      'LEFT OUTER JOIN OPU_HOUSE OH ON OH.CODE = OD.OPU_HOUSE'
      'LEFT OUTER JOIN OPU_TYPE OT ON OT.CODE = OD.OPU_TYPE'
      
        'LEFT OUTER JOIN OPU_KONTRAGENT OK ON OK.CODE = OD.INST_KONTRAGEN' +
        'T'
      
        'LEFT OUTER JOIN OPU_KONTRAGENT OK1 ON OK1.CODE = OD.TU_KONTRAGEN' +
        'T'
      
        'LEFT OUTER JOIN OPU_KONTRAGENT OK2 ON OK2.CODE = OD.PROJ_KONTRAG' +
        'ENT'
      'LEFT OUTER JOIN HOUSE H ON H.CODE = OH.HOUSE'
      'LEFT OUTER JOIN STREET S ON S.CODE = H.STREET')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DefaultFormats.NumericEditFormat = '#,##0.'
    Left = 672
    Top = 400
  end
  object src_OPUDEVICE: TDataSource
    DataSet = ds_OPUDEVICE
    Left = 664
    Top = 368
  end
  object ds_OPUELEMENT: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE OPU_ELEMENT'
      'SET '
      '    DEVICE = :DEVICE,'
      '    DEVICEMARK = :DEVICEMARK,'
      '    NOMER = :NOMER,'
      '    MAKEDATE = :MAKEDATE,'
      '    DV = :DV,'
      '    DR = :DR,'
      '    QV = :QV,'
      '    ISDOC = :ISDOC,'
      '    ISWORK = :ISWORK'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    OPU_ELEMENT'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO OPU_ELEMENT('
      '    CODE,'
      '    DEVICE,'
      '    DEVICEMARK,'
      '    NOMER,'
      '    MAKEDATE,'
      '    DV,'
      '    DR,'
      '    QV,'
      '    ISDOC,'
      '    ISWORK'
      ')'
      'VALUES('
      '    :CODE,'
      '    :DEVICE,'
      '    :DEVICEMARK,'
      '    :NOMER,'
      '    :MAKEDATE,'
      '    :DV,'
      '    :DR,'
      '    :QV,'
      '    :ISDOC,'
      '    :ISWORK'
      ')')
    RefreshSQL.Strings = (
      'SELECT OL.CODE,'
      '       OL.DEVICE,'
      '       OL.DEVICEMARK, OM.NAME DMARK,'
      '       OL.NOMER, '
      '       OL.MAKEDATE, '
      '       OL.DV, '
      '       OL.DR, '
      '       OL.QV, '
      '       OL.ISDOC, '
      '       OL.ISWORK'
      'FROM OPU_ELEMENT OL'
      'left outer join OPU_DEVICEMARK OM on OM.CODE = OL.DEVICEMARK'
      ''
      ' WHERE '
      '        OL.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT OL.CODE,'
      '       OL.DEVICE, OH.NAME HNAME,'
      '       OL.DEVICEMARK, OM.NAME DMARK,'
      '       OL.NOMER,'
      '       OL.MAKEDATE,'
      '       OL.DV,'
      '       OL.DR,'
      '       OL.QV,'
      '       OL.ISDOC,'
      '       OL.ISWORK'
      'FROM OPU_ELEMENT OL'
      'LEFT OUTER JOIN OPU_DEVICEMARK OM ON OM.CODE = OL.DEVICEMARK'
      'LEFT OUTER JOIN OPU_DEVICE OD ON OD.CODE = OL.DEVICE'
      'LEFT OUTER JOIN OPU_HOUSE OH ON OH.CODE = OD.OPU_HOUSE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DefaultFormats.NumericEditFormat = '#,##0.'
    Left = 544
    Top = 456
  end
  object src_OPUELEMENT: TDataSource
    DataSet = ds_OPUELEMENT
    Left = 576
    Top = 456
  end
  object ds_WORKACT: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT OW.CODE,'
      '       OW.DEVICE, OH.NAME HNAME,'
      '       OW.NOMER,'
      '       OW.ACT_DATA,'
      '       OW.ACT_KONTRAGENT, OK.NAME KNAME,'
      '       OW.LASTDATA'
      'FROM OPU_WORKACT OW'
      'LEFT OUTER JOIN OPU_DEVICE OD ON OD.CODE = OW.DEVICE'
      'LEFT OUTER JOIN OPU_KONTRAGENT OK ON OK.CODE = OW.ACT_KONTRAGENT'
      'LEFT OUTER JOIN OPU_HOUSE OH ON OH.CODE = OD.OPU_HOUSE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DefaultFormats.NumericEditFormat = '#,##0.'
    Left = 544
    Top = 512
  end
  object src_WORKACT: TDataSource
    DataSet = ds_WORKACT
    Left = 576
    Top = 512
  end
  object ds_PROVERKA: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT OP.CODE,'
      '       OP.OUTDATE, OH.NAME HNAME,'
      '       OP.INDATE,'
      '       OP.KONTRAGENT, OK.NAME KNAME,'
      '       OP.GARANTDATE,'
      '       OP.ELEMENT'
      'FROM OPU_PROVERKA OP'
      'LEFT OUTER JOIN OPU_KONTRAGENT OK ON OK.CODE = OP.KONTRAGENT'
      'LEFT OUTER JOIN OPU_ELEMENT OL on OL.CODE = OP.ELEMENT'
      'LEFT OUTER JOIN OPU_DEVICEMARK OM ON OM.CODE = OL.DEVICEMARK'
      'LEFT OUTER JOIN OPU_DEVICE OD ON OD.CODE = OL.DEVICE'
      'LEFT OUTER JOIN OPU_HOUSE OH ON OH.CODE = OD.OPU_HOUSE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DefaultFormats.NumericEditFormat = '#,##0.'
    Left = 472
    Top = 400
  end
  object src_PROVERKA: TDataSource
    DataSet = ds_PROVERKA
    Left = 440
    Top = 400
  end
  object DockManager1: TdxDockingManager
    Color = clBtnFace
    DefaultHorizContainerSiteProperties.Dockable = True
    DefaultHorizContainerSiteProperties.ImageIndex = -1
    DefaultVertContainerSiteProperties.Dockable = True
    DefaultVertContainerSiteProperties.ImageIndex = -1
    DefaultTabContainerSiteProperties.Dockable = True
    DefaultTabContainerSiteProperties.ImageIndex = -1
    DockStyle = dsVS2005
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 664
    Top = 464
    PixelsPerInch = 96
  end
  object fds_Prodact: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    CODE,'
      '    NAME'
      'FROM'
      '    OPU_PRODACT'
      'ORDER BY NAME     ')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 424
    Top = 480
  end
  object ds_Prodact: TDataSource
    DataSet = fds_Prodact
    Left = 452
    Top = 480
  end
end
