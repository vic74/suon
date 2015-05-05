object HouseForm: THouseForm
  Left = 0
  Top = 0
  HelpContext = 1
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1076#1086#1084#1086#1074
  ClientHeight = 754
  ClientWidth = 858
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lcntr_root: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 858
    Height = 754
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = LCxSkin1
    object grd1: TcxGrid
      Left = 3
      Top = 29
      Width = 250
      Height = 200
      TabOrder = 4
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
        Navigator.Buttons.Insert.Visible = False
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
        DataController.DataSource = SourceHouse
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.InvertSelect = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsSelection.CellMultiSelect = True
        OptionsView.Footer = True
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        object clv1A: TcxGridDBColumn
          DataBinding.FieldName = 'A'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Options.Editing = False
          Width = 26
          IsCaptionAssigned = True
        end
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1053#1086#1084#1077#1088' '#1076#1086#1084#1072
          DataBinding.FieldName = 'NOMER'
          Options.Editing = False
          Width = 42
        end
        object clv1STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv1STREETNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STREETNAME'
          Options.Editing = False
          Width = 77
        end
        object clv1DU: TcxGridDBColumn
          DataBinding.FieldName = 'DU'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv1DUNAME: TcxGridDBColumn
          Caption = #1044#1086#1084#1086#1091#1087#1088#1072#1074#1083#1077#1085#1080#1077
          DataBinding.FieldName = 'DUNAME'
          Options.Editing = False
          Width = 110
        end
        object clv1TOTAL_SQ: TcxGridDBColumn
          Caption = #1054#1073#1097#1072#1103' '#1087#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'TOTAL_SQ'
          Options.Editing = False
        end
        object clv1LIVING_SQ: TcxGridDBColumn
          Caption = #1046#1080#1083#1072#1103' '#1087#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'LIVING_SQ'
          Options.Editing = False
        end
        object clv1LODGER_CNT: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086' '#1087#1088#1086#1078#1080#1074#1072#1102#1097#1080#1093
          DataBinding.FieldName = 'LODGER_CNT'
          Options.Editing = False
          Width = 84
        end
        object clv1CELLAR_SQ: TcxGridDBColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100' '#1076#1077#1079#1080#1085#1089#1077#1082#1094#1080#1080
          DataBinding.FieldName = 'CELLAR_SQ'
          Width = 71
        end
        object clv1DRTZ_SQ: TcxGridDBColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100' '#1076#1077#1088#1072#1090#1080#1079#1072#1094#1080#1080
          DataBinding.FieldName = 'DRTZ_SQ'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ImmediatePost = True
          Width = 80
        end
        object clv1FLAT_CNT: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086' '#1082#1074#1072#1088#1090#1080#1088
          DataBinding.FieldName = 'FLAT_CNT'
          Width = 51
        end
        object clv1NGP_CNT: TcxGridDBColumn
          Caption = #1082#1086#1083'-'#1074#1086' '#1085#1078#1087
          DataBinding.FieldName = 'NGP_CNT'
        end
        object clv1ACCCODE_CNT: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086' '#1083'/'#1089
          DataBinding.FieldName = 'ACCCODE_CNT'
          Options.Editing = False
          Width = 47
        end
        object clv1FLOOR_CNT: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086' '#1101#1090#1072#1078#1077#1081
          DataBinding.FieldName = 'FLOOR_CNT'
          Width = 48
        end
        object clv1LIFT_CNT: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086' '#1083#1080#1092#1090#1086#1074
          DataBinding.FieldName = 'LIFT_CNT'
          Width = 46
        end
        object clv1ENTRANCE_CNT: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086' '#1087#1086#1076#1098#1077#1079#1076#1086#1074
          DataBinding.FieldName = 'ENTRANCE_CNT'
        end
        object clv1GARBAGE_CNT: TcxGridDBColumn
          Caption = #1063#1080#1089#1083#1086' '#1084#1091#1089#1086#1088#1086#1087#1088#1086#1074#1086#1076#1086#1074
          DataBinding.FieldName = 'GARBAGE_CNT'
        end
        object clv1COMMERCE_SQ: TcxGridDBColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100' '#1085#1077' '#1078#1080#1083#1099#1093' '#1087#1086#1084#1077#1097#1077#1085#1080#1081
          DataBinding.FieldName = 'COMMERCE_SQ'
          Options.Editing = False
        end
        object clv1BUILDYEAR: TcxGridDBColumn
          Caption = #1043#1086#1076' '#1087#1086#1089#1090#1088#1086#1081#1082#1080' '#1076#1086#1084#1072' '
          DataBinding.FieldName = 'BUILDYEAR'
        end
        object clv1ACTIVE: TcxGridDBColumn
          DataBinding.FieldName = 'ACTIVE'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv1MSE: TcxGridDBColumn
          Caption = #1052#1077#1085#1077#1076#1078#1077#1088
          DataBinding.FieldName = 'MSE'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.DropDownSizeable = True
          Properties.DropDownWidth = 180
          Properties.ImmediatePost = True
          Visible = False
          VisibleForCustomization = False
          Width = 144
        end
        object clv1PSE: TcxGridDBColumn
          Caption = #1052#1077#1085#1077#1076#1078#1077#1088' '#1055#1054
          DataBinding.FieldName = 'PSE'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.DropDownSizeable = True
          Visible = False
          VisibleForCustomization = False
          Width = 134
        end
        object clv1BUDGET: TcxGridDBColumn
          Caption = #1064#1072#1073#1083#1086#1085' '#1085#1072#1095#1080#1089#1083#1077#1085#1080#1081
          DataBinding.FieldName = 'BUDGET'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownSizeable = True
          Properties.KeyFieldNames = 'Code'
          Properties.ListColumns = <
            item
              MinWidth = 0
              Width = 0
              FieldName = 'CODE'
            end
            item
              Width = 66
              FieldName = 'NAME'
            end>
          Properties.ListFieldIndex = 1
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = SourceBdg
          Width = 113
        end
        object clv1BUDGETName: TcxGridDBColumn
          Caption = #1064#1072#1073#1083#1086#1085' '#1085#1072#1095#1080#1089#1083#1077#1085#1080#1081
          DataBinding.FieldName = 'BUDGETName'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1Last_KR: TcxGridDBColumn
          Caption = #1050#1072#1087#1088#1077#1084#1086#1085#1090
          DataBinding.FieldName = 'Last_KR'
        end
        object clv1Wall: TcxGridDBColumn
          Caption = #1052#1072#1090#1077#1088#1080#1072#1083' '#1089#1090#1077#1085
          DataBinding.FieldName = 'Wall'
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
          Properties.ListSource = src_wall
          Width = 220
        end
        object clv1GAZ: TcxGridDBColumn
          Caption = #1043#1072#1079
          DataBinding.FieldName = 'GAZ'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownSizeable = True
          Properties.KeyFieldNames = 'CODE'
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
          Properties.ListSource = src_GAZ
        end
        object clv1FASAD: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1092#1072#1089#1072#1076#1072
          DataBinding.FieldName = 'FASAD'
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
          Properties.ListSource = src_Fasad
        end
        object clv1KROV: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1082#1088#1086#1074#1083#1080
          DataBinding.FieldName = 'KROV'
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
          Properties.ListSource = src_Krov
        end
        object clv1VODA: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1074#1086#1076#1086#1085#1072#1075#1088#1077#1074#1072#1090#1077#1083#1103
          DataBinding.FieldName = 'VODA'
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
          Properties.ListSource = src_Voda
        end
        object clv1HAT: TcxGridDBColumn
          Caption = #1057#1080#1089#1090#1077#1084#1072' '#1086#1090#1086#1087#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'HAT'
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
          Properties.ListSource = src_Hat
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object cbb_bdg: TcxLookupComboBox
      Left = 96
      Top = 3
      Properties.DropDownSizeable = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          MinWidth = 0
          Width = 0
          FieldName = 'CODE'
        end
        item
          Width = 65
          FieldName = 'NAME'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = SourceBdg
      Style.HotTrack = False
      TabOrder = 0
      Width = 145
    end
    object btn_set: TcxButton
      Left = 290
      Top = 3
      Width = 131
      Height = 20
      Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100
      TabOrder = 1
      OnClick = btn_setClick
    end
    object grd2: TcxGrid
      Left = 10000
      Top = 10000
      Width = 551
      Height = 230
      TabOrder = 11
      Visible = False
      object v2: TcxGridDBTableView
        OnKeyUp = v2KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v2CellClick
        DataController.DataSource = src_MHOUSE
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object clv2CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv2HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv2WORKER: TcxGridDBColumn
          Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
          DataBinding.FieldName = 'WORKER'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.DropDownSizeable = True
          Visible = False
          Width = 148
        end
        object clv2FIO: TcxGridDBColumn
          Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
          DataBinding.FieldName = 'FIO'
          VisibleForCustomization = False
          Width = 205
        end
        object clv2KONTRNAME: TcxGridDBColumn
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'KONTRNAME'
          Options.Editing = False
          Width = 191
        end
        object clv2WTYPE: TcxGridDBColumn
          Caption = #1058#1080#1087
          DataBinding.FieldName = 'WTYPE'
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
          Properties.ListSource = src_m_wtype
          Width = 124
        end
        object clv2kontragent: TcxGridDBColumn
          DataBinding.FieldName = 'kontragent'
          Visible = False
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object cbb_WTYPE: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.DropDownListStyle = lsFixedList
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
      Properties.ListSource = src_m_wtype
      EditValue = 0
      Style.HotTrack = False
      TabOrder = 7
      Visible = False
      Width = 232
    end
    object btn_save: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Caption = 'btn_save'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FF00FF00FF00FF00FF00FF000000
        0000FF000000FF0000000000000080808000FF000000FF000000FFFFFF00FF00
        FF00FF00FF0000000000FF000000FF00000000000000FF00FF00FF00FF000000
        0000FF000000FF0000000000000080808000FF000000FF000000FFFFFF00FF00
        FF00FF00FF0000000000FF000000FF00000000000000FF00FF00FF00FF000000
        0000FF000000FF00000000000000FF00FF008080800080808000FF00FF00FF00
        FF00FF00FF0000000000FF000000FF00000000000000FF00FF00FF00FF000000
        0000FF000000FF00000080800000000000000000000000000000000000000000
        00000000000080800000FF000000FF00000000000000FF00FF00FF00FF000000
        0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
        0000FF000000FF000000FF000000FF00000000000000FF00FF00FF00FF000000
        0000FF0000008080000000000000000000000000000000000000000000000000
        0000000000000000000080800000FF00000000000000FF00FF00FF00FF000000
        0000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00000000000000FF00FF00FF00FF000000
        0000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00000000000000FF00FF00FF00FF000000
        0000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00000000000000FF00FF00FF00FF000000
        0000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00000000000000FF00FF00FF00FF000000
        00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00000000000000000000000000FF00FF00FF00FF000000
        0000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00000000000000FF00FF00FF00FF00FF00
        FF00000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      PaintStyle = bpsGlyph
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      Visible = False
      OnClick = btn_saveClick
    end
    object btn_edit: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100
      Caption = 'btn_edit'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000130B072C2D20166B31261B6E3229186B322A186B322B196B322B196B322B
        196B322A186B3228186B3024176B2C1F166B2919156B0601011C000000000000
        00006C45308AD4AF8FFFD4B694FFDFC694FFDFCA96FFDFCD97FFDFCE97FFDFCC
        97FFDFCA95FFDFC594FFDCBC91FFD2AC8EFFC69281FF250A0646000000000000
        0000694F3773FFFFFFFFEBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4DDD1FF1406012A000000000000
        0000533C1C59F7F0F0FFE0DAEEFFF1EBEBFFEFE9E8FFEEE9E6FFECE8E4FFE9E5
        E1FFEAE5E3FFEFE8E8FFFBF5F5FFFCF6F6FFEAC7AFFA0101000E000000000000
        00003C2A093FFAF9F5FFE4E4F8FFF6F6F6FFF4F4F4FFF1F1F1FFEFEFEFFFEDED
        EDFFD7DFE9FFA9B4C2FFFFFFFFFFFFFFFFFFD3B798E200000006000000000000
        000022180525F6E8D5FFE2DCF0FFF6EFEFFFF7F0EFFFF9F3F0FFFAF6F1FF88C2
        E6FF8AAEE0FFEEEEF2FFF9F3F3FFF9F4F3FFB39773C500000002000000000000
        00000806010BF5E1BFFFE0DBEEFFF2EDECFFF3EEEDFFF4F0EDFF70C2EEFF16B1
        F3FFB1E0EFFFF3ECECFFF3EDECFFF4EDEDFF937955A600000000000000000000
        000000000001E3D0AAEEE0E0F2FFF1F1F1FFF1F1F1FF6EC1EDFF17B3F4FF9CE4
        F8FFF2F2F2FFF2F2F2FFF3F3F3FFF3F3F3FF735B388500000000000000000000
        000000000000C5AE86D5DBD4E3FFE8E1E1FF69B8E4FF18B5F5FF99E0F3FFECE7
        E3FFEAE4E3FFEAE3E3FFEAE3E3FFEAE4E3FF5138186400000000000000000000
        000000000000AC936DBBD9D4E1FF69BBE7FF1AB7F6FF99DCEDFFE8E4E0FFE8E3
        E0FFE6E1E0FFE6E1E0FFE7E1E1FFE7DDD7FF311B054400000000000000000000
        0000000000008E73559F63B6E8FF1BB9F7FF9ADEF1FFD2D0C9FFE3E3E3FFDBD9
        D6FFDBDBD7FFE4E4E2FFD1D1CCFFE2CFC0FF1108011F00000000000000000000
        0000000000090B5C86AB1DBBF8FF448698A43F3F3F48808080B63F3F3F4A6C6C
        6C8A545454784040404A858585BD3432303D0000000000000000000000000000
        000A005380A21EBCF9FF4D8D9EAA48484854000000006565657C000000024141
        414E2525253000000001696969810000000000000000000000000000000A4349
        4CA84BC2EFFF3472838600000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000002D3C6B91C2C4
        C8FF6A6E6F8D0000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000556FADAE4D5B
        767F000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      PaintStyle = bpsGlyph
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      Visible = False
      OnClick = btn_editClick
    end
    object btn_delete: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Caption = 'btn_delete'
      OptionsImage.Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FDFDFDFBFBFBF9F9F9F6F6F6F4F4F4F3F3F3F3F3F3F4F4F4F6F6F6F8F8F8FBFB
        FBFDFDFDFFFFFFFFFFFFFEFEFEF7F7F7EEEEEEE4E4E4DBDBDBD3D3D3CCCCCCC2
        C2C7C1C1C6CACACAD1D1D1D9D9D9E3E3E3ECECECF6F6F6FEFEFEFFFFFFFFFFFF
        FFFFFFFEFEFEEFEFFA8282E22E2ECC0A0AC40A0AC42E2ECC8282E2EFEFFAFDFD
        FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D3F62727CE0C0CD10D0DE40D
        0DEE0D0DEE0D0DE40C0CD12727CED3D3F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E9E9FA2424D21414ED1616F52929ED1616FB1616FB2828ED1616F51414ED2424
        D2E9E9FAFFFFFFFFFFFFFFFFFFFFFFFF6F6FE11C1CEF1F1FF3A2A2EFE2E2F838
        38EC3838ECE2E2F7A1A1EE1E1EF31C1CEF6F6FE1FFFFFFFFFFFFFFFFFFF8F8FD
        2323DC3B3BF54C4CEDE4E4F9FFFFFFE3E3F8E2E2F8FFFFFFE2E2F83636EA2929
        F52222DCF8F8FDFFFFFFFFFFFFD3D3F53838E16666F56666F56868EEE4E4FAFF
        FFFFFFFFFFE2E2F94545EB3232F23F3FF23A3AE1D3D3F5FFFFFFFFFFFFCCCCF2
        4343DF7B7BF47B7BF47272F0E3E3FAFFFFFFFFFFFFE3E3FA5C5CED6363F27777
        F34545DFCCCCF2FFFFFFFFFFFFECECFA2929D48C8CF27B7BF1E3E3FBFFFFFFE4
        E4FBE4E4FBFFFFFFE4E4FB7B7BEF8C8CF22C2CD4ECECFAFFFFFFFFFFFFFFFFFF
        4747D67474E99393F1B8B8F6E4E4FB8D8DF18E8EF1E4E4FBB9B9F69393F17575
        E94747D6FFFFFFFFFFFFFFFFFFFFFFFFC2C2EF2A2AD89191EE9696F09292F0B2
        B2F4B2B2F49292F09696F09191EE2A2AD8C2C2EFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF9191E33636DD9797F1A2A2F2A2A2F2A2A2F2A2A2F29898F13838DD9191
        E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5B5EB3939D54D4DE16D
        6DED6F6FED5252E23B3BD5B5B5EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFECDCDF1A3A3E5A3A3E5CDCDF1FEFEFEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      PaintStyle = bpsGlyph
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      Visible = False
      OnClick = btn_deleteClick
    end
    object cbb_kontr: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          Caption = #1050#1086#1076
          MinWidth = 0
          Width = 0
          FieldName = 'CODE'
        end
        item
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          FieldName = 'NAME'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = com_dm.src_KONTRAGENT
      Properties.OnChange = cbb_kontrPropertiesChange
      Style.HotTrack = False
      TabOrder = 5
      Visible = False
      Width = 232
    end
    object cbb_worker: TcxLookupComboBox
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
          FieldName = 'FIO'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_worker
      Style.HotTrack = False
      TabOrder = 6
      Visible = False
      Width = 232
    end
    object cbb_mtype: TcxLookupComboBox
      Left = 35
      Top = 520
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
      Properties.ListSource = src_mttype
      Properties.OnEditValueChanged = cbb_mtypePropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 12
      Width = 231
    end
    object grd3: TcxGrid
      Left = 35
      Top = 557
      Width = 230
      Height = 152
      TabOrder = 13
      object v3: TcxGridDBTableView
        OnKeyUp = v3KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v3CellClick
        DataController.DataSource = src_struct
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object clv3CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3Num: TcxGridDBColumn
          Caption = #8470
          DataBinding.FieldName = 'Num'
          Width = 34
        end
        object clv3NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'NAME'
          Width = 194
        end
        object clv3STYPE: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1080
          DataBinding.FieldName = 'STYPE'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l3: TcxGridLevel
        GridView = v3
      end
    end
    object grd4: TcxGrid
      Left = 284
      Top = 492
      Width = 545
      Height = 230
      TabOrder = 14
      object v4: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_def
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object clv4FLAG: TcxGridDBColumn
          DataBinding.FieldName = 'FLAG'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = clv4FLAGPropertiesEditValueChanged
          Width = 26
          IsCaptionAssigned = True
        end
        object clv4Code: TcxGridDBColumn
          DataBinding.FieldName = 'Code'
          Visible = False
          VisibleForCustomization = False
        end
        object clv4Name: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'Name'
          Options.Editing = False
          Width = 299
        end
        object clv4SHOWSTRUCT: TcxGridDBColumn
          DataBinding.FieldName = 'SHOWSTRUCT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv4NUM: TcxGridDBColumn
          DataBinding.FieldName = 'NUM'
          Visible = False
          VisibleForCustomization = False
        end
        object clv4ED: TcxGridDBColumn
          DataBinding.FieldName = 'ED'
          Visible = False
          VisibleForCustomization = False
        end
        object clv4hstruct: TcxGridDBColumn
          DataBinding.FieldName = 'hstruct'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l4: TcxGridLevel
        GridView = v4
      end
    end
    object btn_AddHouse: TcxButton
      Left = 738
      Top = 3
      Width = 117
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1084
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
      TabOrder = 3
      OnClick = btn_AddHouseClick
    end
    object grd5: TcxGrid
      Left = 10000
      Top = 10000
      Width = 250
      Height = 200
      TabOrder = 15
      Visible = False
      object v5: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_HouseReg
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object clv5CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          Width = 44
        end
        object clv5USERNAME: TcxGridDBColumn
          DataBinding.FieldName = 'USERNAME'
          Visible = False
          Width = 52
        end
        object clv5FIO: TcxGridDBColumn
          Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
          DataBinding.FieldName = 'FIO'
          Width = 214
        end
        object clv5LASTTIME: TcxGridDBColumn
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = 'LASTTIME'
          Width = 116
        end
        object clv5HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
        end
        object clv5ISREG: TcxGridDBColumn
          DataBinding.FieldName = 'ISREG'
          Visible = False
        end
        object clv5STATUS: TcxGridDBColumn
          Caption = #1044#1077#1081#1089#1090#1074#1080#1077
          DataBinding.FieldName = 'STATUS'
          Width = 296
        end
      end
      object l5: TcxGridLevel
        GridView = v5
      end
    end
    object btn_Excel: TcxButton
      Left = 422
      Top = 3
      Width = 123
      Height = 20
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      OptionsImage.ImageIndex = 16
      OptionsImage.Images = cmDb.iml1
      TabOrder = 2
      OnClick = btn_ExcelClick
    end
    object grp_root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grp1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp_root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object Itm_cbb: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1064#1072#1073#1083#1086#1085' '#1073#1102#1076#1078#1077#1090#1072
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 286
      Control = cbb_bdg
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object Itm_btnset: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 13
      SizeOptions.Width = 131
      Control = btn_set
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_AddHouse: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 117
      Control = btn_AddHouse
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object Itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grp_root
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object spl1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grp_root
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 2
    end
    object grp4: TdxLayoutGroup
      Parent = grp_root
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      LayoutDirection = ldTabbed
      Index = 3
    end
    object grp_wtype: TdxLayoutGroup
      CaptionOptions.Text = #1052#1077#1085#1077#1076#1078#1077#1088
      Parent = grp4
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 230
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object grp_ed_wtype: TdxLayoutGroup
      Parent = grp_wtype
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 252
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 0
    end
    object itm_cbb_kontr: TdxLayoutItem
      CaptionOptions.Text = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      CaptionOptions.Layout = clTop
      Parent = grp_ed_wtype
      Control = cbb_kontr
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_cbb_worker: TdxLayoutItem
      CaptionOptions.Text = #1057#1086#1090#1088#1091#1076#1085#1080#1082
      CaptionOptions.Layout = clTop
      Parent = grp_ed_wtype
      Control = cbb_worker
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_WTYPE: TdxLayoutItem
      CaptionOptions.Text = #1058#1080#1087
      CaptionOptions.Layout = clTop
      Parent = grp_ed_wtype
      Control = cbb_WTYPE
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object grp_btn_wtype: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Offsets.Top = 4
      Parent = grp_ed_wtype
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object itm_save: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grp_btn_wtype
      Control = btn_save
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_edit: TdxLayoutItem
      AlignHorz = ahCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grp_btn_wtype
      Control = btn_edit
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_delete: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp_btn_wtype
      Control = btn_delete
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_grd2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grp_wtype
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 147
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grp_struct: TdxLayoutGroup
      CaptionOptions.Text = #1054#1090#1089#1091#1090#1089#1090#1074#1091#1102#1097#1080#1077' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1080
      Parent = grp4
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 189
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object grp5: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp_struct
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 224
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object itm_type: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1058#1080#1087' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1080
      CaptionOptions.Layout = clTop
      Parent = grp5
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 231
      Control = cbb_mtype
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_grd3: TdxLayoutItem
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = #1050#1086#1085#1089#1090#1088#1091#1082#1094#1080#1080
      CaptionOptions.Layout = clTop
      Parent = grp5
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 164
      SizeOptions.Width = 230
      Control = grd3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object spl4: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grp_struct
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object itm_grd4: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1042#1080#1076#1099' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1081
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grp_struct
      Control = grd4
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object gr_rootGroup1: TdxLayoutGroup
      CaptionOptions.Text = #1048#1089#1090#1086#1088#1080#1103' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103
      Parent = grp4
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object itm_gdr5: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = gr_rootGroup1
      Control = grd5
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItem_rootItem1: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp1
      Control = btn_Excel
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object ds_house: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE HOUSE'
      'SET '
      '    NOMER = :NOMER,'
      '    STREET = :STREET,'
      '    DU = :DU,'
      '    TOTAL_SQ = :TOTAL_SQ,'
      '    LIVING_SQ = :LIVING_SQ,'
      '    LODGER_CNT = :LODGER_CNT,'
      '    CELLAR_SQ = :CELLAR_SQ,'
      '    FLAT_CNT = :FLAT_CNT,'
      '    ACCCODE_CNT = :ACCCODE_CNT,'
      '    FLOOR_CNT = :FLOOR_CNT,'
      '    LIFT_CNT = :LIFT_CNT,'
      '    ENTRANCE_CNT = :ENTRANCE_CNT,'
      '    GARBAGE_CNT = :GARBAGE_CNT,'
      '    COMMERCE_SQ = :COMMERCE_SQ,'
      '    BUILDYEAR = :BUILDYEAR,'
      '    "ACTIVE" = :"ACTIVE",'
      '    BUDGET = :BUDGET,'
      '    MSE = :MSE,'
      '    LAST_KR = :LAST_KR,'
      '    WALL = :WALL,'
      '    GAZ = :GAZ,'
      '    FASAD = :FASAD,'
      '    KROV = :KROV,'
      '    VODA = :VODA,'
      '    HAT = :HAT,'
      '    PSE = :PSE,'
      '    A = :A,'
      '    DRTZ_SQ = :DRTZ_SQ'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    HOUSE'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO HOUSE('
      '    CODE,'
      '    NOMER,'
      '    STREET,'
      '    DU,'
      '    TOTAL_SQ,'
      '    LIVING_SQ,'
      '    LODGER_CNT,'
      '    CELLAR_SQ,'
      '    FLAT_CNT,'
      '    ACCCODE_CNT,'
      '    FLOOR_CNT,'
      '    LIFT_CNT,'
      '    ENTRANCE_CNT,'
      '    GARBAGE_CNT,'
      '    COMMERCE_SQ,'
      '    BUILDYEAR,'
      '    "ACTIVE",'
      '    BUDGET,'
      '    MSE,'
      '    LAST_KR,'
      '    WALL,'
      '    GAZ,'
      '    FASAD,'
      '    KROV,'
      '    VODA,'
      '    HAT,'
      '    PSE,'
      '    A,'
      '    DRTZ_SQ'
      ')'
      'VALUES('
      '    :CODE,'
      '    :NOMER,'
      '    :STREET,'
      '    :DU,'
      '    :TOTAL_SQ,'
      '    :LIVING_SQ,'
      '    :LODGER_CNT,'
      '    :CELLAR_SQ,'
      '    :FLAT_CNT,'
      '    :ACCCODE_CNT,'
      '    :FLOOR_CNT,'
      '    :LIFT_CNT,'
      '    :ENTRANCE_CNT,'
      '    :GARBAGE_CNT,'
      '    :COMMERCE_SQ,'
      '    :BUILDYEAR,'
      '    :"ACTIVE",'
      '    :BUDGET,'
      '    :MSE,'
      '    :LAST_KR,'
      '    :WALL,'
      '    :GAZ,'
      '    :FASAD,'
      '    :KROV,'
      '    :VODA,'
      '    :HAT,'
      '    :PSE,'
      '    :A,'
      '    :DRTZ_SQ'
      ')')
    RefreshSQL.Strings = (
      'SELECT h.CODE, '
      '       h.NOMER, '
      '       h.STREET,s.name StreetName,'
      '       h.DU,d.name DuName,'
      '       h.TOTAL_SQ, '
      '       h.LIVING_SQ, '
      '       h.LODGER_CNT, '
      '       h.CELLAR_SQ, '
      '       h.FLAT_CNT, '
      '       h.ACCCODE_CNT, '
      '       h.FLOOR_CNT, '
      '       h.LIFT_CNT, '
      '       h.ENTRANCE_CNT, '
      '       h.GARBAGE_CNT, '
      '       h.COMMERCE_SQ, '
      '       h.BUILDYEAR, '
      '       h."ACTIVE", '
      '       h.BUDGET,b.name BUDGETName,'
      '       h.mse,'
      '       h.LAST_KR, '
      '       h.WALL, '
      '       h.GAZ, '
      '       h.FASAD, '
      '       h.KROV, '
      '       h.VODA, '
      '       h.HAT,'
      '       h.PSE,'
      '       h.A, h.DRTZ_SQ'
      'FROM HOUSE h'
      'left outer join street s on h.street=s.code'
      'left outer join du d on h.du=d.code'
      'left outer join budgetshablon b on h.budget=b.code'
      ''
      ' WHERE '
      '        H.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT h.CODE,'
      '       h.NOMER, '
      '       h.STREET,s.name StreetName,'
      '       h.DU,d.name DuName,'
      '       h.TOTAL_SQ, '
      '       h.LIVING_SQ, '
      '       h.LODGER_CNT, '
      '       h.CELLAR_SQ, '
      '       h.FLAT_CNT, '
      '       h.ACCCODE_CNT, '
      '       h.FLOOR_CNT, '
      '       h.LIFT_CNT, '
      '       h.ENTRANCE_CNT, '
      '       h.GARBAGE_CNT, '
      '       h.COMMERCE_SQ, '
      '       h.BUILDYEAR, '
      '       h."ACTIVE", '
      '       h.BUDGET,b.name BUDGETName,'
      '       h.mse,'
      '       h.LAST_KR,'
      '       h.WALL, '
      '       h.GAZ, '
      '       h.FASAD, '
      '       h.KROV, '
      '       h.VODA, '
      '       h.HAT,'
      '       h.PSE,'
      '       h.A, '
      '       h.DRTZ_SQ,'
      '       h.NGP_CNT'
      'FROM HOUSE h'
      'left outer join street s on h.street=s.code'
      'left outer join du d on h.du=d.code'
      'left outer join budgetshablon b on h.budget=b.code')
    AutoUpdateOptions.UpdateTableName = 'BUDGETSHABLON'
    AutoUpdateOptions.KeyFields = 'CODE'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.GeneratorName = 'BUDGETSHABLON_GEN'
    AutoUpdateOptions.UpdateOnlyModifiedFields = True
    AutoUpdateOptions.AutoParamsToFields = True
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    AutoCommit = True
    Left = 48
    Top = 200
  end
  object SourceHouse: TDataSource
    DataSet = ds_house
    Left = 76
    Top = 200
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = clv1ACCCODE_CNT
        Properties.Strings = (
          'Summary.FooterKind'
          'Visible'
          'Width')
      end
      item
        Component = clv1ACTIVE
        Properties.Strings = (
          'Summary.FooterKind'
          'Visible'
          'Width')
      end
      item
        Component = clv1BUDGET
        Properties.Strings = (
          'Summary.FooterKind'
          'Visible'
          'Width')
      end
      item
        Component = clv1BUDGETName
        Properties.Strings = (
          'Summary.FooterKind'
          'Visible'
          'Width')
      end
      item
        Component = clv1BUILDYEAR
        Properties.Strings = (
          'Summary.FooterKind'
          'Visible'
          'Width')
      end
      item
        Component = clv1CELLAR_SQ
        Properties.Strings = (
          'Summary.FooterKind'
          'Visible'
          'Width')
      end
      item
        Component = clv1COMMERCE_SQ
        Properties.Strings = (
          'Summary.FooterKind'
          'Visible'
          'Width')
      end
      item
        Component = clv1DUNAME
        Properties.Strings = (
          'Summary.FooterKind'
          'Visible'
          'Width')
      end
      item
        Component = clv1ENTRANCE_CNT
        Properties.Strings = (
          'Summary.FooterKind'
          'Visible'
          'Width')
      end
      item
        Component = clv1FLAT_CNT
        Properties.Strings = (
          'Summary.FooterKind'
          'Visible'
          'Width')
      end
      item
        Component = clv1FLOOR_CNT
        Properties.Strings = (
          'Summary.FooterKind'
          'Visible'
          'Width')
      end
      item
        Component = clv1GARBAGE_CNT
        Properties.Strings = (
          'Summary.FooterKind'
          'Visible'
          'Width')
      end
      item
        Component = clv1LIFT_CNT
        Properties.Strings = (
          'Summary.FooterKind'
          'Visible'
          'Width')
      end
      item
        Component = clv1LIVING_SQ
        Properties.Strings = (
          'Summary.FooterKind'
          'Visible'
          'Width')
      end
      item
        Component = clv1LODGER_CNT
        Properties.Strings = (
          'Summary.FooterKind'
          'Visible'
          'Width')
      end
      item
        Component = clv1NOMER
        Properties.Strings = (
          'Summary.FooterKind'
          'Visible'
          'Width')
      end
      item
        Component = clv1STREET
        Properties.Strings = (
          'Summary.FooterKind'
          'Visible'
          'Width')
      end
      item
        Component = clv1STREETNAME
        Properties.Strings = (
          'Summary.FooterKind'
          'Visible'
          'Width')
      end
      item
        Component = clv1TOTAL_SQ
        Properties.Strings = (
          'Summary.FooterKind'
          'Visible'
          'Width')
      end
      item
        Component = grp1
        Properties.Strings = (
          'SizeOptions.Height'
          'SizeOptions.Width')
      end
      item
        Component = grp4
        Properties.Strings = (
          'Expanded'
          'SizeOptions.Height')
      end
      item
        Component = grp_ed_wtype
        Properties.Strings = (
          'Expanded')
      end
      item
        Component = grp_wtype
        Properties.Strings = (
          'Expanded')
      end
      item
        Component = v1
        Properties.Strings = (
          'FilterRow.Visible'
          'OptionsView.GroupByBox')
      end>
    StorageName = 'prop1'
    Left = 568
    Top = 24
  end
  object LSkin1: TdxLayoutLookAndFeelList
    Left = 536
    Top = 24
    object LCxSkin1: TdxLayoutCxLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
      LookAndFeel.NativeStyle = False
    end
  end
  object ppm1: TcxGridPopupMenu
    Grid = grd1
    PopupMenus = <>
    AlwaysFireOnPopup = True
    Left = 512
    Top = 24
  end
  object ds_bdg: TpFIBDataSet
    UpdateSQL.Strings = (
      ''
      '    ')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 288
    Top = 160
  end
  object SourceBdg: TDataSource
    DataSet = ds_bdg
    Left = 317
    Top = 160
  end
  object il1: TcxImageList
    FormatVersion = 1
    DesignInfo = 13107317
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
  object mem_wall: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 541
    Top = 152
  end
  object src_wall: TDataSource
    DataSet = mem_wall
    Left = 573
    Top = 152
  end
  object mem_GAZ: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 541
    Top = 184
  end
  object mem_Fasad: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 653
    Top = 232
  end
  object mem_Krov: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 541
    Top = 263
  end
  object mem_Voda: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 573
    Top = 296
  end
  object mem_Hat: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 637
    Top = 112
  end
  object src_GAZ: TDataSource
    DataSet = mem_GAZ
    Left = 573
    Top = 184
  end
  object src_Fasad: TDataSource
    DataSet = mem_Fasad
    Left = 685
    Top = 232
  end
  object src_Krov: TDataSource
    DataSet = mem_Krov
    Left = 573
    Top = 264
  end
  object src_Voda: TDataSource
    DataSet = mem_Voda
    Left = 605
    Top = 296
  end
  object src_Hat: TDataSource
    DataSet = mem_Hat
    Left = 669
    Top = 112
  end
  object m_wtype: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 288
    Top = 224
  end
  object src_m_wtype: TDataSource
    DataSet = m_wtype
    Left = 320
    Top = 224
  end
  object ds_MHOUSE: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE MHOUSE'
      'SET '
      '    HOUSE = :HOUSE,'
      '    WORKER = :WORKER,'
      '    KONTRAGENT = :KONTRAGENT,'
      '    WTYPE = :WTYPE'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    MHOUSE'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO MHOUSE('
      '    CODE,'
      '    HOUSE,'
      '    WORKER,'
      '    KONTRAGENT,'
      '    WTYPE'
      ')'
      'VALUES('
      '    :CODE,'
      '    :HOUSE,'
      '    :WORKER,'
      '    :KONTRAGENT,'
      '    :WTYPE'
      ')')
    RefreshSQL.Strings = (
      'SELECT mh.CODE, '
      '       mh.HOUSE, '
      '       mh.WORKER,(p.f||'#39' '#39'||p.i||'#39' '#39'||p.o) fio,'
      '       mh.kontragent, k.name KontrName,'
      '       mh.WTYPE'
      'FROM MHOUSE mh'
      'left outer join worker w on w.code=mh.worker'
      'left outer join piple p on p.code=w.piple'
      'left outer join kontragent k on k.code=mh.kontragent'
      ''
      ' WHERE '
      '        MH.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT mh.CODE, '
      '       mh.HOUSE, '
      '       mh.WORKER,(p.f||'#39' '#39'||p.i||'#39' '#39'||p.o) fio,'
      '       mh.kontragent, k.name KontrName,'
      '       mh.WTYPE'
      'FROM MHOUSE mh'
      'left outer join worker w on w.code=mh.worker'
      'left outer join piple p on p.code=w.piple'
      'left outer join kontragent k on k.code=mh.kontragent')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 160
    Top = 160
  end
  object src_MHOUSE: TDataSource
    DataSet = ds_MHOUSE
    Left = 189
    Top = 160
  end
  object ds_worker: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT w.CODE, '
      '       w.KONTRAGENT, '
      '       w.PIPLE,'
      '       (p.f||'#39' '#39'||p.i||'#39' '#39'||p.o) fio,'
      '       w.AROLE'
      'FROM WORKER w'
      'left outer join PIPLE p on p.code=w.piple')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 160
    Top = 216
  end
  object src_worker: TDataSource
    DataSet = ds_worker
    Left = 192
    Top = 216
  end
  object mt_type: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 376
    Top = 568
  end
  object src_mttype: TDataSource
    DataSet = mt_type
    Left = 404
    Top = 568
  end
  object ds_struct: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE SHOWSTRUCT'
      'SET '
      '    NAME = :NAME,'
      '    STYPE = :STYPE,'
      '    NUM = :NUM'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    SHOWSTRUCT'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO SHOWSTRUCT('
      '    CODE,'
      '    NAME,'
      '    STYPE,'
      '    NUM'
      ')'
      'VALUES('
      '    :CODE,'
      '    :NAME,'
      '    :STYPE,'
      '    :NUM'
      ')')
    RefreshSQL.Strings = (
      'select * from SHOWSTRUCT '
      ''
      ' WHERE '
      '        SHOWSTRUCT.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'select * from SHOWSTRUCT '
      'order by SType, Num')
    AutoUpdateOptions.UpdateTableName = 'SHOWSTRUCT'
    AutoUpdateOptions.KeyFields = 'Code'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.GeneratorName = 'SHOWSTRUCT_GEN'
    AutoUpdateOptions.UpdateOnlyModifiedFields = True
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    AutoCommit = True
    Left = 455
    Top = 568
  end
  object src_struct: TDataSource
    DataSet = ds_struct
    Left = 484
    Top = 568
  end
  object src_defect: TDataSource
    DataSet = ds_defect
    Left = 480
    Top = 504
  end
  object ds_defect: TpFIBDataSet
    UpdateSQL.Strings = (
      ''
      '    ')
    DeleteSQL.Strings = (
      ''
      '    ')
    SelectSQL.Strings = (
      'SELECT iif(hs.code is null, 0,1) FLAG,'
      '       sd.CODE,'
      '       sd.SHOWSTRUCT, '
      '       sd.NAME, '
      '       sd.NUM, '
      '       sd.ED,'
      '       hs.code hstruct'
      'FROM STRUCTDEFECT sd'
      
        'left outer join housestruct hs on hs.structdefect=sd.code and hs' +
        '.house=:house')
    AutoUpdateOptions.UpdateTableName = 'STRUCTDEFECT'
    AutoUpdateOptions.KeyFields = 'CODE'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.GeneratorName = 'STRUCTDEFECT_GEN'
    AutoUpdateOptions.UpdateOnlyModifiedFields = True
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    AfterOpen = ds_defectAfterOpen
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 451
    Top = 504
    dcForceOpen = True
  end
  object m_def: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 448
    Top = 440
  end
  object src_def: TDataSource
    DataSet = m_def
    Left = 480
    Top = 440
  end
  object ds_HouseReg: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT hr.CODE, '
      '       hr.USERNAME,(p.f||'#39' '#39'||p.i||'#39' '#39'||p.o) fio,'
      '       hr.LASTTIME, '
      '       hr.HOUSE,'
      '       hr.ISREG,'
      '       case'
      '         when hr.ISREG = 0 then '#39#1076#1086#1084' '#1074#1099#1074#1077#1076#1077#1085' '#1080#1079' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1080#39
      '         when hr.ISREG = 1 then '#39#1076#1086#1084' '#1074#1074#1077#1076#1077#1085' '#1074' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1102#39
      '       end Status'
      'FROM HOUSEREG hr'
      'left outer join worker w on w.username = hr.username'
      'left outer join piple p on p.code = w.piple')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 456
    Top = 632
  end
  object src_HouseReg: TDataSource
    DataSet = ds_HouseReg
    Left = 488
    Top = 632
  end
  object dlgSave1: TSaveDialog
    Filter = 'Excel|*.xls'
    Left = 320
    Top = 272
  end
end
