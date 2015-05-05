object MoveMatClassForm: TMoveMatClassForm
  Left = 0
  Top = 0
  Caption = #1059#1089#1090#1072#1085#1086#1074#1082#1072' '#1089#1074#1103#1079#1080' '#1084#1077#1078#1076#1091' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072#1084#1080' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074
  ClientHeight = 625
  ClientWidth = 821
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
  object cnt1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 821
    Height = 625
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcaf1
    ExplicitWidth = 843
    ExplicitHeight = 647
    object lst1: TcxDBTreeList
      Left = 23
      Top = 151
      Width = 368
      Height = 418
      Bands = <
        item
        end>
      DataController.DataSource = src_KServisMaterial
      DataController.ParentField = 'OWN'
      DataController.KeyField = 'CODE'
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'Office2010Blue'
      OptionsBehavior.AutoDragCopy = True
      OptionsBehavior.IncSearchItem = clm_Name
      OptionsData.Editing = False
      OptionsData.AnsiSort = True
      OptionsData.Deleting = False
      OptionsSelection.InvertSelect = False
      OptionsView.CategorizedColumn = clm_Name
      OptionsView.ColumnAutoWidth = True
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 15
      RootValue = -1
      TabOrder = 2
      OnClick = lst1Click
      OnDblClick = lst1DblClick
      object clm_Code: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'CODE'
        Width = 100
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object clm_Name: TcxDBTreeListColumn
        Caption.Text = #1050#1072#1090#1077#1075#1086#1088#1080#1080' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074
        DataBinding.FieldName = 'NAME'
        Width = 100
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
    object grd1: TcxGrid
      Left = 10000
      Top = 10000
      Width = 463
      Height = 524
      DragMode = dmAutomatic
      TabOrder = 3
      Visible = False
      LookAndFeel.Kind = lfOffice11
      object v1: TcxGridDBTableView
        DragMode = dmAutomatic
        OnDragDrop = v1DragDrop
        OnDragOver = v1DragOver
        OnKeyUp = v1KeyUp
        OnStartDrag = v1StartDrag
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
        OnCellClick = v1CellClick
        DataController.DataSource = src_ServisMaterial
        DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv1CODE
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.ImmediateEditor = False
        OptionsCustomize.ColumnsQuickCustomization = True
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
        Styles.OnGetContentStyle = v1StylesGetContentStyle
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Width = 38
        end
        object clv1KSERVISMATERIAL: TcxGridDBColumn
          DataBinding.FieldName = 'KSERVISMATERIAL'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'NAME'
          Options.Editing = False
          Width = 313
        end
        object clv1ED: TcxGridDBColumn
          Caption = #1045#1076'.'#1080#1079#1084
          DataBinding.FieldName = 'ED'
          Visible = False
        end
        object clv1PRICE: TcxGridDBColumn
          Caption = #1062#1077#1085#1072' '#1079#1072' '#1077#1076'.'#1080#1079#1084
          DataBinding.FieldName = 'PRICE'
          Visible = False
          Width = 94
        end
        object cl_v1CLASSMAT: TcxGridDBColumn
          Caption = #1057#1074#1103#1079#1100
          DataBinding.FieldName = 'CLASSMAT'
          Visible = False
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object lst_1: TcxDBTreeList
      Left = 447
      Top = 131
      Width = 369
      Height = 438
      Align = alClient
      Bands = <
        item
        end>
      DataController.DataSource = src_CLASSMAT
      DataController.ParentField = 'OWN'
      DataController.KeyField = 'CODE'
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = True
      OptionsData.Editing = False
      OptionsData.Deleting = False
      OptionsSelection.InvertSelect = False
      OptionsView.CategorizedColumn = cl_FULLNAME
      OptionsView.ColumnAutoWidth = True
      OptionsView.DropNodeIndicator = True
      OptionsView.DynamicFocusedStateImages = True
      OptionsView.Indicator = True
      RootValue = -1
      TabOrder = 5
      OnClick = lst_1Click
      OnDblClick = lst_1DblClick
      object cl_CODE: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'CODE'
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cl_FULLNAME: TcxDBTreeListColumn
        Caption.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'NAME'
        Options.Customizing = False
        Width = 250
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
    object grd2: TcxGrid
      Left = 10000
      Top = 10000
      Width = 638
      Height = 529
      Align = alCustom
      DragMode = dmAutomatic
      TabOrder = 6
      Visible = False
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object v2: TcxGridDBTableView
        DragMode = dmAutomatic
        OnDragDrop = v2DragDrop
        OnDragOver = v2DragOver
        OnKeyUp = v2KeyUp
        OnStartDrag = v2StartDrag
        OnCellClick = v2CellClick
        DataController.DataSource = src_CLASSMAT1
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
        OptionsView.Indicator = True
        Styles.OnGetContentStyle = v2StylesGetContentStyle
        object cl_v1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Width = 42
        end
        object cl_v1OWN: TcxGridDBColumn
          DataBinding.FieldName = 'OWN'
          Visible = False
        end
        object cl_v1NAME: TcxGridDBColumn
          Caption = #1048#1084#1103
          DataBinding.FieldName = 'NAME'
          Visible = False
          Width = 199
        end
        object cl_v1FULLNAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'FULLNAME'
          Width = 324
        end
        object cl_v1ISGROUP: TcxGridDBColumn
          DataBinding.FieldName = 'ISGROUP'
          Visible = False
          VisibleForCustomization = False
        end
        object cl_v1ISNAME: TcxGridDBColumn
          DataBinding.FieldName = 'ISNAME'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2isLink: TcxGridDBColumn
          DataBinding.FieldName = 'isLink'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object btn_Link: TcxButton
      Left = 349
      Top = 621
      Width = 107
      Height = 25
      Caption = #1057#1074#1103#1079#1072#1090#1100
      OptionsImage.ImageIndex = 1
      OptionsImage.Images = il1
      TabOrder = 8
      OnClick = btn_LinkClick
    end
    object txt_old: TcxTextEdit
      Left = 1
      Top = 599
      Properties.ReadOnly = True
      Style.HotTrack = False
      StyleDisabled.TextColor = clWindowText
      TabOrder = 4
      Width = 121
    end
    object txt_New: TcxTextEdit
      Left = 425
      Top = 599
      Properties.ReadOnly = True
      Style.HotTrack = False
      StyleDisabled.TextColor = clWindowText
      TabOrder = 7
      Width = 121
    end
    object chk_ShowLink: TcxCheckBox
      Left = 11
      Top = 32
      Caption = #1055#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1089#1074#1103#1079#1072#1085#1085#1099#1077
      Properties.ImmediatePost = True
      Properties.OnEditValueChanged = chk_ShowLinkPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object chk_ShowAll: TcxCheckBox
      Left = 23
      Top = 131
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074#1089#1077' '#1084#1072#1090#1077#1088#1080#1072#1083#1099
      Properties.ImmediatePost = True
      Properties.OnEditValueChanged = chk_ShowAllPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 1
      Width = 368
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahParentManaged
      AlignVert = avParentManaged
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grp2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1053#1086#1074#1099#1081' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074
      Parent = grp_cnt1Group2
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      Index = 0
    end
    object grp3: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = #1057#1090#1072#1088#1099#1081' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074
      Parent = grp_cnt1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 416
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      Index = 0
    end
    object spl1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grpcnt1Group7
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object grpcnt1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1050#1072#1090#1077#1075#1086#1088#1080#1080
      Parent = grp3
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object grpcnt1Group3: TdxLayoutGroup
      CaptionOptions.Text = #1052#1072#1090#1077#1088#1080#1072#1083#1099
      Parent = grp3
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object grpcnt1Group4: TdxLayoutGroup
      CaptionOptions.Text = #1050#1072#1090#1077#1075#1086#1088#1080#1080
      Parent = grp2
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object grpcnt1Group5: TdxLayoutGroup
      CaptionOptions.Text = #1052#1072#1090#1077#1088#1080#1072#1083#1099
      Parent = grp2
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object grpcnt1Group6: TdxLayoutGroup
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 22
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object grpcnt1Group7: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object grpcnt1Group8: TdxLayoutGroup
      CaptionOptions.Text = ' '
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 54
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 0
    end
    object itmcnt1Item1: TdxLayoutItem
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = grpcnt1Group2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Control = lst1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmcnt1Item2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = grpcnt1Group3
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmcnt1Item3: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = grpcnt1Group4
      Control = lst_1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmcnt1Item4: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = grpcnt1Group5
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmcnt1Item11: TdxLayoutItem
      AlignHorz = ahCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grpcnt1Group10
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 145
      Control = btn_Link
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmcnt1Item12: TdxLayoutItem
      CaptionOptions.Text = 'cxTextEdit1'
      CaptionOptions.Visible = False
      Parent = grp_cnt1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = False
      SizeOptions.Width = 351
      Control = txt_old
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmcnt1Item13: TdxLayoutItem
      CaptionOptions.Text = 'cxTextEdit1'
      CaptionOptions.Visible = False
      Parent = grp_cnt1Group2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = False
      SizeOptions.Width = 351
      Control = txt_New
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grpcnt1Group10: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grpcnt1Group6
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grp_cnt1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grpcnt1Group7
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object grp_cnt1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grpcnt1Group7
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 2
    end
    object itm_showlink: TdxLayoutItem
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Parent = grpcnt1Group8
      Control = chk_ShowLink
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_ShowAll: TdxLayoutItem
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Parent = grpcnt1Group2
      Control = chk_ShowAll
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object docm1: TdxDockingManager
    Color = clBtnFace
    DefaultHorizContainerSiteProperties.Dockable = True
    DefaultHorizContainerSiteProperties.ImageIndex = -1
    DefaultVertContainerSiteProperties.Dockable = True
    DefaultVertContainerSiteProperties.ImageIndex = -1
    DefaultTabContainerSiteProperties.Dockable = True
    DefaultTabContainerSiteProperties.ImageIndex = -1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    LookAndFeel.NativeStyle = False
    Left = 480
    Top = 456
    PixelsPerInch = 96
  end
  object laf1: TdxLayoutLookAndFeelList
    Left = 576
    Top = 264
    object lcaf1: TdxLayoutCxLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetVert = 1
    end
  end
  object ds_KServisMaterial: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE KSERVISMATERIAL'
      'SET '
      '    NAME = :NAME,'
      '    OWN = :OWN'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    KSERVISMATERIAL'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO KSERVISMATERIAL('
      '    CODE,'
      '    NAME,'
      '    OWN'
      ')'
      'VALUES('
      '    :CODE,'
      '    :NAME,'
      '    :OWN'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    CODE,'
      '    NAME,'
      '    OWN'
      'FROM'
      '    KSERVISMATERIAL '
      ''
      ' WHERE '
      '        KSERVISMATERIAL.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    CODE,'
      '    NAME,'
      '    OWN'
      'FROM'
      '    KSERVISMATERIAL ')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 88
    Top = 280
  end
  object src_KServisMaterial: TDataSource
    DataSet = ds_KServisMaterial
    Left = 116
    Top = 280
  end
  object il1: TcxImageList
    FormatVersion = 1
    DesignInfo = 18350224
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
          2000000000000004000000000000000000000000000000000000000000000000
          0000C96602FF0000000000000000000000009B3A0CFF9B3A0CFF9B3A0CFF9B3A
          0CFF9B3A0CFF0000000000000000000000000000000000000000000000000000
          0000C96602FFC96602FFC96602FFCA6805FF9B3A0CFFE1CDB3FFE59A4AFFDB89
          31FF9B3A0CFF0000000000000000000000000000000000000000000000000000
          0000C96602FF0000000000000000000000009B390BFF9B3A0CFF9B3A0CFF9B3A
          0CFF9B3A0CFF0000000000000000000000000000000000000000000000000000
          0000C96602FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000C96602FF0000000000000000000000009B3A0CFF9B3A0CFF9B3A0CFF9B3A
          0CFF9B3A0CFF0000000000000000000000000000000000000000000000000000
          0000C96602FFC96602FFC96602FFC96602FF9B3A0CFFE1CDB3FFE59A4AFFDB89
          31FF9B3A0CFF0000000000000000000000000000000000000000000000000000
          0000C96602FF0000000000000000000000009B390BFF9B3A0CFF9B3A0CFF9B3A
          0CFF9B3A0CFF0000000000000000000000000000000000000000000000000000
          0000C96602FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000C96602FF0000000000000000000000009B3A0CFF9B3A0CFF9B3A0CFF9B3A
          0CFF9B3A0CFF0000000000000000000000000000000000000000000000000000
          0000C96602FFC96602FFC96602FFC96602FF9B3A0CFFE1CDB3FFE59A4AFFDB89
          31FF9B3A0CFF0000000000000000000000000000000000000000000000000000
          0000C96602FF0000000000000000000000009B390BFF9B3A0CFF9B3A0CFF9B3A
          0CFF9B3A0CFF000000002E8422FF2E8422FF00000000000000009B3A0CFF9B3A
          0CFF9B3A0CFF9B3A0CFF9B3A0CFF000000000000000000000000000000000000
          000000000000000000002E8422FF2E8422FF00000000000000009B3A0CFFE1CD
          B3FFE59A4AFFDB8931FF9B3A0CFF000000000000000000000000000000000000
          00002E8422FF2F8828FF308A2CFF308A2CFF2E8725FF2E8422FF9B390BFF9B3A
          0CFF9B3A0CFF9B3A0CFF9B3A0CFF000000000000000000000000000000000000
          00002E8422FF2F8828FF328A2FFF328A2FFF2E8422FF2E8422FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000308A2CFF308A2CFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000002E8422FF2E8422FF0000000000000000}
      end>
  end
  object ds_ServisMaterial: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE SERVISMATERIAL'
      'SET '
      '    KSERVISMATERIAL = :KSERVISMATERIAL,'
      '    NAME = :NAME,'
      '    ED = :ED,'
      '    PRICE = :PRICE'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    SERVISMATERIAL'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO SERVISMATERIAL('
      '    CODE,'
      '    KSERVISMATERIAL,'
      '    NAME,'
      '    ED,'
      '    PRICE'
      ')'
      'VALUES('
      '    :CODE,'
      '    :KSERVISMATERIAL,'
      '    :NAME,'
      '    :ED,'
      '    :PRICE'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    CODE,'
      '    KSERVISMATERIAL,'
      '    NAME,'
      '    ED,'
      '    PRICE'
      'FROM'
      '    SERVISMATERIAL '
      'WHERE( '
      '    KSERVISMATERIAL = :mas_code'
      '     ) and (     SERVISMATERIAL.CODE = :OLD_CODE'
      '     )'
      '    '
      '')
    SelectSQL.Strings = (
      'SELECT'
      '    CODE,'
      '    KSERVISMATERIAL,'
      '    NAME,'
      '    ED,'
      '    PRICE,'
      '    CLASSMAT'
      'FROM'
      '    SERVISMATERIAL '
      '    '
      '')
    Filter = 'CLASSMAT=0'
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DataSource = src_KServisMaterial
    Filtered = True
    Left = 88
    Top = 336
    dcForceOpen = True
  end
  object src_ServisMaterial: TDataSource
    DataSet = ds_ServisMaterial
    Left = 116
    Top = 336
  end
  object ds_CLASSMAT: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT cm.CODE, '
      '       cm.OWN, '
      '       cm.NAME, '
      '       cm.FULLNAME, '
      '       cm.ISGROUP, '
      '       cm.ISNAME'
      'FROM CLASSMAT cm'
      'where cm.ISGROUP = 1')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 504
    Top = 264
  end
  object src_CLASSMAT: TDataSource
    DataSet = ds_CLASSMAT
    Left = 533
    Top = 264
  end
  object ds_CLASSMAT1: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT cm.CODE,'
      '       cm.OWN, '
      '       cm.NAME, '
      '       cm.FULLNAME, '
      '       cm.ISGROUP, '
      '       cm.ISNAME,'
      
        '       iif((select first 1 (code) from servismaterial where CLAS' +
        'SMAT = cm.code)>0, 1,0) isLink'
      'FROM CLASSMAT cm'
      'where cm.ISGROUP = 0 and cm.OWN= :mas_code')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DataSource = src_CLASSMAT
    Left = 504
    Top = 312
    dcForceOpen = True
  end
  object src_CLASSMAT1: TDataSource
    DataSet = ds_CLASSMAT1
    Left = 536
    Top = 312
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = grp2
        Properties.Strings = (
          'SizeOptions.Width')
      end
      item
        Component = grp3
        Properties.Strings = (
          'SizeOptions.Width')
      end>
    StorageName = 'prop1'
    Left = 624
    Top = 216
  end
end
