object WorkListForm: TWorkListForm
  Left = 0
  Top = 0
  Caption = #1053#1072#1088#1103#1076#1099
  ClientHeight = 764
  ClientWidth = 920
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
    Width = 920
    Height = 764
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = laf1
    object grd1: TcxGrid
      Left = 41
      Top = 34
      Width = 866
      Height = 171
      TabOrder = 1
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
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
        OnEditKeyDown = v1EditKeyDown
        DataController.DataSource = src_worklist
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv1DATA
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.ImmediateEditor = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Width = 35
        end
        object clv1DATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = 'DATA'
          Width = 78
        end
        object clv1KONTRAGENT: TcxGridDBColumn
          Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
          DataBinding.FieldName = 'KONTRAGENT'
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
          Properties.ListSource = src_kontr
          Width = 157
        end
        object clv1streetname: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'streetname'
          Width = 187
        end
        object clv1nomer: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'nomer'
          Width = 45
        end
        object clv1DUNAME: TcxGridDBColumn
          Caption = #1044#1086#1084#1086#1091#1087#1088#1072#1074#1083#1077#1085#1080#1077
          DataBinding.FieldName = 'DUNAME'
          Width = 145
        end
        object clv1FIO: TcxGridDBColumn
          Caption = #1052#1072#1089#1090#1077#1088
          DataBinding.FieldName = 'FIO'
          Width = 136
        end
        object clv1NOTE: TcxGridDBColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          DataBinding.FieldName = 'NOTE'
          Width = 154
        end
        object clv1Street: TcxGridDBColumn
          DataBinding.FieldName = 'Street'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1KontrName: TcxGridDBColumn
          Caption = #1055#1086#1076#1088#1103#1076#1085#1072#1103' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'KontrName'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1DU: TcxGridDBColumn
          DataBinding.FieldName = 'DU'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1PSE: TcxGridDBColumn
          DataBinding.FieldName = 'worker'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 288
      Top = 237
      Width = 326
      Height = 258
      TabOrder = 13
      object v2: TcxGridDBTableView
        OnDragOver = v2DragOver
        OnKeyUp = v2KeyUp
        Navigator.Buttons.OnButtonClick = v2NavigatorButtonsButtonClick
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Hint = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        OnCellClick = v2CellClick
        DataController.DataSource = src_WorkSpecList
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        DataController.OnDataChanged = v2DataControllerDataChanged
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.NavigatorHints = True
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv2CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2DATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = 'DATA'
          Width = 81
        end
        object clv2KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2SERVISWORK: TcxGridDBColumn
          Caption = #1056#1072#1073#1086#1090#1072' '#1087#1086' '#1085#1072#1088#1103#1076#1091
          DataBinding.FieldName = 'SERVISWORK'
          Visible = False
          VisibleForCustomization = False
          Width = 159
        end
        object clv2sworkname: TcxGridDBColumn
          Caption = #1056#1072#1073#1086#1090#1072' '#1087#1086' '#1085#1072#1088#1103#1076#1091
          DataBinding.FieldName = 'sworkname'
          Width = 146
        end
        object clv2Street: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'Street'
          Visible = False
          VisibleForCustomization = False
          Width = 136
        end
        object clv2streetname: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'streetname'
          Visible = False
          VisibleForCustomization = False
          Width = 146
        end
        object clv2HOUSE: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
          Width = 59
        end
        object clv2nomer: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'nomer'
          Visible = False
          VisibleForCustomization = False
          Width = 43
        end
        object clv2ADDR: TcxGridDBColumn
          Caption = #1050#1074#1072#1088#1090#1080#1088#1072
          DataBinding.FieldName = 'ADDR'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2flat: TcxGridDBColumn
          Caption = #1050#1074#1072#1088#1090#1080#1088#1072
          DataBinding.FieldName = 'flat'
          Visible = False
          VisibleForCustomization = False
          Width = 60
        end
        object clv2ED: TcxGridDBColumn
          Caption = #1045#1076'. '#1080#1079#1084'.'
          DataBinding.FieldName = 'ED'
          Visible = False
          VisibleForCustomization = False
          Width = 69
        end
        object clv2NOTE: TcxGridDBColumn
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1088#1072#1073#1086#1090' ('#1084#1077#1089#1090#1086')'
          DataBinding.FieldName = 'NOTE'
          Width = 252
        end
        object clv2WORKLIST: TcxGridDBColumn
          DataBinding.FieldName = 'WORKLIST'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2Quantity: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086
          DataBinding.FieldName = 'Quantity'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.ImmediatePost = True
          Properties.ValueType = vtFloat
          Width = 93
        end
        object clv2PRICE: TcxGridDBColumn
          Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'PRICE'
          Width = 175
        end
        object clv2jwork: TcxGridDBColumn
          DataBinding.FieldName = 'jwork'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object grd3: TcxGrid
      Left = 288
      Top = 546
      Width = 629
      Height = 213
      TabOrder = 27
      object v3: TcxGridDBTableView
        OnKeyUp = v3KeyUp
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
        OnCellClick = v3CellClick
        OnEditKeyDown = v3EditKeyDown
        DataController.DataSource = src_WorkSpecMaterial
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.ImmediateEditor = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv3CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3WORKSPECLIST: TcxGridDBColumn
          DataBinding.FieldName = 'WORKSPECLIST'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3DATA: TcxGridDBColumn
          DataBinding.FieldName = 'DATA'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3SERVISWORK: TcxGridDBColumn
          DataBinding.FieldName = 'SERVISWORK'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3ADDR: TcxGridDBColumn
          DataBinding.FieldName = 'ADDR'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3SERVISMATERIAL: TcxGridDBColumn
          Caption = #1052#1072#1090#1077#1088#1080#1072#1083
          DataBinding.FieldName = 'SERVISMATERIAL'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.CaseSensitiveSearch = True
          Properties.DropDownAutoSize = True
          Properties.DropDownHeight = 300
          Properties.DropDownRows = 30
          Properties.DropDownWidth = 450
          Properties.View = com_dm.v_ServisMaterial
          Properties.KeyFieldNames = 'CODE'
          Properties.ListFieldItem = com_dm.cl_ServisMaterial_NAME
          Width = 145
        end
        object clv3QUANTITY: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086
          DataBinding.FieldName = 'QUANTITY'
          Width = 74
        end
        object clv3PRICE: TcxGridDBColumn
          Caption = #1062#1077#1085#1072
          DataBinding.FieldName = 'PRICE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.0000;-,0.0000'
          Width = 98
        end
        object clv3NOTE: TcxGridDBColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          DataBinding.FieldName = 'NOTE'
          Width = 236
        end
      end
      object l3: TcxGridLevel
        GridView = v3
      end
    end
    object doc_br1: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 28
      Height = 732
      Align = dalLeft
      BarManager = brm1
      SunkenBorder = False
      UseOwnSunkenBorder = True
      Visible = False
    end
    object doc_br2: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 27
      Height = 702
      Align = dalLeft
      BarManager = brm1
      SunkenBorder = False
      UseOwnSunkenBorder = True
      Visible = False
    end
    object doc_br3: TdxBarDockControl
      Left = 13
      Top = 34
      Width = 27
      Height = 171
      Align = dalLeft
      BarManager = brm1
      SunkenBorder = False
      UseOwnSunkenBorder = True
    end
    object grd4: TcxGrid
      Left = 620
      Top = 237
      Width = 295
      Height = 258
      Align = alClient
      TabOrder = 15
      object v4: TcxGridDBTableView
        OnDragDrop = v4DragDrop
        OnDragOver = v4DragOver
        OnKeyUp = v4KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v4CellClick
        DataController.DataSource = src_Jwork
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv4WORKSPECLIST: TcxGridDBColumn
          DataBinding.FieldName = 'WORKSPECLIST'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = il1
          Properties.Items = <>
          Properties.ShowDescriptions = False
          Width = 20
          IsCaptionAssigned = True
        end
        object clv4CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv4JWORKTYPE: TcxGridDBColumn
          DataBinding.FieldName = 'JWORKTYPE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv4JTNAME: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1088#1072#1073#1086#1090#1099
          DataBinding.FieldName = 'JTNAME'
          Width = 149
        end
        object clv4REGDATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103
          DataBinding.FieldName = 'REGDATE'
          Width = 97
        end
        object clv4KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv4HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv4DESCRIPTION: TcxGridDBColumn
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1087#1083#1072#1085#1080#1088#1091#1077#1084#1099#1093' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'DESCRIPTION'
          Width = 157
        end
        object clv4PLACE: TcxGridDBColumn
          Caption = #1052#1077#1089#1090#1086' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'PLACE'
          Width = 122
        end
        object clv4PLANDATE: TcxGridDBColumn
          Caption = #1055#1083#1072#1085#1086#1074#1072#1103' '#1076#1072#1090#1072
          DataBinding.FieldName = 'PLANDATE'
          Width = 110
        end
        object clv4FACTDATE: TcxGridDBColumn
          DataBinding.FieldName = 'FACTDATE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv4NOTE: TcxGridDBColumn
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1074#1099#1087#1086#1083#1085#1077#1085#1099#1093' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'NOTE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv4SHOWRESULT: TcxGridDBColumn
          DataBinding.FieldName = 'SHOWRESULT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv4STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l4: TcxGridLevel
        GridView = v4
      end
    end
    object txt_w: TcxTextEdit
      Left = 3
      Top = 498
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 14
      Width = 611
    end
    object txt_j: TcxTextEdit
      Left = 642
      Top = 498
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 17
      Width = 273
    end
    object btn_link: TcxButton
      Left = 620
      Top = 498
      Width = 21
      Height = 21
      Hint = #1057#1074#1103#1079#1072#1090#1100' '#1089' '#1078#1082#1088#1085#1072#1083#1086#1084
      Caption = 'btn_link'
      PaintStyle = bpsGlyph
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
      OnClick = btn_linkClick
    end
    object cbb_mat: TcxLookupComboBox
      Left = 86
      Top = 562
      Properties.DropDownSizeable = True
      Properties.DropDownWidth = 250
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          MinWidth = 0
          Width = 0
          FieldName = 'CODE'
        end
        item
          FieldName = 'Name'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_smat
      Properties.OnChange = cbb_matPropertiesChange
      Properties.OnEditValueChanged = cbb_matPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 18
      Width = 163
    end
    object btn_mat: TcxButton
      Left = 250
      Top = 562
      Width = 27
      Height = 21
      Caption = 'btn_mat'
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
      PaintStyle = bpsGlyph
      TabOrder = 19
      OnClick = btn_matClick
    end
    object edsp_kol: TcxSpinEdit
      Left = 86
      Top = 584
      Properties.ImmediatePost = True
      Properties.ValueType = vtFloat
      Style.HotTrack = False
      TabOrder = 20
      Width = 191
    end
    object cedt_price: TcxCurrencyEdit
      Left = 86
      Top = 628
      Properties.DisplayFormat = ',0.0000;-,0.0000'
      Properties.UseDisplayFormatWhenEditing = True
      Style.HotTrack = False
      TabOrder = 22
      Width = 191
    end
    object m_note: TcxMemo
      Left = 13
      Top = 665
      Style.HotTrack = False
      TabOrder = 23
      Height = 55
      Width = 264
    end
    object btn_post: TcxButton
      Left = 13
      Top = 721
      Width = 75
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
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
      TabOrder = 24
      OnClick = btn_postClick
    end
    object btn_edit_m: TcxButton
      Left = 91
      Top = 721
      Width = 107
      Height = 25
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000001515
        151F8A8A8A9F8888889D8686869B8484849983838397818181957F7E7E937C7B
        7A907777768E757575885C5C5C720F0F0F210000000000000000000000002222
        222FF8F8F8FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF5F4
        F4FFF1EFEFFFF0EFEFFFF7F7F7FFB5B5B5D10101010800000000151616383E45
        4F7BF6F6F6FFF6F6F6FFF6F6F6FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
        F5FFF5F3F3FFF2EFEFFFEFEFEFFFF2F2F2FF0C0C0C1900000000000000007085
        A3B36CA8DAFFD1E0EAFFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
        F4FFF4F4F4FFF4F3F3FFF2EFEFFFEFEEEEFF1A1A1A2500000000000000001E23
        272F55C4F6FF1796DFFFBED6E5FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
        F3FFF3F3F3FFF4F4F4FFF4F3F2FFF2F0EFFF1A1A1A2400000000000000001717
        1722DDEEF4FF50C5F6FF0E96E1FFAACBE1FFF1F1F1FFF1F1F1FFF1F1F1FFF2F2
        F2FFF2F2F2FFF3F3F3FFF3F3F3FFF4F2F2FF1A1A1A2400000000000000001717
        1721F2F2F2FFE3EEF3FF61CAF6FF0A98E5FF93C0DDFFF0F0F0FFF0F0F0FFF0F0
        F0FFF1F1F1FFF2F2F2FFF3F3F3FFF3F3F3FF1919192300000000000000001616
        1620F2F2F2FFF1F1F1FFE6EDF0FF70CFF5FF0B9DE9FF7BB4D9FFEEEEEEFFEFEF
        EFFFF0F0F0FFF1F1F1FFF2F2F2FFF2F2F2FF1818182100000000000000001515
        151EF1F1F1FFF0F0F0FFEFEFEFFFE8ECEEFF7FD2F4FF0FA3ECFF62AAD8FFEAEB
        ECFFEFEFEFFFF0F0F0FFF1F1F1FFF2F2F2FF1515151E00000000000000001313
        131CF0F0F0FFF0F0F0FFEEEEEEFFEDEDEDFFE9EBECFF8CD5F2FF16A9EEFF4CA2
        D8FFE5E8EAFFEFEFEFFFF1F1F1FFF1F1F1FF1212121B00000000000000001010
        1019EFEFEFFFEFEFEFFFEDEDEDFFECECECFFEAEAEAFFE9E9EAFF99D7F0FF1EAE
        F1FF399DD9FFD9E1E6FFF0F0F0FFF0F0F0FF0F0F0F1800000000000000000E0E
        0E17EFEFEFFFEFEFEFFFEDEDEDFFEBEBEBFFE9E9E9FFE8E8E8FFE9E9E9FFA7DA
        EFFF2FB4EFFFABBECAFFE1E2E3FFF0F0F0FF0B0B0B1300000000000000000C0C
        0C14EEEEEEFFEFEFEFFFEDEDEDFFEBEBEBFFE9E9E9FFE8E8E8FFE9E9E9FFEBEB
        EBFFD1DBE0FFC3C3C3FFB5C0DDFFD6DCEEFF0808080F00000000000000000A0A
        0A12EEEEEEFFEFEFEFFFEDEDEDFFEBEBEBFFEAEAEAFFE9E9E9FFE9E9E9FFEBEB
        EBFFEDEDEDFFDBDEE8FFC8D8FDFFD8DFF3FF0505050B00000000000000000909
        0910EEEEEEFFEFEFEFFFEEEEEEFFECECECFFEBEBEBFFEBEBEBFFEBEBEBFFECEC
        ECFFEDEDEDFFEFEFEFFFE5E7F1FFEEEEEEFF0202020700000000000000000303
        03065E5E5E6D6161616F62626270626262706262627162626271626262726262
        62726161617161616171616161715F5F5F700000000300000000}
      TabOrder = 25
      OnClick = btn_edit_mClick
    end
    object btn_del_m: TcxButton
      Left = 202
      Top = 721
      Width = 75
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Enabled = False
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000010101020101010401010106010101090101010B0101010C0101010C0101
        010B010101090101010701010104010101020000000000000000000000010101
        0108010101110101011B010101240101012C010101330101053D0101053E0101
        01350101012E010101260101011C010101130101010900000001000000000000
        0000000000000000000101010C11060667830909A7D90A0AC3FE0A0AC3FE0909
        A7D90606678301010C1101010102000000000000000000000000000000000000
        0000000000000303262E0A0AB0E10C0CD1FF0D0DE4FF0D0DEEFF0D0DEEFF0D0D
        E4FF0C0CD1FF0A0AB0E10303262E000000000000000000000000000000000000
        0000020213170B0BB9E51414EDFF1616F5FF2929EDFF1616FBFF1616FBFF2828
        EDFF1616F5FF1414EDFF0B0BB9E5020213170000000000000000000000000000
        0000070779971C1CEFFF1F1FF3FFA2A2EFFFE2E2F8FF3838ECFF3838ECFFE2E2
        F7FFA1A1EEFF1E1EF3FF1C1CEFFF070779970000000000000000000000000101
        06071616CEF13B3BF5FF4C4CEDFFE4E4F9FFFFFFFFFFE3E3F8FFE2E2F8FFFFFF
        FFFFE2E2F8FF3636EAFF2929F5FF1515CEF10101060700000000000000000202
        242E3838E1FF6666F5FF6666F5FF6868EEFFE4E4FAFFFFFFFFFFFFFFFFFFE2E2
        F9FF4545EBFF3232F2FF3F3FF2FF3A3AE1FF0202242E00000000000000000202
        29354343DFFF7B7BF4FF7B7BF4FF7272F0FFE3E3FAFFFFFFFFFFFFFFFFFFE3E3
        FAFF5C5CEDFF6363F2FF7777F3FF4545DFFF0202293500000000000000000101
        0F142828D2FD8C8CF2FF7B7BF1FFE3E3FBFFFFFFFFFFE4E4FBFFE4E4FBFFFFFF
        FFFFE4E4FBFF7B7BEFFF8C8CF2FF2B2BD2FD01010F1400000000000000000000
        0000090999C17474E9FF9393F1FFB8B8F6FFE4E4FBFF8D8DF1FF8E8EF1FFE4E4
        FBFFB9B9F6FF9393F1FF7575E9FF0A0A99C10000000000000000000000000000
        000003032F3F2929D6FD9191EEFF9696F0FF9292F0FFB2B2F4FFB2B2F4FF9292
        F0FF9696F0FF9191EEFF2929D6FD03032F3F0000000000000000000000000000
        000000000000050557723636DCFE9797F1FFA2A2F2FFA2A2F2FFA2A2F2FFA2A2
        F2FF9898F1FF3838DCFE05055772000000000000000000000000000000000000
        000000000000000000000404394D1515B1DA4D4DE1FF6D6DEDFF6F6FEDFF5252
        E2FF1616B1DA0404394D00000000000000000000000000000000000000000000
        0000000000000000000000000000000001010303263405054660050546600303
        2634000001010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 26
      OnClick = btn_del_mClick
    end
    object txt_ed: TcxTextEdit
      Left = 86
      Top = 606
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 21
      Width = 191
    end
    object dt1: TcxDateEdit
      Left = 86
      Top = 275
      Style.HotTrack = False
      TabOrder = 3
      Width = 191
    end
    object cbb_work: TcxLookupComboBox
      Left = 86
      Top = 297
      Properties.DropDownHeight = 150
      Properties.DropDownSizeable = True
      Properties.DropDownWidth = 250
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
      Properties.ListSource = src_serviswork
      Properties.OnChange = cbb_workPropertiesChange
      Properties.OnEditValueChanged = cbb_workPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 4
      Width = 155
    end
    object txt_wed: TcxTextEdit
      Left = 86
      Top = 319
      TabStop = False
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 6
      Width = 191
    end
    object ed_col: TcxSpinEdit
      Left = 86
      Top = 341
      Properties.ValueType = vtFloat
      Style.HotTrack = False
      TabOrder = 7
      Width = 191
    end
    object ced_wprice: TcxCurrencyEdit
      Left = 86
      Top = 363
      Style.HotTrack = False
      TabOrder = 8
      Width = 191
    end
    object m_wnote: TcxMemo
      Left = 13
      Top = 400
      Style.HotTrack = False
      TabOrder = 9
      Height = 46
      Width = 264
    end
    object btn_wAdd: TcxButton
      Left = 13
      Top = 447
      Width = 75
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 10
      OnClick = btn_wAddClick
    end
    object btn_wEdit: TcxButton
      Left = 91
      Top = 447
      Width = 107
      Height = 25
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 11
      OnClick = btn_wEditClick
    end
    object btn_wDel: TcxButton
      Left = 202
      Top = 447
      Width = 75
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Enabled = False
      TabOrder = 12
      OnClick = btn_wDelClick
    end
    object btn_w: TcxButton
      Left = 242
      Top = 297
      Width = 35
      Height = 21
      Caption = 'btn_w'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000010101010101010101010101000000000107040B0109050F010A050F010A
        050F010A050F010B060F010B060F0108040B0000000000000000000000000000
        000084AD96CFD1EDDDFFD1F1DFFF183E294A72AC8CDDC3E5D2FFC4E7D3FFC4E9
        D4FFC4EAD5FFC4ECD6FFC4EED6FF69B58ACF0000000000000000000000000000
        000086AE98CFD4EEE0FFD4F2E1FF183E294A74AD8EDEC6E7D5FFC7E8D5FFC7EA
        D6FFC7EBD7FFC7EDD8FFC7EED8FF6AB68CD00000000000000000000000000000
        000002130A21021B0D2A021E0F2A0108040B0220103803291446032B1546032D
        1646032F17460331184603331946032713340000000000000000000000000000
        00009BB8A7D0F5FBF7FFF5FBF8FF1C3F2C4B86B69CDEE7F4EDFFE7F5EDFFE7F6
        EEFFE7F6EEFFE7F7EEFFE7F8EFFF7BBB97D00000000000000000000000000000
        00006F9580B4AFCCBCDEAFCFBDDE153523405E9978CAA1CBB4EBA1CEB5EBA1CF
        B6EBA1D1B6EBA1D4B7EBA1D6B9EB57A379BD0000000000000000000000000000
        000041604E7866837294668674940C22162A34644A8B58836BA259856CA25987
        6DA259896EA2598B6FA25A8D70A2306D4B820000000000000000000000000000
        0000A2BBACD0FFFFFFFFFFFFFFFF1D402C4B94BCA6DEFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF87BE9FD00000000000000000000000000000
        00002946365C41614F7342645173081A10201F50357834684B8F346B4C8F346D
        4D8F34704F8F3472508F3575518F1D5B39700000000000000000000000000000
        000086AE98CFD4EEE0FFD4F2E1FF183E294A74AD8EDEC6E7D5FFC7E8D5FFC7EA
        D6FFC7EBD7FFC7EDD8FFC7EED8FF6AB68CD00000000000000000000000000000
        000084AD96CFD1EDDDFFD1F1DFFF183E294A72AC8CDDC3E5D2FFC4E7D3FFC4E9
        D4FFC4EAD5FFC4ECD6FFC4EED6FF69B58ACF0000000000000000000000000000
        0000010101010101010101010101000000000107040B0109050F010A050F010A
        050F010A050F010B060F010B060F0108040B0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      PaintStyle = bpsGlyph
      TabOrder = 5
      OnClick = btn_wClick
    end
    object cbb_filtr: TcxComboBox
      Left = 86
      Top = 253
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        #1042#1089#1077' '#1088#1072#1073#1086#1090#1099
        #1057#1072#1085#1090#1077#1093#1085#1080#1095#1077#1089#1082#1080#1077' '#1088#1072#1073#1086#1090#1099
        #1054#1073#1097#1077#1089#1090#1088#1086#1080#1090#1077#1083#1100#1085#1099#1077' '#1088#1072#1073#1086#1090#1099
        #1069#1083#1077#1082#1090#1088#1086#1084#1086#1085#1090#1072#1078#1085#1099#1077' '#1088#1072#1073#1086#1090#1099)
      Properties.OnEditValueChanged = cbb_filtrPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 2
      Text = #1042#1089#1077' '#1088#1072#1073#1086#1090#1099
      Width = 191
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = laf1
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 4
      ShowBorder = False
      Index = -1
    end
    object grplc1Group3: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1053#1072#1088#1103#1076#1099
      LayoutLookAndFeel = laf1
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 0
    end
    object grplc1Group4: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grplc1Group3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itm_doc_br3: TdxLayoutItem
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = grplc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 154
      Control = doc_br3
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1053#1072#1088#1103#1076#1099
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      LayoutLookAndFeel = laf1
      Parent = grplc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 171
      SizeOptions.Width = 723
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object spl1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      LayoutLookAndFeel = laf2
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      SizeOptions.Width = 10
      Index = 1
    end
    object grp_3: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object grplc1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp_3
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object itm_filtr: TdxLayoutItem
      CaptionOptions.Text = #1060#1080#1083#1100#1090#1088' '#1088#1072#1073#1086#1090
      Parent = grp_workAdd
      Control = cbb_filtr
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grp_workAdd: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avClient
      Parent = grplc1Group7
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 284
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
          Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1087#1086#1083#1103' '#1074#1074#1086#1076#1072
          OnClick = grp_workAddButton0Click
        end>
      ButtonOptions.ShowExpandButton = True
      ItemIndex = 6
      Index = 0
    end
    object itm_dt1: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072
      Parent = grp_workAdd
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grplc1Group12: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp_workAdd
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object itm_cbb_work: TdxLayoutItem
      AlignHorz = ahClient
      CaptionOptions.Text = #1056#1072#1073#1086#1090#1072
      Parent = grplc1Group12
      Control = cbb_work
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_wspr: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group12
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 21
      SizeOptions.Width = 35
      Control = btn_w
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_wed: TdxLayoutItem
      CaptionOptions.Text = #1045#1076'. '#1080#1079#1084'.'
      Parent = grp_workAdd
      Control = txt_wed
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_wed_col: TdxLayoutItem
      CaptionOptions.Text = #1054#1073#1098#1077#1084
      Parent = grp_workAdd
      Control = ed_col
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itm_wprice: TdxLayoutItem
      CaptionOptions.Text = #1057#1090#1086#1080#1084#1086#1089#1090#1100
      Parent = grp_workAdd
      Control = ced_wprice
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object itm_wnote: TdxLayoutItem
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      CaptionOptions.Layout = clTop
      Parent = grp_workAdd
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 61
      Control = m_wnote
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object grplc1Group11: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp_workAdd
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 7
    end
    object itm_wAdd: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group11
      Control = btn_wAdd
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_wEdit: TdxLayoutItem
      AlignHorz = ahCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group11
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 107
      Control = btn_wEdit
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_wDel: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group11
      Control = btn_wDel
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object itm_grd2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103' '#1085#1072#1088#1103#1076#1086#1074
      CaptionOptions.Layout = clTop
      LayoutLookAndFeel = laf1
      Parent = grplc1Group7
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 181
      SizeOptions.Width = 401
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_w: TdxLayoutItem
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxTextEdit1'
      CaptionOptions.Visible = False
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 310
      Control = txt_w
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object spl3: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      LayoutLookAndFeel = laf2
      Parent = grp_3
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = True
      Index = 1
    end
    object grplc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp_3
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 2
    end
    object itm_grd4: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1046#1091#1088#1085#1072#1083' '#1088#1072#1073#1086#1090
      CaptionOptions.Layout = clTop
      Parent = grplc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      Control = grd4
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grplc1Group5: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grplc1Group2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object itm_link: TdxLayoutItem
      AlignVert = avBottom
      CaptionOptions.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000330000002F000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000033008B49FF008246F1000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000033008743FFA1E2D5FF239A60FF000000330000
        0033000000330000003300000022000000000000000000000000000000000000
        00000000000000000033008743FF93DCC9FF1ACAADFF00B68EFF009658FF0097
        5BFF008B4AFF008945FF005B30B9000000330000000000000000000000000000
        000000000000008A48FF81DBC2FF14CEA9FF00C499FF57DBC1FF56DCC3FF56DD
        C4FF56DEC5FF56DCC4FF44C19AFF008B4AFF0000003300000000000000000000
        000000000000008A48FF6FD7B8FF12D5A9FF00CD9BFF00CE9DFF00D1A0FF00D2
        A1FF00D1A0FF00D1A0FF1DD8AEFF2FCCA3FF018A49FF0000001E000000000000
        00000000000000000000008744FF5FD1ACFF11DDAAFF00CA90FF008B49FF0087
        45FF009C5EFF00A568FF00C48AFF04DDA8FF16BA83FF01532DAA000000000000
        0033000000330000001A00000000008846FF4ED3A9FF129155FF000000000000
        002D00000033004B2889008043F000B578FF00D89FFF008B4BFF00000000008D
        4DFF008B4BFF004626990000002C0000001400592FA2008D4CFF00000000007B
        42E5008C4AFF0000003300000000005C31A8008B4BFF008D4DFF00000000008B
        4BFF00D89FFF00B578FF00773EE400361D820000003300000033000000331191
        54FF53D4AAFF008846FF00000033000000000000000000000000000000000252
        2D951ABA86FF07DBA8FF00BE85FF00A061FF009C5DFF008744FF008A49FF00C9
        90FF12DCAAFF63D3AFFF008744FF000000330000000000000000000000000000
        0000008A49FF35D0AAFF20D7B1FF0DD3A7FF0DD4A7FF0DD4A8FF0DD3A7FF0ED1
        A4FF00CA9AFF13D3A9FF73D7BBFF008A48FF0000000000000000000000000000
        000000000000018B49FF48C29CFF5CDCC6FF5BDEC8FF5ADEC7FF5BDDC6FF5CDB
        C3FF00C399FF15CCAAFF85DBC3FF008A48FF0000000000000000000000000000
        00000000000000000000005B2FA8008946FF008844FF008744FF008947FF00B5
        8EFF1BC8AEFF98DECBFF008742FF000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000239B
        61FFA1E2D5FF008743FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000082
        46ED008B49FF0000000000000000000000000000000000000000}
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group5
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Height = 21
      SizeOptions.Width = 21
      Control = btn_link
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_j: TdxLayoutItem
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxTextEdit1'
      CaptionOptions.Visible = False
      Parent = grplc1Group5
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 310
      Control = txt_j
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object spl2: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      LayoutLookAndFeel = laf2
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      SizeOptions.Height = 10
      Index = 3
    end
    object grplc1Group6: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object grp_2: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avClient
      Parent = grplc1Group6
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 284
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
          Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1087#1086#1083#1103' '#1074#1074#1086#1076#1072
          OnClick = grp_2Button0Click
        end>
      ButtonOptions.ShowExpandButton = True
      Index = 0
    end
    object grplc1Group8: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp_2
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itm_cbb_mat: TdxLayoutItem
      AlignHorz = ahClient
      CaptionOptions.Text = #1052#1072#1090#1077#1088#1080#1072#1083
      Parent = grplc1Group8
      Control = cbb_mat
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_btn_mat: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group8
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 27
      Control = btn_mat
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_edt_kol: TdxLayoutItem
      CaptionOptions.Text = #1050#1086#1083'-'#1074#1086
      Parent = grp_2
      Control = edsp_kol
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_txt_ed: TdxLayoutItem
      CaptionOptions.Text = #1045#1076'.'#1080#1079#1084'.'
      Parent = grp_2
      Control = txt_ed
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itmlc1Item1: TdxLayoutItem
      CaptionOptions.Text = #1062#1077#1085#1072' '#1079#1072' '#1077#1076'.'
      Parent = grp_2
      Control = cedt_price
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_m_note: TdxLayoutItem
      CaptionOptions.Text = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      CaptionOptions.Layout = clTop
      Parent = grp_2
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 70
      Control = m_note
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object grplc1Group9: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp_2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object itm_btn_post: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group9
      Control = btn_post
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_btn_edit: TdxLayoutItem
      AlignHorz = ahCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group9
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 107
      Control = btn_edit_m
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_btn_del_m: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group9
      Control = btn_del_m
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object itm_grd3: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1052#1072#1090#1077#1088#1080#1072#1083#1099' '#1087#1086' '#1088#1072#1073#1086#1090#1077' '#1074' '#1085#1072#1088#1103#1076#1077
      CaptionOptions.Layout = clTop
      LayoutLookAndFeel = laf1
      Parent = grplc1Group6
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 183
      SizeOptions.Width = 697
      Control = grd3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_doc_br2: TdxLayoutItem
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      LayoutLookAndFeel = laf1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 148
      Control = doc_br2
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object itm_doc_br: TdxLayoutItem
      AlignVert = avClient
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      LayoutLookAndFeel = laf1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 88
      Control = doc_br1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object grplc1Group7: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grplc1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lc1Item1: TdxLayoutItem
      CaptionOptions.Text = 'New Item'
      Index = -1
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_filtr
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = clv1CODE
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1DATA
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1HOUSE
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1KONTRAGENT
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1KontrName
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1nomer
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1NOTE
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1Street
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1streetname
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv2ADDR
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv2CODE
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv2DATA
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv2ED
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv2flat
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv2HOUSE
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv2jwork
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv2KONTRAGENT
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv2nomer
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv2NOTE
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv2PRICE
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv2Quantity
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv2SERVISWORK
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv2Street
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv2streetname
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv2sworkname
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv2WORKLIST
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv3ADDR
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv3CODE
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv3DATA
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv3HOUSE
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv3KONTRAGENT
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv3NOTE
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv3PRICE
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv3QUANTITY
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv3SERVISMATERIAL
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv3SERVISWORK
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv3WORKSPECLIST
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv4CODE
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv4DESCRIPTION
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv4FACTDATE
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv4HOUSE
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv4JTNAME
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv4JWORKTYPE
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv4KONTRAGENT
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv4NOTE
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv4PLACE
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv4PLANDATE
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv4REGDATE
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv4SHOWRESULT
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv4WORKSPECLIST
        Properties.Strings = (
          'Width')
      end
      item
        Component = grd2
        Properties.Strings = (
          'Width')
      end
      item
        Component = grd4
        Properties.Strings = (
          'Width')
      end
      item
        Component = grp_2
        Properties.Strings = (
          'Expanded'
          'SizeOptions.Height'
          'SizeOptions.Width')
      end
      item
        Component = grp_3
        Properties.Strings = (
          'SizeOptions.Height')
      end
      item
        Component = grp_workAdd
        Properties.Strings = (
          'Expanded')
      end
      item
        Component = grplc1Group1
        Properties.Strings = (
          'SizeOptions.Width')
      end
      item
        Component = grplc1Group2
        Properties.Strings = (
          'SizeOptions.Width')
      end
      item
        Component = grplc1Group3
        Properties.Strings = (
          'SizeOptions.Height')
      end
      item
        Component = itm_grd1
        Properties.Strings = (
          'SizeOptions.Height'
          'SizeOptions.Width')
      end
      item
        Component = itm_grd2
        Properties.Strings = (
          'SizeOptions.Height'
          'SizeOptions.Width')
      end
      item
        Component = itm_grd3
        Properties.Strings = (
          'SizeOptions.Height'
          'SizeOptions.Width')
      end
      item
        Component = itm_grd4
        Properties.Strings = (
          'SizeOptions.Height'
          'SizeOptions.Width')
      end
      item
        Component = itm_j
        Properties.Strings = (
          'SizeOptions.Width')
      end
      item
        Component = itm_w
        Properties.Strings = (
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
    Left = 304
    Top = 72
  end
  object ds_worklist: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE WORKLIST'
      'SET '
      '    DATA = :DATA,'
      '    KONTRAGENT = :KONTRAGENT,'
      '    HOUSE = :HOUSE,'
      '    NOTE = :NOTE'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    WORKLIST'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO WORKLIST('
      '    CODE,'
      '    DATA,'
      '    KONTRAGENT,'
      '    HOUSE,'
      '    NOTE'
      ')'
      'VALUES('
      '    :CODE,'
      '    :DATA,'
      '    :KONTRAGENT,'
      '    :HOUSE,'
      '    :NOTE'
      ')')
    RefreshSQL.Strings = (
      'SELECT wl.CODE, '
      '       wl.DATA, '
      '       wl.KONTRAGENT,k.name KontrName, '
      '        s.code Street, s.name streetname,'
      '       wl.HOUSE, h.nomer, h.du, d.name DUName,'
      '       mh.worker,(p.f||'#39' '#39'||p.i||'#39' '#39'||p.o) fio,'
      '       wl.NOTE  '
      ''
      'FROM WORKLIST wl'
      'left outer join house h on h.code = wl.house'
      'left outer join street s on s.code = h.street'
      'left outer join KONTRAGENT k on k.code=wl.KONTRAGENT'
      'left outer join du d on d.code=h.du'
      ''
      
        'left outer join mhouse mh on mh.house=wl.house and mh.kontragent' +
        '=wl.kontragent'
      'left outer join worker w on w.code=mh.worker'
      'left outer join piple p on p.code=w.piple'
      ''
      ' WHERE '
      '        WL.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT wl.CODE, '
      '       wl.DATA, '
      '       wl.KONTRAGENT,k.name KontrName, '
      '        s.code Street, s.name streetname,'
      '       wl.HOUSE, h.nomer, h.du, d.name DUName,'
      '       mh.worker,(p.f||'#39' '#39'||p.i||'#39' '#39'||p.o) fio,'
      '       wl.NOTE  '
      ''
      'FROM WORKLIST wl'
      'left outer join house h on h.code = wl.house'
      'left outer join street s on s.code = h.street'
      'left outer join KONTRAGENT k on k.code=wl.KONTRAGENT'
      'left outer join du d on d.code=h.du'
      ''
      
        'left outer join mhouse mh on mh.house=wl.house and mh.kontragent' +
        '=wl.kontragent'
      'left outer join worker w on w.code=mh.worker'
      'left outer join piple p on p.code=w.piple')
    BeforeEdit = ds_worklistBeforeEdit
    BeforePost = ds_worklistBeforePost
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 104
    Top = 64
  end
  object src_worklist: TDataSource
    DataSet = ds_worklist
    Left = 157
    Top = 64
  end
  object ds_WorkSpecList: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE WORKSPECLIST'
      'SET '
      '    DATA = :DATA,'
      '    KONTRAGENT = :KONTRAGENT,'
      '    SERVISWORK = :SERVISWORK,'
      '    HOUSE = :HOUSE,'
      '    ADDR = :ADDR,'
      '    PRICE = :PRICE,'
      '    NOTE = :NOTE,'
      '    WORKLIST = :WORKLIST,'
      '    QUANTITY = :QUANTITY,'
      '    JWORK = :JWORK'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    WORKSPECLIST'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO WORKSPECLIST('
      '    CODE,'
      '    DATA,'
      '    KONTRAGENT,'
      '    SERVISWORK,'
      '    HOUSE,'
      '    ADDR,'
      '    PRICE,'
      '    NOTE,'
      '    WORKLIST,'
      '    QUANTITY,'
      '    JWORK'
      ')'
      'VALUES('
      '    :CODE,'
      '    :DATA,'
      '    :KONTRAGENT,'
      '    :SERVISWORK,'
      '    :HOUSE,'
      '    :ADDR,'
      '    :PRICE,'
      '    :NOTE,'
      '    :WORKLIST,'
      '    :QUANTITY,'
      '    :JWORK'
      ')')
    RefreshSQL.Strings = (
      'SELECT ws.CODE, '
      '       ws.DATA, '
      '       ws.KONTRAGENT, '
      '       ws.SERVISWORK, sw.name sworkname,'
      '       ws.HOUSE,'
      '       ws.ADDR,'
      '       ws.PRICE, '
      '       ws.NOTE, '
      '       ws.WORKLIST,'
      '       WS.Quantity,'
      '       WS.jwork'
      'FROM WORKSPECLIST ws'
      'left outer join serviswork sw on sw.code = ws.serviswork'
      'WHERE( '
      '    ws.WORKLIST = :mas_code'
      '     ) and (     WS.CODE = :OLD_CODE'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'SELECT ws.CODE, '
      '       ws.DATA, '
      '       ws.KONTRAGENT, '
      '       ws.SERVISWORK, sw.name sworkname,'
      '       ws.HOUSE,'
      '       ws.ADDR,'
      '       ws.PRICE, '
      '       ws.NOTE, '
      '       ws.WORKLIST,'
      '       WS.Quantity,'
      '       WS.jwork'
      'FROM WORKSPECLIST ws'
      'left outer join serviswork sw on sw.code = ws.serviswork'
      'WHERE'
      '    ws.WORKLIST = :mas_code')
    AfterOpen = ds_WorkSpecListAfterOpen
    BeforeEdit = ds_WorkSpecListBeforeEdit
    BeforeInsert = ds_WorkSpecListBeforeInsert
    BeforePost = ds_WorkSpecListBeforePost
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DataSource = src_worklist
    Left = 336
    Top = 288
  end
  object src_WorkSpecList: TDataSource
    DataSet = ds_WorkSpecList
    Left = 365
    Top = 288
  end
  object ds_WorkSpecMaterial: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE WORKSPECMATERIAL'
      'SET '
      '    WORKSPECLIST = :WORKSPECLIST,'
      '    DATA = :DATA,'
      '    KONTRAGENT = :KONTRAGENT,'
      '    SERVISWORK = :SERVISWORK,'
      '    HOUSE = :HOUSE,'
      '    ADDR = :ADDR,'
      '    SERVISMATERIAL = :SERVISMATERIAL,'
      '    QUANTITY = :QUANTITY,'
      '    PRICE = :PRICE,'
      '    NOTE = :NOTE'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    WORKSPECMATERIAL'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO WORKSPECMATERIAL('
      '    CODE,'
      '    WORKSPECLIST,'
      '    DATA,'
      '    KONTRAGENT,'
      '    SERVISWORK,'
      '    HOUSE,'
      '    ADDR,'
      '    SERVISMATERIAL,'
      '    QUANTITY,'
      '    PRICE,'
      '    NOTE'
      ')'
      'VALUES('
      '    :CODE,'
      '    :WORKSPECLIST,'
      '    :DATA,'
      '    :KONTRAGENT,'
      '    :SERVISWORK,'
      '    :HOUSE,'
      '    :ADDR,'
      '    :SERVISMATERIAL,'
      '    :QUANTITY,'
      '    :PRICE,'
      '    :NOTE'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    CODE,'
      '    WORKSPECLIST,'
      '    DATA,'
      '    KONTRAGENT,'
      '    SERVISWORK,'
      '    HOUSE,'
      '    ADDR,'
      '    SERVISMATERIAL,'
      '    QUANTITY,'
      '    PRICE,'
      '    NOTE'
      'FROM'
      '    WORKSPECMATERIAL'
      'WHERE( '
      '    WORKSPECLIST = :mas_code'
      '     ) and (     WORKSPECMATERIAL.CODE = :OLD_CODE'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    CODE,'
      '    WORKSPECLIST,'
      '    DATA,'
      '    KONTRAGENT,'
      '    SERVISWORK,'
      '    HOUSE,'
      '    ADDR,'
      '    SERVISMATERIAL,'
      '    QUANTITY,'
      '    PRICE,'
      '    NOTE'
      'FROM'
      '    WORKSPECMATERIAL'
      'WHERE'
      '    WORKSPECLIST = :mas_code')
    BeforeEdit = ds_WorkSpecMaterialBeforeEdit
    BeforePost = ds_WorkSpecMaterialBeforePost
    OnNewRecord = ds_WorkSpecMaterialNewRecord
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    AutoCommit = True
    DataSource = src_WorkSpecList
    Left = 320
    Top = 464
  end
  object src_WorkSpecMaterial: TDataSource
    DataSet = ds_WorkSpecMaterial
    Left = 348
    Top = 464
  end
  object ds_kontr: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, NAME FROM KONTRAGENT')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 336
    Top = 248
  end
  object src_kontr: TDataSource
    DataSet = ds_kontr
    Left = 365
    Top = 248
  end
  object ds_ServisMaterial: TpFIBDataSet
    SelectSQL.Strings = (
      'select SM.CODE, SM.KSERVISMATERIAL, SM.NAME, SM.ED, SM.PRICE'
      'from SERVISMATERIAL SM'
      'ORDER BY SM.KSERVISMATERIAL, SM.NAME')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 520
    Top = 584
  end
  object src_ServisMaterial: TDataSource
    DataSet = ds_ServisMaterial
    Left = 556
    Top = 584
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
    LookAndFeel.SkinName = 'Office2010Blue'
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 536
    Top = 72
    DockControlHeights = (
      0
      0
      0
      0)
    object brm1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = doc_br1
      DockedDockControl = doc_br1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 739
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
          Visible = True
          ItemName = 'btn_Delete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_linkJl'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_exAdd'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object brm1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = doc_br2
      DockedDockControl = doc_br2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 739
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_matAdd'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_matEdit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_matDelete'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      SizeGrip = False
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object brm1Bar3: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockControl = doc_br3
      DockedDockControl = doc_br3
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 747
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_auto'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_nAdd'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_nEdit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_nDelete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_print'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_Add: TdxBarButton
      Caption = 'Add'
      Category = 0
      Hint = 'Add'
      ScreenTip = tip_wAdd
      Visible = ivAlways
      Glyph.Data = {
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
      OnClick = btn_AddClick
    end
    object btn_Edit: TdxBarButton
      Caption = 'Edit'
      Category = 0
      Hint = 'Edit'
      ScreenTip = tip_wEdit
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000001515
        151F8A8A8A9F8888889D8686869B8484849983838397818181957F7E7E937C7B
        7A907777768E757575885C5C5C720F0F0F210000000000000000000000002222
        222FF8F8F8FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF5F4
        F4FFF1EFEFFFF0EFEFFFF7F7F7FFB5B5B5D10101010800000000151616383E45
        4F7BF6F6F6FFF6F6F6FFF6F6F6FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
        F5FFF5F3F3FFF2EFEFFFEFEFEFFFF2F2F2FF0C0C0C1900000000000000007085
        A3B36CA8DAFFD1E0EAFFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
        F4FFF4F4F4FFF4F3F3FFF2EFEFFFEFEEEEFF1A1A1A2500000000000000001E23
        272F55C4F6FF1796DFFFBED6E5FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
        F3FFF3F3F3FFF4F4F4FFF4F3F2FFF2F0EFFF1A1A1A2400000000000000001717
        1722DDEEF4FF50C5F6FF0E96E1FFAACBE1FFF1F1F1FFF1F1F1FFF1F1F1FFF2F2
        F2FFF2F2F2FFF3F3F3FFF3F3F3FFF4F2F2FF1A1A1A2400000000000000001717
        1721F2F2F2FFE3EEF3FF61CAF6FF0A98E5FF93C0DDFFF0F0F0FFF0F0F0FFF0F0
        F0FFF1F1F1FFF2F2F2FFF3F3F3FFF3F3F3FF1919192300000000000000001616
        1620F2F2F2FFF1F1F1FFE6EDF0FF70CFF5FF0B9DE9FF7BB4D9FFEEEEEEFFEFEF
        EFFFF0F0F0FFF1F1F1FFF2F2F2FFF2F2F2FF1818182100000000000000001515
        151EF1F1F1FFF0F0F0FFEFEFEFFFE8ECEEFF7FD2F4FF0FA3ECFF62AAD8FFEAEB
        ECFFEFEFEFFFF0F0F0FFF1F1F1FFF2F2F2FF1515151E00000000000000001313
        131CF0F0F0FFF0F0F0FFEEEEEEFFEDEDEDFFE9EBECFF8CD5F2FF16A9EEFF4CA2
        D8FFE5E8EAFFEFEFEFFFF1F1F1FFF1F1F1FF1212121B00000000000000001010
        1019EFEFEFFFEFEFEFFFEDEDEDFFECECECFFEAEAEAFFE9E9EAFF99D7F0FF1EAE
        F1FF399DD9FFD9E1E6FFF0F0F0FFF0F0F0FF0F0F0F1800000000000000000E0E
        0E17EFEFEFFFEFEFEFFFEDEDEDFFEBEBEBFFE9E9E9FFE8E8E8FFE9E9E9FFA7DA
        EFFF2FB4EFFFABBECAFFE1E2E3FFF0F0F0FF0B0B0B1300000000000000000C0C
        0C14EEEEEEFFEFEFEFFFEDEDEDFFEBEBEBFFE9E9E9FFE8E8E8FFE9E9E9FFEBEB
        EBFFD1DBE0FFC3C3C3FFB5C0DDFFD6DCEEFF0808080F00000000000000000A0A
        0A12EEEEEEFFEFEFEFFFEDEDEDFFEBEBEBFFEAEAEAFFE9E9E9FFE9E9E9FFEBEB
        EBFFEDEDEDFFDBDEE8FFC8D8FDFFD8DFF3FF0505050B00000000000000000909
        0910EEEEEEFFEFEFEFFFEEEEEEFFECECECFFEBEBEBFFEBEBEBFFEBEBEBFFECEC
        ECFFEDEDEDFFEFEFEFFFE5E7F1FFEEEEEEFF0202020700000000000000000303
        03065E5E5E6D6161616F62626270626262706262627162626271626262726262
        62726161617161616171616161715F5F5F700000000300000000}
      OnClick = btn_EditClick
    end
    object btn_Delete: TdxBarButton
      Caption = 'Delete'
      Category = 0
      Hint = 'Delete'
      ScreenTip = tip_wDel
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000010101020101010401010106010101090101010B0101010C0101010C0101
        010B010101090101010701010104010101020000000000000000000000010101
        0108010101110101011B010101240101012C010101330101053D0101053E0101
        01350101012E010101260101011C010101130101010900000001000000000000
        0000000000000000000101010C11060667830909A7D90A0AC3FE0A0AC3FE0909
        A7D90606678301010C1101010102000000000000000000000000000000000000
        0000000000000303262E0A0AB0E10C0CD1FF0D0DE4FF0D0DEEFF0D0DEEFF0D0D
        E4FF0C0CD1FF0A0AB0E10303262E000000000000000000000000000000000000
        0000020213170B0BB9E51414EDFF1616F5FF2929EDFF1616FBFF1616FBFF2828
        EDFF1616F5FF1414EDFF0B0BB9E5020213170000000000000000000000000000
        0000070779971C1CEFFF1F1FF3FFA2A2EFFFE2E2F8FF3838ECFF3838ECFFE2E2
        F7FFA1A1EEFF1E1EF3FF1C1CEFFF070779970000000000000000000000000101
        06071616CEF13B3BF5FF4C4CEDFFE4E4F9FFFFFFFFFFE3E3F8FFE2E2F8FFFFFF
        FFFFE2E2F8FF3636EAFF2929F5FF1515CEF10101060700000000000000000202
        242E3838E1FF6666F5FF6666F5FF6868EEFFE4E4FAFFFFFFFFFFFFFFFFFFE2E2
        F9FF4545EBFF3232F2FF3F3FF2FF3A3AE1FF0202242E00000000000000000202
        29354343DFFF7B7BF4FF7B7BF4FF7272F0FFE3E3FAFFFFFFFFFFFFFFFFFFE3E3
        FAFF5C5CEDFF6363F2FF7777F3FF4545DFFF0202293500000000000000000101
        0F142828D2FD8C8CF2FF7B7BF1FFE3E3FBFFFFFFFFFFE4E4FBFFE4E4FBFFFFFF
        FFFFE4E4FBFF7B7BEFFF8C8CF2FF2B2BD2FD01010F1400000000000000000000
        0000090999C17474E9FF9393F1FFB8B8F6FFE4E4FBFF8D8DF1FF8E8EF1FFE4E4
        FBFFB9B9F6FF9393F1FF7575E9FF0A0A99C10000000000000000000000000000
        000003032F3F2929D6FD9191EEFF9696F0FF9292F0FFB2B2F4FFB2B2F4FF9292
        F0FF9696F0FF9191EEFF2929D6FD03032F3F0000000000000000000000000000
        000000000000050557723636DCFE9797F1FFA2A2F2FFA2A2F2FFA2A2F2FFA2A2
        F2FF9898F1FF3838DCFE05055772000000000000000000000000000000000000
        000000000000000000000404394D1515B1DA4D4DE1FF6D6DEDFF6F6FEDFF5252
        E2FF1616B1DA0404394D00000000000000000000000000000000000000000000
        0000000000000000000000000000000001010303263405054660050546600303
        2634000001010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btn_DeleteClick
    end
    object btn_matAdd: TdxBarButton
      Caption = 'Add'
      Category = 0
      Hint = 'Add'
      ScreenTip = tip_mAdd
      Visible = ivAlways
      Glyph.Data = {
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
      OnClick = btn_matAddClick
    end
    object btn_matEdit: TdxBarButton
      Caption = 'Edit'
      Category = 0
      Hint = 'Edit'
      ScreenTip = tip_mEdit
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000001515
        151F8A8A8A9F8888889D8686869B8484849983838397818181957F7E7E937C7B
        7A907777768E757575885C5C5C720F0F0F210000000000000000000000002222
        222FF8F8F8FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF5F4
        F4FFF1EFEFFFF0EFEFFFF7F7F7FFB5B5B5D10101010800000000151616383E45
        4F7BF6F6F6FFF6F6F6FFF6F6F6FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
        F5FFF5F3F3FFF2EFEFFFEFEFEFFFF2F2F2FF0C0C0C1900000000000000007085
        A3B36CA8DAFFD1E0EAFFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
        F4FFF4F4F4FFF4F3F3FFF2EFEFFFEFEEEEFF1A1A1A2500000000000000001E23
        272F55C4F6FF1796DFFFBED6E5FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
        F3FFF3F3F3FFF4F4F4FFF4F3F2FFF2F0EFFF1A1A1A2400000000000000001717
        1722DDEEF4FF50C5F6FF0E96E1FFAACBE1FFF1F1F1FFF1F1F1FFF1F1F1FFF2F2
        F2FFF2F2F2FFF3F3F3FFF3F3F3FFF4F2F2FF1A1A1A2400000000000000001717
        1721F2F2F2FFE3EEF3FF61CAF6FF0A98E5FF93C0DDFFF0F0F0FFF0F0F0FFF0F0
        F0FFF1F1F1FFF2F2F2FFF3F3F3FFF3F3F3FF1919192300000000000000001616
        1620F2F2F2FFF1F1F1FFE6EDF0FF70CFF5FF0B9DE9FF7BB4D9FFEEEEEEFFEFEF
        EFFFF0F0F0FFF1F1F1FFF2F2F2FFF2F2F2FF1818182100000000000000001515
        151EF1F1F1FFF0F0F0FFEFEFEFFFE8ECEEFF7FD2F4FF0FA3ECFF62AAD8FFEAEB
        ECFFEFEFEFFFF0F0F0FFF1F1F1FFF2F2F2FF1515151E00000000000000001313
        131CF0F0F0FFF0F0F0FFEEEEEEFFEDEDEDFFE9EBECFF8CD5F2FF16A9EEFF4CA2
        D8FFE5E8EAFFEFEFEFFFF1F1F1FFF1F1F1FF1212121B00000000000000001010
        1019EFEFEFFFEFEFEFFFEDEDEDFFECECECFFEAEAEAFFE9E9EAFF99D7F0FF1EAE
        F1FF399DD9FFD9E1E6FFF0F0F0FFF0F0F0FF0F0F0F1800000000000000000E0E
        0E17EFEFEFFFEFEFEFFFEDEDEDFFEBEBEBFFE9E9E9FFE8E8E8FFE9E9E9FFA7DA
        EFFF2FB4EFFFABBECAFFE1E2E3FFF0F0F0FF0B0B0B1300000000000000000C0C
        0C14EEEEEEFFEFEFEFFFEDEDEDFFEBEBEBFFE9E9E9FFE8E8E8FFE9E9E9FFEBEB
        EBFFD1DBE0FFC3C3C3FFB5C0DDFFD6DCEEFF0808080F00000000000000000A0A
        0A12EEEEEEFFEFEFEFFFEDEDEDFFEBEBEBFFEAEAEAFFE9E9E9FFE9E9E9FFEBEB
        EBFFEDEDEDFFDBDEE8FFC8D8FDFFD8DFF3FF0505050B00000000000000000909
        0910EEEEEEFFEFEFEFFFEEEEEEFFECECECFFEBEBEBFFEBEBEBFFEBEBEBFFECEC
        ECFFEDEDEDFFEFEFEFFFE5E7F1FFEEEEEEFF0202020700000000000000000303
        03065E5E5E6D6161616F62626270626262706262627162626271626262726262
        62726161617161616171616161715F5F5F700000000300000000}
      OnClick = btn_matEditClick
    end
    object btn_matDelete: TdxBarButton
      Caption = 'Delete'
      Category = 0
      Hint = 'Delete'
      ScreenTip = tip_mDel
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000010101020101010401010106010101090101010B0101010C0101010C0101
        010B010101090101010701010104010101020000000000000000000000010101
        0108010101110101011B010101240101012C010101330101053D0101053E0101
        01350101012E010101260101011C010101130101010900000001000000000000
        0000000000000000000101010C11060667830909A7D90A0AC3FE0A0AC3FE0909
        A7D90606678301010C1101010102000000000000000000000000000000000000
        0000000000000303262E0A0AB0E10C0CD1FF0D0DE4FF0D0DEEFF0D0DEEFF0D0D
        E4FF0C0CD1FF0A0AB0E10303262E000000000000000000000000000000000000
        0000020213170B0BB9E51414EDFF1616F5FF2929EDFF1616FBFF1616FBFF2828
        EDFF1616F5FF1414EDFF0B0BB9E5020213170000000000000000000000000000
        0000070779971C1CEFFF1F1FF3FFA2A2EFFFE2E2F8FF3838ECFF3838ECFFE2E2
        F7FFA1A1EEFF1E1EF3FF1C1CEFFF070779970000000000000000000000000101
        06071616CEF13B3BF5FF4C4CEDFFE4E4F9FFFFFFFFFFE3E3F8FFE2E2F8FFFFFF
        FFFFE2E2F8FF3636EAFF2929F5FF1515CEF10101060700000000000000000202
        242E3838E1FF6666F5FF6666F5FF6868EEFFE4E4FAFFFFFFFFFFFFFFFFFFE2E2
        F9FF4545EBFF3232F2FF3F3FF2FF3A3AE1FF0202242E00000000000000000202
        29354343DFFF7B7BF4FF7B7BF4FF7272F0FFE3E3FAFFFFFFFFFFFFFFFFFFE3E3
        FAFF5C5CEDFF6363F2FF7777F3FF4545DFFF0202293500000000000000000101
        0F142828D2FD8C8CF2FF7B7BF1FFE3E3FBFFFFFFFFFFE4E4FBFFE4E4FBFFFFFF
        FFFFE4E4FBFF7B7BEFFF8C8CF2FF2B2BD2FD01010F1400000000000000000000
        0000090999C17474E9FF9393F1FFB8B8F6FFE4E4FBFF8D8DF1FF8E8EF1FFE4E4
        FBFFB9B9F6FF9393F1FF7575E9FF0A0A99C10000000000000000000000000000
        000003032F3F2929D6FD9191EEFF9696F0FF9292F0FFB2B2F4FFB2B2F4FF9292
        F0FF9696F0FF9191EEFF2929D6FD03032F3F0000000000000000000000000000
        000000000000050557723636DCFE9797F1FFA2A2F2FFA2A2F2FFA2A2F2FFA2A2
        F2FF9898F1FF3838DCFE05055772000000000000000000000000000000000000
        000000000000000000000404394D1515B1DA4D4DE1FF6D6DEDFF6F6FEDFF5252
        E2FF1616B1DA0404394D00000000000000000000000000000000000000000000
        0000000000000000000000000000000001010303263405054660050546600303
        2634000001010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btn_matDeleteClick
    end
    object btn_nAdd: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1072#1088#1103#1076
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1072#1088#1103#1076
      ScreenTip = tip_nAdd
      Visible = ivAlways
      Glyph.Data = {
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
      OnClick = btn_nAddClick
    end
    object btn_nEdit: TdxBarButton
      Caption = 'Edit'
      Category = 0
      Hint = 'Edit'
      ScreenTip = tip_nedit
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000001515
        151F8A8A8A9F8888889D8686869B8484849983838397818181957F7E7E937C7B
        7A907777768E757575885C5C5C720F0F0F210000000000000000000000002222
        222FF8F8F8FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF5F4
        F4FFF1EFEFFFF0EFEFFFF7F7F7FFB5B5B5D10101010800000000151616383E45
        4F7BF6F6F6FFF6F6F6FFF6F6F6FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
        F5FFF5F3F3FFF2EFEFFFEFEFEFFFF2F2F2FF0C0C0C1900000000000000007085
        A3B36CA8DAFFD1E0EAFFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
        F4FFF4F4F4FFF4F3F3FFF2EFEFFFEFEEEEFF1A1A1A2500000000000000001E23
        272F55C4F6FF1796DFFFBED6E5FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
        F3FFF3F3F3FFF4F4F4FFF4F3F2FFF2F0EFFF1A1A1A2400000000000000001717
        1722DDEEF4FF50C5F6FF0E96E1FFAACBE1FFF1F1F1FFF1F1F1FFF1F1F1FFF2F2
        F2FFF2F2F2FFF3F3F3FFF3F3F3FFF4F2F2FF1A1A1A2400000000000000001717
        1721F2F2F2FFE3EEF3FF61CAF6FF0A98E5FF93C0DDFFF0F0F0FFF0F0F0FFF0F0
        F0FFF1F1F1FFF2F2F2FFF3F3F3FFF3F3F3FF1919192300000000000000001616
        1620F2F2F2FFF1F1F1FFE6EDF0FF70CFF5FF0B9DE9FF7BB4D9FFEEEEEEFFEFEF
        EFFFF0F0F0FFF1F1F1FFF2F2F2FFF2F2F2FF1818182100000000000000001515
        151EF1F1F1FFF0F0F0FFEFEFEFFFE8ECEEFF7FD2F4FF0FA3ECFF62AAD8FFEAEB
        ECFFEFEFEFFFF0F0F0FFF1F1F1FFF2F2F2FF1515151E00000000000000001313
        131CF0F0F0FFF0F0F0FFEEEEEEFFEDEDEDFFE9EBECFF8CD5F2FF16A9EEFF4CA2
        D8FFE5E8EAFFEFEFEFFFF1F1F1FFF1F1F1FF1212121B00000000000000001010
        1019EFEFEFFFEFEFEFFFEDEDEDFFECECECFFEAEAEAFFE9E9EAFF99D7F0FF1EAE
        F1FF399DD9FFD9E1E6FFF0F0F0FFF0F0F0FF0F0F0F1800000000000000000E0E
        0E17EFEFEFFFEFEFEFFFEDEDEDFFEBEBEBFFE9E9E9FFE8E8E8FFE9E9E9FFA7DA
        EFFF2FB4EFFFABBECAFFE1E2E3FFF0F0F0FF0B0B0B1300000000000000000C0C
        0C14EEEEEEFFEFEFEFFFEDEDEDFFEBEBEBFFE9E9E9FFE8E8E8FFE9E9E9FFEBEB
        EBFFD1DBE0FFC3C3C3FFB5C0DDFFD6DCEEFF0808080F00000000000000000A0A
        0A12EEEEEEFFEFEFEFFFEDEDEDFFEBEBEBFFEAEAEAFFE9E9E9FFE9E9E9FFEBEB
        EBFFEDEDEDFFDBDEE8FFC8D8FDFFD8DFF3FF0505050B00000000000000000909
        0910EEEEEEFFEFEFEFFFEEEEEEFFECECECFFEBEBEBFFEBEBEBFFEBEBEBFFECEC
        ECFFEDEDEDFFEFEFEFFFE5E7F1FFEEEEEEFF0202020700000000000000000303
        03065E5E5E6D6161616F62626270626262706262627162626271626262726262
        62726161617161616171616161715F5F5F700000000300000000}
      OnClick = btn_nEditClick
    end
    object btn_nDelete: TdxBarButton
      Caption = 'Delete'
      Category = 0
      Hint = 'Delete'
      ScreenTip = tip_nDel
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000010101020101010401010106010101090101010B0101010C0101010C0101
        010B010101090101010701010104010101020000000000000000000000010101
        0108010101110101011B010101240101012C010101330101053D0101053E0101
        01350101012E010101260101011C010101130101010900000001000000000000
        0000000000000000000101010C11060667830909A7D90A0AC3FE0A0AC3FE0909
        A7D90606678301010C1101010102000000000000000000000000000000000000
        0000000000000303262E0A0AB0E10C0CD1FF0D0DE4FF0D0DEEFF0D0DEEFF0D0D
        E4FF0C0CD1FF0A0AB0E10303262E000000000000000000000000000000000000
        0000020213170B0BB9E51414EDFF1616F5FF2929EDFF1616FBFF1616FBFF2828
        EDFF1616F5FF1414EDFF0B0BB9E5020213170000000000000000000000000000
        0000070779971C1CEFFF1F1FF3FFA2A2EFFFE2E2F8FF3838ECFF3838ECFFE2E2
        F7FFA1A1EEFF1E1EF3FF1C1CEFFF070779970000000000000000000000000101
        06071616CEF13B3BF5FF4C4CEDFFE4E4F9FFFFFFFFFFE3E3F8FFE2E2F8FFFFFF
        FFFFE2E2F8FF3636EAFF2929F5FF1515CEF10101060700000000000000000202
        242E3838E1FF6666F5FF6666F5FF6868EEFFE4E4FAFFFFFFFFFFFFFFFFFFE2E2
        F9FF4545EBFF3232F2FF3F3FF2FF3A3AE1FF0202242E00000000000000000202
        29354343DFFF7B7BF4FF7B7BF4FF7272F0FFE3E3FAFFFFFFFFFFFFFFFFFFE3E3
        FAFF5C5CEDFF6363F2FF7777F3FF4545DFFF0202293500000000000000000101
        0F142828D2FD8C8CF2FF7B7BF1FFE3E3FBFFFFFFFFFFE4E4FBFFE4E4FBFFFFFF
        FFFFE4E4FBFF7B7BEFFF8C8CF2FF2B2BD2FD01010F1400000000000000000000
        0000090999C17474E9FF9393F1FFB8B8F6FFE4E4FBFF8D8DF1FF8E8EF1FFE4E4
        FBFFB9B9F6FF9393F1FF7575E9FF0A0A99C10000000000000000000000000000
        000003032F3F2929D6FD9191EEFF9696F0FF9292F0FFB2B2F4FFB2B2F4FF9292
        F0FF9696F0FF9191EEFF2929D6FD03032F3F0000000000000000000000000000
        000000000000050557723636DCFE9797F1FFA2A2F2FFA2A2F2FFA2A2F2FFA2A2
        F2FF9898F1FF3838DCFE05055772000000000000000000000000000000000000
        000000000000000000000404394D1515B1DA4D4DE1FF6D6DEDFF6F6FEDFF5252
        E2FF1616B1DA0404394D00000000000000000000000000000000000000000000
        0000000000000000000000000000000001010303263405054660050546600303
        2634000001010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btn_nDeleteClick
    end
    object btn_print: TdxBarButton
      Caption = 'Print'
      Category = 0
      Hint = 'Print'
      ScreenTip = tip_nPrint
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000010101010101
        01020101010401010107010101090101010B0101010C0101010C0101010C0101
        010C0101010B0101010A01010107010101050101010301010101010101060101
        010B0303031314110F32231E1A4D231E1955221D195C221D1960221D1961221D
        195F221D1859221D1952221D194A0404041B0202020F01010108010101050101
        010B0101011439302776C2B5A9FFCDC3BAFFCCC2BAFFCCC2BAFFCCC2B9FFCBC2
        B9FFCBC1B9FFCBC1B8FF988574EF020202230101010F01010107000000002525
        252CBDBDBDD0B8B5B2F8A29A92FFB5B5B5FFB5B5B5FFB6B6B6FFB6B6B6FFB6B6
        B6FFB6B6B6FFB6B6B6FF95897EFDCECECEE85454545F00000000010101019393
        93A9E9E9E9FF959595FF5B5B5AFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E
        5EFF5E5E5EFF5E5E5EFF5C5B5BFFDADADAFFDADADAF500000001000000009393
        93B0DDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDD
        DDFFDDDDDDFFDDDDDDFF76BC95FFB6CCC0FFD6D6D6FC00000002000000007777
        7798D0CECDFFC5B6ACFFC4B5AAFFC4B5AAFFC4B5AAFFC4B5AAFFC4B5AAFFC4B5
        AAFFC4B5AAFFC4B5AAFFB7AC9EFFC6BCB4FFB7B7B7E600000000000000001919
        1926AB9E97EF936342FF966746FF966746FF966746FF966746FF966746FF9667
        46FF966746FF966746FF966746FFA18069FF4848486500000000000000000000
        00001B1B1B2A766A62B7978F89F9D2D1D1FFD2D1D1FFD2D1D1FFD2D1D1FFD2D1
        D1FFD2D1D1FFBFBDBCFE807268D5383736550000000000000000000000000000
        000000000000000000003333333EF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
        F2FFF2F2F2FFC2C2C2D400000000000000000000000000000000000000000000
        000000000000000000003434343DF1F1F1FFF0F0F0FFF1F1F1FFF2F2F2FFF5F5
        F5FFF6F6F6FFC5C5C5D500000000000000000000000000000000000000000000
        000000000000000000003131313CF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
        F0FFF0F0F0FFBEBEBED300000000000000000000000000000000000000000000
        000000000000000000001C1C1C24868686968686869686868696868686968686
        8696868686966B6B6B7D00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btn_printClick
    end
    object btn_linkJl: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1074' '#1078#1091#1088#1085#1072#1083#1077
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1074' '#1078#1091#1088#1085#1072#1083#1077
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        001E000000330000003300000033000000220000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000001E6B69
        69AC676564FF676564FF636160FF5A5957BD0000002200000000000000000000
        000000000000000000000000000000000000000000000000000072716FAC6A68
        66FFB7B5B3FFB2B0AEFFAEABA8FF615F5EFF6A6866B90000001E000000000000
        0000000000000000000000000000000000000000000000000000767472FFC1C1
        BEFF7F7D7BFF4A4B4B74716F6DFF9E9C99FF615F5EFF5E5C5CAC000000000000
        00000000000000000000000000000000000000000000000000007C7A78FFD5D3
        D2FF3F3F3F880000000000000033747270FFAFACAAFF666462FF000000000000
        00000000000000000000000000000000000000000000000000007F7D7AFFEEED
        ECFF83817FFF000000336D6A68FF585656FFB7B5B3FF6F6D6BFF000000000000
        0000000000000000000000000000000000000000000000000000797977AC7A78
        76FFEAEBEAFF848280FF7A7876FFB9B8B7FF585654FF3F4040FF000000000000
        0000000000000000000000000000000000000000000000000000000000008B8A
        89A7787675FFEEEDECFFD7D5D5FF797775FFF5F6F6FF5A5856FF000000330000
        003300000033000000330000001E000000000000000000000000000000000000
        00007C7C7A967F7D7BFF807E7CFF7F7D7BFF7A7876FFF5F6F6FF5A5756FF3F3F
        3FFF6E6C6AFF646362FF5E5E5CAC000000220000000000000000000000000000
        000000000000000000000000000000000000000000007A7876FFF5F5F5FF5654
        53FFB7B5B3FFAFACAAFF61605FFF6A6866B90000001E00000000000000000000
        000000000000000000000000000000000000000000007D7B79FF777572FFF4F4
        F5FF575555FF62605EFFB0ADABFF636160FF504E4DAC00000000000000000000
        000000000000000000000000000000000000000000007F7D7CFFD6D4D3FF7977
        75FF6E6C69FF000000005F5D5BFFAFABA9FF666463FF00000000000000000000
        000000000000000000000000000000000000000000007F7D7BFFEEEDECFF7F7D
        7AFF000000330000001553535398B2B0AEFF6A6866FF00000000000000000000
        000000000000000000000000000000000000000000007D7C7B97797775FFF5F5
        F4FF7E7B79FF404040876C6A67FFB9B7B4FF6D6B6AFF00000000000000000000
        00000000000000000000000000000000000000000000000000008A8A88A77B78
        76FFEEEDECFFD5D3D2FFC3C2C0FF73716EFF5C5B599700000000000000000000
        0000000000000000000000000000000000000000000000000000000000006867
        6696817F7DFF7F7D7CFF7C7A78FF61605F970000000000000000}
      OnClick = btn_linkJlClick
    end
    object btn_exAdd: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivNever
      OnClick = btn_exAddClick
    end
    object btn_auto: TdxBarButton
      Caption = #1040#1074#1090#1086#1089#1086#1079#1076#1072#1085#1080#1077' '#1085#1072#1088#1103#1076#1086#1074
      Category = 0
      Hint = #1040#1074#1090#1086#1089#1086#1079#1076#1072#1085#1080#1077' '#1085#1072#1088#1103#1076#1086#1074
      ScreenTip = tip_autoCreate
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000008021A0C40044E258B0332186A0001011300000004000000004F49
        475E887D7A9E877D799E877D799E877D7A9E877D7A9E877D7A9E877D7A9E877D
        7A9E4E7A5FA53BE29BFB77F1C0FF4CEDABFF1A8452AC0000000000000000B5A8
        A3CFF6EEECFFF7F0EDFFF7F0EDFFF7F0EDFFF7F0EDFFF7F0EEFFF7F0EEFFF7F1
        EEFF5DDDA0FF71F3BBFFDBF9EAFF7FEBBCFF4AE8A4FF0220103200000000B2A6
        A1CFF8F2F1FFF8F3F1FFF8F3F1FFF8F3F1FFF8F3F1FFF8F3F2FFF8F3F2FFF8F4
        F2FF63D79BFFB5F5D3FFEFFCF5FFCBF3DEFF77E1ACFF032D164100000000AEA2
        9DCFF9F6F5FFF9F6F5FFF9F6F5FFFAF7F6FFFAF7F6FFFAF7F6FFFAF7F6FFFAF7
        F6FF8DD5ACFF89D9AEFFBEEFD4FF91E1B6FF5BBB84FB0006030800000000AA9D
        99CFFCFBFAFFFCFBFAFFFCFBFBFFFCFBFBFFFDFCFBFFFDFCFBFFFDFCFCFFFDFC
        FCFFFAFCFAFFA0DEBCFF8ACFA9FF92D5B0FFB8C3B3F80000000000000000A699
        95CFE1DAD8FFE3DCDAFFE3DCDAFFE4DCDAFFE4DDDAFFE4DDDBFFE4DDDBFFE4DD
        DBFFE4DDDBFFE4DDDBFFE4DEDBFFE4DDDBFFC9BCB7F80000000000000000A095
        90CFEEE9E7FFEEE9E7FFEFE9E7FFEFE9E7FFEFE9E8FFEFEAE8FFEFEAE8FFF0EA
        E9FFF0EBE9FFF0EBE9FFF0EBEAFFF0EBEAFFC7BBB7F800000000000000009C90
        8DCFF2EEEDFFF2EEEDFFF2EFEDFFF3EFEEFFF3EFEEFFF3F0EFFFF3F0EFFFF4F0
        EFFFF4F0EFFFF4F1F0FFF4F1F0FFF4F1F0FFC3B8B4F80000000000000000988D
        8ACFF7F5F5FFF7F5F5FFF7F6F5FFF8F6F6FFF8F6F6FFF8F7F6FFF8F7F7FFF9F7
        F7FFF9F8F7FFF9F8F7FFF9F8F8FFFAF9F8FFC1B6B2F80000000000000000948B
        88CFE8E4E3FFE9E6E5FFE9E6E5FFEAE6E6FFEAE7E6FFEAE7E6FFEAE7E6FFEAE7
        E6FFEAE7E7FFEAE7E7FFEBE8E7FFEAE8E7FFB9AFACF800000000000000008782
        81BCC8C4C3FFC8C5C4FFD6D2D1FFD6D2D1FFD6D2D1FFD6D2D1FFD6D2D1FFD6D2
        D1FFD6D2D1FFD6D2D1FFD6D2D1FFD2CECDFFA6A19FE400000000000000000404
        04080F0E0E1C0F0E0E1C0F0E0E1C0F0E0E1C0F0E0E1C0F0E0E1C0F0E0E1C0F0E
        0E1C0F0E0E1C0F0E0E1C0F0E0E1C0F0E0E1C0706060C00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btn_autoClick
    end
  end
  object lkf1: TdxLayoutLookAndFeelList
    Left = 200
    Top = 16
    object laf1: TdxLayoutCxLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
      LookAndFeel.NativeStyle = False
    end
    object laf2: TdxLayoutCxLookAndFeel
      LookAndFeel.SkinName = 'McSkin'
    end
  end
  object fr1: TfrxReport
    Version = '4.13.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40722.601608831000000000
    ReportOptions.LastChange = 40724.524283229200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 256
    Top = 96
    Datasets = <
      item
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
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
        Height = 291.023810000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Rich1: TfrxRichView
          Align = baClient
          Width = 718.110700000000000000
          Height = 291.023810000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
            666C616E67313034397B5C666F6E7474626C7B5C66305C6673776973735C6670
            7271325C66636861727365743230342043616C696272693B7D7B5C66315C666E
            696C5C6663686172736574323034205461686F6D613B7D7D0D0A7B5C2A5C6765
            6E657261746F72204D7366746564697420352E34312E32312E323531303B7D5C
            766965776B696E64345C7563315C706172645C736C3237365C736C6D756C7431
            5C71725C66305C667332325C2763665C2766305C2765385C2765625C2765655C
            2765365C2765355C2765645C2765385C276535205C27623920375C7061720D0A
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020205C276561205C2763665C2765655C
            2765625C2765655C2765365C2765355C2765645C2765385C27666520205C2765
            65205C2765665C2765655C2766305C2766665C2765345C2765615C276535205C
            2765665C2766305C2765655C2765325C2765355C2765345C2765355C2765645C
            2765385C276666205C7061720D0A5C2765655C2766315C2765355C2765645C27
            65645C2765355C2765335C2765652F5C2765325C2765355C2766315C2765355C
            2765645C2765645C2765355C2765335C276565205C2765655C2766315C276563
            5C2765655C2766325C2766305C2765305C7061720D0A5C7061720D0A5C276433
            5C2764325C2763325C2763355C2764305C2763365C2763345C2763305C276465
            5C7061720D0A5C2763335C2765355C2765645C2765355C2766305C2765305C27
            65625C2766635C2765645C2766625C276539205C2765345C2765385C2766305C
            2765355C2765615C2766325C2765655C2766305C7061720D0A5C2763655C2763
            655C276365205C2761625C2763345C2763355C276337205C2763615C2765305C
            2765625C2765385C2765645C2765385C2765645C2766315C2765615C2765655C
            2765335C276565205C2766305C2765305C2765395C2765655C2765645C276530
            5C2762625C7061720D0A5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F205C2764
            315C2765635C2765385C2766305C2765645C2765655C276532205C2763612E5C
            2763382E5C7061720D0A5C2761625F5F5F5C2762625F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F20323031315C2765332E5C7061720D0A5C706172645C7361
            3230305C736C3237365C736C6D756C74315C71725C7061720D0A5C706172645C
            736C3237365C736C6D756C74315C71635C2763655C2766325C2766375C276535
            5C276632205C2763665C276365205C276565205C2765665C2766305C2765655C
            2765325C2765355C2765345C2765355C2765645C2765385C276538205C276565
            5C2766315C2765355C2765645C2765645C2765355C2765335C2765652F5C2765
            325C2765355C2766315C2765355C2765645C2765645C2765355C2765335C2765
            65205C2765655C2766315C2765635C2765655C2766325C2766305C276530205C
            7061720D0A5C2765655C2766325C2766375C2765355C2766325C2765645C2766
            625C276539205C2765665C2765355C2766305C2765385C2765655C276534205C
            276631205B76617244315D205C2765665C276565205B76617244325D5C706172
            0D0A5C706172645C66315C667331365C7061720D0A7D0D0A00}
        end
      end
      object Header1: TfrxHeader
        Height = 18.897637795275600000
        Top = 370.393940000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          Width = 162.519685040000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1086#1076#1088#1103#1076#1085#1072#1103' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 162.519685040000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1059#1083#1080#1094#1072)
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baLeft
          Left = 309.921355040000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1086#1084)
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Align = baLeft
          Left = 393.071015039999900000
          Width = 109.606299210000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072)
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          Left = 502.677314249999900000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 612.283860000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1073#1083#1086#1082#1080#1088#1086#1074#1082#1080)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897637800000000000
        Top = 411.968770000000000000
        Width = 718.110700000000000000
        RowCount = 0
        object Memo1: TfrxMemoView
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds."KONTRNAME"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 162.519790000000000000
          Width = 147.401574803150000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds."STREETNAME"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          Left = 309.921364803150000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds."HOUSENOM"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 393.071024803150000000
          Width = 109.606299210000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds."D1"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Left = 502.677324013150000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds."D2"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 612.283860000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[IIF(<ds."LOCKDATA"> = 0,'#39#39',<ds."LOCKDATA">)]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 136.063080000000000000
        Top = 491.338900000000000000
        Width = 718.110700000000000000
        object Rich2: TfrxRichView
          Align = baBottom
          Top = 60.472480000000000000
          Width = 718.110700000000000000
          Height = 75.590600000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
            666C616E67313034397B5C666F6E7474626C7B5C66305C6673776973735C6670
            7271325C66636861727365743230342043616C696272693B7D7B5C66315C6673
            776973735C66707271325C6663686172736574323034205461686F6D613B7D7B
            5C66325C666E696C5C6663686172736574323034205461686F6D613B7D7D0D0A
            7B5C2A5C67656E657261746F72204D7366746564697420352E34312E32312E32
            3531303B7D5C766965776B696E64345C7563315C706172645C736C3237365C73
            6C6D756C74315C66305C667332325C2763345C2765385C2766305C2765355C27
            65615C2766325C2765655C276630205C2763655C2763655C2763655C2738352E
            5C7061720D0A5C2764342E5C2763382E5C2763652E5C7061720D0A5C70617264
            5C2763345C2765305C2766325C276530205C2766315C2765345C2765305C2766
            375C276538205C2765655C2766325C2766375C2765355C2766325C276530205C
            2761625F5F5F5C2762625F5F5F5F5F5F5F5F5F32305F5F5C2765332E5C66315C
            667331365C7061720D0A5C66325C7061720D0A7D0D0A00}
        end
      end
    end
  end
  object tiprep1: TdxBarScreenTipRepository
    Left = 472
    Top = 128
    object tip_nAdd: TdxBarScreenTip
      Header.Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FDFDFDFBFBFBF9F9F9F6F6F6F4F4F4F3F3F3F3F3F3F4F4F4F6F6F6F8F8F8FBFB
        FBFDFDFDFFFFFFFFFFFFFEFEFEF7F7F7EEEEEEE4E4E4DBDBDBD3D3D3CBCBCBC1
        C4C2C1C4C2CACACAD1D1D1DADADAE3E3E3ECECECF6F6F6FEFEFEFFFFFFFFFFFF
        FFFFFFFEFEFEEFF5F180C09C2EB2690BB3560BB3562EB26980C09CEFF5F1FDFD
        FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2E8DC27B06425DC813EEDA24A
        F3B14AF4B23FEDA426DC8327B165D2E8DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E9F4EE29B66B43EEA854FABF4CECABADEBCEADE8CC4CE5A854FABF45F0AB2BB7
        6DE9F4EEFFFFFFFFFFFFFFFFFFFFFFFF6FC5963EEAA24BF5B34BF5B34AE7A3FF
        FFFFFFFFFF49E0A04BF5B34BF5B340ECA56FC697FFFFFFFFFFFFFFFFFFF8FCFA
        29C27552F2AF4CEDA44AE9A148DE97FFFFFFFFFFFF47D19042D9973ED89541F1
        A82CC579F8FCFAFFFFFFFFFFFFD3EEDF3ACE846AF2B5AFF4D0FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFA6DCC146EEA33CD187D3EEDFFFFFFFFFFFFFCCEDDB
        40C98173F0B5B1F4D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADDCC36FEF
        B340CB83CCEDDBFFFFFFFFFFFFECF9F228B4687CEBB36BEAA86CE7A764DD9DFF
        FFFFFFFFFF63CF966BD89F69D79F7BECB428B568ECF9F2FFFFFFFFFFFFFFFFFF
        47C17D6EC89787ECB788EFB974E3A7FFFFFFFFFFFF73DCA487EFB986ECB86CC9
        9747C17DFFFFFFFFFFFFFFFFFFFFFFFFC3F1D72AAA648DCDAA93DFB57BDFA8B7
        E9CDB7E6CC7BD8A593DFB68CCDA927A961C3F1D7FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF92E4B736AC6A95CAADA0CFB5A0CFB5A0CFB5A0CFB595C9AD34AA6992E4
        B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6F1D039BE744CB27A6A
        B1896CB28B4FB47D3ABE75B6F1D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFECEF7E0A5F1C6A5F1C6CEF7E0FEFEFEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Header.Text = #1044#1086#1073#1072#1074#1080#1090#1100
      Description.Text = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1099#1081' '#1085#1072#1088#1103#1076
      UseStandardFooter = True
    end
    object tip_nedit: TdxBarScreenTip
      Header.Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFF5F5F5
        EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE9E8E7E7E7ECECECE8E8
        E8EDEDEDFFFFFFFFFFFFFFFFFFF2F2F2F8F8F8F7F7F7F7F7F7F6F6F6F6F6F6F6
        F6F6F6F6F6F5F4F4F1EFEFF0EFEFF7F7F7E3E3E3F7F7F7FFFFFFDBDCDDC1C9D2
        F6F6F6F6F6F6F6F6F6F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F3F3F2EFEFEFEF
        EFF2F2F2F2F2F2FFFFFFFFFFFFBCD0EE6CA8DAD1E0EAF4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F3F3F2EFEFEFEEEEF3F3F3FFFFFFFFFFFFEDF2F6
        55C4F61796DFBED6E5F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F4F4F4F4F3
        F2F2F0EFF4F4F4FFFFFFFFFFFFF4F4F4DDEEF450C5F60E96E1AACBE1F1F1F1F1
        F1F1F1F1F1F2F2F2F2F2F2F3F3F3F3F3F3F4F2F2F5F5F5FFFFFFFFFFFFF4F4F4
        F2F2F2E3EEF361CAF60A98E593C0DDF0F0F0F0F0F0F0F0F0F1F1F1F2F2F2F3F3
        F3F3F3F3F5F5F5FFFFFFFFFFFFF5F5F5F2F2F2F1F1F1E6EDF070CFF50B9DE97B
        B4D9EEEEEEEFEFEFF0F0F0F1F1F1F2F2F2F2F2F2F5F5F5FFFFFFFFFFFFF5F5F5
        F1F1F1F0F0F0EFEFEFE8ECEE7FD2F40FA3EC62AAD8EAEBECEFEFEFF0F0F0F1F1
        F1F2F2F2F5F5F5FFFFFFFFFFFFF5F5F5F0F0F0F0F0F0EEEEEEEDEDEDE9EBEC8C
        D5F216A9EE4CA2D8E5E8EAEFEFEFF1F1F1F1F1F1F6F6F6FFFFFFFFFFFFF5F5F5
        EFEFEFEFEFEFEDEDEDECECECEAEAEAE9E9EA99D7F01EAEF1399DD9D9E1E6F0F0
        F0F0F0F0F6F6F6FFFFFFFFFFFFF6F6F6EFEFEFEFEFEFEDEDEDEBEBEBE9E9E9E8
        E8E8E9E9E9A7DAEF2FB4EFABBECAE1E2E3F0F0F0F7F7F7FFFFFFFFFFFFF6F6F6
        EEEEEEEFEFEFEDEDEDEBEBEBE9E9E9E8E8E8E9E9E9EBEBEBD1DBE0C3C3C3B5C0
        DDD6DCEEF7F7F7FFFFFFFFFFFFF7F7F7EEEEEEEFEFEFEDEDEDEBEBEBEAEAEAE9
        E9E9E9E9E9EBEBEBEDEDEDDBDEE8C8D8FDD8DFF3F8F8F8FFFFFFFFFFFFF7F7F7
        EEEEEEEFEFEFEEEEEEECECECEBEBEBEBEBEBEBEBEBECECECEDEDEDEFEFEFE5E7
        F1EEEEEEF9F9F9FFFFFFFFFFFFFBFBFBF0F0F0F1F1F1F0F0F0F0F0F0EFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEDEDEDFCFCFCFFFFFF}
      Header.Text = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Description.Text = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1075#1086#1083#1086#1074#1086#1082' '#1085#1072#1088#1103#1076#1072'.'
    end
    object tip_nDel: TdxBarScreenTip
      Header.Glyph.Data = {
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
      Header.Text = #1059#1076#1072#1083#1080#1090#1100
      Description.Text = 
        #1059#1076#1072#1083#1080#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1081' '#1085#1072#1088#1103#1076'.'#13#10'              '#1042#1053#1048#1052#1040#1053#1048#1045'!!'#13#10#1042#1089#1077' '#1079#1072#1087#1080#1089#1080' ' +
        #1089#1074#1103#1079#1072#1085#1085#1099#1077' '#1089' '#1085#1072#1088#1103#1076#1086#1084' '#1073#1091#1076#1091#1090' '#1091#1076#1072#1083#1077#1085#1099'!'
      UseStandardFooter = True
    end
    object tip_wAdd: TdxBarScreenTip
      Header.Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FDFDFDFBFBFBF9F9F9F6F6F6F4F4F4F3F3F3F3F3F3F4F4F4F6F6F6F8F8F8FBFB
        FBFDFDFDFFFFFFFFFFFFFEFEFEF7F7F7EEEEEEE4E4E4DBDBDBD3D3D3CBCBCBC1
        C4C2C1C4C2CACACAD1D1D1DADADAE3E3E3ECECECF6F6F6FEFEFEFFFFFFFFFFFF
        FFFFFFFEFEFEEFF5F180C09C2EB2690BB3560BB3562EB26980C09CEFF5F1FDFD
        FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2E8DC27B06425DC813EEDA24A
        F3B14AF4B23FEDA426DC8327B165D2E8DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E9F4EE29B66B43EEA854FABF4CECABADEBCEADE8CC4CE5A854FABF45F0AB2BB7
        6DE9F4EEFFFFFFFFFFFFFFFFFFFFFFFF6FC5963EEAA24BF5B34BF5B34AE7A3FF
        FFFFFFFFFF49E0A04BF5B34BF5B340ECA56FC697FFFFFFFFFFFFFFFFFFF8FCFA
        29C27552F2AF4CEDA44AE9A148DE97FFFFFFFFFFFF47D19042D9973ED89541F1
        A82CC579F8FCFAFFFFFFFFFFFFD3EEDF3ACE846AF2B5AFF4D0FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFA6DCC146EEA33CD187D3EEDFFFFFFFFFFFFFCCEDDB
        40C98173F0B5B1F4D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADDCC36FEF
        B340CB83CCEDDBFFFFFFFFFFFFECF9F228B4687CEBB36BEAA86CE7A764DD9DFF
        FFFFFFFFFF63CF966BD89F69D79F7BECB428B568ECF9F2FFFFFFFFFFFFFFFFFF
        47C17D6EC89787ECB788EFB974E3A7FFFFFFFFFFFF73DCA487EFB986ECB86CC9
        9747C17DFFFFFFFFFFFFFFFFFFFFFFFFC3F1D72AAA648DCDAA93DFB57BDFA8B7
        E9CDB7E6CC7BD8A593DFB68CCDA927A961C3F1D7FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF92E4B736AC6A95CAADA0CFB5A0CFB5A0CFB5A0CFB595C9AD34AA6992E4
        B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6F1D039BE744CB27A6A
        B1896CB28B4FB47D3ABE75B6F1D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFECEF7E0A5F1C6A5F1C6CEF7E0FEFEFEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Header.Text = #1044#1086#1073#1072#1074#1080#1090#1100
      Description.Text = #1044#1086#1073#1072#1074#1080#1090#1100' '#1088#1072#1073#1086#1090#1091' '#1087#1086' '#1085#1072#1088#1103#1076#1091
      UseStandardFooter = True
    end
    object tip_wEdit: TdxBarScreenTip
      Header.Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFF5F5F5
        EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE9E8E7E7E7ECECECE8E8
        E8EDEDEDFFFFFFFFFFFFFFFFFFF2F2F2F8F8F8F7F7F7F7F7F7F6F6F6F6F6F6F6
        F6F6F6F6F6F5F4F4F1EFEFF0EFEFF7F7F7E3E3E3F7F7F7FFFFFFDBDCDDC1C9D2
        F6F6F6F6F6F6F6F6F6F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F3F3F2EFEFEFEF
        EFF2F2F2F2F2F2FFFFFFFFFFFFBCD0EE6CA8DAD1E0EAF4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F3F3F2EFEFEFEEEEF3F3F3FFFFFFFFFFFFEDF2F6
        55C4F61796DFBED6E5F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F4F4F4F4F3
        F2F2F0EFF4F4F4FFFFFFFFFFFFF4F4F4DDEEF450C5F60E96E1AACBE1F1F1F1F1
        F1F1F1F1F1F2F2F2F2F2F2F3F3F3F3F3F3F4F2F2F5F5F5FFFFFFFFFFFFF4F4F4
        F2F2F2E3EEF361CAF60A98E593C0DDF0F0F0F0F0F0F0F0F0F1F1F1F2F2F2F3F3
        F3F3F3F3F5F5F5FFFFFFFFFFFFF5F5F5F2F2F2F1F1F1E6EDF070CFF50B9DE97B
        B4D9EEEEEEEFEFEFF0F0F0F1F1F1F2F2F2F2F2F2F5F5F5FFFFFFFFFFFFF5F5F5
        F1F1F1F0F0F0EFEFEFE8ECEE7FD2F40FA3EC62AAD8EAEBECEFEFEFF0F0F0F1F1
        F1F2F2F2F5F5F5FFFFFFFFFFFFF5F5F5F0F0F0F0F0F0EEEEEEEDEDEDE9EBEC8C
        D5F216A9EE4CA2D8E5E8EAEFEFEFF1F1F1F1F1F1F6F6F6FFFFFFFFFFFFF5F5F5
        EFEFEFEFEFEFEDEDEDECECECEAEAEAE9E9EA99D7F01EAEF1399DD9D9E1E6F0F0
        F0F0F0F0F6F6F6FFFFFFFFFFFFF6F6F6EFEFEFEFEFEFEDEDEDEBEBEBE9E9E9E8
        E8E8E9E9E9A7DAEF2FB4EFABBECAE1E2E3F0F0F0F7F7F7FFFFFFFFFFFFF6F6F6
        EEEEEEEFEFEFEDEDEDEBEBEBE9E9E9E8E8E8E9E9E9EBEBEBD1DBE0C3C3C3B5C0
        DDD6DCEEF7F7F7FFFFFFFFFFFFF7F7F7EEEEEEEFEFEFEDEDEDEBEBEBEAEAEAE9
        E9E9E9E9E9EBEBEBEDEDEDDBDEE8C8D8FDD8DFF3F8F8F8FFFFFFFFFFFFF7F7F7
        EEEEEEEFEFEFEEEEEEECECECEBEBEBEBEBEBEBEBEBECECECEDEDEDEFEFEFE5E7
        F1EEEEEEF9F9F9FFFFFFFFFFFFFBFBFBF0F0F0F1F1F1F0F0F0F0F0F0EFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEDEDEDFCFCFCFFFFFF}
      Header.Text = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Description.Text = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1088#1072#1073#1086#1090#1091' '#1087#1086' '#1085#1072#1088#1103#1076#1091'.'
      UseStandardFooter = True
    end
    object tip_wDel: TdxBarScreenTip
      Header.Glyph.Data = {
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
      Header.Text = #1059#1076#1072#1083#1080#1090#1100
      Description.Text = 
        #1059#1076#1072#1083#1080#1090#1100' '#1088#1072#1073#1086#1090#1091' '#1087#1086' '#1085#1072#1088#1103#1076#1091'.'#13#10'          '#1042#1053#1048#1052#1040#1053#1048#1045'!!!'#13#10#1041#1091#1076#1091#1090' '#1091#1076#1072#1083#1077#1085#1099' ' +
        #1074#1089#1077' '#1084#1072#1090#1077#1088#1080#1072#1083#1099' '#1089#1074#1103#1079#1072#1085#1085#1099#1077' '#1089' '#1076#1072#1085#1085#1086#1081' '#1088#1072#1073#1086#1090#1086#1081'!'
      UseStandardFooter = True
    end
    object tip_mAdd: TdxBarScreenTip
      Header.Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FDFDFDFBFBFBF9F9F9F6F6F6F4F4F4F3F3F3F3F3F3F4F4F4F6F6F6F8F8F8FBFB
        FBFDFDFDFFFFFFFFFFFFFEFEFEF7F7F7EEEEEEE4E4E4DBDBDBD3D3D3CBCBCBC1
        C4C2C1C4C2CACACAD1D1D1DADADAE3E3E3ECECECF6F6F6FEFEFEFFFFFFFFFFFF
        FFFFFFFEFEFEEFF5F180C09C2EB2690BB3560BB3562EB26980C09CEFF5F1FDFD
        FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2E8DC27B06425DC813EEDA24A
        F3B14AF4B23FEDA426DC8327B165D2E8DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E9F4EE29B66B43EEA854FABF4CECABADEBCEADE8CC4CE5A854FABF45F0AB2BB7
        6DE9F4EEFFFFFFFFFFFFFFFFFFFFFFFF6FC5963EEAA24BF5B34BF5B34AE7A3FF
        FFFFFFFFFF49E0A04BF5B34BF5B340ECA56FC697FFFFFFFFFFFFFFFFFFF8FCFA
        29C27552F2AF4CEDA44AE9A148DE97FFFFFFFFFFFF47D19042D9973ED89541F1
        A82CC579F8FCFAFFFFFFFFFFFFD3EEDF3ACE846AF2B5AFF4D0FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFA6DCC146EEA33CD187D3EEDFFFFFFFFFFFFFCCEDDB
        40C98173F0B5B1F4D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADDCC36FEF
        B340CB83CCEDDBFFFFFFFFFFFFECF9F228B4687CEBB36BEAA86CE7A764DD9DFF
        FFFFFFFFFF63CF966BD89F69D79F7BECB428B568ECF9F2FFFFFFFFFFFFFFFFFF
        47C17D6EC89787ECB788EFB974E3A7FFFFFFFFFFFF73DCA487EFB986ECB86CC9
        9747C17DFFFFFFFFFFFFFFFFFFFFFFFFC3F1D72AAA648DCDAA93DFB57BDFA8B7
        E9CDB7E6CC7BD8A593DFB68CCDA927A961C3F1D7FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF92E4B736AC6A95CAADA0CFB5A0CFB5A0CFB5A0CFB595C9AD34AA6992E4
        B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6F1D039BE744CB27A6A
        B1896CB28B4FB47D3ABE75B6F1D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFECEF7E0A5F1C6A5F1C6CEF7E0FEFEFEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Header.Text = #1044#1086#1073#1072#1074#1080#1090#1100
      Description.Text = #1044#1086#1073#1072#1074#1080#1090#1100' '#1084#1072#1090#1077#1088#1080#1072#1083' '#1082' '#1088#1072#1073#1086#1090#1077' '#1087#1086' '#1085#1072#1088#1103#1076#1091'.'
    end
    object tip_mEdit: TdxBarScreenTip
      Header.Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFF5F5F5
        EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE9E8E7E7E7ECECECE8E8
        E8EDEDEDFFFFFFFFFFFFFFFFFFF2F2F2F8F8F8F7F7F7F7F7F7F6F6F6F6F6F6F6
        F6F6F6F6F6F5F4F4F1EFEFF0EFEFF7F7F7E3E3E3F7F7F7FFFFFFDBDCDDC1C9D2
        F6F6F6F6F6F6F6F6F6F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F3F3F2EFEFEFEF
        EFF2F2F2F2F2F2FFFFFFFFFFFFBCD0EE6CA8DAD1E0EAF4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F3F3F2EFEFEFEEEEF3F3F3FFFFFFFFFFFFEDF2F6
        55C4F61796DFBED6E5F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F4F4F4F4F3
        F2F2F0EFF4F4F4FFFFFFFFFFFFF4F4F4DDEEF450C5F60E96E1AACBE1F1F1F1F1
        F1F1F1F1F1F2F2F2F2F2F2F3F3F3F3F3F3F4F2F2F5F5F5FFFFFFFFFFFFF4F4F4
        F2F2F2E3EEF361CAF60A98E593C0DDF0F0F0F0F0F0F0F0F0F1F1F1F2F2F2F3F3
        F3F3F3F3F5F5F5FFFFFFFFFFFFF5F5F5F2F2F2F1F1F1E6EDF070CFF50B9DE97B
        B4D9EEEEEEEFEFEFF0F0F0F1F1F1F2F2F2F2F2F2F5F5F5FFFFFFFFFFFFF5F5F5
        F1F1F1F0F0F0EFEFEFE8ECEE7FD2F40FA3EC62AAD8EAEBECEFEFEFF0F0F0F1F1
        F1F2F2F2F5F5F5FFFFFFFFFFFFF5F5F5F0F0F0F0F0F0EEEEEEEDEDEDE9EBEC8C
        D5F216A9EE4CA2D8E5E8EAEFEFEFF1F1F1F1F1F1F6F6F6FFFFFFFFFFFFF5F5F5
        EFEFEFEFEFEFEDEDEDECECECEAEAEAE9E9EA99D7F01EAEF1399DD9D9E1E6F0F0
        F0F0F0F0F6F6F6FFFFFFFFFFFFF6F6F6EFEFEFEFEFEFEDEDEDEBEBEBE9E9E9E8
        E8E8E9E9E9A7DAEF2FB4EFABBECAE1E2E3F0F0F0F7F7F7FFFFFFFFFFFFF6F6F6
        EEEEEEEFEFEFEDEDEDEBEBEBE9E9E9E8E8E8E9E9E9EBEBEBD1DBE0C3C3C3B5C0
        DDD6DCEEF7F7F7FFFFFFFFFFFFF7F7F7EEEEEEEFEFEFEDEDEDEBEBEBEAEAEAE9
        E9E9E9E9E9EBEBEBEDEDEDDBDEE8C8D8FDD8DFF3F8F8F8FFFFFFFFFFFFF7F7F7
        EEEEEEEFEFEFEEEEEEECECECEBEBEBEBEBEBEBEBEBECECECEDEDEDEFEFEFE5E7
        F1EEEEEEF9F9F9FFFFFFFFFFFFFBFBFBF0F0F0F1F1F1F0F0F0F0F0F0EFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEDEDEDFCFCFCFFFFFF}
      Header.Text = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Description.Text = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1084#1072#1090#1077#1088#1080#1072#1083
    end
    object tip_mDel: TdxBarScreenTip
      Header.Glyph.Data = {
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
      Header.Text = #1059#1076#1072#1083#1080#1090#1100
      Description.Text = #1059#1076#1072#1083#1080#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1081' '#1084#1072#1090#1077#1088#1080#1072#1083'.'
    end
    object tip_nPrint: TdxBarScreenTip
      Header.Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FEFEFEFDFDFD
        FBFBFBF8F8F8F6F6F6F4F4F4F3F3F3F3F3F3F3F3F3F3F3F3F4F4F4F5F5F5F8F8
        F8FAFAFAFCFCFCFEFEFEF9F9F9F5F5F5EEEEEEE0DEDBD5D0CBCCC7C3C5C0BBC0
        BBB7BFBAB6C1BDB8C7C2BECFCAC6D7D2CDE8E8E8F1F1F1F7F7F7FAFAFAF4F4F4
        ECECECC2B8AFC2B5A9CDC3BACCC2BACCC2BACCC2B9CBC2B9CBC1B9CBC1B8A795
        84DDDDDDF0F0F0F8F8F8FFFFFFF7F7F7ECECECBEBBB8A29A92B5B5B5B5B5B5B6
        B6B6B6B6B6B6B6B6B6B6B6B6B6B6968A80E4E4E4F4F4F4FFFFFFFEFEFEE9E9E9
        E9E9E99595955B5B5A5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5C5B
        5BDADADAE4E4E4FEFEFEFFFFFFE2E2E2DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDD76BC95B6CCC0D9D9D9FDFDFDFFFFFFDDDDDD
        D0CECDC5B6ACC4B5AAC4B5AAC4B5AAC4B5AAC4B5AAC4B5AAC4B5AAC4B5AAB7AC
        9EC6BCB4D0D0D0FFFFFFFFFFFFF2F2F2BAAEA693634296674696674696674696
        6746966746966746966746966746966746A18069E1E1E1FFFFFFFFFFFFFFFFFF
        F0F0F0BDB2AA9D948ED2D1D1D2D1D1D2D1D1D2D1D1D2D1D1D2D1D1C0BEBDA99C
        92E2E0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4F2F2F2F2F2F2F2
        F2F2F2F2F2F2F2F2F2F2F2ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6F6F6F1F1F1F0F0F0F1F1F1F2F2F2F5F5F5F6F6F6EFEFEFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0F0F0F0F0EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6F6F6EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEECECECFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Header.Text = #1055#1077#1095#1072#1090#1100
      Description.Glyph.Data = {
        06160000424D0616000000000000360400002800000078000000260000000100
        080000000000D0110000C40E0000C40E00000001000000010000444444005757
        57005B5B5B005D5D5D005E5E5E005F5F5F006060600064646400676767006868
        6800696969006C6C6C006D6D6D006E6E6E007171710072727200737373007575
        75007777770078787800797979007B7B7B007C7C7C007D7D7D007E7E7E007F7F
        7F00808080008181810082828200838383008686860087878700888888008989
        89008B8B8B008C8C8C008D8D8D008E8E8E009090900091919100939393009494
        9400959595009696960097979700999999009B9B9B009C9C9C009D9D9D009E9E
        9E009F9F9F00A0A0A000A1A1A100A2A2A200A3A3A300A5A5A500A6A6A600A7A7
        A700A8A8A800A9A9A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAF
        AF00B0B0B000B1B1B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7
        B700B8B8B800B9B9B900BABABA00BBBBBB00BCBCBC00BDBDBD00BEBEBE00BFBF
        BF00C0C0C000C1C1C100C2C2C200C3C3C300C4C4C400C5C5C500C6C6C600C7C7
        C700C8C8C800C9C9C900CACACA00CBCBCB00CCCCCC00CDCDCD00CECECE00CFCF
        CF00D0D0D000D1D1D100D2D2D200D3D3D300D4D4D400D5D5D500D6D6D600D7D7
        D700D8D8D800D9D9D900DADADA00DBDBDB00DCDCDC00DDDDDD00DEDEDE00DFDF
        DF00E0E0E000E1E1E100E2E2E200E3E3E300E4E4E400E5E5E500E6E6E600E7E7
        E700E8E8E800E9E9E900EAEAEA00EBEBEB00ECECEC00EDEDED00EEEEEE00EFEF
        EF00F0F0F000F1F1F100F2F2F200F3F3F300F4F4F400F5F5F500F6F6F600F7F7
        F700F8F8F800F9F9F900FAFAFA00FBFBFB00FCFCFC00FDFDFD00FEFEFE00FFFF
        FF00000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000816586878E84
        868C8489858E908F618E8F89878C8D8E87918E91919191919191919191919191
        91919191919191919191915C898D888484919191919191919191919191919191
        919191919191919191919191919191919191919191919161857F8E9191919191
        919161847C84898C91919191919191919161814563496F426660604A52618171
        613B623C41415F59269161919191919191919191919191919191919191919191
        9191912F48445247599191919191919191919191919191919191919191919191
        9191919191919191919191919191916152246191919191919191493D8B50315D
        91919191919191919140815056557E47656F6D4B535973786144667A41787173
        729159919191919191919191919191919191919191919191919191367A807156
        5991919191919191919191919191919191919191919191919191919191919191
        9191919191919161867A71829191919191915649915042659191919191919191
        914D813D55555555555555555555555531555555555555555555555555555555
        5555555555555555555555555555555555555531555555555555555555555555
        5555555555555555555555555555555555555555555555555555555555555531
        5555555555555555555531555555555555555555555555555531815A76767676
        76767676767676764B7676767676767676767676767676767676767676767676
        76767676767676767676764B7676767676767676767676767676767676767676
        76767676767676767676767676767676767676767676764B7676767676767676
        76764B76767676767676767676767676764B815A767676767676767676767676
        4B76767676767676767676767676767676767676767676767676767676767676
        7676764B76767676767676767676767676767676767676767676767676767676
        7676767676767676767676767676764B767676767676767676764B7676767676
        7676767676767676764B815A7676767676767676767676764B76767676767676
        767676767676767676767676767676766D767676767676767676764B76767676
        7676767676767676767676767676767073767676767676767176767676767671
        767676767676764B767676767676767676764B76767676767676767676767676
        764B815A7676662A1E2A4744427676764B7676767647382538312B3A532B3A44
        203F283138383776083D3A2B3D4247767676764B7676767676766E333D3F3131
        462537471E3A533D273F42264247475F1C313F473F47371C6E7676767676764B
        3A3C1846761E49362B474B76765F36443C31523D42267176764B815976767625
        1B142338347676764B76767676141D10281513222C0A273404421010281D0B76
        103D230E262D21767676764B7676767676764E380A211A1A4315252D06222C4B
        1E36310D2E2D25560E202321342127106B7676767676764B1B63027676063E25
        13604B76764B073834095F282E106E76764B81597676764B5B76767676767676
        4B767676765B5B7676767676767676767676767676767676767676596E767676
        7676764B76767676767676447276767676767676767676767676765373767676
        6376767676767663767676767676764B4E6376767676767676764B7676695371
        7676767676767676764B81597676767676767676767676764B76767676767676
        7676767676767676767676767676767676767676767676767676764B76767676
        7676767676767676767676767676767676767676767676767676767676767676
        767676767676764B767676767676767676764B76767676767676767676767676
        764B815A7676767676767676767676764B767676767676767676767676767676
        767676767676767676767676767676767676764B767676767676767676767676
        767676767676767676767676767676767676767676767676767676767676764B
        767676767676767676764B76767676767676767676767676764B815A76767676
        76767676767676764B7676767676767676767676767676767676767676767676
        76767676767676767676764B7676767676767676767676767676767676767676
        76767676767676767676767676767676767676767676764B7676767676767676
        76764B76767676767676767676767676764B8A555B5B5B5B5B5B5B5B5B5B5B5B
        525B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B
        5B5B5B525B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B
        5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B525B5B5B5B5B5B5B5B5B5B525B5B5B5B5B
        5B5B5B5B5B5B5B5B5B5291919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191918E62616161616161616161616161
        6161616161616161616161616261616261616261616261616261616261616261
        6162616261616261616261616261616261616261616261616261919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        91919191919191919191918080522F747586759191919191919191918E647586
        7289897A64898989898991917A64808989866486898989788989898991898991
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        919191301F220518171154919191919191919191916353356076612D5F61553E
        643B915F285F61614648452C44494C5D4C5E4353915E228E9191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191916C447D7D83
        7D897D9191919191919191918E57566458915343625358586D50917049626458
        555C526D5870705B616768818867589191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191918E626262525E6261626162626262
        6262626262626262626262626262626262626262626262626262626262626262
        626262626262626262626262626262626262626262626262626A919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191545441173B532D197734356F914B8891919191915A
        4E54915C69617A516A6D58675B73877D91919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191912D2247313E4D48129101195A9132919191919191574B3788875E4F7151
        7564853761517171919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191917474898989
        8A89898A6D7B89897D8989898989898989898970716D88636A826D7A677D8482
        898989898989898989898A898A8A898A8A898A8A898A8A898A8A898A8A898A8A
        898A919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191918E66592C5E6352605B5B5D635653
        435E5E63695D635966566964695E5E635B61635E615B69696969696969696969
        6969696969696969696969696969696969696969696969696969919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        91919191919191919191913A2C241B3703270C003E291612020F1351915A6057
        4B6C655B62474832592A5A332A59809191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191915739797A716C7D737377837477707C6E84915E6958635E75674F7B7A83
        7581847B81759091919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191919191
        91919191919191919191}
      Description.Text = #13#10#1055#1077#1095#1072#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1086#1075#1086' '#1085#1072#1088#1103#1076#1072'.'
      Description.TextAlign = stbtaLeft
      UseStandardFooter = True
    end
    object tip_autoCreate: TdxBarScreenTip
      Header.Glyph.Data = {
        36C00000424D36C0000000000000360000002800000080000000800000000100
        18000000000000C00000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFEFEFEFDFDFDFDFDFDFCFCFCFBFBFBFAFAFAFAFAFAF9F9F9
        F8F8F8F8F8F8F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F8F8F8F9F9F9F9F9F9FAFA
        FAFAFAFAFBFBFBFCFCFCFCFCFCFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFCFCFCFAFAFAF7F7F7F4F4F4F1F1F1ED
        EDEDEBEBEBE9E9E9E7E7E7E5E5E5E3E3E3E1E1E1DFDFDFDEDEDEDCDCDCDBDBDB
        DADADAD9D9D9D9D9D9D8D8D8D8D8D8D8D8D8D8D8D8D9D9D9DADADADBDBDBDCDC
        DCDDDDDDDEDEDEE0E0E0E2E2E2E4E4E4E6E6E6E8E8E8EAEAEAEDEDEDF1F1F1F4
        F4F4F7F7F7FAFAFAFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFCFCFCF9F9F9F5F5F5F2F2F2EFEFEFECECECE9E9E9E6E6E6E4E4E4E1
        E1E1DEDEDEDBDBDBD8D8D8D5D5D5D3D3D3D0D0D0CDCDCDCBCBCBC9C9C9C6C6C6
        C4C4C4C3C3C3C1C1C1C0C0C0C0C0C0C0C0C0C0C0C0C1C1C1C3C3C3C5C5C5C7C7
        C7C9C9C9CCCCCCCECECED1D1D1D4D4D4D7D7D7D9D9D9DCDCDCDFDFDFE2E2E2E5
        E5E5E8E8E8EBEBEBEEEEEEF1F1F1F4F4F4F9F9F9FCFCFCFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFDFDFDFAFAFAF7F7F7F4F4F4F1F1F1EEEEEEEBEBEBE8E8E8E5E5E5E2E2E2DF
        DFDFDCDCDCD9D9D9D6D6D6D3D3D3D0D0D0CDCDCDCACACAC8C8C8C5C5C5C2C2C2
        BFBFBFBDBDBDBBBBBBB9B9B9B8B8B8B8B8B8B9B9B9BBBBBBBDBDBDC0C0C0C3C3
        C3C5C5C5C8C8C8CBCBCBCECECED1D1D1D4D4D4D7D7D7DADADADDDDDDE0E0E0E3
        E3E3E6E6E6E9E9E9ECECECEFEFEFF3F3F3F6F6F6F9F9F9FCFCFCFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFDFDFDFBFBFBF8F8F8F5F5F5F3F3F3F0F0F0EEEEEEEBEBEBE9
        E9E9E6E6E6E4E4E4E1E1E1DFDFDFDDDDDDDBDBDBD9D9D9D7D7D7D6D6D6D4D4D4
        D3D3D3D2D2D2D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D2D2D2D2D2D2D4D4D4D5D5
        D5D6D6D6D8D8D8DADADADCDCDCDEDEDEE0E0E0E3E3E3E5E5E5E7E7E7EAEAEAEC
        ECECEFEFEFF2F2F2F4F4F4F7F7F7FAFAFAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFBFBFBF9
        F9F9F8F8F8F6F6F6F4F4F4F3F3F3F1F1F1F0F0F0EEEEEEEDEDEDD1DED798C0AA
        7EB29565A6824C996F389160509B7168A78581B4979CC2ADD5DFDAEBEBEBECEC
        ECEDEDEDEEEEEEEFEFEFF0F0F0F2F2F2F3F3F3F5F5F5F7F7F7F9F9F9FBFBFBFD
        FDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFE4D881B99A308E5B077639097A3C
        0E85450D8F48099849099F4C0997480D8D470D834208783A07763937926088BD
        A0D9EAE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFD5E7DD4D9D710776390C8241099F4C0BBF5B0CD666
        0DD8670DD8670DD8670DD8670DD8670DD8670DD8670CD5650BBB59099B4A0B7E
        3E0776395FA67FE0EEE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFE6F1EB66AB8508793B0B89440BBA590DD5660DD5660DD5660DD566
        0DD5660DD5660DD5660DD5660DD5660DD5660DD5660DD5660DD5660DD5660CD4
        650AB4560B84410B7A3D74B391EFF6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFC7E1D31985490B85420AB2550CD2640DD3650DD3650DD3650DD3661EDC7A
        28E28830E59036E9993BECA037E99A30E59129E28820DD7C0ED4670DD3650DD3
        650DD3650CD0640AAC520A8140258B52D8EAE0FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA5
        D0B80B803F0A96490CCB610DD0640DD06415D56F33E69448F2AF5BFCC75FFFCC
        5FFFCC5FFFCC5FFFCC5FFFCC5FFFCC5FFFCC5FFFCC5FFFCC5CFDC849F2B035E7
        9618D6710DD0640DD0640CC7600B8F46118444B8DAC7FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8CC4A507
        803E09A44E0CCD610DCE621ED97941EDA55BFCC65CFDC85CFDC85CFDC85CFDC8
        5CFDC85CFDC85CFDC85CFDC85CFDC85CFDC85CFDC85CFDC85CFDC85CFDC85CFD
        C85BFCC643EFA821D97C0DCE620CCB60099B4A07803EA5D1B9FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F8
        F8E0D8D5D3C8C5CABCB8C8BAB5C9BAB7C9BAB7C9BAB7C9BAB7C9BAB7C9BAB7C9
        BAB7C9BAB7C9BBB7C9BBB7C9BBB7C9BBB7C9BBB7C9BBB7C9BBB7C9BBB7C9BBB7
        C9BBB7C9BBB7C9BBB7C9BBB7C9BBB7C9BBB7C9BBB7C9BBB7C9BBB7C9BBB7C9BB
        B7C9BBB7C9BBB7C9BBB7C9BBB7C9BBB7C9BBB7C9BBB7C9BBB7C9BBB7C9BBB7C9
        BBB7C9BBB7C9BBB7C9BBB7C9BBB7C9BBB7CABBB7CABBB7CABBB7CABBB7CABBB7
        CABBB7CABBB7CABBB7CABBB7CABBB7CABBB7CABBB7CABBB7CABCB7CABCB7CABC
        B7CABCB7CABCB7CABCB7CABCB7CABCB7CABCB7CABCB7CABCB78BA99007833F09
        AC520CCB6113D06A40ECA559FCC559FCC559FCC559FCC559FCC559FCC559FCC5
        59FCC559FCC559FCC559FCC559FCC559FCC559FCC559FCC559FCC559FCC559FC
        C559FCC559FCC559FCC544EEA915D16D0CCB6109A44E0A8442C6E2D3FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEE8E8CABB
        B7C5B5B1C7B8B2CFBFBAD6C5C1D8C7C2D8C7C2D8C7C2D8C7C2D8C7C2D8C7C2D8
        C7C2D8C7C2D8C7C2D8C7C2D8C7C2D8C7C2D8C7C2D8C7C2D8C7C2D8C7C2D8C7C2
        D8C7C2D8C7C2D8C7C2D8C7C2D8C7C2D8C7C2D8C7C2D8C7C2D8C7C2D8C7C2D8C7
        C2D8C7C2D8C7C2D8C7C2D8C7C2D8C7C2D8C7C2D8C7C2D8C7C2D8C7C2D8C7C2D8
        C7C2D8C7C2D8C7C2D8C7C2D8C8C2D8C8C2D8C8C2D8C8C2D8C8C2D8C8C2D8C8C2
        D8C8C2D8C8C2D8C8C2D8C8C2D8C8C2D8C8C2D8C8C2D8C8C2D8C8C2D8C8C2D8C8
        C2D8C8C2D8C8C2D8C8C2D8C8C2D8C8C2D8C8C2D8C8C2B2BCAA0E884409A14D0C
        C86027DB8451F7BB56FBC156FBC156FBC156FBC156FBC156FBC154FABE36D78B
        3AD48C3AD38A39D08A39CF8939CD8839CB8738C98638CE8B56FBC156FBC156FB
        C156FBC156FBC156FBC156FBC152F8BC2BDC880BC75F0A9A4A168C4AE1EFE7FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F0F0C5B6B1C4B5
        B0D6C5C0EBD8D2ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4EC
        DAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4
        ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDA
        D4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4EC
        DAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4
        ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDA
        D4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4DED5CB1F92510B994A0BC55E2F
        DF8D53FABE53FABE53FABE53FABE53FABE53FABE53FABE53FABE50F8BB2DC472
        C2ECD5C2EBD4C2EBD4C2EAD4C2E9D3C2E8D3C1E7D223AD6453FABE53FABE53FA
        BE53FABE53FABE53FABE53FABE53FABE53FABE33E2920BC35D0C94482D985BFC
        FDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFECDC0BBC3B4AFE0CE
        C9ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4EC
        DAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4
        ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDA
        D4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4EC
        DAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4
        ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDA
        D4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD4ECDAD474B1870B8F460BBE5A2EDE8C50
        F8BA50F8BA50F8BA50F8BA50F8BA50F8BA50F8BA50F8BA50F8BA4DF6B738CA7C
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF24AF6650F8BA50F8BA50F8
        BA50F8BA50F8BA50F8BA50F8BA50F8BA50F8BA50F8BA33E1920ABB59098D4497
        CAACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F1F1C2B3AFD3C3BDECDA
        D4ECDAD4ECDAD4ECDAD4ECDAD4D3C4BFCABDB8CABDB8CABDB8CABDB8CABDB8CA
        BDB8CABDB8CABDB8CABDB8CABDB8CABDB8CABDB8CABDB8CABDB8CABDB8CABDB8
        CABDB8CABDB8CABDB8CABDB8CABDB8CABDB8CABDB8CABDB9CABDB9CABDB9CABD
        B9CABDB9CABDB9CABDB9CABDB9CABDB9CABDB9CABDB9CABDB9CABDB9CABDB9CA
        BDB9CABDB9CABDB9CABDB9CABDB9CABDB9CABDB9CABDB9CABDB9CABDB9CABDB9
        CABDB9CABDB9CABDB9CABDB9CABDB9CABDB9CABDB9CABDB9CABDB9CABDB9CABD
        B9CABDB9CABDB9CABDB9CABDB9CABDB9B6B8AD0D90480AA95124D57E4EF7B74E
        F7B74EF7B74EF7B74EF7B74EF7B74EF7B74EF7B74EF7B74EF7B74BF5B438CA7C
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF24B1664EF7B74EF7B74EF7
        B74EF7B74EF7B74EF7B74EF7B74EF7B74EF7B74EF7B74EF7B728D8830AA44F19
        9550F5FAF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E2E0C1B2AEE8D7D0ECDA
        D4ECDAD4ECDAD4E8D6D0C0B6B2E3DBD8F6EDEBF6EDEBF6EDEBF6EDEBF6EEEBF6
        EEEBF6EEEBF6EEEBF6EEEBF6EEEBF6EEEBF6EEEBF6EEEBF6EEEBF6EEEBF6EEEB
        F6EEEBF6EEEBF6EEEBF6EEEBF6EEEBF6EEEBF6EEEBF6EEEBF6EEEBF6EEEBF6EE
        EBF6EEEBF6EEEBF6EEEBF6EEEBF6EEEBF6EEEBF6EEEBF6EEEBF6EEEBF6EEEBF6
        EEEBF6EEEBF6EEEBF6EEECF6EEECF6EEECF6EEECF6EEECF6EEECF6EEECF6EEEC
        F6EEECF6EEECF6EEECF6EEECF6EEECF6EEECF6EFECF6EFECF6EFECF6EFECF6EF
        ECF6EFECF6EFECF6EFECF6EFECF6EFEC65B6860C974A12C36547F2AD4BF6B34B
        F6B34BF6B34BF6B34BF6B34BF6B34BF6B34BF6B34BF6B34BF6B348F4B038CC7B
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF25B1664BF6B34BF6B34BF6
        B34BF6B34BF6B34BF6B34BF6B34BF6B34BF6B34BF6B34BF6B349F3AF15C4670A
        944888CAA6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0D9D6C6B7B1ECDAD4ECDA
        D4ECDAD4ECDAD4CBBDB8F0E8E6F6EEEBF6EEEBF6EEEBF6EEEBF6EEEBF6EEEBF6
        EEEBF6EEEBF6EEEBF6EEEBF6EEEBF6EEEBF6EEEBF6EEEBF6EEEBF6EEECF6EEEC
        F6EEECF6EEECF6EEECF6EEECF6EEECF6EEECF6EEECF6EEECF6EEECF6EEECF6EE
        ECF6EEECF6EFECF6EFECF6EFECF6EFECF6EFECF6EFECF6EFECF6EFECF6EFECF6
        EFECF6EFECF6EFECF6EFECF6EFECF6EFECF6EFECF6EFECF6EFECF6EFECF6EFEC
        F6EFECF6EFECF7EFECF7EFECF7EFECF7EFECF7EFECF7EFECF7EFECF7EFEDF7EF
        EDF7EFEDF7EFEDF7EFEDF7EFEDEAEAE40D974A0AAC5237E49848F4B048F4B048
        F4B048F4B048F4B048F4B048F4B048F4B048F4B048F4B048F4B045F2AD38CD7C
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF25B26748F4B048F4B048F4
        B048F4B048F4B048F4B048F4B048F4B048F4B048F4B048F4B048F4B03BE79E09
        A850199C53FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDED7D4CDBDB9ECDAD4ECDA
        D4ECDAD4ECDAD4C9BEBBF6EEECF6EEECF6EEECF6EEECF6EFECF6EFECF6EFECF6
        EFECF6EFECF6EFECF6EFECF6EFECF6EFECF6EFECF6EFECF6EFECF6EFECF6EFEC
        F6EFECF6EFECF6EFECF6EFECF6EFECF6EFECF6EFECF6EFECF7EFECF7EFECF7EF
        ECF7EFECF7EFECF7EFECF7EFECF7EFEDF7EFEDF7EFEDF7EFEDF7EFEDF7EFEDF7
        EFEDF7EFEDF7EFEDF7EFEDF7EFEDF7EFEDF7EFEDF7EFEDF7EFEDF7EFEDF7EFED
        F7EFEDF7EFEDF7EFEDF7EFEDF7EFEDF7EFEDF7F0EDF7F0EDF7F0EDF7F0EDF7F0
        EDF7F0EDF7F0EDF7F0EDF7F0EDA7D2B60A984A13BF6545F3AD45F3AD45F3AD45
        F3AD45F3AD45F3AD45F3AD45F3AD45F3AD45F3AD45F3AD45F3AD42F1AA38CE7D
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF24B36745F3AD45F3AD45F3
        AD45F3AD45F3AD45F3AD45F3AD45F3AD45F3AD45F3AD45F3AD45F3AD45F3AD16
        C069099849C4E6D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDED6D4CEBEB9ECDAD4ECDA
        D4ECDAD4ECDAD4CDC2BFF7EFECF7EFECF7EFECF7EFECF7EFECF7EFECF7EFECF7
        EFEDF7EFEDF7EFEDF7EFEDF7EFEDF7EFEDF7EFEDF7EFEDF7EFEDF7EFEDF7EFED
        F7EFEDF7EFEDF7EFEDF7EFEDF7EFEDF7EFEDF7EFEDF7EFEDF7EFEDF7EFEDF7EF
        EDF7EFEDF7F0EDF7F0EDF7F0EDF7F0EDF7F0EDF7F0EDF7F0EDF7F0EDF7F0EDF7
        F0EDF7F0EDF7F0EDF7F0EDF7F0EDF7F0EDF7F0EDF7F0EDF7F0EDF7F0EDF7F0ED
        F7F0EDF7F0EEF7F0EEF7F0EEF7F0EEF7F0EEF7F0EEF7F0EEF7F0EEF7F0EEF7F0
        EEF7F0EEF7F0EEF7F0EEF7F0EE5BB8820CA24F29D78442F2A943F2A951F3B05A
        F3B461F4B762F4B760F4B65EF3B658F3B34EF2AE45F2AA42F2A93FF0A638CE7D
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF24B56742F2A942F2A942F2
        A942F2A942F2A942F2A942F2A942F2A942F2A942F2A942F2A942F2A942F2A92D
        DB8A0EA04F76C79AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDD6D4CDBEB8ECDAD4ECDA
        D4ECDAD4ECDAD4CDC3BFF7EFEDF7EFEDF7EFEDF7EFEDF7F0EDF7F0EDF7F0EDF7
        F0EDF7F0EDF7F0EDF7F0EDF7F0EDF7F0EDF7F0EDF7F0EDF7F0EDF7F0EDF7F0ED
        F7F0EDF7F0EDF7F0EDF7F0EDF7F0EDF7F0EDF7F0EDF7F0EEF7F0EEF7F0EEF7F0
        EEF7F0EEF7F0EEF7F0EEF7F0EEF7F0EEF7F0EEF7F0EEF7F0EEF7F0EEF7F0EEF7
        F0EEF7F0EEF7F0EEF7F0EEF7F0EEF7F0EEF7F0EEF7F0EEF7F0EEF7F0EEF7F0EE
        F7F0EEF7F0EEF7F0EEF7F0EEF7F1EEF7F1EEF7F1EEF7F1EEF7F1EEF7F1EEF7F1
        EEF7F1EEF7F1EEF7F1EEF2EFEA13A1530AA95139EA9C49F1AA61F3B665F3B765
        F3B765F3B765F3B765F3B765F3B765F3B765F3B765F3B75FF3B54CF0AA38CF7D
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF24B5673FF1A63FF1A63FF1
        A63FF1A63FF1A63FF1A63FF1A63FF1A63FF1A63FF1A63FF1A63FF1A63FF1A63C
        EEA209A75025A861FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDD6D3CCBDB8ECDAD4ECDA
        D4ECDAD4ECDAD4CDC3C0F7F0EEF7F0EEF7F0EEF7F0EEF7F0EEF7F0EEF7F0EEF7
        F0EEF7F0EEF7F0EEF7F0EEF7F0EEF7F0EEF7F0EEF7F0EEF7F0EEF7F0EEF7F0EE
        F7F0EEF7F0EEF7F0EEF7F0EEF7F0EEF7F0EEF7F0EEF7F0EEF7F0EEF7F0EEF7F1
        EEF7F1EEF7F1EEF7F1EEF7F1EEF7F1EEF7F1EEF7F1EEF7F1EEF7F1EEF7F1EEF7
        F1EEF7F1EEF7F1EEF7F1EEF7F1EFF7F1EFF7F1EFF7F1EFF7F1EFF7F1EFF7F1EF
        F8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1
        EFF8F1EFF8F1EFF8F1EFCFE3D309A04D0BB05445EEA566F2B668F2B668F2B668
        F2B63DE58C2FE18030E1802FDF7F2FDD7E2FDA7D2FD77C2ED47A2ED2794BD589
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF24B46528B66A28B46927B2
        6727AE6627AC6527A96426A76324A25F2DC47C3DEFA23DEFA23DEFA256F1AE46
        EFA60EB15809A04DF3FAF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDD5D3CCBCB8ECDAD4ECDA
        D4ECDAD4ECDAD4CDC3C0F7F0EEF7F0EEF7F1EEF7F1EEF7F1EEF7F1EEF7F1EEF7
        F1EEF7F1EEF7F1EEF7F1EEF7F1EEF7F1EEF7F1EEF7F1EEF7F1EEF7F1EEF7F1EF
        F7F1EFF7F1EFF7F1EFF7F1EFF7F1EFF7F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1
        EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8
        F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EF
        F8F1EFF8F1EFF8F1EFF8F2EFF8F2EFF8F2EFF8F2EFF8F2EFF8F2EFF8F2EFF8F2
        F0F8F2F0F8F2F0F8F2F0B8DCC40AA34E10B75D60F1B16AF2B66AF2B66AF2B66A
        F2B638E387E8FCF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFB9DFCA2DBD773AEE9F3AEE9F47EFA569F2B663
        F1B313B9610AA34ED9F0E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCD5D3CCBCB7ECDAD4ECDA
        D4ECDAD4ECDAD4CDC3C0F8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8
        F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EF
        F8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F2
        EFF8F2EFF8F2EFF8F2EFF8F2EFF8F2EFF8F2EFF8F2F0F8F2F0F8F2F0F8F2F0F8
        F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0
        F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2
        F0F8F2F0F8F2F0F8F2F0A1D6B50DA7522BC0716DF1B66DF1B66DF1B66DF1B66D
        F1B639E387E8FCF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFB9E0CA2BBE7537ED9B37ED9B62F0B06CF1B56C
        F1B51ABE680AA650BFE7D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCD5D2CBBCB7EBD9D3EBD9
        D3EBD9D3EBD9D3CDC3C0F7F1EFF7F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8
        F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F1EFF8F2EFF8F2EF
        F8F2EFF8F2EFF8F2EFF8F2EFF8F2EFF8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2
        F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8
        F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0
        F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F1F8F2
        F1F8F2F1F8F2F1F8F2F188CFA610AB552CB96C6EF1B56EF1B56EF1B56EF1B56E
        F1B539E387E8FCF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFB9E0CB2ABE7436EC995DEFAD6EF1B56EF1B56E
        F1B522B9690BA952A4DFBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBD4D2CABBB6EAD8D2EAD8
        D2EAD8D2EAD8D2CCC3C0F7F1EFF7F1EFF7F1EFF7F1EFF8F2F0F8F2F0F8F2F0F8
        F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0
        F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2
        F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8
        F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F1F8F2F1
        F8F2F1F8F2F1F8F2F1F8F2F1F8F2F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3
        F1F8F3F1F8F3F1F8F3F17FCFA010AD5628B26670EEB370F0B570F0B570F0B570
        F0B539E287E8FCF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFBAE1CB35BE7968EFB070F0B570F0B570F0B570
        F0B519AE5C0EAC549BDDB8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBD4D2C9BAB5E9D8D2E9D8
        D2E9D8D2E9D8D2CCC3C0F7F2F0F7F2F0F7F2F0F7F2F0F7F2F0F7F2F0F7F2F0F8
        F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0
        F8F2F0F8F2F0F8F2F0F8F2F0F8F2F1F8F2F1F8F2F1F8F2F1F8F2F1F8F2F1F8F2
        F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8
        F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1
        F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3
        F1F8F3F1F8F3F1F8F3F196D7B00FAF5720AC5E6FE6AC74F0B574F0B574F0B574
        F0B53AE287E8FCF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFBAE1CB46C18174F0B574F0B574F0B574F0B570
        E9AE0CA5510AAF54B4E6CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBD3D1C9B9B4E9D7D1E9D7
        D1E9D7D1E9D7D1CCC3C0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8
        F2F0F8F2F0F8F2F0F8F2F1F8F2F1F8F2F1F8F2F1F8F2F1F8F2F1F8F2F1F8F3F1
        F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3
        F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8
        F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F2F8F3F2F8F3F2F8F3F2
        F8F3F2F8F3F2F8F3F2F8F3F2F8F3F2F8F3F2F8F3F2F8F3F2F8F3F2F8F3F2F8F4
        F2F8F4F2F8F4F2F8F4F2AEDFC10BB2550DA35067D59C77F0B577F0B577F0B577
        F0B53BE287E8FCF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFBAE2CB47C28276F0B576F0B576F0B576F0B55F
        D5980AA44E0BB255CEEFDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAD3D1C8B9B4E8D6D0E8D6
        D0E8D6D0E8D6D0CCC3C0F8F2F1F8F2F1F8F2F1F8F2F1F8F2F1F8F2F1F8F3F1F8
        F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1
        F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3
        F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F2F8F3F2F8F3F2F8F3F2F8F3F2F8
        F3F2F8F3F2F8F3F2F8F3F2F8F3F2F8F3F2F8F3F2F8F3F2F8F3F2F8F3F2F8F3F2
        F8F4F2F8F4F2F8F4F2F8F4F2F8F4F2F8F4F2F8F4F2F8F4F2F8F4F2F8F4F2F8F4
        F2F8F4F2F8F4F2F8F4F2C6E6D10BB55709A14D52BE8379EEB47AF0B67AF0B67A
        F0B63BE287E8FCF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFBAE2CC49C3837AF0B67AF0B67AF0B67AEEB546
        BB7B09A44E0BB557E8F8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAD3D1C7B8B4E7D6D0E7D6
        D0E7D6D0E7D6D0CBC3C0F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8F3F1F8
        F3F1F8F3F1F8F3F2F8F3F2F8F3F2F8F3F2F8F3F2F8F3F2F8F3F2F8F3F2F8F3F2
        F8F3F2F8F3F2F8F3F2F8F3F2F8F3F2F8F3F2F8F4F2F8F4F2F8F4F2F8F4F2F8F4
        F2F8F4F2F8F4F2F8F4F2F8F4F2F8F4F2F8F4F2F8F4F2F8F4F2F8F4F2F8F4F2F8
        F4F2F8F4F2F8F4F2F8F4F2F8F4F2F8F4F2F8F4F3F8F4F3F8F4F3F8F4F3F8F4F3
        F8F4F3F8F4F3F8F4F3F8F4F3F8F4F3F8F4F3F8F4F3F8F4F3F8F4F3F8F4F3F9F4
        F3F9F4F3F9F4F3F9F4F3E6EFE60BB85809A54E3AB06F74DAA57CEFB77CEFB77C
        EFB738E28534E08136E08336E08336E08336E08336E08336DE8136DB8069E3A0
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF45C77F34C07333BD7233BB
        7133B76F33B56E33B36D33B06B28A96146C2817CEFB77CEFB77CEFB775DDA822
        A65D09A75010B85BFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D2D0C6B8B2E6D5CFE6D5
        CFE6D5CFE6D5CFCBC3C0F8F3F2F8F3F2F8F3F2F8F3F2F8F3F2F8F3F2F8F3F2F8
        F3F2F8F3F2F8F3F2F8F3F2F8F3F2F8F4F2F8F4F2F8F4F2F8F4F2F8F4F2F8F4F2
        F8F4F2F8F4F2F8F4F2F8F4F2F8F4F2F8F4F2F8F4F2F8F4F2F8F4F2F8F4F2F8F4
        F2F8F4F2F8F4F2F8F4F2F8F4F2F8F4F2F8F4F3F8F4F3F8F4F3F8F4F3F8F4F3F8
        F4F3F8F4F3F8F4F3F8F4F3F8F4F3F8F4F3F8F4F3F8F4F3F8F4F3F9F4F3F9F4F3
        F9F4F3F9F4F3F9F4F3F9F4F3F9F4F3F9F5F3F9F5F3F9F5F3F9F5F3F9F5F3F9F5
        F3F9F5F3F9F5F3F9F5F3F9F5F338C5760AAE53139E516FC4957DE7B180EFB77F
        EFB77FEFB77FEFB77FEFB77FEFB77FEFB77FEFB77FEFB77FEFB77BEEB43DDB85
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2BC26E7FEFB77FEFB77FEF
        B77FEFB77FEFB77FEFB77FEFB77FEFB77FEFB77FEFB77FEFB77CE9B262C08C09
        9A4A0DB25653CE8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D2D0C6B7B1E6D4CEE6D4
        CEE6D4CEE6D4CECBC2BFF8F4F2F8F4F2F8F4F2F8F4F2F8F4F2F8F4F2F8F4F2F8
        F4F2F8F4F2F8F4F2F8F4F2F8F4F2F8F4F2F8F4F2F8F4F2F8F4F3F8F4F3F8F4F3
        F8F4F3F8F4F3F8F4F3F8F4F3F9F4F3F9F4F3F9F4F3F9F4F3F9F4F3F9F4F3F9F4
        F3F9F4F3F9F4F3F9F4F3F9F4F3F9F4F3F9F4F3F9F4F3F9F4F3F9F5F3F9F5F3F9
        F5F3F9F5F3F9F5F3F9F5F3F9F5F3F9F5F3F9F5F3F9F5F3F9F5F3F9F5F3F9F5F3
        F9F5F3F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5
        F4F9F5F4F9F5F4F9F5F4F9F5F489DAAC0FBB5C0997494FB47D79CC9F83EDB783
        EFB883EFB883EFB883EFB883EFB883EFB883EFB883EFB883EFB87EEEB53DDC85
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2BC37083EFB883EFB882EF
        B882EFB882EFB882EFB882EFB882EFB882EFB882EFB882EEB778CEA03CAC6E09
        98490BBC5BA3E6C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D2D0C5B6B1E5D4CEE5D4
        CEE5D4CEE5D4CECBC3C0F8F4F3F8F4F3F8F4F3F8F4F3F8F4F3F8F4F3F8F4F3F8
        F4F3F8F4F3F8F4F3F8F4F3F8F5F3F8F5F3F8F5F3F8F5F3F8F5F3F8F5F3F8F5F3
        F9F5F3F9F5F3F9F5F3F9F5F3F9F5F3F9F5F3F9F5F3F9F5F4F9F5F4F9F5F4F9F5
        F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9
        F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4
        F9F5F4F9F5F4F9F5F4F9F5F4F9F6F4F9F6F4F9F6F4F9F6F4F9F6F4F9F6F4F9F6
        F4F9F6F5F9F6F5F9F6F5F9F6F5D3EDDD0CC05C099E4B219F597BC69C7DD0A385
        ECB787EFB987EFB987EFB987EFB987EFB987EFB987EFB987EFB982EEB63EDD85
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2CC57187EFB987EFB987EF
        B987EFB987EFB987EFB987EFB987EFB987EFB986EDB87ED1A476C49913994E0A
        A34E0CBF5CEBFAF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D1CFC4B5B1E4D3CDE4D3
        CDE4D3CDE4D3CDCBC3C0F8F5F3F8F5F3F8F5F3F8F5F3F8F5F3F8F5F3F9F5F4F9
        F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4
        F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5
        F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F6F4F9F6F4F9F6F4F9
        F6F4F9F6F4F9F6F4F9F6F4F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5
        F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6
        F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F532CA750DB4570892465EB88680C79F82
        CFA588EBB789EFBA89EFBA89EFBA89EFBA89EFBA89EFBA89EFBA84EEB73EDE86
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2CC67289EFBA89EFBA89EF
        BA89EFBA89EFBA89EFBA89EFBA89EFBA89EDB882D0A680C79F3EA96E0892460E
        B8594FD38AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D1CFC3B4AFE3D2CCE3D2
        CCE3D2CCE3D2CCCAC3C0F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9
        F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F4F9F6F4
        F9F6F4F9F6F4F9F6F4F9F6F4F9F6F4F9F6F4F9F6F5F9F6F5F9F6F5F9F6F5F9F6
        F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9
        F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5
        F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5FAF7
        F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6B3E8C80CC65F089C4B15964F7EC59D86
        C9A487CCA68CE3B48EEFBB8EEFBB8DEFBB8DEFBB8DEFBB8DEFBB88EEB83EDF86
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2CC7728DEFBB8DEFBB8DEF
        BB8DEFBB8DEFBB8DEFBB8DEFBB8BE5B486CDA685C8A36CBD9009904609A14D0C
        C55FD2F4E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D1CEC2B4AEE3D2CCE3D2
        CCE3D2CCE3D2CCCBC3C0F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9
        F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5
        F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6
        F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FA
        F7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6
        FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7
        F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F641D2810FBD5C088D4436A2678B
        C9A78BC9A78BC9A78ED7AF90EBBA91EFBD91EFBD91EFBD91EFBD8CEEBA3EE187
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2EC87291EFBD91EFBD91EF
        BD91EFBD91EFBD90ECBB8ED9B08AC9A68AC9A788C8A5209856088D440FC15E4E
        C37EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D0CEC2B3AEE2D1CBE2D1
        CBE2D1CBE2D1CBCAC2C0F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9
        F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F6F5F9F7F6F9F7F6
        F9F7F6F9F7F6F9F7F6F9F7F6F9F7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7
        F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FA
        F7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6
        FAF7F6FAF7F6FAF7F7FAF7F7FAF7F7FAF7F7FAF7F7FAF7F7FAF7F7FAF8F7FAF8
        F7FAF8F7FAF8F7FAF8F7FAF8F7FAF8F7FAF8F7C5EED60CCB6209A44E088A4264
        B58891CBAB91CBAB91CBAB91CBAB92D8B194E7BA95EFBE95EFBE90EEBB40E188
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2ECA7395EFBE95EFBE95EF
        BE95E8BA92D8B291CCAB91CBAB91CBAB91CBAB4EAB78088A4209AA510FCB63AD
        BAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D0CEC1B2AEE1D0CAE1D0
        CAE1D0CAE1D0CACAC2C0F9F7F6F9F7F6F9F7F6F9F7F6FAF7F6FAF7F6FAF7F6FA
        F7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6
        FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7
        F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F7FAF7F7FAF7F7FAF7F7FAF7F7FAF7F7FA
        F7F7FAF8F7FAF8F7FAF8F7FAF8F7FAF8F7FAF8F7FAF8F7FAF8F7FAF8F7FAF8F7
        FAF8F7FAF8F7FAF8F7FAF8F7FAF8F7FAF8F7FAF8F7FAF8F7FAF8F7FAF8F7FAF8
        F7FAF8F7FAF8F7FBF8F7FBF8F7FBF8F7FBF8F7FBF8F785E3AD0ECE6309984910
        8C4777BD9696CCAE96CCAE96CCAE96CCAE96CCAE96D1B197DAB593E2B63BE185
        E8FBF1E8FBF1E8FBF1E8FAF0E8FAF0E8FAF0E8FAF02DCA7398E3B997DBB596D2
        B196CCAE96CCAE96CCAE96CCAE96CCAE5CB081088841099F4C0DCE6382C597C3
        B9B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6CFCDC1B1ADE1CFCAE1CF
        CAE1CFCAE1CFCACAC2C0FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FAF7F6FA
        F7F7FAF7F7FAF7F7FAF7F7FAF7F7FAF7F7FAF7F7FAF8F7FAF8F7FAF8F7FAF8F7
        FAF8F7FAF8F7FAF8F7FAF8F7FAF8F7FAF8F7FAF8F7FAF8F7FAF8F7FAF8F7FAF8
        F7FAF8F7FAF8F7FAF8F7FAF8F7FAF8F7FAF8F7FAF8F7FAF8F7FBF8F7FBF8F7FB
        F8F7FBF8F7FBF8F7FBF8F7FBF8F7FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8
        FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF9F8FBF9F8FBF9
        F8FBF9F8FBF9F8FBF9F8FBF9F8FBF9F8FBF9F8FBF9F8FAF8F759DD9310CD6408
        8E440E884575BB949BCDB19BCDB19BCDB19BCDB19BCDB19BCDB197CCAF40D984
        42DB8642DA8542D78442D68442D28241D08141CC7F4AC9829BCDB19BCDB19BCD
        B19BCDB19BCDB19BCDB19BCDB15EAF820885400894470FCF6468D08FCFBFBAC3
        B7B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6CFCDBFB1ACE0CFC9E0CF
        C9E0CFC9E0CFC9CAC3C0FAF8F7FAF8F7FAF8F7FAF8F7FAF8F7FAF8F7FAF8F7FA
        F8F7FAF8F7FAF8F7FAF8F7FAF8F7FAF8F7FAF8F7FAF8F7FAF8F7FAF8F7FAF8F7
        FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FBF8F8FBF8F8FBF8F8FBF8
        F8FBF8F8FBF8F8FBF8F8FBF9F8FBF9F8FBF9F8FBF9F8FBF9F8FBF9F8FBF9F8FB
        F9F8FBF9F8FBF9F8FBF9F8FBF9F8FBF9F8FBF9F8FBF9F8FBF9F8FBF9F8FBF9F8
        FBF9F8FBF9F8FBF9F8FBF9F8FBF9F9FBF9F9FBF9F9FBF9F9FBF9F9FBF9F9FBF9
        F9FBF9F9FBF9F9FBF9F9FBF9F9FBF9F9FBF9F9FBF9F9FBFAF9F1F8F335D97E10
        CB63078F450B854271B891A1D0B6A1D0B6A1D0B6A1D0B6A1D0B6A1D0B6A1D0B6
        A1D0B6A1D0B6A1D0B6A1D0B6A1D0B6A1D0B6A1D0B6A1D0B6A1D0B6A1D0B6A1D0
        B6A1D0B6A1D0B6A1D0B662B08507833F08954710CF6445D27FDDCFC7CFBFB9C3
        B7B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5CFCDBEB0ABDFCEC9DFCE
        C9DFCEC9DFCEC9CAC3C0FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FBF9F8FB
        F9F8FBF9F8FBF9F8FBF9F8FBF9F8FBF9F8FBF9F8FBF9F8FBF9F8FBF9F8FBF9F8
        FBF9F8FBF9F8FBF9F8FBF9F8FBF9F8FBF9F8FBF9F8FBF9F8FBF9F8FBF9F8FBF9
        F9FBF9F9FBF9F9FBF9F9FBF9F9FBF9F9FBF9F9FBF9F9FBF9F9FBF9F9FBF9F9FB
        F9F9FBF9F9FBF9F9FBFAF9FBFAF9FBFAF9FBFAF9FBFAF9FBFAF9FBFAF9FBFAF9
        FBFAF9FBFAF9FBFAF9FBFAF9FBFAF9FBFAF9FBFAF9FBFAF9FBFAF9FBFAF9FBFA
        F9FBFAF9FBFAF9FBFAF9FCFAFAFCFAFAFCFAFAFCFAFAFCFAFAFCFAFAE8F7ED3F
        DD8510D4670899490981405DAC819ECDB4A1CFB6A1CFB6A1CFB6A1CFB6A1CFB6
        A1CFB6A1CFB6A1CFB6A1CFB6A1CFB6A1CFB6A1CFB6A1CFB6A1CFB6A1CFB6A1CF
        B6A1CFB697CAAE4AA27207803E09A14D0ED66748D382D4CEC4DFCEC9CDBDB9C1
        B6B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5CECCBEAFABDECDC8DECD
        C8DECDC8DECDC8CAC2C0FBF9F8FBF9F8FBF9F8FBF9F8FBF9F8FBF9F8FBF9F8FB
        F9F8FBF9F8FBF9F9FBF9F9FBF9F9FBF9F9FBF9F9FBF9F9FBF9F9FBF9F9FBF9F9
        FBF9F9FBF9F9FBF9F9FBF9F9FBF9F9FBFAF9FBFAF9FBFAF9FBFAF9FBFAF9FBFA
        F9FBFAF9FBFAF9FBFAF9FBFAF9FBFAF9FBFAF9FBFAF9FBFAF9FBFAF9FCFAFAFC
        FAFAFCFAFAFCFAFAFCFAFAFCFAFAFCFAFAFCFAFAFCFAFAFCFAFAFCFAFAFCFAFA
        FCFAFAFCFAFAFCFAFAFCFAFAFCFAFAFCFAFAFCFAFAFCFAFAFCFAFAFCFBFAFCFB
        FAFCFBFAFCFBFAFCFBFAFCFBFAFCFBFAFCFBFAFCFBFAFCFBFAFCFBFAFCFBFAF5
        FAF665E69D0EDA690AAC5207813D19874A65AF869ECCB3A1CEB5A1CEB5A1CEB5
        A1CEB5A1CEB5A1CEB5A1CEB5A1CEB5A1CEB5A1CEB5A1CEB5A1CEB5A1CEB59ECC
        B35FAC8112844507843F0BB4560EDB696DD494DCCDC7DECDC8DECDC8CCBDB7C1
        B6B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5CECCBEAFABDECDC7DECD
        C7DECDC7DECDC7CAC3C0FBFAF9FBFAF9FBFAF9FBFAF9FBFAF9FBFAF9FBFAF9FB
        FAF9FBFAF9FBFAF9FBFAF9FBFAF9FCFAF9FCFAF9FCFAF9FCFAF9FCFAF9FCFAF9
        FCFAF9FCFAFAFCFAFAFCFAFAFCFAFAFCFAFAFCFAFAFCFAFAFCFAFAFCFAFAFCFA
        FAFCFAFAFCFAFAFCFAFAFCFAFAFCFBFAFCFBFAFCFBFAFCFBFAFCFBFAFCFBFAFC
        FBFAFCFBFAFCFBFAFCFBFAFCFBFAFCFBFAFCFBFAFCFBFAFCFBFAFCFBFBFCFBFB
        FCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFB
        FBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFDFCFBFDFCFBFD
        FCFBFDFCFB93EDBA15DA6C11D36709A04C077C3B1B854B67AE879BCAB0A1CDB5
        A1CDB5A1CDB5A1CDB5A1CDB5A1CDB5A1CDB5A1CDB5A1CDB59ECBB271B38F1F87
        4E077E3C0AA75011D6681ADB708CD3A9DECDC7DECDC7DECDC7DECDC7CCBDB7C1
        B6B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4CECCBCAEAADDCCC7DDCC
        C7DDCCC7DDCCC7CAC3C1FCFAFAFCFAFAFCFAFAFCFAFAFCFAFAFCFAFAFCFAFAFC
        FBFAFCFBFAFCFBFAFCFBFAFCFBFAFCFBFAFCFBFAFCFBFAFCFBFAFCFBFAFCFBFA
        FCFBFAFCFBFAFCFBFAFCFBFAFCFBFAFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFB
        FBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFC
        FBFBFCFBFBFCFBFBFCFBFBFCFBFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFB
        FDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFCFDFC
        FCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFD
        FCFCFDFCFCFDFCFCE6F8EE6EE7A410DA6A11CD640AA44F07854007783A198248
        308E5B499C6E5FA88076B49276B4926AAE885BA67D3792600F7C400889420AA8
        5111D16713DA6C7DEAAEEEFAF3D2D0CFDDCCC7DDCCC7DDCCC7DDCCC7CCBBB7C0
        B5B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4CDCBBBADA8DCCBC6DCCB
        C6DCCBC6DCCBC6CAC3C1FCFBFAFCFBFAFCFBFAFCFBFAFCFBFBFCFBFBFCFBFBFC
        FBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFB
        FCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFDFCFBFDFCFBFDFC
        FBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFD
        FCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFC
        FDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFC
        FCFDFCFCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDD9F7E66BE7A21DDB710EDB6912CC650AAB52
        099F4C099547088B4308843F088C430997480AA14D0AAF5413CF670EDB6922DB
        7475E9A8E3F9ECFEFDFDFEFDFDD3D0CFDCCBC6DCCBC6DCCBC6DCCBC6CABAB6BE
        B3B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4CDCBBBACA8DCCBC5DCCB
        C5DCCBC5DCCBC5CAC3C1FDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFD
        FCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFC
        FDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFC
        FCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFDFCFDFDFCFDFDFCFD
        FDFCFDFDFCFDFDFCFDFDFCFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
        FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
        FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
        FDFDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFCFDFCC6F5DB7BEAAC38DE82
        1FDB720FDA690EDB690EDB690EDB6910DA6A22DB743CDF8581EBB0CDF6DFFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFED3D1D0DCCBC5DCCBC5DCCBC5DCCBC5CABAB6BE
        B3B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3CDCBBBACA8DBCAC5DBCA
        C5DBCAC5DBCAC5CAC3C1FDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFD
        FCFCFDFCFCFDFCFCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
        FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
        FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFCFEFDE7FBF0D6F8E5EAFBF2FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFD3D1D0DBCAC5DBCAC5DBCAC5DBCAC5C9BAB5BD
        B3B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3CCCAB9ABA7DAC9C4DAC9
        C4DAC9C4DAC9C4C2B9B7FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFEFDFDFEFDFDFE
        FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
        FEFDFDFEFDFDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFCBC7C5DAC9C4DAC9C4DAC9C4DAC9C4C9B8B4BD
        B2AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2CCCAB9AAA5D9C9C3D9C9
        C3D9C9C3D9C9C3C4B7B2EEEEEDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFBFB6B3D9C9C3D9C9C3D9C9C3D9C9C3C7B8B3BD
        B2AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2CBCAB8A9A5D9C8C3D9C8
        C3D9C8C3D9C8C3D9C8C3C0B5B2CFCBCAE7E7E7E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8D8D6D6C2BAB8D1C1BCD9C8C3D9C8C3D9C8C3D9C8C3C7B7B3BC
        B2AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2CBC9B8A9A5D8C7C2D8C7
        C2D8C7C2D8C7C2D8C7C2D8C7C2D6C5C0C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7
        B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2
        C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7
        B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7
        B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2
        C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7
        B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7
        B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2
        C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7B2C7B7
        B2C7B7B2C7B7B2D1C0BBD8C7C2D8C7C2D8C7C2D8C7C2D8C7C2D8C7C2C6B7B2BC
        B1AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1CBC9B6A9A4D7C7C1D7C7
        C1D7C7C1D7C7C1D7C7C1D7C7C1C1B3AEBAAFABBBAFABBBAFABBBAFABBBAFABBB
        AFABBBAFABBBAFABBBAFABBBAFABBBAFABBBAFABBBAFABBBAFABBBAFABBBAFAB
        BBAFABBBAFABBBAFABBBAFABBBAFABBBAFABBBAFABBBAFABBBAFABBBAFABBBAF
        ABBBAFABBBAFABBBAFABBBAFABBBAFABBBAFABBBAFABBBAFABBBAFABBBAFABBB
        AFABBBAFABBBAFABBBAFABBBAFABBBAFABBBAFABBBB0ABBBB0ABBBB0ABBBB0AB
        BBB0ABBBB0ABBBB0ABBBB0ABBBB0ABBBB0ABBBB0ABBBB0ABBBB0ABBBB0ABBBB0
        ABBBB0ABBBB0ABBBB0ABBBB0ABBBB0ABBBB0ABBBB0ABBBB0ABBBB0ABBBB0ABBB
        B0ABBBB0ABBBB0ABBBB0ABBBB0ABBBB0ABBBB0ABBBB0ABBBB0ABBBB0ABBBB0AB
        BBB0ABBBB0ABBBB0ABBBB0ABBBB0ABBBB0ABBBB0ABBBB0ABBBB0ABBBB0ABBBB0
        ABBBB0ABBBB0ABBBAFAAD5C5BFD7C7C1D7C7C1D7C7C1D7C7C1D7C7C1C5B6B1BA
        B1ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1CAC8B6A7A3D6C6C1D6C6
        C1D6C6C1D6C6C1D2C2BDB3AAA7D9D2D0ECE4E2ECE4E2ECE4E2ECE4E2ECE4E2EC
        E4E2ECE4E2ECE4E2ECE4E2ECE4E2ECE4E2ECE5E2ECE5E2ECE5E2ECE5E2ECE5E2
        ECE5E2ECE5E2ECE5E3ECE5E3ECE5E3ECE5E3ECE5E3ECE5E3ECE5E3ECE5E3ECE5
        E3ECE5E3ECE5E3ECE5E3ECE5E3ECE5E3ECE5E3ECE5E3ECE5E3ECE5E3ECE5E3EC
        E5E3ECE5E3ECE5E3ECE5E3ECE5E3ECE5E3ECE5E3ECE5E3ECE5E3ECE5E3EDE6E4
        EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6
        E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4ED
        E6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE7E4EDE7E4EDE7E4EDE7E4
        EDE7E4EDE7E4EDE7E4EDE7E5EDE7E5EDE7E5EDE7E5EDE7E5EDE7E5EDE7E5EEE7
        E5EEE7E5EEE7E5E6DFDDBFB7B5C3B5B1D6C6C1D6C6C1D6C6C1D6C6C1C4B5B1BA
        B1ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0CAC8B5A7A2D6C5C0D6C5
        C0D6C5C0D6C5C0BAACA8E6DFDDECE4E2ECE5E2ECE5E2ECE5E2ECE5E2ECE5E2EC
        E5E2ECE5E2ECE5E3ECE5E3ECE5E3ECE5E3ECE5E3ECE5E3ECE5E3ECE5E3ECE5E3
        ECE5E3ECE5E3ECE5E3ECE5E3ECE5E3EDE5E3EDE5E3EDE5E3EDE5E3EDE5E3EDE5
        E3EDE5E3EDE5E3EDE5E3EDE5E3EDE5E3EDE5E3EDE5E3EDE5E3EDE5E3EDE6E4ED
        E6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4
        EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6
        E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EEE7E5EEE7E5EEE7E5EEE7E5EEE7E5EE
        E7E5EEE7E5EEE7E5EEE7E5EEE7E5EEE7E5EEE7E5EEE7E5EEE7E5EEE7E5EEE7E5
        EEE7E5EEE7E5EEE7E5EEE7E5EEE7E5EEE7E5EEE7E5EEE7E5EEE7E5EEE7E5EEE7
        E5EEE7E5EEE7E5EEE8E6EEE8E6BAAFACD6C5C0D6C5C0D6C5C0D6C5C0C4B5AFB9
        AFACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0CAC8B4A6A2D5C5BFD5C5
        BFD5C5BFD5C5BFBBB2AEECE5E3ECE5E3ECE5E3ECE5E3ECE5E3ECE5E3ECE5E3EC
        E5E3ECE5E3ECE5E3ECE5E3ECE5E3EDE6E3EDE6E3EDE6E3EDE6E3EDE6E3EDE6E3
        EDE6E3EDE6E3EDE6E3EDE6E3EDE6E3EDE6E3EDE6E3EDE6E3EDE6E4EDE6E4EDE6
        E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4ED
        E6E4EDE7E4EDE7E4EDE7E4EDE7E4EDE7E4EDE7E4EDE7E4EDE7E4EDE7E4EDE7E4
        EDE7E4EDE7E4EDE7E4EDE7E4EDE7E4EDE7E4EEE7E5EEE7E5EEE7E5EEE7E5EEE7
        E5EEE7E5EEE7E5EEE7E5EEE7E5EEE7E5EEE7E5EEE7E5EEE7E5EEE7E5EEE8E5EE
        E8E5EEE8E5EEE8E5EEE8E5EEE8E5EEE8E5EEE8E5EEE8E5EEE8E5EEE8E5EEE8E5
        EEE8E5EEE8E5EEE8E5EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8
        E6EEE8E6EEE8E6EEE8E6EEE8E6C2BBB9D5C5BFD5C5BFD5C5BFD5C5BFC3B5AFB9
        AFABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0C9C7B3A6A1D4C4BFD4C4
        BFD4C4BFD4C4BFBFB6B3ECE6E4ECE6E4ECE6E4ECE6E4ECE6E4ECE6E4ECE6E4ED
        E6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4
        EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6
        E4EDE6E4EDE7E5EDE7E5EDE7E5EDE7E5EDE7E5EDE7E5EDE7E5EDE7E5EDE7E5ED
        E7E5EDE7E5EDE7E5EDE7E5EDE7E5EDE7E5EDE7E5EDE7E5EDE7E5EDE7E5EDE7E5
        EDE7E5EEE7E5EEE7E5EEE7E5EEE7E5EEE7E5EEE7E5EEE7E5EEE7E5EEE8E6EEE8
        E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EE
        E8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6
        EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE9E7EEE9E7EEE9E7EEE9E7EEE9E7EEE9
        E7EEE9E7EEE9E7EFE9E7EFE9E7C6C0BED4C4BFD4C4BFD4C4BFD4C4BFC2B3AFB7
        AEABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC9C7B3A4A1D4C3BED4C3
        BED4C3BED4C3BEBFB6B3EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4EDE6E4ED
        E6E4EDE6E4EDE6E4EDE6E4EDE7E5EDE7E5EDE7E5EDE7E5EDE7E5EDE7E5EDE7E5
        EDE7E5EDE7E5EDE7E5EDE7E5EDE7E5EDE7E5EDE7E5EEE7E5EEE7E5EEE7E5EEE7
        E5EEE7E5EEE7E5EEE7E5EEE7E5EEE7E5EEE7E5EEE7E5EEE7E5EEE7E5EEE7E5EE
        E7E5EEE7E6EEE7E6EEE7E6EEE7E6EEE7E6EEE7E6EEE7E6EEE8E6EEE8E6EEE8E6
        EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8
        E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EFE8E7EFE8E7EF
        E8E7EFE8E7EFE8E7EFE8E7EFE8E7EFE9E7EFE9E7EFE9E7EFE9E7EFE9E7EFE9E7
        EFE9E7EFE9E7EFE9E7EFE9E7EFE9E7EFE9E7EFE9E7EFE9E7EFE9E7EFE9E7EFE9
        E7EFE9E7EFE9E7EFE9E7EFE9E7C7C1BFD4C3BED4C3BED4C3BED4C3BEC2B2AEB7
        AEABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC9C7B2A49FD3C3BDD3C3
        BDD3C3BDD3C3BDBFB6B3EDE7E5EDE7E5EDE7E5EDE7E5EDE7E5EDE7E5EDE7E5ED
        E7E5EDE7E5EDE7E5EDE7E5EDE7E5EDE7E5EDE7E5EEE7E5EEE7E5EEE7E5EEE7E5
        EEE7E5EEE7E5EEE7E5EEE8E5EEE8E5EEE8E5EEE8E5EEE8E5EEE8E5EEE8E5EEE8
        E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EE
        E8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6
        EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EFE9E7EFE9E7EFE9E7EFE9
        E7EFE9E7EFE9E7EFE9E7EFE9E7EFE9E7EFE9E7EFE9E7EFE9E7EFE9E7EFE9E7EF
        E9E7EFE9E7EFE9E7EFE9E7EFE9E7EFE9E7EFE9E7EFE9E7EFEAE7EFEAE7EFEAE7
        EFEAE7EFEAE7EFEAE7EFEAE7EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEA
        E8EFEAE8EFEAE8EFEAE8EFEAE8C7C1BFD3C3BDD3C3BDD3C3BDD3C3BDC1B2ADB7
        ACAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEC8C6B0A39FD2C2BDD2C2
        BDD2C2BDD2C2BDBFB6B3EDE7E5EDE7E5EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EE
        E8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6
        EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8
        E6EEE8E6EEE8E6EEE8E7EEE8E7EEE8E7EEE8E7EEE8E7EEE8E7EEE8E7EEE9E7EE
        E9E7EEE9E7EEE9E7EEE9E7EEE9E7EEE9E7EFE9E7EFE9E7EFE9E7EFE9E7EFE9E7
        EFE9E7EFE9E7EFE9E7EFE9E7EFE9E7EFE9E7EFE9E7EFE9E7EFE9E7EFE9E7EFE9
        E8EFE9E8EFE9E8EFE9E8EFE9E8EFE9E8EFE9E8EFEAE8EFEAE8EFEAE8EFEAE8EF
        EAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8F0EAE9
        F0EAE9F0EAE9F0EAE9F0EAE9F0EAE9F0EAE9F0EAE9F0EAE9F0EAE9F0EAE9F0EA
        E9F0EAE9F0EAE9F0EAE9F0EAE9C7C1C0D2C2BDD2C2BDD2C2BDD2C2BDC0B1ADB6
        ACAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEC8C6B0A39FD1C1BCD1C1
        BCD1C1BCD1C1BCBEB6B3EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E6EE
        E8E6EEE8E6EEE8E6EEE8E6EEE8E6EEE8E7EEE8E7EEE8E7EEE8E7EEE8E7EEE8E7
        EEE8E7EEE9E7EEE9E7EEE9E7EEE9E7EEE9E7EEE9E7EEE9E7EEE9E7EEE9E7EEE9
        E7EEE9E7EEE9E7EEE9E7EEE9E7EEE9E7EEE9E7EFE9E7EFE9E7EFE9E7EFE9E7EF
        E9E7EFE9E7EFE9E7EFE9E8EFE9E8EFE9E8EFE9E8EFE9E8EFE9E8EFE9E8EFEAE8
        EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEA
        E8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8F0
        EAE9F0EAE9F0EAE9F0EAE9F0EAE9F0EAE9F0EAE9F0EBE9F0EBE9F0EBE9F0EBE9
        F0EBE9F0EBE9F0EBE9F0EBE9F0EBE9F0EBE9F0EBE9F0EBE9F0EBE9F0EBE9F0EB
        E9F0EBE9F0EBE9F0EBE9F0EBE9C7C1C0D1C1BCD1C1BCD1C1BCD1C1BCBFB0ACB6
        ACAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEC7C6B0A29ED1C1BBD1C1
        BBD1C1BBD1C1BBBFB6B3EEE9E7EEE9E7EEE9E7EEE9E7EEE9E7EEE9E7EEE9E7EE
        E9E7EEE9E7EFE9E7EFE9E7EFE9E7EFE9E7EFE9E7EFE9E7EFE9E7EFE9E7EFE9E7
        EFE9E7EFE9E7EFE9E7EFE9E7EFE9E7EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEA
        E8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EF
        EAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8F0EAE8F0EAE8F0EAE8F0EAE8F0EAE8
        F0EAE8F0EAE8F0EBE9F0EBE9F0EBE9F0EBE9F0EBE9F0EBE9F0EBE9F0EBE9F0EB
        E9F0EBE9F0EBE9F0EBE9F0EBE9F0EBE9F0EBE9F0EBE9F0EBE9F0EBE9F0EBE9F0
        EBE9F0EBE9F0EBE9F0EBE9F0EBE9F0EBE9F0EBE9F0EBE9F0EBE9F0EBE9F0ECEA
        F0ECEAF0ECEAF0ECEAF0ECEAF0ECEAF0ECEAF1ECEAF1ECEAF1ECEAF1ECEAF1EC
        EAF1ECEAF1ECEAF1ECEAF1ECEAC8C2C0D1C1BBD1C1BBD1C1BBD1C1BBBEB0ABB5
        ABA8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDC7C5AFA19DD0C0BBD0C0
        BBD0C0BBD0C0BBBEB6B3EFE9E8EFE9E8EFE9E8EFE9E8EFEAE8EFEAE8EFEAE8EF
        EAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8
        EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE9EFEAE9EFEA
        E9EFEAE9EFEAE9EFEAE9EFEAE9F0EAE9F0EAE9F0EAE9F0EAE9F0EAE9F0EAE9F0
        EAE9F0EBE9F0EBE9F0EBE9F0EBE9F0EBE9F0EBE9F0EBE9F0EBE9F0EBE9F0EBE9
        F0EBE9F0EBE9F0EBE9F0EBE9F0EBE9F0EBEAF0EBEAF0EBEAF0EBEAF0EBEAF0EB
        EAF0EBEAF0EBEAF0EBEAF0EBEAF0EBEAF0EBEAF0EBEAF0EBEAF0ECEAF0ECEAF0
        ECEAF0ECEAF0ECEAF0ECEAF0ECEAF1ECEBF1ECEBF1ECEBF1ECEBF1ECEBF1ECEB
        F1ECEBF1ECEBF1ECEBF1ECEBF1ECEBF1ECEBF1ECEBF1ECEBF1ECEBF1ECEBF1EC
        EBF1ECEBF1ECEBF1ECEBF1ECEBC8C2C1D0C0BBD0C0BBD0C0BBD0C0BBBEAFAAB5
        ABA7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDC7C5ADA09CCFBFBACFBF
        BACFBFBACFBFBABEB6B3EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EFEAE8EF
        EAE9EFEAE9EFEAE9EFEAE9EFEAE9EFEAE9EFEAE9EFEAE9EFEAE9EFEAE9EFEAE9
        EFEAE9EFEAE9EFEAE9EFEAE9F0EBE9F0EBE9F0EBE9F0EBE9F0EBE9F0EBE9F0EB
        E9F0EBE9F0EBE9F0EBE9F0EBE9F0EBE9F0EBE9F0EBE9F0EBEAF0EBEAF0EBEAF0
        EBEAF0EBEAF0EBEAF0EBEAF0EBEAF0EBEAF0EBEAF0EBEAF0EBEAF0EBEAF0EBEA
        F0ECEAF0ECEAF0ECEAF0ECEAF0ECEAF0ECEAF0ECEAF0ECEAF1ECEAF1ECEAF1EC
        EAF1ECEAF1ECEAF1ECEAF1ECEAF1ECEBF1ECEBF1ECEBF1ECEBF1ECEBF1ECEBF1
        ECEBF1ECEBF1ECEBF1ECEBF1ECEBF1ECEBF1ECEBF1ECEBF1EDEBF1EDEBF1EDEB
        F1EDEBF1EDEBF1EDEBF1EDEBF1EDECF1EDECF1EDECF1EDECF1EDECF1EDECF1ED
        ECF1EDECF2EDECF2EDECF2EDECC8C3C1CFBFBACFBFBACFBFBACFBFBABDAEAAB3
        AAA7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCC6C5ADA09CCEBFBACEBF
        BACEBFBACEBFBABEB6B4EFEBE9EFEBE9EFEBE9F0EBE9F0EBE9F0EBE9F0EBE9F0
        EBE9F0EBE9F0EBE9F0EBEAF0EBEAF0EBEAF0EBEAF0EBEAF0EBEAF0EBEAF0EBEA
        F0EBEAF0EBEAF0EBEAF0EBEAF0EBEAF0EBEAF0ECEAF0ECEAF0ECEAF0ECEAF0EC
        EAF0ECEAF0ECEAF0ECEAF0ECEAF0ECEAF0ECEAF0ECEAF0ECEAF0ECEAF0ECEAF0
        ECEBF0ECEBF0ECEBF0ECEBF0ECEBF0ECEBF0ECEBF1ECEBF1ECEBF1ECEBF1ECEB
        F1ECEBF1ECEBF1ECEBF1EDEBF1EDEBF1EDEBF1EDEBF1EDEBF1EDEBF1EDEBF1ED
        ECF1EDECF1EDECF1EDECF1EDECF1EDECF1EDECF1EDECF1EDECF1EDECF1EDECF1
        EDECF1EDECF1EDECF1EDECF1EDECF1EDECF1EDECF1EDECF1EDECF1EDECF1EDEC
        F1EDECF2EEECF2EEECF2EEECF2EEECF2EEECF2EEECF2EEECF2EEEDF2EEEDF2EE
        EDF2EEEDF2EEEDF2EEEDF2EEEDC8C3C2CEBFBACEBFBACEBFBACEBFBABCAEAAB3
        AAA7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCC6C4ADA09BCEBEB9CEBE
        B9CEBEB9CEBEB9BFB6B4F0EBEAF0EBEAF0EBEAF0EBEAF0EBEAF0EBEAF0ECEAF0
        ECEAF0ECEAF0ECEAF0ECEAF0ECEAF0ECEAF0ECEAF0ECEAF0ECEAF0ECEAF0ECEA
        F0ECEAF0ECEAF1ECEBF1ECEBF1ECEBF1ECEBF1ECEBF1ECEBF1ECEBF1ECEBF1EC
        EBF1ECEBF1ECEBF1ECEBF1ECEBF1ECEBF1EDEBF1EDEBF1EDEBF1EDEBF1EDEBF1
        EDEBF1EDEBF1EDEBF1EDEBF1EDECF1EDECF1EDECF1EDECF1EDECF1EDECF1EDEC
        F1EDECF1EDECF1EDECF1EDECF1EDECF1EDECF1EDECF2EDECF2EDECF2EDECF2ED
        ECF2EDECF2EDECF2EDECF2EEECF2EEECF2EEECF2EEECF2EEECF2EEECF2EEECF2
        EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEED
        F2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EE
        EDF3EFEDF3EFEDF3EFEDF3EFEDC9C4C2CEBEB9CEBEB9CEBEB9CEBEB9BBADA8B2
        AAA6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCC6C4AC9E9ACDBDB8CDBD
        B8CDBDB8CDBDB8BEB6B4F0ECEAF0ECEAF1ECEBF1ECEBF1ECEBF1ECEBF1ECEBF1
        ECEBF1ECEBF1ECEBF1ECEBF1ECEBF1ECEBF1ECEBF1ECEBF1ECEBF1ECEBF1EDEB
        F1EDEBF1EDEBF1EDEBF1EDEBF1EDEBF1EDEBF1EDECF1EDECF1EDECF1EDECF1ED
        ECF1EDECF1EDECF1EDECF1EDECF1EDECF1EDECF1EDECF1EDECF1EDECF2EDECF2
        EDECF2EDECF2EDECF2EDECF2EDECF2EDECF2EEECF2EEECF2EEECF2EEECF2EEEC
        F2EEECF2EEECF2EEECF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EE
        EDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2
        EEEDF2EEEDF2EEEDF3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EFEE
        F3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EF
        EEF3EFEEF3EFEEF3EFEEF3EFEEC9C4C3CDBDB8CDBDB8CDBDB8CDBDB8BBADA7B2
        A8A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBC5C4AA9D9ACCBDB8CCBD
        B8CCBDB8CCBDB8BEB7B4F1EDECF1EDECF1EDECF1EDECF1EDECF1EDECF1EDECF1
        EDECF1EDECF1EDECF1EDECF1EDECF1EDECF1EDECF1EDECF1EDECF1EDECF1EDEC
        F1EDECF2EEECF2EEECF2EEECF2EEECF2EEECF2EEECF2EEECF2EEECF2EEEDF2EE
        EDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2
        EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EFEEF2EFEE
        F2EFEEF2EFEEF2EFEEF2EFEEF2EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EF
        EEF3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3
        EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3F0EFF3F0EFF3F0EFF3F0EFF3F0EF
        F3F0EFF3F0EFF3F0EFF3F0EFF3F0EFF3F0EFF3F0EFF3F0EFF3F0EFF4F0EFF4F0
        EFF4F0EFF4F0EFF4F0EFF4F0EFC9C5C3CCBDB8CCBDB8CCBDB8CCBDB8BAACA7B2
        A7A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBC5C3AA9D99CCBCB7CCBC
        B7CCBCB7CCBCB7BFB7B4F2EDECF2EEECF2EEECF2EEECF2EEECF2EEECF2EEECF2
        EEECF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEED
        F2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EEEDF2EE
        EDF3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3
        EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EFEE
        F3EFEEF3F0EEF3F0EEF3F0EEF3F0EEF3F0EEF3F0EEF3F0EEF3F0EFF3F0EFF3F0
        EFF3F0EFF3F0EFF3F0EFF3F0EFF4F0EFF4F0EFF4F0EFF4F0EFF4F0EFF4F0EFF4
        F0EFF4F0EFF4F0EFF4F0EFF4F0EFF4F0EFF4F0EFF4F0EFF4F0EFF4F1F0F4F1F0
        F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1
        F0F4F1F0F4F1F0F4F1F0F4F1F0CAC5C4CCBCB7CCBCB7CCBCB7CCBCB7BAABA7B1
        A7A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAC5C3A99D98CBBBB6CBBB
        B6CBBBB6CBBBB6BEB7B4F2EEEDF2EEEDF2EEEDF2EFEDF2EFEDF2EFEDF2EFEDF2
        EFEDF2EFEDF2EFEDF2EFEDF2EFEEF2EFEEF2EFEEF2EFEEF2EFEEF2EFEEF2EFEE
        F3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EF
        EEF3EFEEF3EFEEF3EFEEF3F0EEF3F0EEF3F0EEF3F0EEF3F0EEF3F0EEF3F0EEF3
        F0EFF3F0EFF3F0EFF3F0EFF3F0EFF3F0EFF3F0EFF3F0EFF3F0EFF3F0EFF3F0EF
        F3F0EFF3F0EFF3F0EFF3F0EFF4F0EFF4F0EFF4F0EFF4F0EFF4F0EFF4F0EFF4F0
        EFF4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4
        F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0
        F4F1F0F4F1F0F5F1F0F5F1F0F5F1F0F5F1F0F5F1F0F5F1F0F5F1F0F5F2F1F5F2
        F1F5F2F1F5F2F1F5F2F1F5F2F1CAC5C4CBBBB6CBBBB6CBBBB6CBBBB6B8AAA5B1
        A7A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAC4C2A99C98CABBB6CABB
        B6CABBB6CABBB6BEB7B5F3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3EFEEF3F0EEF3
        F0EEF3F0EEF3F0EEF3F0EEF3F0EEF3F0EEF3F0EFF3F0EFF3F0EFF3F0EFF3F0EF
        F3F0EFF3F0EFF3F0EFF3F0EFF3F0EFF3F0EFF3F0EFF3F0EFF3F0EFF3F0EFF3F0
        EFF3F0EFF3F0EFF3F0EFF3F0EFF3F0EFF3F0EFF3F0EFF4F1F0F4F1F0F4F1F0F4
        F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0
        F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1
        F0F4F1F0F4F1F0F4F1F0F4F1F0F5F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5
        F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5F2F1
        F5F2F1F5F2F1F5F2F1F5F2F1F5F3F2F5F3F2F5F3F2F5F3F2F5F3F2F5F3F2F5F3
        F2F5F3F2F5F3F2F5F3F2F5F3F2CAC6C5CABBB6CABBB6CABBB6CABBB6B8AAA6AF
        A6A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAC4C2A79B97C9BAB5C9BA
        B5C9BAB5C9BAB5BEB7B5F3F0EFF3F0EFF3F0EFF3F0EFF3F0EFF3F0EFF3F0EFF3
        F0EFF3F0EFF3F0EFF3F0EFF3F0EFF3F0EFF3F0EFF3F0EFF3F0EFF3F0EFF4F1F0
        F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1
        F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4
        F2F1F4F2F1F4F2F1F4F2F1F4F2F1F4F2F1F4F2F1F5F2F1F5F2F1F5F2F1F5F2F1
        F5F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5F2
        F1F5F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5F3F2F5F3F2F5F3F2F5
        F3F2F5F3F2F5F3F2F5F3F2F5F3F2F5F3F2F5F3F2F5F3F2F5F3F2F5F3F2F5F3F2
        F6F3F2F6F3F2F6F3F2F6F3F2F6F3F2F6F3F2F6F3F2F6F3F3F6F3F3F6F3F3F6F3
        F3F6F3F3F6F3F3F6F3F3F6F4F3CAC7C6C9BAB5C9BAB5C9BAB5C9BAB5B7AAA6AF
        A6A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C3C2A79A96C9B9B4C9B9
        B4C9B9B4C9B9B4BFB7B5F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4
        F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0F4F1F0
        F4F1F0F4F1F0F5F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5F2
        F1F5F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5
        F2F1F5F2F1F5F2F1F5F2F2F5F2F2F5F2F2F5F2F2F5F2F2F5F2F2F5F2F2F5F3F2
        F5F3F2F5F3F2F5F3F2F5F3F2F5F3F2F5F3F2F6F3F2F6F3F2F6F3F2F6F3F2F6F3
        F2F6F3F2F6F3F2F6F3F2F6F3F2F6F3F2F6F3F2F6F3F2F6F3F2F6F3F2F6F4F3F6
        F4F3F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3
        F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3F7F4
        F4F7F4F4F7F4F4F7F4F4F7F4F4CBC7C6C9B9B4C9B9B4C9B9B4C9B9B4B8AAA5AF
        A6A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C3C1A69A95C8B9B4C8B9
        B4C8B9B4C8B9B4BEB7B5F4F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5
        F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5F2F1F5F2F2F5F2F2
        F5F2F2F5F2F2F5F2F2F5F2F2F5F2F2F5F3F2F5F3F2F5F3F2F5F3F2F5F3F2F5F3
        F2F5F3F2F5F3F2F5F3F2F5F3F2F5F3F2F5F3F2F5F3F2F5F3F2F6F3F2F6F3F2F6
        F3F2F6F3F2F6F3F2F6F3F2F6F3F2F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3
        F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3F6F4
        F3F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3F7F4F4F7F4F4F7F4F4F7F4F4F7F4F4F7
        F4F4F7F4F4F7F5F4F7F5F4F7F5F4F7F5F4F7F5F4F7F5F4F7F5F4F7F5F4F7F5F4
        F7F5F4F7F5F4F7F5F4F7F5F4F7F5F4F7F5F4F7F5F5F7F5F5F7F5F5F7F5F5F7F5
        F5F7F5F5F7F5F5F7F5F5F7F5F5CBC8C7C8B9B4C8B9B4C8B9B4C8B9B4B7A9A5AE
        A4A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C3C1A79996C7B8B3C7B8
        B3C7B8B3C7B8B3BEB8B6F5F3F2F5F3F2F5F3F2F5F3F2F5F3F2F5F3F2F5F3F2F5
        F3F2F5F3F2F5F3F2F5F3F2F5F3F2F5F3F2F5F3F2F5F3F2F5F3F2F5F3F2F5F3F2
        F6F3F3F6F3F3F6F3F3F6F3F3F6F3F3F6F3F3F6F3F3F6F3F3F6F4F3F6F4F3F6F4
        F3F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3F6
        F4F3F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3F7F4F4F7F4F4F7F4F4
        F7F4F4F7F4F4F7F4F4F7F4F4F7F5F4F7F5F4F7F5F4F7F5F4F7F5F4F7F5F4F7F5
        F4F7F5F4F7F5F4F7F5F4F7F5F4F7F5F4F7F5F4F7F5F4F7F5F4F7F5F4F7F5F5F7
        F5F5F7F5F5F7F5F5F7F5F5F7F5F5F7F5F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5
        F7F6F5F7F6F5F8F6F5F8F6F5F8F6F5F8F6F5F8F6F5F8F6F5F8F6F5F8F6F6F8F6
        F6F8F6F6F8F6F6F8F6F6F8F6F6CCC8C7C7B8B3C7B8B3C7B8B3C7B8B3B7A9A4AC
        A4A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8C2C1A59894C6B7B2C6B7
        B2C6B7B2C6B7B2BEB7B5F6F3F3F6F3F3F6F3F3F6F3F3F6F3F3F6F3F3F6F3F3F6
        F4F3F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3F6F4F3
        F6F4F3F6F4F3F6F4F3F6F4F4F6F4F4F6F4F4F6F4F4F6F4F4F6F4F4F6F4F4F7F5
        F4F7F5F4F7F5F4F7F5F4F7F5F4F7F5F4F7F5F4F7F5F4F7F5F4F7F5F4F7F5F4F7
        F5F4F7F5F4F7F5F4F7F5F4F7F5F4F7F5F5F7F5F5F7F5F5F7F5F5F7F5F5F7F5F5
        F7F5F5F7F5F5F7F5F5F7F5F5F7F5F5F7F5F5F7F5F5F7F5F5F8F6F5F8F6F5F8F6
        F5F8F6F5F8F6F5F8F6F5F8F6F5F8F6F5F8F6F5F8F6F5F8F6F5F8F6F5F8F6F5F8
        F6F5F8F6F5F8F6F6F8F6F6F8F6F6F8F6F6F8F6F6F8F6F6F8F6F6F8F7F6F8F7F6
        F8F7F6F8F7F6F8F7F6F8F7F6F8F7F6F8F7F6F8F7F6F8F7F6F8F7F6F8F7F6F8F7
        F6F8F7F6F9F7F7F9F7F7F9F7F7CCC9C8C6B7B2C6B7B2C6B7B2C6B7B2B6A9A4AC
        A4A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8C2C0A49894C6B7B2C6B7
        B2C6B7B2C6B7B2BFB8B6F6F4F4F6F4F4F6F4F4F7F5F4F7F5F4F7F5F4F7F5F4F7
        F5F4F7F5F4F7F5F4F7F5F4F7F5F4F7F5F4F7F5F4F7F5F4F7F5F4F7F5F4F7F5F4
        F7F5F5F7F5F5F7F5F5F7F5F5F7F5F5F7F5F5F7F5F5F7F5F5F7F5F5F7F5F5F7F5
        F5F7F5F5F7F5F5F7F5F5F8F6F5F8F6F5F8F6F5F8F6F5F8F6F5F8F6F5F8F6F5F8
        F6F5F8F6F5F8F6F5F8F6F5F8F6F5F8F6F5F8F6F5F8F6F5F8F6F6F8F6F6F8F6F6
        F8F6F6F8F6F6F8F6F6F8F6F6F8F7F6F8F7F6F8F7F6F8F7F6F8F7F6F8F7F6F8F7
        F6F8F7F6F8F7F6F8F7F6F8F7F6F8F7F6F8F7F6F8F7F6F9F7F7F9F7F7F9F7F7F9
        F7F7F9F7F7F9F7F7F9F7F7F9F7F7F9F7F7F9F7F7F9F7F7F9F7F7F9F7F7F9F7F7
        F9F7F7F9F8F7F9F8F7F9F8F7F9F8F7F9F8F7F9F8F7F9F8F7F9F8F8F9F8F8F9F8
        F8F9F8F8F9F8F8F9F8F8F9F8F8CDCAC9C6B7B2C6B7B2C6B7B2C6B7B2B6A9A5AC
        A3A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C2C0A49894C5B6B1C5B6
        B1C5B6B1C5B6B1BFB8B6F7F5F5F7F5F5F7F5F5F7F5F5F7F5F5F7F5F5F7F6F5F7
        F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F8F6F5F8F6F5F8F6F5F8F6F5F8F6F5
        F8F6F5F8F6F5F8F6F5F8F6F6F8F6F6F8F6F6F8F6F6F8F6F6F8F6F6F8F6F6F8F6
        F6F8F6F6F8F6F6F8F6F6F8F6F6F8F6F6F8F6F6F8F7F6F8F7F6F8F7F6F8F7F6F8
        F7F6F8F7F6F8F7F6F9F7F7F9F7F7F9F7F7F9F7F7F9F7F7F9F7F7F9F7F7F9F7F7
        F9F7F7F9F7F7F9F7F7F9F7F7F9F7F7F9F7F7F9F7F7F9F8F7F9F8F7F9F8F7F9F8
        F7F9F8F7F9F8F7F9F8F7F9F8F7F9F8F7F9F8F7F9F8F7F9F8F7F9F8F7F9F8F7F9
        F8F8F9F8F8F9F8F8F9F8F8F9F8F8F9F8F8F9F8F8FAF8F8FAF8F8FAF8F8FAF8F8
        FAF8F8FAF8F8FAF8F8FAF9F8FAF9F8FAF9F8FAF9F8FAF9F8FAF9F8FAF9F8FAF9
        F8FAF9F9FAF9F9FAF9F9FAF9F9CDCAC9C5B6B1C5B6B1C5B6B1C5B6B1B6A8A4AB
        A1A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C1C0A39693C4B5B0C4B5
        B0C4B5B0C4B5B0BFB8B6F8F6F6F8F6F6F8F6F6F8F6F6F8F6F6F8F6F6F8F6F6F8
        F6F6F8F6F6F8F7F6F8F7F6F8F7F6F8F7F6F8F7F6F8F7F6F8F7F6F8F7F6F8F7F6
        F8F7F6F8F7F6F8F7F6F8F7F6F8F7F6F9F7F7F9F7F7F9F7F7F9F7F7F9F7F7F9F7
        F7F9F7F7F9F7F7F9F8F7F9F8F7F9F8F7F9F8F7F9F8F7F9F8F7F9F8F7F9F8F7F9
        F8F7F9F8F7F9F8F7F9F8F7F9F8F7F9F8F7F9F8F8F9F8F8F9F8F8F9F8F8F9F8F8
        F9F8F8F9F8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF9F8FAF9
        F8FAF9F8FAF9F8FAF9F8FAF9F8FAF9F8FAF9F8FAF9F9FAF9F9FAF9F9FAF9F9FA
        F9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FBFAF9
        FBFAF9FBFAF9FBFAF9FBFAF9FBFAF9FBFAF9FBFAFAFBFAFAFBFAFAFBFAFAFBFA
        FAFBFAFAFBFAFAFBFAFAFBFAFACDCBCAC4B5B0C4B5B0C4B5B0C4B5B0B5A8A3AB
        A19FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C1BFA49693C4B4B0C4B4
        B0C4B4B0C4B4B0BFB8B7F9F7F7F9F7F7F9F7F7F9F7F7F9F7F7F9F7F7F9F7F7F9
        F7F7F9F7F7F9F7F7F9F7F7F9F7F7F9F8F7F9F8F7F9F8F7F9F8F7F9F8F7F9F8F7
        F9F8F7F9F8F8F9F8F8F9F8F8F9F8F8F9F8F8F9F8F8F9F8F8FAF8F8FAF8F8FAF8
        F8FAF8F8FAF8F8FAF8F8FAF8F8FAF9F8FAF9F8FAF9F8FAF9F8FAF9F8FAF9F8FA
        F9F8FAF9F8FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9
        FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FBFAF9FBFAF9FBFAF9FBFAF9FBFAF9FBFA
        F9FBFAF9FBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFB
        FAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFA
        FBFAFAFBFAFAFBFAFAFBFBFAFBFBFAFBFBFAFBFBFAFBFBFAFBFBFAFBFBFAFCFB
        FBFCFBFBFCFBFBFCFBFBFCFBFBCECBCAC4B4B0C4B4B0C4B4B0C4B4B0B5A8A3AA
        A19FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C1BFA29691C3B4AFC3B4
        AFC3B4AFC3B4AFBFB9B7FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FA
        F9F8FAF9F8FAF9F8FAF9F8FAF9F8FAF9F8FAF9F8FAF9F8FAF9F8FAF9F9FAF9F9
        FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9
        F9FAF9F9FBFAF9FBFAF9FBFAF9FBFAF9FBFAF9FBFAF9FBFAF9FBFAF9FBFAF9FB
        FAF9FBFAF9FBFAF9FBFAF9FBFAF9FBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFA
        FBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFBFAFBFB
        FAFBFBFAFBFBFAFBFBFAFBFBFAFBFBFAFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFC
        FBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFCFBFCFCFB
        FCFCFBFCFCFBFCFCFBFCFCFBFCFCFBFCFCFBFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFDFCFCFDFCFCCECCCBC3B4AFC3B4AFC3B4AFC3B4AFB4A8A4AA
        A09FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C0BFA19591C2B3AEC2B3
        AEC2B3AEC2B3AEBFB9B7FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FAF9F9FA
        F9F9FAF9F9FAF9F9FAF9F9FBFAF9FBFAF9FBFAF9FBFAF9FBFAF9FBFAF9FBFAF9
        FBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFA
        FAFBFAFAFBFAFAFBFAFAFBFAFAFBFBFAFBFBFAFBFBFAFBFBFAFBFBFAFBFBFAFB
        FBFAFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFB
        FCFBFBFCFBFBFCFBFBFCFBFBFCFCFBFCFCFBFCFCFBFCFCFBFCFCFBFCFCFBFCFC
        FBFCFCFBFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFDFCFCFDFCFCFD
        FCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFC
        FDFCFCFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDCFCDCCC2B3AEC2B3AEC2B3AEC2B3AEB5A7A3AA
        A09DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C0BF9E918EC1B2AEC1B2
        AEC1B2AEC1B2AEBFB9B7FBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFB
        FBFAFBFBFAFBFBFAFBFBFAFBFBFAFBFBFAFBFBFAFCFBFBFCFBFBFCFBFBFCFBFB
        FCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFB
        FBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFC
        FDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
        FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFECFCDCDC1B2AEC1B2AEC1B2AEC1B2AEB2A5A1A8
        A09CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5BFBF948986C1B2ADC1B2
        ADC1B2ADC1B2ADBFBAB8FCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFC
        FBFBFCFBFBFCFBFBFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFDFCFC
        FDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFC
        FCFDFCFCFDFCFCFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFEFDFDFEFDFDFEFDFDFEFDFD
        FEFDFDFEFDFDFEFDFDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFCFCECDC1B2ADC1B2ADC1B2ADC1B2ADACA09CA7
        9F9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5BFBF908582C0B1ADC0B1
        ACC0B1ACC0B1ACB5ADABFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFC4C1BFC0B1ACC0B1ACC0B1ACBFB0ABA59998A7
        9F9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4BFBE8F8481C0B7B5BFB0
        ACBFB0ACBFB0ACAFA29FEDEDEDFDFDFDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFB1A9A6BFB0ACBFB0ACBFB0ACC0B5B2A09694A7
        9D9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4BFBE8F8482C4BFBDC0B6
        B2BEB0ABBEB0ABBEB0ABAFA7A4C9C6C5E7E7E7E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8D5D4D3B5AFACB7AAA5BEB0ABBEB0ABBFB3AEC4BFBCA19794A6
        9D9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4BFBE8F8482C7C2C1C7C2
        C1C3BCB9BFB1ACBEAFAABEAFAABCADA8AFA19CAFA19CAFA19CAFA19CAFA19CAF
        A19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19C
        AFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA1
        9CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAF
        A19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19C
        AFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA1
        9CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAF
        A19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19C
        AFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA19CAFA1
        9CAFA19CAFA19CB8A9A4BEAFAABEAFAABEB0ABC3B8B5C7C2C0C8C3C1A19896A6
        9C9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4BFBE908582CBC6C4CBC6
        C4CBC6C4CBC6C4C9C3C1C7BEBCC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5
        BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBB
        C5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BD
        BBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5
        BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBB
        C5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BD
        BBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5
        BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBB
        C5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BDBBC5BD
        BBC5BDBBC5BDBBC5BDBBC6BEBBC9C1C0CAC5C3CBC6C4CBC6C4CBC6C4A19896A4
        9C99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4BFBE908582CECAC8CECA
        C8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CE
        CAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8
        CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECA
        C8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CE
        CAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8
        CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECA
        C8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CE
        CAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8
        CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECA
        C8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8CECAC8A39A97A4
        9C99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4BFBE8F8482D1CDCCD1CD
        CCD1CDCCD0CCCBB0ACAC9A9796A39F9FC6C2C1D1CDCCD0CCCBB0ACAC9A9796A3
        9F9FC6C2C1D1CDCCD0CCCBB0ACAC9A9796A39F9FC6C2C1D1CDCCD1CDCCD1CDCC
        D1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CD
        CCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1
        CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCC
        D1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CD
        CCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1
        CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCC
        D1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CDCCD1CD
        CCD1CDCCD0CCCBB0ACAC9A9796A39F9FC6C2C1D1CDCCD1CDCCD1CDCCA39A98A4
        9C99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C0BE8C817ECDC8C7D5D1
        CFD5D1CFBAB6B5B0ACABD5D1CFCAC7C59D9A99D5D1CFBAB6B5B0ACABD5D1CFCA
        C7C59D9A99D5D1CFBAB6B5B0ACABD5D1CFCAC7C59D9A99D5D1CFD5D1CFD5D1CF
        D5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1
        CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5
        D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CF
        D5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1
        CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5
        D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CF
        D5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1CFD5D1
        CFD5D1CFBAB6B5B0ACABD5D1CFCAC7C59D9A99D5D1CFD5D1CFD5D1CF998F8CA5
        9C9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D1CF8C817EC1BBB9D8D4
        D3D8D4D3A29F9ED6D2D1D8D4D3D8D4D3A9A6A5CFCBCAA29F9ED6D2D1D8D4D3D8
        D4D3A9A6A5CFCBCAA29F9ED6D2D1D8D4D3D8D4D3A9A6A5CFCBCAD8D4D3D8D4D3
        D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4
        D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8
        D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3
        D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4
        D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8
        D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3
        D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4D3D8D4
        D3D8D4D3A29F9ED6D2D1D8D4D3D8D4D3A9A6A5CFCBCAD8D4D3D5D1D08C817FB5
        ACACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECEAEA8C817EA29996DBD7
        D7DBD7D7B9B6B6C2BEBEDBD7D7D9D5D5A3A0A0DBD7D7B9B6B6C2BEBEDBD7D7D9
        D5D5A3A0A0DBD7D7B9B6B6C2BEBEDBD7D7D9D5D5A3A0A0DBD7D7DBD7D7DBD7D7
        DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7
        D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DB
        D7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7
        DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7
        D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DB
        D7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7
        DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7D7DBD7
        D7DBD7D7B9B6B6C2BEBEDBD7D7D9D5D5A3A0A0DBD7D7DBD7D7B8B1B08C817ECC
        C7C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEA39A978C817EBEB7
        B6DEDBDADAD7D6ACAAA9A4A2A1A4A2A1C9C6C5DEDBDADAD7D6ACAAA9A4A2A1A4
        A2A1C9C6C5DEDBDADAD7D6ACAAA9A4A2A1A4A2A1C9C6C5DEDBDADEDBDADEDBDA
        DEDBDADEDBDADEDBDADEDBDADEDBDADEDBDADEDBDADEDBDADEDBDADEDBDADEDB
        DADEDBDADEDBDADEDBDADEDBDADEDBDADEDBDADEDBDADEDBDADEDBDADEDBDADE
        DBDADEDBDADEDBDADEDBDADEDBDADEDBDADEDBDADEDBDADEDBDADEDBDADEDBDA
        DEDBDADEDBDADEDBDADEDBDADEDBDADEDBDADEDBDADEDBDADEDBDADEDBDADEDB
        DADEDBDADEDBDADEDBDADEDBDADEDBDADEDBDADEDBDADEDBDADEDBDADEDBDADE
        DBDADEDBDADEDBDADEDBDADEDBDADEDBDADEDBDADEDBDADEDBDADEDBDADEDBDA
        DEDBDADEDBDADEDBDADEDBDADEDBDADEDBDADEDBDADEDBDADEDBDADEDBDADEDB
        DADEDBDADAD7D6ACAAA9A4A2A1A4A2A1C9C6C5DEDBDAD2CECC8E8381908683F0
        EEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECEBE98F84828D82
        7FB5AEACDFDCDCE1DEDEE0DDDDE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE0DDDDE1
        DEDEE1DEDEE1DEDEE1DEDEE1DEDEE0DDDDE1DEDEE1DEDEE1DEDEE1DEDEE1DEDE
        E1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DE
        DEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1
        DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDE
        E1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DE
        DEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1
        DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDE
        E1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DEDEE1DE
        DEE1DEDEE1DEDEE1DEDEE0DDDDE1DEDEE1DEDEC6C0BF9388868C817ED0CCC9FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E0E09B91
        8F8C817E998F8DB1AAA7C3BDBCCCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CC
        C7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5
        CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7
        C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CC
        C7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5
        CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7
        C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CC
        C7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5
        CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7C5CCC7
        C5CCC7C5CCC7C5CCC7C5C7C2C0B6AFAEA299968C817E918583CCC9C6FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9
        F9CCC8C6B3ABAB9D949199908D99908D99908D99908D99908D99908D99908D99
        908D99908D99908D99908D99908D99908D99908D99908D99908D99908D99908D
        99908D99908D99908D99908D99908D99908D99908D99908D99908D99908D9990
        8D99908D99908D99908D99908D99908D99908D99908D99908D99908D99908D99
        908D99908D99908D99908D99908D99908D99908D99908D99908D99908D99908D
        99908D99908D99908D99908D99908D99908D99908D99908D99908D99908D9990
        8D99908D99908D99908D99908D99908D99908D99908D99908D99908D99908D99
        908D99908D99908D99908D99908D99908D99908D99908D99908D99908D99908D
        99908D99908D99908D99908D99908D99908D99908D99908D99908D99908D9990
        8D99908D99908D99908D99908D9B918FACA6A2C4BFBEEFEDEDFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Header.Text = #1057#1086#1079#1076#1072#1085#1080#1077' '#1085#1072#1088#1103#1076#1086#1074
      Description.Text = 
        #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1086#1077' '#1089#1086#1079#1076#1072#1085#1080#1077' '#1085#1072#1088#1103#1076#1086#1074' '#1085#1072' '#1091#1082#1072#1079#1072#1085#1085#1099#1081' '#1084#1077#1089#1103#1094'.'#13#10#1053#1072#1088#1103#1076#1099' '#1089#1086#1079#1076 +
        #1072#1102#1090#1089#1103' '#1087#1086' '#1072#1076#1088#1077#1089#1072#1084' '#1080#1079' '#1076#1086#1075#1086#1074#1086#1088#1072' '#1089' '#1087#1086#1076#1088#1103#1076#1085#1086#1081' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1077#1081','#13#10#1079#1072' '#1080#1089#1082#1083#1102 +
        #1095#1077#1085#1080#1077#1084' '#1072#1076#1088#1077#1089#1086#1074' '#1087#1086' '#1082#1086#1090#1086#1088#1099#1084' '#1091#1078#1077' '#1089#1086#1079#1076#1072#1085#1099' '#1085#1072#1088#1103#1076#1099' '#1079#1072' '#1091#1082#1072#1079#1072#1085#1085#1099#1081' '#1087#1077#1088#1080#1086#1076 +
        '.'
    end
  end
  object TdxBarSeparator
    Category = -1
    Visible = ivAlways
  end
  object ds_Jwork: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE JWORK'
      'SET '
      '    JWORKTYPE = :JWORKTYPE,'
      '    REGDATE = :REGDATE,'
      '    KONTRAGENT = :KONTRAGENT,'
      '    HOUSE = :HOUSE,'
      '    DESCRIPTION = :DESCRIPTION,'
      '    PLACE = :PLACE,'
      '    PLANDATE = :PLANDATE,'
      '    FACTDATE = :FACTDATE,'
      '    NOTE = :NOTE,'
      '    SHOWRESULT = :SHOWRESULT,'
      '    WORKSPECLIST = :WORKSPECLIST,'
      '    LASTTIME = :LASTTIME,'
      '    USERNAME = :USERNAME,'
      '    STREET = :STREET'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    JWORK'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO JWORK('
      '    CODE,'
      '    JWORKTYPE,'
      '    REGDATE,'
      '    KONTRAGENT,'
      '    HOUSE,'
      '    DESCRIPTION,'
      '    PLACE,'
      '    PLANDATE,'
      '    FACTDATE,'
      '    NOTE,'
      '    SHOWRESULT,'
      '    WORKSPECLIST,'
      '    LASTTIME,'
      '    USERNAME,'
      '    STREET'
      ')'
      'VALUES('
      '    :CODE,'
      '    :JWORKTYPE,'
      '    :REGDATE,'
      '    :KONTRAGENT,'
      '    :HOUSE,'
      '    :DESCRIPTION,'
      '    :PLACE,'
      '    :PLANDATE,'
      '    :FACTDATE,'
      '    :NOTE,'
      '    :SHOWRESULT,'
      '    :WORKSPECLIST,'
      '    :LASTTIME,'
      '    :USERNAME,'
      '    :STREET'
      ')')
    RefreshSQL.Strings = (
      'SELECT JW.CODE, '
      '       JW.JWORKTYPE, jt.name JTName,'
      '       JW.REGDATE, '
      '       JW.KONTRAGENT, k.Name KontrName,'
      '       JW.HOUSE, h.nomer,'
      '       JW.DESCRIPTION, '
      '       JW.PLACE, '
      '       JW.PLANDATE, '
      '       JW.FACTDATE, '
      '       JW.NOTE, '
      '       JW.SHOWRESULT, '
      '       JW.WORKSPECLIST, '
      '       JW.LASTTIME, '
      '       JW.USERNAME, '
      '       JW.STREET, s.name StreetName'
      'FROM JWORK JW'
      'left outer join house h on h.code=JW.HOUSE'
      'Left outer join street s on s.code = jw.street'
      'left outer join kontragent k on k.code=jw.kontragent'
      'left outer join JWORKTYPE jt on jt.code=jw.JWORKTYPE'
      ''
      ' WHERE '
      '        JW.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT JW.CODE, '
      '       JW.JWORKTYPE, jt.name JTName,'
      '       JW.REGDATE, '
      '       JW.KONTRAGENT, k.Name KontrName,'
      '       JW.HOUSE, h.nomer,'
      '       JW.DESCRIPTION, '
      '       JW.PLACE, '
      '       JW.PLANDATE, '
      '       JW.FACTDATE, '
      '       JW.NOTE, '
      '       JW.SHOWRESULT, '
      '       JW.WORKSPECLIST, '
      '       JW.LASTTIME, '
      '       JW.USERNAME, '
      '       JW.STREET, s.name StreetName'
      'FROM JWORK JW'
      'left outer join house h on h.code=JW.HOUSE'
      'Left outer join street s on s.code = jw.street'
      'left outer join kontragent k on k.code=jw.kontragent'
      'left outer join JWORKTYPE jt on jt.code=jw.JWORKTYPE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    AutoCommit = True
    Left = 480
    Top = 280
  end
  object src_Jwork: TDataSource
    DataSet = ds_Jwork
    Left = 509
    Top = 280
  end
  object il1: TcxImageList
    FormatVersion = 1
    DesignInfo = 23593336
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
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FDFDFD00FBFBFB00F9F9F900F6F6F600F4F4F400F3F3F300F3F3F300F4F4
          F400F6F6F600F8F8F800FBFBFB00FDFDFD00FFFFFF00FFFFFF00FEFEFE00F7F7
          F700EEEEEE00E4E4E400DBDBDB00D3D3D300CCCCCC00C2C2C700C1C1C600CACA
          CA00D1D1D100D9D9D900E3E3E300ECECEC00F6F6F600FEFEFE00FFFFFF00FFFF
          FF00FFFFFF00FEFEFE00EFEFFA008282E2002E2ECC000A0AC4000A0AC4002E2E
          CC008282E200EFEFFA00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00D3D3F6002727CE000C0CD1000D0DE4000D0DEE000D0DEE000D0D
          E4000C0CD1002727CE00D3D3F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00E9E9FA002424D2001414ED001616F5002929ED001616FB001616FB002828
          ED001616F5001414ED002424D200E9E9FA00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF006F6FE1001C1CEF001F1FF300A2A2EF00E2E2F8003838EC003838EC00E2E2
          F700A1A1EE001E1EF3001C1CEF006F6FE100FFFFFF00FFFFFF00FFFFFF00F8F8
          FD002323DC003B3BF5004C4CED00E4E4F900FFFFFF00E3E3F800E2E2F800FFFF
          FF00E2E2F8003636EA002929F5002222DC00F8F8FD00FFFFFF00FFFFFF00D3D3
          F5003838E1006666F5006666F5006868EE00E4E4FA00FFFFFF00FFFFFF00E2E2
          F9004545EB003232F2003F3FF2003A3AE100D3D3F500FFFFFF00FFFFFF00CCCC
          F2004343DF007B7BF4007B7BF4007272F000E3E3FA00FFFFFF00FFFFFF00E3E3
          FA005C5CED006363F2007777F3004545DF00CCCCF200FFFFFF00FFFFFF00ECEC
          FA002929D4008C8CF2007B7BF100E3E3FB00FFFFFF00E4E4FB00E4E4FB00FFFF
          FF00E4E4FB007B7BEF008C8CF2002C2CD400ECECFA00FFFFFF00FFFFFF00FFFF
          FF004747D6007474E9009393F100B8B8F600E4E4FB008D8DF1008E8EF100E4E4
          FB00B9B9F6009393F1007575E9004747D600FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00C2C2EF002A2AD8009191EE009696F0009292F000B2B2F400B2B2F4009292
          F0009696F0009191EE002A2AD800C2C2EF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF009191E3003636DD009797F100A2A2F200A2A2F200A2A2F200A2A2
          F2009898F1003838DD009191E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00B5B5EB003939D5004D4DE1006D6DED006F6FED005252
          E2003B3BD500B5B5EB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00CDCDF100A3A3E500A3A3E500CDCD
          F100FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00D5D5D500CCCCCC00CCCCCC00CCCCCC00D1D1D100FAFAFA00FFFF
          FF00D5D5D500CCCCCC00CCCCCC00CCCCCC00D1D1D100F8F8F800FFFFFF00F5F5
          F500D2D2D200747270006B696800757370006967660041403F00BEBEBE00CCCC
          CC0055545400383635006A68670062605F005D5B5A00BDBDBD00E0E0E000C8C7
          C4007A797800ADABAA00D7D5D400C1BFBF008D8B8A003E3C3B0043413E005E5B
          560055535200817F7D00B0AEAC00AAA8A60092908D005C5A5900BDB9B300BBB4
          A7006D6B6A00E6E4E30082807E00696866005351510083818000797776007775
          7400706E6D005B5958006967650053515100ABA9A600716F6D00B3ADA000CEC7
          BB0072716F00EAE8E9007C7A7800C1B8B20068666400FFFFFF00ECEAE900E3E1
          E100C3C1BF007C7A79009E9A910052504F00B2B0AF00817F7E00B1AB9F00CDC6
          BB0078767500FFFFFF007F7D7B0063615F007A7978007D7B79007C7A78007D7B
          79007E7C7A007D7B79006664640056545200DBD9D800807E7C00B1AB9E00CFC7
          BD009D9A9700B3B3B100FDFDFC00E7E5E400E5E3E200ABAAA8008B8885009C99
          9600B3B2B100FFFFFF00F2F0F000E8E7E600B0AEAC0092908E00C1BDB500FCF6
          F000D5CEC6008885810079777600737170006C6C6A007C787600C3B9B000C6BC
          B300898682007C7B7A007E7D7C0082807E0099979500FFFFFF00BAB7AF00A39B
          9000BCB4A900CFC5BC00E4DAD000ECE1D800F3E7E000EDE3DA00E4D9D100D0C6
          BE00C2B8AF00ABA19700C0BBB400FFFFFF00FFFFFF00FFFFFF00B1AB9F00C9C2
          B900D0C8BF00D6CDC500DDD4CB00E5DAD200EBE0D900E7DDD400DFD4CC00D8CF
          C600D2CAC100CDC4BC00B3ADA100FFFFFF00FFFFFF00FFFFFF00B0AB9E00C7C0
          B600CCC4BB00D3C9C100DAD0C700E1D7CF00EBE1DA00E4D9D100DCD1C900D5CC
          C200CEC6BD00CAC1B900B1AB9E00FFFFFF00FFFFFF00FFFFFF00AFAA9D00C8C1
          B700E8E3DB00F5F0E800FDF8F200FCF8F100FBF7F000FCF7F100FCF8F100F6F0
          EA00E9E2DB00CAC2BA00AFA99D00FFFFFF00FFFFFF00FFFFFF00AEA89C00FBF5
          EF00EEE7DE00E0D8CE00DDD5CC00DDD4CB00DDD4CB00DDD4CB00DDD5CC00E0D7
          CE00EDE6DE00FBF6EF00AEA89C00FFFFFF00FFFFFF00FFFFFF00AFA99D00E1D8
          CE00E1D7CE00DFD6CC00DFD5CB00DFD5CB00DFD5CB00DFD5CB00DFD5CB00DFD6
          CC00E1D7CE00E1D8CE00AFA99D00FFFFFF00FFFFFF00FFFFFF00D0CCC500B6B0
          A400D6CFC400E6DED500EFE7DD00EEE6DC00EEE6DC00EEE6DC00EFE7DD00E6DE
          D500D6CFC400B6B0A400D0CCC500FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEE
          EB00C4C0B700AEA99C00AEA89C00AEA89C00AEA89C00AEA89C00AEA89C00AEA9
          9C00C4C0B700EFEEEB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          001E000000330000003300000033000000220000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000001E6B69
          69AC676564FF676564FF636160FF5A5957BD0000002200000000000000000000
          000000000000000000000000000000000000000000000000000072716FAC6A68
          66FFB7B5B3FFB2B0AEFFAEABA8FF615F5EFF6A6866B90000001E000000000000
          0000000000000000000000000000000000000000000000000000767472FFC1C1
          BEFF7F7D7BFF4A4B4B74716F6DFF9E9C99FF615F5EFF5F5D5CAC000000000000
          00000000000000000000000000000000000000000000000000007C7A78FFD5D3
          D2FF3F3F3F880000000000000033747270FFAFACAAFF666462FF000000000000
          00000000000000000000000000000000000000000000000000007F7D7AFFEEED
          ECFF83817FFF000000336D6A68FF585656FFB7B5B3FF6F6D6BFF000000000000
          0000000000000000000000000000000000000000000000000000797977AC7A78
          76FFEAEBEAFF848280FF7A7876FFB9B8B7FF585654FF3F4040FF000000000000
          0000000000000000000000000000000000000000000000000000000000008B8A
          89A7787675FFEEEDECFFD7D5D5FF797775FFF5F6F6FF5A5856FF000000330000
          003300000033000000330000001E000000000000000000000000000000000000
          00007C7C7A967F7D7BFF807E7CFF7F7D7BFF7A7876FFF5F6F6FF5A5756FF3F3F
          3FFF6E6C6AFF646362FF5F5E5CAC000000220000000000000000000000000000
          000000000000000000000000000000000000000000007A7876FFF5F5F5FF5654
          53FFB7B5B3FFAFACAAFF61605FFF6A6867B90000001E00000000000000000000
          000000000000000000000000000000000000000000007D7B79FF777572FFF4F4
          F5FF575555FF62605EFFB0ADABFF636160FF504E4DAC00000000000000000000
          000000000000000000000000000000000000000000007F7D7CFFD6D4D3FF7977
          75FF6E6C69FF000000005F5D5BFFAFABA9FF666463FF00000000000000000000
          000000000000000000000000000000000000000000007F7D7BFFEEEDECFF7F7D
          7AFF000000330000001554545498B2B0AEFF6A6866FF00000000000000000000
          000000000000000000000000000000000000000000007D7C7B97797775FFF5F5
          F4FF7E7B79FF404040876C6A67FFB9B7B4FF6D6B6AFF00000000000000000000
          00000000000000000000000000000000000000000000000000008A8A88A77B78
          76FFEEEDECFFD5D3D2FFC3C2C0FF73716EFF5C5B599700000000000000000000
          0000000000000000000000000000000000000000000000000000000000006867
          6696817F7DFF7F7D7CFF7C7A78FF61605F970000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000330000002F000000000000
          0000000000000000000000000000000060600000FFFF0000FFFF000000000000
          000000000000000000000000000000000033008B49FF008246F1000000000000
          00000000000000000000000060600000FFFF0000FFFF00006060000000000000
          0000000000000000000000000033008743FFA1E2D5FF239A60FF000000330000
          003300000033000060800000FFFF0000FFFF0000707000000000000000000000
          00000000000000000033008743FF93DCC9FF1ACAADFF00B68EFF009658FF0097
          5BFF00578EFF0000FFFF0000FFFF000080990000000000000000000000000000
          000000000000008A48FF81DBC2FF14CEA9FF00C499FF57DBC1FF56DCC3FF3E9F
          D5FF0000FFFF0000FFFF2260CDFF008B4AFF0000003300000000000000000000
          000000000000008A48FF6FD7B8FF12D5A9FF00CD9BFF00CE9DFF0096BBFF0007
          FCFF0000FFFF005CD5FF1DD8AEFF2FCCA3FF018A49FF0000001E000000000000
          00000000000000000000008744FF5FD1ACFF11DDAAFF0091AFFF0004F9FF0000
          FFFF003BC2FF00A568FF00C48AFF04DDA8FF16BA83FF01532DAA000000000000
          0033000000330000001A00000000008846FF3A9EBFFF0105FAFF0000FFFF0000
          9FB000000033004B2889008043F000B578FF00D89FFF008B4BFF00000000008D
          4DFF008B4BFF004626990000002C000030400006F1F90000FFFF00009E9F007B
          42E5008C4AFF0000003300000000005C31A8008B4BFF008D4DFF00000000008B
          4BFF00D89FFF00B578FF006162E90003F0F70000FFFF0000B6C5000008391191
          54FF53D4AAFF008846FF00000033000000000000000000000000000000000252
          2D951ABA86FF06B2B8FF000CF7FF0000FFFF002CD1FF00834AFF008A49FF00C9
          90FF12DCAAFF63D3AFFF008744FF000000330000000000000000000000000000
          0000007960FF030DFAFF0000FFFF043CE6FF0DCDAAFF0DD4A8FF0DD3A7FF0ED1
          A4FF00CA9AFF13D3A9FF73D7BBFF008A48FF0000000000000000000000000000
          20200000DEDF0000FFFF1437E3FF59D5C8FF5BDEC8FF5ADEC7FF5BDDC6FF5CDB
          C3FF00C399FF15CCAAFF85DBC3FF008A48FF0000000000000000000020200000
          DEDF0000FFFF0000B6B7005836AB008946FF008844FF008744FF008947FF00B5
          8EFF1BC8AEFF98DECBFF008742FF0000000000000000000000000000D6D70000
          FFFF0000B6B7000008080000000000000000000000000000000000000000239B
          61FFA1E2D5FF008743FF00000000000000000000000000000000000048480000
          B6B7000008080000000000000000000000000000000000000000000000000082
          46ED008B49FF0000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000330000002F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000033008B49FF008246F1000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000033008743FFA1E2D5FF239A60FF000000330000
          0033000000330000003300000022000000000000000000000000000000000000
          00000000000000000033008743FF93DCC9FF1ACAADFF00B68EFF009658FF0097
          5BFF008B4AFF008945FF005B30B9000000330000000000000000000000000000
          000000000000008A48FF81DBC2FF14CEA9FF00C499FF57DBC1FF56DCC3FF56DD
          C4FF56DEC5FF56DCC4FF44C19AFF008B4AFF0000003300000000000000000000
          000000000000008A48FF6FD7B8FF12D5A9FF00CD9BFF00CE9DFF00D1A0FF00D2
          A1FF00D1A0FF00D1A0FF1DD8AEFF2FCCA3FF018A49FF0000001E000000000000
          00000000000000000000008744FF5FD1ACFF11DDAAFF00CA90FF008B49FF0087
          45FF009C5EFF00A568FF00C48AFF04DDA8FF16BA83FF01532DAA000000000000
          0033000000330000001A00000000008846FF4ED3A9FF129155FF000000000000
          002D00000033004B2889008043F000B578FF00D89FFF008B4BFF00000000008D
          4DFF008B4BFF004626990000002C0000001400592FA2008D4CFF00000000007B
          42E5008C4AFF0000003300000000005C31A8008B4BFF008D4DFF00000000008B
          4BFF00D89FFF00B578FF00773EE400361D820000003300000033000000331191
          54FF53D4AAFF008846FF00000033000000000000000000000000000000000252
          2D951ABA86FF07DBA8FF00BE85FF00A061FF009C5DFF008744FF008A49FF00C9
          90FF12DCAAFF63D3AFFF008744FF000000330000000000000000000000000000
          0000008A49FF35D0AAFF20D7B1FF0DD3A7FF0DD4A7FF0DD4A8FF0DD3A7FF0ED1
          A4FF00CA9AFF13D3A9FF73D7BBFF008A48FF0000000000000000000000000000
          000000000000018B49FF48C29CFF5CDCC6FF5BDEC8FF5ADEC7FF5BDDC6FF5CDB
          C3FF00C399FF15CCAAFF85DBC3FF008A48FF0000000000000000000000000000
          00000000000000000000005B2FA8008946FF008844FF008744FF008947FF00B5
          8EFF1BC8AEFF98DECBFF008742FF000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000239B
          61FFA1E2D5FF008743FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000082
          46ED008B49FF0000000000000000000000000000000000000000}
      end>
  end
  object ds_smat: TpFIBDataSet
    SelectSQL.Strings = (
      'select SM.CODE, SM.KSERVISMATERIAL, SM.NAME, SM.ED, SM.PRICE'
      'from SERVISMATERIAL SM'
      'ORDER BY SM.KSERVISMATERIAL, SM.NAME')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 81
    Top = 677
  end
  object src_smat: TDataSource
    DataSet = ds_smat
    Left = 109
    Top = 676
  end
  object src_serviswork: TDataSource
    DataSet = ds_serviswork
    Left = 93
    Top = 415
  end
  object ds_serviswork: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME'
      'from SERVISWORK'
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 64
    Top = 416
  end
end
