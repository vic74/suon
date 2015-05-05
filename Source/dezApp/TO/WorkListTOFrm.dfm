object WorkListTOForm: TWorkListTOForm
  Left = 0
  Top = 0
  Caption = #1057#1087#1080#1089#1086#1082' '#1088#1072#1073#1086#1090
  ClientHeight = 815
  ClientWidth = 981
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
    Width = 981
    Height = 815
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    object cbb_Y: TcxComboBox
      Left = 66
      Top = 71
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020')
      Properties.OnEditValueChanged = cbb_YPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 0
      Text = '2014'
      Width = 63
    end
    object cbb_Period: TcxComboBox
      Left = 174
      Top = 71
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        #1076#1077#1082#1072#1073#1088#1100'-'#1103#1085#1074#1072#1088#1100
        #1103#1085#1074#1072#1088#1100'-'#1092#1077#1074#1088#1072#1083#1100
        #1092#1077#1074#1088#1072#1083#1100'-'#1084#1072#1088#1090
        #1084#1072#1088#1090'-'#1072#1087#1088#1077#1083#1100
        #1072#1087#1088#1077#1083#1100'-'#1084#1072#1081
        #1084#1072#1081'-'#1080#1102#1085#1100
        #1080#1102#1085#1100'-'#1080#1102#1083#1100
        #1080#1102#1083#1100'-'#1072#1074#1075#1091#1089#1090
        #1072#1074#1075#1091#1089#1090'-'#1089#1077#1085#1090#1103#1073#1088#1100
        #1089#1077#1085#1090#1103#1073#1088#1100'-'#1086#1082#1090#1103#1073#1088#1100
        #1086#1082#1090#1103#1073#1088#1100'-'#1085#1086#1103#1073#1088#1100
        #1085#1086#1103#1073#1088#1100'-'#1076#1077#1082#1072#1073#1088#1100)
      Properties.OnEditValueChanged = cbb_PeriodPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 1
      Text = #1085#1086#1103#1073#1088#1100'-'#1076#1077#1082#1072#1073#1088#1100
      Width = 122
    end
    object dtBegin: TcxDateEdit
      Left = 66
      Top = 95
      Properties.ImmediatePost = True
      Properties.OnEditValueChanged = dtBeginPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 2
      Width = 105
    end
    object dtEnd: TcxDateEdit
      Left = 190
      Top = 95
      Properties.ImmediatePost = True
      Properties.OnEditValueChanged = dtEndPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 3
      Width = 105
    end
    object cbb_kontr: TcxLookupComboBox
      Left = 25
      Top = 163
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
      Properties.OnEditValueChanged = cbb_kontrPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 4
      Width = 336
    end
    object cbb_Street: TcxLookupComboBox
      Left = 66
      Top = 231
      Properties.DropDownSizeable = True
      Properties.GridMode = True
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
      TabOrder = 5
      Width = 295
    end
    object cbb_House: TcxLookupComboBox
      Left = 66
      Top = 255
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NOMER'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = cmDb.src_HouseLookUp
      Properties.OnEditValueChanged = cbb_HousePropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 6
      Width = 102
    end
    object cbb_MList: TcxLookupComboBox
      Left = 25
      Top = 347
      Properties.CaseSensitiveSearch = True
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_serviswork
      Properties.OnEditValueChanged = cbb_MListPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 8
      Width = 336
    end
    object btn_Find: TcxButton
      Left = 252
      Top = 384
      Width = 119
      Height = 25
      Caption = #1055#1086#1080#1089#1082
      OptionsImage.ImageIndex = 35
      OptionsImage.Images = cmDb.iml1
      TabOrder = 10
      OnClick = btn_FindClick
    end
    object btn_Clear: TcxButton
      Left = 15
      Top = 384
      Width = 109
      Height = 25
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      OptionsImage.ImageIndex = 23
      OptionsImage.Images = cmDb.iml1
      TabOrder = 9
    end
    object grd1: TcxGrid
      Left = 10000
      Top = 10000
      Width = 930
      Height = 20
      TabOrder = 12
      Visible = False
      LockedStateImageOptions.Effect = lsieDark
      LockedStateImageOptions.ShowText = True
      LockedStateImageOptions.Text = #1047#1072#1075#1088#1091#1079#1082#1072' '#1076#1072#1085#1085#1099#1093'...'
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnFocusedRecordChanged = v1FocusedRecordChanged
        DataController.DataSource = src_work
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Images = cmDb.iml1
        OptionsBehavior.IncSearch = True
        OptionsBehavior.IncSearchItem = clv1SWNAME
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          Width = 44
        end
        object clv1DATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = 'DATA'
          Width = 69
        end
        object clv1WDATA: TcxGridDBColumn
          DataBinding.FieldName = 'WDATA'
          Visible = False
        end
        object clv1WCODE: TcxGridDBColumn
          DataBinding.FieldName = 'WCODE'
          Visible = False
        end
        object clv1KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SERVISWORK: TcxGridDBColumn
          DataBinding.FieldName = 'SERVISWORK'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SWNAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090#1099
          DataBinding.FieldName = 'SWNAME'
          Width = 245
        end
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          Width = 46
        end
        object clv1SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Width = 184
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 41
        end
        object clv1ADDR: TcxGridDBColumn
          DataBinding.FieldName = 'ADDR'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1NOTE: TcxGridDBColumn
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1088#1072#1073#1086#1090' ('#1084#1077#1089#1090#1086')'
          DataBinding.FieldName = 'NOTE'
          Width = 272
        end
        object clv1FIO: TcxGridDBColumn
          Caption = #1052#1072#1089#1090#1077#1088
          DataBinding.FieldName = 'FIO'
          Width = 92
        end
        object clv1WORKLIST: TcxGridDBColumn
          DataBinding.FieldName = 'WORKLIST'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1QUANTITY: TcxGridDBColumn
          Caption = #1054#1073#1098#1077#1084
          DataBinding.FieldName = 'QUANTITY'
          Width = 53
        end
        object clv1PRICE: TcxGridDBColumn
          Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
          DataBinding.FieldName = 'PRICE'
          Width = 61
        end
        object clv1TOPLAN: TcxGridDBColumn
          Caption = #1053#1072' '#1086#1089#1085#1086#1074#1072#1085#1080#1080' '#1087#1083#1072#1085#1072
          DataBinding.FieldName = 'TOPLAN'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.DefaultImageIndex = 19
          Properties.Images = cmDb.iml1
          Properties.ImmediatePost = True
          Properties.Items = <
            item
            end>
          Properties.ShowDescriptions = False
          HeaderHint = #1053#1072' '#1086#1089#1085#1086#1074#1072#1085#1080#1080' '#1087#1083#1072#1085#1072
          HeaderImageIndex = 19
          Options.ShowCaption = False
          VisibleForCustomization = False
          Width = 23
        end
        object clv1JWORK: TcxGridDBColumn
          DataBinding.FieldName = 'JWORK'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.DefaultDescription = #1057#1074#1103#1079#1100' '#1089' '#1078#1091#1088#1085#1072#1083#1086#1084
          Properties.DefaultImageIndex = 29
          Properties.Images = cmDb.iml1
          Properties.ImmediatePost = True
          Properties.Items = <
            item
            end>
          Properties.ShowDescriptions = False
          HeaderGlyphAlignmentHorz = taCenter
          HeaderHint = #1057#1074#1103#1079#1100' '#1089' '#1078#1091#1088#1085#1072#1083#1086#1084
          HeaderImageIndex = 27
          Options.ShowCaption = False
          Width = 28
        end
        object clv1FDATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103
          DataBinding.FieldName = 'FDATA'
          Options.Editing = False
          Styles.OnGetContentStyle = clv1FDATAStylesGetContentStyle
          VisibleForCustomization = False
          Width = 86
        end
        object clv1JWORK1: TcxGridDBColumn
          DataBinding.FieldName = 'JWORK1'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1REQUESTID: TcxGridDBColumn
          Caption = #1047#1072#1103#1074#1082#1072
          DataBinding.FieldName = 'REQUESTID'
        end
        object clv1DISP_BASE: TcxGridDBColumn
          Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1077' '#1079#1072#1103#1074#1082#1080
          DataBinding.FieldName = 'DISP_BASE'
          Width = 244
        end
        object clv1STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object doc1: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 930
      Height = 29
      Align = dalTop
      BarManager = brm1
      Visible = False
    end
    object grd2: TcxGrid
      Left = 10000
      Top = 10000
      Width = 866
      Height = 193
      TabOrder = 16
      Visible = False
      LockedStateImageOptions.Effect = lsieLight
      object v2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_WorkSpecMaterial
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv2NAME
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv2QUANTITY
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv2PRICE
          end>
        DataController.Summary.SummaryGroups = <>
        Images = cmDb.iml1
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv2CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
        end
        object clv2WORKSPECLIST: TcxGridDBColumn
          DataBinding.FieldName = 'WORKSPECLIST'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2DATA: TcxGridDBColumn
          DataBinding.FieldName = 'DATA'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2SERVISWORK: TcxGridDBColumn
          DataBinding.FieldName = 'SERVISWORK'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2ADDR: TcxGridDBColumn
          DataBinding.FieldName = 'ADDR'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2CLASSMAT: TcxGridDBColumn
          DataBinding.FieldName = 'CLASSMAT'
          Visible = False
          VisibleForCustomization = False
          Width = 104
        end
        object clv2NAME: TcxGridDBColumn
          Caption = #1052#1072#1090#1077#1088#1080#1072#1083
          DataBinding.FieldName = 'NAME'
          Width = 237
        end
        object clv2QUANTITY: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086
          DataBinding.FieldName = 'QUANTITY'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 80
        end
        object clv2PRICE: TcxGridDBColumn
          Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
          DataBinding.FieldName = 'PRICE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 86
        end
        object clv2NOTE: TcxGridDBColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          DataBinding.FieldName = 'NOTE'
          Width = 371
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object btn_MatAdd: TcxButton
      Left = 10000
      Top = 10000
      Width = 41
      Height = 25
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1084#1072#1090#1077#1088#1080#1072#1083
      Caption = #1057#1086#1079#1076#1072#1090#1100
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = cmDb.iml1
      PaintStyle = bpsGlyph
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
      Visible = False
      OnClick = btn_MatAddClick
    end
    object btn_MatEdit: TcxButton
      Left = 10000
      Top = 10000
      Width = 41
      Height = 25
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1084#1072#1090#1077#1088#1080#1072#1083
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      OptionsImage.ImageIndex = 1
      OptionsImage.Images = cmDb.iml1
      PaintStyle = bpsGlyph
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
      Visible = False
      OnClick = btn_MatEditClick
    end
    object btn_MatDelete: TcxButton
      Left = 10000
      Top = 10000
      Width = 41
      Height = 25
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1084#1072#1090#1077#1088#1080#1072#1083
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = cmDb.iml1
      PaintStyle = bpsGlyph
      ParentShowHint = False
      ShowHint = True
      TabOrder = 15
      Visible = False
      OnClick = btn_MatDeleteClick
    end
    object grd4: TcxGrid
      Left = 10000
      Top = 10000
      Width = 910
      Height = 166
      Align = alCustom
      TabOrder = 19
      Visible = False
      object v4: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_Jwork
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv4WORKSPECLIST: TcxGridDBColumn
          DataBinding.FieldName = 'WORKSPECLIST'
          PropertiesClassName = 'TcxImageComboBoxProperties'
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
          Width = 200
        end
        object clv4PLACE: TcxGridDBColumn
          Caption = #1052#1077#1089#1090#1086' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'PLACE'
          Width = 193
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
        object clv4WORKSPECLIST1: TcxGridDBColumn
          Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'WORKSPECLIST1'
          Width = 137
        end
      end
      object l4: TcxGridLevel
        GridView = v4
      end
    end
    object doc2: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 910
      Height = 29
      Align = dalTop
      BarManager = brm1
      Visible = False
    end
    object grd3: TcxGrid
      Left = 10000
      Top = 10000
      Width = 910
      Height = 200
      TabOrder = 17
      Visible = False
      object vPlan: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_ToPlan
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Images = cmDb.iml1
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clPlanCODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
          Width = 44
        end
        object clPlanY: TcxGridDBColumn
          Caption = #1043#1086#1076
          DataBinding.FieldName = 'Y'
          Width = 73
        end
        object clPlanHOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clPlanSTREETNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STREETNAME'
          Width = 133
        end
        object clPlanNOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 67
        end
        object clPlanSTREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clPlanMLIST: TcxGridDBColumn
          DataBinding.FieldName = 'MLIST'
          Visible = False
          VisibleForCustomization = False
        end
        object clPlanMLISTNAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090#1099
          DataBinding.FieldName = 'MLISTNAME'
          Width = 273
        end
        object clPlanSUMY: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1085#1072' '#1075#1086#1076
          DataBinding.FieldName = 'SUMY'
          Width = 114
        end
        object clPlanNOTE: TcxGridDBColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          DataBinding.FieldName = 'NOTE'
          Width = 218
        end
      end
      object l3: TcxGridLevel
        GridView = vPlan
      end
    end
    object doc3: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 910
      Height = 29
      Align = dalTop
      BarManager = brm1
      Visible = False
    end
    object cbb_Master: TcxLookupComboBox
      Left = 66
      Top = 279
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'FIO'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_Master
      Properties.OnEditValueChanged = cbb_MasterPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 7
      Width = 295
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = -1
    end
    object lGrpFilter: TdxLayoutGroup
      CaptionOptions.Text = #1060#1080#1083#1100#1090#1088
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object lGrpWork: TdxLayoutGroup
      CaptionOptions.Text = #1057#1087#1080#1089#1086#1082' '#1088#1072#1073#1086#1090
      Parent = grp1
      Visible = False
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object lGrpPeriod: TdxLayoutGroup
      CaptionOptions.Text = #1055#1077#1088#1080#1086#1076
      Parent = lGrplc1Group1
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object lGrpAdrr: TdxLayoutGroup
      CaptionOptions.Text = #1040#1076#1088#1077#1089
      Parent = lGrplc1Group1
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object lGrpPO: TdxLayoutGroup
      CaptionOptions.Text = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      Parent = lGrplc1Group1
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object lGrplc1Group1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = lGrpFilter
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 356
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object litm_lc1Item1: TdxLayoutItem
      CaptionOptions.Text = #1043#1086#1076
      Parent = lGrplc1Group2
      Control = cbb_Y
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item11: TdxLayoutItem
      CaptionOptions.Text = #1055#1077#1088#1080#1086#1076
      Parent = lGrplc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 164
      Control = cbb_Period
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litm_lc1Item12: TdxLayoutItem
      CaptionOptions.Text = #1089
      Parent = lGrplc1Group3
      Control = dtBegin
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item13: TdxLayoutItem
      CaptionOptions.Text = #1087#1086
      Parent = lGrplc1Group3
      Control = dtEnd
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lGrplc1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lGrpPeriod
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lGrplc1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lGrpPeriod
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object litm_kontr: TdxLayoutItem
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = lGrpPO
      Control = cbb_kontr
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item14: TdxLayoutItem
      CaptionOptions.Text = #1059#1083#1080#1094#1072
      Parent = lGrpAdrr
      Control = cbb_Street
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item15: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1044#1086#1084
      Parent = lGrpAdrr
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 143
      Control = cbb_House
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lGrpMList: TdxLayoutGroup
      CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090#1099
      Parent = lGrplc1Group1
      ButtonOptions.Buttons = <>
      Index = 3
    end
    object litm_lc1Item16: TdxLayoutItem
      CaptionOptions.Text = 'cxLookupComboBox1'
      CaptionOptions.Visible = False
      Parent = lGrpMList
      Control = cbb_MList
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item17: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 119
      Control = btn_Find
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litm_lc1Item18: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group4
      Control = btn_Clear
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lGrplc1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lGrplc1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object lGrplc1Group5: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = lGrpWork
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object lGrpMaterial: TdxLayoutGroup
      CaptionOptions.Text = #1057#1087#1080#1089#1086#1082' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074' '#1082' '#1088#1072#1073#1086#1090#1077
      Parent = lGrpWork
      Visible = False
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 237
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object lGrplc1Group7: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = lGrpWork
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object litm_lc1Item19: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group5
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 207
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item110: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group7
      Control = doc1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item111: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group6
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lGrplc1Group8: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = lGrpWork
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object litm_AddMat: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group9
      Control = btn_MatAdd
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_EditMat: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group9
      Control = btn_MatEdit
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litm_DeleteMat: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group9
      Control = btn_MatDelete
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lGrplc1Group6: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = lGrpMaterial
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lGrplc1Group9: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = lGrplc1Group6
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object lGrpJurnal: TdxLayoutGroup
      CaptionOptions.Text = #1046#1091#1088#1085#1072#1083
      Parent = lGrpWork
      Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = True
      SizeOptions.Height = 242
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 4
    end
    object litm_lc1Item2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group11
      Control = grd4
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lGrpPlan: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1055#1083#1072#1085' '#1087#1086' '#1084#1077#1090#1072#1088#1080#1072#1083#1072#1084' '#1085#1072' '#1075#1086#1076
      Parent = lGrplc1Group8
      Visible = False
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 205
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object litm_lc1Item112: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group11
      Control = doc2
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lGrplc1Group11: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = lGrpJurnal
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object litm_lc1Item113: TdxLayoutItem
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lGrpPlan
      Control = grd3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item114: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = lGrpPlan
      Control = doc3
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litm_lc1Item115: TdxLayoutItem
      CaptionOptions.Text = #1052#1072#1089#1090#1077#1088
      Parent = lGrpAdrr
      Control = cbb_Master
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 768
    Top = 88
    object lcf1: TdxLayoutCxLookAndFeel
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 2
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_House
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = cbb_kontr
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = cbb_Master
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = cbb_Period
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = cbb_Street
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = cbb_Y
        Properties.Strings = (
          'ItemIndex')
      end>
    StorageName = 'prop1'
    Left = 736
    Top = 88
  end
  object src_kontr: TDataSource
    DataSet = cmDb.ds_KONTRAGENT
    Left = 248
    Top = 176
  end
  object ds_work: TpFIBDataSet
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
      '    JWORK = :JWORK,'
      '    FDATA = :FDATA,'
      '    JWORK1 = :JWORK1,'
      '    REQUESTID = :REQUESTID,'
      '    DISP_BASE = :DISP_BASE,'
      '    TOPLAN = :TOPLAN'
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
      '    JWORK,'
      '    FDATA,'
      '    JWORK1,'
      '    REQUESTID,'
      '    DISP_BASE,'
      '    TOPLAN'
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
      '    :JWORK,'
      '    :FDATA,'
      '    :JWORK1,'
      '    :REQUESTID,'
      '    :DISP_BASE,'
      '    :TOPLAN'
      ')')
    RefreshSQL.Strings = (
      'SELECT WL.CODE,'
      '       WL.DATA,'
      '       w.DATA WDATA, w.CODE WCODE,'
      '       WL.KONTRAGENT,'
      '       WL.SERVISWORK, sw.NAME SWNAME,'
      '       WL.HOUSE, s.NAME SNAME, h.NOMER, h.STREET,'
      '       WL.ADDR,'
      '       WL.PRICE,'
      '       WL.NOTE,'
      '       p.FIO,'
      '       WL.WORKLIST,'
      '       WL.QUANTITY,'
      '       WL.JWORK,'
      '       WL.FDATA,'
      '       WL.JWORK1,'
      '       WL.REQUESTID,'
      '       WL.DISP_BASE'
      '       ,WL.TOPLAN'
      'FROM WORKSPECLIST WL'
      'left outer join worklist w on w.CODE = wl.WORKLIST'
      'left OUTER JOIN SERVISWORK sw on sw.CODE = wl.SERVISWORK'
      
        'left outer join mhouse mh on mh.house=wl.house and mh.kontragent' +
        '=wl.kontragent'
      'left outer join worker w1 on w1.code=mh.worker'
      'left outer join piple p on p.code=w1.piple'
      'left outer join house h on h.CODE = wl.HOUSE'
      'left outer join STREET s on s.CODE = h.STREET'
      ''
      ' WHERE'
      '        WL.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT DISTINCT(WL.CODE),'
      '       WL.DATA,'
      '       w.DATA WDATA, w.CODE WCODE,'
      '       WL.KONTRAGENT,'
      '       WL.SERVISWORK, sw.NAME SWNAME,'
      '       WL.HOUSE, s.NAME SNAME, h.NOMER, h.STREET,'
      '       WL.ADDR,'
      '       WL.PRICE,'
      '       WL.NOTE,'
      '       p.FIO,'
      '       WL.WORKLIST,'
      '       WL.QUANTITY,'
      '       WL.JWORK,'
      '       WL.FDATA,'
      '       WL.JWORK1,'
      '       WL.REQUESTID,'
      '       WL.DISP_BASE'
      '       ,WL.TOPLAN'
      'FROM WORKSPECLIST WL'
      'left outer join worklist w on w.CODE = wl.WORKLIST'
      'left OUTER JOIN SERVISWORK sw on sw.CODE = wl.SERVISWORK'
      
        'left outer join mhouse mh on mh.house=wl.house and mh.kontragent' +
        '=wl.kontragent'
      'left outer join worker w1 on w1.code=mh.worker'
      'left outer join piple p on p.code=w1.piple'
      'left outer join house h on h.CODE = wl.HOUSE'
      'left outer join STREET s on s.CODE = h.STREET')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 744
    Top = 272
    oStartTransaction = False
  end
  object src_work: TDataSource
    DataSet = ds_work
    Left = 772
    Top = 272
  end
  object ds_serviswork: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME'
      'from SERVISWORK'
      'order by NAME'
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 744
    Top = 320
  end
  object src_serviswork: TDataSource
    DataSet = ds_serviswork
    Left = 773
    Top = 320
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
    Left = 528
    Top = 208
    DockControlHeights = (
      0
      0
      0
      0)
    object bar1: TdxBar
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = doc1
      DockedDockControl = doc1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 892
      FloatTop = 8
      FloatClientWidth = 71
      FloatClientHeight = 111
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_AddWork'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_EditWork'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_DeleteWork'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_PrintOrder'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_ClosePeriod'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_material'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Jurnal'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Plan'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object brm1Bar1: TdxBar
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
      FloatLeft = 1015
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_Link'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_LinkRec'
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
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockControl = doc3
      DockedDockControl = doc3
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1015
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_WPAdd'
        end
        item
          Visible = True
          ItemName = 'btn_WPDelete'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_AddWork: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1088#1072#1073#1086#1090#1091
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1088#1072#1073#1086#1090#1091
      Visible = ivAlways
      ImageIndex = 0
      OnClick = btn_AddWorkClick
    end
    object btn_EditWork: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1088#1072#1073#1086#1090#1091
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1088#1072#1073#1086#1090#1091
      Visible = ivAlways
      ImageIndex = 1
      OnClick = btn_EditWorkClick
    end
    object btn_DeleteWork: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1088#1072#1073#1086#1090#1091
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1088#1072#1073#1086#1090#1091
      Visible = ivAlways
      ImageIndex = 2
      OnClick = btn_DeleteWorkClick
    end
    object btn_PrintOrder: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1085#1072#1088#1103#1076#1072
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1085#1072#1088#1103#1076#1072
      Visible = ivAlways
      ImageIndex = 3
      OnClick = btn_PrintOrderClick
    end
    object btn_ClosePeriod: TdxBarButton
      Caption = #1047#1072#1082#1088#1099#1090#1080#1077' '#1087#1077#1088#1080#1086#1076#1072
      Category = 0
      Hint = #1047#1072#1082#1088#1099#1090#1080#1077' '#1087#1077#1088#1080#1086#1076#1072
      Visible = ivAlways
      ImageIndex = 14
      OnClick = btn_ClosePeriodClick
    end
    object btn_material: TdxBarButton
      Caption = #1052#1072#1090#1077#1088#1080#1072#1083#1099
      Category = 0
      Hint = #1052#1072#1090#1077#1088#1080#1072#1083#1099
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = btn_materialClick
    end
    object btn_Jurnal: TdxBarButton
      Caption = '   '#1046#1091#1088#1085#1072#1083'     '
      Category = 0
      Hint = '   '#1046#1091#1088#1085#1072#1083'     '
      Visible = ivAlways
      ButtonStyle = bsChecked
      ImageIndex = 27
      PaintStyle = psCaptionGlyph
      OnClick = btn_JurnalClick
    end
    object btn_Link: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1074' '#1078#1091#1088#1085#1072#1083#1077
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1074' '#1078#1091#1088#1085#1072#1083#1077
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = ppm1
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = btn_LinkClick
    end
    object btn_addNoLink: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1091#1102' '#1079#1072#1087#1080#1089#1100
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1091#1102' '#1079#1072#1087#1080#1089#1100
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = btn_addNoLinkClick
    end
    object btn_addwithLink: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1080' '#1089#1074#1103#1079#1072#1090#1100' '#1089' '#1088#1072#1073#1086#1090#1086#1081
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1080' '#1089#1074#1103#1079#1072#1090#1100' '#1089' '#1088#1072#1073#1086#1090#1086#1081
      Visible = ivAlways
      ImageIndex = 29
      OnClick = btn_addwithLinkClick
    end
    object btn_addByRec: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1085#1072' '#1086#1089#1085#1086#1074#1072#1085#1080#1080
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1085#1072' '#1086#1089#1085#1086#1074#1072#1085#1080#1080
      Visible = ivAlways
      ImageIndex = 34
      OnClick = btn_addByRecClick
    end
    object btn_LinkRec: TdxBarButton
      Caption = #1057#1074#1103#1079#1072#1090#1100' '#1089' '#1088#1072#1073#1086#1090#1086#1081
      Category = 0
      Hint = #1057#1074#1103#1079#1072#1090#1100' '#1089' '#1088#1072#1073#1086#1090#1086#1081
      Visible = ivAlways
      ImageIndex = 29
      PaintStyle = psCaptionGlyph
      OnClick = btn_LinkRecClick
    end
    object btn_WPAdd: TdxBarButton
      Caption = #1057#1074#1103#1079#1072#1090#1100' '#1089' '#1087#1083#1072#1085#1086#1084
      Category = 0
      Hint = #1057#1074#1103#1079#1072#1090#1100' '#1089' '#1087#1083#1072#1085#1086#1084
      Visible = ivAlways
      ImageIndex = 19
      PaintStyle = psCaptionGlyph
      OnClick = btn_WPAddClick
    end
    object btn_Plan: TdxBarButton
      Caption = '   '#1055#1083#1072#1085'       '
      Category = 0
      Hint = '   '#1055#1083#1072#1085'       '
      Visible = ivAlways
      ButtonStyle = bsChecked
      ImageIndex = 19
      PaintStyle = psCaptionGlyph
      OnClick = btn_PlanClick
    end
    object btn_WPDelete: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089#1074#1103#1079#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1089#1074#1103#1079#1100
      Visible = ivNever
      ImageIndex = 2
      PaintStyle = psCaptionGlyph
      OnClick = btn_WPDeleteClick
    end
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
      'select WS.CODE,'
      '       WS.WORKSPECLIST,'
      '       WS.DATA,'
      '       WS.KONTRAGENT,'
      '       WS.SERVISWORK,'
      '       WS.HOUSE,'
      '       WS.ADDR,'
      '       WS.CLASSMAT, TRIM(SM.FULLNAME) NAME,'
      '       WS.QUANTITY,'
      '       WS.PRICE,'
      '       WS.NOTE'
      'from WORKSPECMATERIAL WS'
      'left outer join CLASSMAT SM on SM.code = WS.CLASSMAT'
      'where WS.WORKSPECLIST  = :mas_code')
    AfterDelete = ds_WorkSpecMaterialAfterDelete
    AfterOpen = ds_WorkSpecMaterialAfterOpen
    AfterPost = ds_WorkSpecMaterialAfterPost
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    AutoCommit = True
    DataSource = src_work
    Left = 203
    Top = 528
    dcForceOpen = True
  end
  object src_WorkSpecMaterial: TDataSource
    DataSet = ds_WorkSpecMaterial
    Left = 231
    Top = 528
  end
  object src_smat: TDataSource
    DataSet = ds_CLASSMAT
    Left = 205
    Top = 485
  end
  object ds_CLASSMAT: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE,'
      '       TRIM(FULLNAME) NAME,'
      '       ED, '
      '       PRICE'
      'FROM CLASSMAT'
      'where ISGROUP=0'
      'order by TRIM(FULLNAME)')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 233
    Top = 484
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
      'SELECT JW.CODE,'
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
      '       JW.USERNAME,'
      '       JW.STREET, s.name StreetName, JW.WORKSPECLIST1'
      ''
      'FROM JWORK JW'
      'left outer join house h on h.code=JW.HOUSE'
      'Left outer join street s on s.code = jw.street'
      'left outer join kontragent k on k.code=jw.kontragent'
      'left outer join JWORKTYPE jt on jt.code=jw.JWORKTYPE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    AutoCommit = True
    Left = 768
    Top = 512
  end
  object src_Jwork: TDataSource
    DataSet = ds_Jwork
    Left = 797
    Top = 512
  end
  object ppm1: TdxBarPopupMenu
    BarManager = brm1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'btn_addNoLink'
      end
      item
        Visible = True
        ItemName = 'btn_addwithLink'
      end
      item
        Visible = True
        ItemName = 'btn_addByRec'
      end>
    UseOwnFont = False
    Left = 104
    Top = 480
  end
  object ds_TOPLAN: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT TP.CODE,'
      '       TP.Y,'
      '       TP.HOUSE,h.nomer,'
      '       h.street,s.name StreetName,'
      '       TP.MLIST,m.name MlistName,'
      '       TP.SUMY'
      '       ,TP.NOTE'
      'FROM TOPLAN TP'
      'left outer join house h on h.code=tp.house'
      'left outer join street s on s.code=h.street'
      'left outer join mlist m on m.code=tp.mlist'
      ''
      
        'where tp.y = :y and tp.kontragent = :kontr --and tp.house = :hou' +
        'se')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 464
    Top = 424
  end
  object src_ToPlan: TDataSource
    DataSet = ds_TOPLAN
    Left = 496
    Top = 424
  end
  object frep: TfrxReport
    Version = '4.15.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40626.950418217600000000
    ReportOptions.LastChange = 41144.663154270840000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Q.ParamByName('#39'Code'#39').Value:=Report.variables['#39'varCode'#39'];     ' +
        '                                     '
      'end;'
      ''
      'procedure Memo5OnBeforePrint(Sender: TfrxComponent);'
      'var'
      
        '  quant, price: Variant;                                        ' +
        '           '
      'begin'
      
        '   quant := IIF(<Q_mat."QUANTITY"> is null,0,<Q_mat."QUANTITY">)' +
        ';                            '
      
        '   memo5.text:=FormatFloat('#39'#.00'#39',(<Q_mat."QUANTITY">*<Q_mat."PR' +
        'ICE">));  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 432
    Top = 240
    Datasets = <
      item
      end
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
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        Height = 113.385900000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo15: TfrxMemoView
          Align = baLeft
          Top = 37.795300000000000000
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
            #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103)
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 94.488250000000000000
          Top = 37.795300000000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[Q."KONTRNAME"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Align = baLeft
          Top = 57.472480000000010000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1053#1072#1088#1103#1076' '#8470)
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 68.031540000000000000
          Top = 57.448818900000010000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[Q1."CODE"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 105.519790000000000000
          Top = 57.448818900000010000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1086#1090)
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 128.196970000000000000
          Top = 57.448818900000010000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[Q1."D1"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Top = 76.370130000000000000
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
            #1040#1076#1088#1077#1089)
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 94.488250000000000000
          Top = 76.346456690000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[<Q1."STREETNAME">] [<Q1."NOMER">]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 68.031540000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo6: TfrxMemoView
          Width = 71.811070000000000000
          Height = 52.913385830000000000
          ShowHint = False
          Color = 15000804
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 71.811028500000000000
          Width = 173.858380000000000000
          Height = 52.913385830000000000
          ShowHint = False
          Color = 15000804
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 245.669408500000000000
          Width = 291.401574800000000000
          Height = 52.913385830000000000
          ShowHint = False
          Color = 15000804
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1087#1080#1089#1072#1085#1080#1077' '#1088#1072#1073#1086#1090' ('#1084#1077#1089#1090#1086')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 537.149970000000000000
          Width = 34.015770000000000000
          Height = 52.913385830000000000
          ShowHint = False
          Color = 15000804
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1045#1076'. '#1080#1079#1084'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 571.165740000000000000
          Width = 52.913420000000000000
          Height = 52.913385830000000000
          ShowHint = False
          Color = 15000804
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1083'-'#1074#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 624.220474880000000000
          Width = 93.732281020000000000
          Height = 52.913385830000000000
          ShowHint = False
          Color = 15000804
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090'-'#1090#1100' '#1087#1083#1072#1090#1085#1086#1081' '#1091#1089#1083#1091#1075#1080' ('#1088#1091#1073'.)')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897637800000000000
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        DataSetName = 'Q1'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q."DATA"]')
          ParentFont = False
        end
        object Q1WORKNAME: TfrxMemoView
          Left = 71.811023620000000000
          Width = 173.858267720000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q."WORKNAME"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 245.669291340000000000
          Width = 291.401574800000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q."NOTE"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 537.070866140000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q."ED"]')
          ParentFont = False
        end
        object Q1QUANTITY: TfrxMemoView
          Left = 571.086614169999900000
          Width = 52.913385830000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[Q."QUANTITY"]')
          ParentFont = False
        end
        object Q1PLATWORK: TfrxMemoView
          Left = 624.377952760000000000
          Width = 93.732283460000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[Q."PRICE"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 120.944960000000000000
        Top = 445.984540000000000000
        Width = 718.110700000000000000
        object Memo23: TfrxMemoView
          Top = 11.338590000000010000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100':')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Top = 30.015770000000090000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1044#1080#1088#1077#1082#1090#1086#1088' '#1055#1054)
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 147.401670000000000000
          Top = 30.236240000000010000
          Width = 461.102660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[varDir]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Align = baLeft
          Top = 74.063080000000080000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1052#1072#1089#1090#1077#1088' ('#1080#1085#1078#1077#1085#1077#1088') '#1055#1054)
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 151.181200000000000000
          Top = 74.063079999999960000
          Width = 457.323130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[varManager]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        Height = 18.897637795275600000
        Top = 366.614410000000000000
        Width = 718.110700000000000000
        DataSet = OrderSpecForm.frDS2
        DataSetName = 'Q_mat'
        RowCount = 0
        object Q_matMATNAME: TfrxMemoView
          Left = 75.220428500000000000
          Width = 294.803193540000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MATNAME'
          DataSet = OrderSpecForm.frDS2
          DataSetName = 'Q_mat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q_mat."MATNAME"]')
          ParentFont = False
        end
        object Q_matPRICE: TfrxMemoView
          Left = 506.456692910000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRICE'
          DataSet = OrderSpecForm.frDS2
          DataSetName = 'Q_mat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[Q_mat."PRICE"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 585.826771650000000000
          Width = 132.283464570000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo5OnBeforePrint'
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 370.023622050000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ED'
          DataSet = OrderSpecForm.frDS2
          DataSetName = 'Q_mat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q_mat."ED"]')
          ParentFont = False
        end
        object Q_matQUANTITY: TfrxMemoView
          Left = 426.717070000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'QUANTITY'
          DataSet = OrderSpecForm.frDS2
          DataSetName = 'Q_mat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[Q_mat."QUANTITY"]')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        Description = 'fghgfh'
        Height = 18.897637795275600000
        Top = 325.039580000000000000
        Width = 718.110700000000000000
        object Memo12: TfrxMemoView
          Left = 506.394250000000000000
          Width = 79.370130000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 13434828
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090'-'#1090#1100' ('#1088#1091#1073'.)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 585.764380000000000000
          Width = 132.283550000000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo5OnBeforePrint'
          ShowHint = False
          Color = 13434828
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1073#1097#1072#1103' '#1089#1090'-'#1090#1100' ('#1088#1091#1073'.)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 75.283860000000000000
          Width = 294.803340000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 13434828
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 369.992580000000000000
          Width = 56.692950000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 13434828
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1045#1076'. '#1080#1079#1084'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 426.685530000000000000
          Width = 79.370130000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 13434828
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1083'-'#1074#1086)
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object rtfexp: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 464
    Top = 240
  end
  object ds_Master: TpFIBDataSet
    SelectSQL.Strings = (
      'select W.CODE, P.FIO'
      'from WORKER W'
      'left outer join PIPLE P on P.CODE = W.PIPLE'
      
        'where W.KONTRAGENT =:kontr and W.isActive = 1  and W.code not in' +
        ' (240, 264)'
      'order by 2')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 392
    Top = 528
  end
  object src_Master: TDataSource
    DataSet = ds_Master
    Left = 368
    Top = 528
  end
  object Repository1: TcxStyleRepository
    Left = 568
    Top = 208
    PixelsPerInch = 96
    object Style1: TcxStyle
      Tag = 1
    end
    object Style2: TcxStyle
      Tag = 2
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clRed
    end
    object Style3: TcxStyle
      Tag = 3
    end
    object Style4: TcxStyle
      Tag = 4
    end
    object Style5: TcxStyle
      Tag = 5
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object Style6: TcxStyle
      Tag = 6
    end
    object Style7: TcxStyle
      Tag = 7
    end
    object Style8: TcxStyle
      Tag = 8
    end
    object Style9: TcxStyle
      Tag = 9
    end
  end
end
