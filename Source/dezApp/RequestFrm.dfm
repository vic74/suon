object RequestForm: TRequestForm
  Left = 0
  Top = 0
  Caption = #1046#1091#1088#1085#1072#1083' '#1079#1072#1103#1074#1086#1082
  ClientHeight = 584
  ClientWidth = 858
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
    Width = 858
    Height = 584
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    object dt1: TcxDateEdit
      Left = 42
      Top = 141
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 0
      Width = 105
    end
    object dt2: TcxDateEdit
      Left = 170
      Top = 141
      EditValue = 41284d
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 1
      Width = 88
    end
    object tm1: TcxTimeEdit
      Left = 42
      Top = 238
      EditValue = 0d
      Enabled = False
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 2
      Width = 105
    end
    object tm2: TcxTimeEdit
      Left = 170
      Top = 238
      EditValue = 0.999988425925926d
      Enabled = False
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 3
      Width = 88
    end
    object cbb_AcceptAt: TcxComboBox
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 19
      Text = 'cbb_AcceptAt'
      Visible = False
      Width = 121
    end
    object cbb_JobType: TcxLookupComboBox
      Left = 113
      Top = 329
      Properties.ClearKey = 46
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'JobTypeId'
      Properties.ListColumns = <
        item
          FieldName = 'Title'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = RQ_DModule.src_JobType
      Properties.ReadOnly = False
      Properties.OnEditValueChanged = cbb_JobTypePropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 5
      Width = 155
    end
    object cbb_JobSubtype: TcxLookupComboBox
      Left = 113
      Top = 356
      Properties.ClearKey = 46
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'JobSubtypeId'
      Properties.ListColumns = <
        item
          FieldName = 'Title'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = RQ_DModule.src_JobSubtype
      Style.HotTrack = False
      TabOrder = 6
      Width = 155
    end
    object cbb_Location: TcxLookupComboBox
      Left = 113
      Top = 383
      Properties.ClearKey = 46
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = RQ_DModule.src_Location
      Style.HotTrack = False
      TabOrder = 7
      Width = 155
    end
    object cbb_Status: TcxLookupComboBox
      Left = 113
      Top = 410
      Properties.ClearKey = 46
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = RQ_DModule.src_Status
      Style.HotTrack = False
      TabOrder = 8
      Width = 155
    end
    object chk_IsEmergency: TcxCheckBox
      Left = 22
      Top = 557
      Caption = #1040#1074#1072#1088#1080#1081#1085#1099#1077
      Style.HotTrack = False
      TabOrder = 12
      Width = 91
    end
    object chk_IsPaid: TcxCheckBox
      Left = 119
      Top = 557
      Caption = #1055#1083#1072#1090#1085#1099#1077
      Style.HotTrack = False
      TabOrder = 13
      Width = 74
    end
    object chk_IsOutdated: TcxCheckBox
      Left = 199
      Top = 557
      Caption = #1055#1088#1086#1089#1088#1086#1095#1077#1085#1085#1099#1077
      Style.HotTrack = False
      TabOrder = 14
      Width = 106
    end
    object cbb_Street: TcxLookupComboBox
      Left = 113
      Top = 463
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = RQ_DModule.src_Street
      Properties.OnEditValueChanged = cbb_StreetPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 9
      Width = 155
    end
    object cbb_House: TcxLookupComboBox
      Left = 113
      Top = 490
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = RQ_DModule.src_HOUSE
      Style.HotTrack = False
      TabOrder = 10
      Width = 155
    end
    object txt_Flat: TcxTextEdit
      Left = 113
      Top = 517
      Style.HotTrack = False
      TabOrder = 11
      Width = 155
    end
    object chk_NoTime: TcxCheckBox
      Left = 32
      Top = 278
      Caption = #1051#1102#1073#1086#1077' '#1074#1088#1077#1084#1103
      Properties.OnEditValueChanged = chk_NoTimePropertiesEditValueChanged
      State = cbsChecked
      Style.HotTrack = False
      TabOrder = 4
      Width = 236
    end
    object btn_Exec: TcxButton
      Left = 344
      Top = 97
      Width = 108
      Height = 25
      Caption = #1053#1072#1081#1090#1080
      OptionsImage.ImageIndex = 35
      OptionsImage.Images = cmDb.iml1
      TabOrder = 15
      OnClick = btn_ExecClick
    end
    object btn_Clear: TcxButton
      Left = 458
      Top = 97
      Width = 108
      Height = 25
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      OptionsImage.ImageIndex = 23
      OptionsImage.Images = cmDb.iml1
      TabOrder = 16
    end
    object grd6: TcxGrid
      Left = 10000
      Top = 10000
      Width = 814
      Height = 452
      Align = alCustom
      TabOrder = 18
      Visible = False
      LockedStateImageOptions.Effect = lsieDark
      LockedStateImageOptions.ShowText = True
      LockedStateImageOptions.Text = #1055#1086#1078#1072#1083#1091#1081#1089#1090#1072' '#1087#1086#1076#1086#1078#1076#1080#1090#1077' ...'
      object v6: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = v6CellDblClick
        DataController.DataSource = src_RQ
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv1RequestId
          end>
        DataController.Summary.SummaryGroups = <>
        Images = cmDb.iml1
        OptionsBehavior.EditAutoHeight = eahRow
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsCustomize.GroupRowSizing = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.InvertSelect = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooterMultiSummaries = True
        OptionsView.GroupRowStyle = grsOffice11
        OptionsView.HeaderAutoHeight = True
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.Indicator = True
        object clv6SuonID: TcxGridDBColumn
          Caption = #1057#1074#1103#1079#1100' '#1089' '#1088#1072#1073#1086#1090#1086#1081
          DataBinding.FieldName = 'SuonID'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.DefaultDescription = #1089#1074#1103#1079#1072#1085#1072' '#1089' '#1088#1072#1073#1086#1090#1086#1081
          Properties.DefaultImageIndex = 29
          Properties.Images = cmDb.iml1
          Properties.Items = <
            item
            end>
          HeaderHint = #1057#1074#1103#1079#1100' '#1089' '#1088#1072#1073#1086#1090#1086#1081
          HeaderImageIndex = 29
          Options.ShowCaption = False
          Width = 25
        end
        object clv1RequestId: TcxGridDBColumn
          Caption = #8470
          DataBinding.FieldName = 'RequestId'
          Width = 62
        end
        object clv1HouseCompany_Title: TcxGridDBColumn
          Caption = #1044#1059
          DataBinding.FieldName = 'DU'
          Options.CellMerging = True
          Width = 81
        end
        object clv1CreatedAtUtc: TcxGridDBColumn
          Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1072
          DataBinding.FieldName = 'Added'
          Width = 117
        end
        object clv1WorkType: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'WorkType'
          Width = 80
        end
        object clv1Addr: TcxGridDBColumn
          Caption = #1040#1076#1088#1077#1089
          DataBinding.FieldName = 'Addr'
          Width = 144
        end
        object clv1LocationTitle: TcxGridDBColumn
          Caption = #1051#1086#1082#1072#1083#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'LocationTitle'
          Width = 76
        end
        object clv1State: TcxGridDBColumn
          Caption = #1057#1090#1072#1090#1091#1089
          DataBinding.FieldName = 'State'
          Styles.OnGetContentStyle = clv1StateStylesGetContentStyle
          Width = 104
        end
        object clv1NOTE: TcxGridDBColumn
          Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
          DataBinding.FieldName = 'NOTE'
          Width = 233
        end
        object clv1Price: TcxGridDBColumn
          Caption = #1062#1077#1085#1072
          DataBinding.FieldName = 'Price'
          Width = 51
        end
        object clv6Status: TcxGridDBColumn
          DataBinding.FieldName = 'Status'
          Visible = False
        end
        object clv6HOUSE: TcxGridDBColumn
          Caption = #1044#1086#1084' '#1057#1059#1054#1053
          DataBinding.FieldName = 'HOUSE'
        end
      end
      object vb1: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.EditAutoHeight = eahRow
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsCustomize.GroupRowSizing = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooterMultiSummaries = True
        OptionsView.GroupRowStyle = grsOffice11
        OptionsView.HeaderAutoHeight = True
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.Indicator = True
        Bands = <
          item
            Width = 675
          end
          item
            Width = 107
          end
          item
          end>
        object clvb1RequestId: TcxGridDBBandedColumn
          Caption = #8470
          DataBinding.FieldName = 'RequestId'
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1DU: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DU'
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1Added: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Added'
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1WorkType: TcxGridDBBandedColumn
          DataBinding.FieldName = 'WorkType'
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1Addr: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Addr'
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clvb1LocationTitle: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LocationTitle'
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clvb1State: TcxGridDBBandedColumn
          DataBinding.FieldName = 'State'
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object clvb1NOTE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOTE'
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object clvb1Price: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Price'
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object clvb1HouseCompany_Title: TcxGridDBBandedColumn
          DataBinding.FieldName = 'HouseCompany_Title'
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1LocalId: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LocalId'
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 1
        end
        object clvb1CreatedAtUtc: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CreatedAtUtc'
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1CreatedBy_UserName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CreatedBy_UserName'
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 1
        end
        object clvb1CreatedBy_Company_Title: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CreatedBy_Company_Title'
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 2
        end
      end
      object l6: TcxGridLevel
        GridView = v6
      end
    end
    object doc1: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 814
      Height = 26
      Align = dalTop
      BarManager = BarManager1
      Visible = False
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
    object lgrplc1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 1
    end
    object lgrplc1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      Visible = False
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object filterGroup: TdxLayoutGroup
      CaptionOptions.Text = #1055#1072#1088#1072#1084#1077#1090#1088#1099
      Parent = lgrplc1Group1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dataGroup: TdxLayoutGroup
      CaptionOptions.Text = #1044#1072#1085#1085#1099#1077
      Parent = lgrplc1Group1
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object lgrplc1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = filterGroup
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 294
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object lgrplc1Group4: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      Parent = filterGroup
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object LItemlc1Item1: TdxLayoutItem
      CaptionOptions.Text = #1089
      CaptionOptions.Visible = False
      Parent = lgrplc1Group5
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 105
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemlc1Item11: TdxLayoutItem
      CaptionOptions.Text = #1087#1086
      Parent = lgrplc1Group5
      SizeOptions.Width = 105
      Control = dt2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LItemlc1Item12: TdxLayoutItem
      CaptionOptions.Text = 'c'
      CaptionOptions.Visible = False
      Parent = lgrplc1Group6
      SizeOptions.Width = 105
      Control = tm1
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object lgrplc1Group5: TdxLayoutGroup
      CaptionOptions.Text = #1044#1072#1090#1072' '#1087#1086#1076#1072#1095#1080' '#1079#1072#1103#1074#1082#1080': '
      Parent = lgrplc1Group18
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object lgrplc1Group6: TdxLayoutGroup
      CaptionOptions.Text = #1042#1088#1077#1084#1103' '#1087#1086#1076#1072#1095#1080' '#1079#1072#1103#1074#1082#1080':'
      Parent = lgrplc1Group17
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object LItemlc1Item13: TdxLayoutItem
      CaptionOptions.Text = #1087#1086
      Parent = lgrplc1Group6
      SizeOptions.Width = 105
      Control = tm2
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object LItemlc1Item14: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1055#1088#1080#1085#1103#1090#1072' '#1074' '#1090#1077#1095#1077#1085#1080#1080
      Control = cbb_AcceptAt
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object LItemlc1Item2: TdxLayoutItem
      CaptionOptions.Text = #1042#1080#1076' '#1088#1072#1073#1086#1090':'
      Parent = lgrplc1Group7
      Control = cbb_JobType
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lgrplc1Group7: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = lgrplc1Group16
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 256
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object LItemlc1Item3: TdxLayoutItem
      CaptionOptions.Text = #1051#1086#1082#1072#1083#1080#1079#1072#1094#1080#1103':'
      Parent = lgrplc1Group7
      Control = cbb_Location
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LItemlc1Item4: TdxLayoutItem
      CaptionOptions.Text = #1055#1086#1076#1074#1080#1076' '#1088#1072#1073#1086#1090':'
      Parent = lgrplc1Group7
      Control = cbb_JobSubtype
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LItemlc1Item5: TdxLayoutItem
      CaptionOptions.Text = #1057#1086#1089#1090#1086#1103#1085#1080#1077':'
      Parent = lgrplc1Group7
      Control = cbb_Status
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lgrplc1Group9: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = lgrplc1Group3
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 295
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object lgrplc1Group10: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = lgrplc1Group14
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 254
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object lgrplc1Group12: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = lgrplc1Group3
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 288
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lgrplc1Group13: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'New Group'
      Parent = lgrplc1Group9
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object lgrplc1Group15: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = lgrplc1Group11
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 256
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object LItemlc1Item6: TdxLayoutItem
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = lgrplc1Group13
      Control = chk_IsEmergency
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemlc1Item7: TdxLayoutItem
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = lgrplc1Group13
      Control = chk_IsOutdated
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LItemlc1Item8: TdxLayoutItem
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = lgrplc1Group13
      Control = chk_IsPaid
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lgrplc1Group16: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'New Group'
      Parent = lgrplc1Group9
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = False
      SizeOptions.Width = 305
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lgrplc1Group14: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'New Group'
      Parent = lgrplc1Group12
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 316
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LItemlc1Item15: TdxLayoutItem
      CaptionOptions.Text = #1059#1083#1080#1094#1072':'
      Parent = lgrplc1Group15
      Control = cbb_Street
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemlc1Item16: TdxLayoutItem
      CaptionOptions.Text = #1044#1086#1084':'
      Parent = lgrplc1Group15
      Control = cbb_House
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LItemlc1Item17: TdxLayoutItem
      CaptionOptions.Text = #1050#1074#1072#1088#1090#1080#1088#1072':'
      Parent = lgrplc1Group15
      Control = txt_Flat
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lgrplc1Group8: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = lgrplc1Group11
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object lgrplc1Group11: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lgrplc1Group9
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object LItemlc1Item18: TdxLayoutItem
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Parent = lgrplc1Group17
      Control = chk_NoTime
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lgrplc1Group17: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = lgrplc1Group10
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 263
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object lgrplc1Group18: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = lgrplc1Group10
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = False
      SizeOptions.Width = 263
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object LItemlc1Item19: TdxLayoutItem
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lgrplc1Group19
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 108
      Control = btn_Exec
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemlc1Item110: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lgrplc1Group19
      SizeOptions.Width = 108
      Control = btn_Clear
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LItemlc1Item9: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = dataGroup
      Control = grd6
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lgrplc1Group19: TdxLayoutGroup
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      Parent = lgrplc1Group4
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LItemlc1Item111: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = dataGroup
      Control = doc1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 760
    Top = 120
    object lcf1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = dt1
        Properties.Strings = (
          'Date')
      end
      item
        Component = dt2
        Properties.Strings = (
          'Date')
      end>
    StorageName = 'prop1'
    Left = 728
    Top = 120
  end
  object src_RQ: TDataSource
    DataSet = md_RQ
    Left = 784
    Top = 440
  end
  object md_RQ: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 752
    Top = 440
  end
  object Repository1: TcxStyleRepository
    Left = 728
    Top = 176
    PixelsPerInch = 96
    object Style1: TcxStyle
      Tag = 1
    end
    object Style2: TcxStyle
      Tag = 2
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
      'SELECT distinct(wl.CODE), '
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
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 728
    Top = 248
  end
  object BarManager1: TdxBarManager
    AllowReset = False
    AlwaysSaveText = True
    AutoHideEmptyBars = True
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
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 616
    Top = 136
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
      FloatLeft = 884
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_OpenOrder'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_openRQ'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object btn_OpenOrder: TdxBarButton
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1085#1072#1088#1103#1076
      Category = 0
      Enabled = False
      Hint = #1054#1090#1082#1088#1099#1090#1100' '#1085#1072#1088#1103#1076
      Visible = ivAlways
      ImageIndex = 37
      PaintStyle = psCaptionGlyph
      OnClick = btn_OpenOrderClick
    end
    object btn_openRQ: TdxBarButton
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1079#1072#1103#1074#1082#1091
      Category = 0
      Enabled = False
      Hint = #1054#1090#1082#1088#1099#1090#1100' '#1079#1072#1103#1074#1082#1091
      Visible = ivAlways
      ImageIndex = 34
      PaintStyle = psCaptionGlyph
      OnClick = btn_openRQClick
    end
  end
end
