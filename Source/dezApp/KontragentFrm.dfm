object KontragentForm: TKontragentForm
  Left = 0
  Top = 0
  HelpContext = 2
  Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099
  ClientHeight = 680
  ClientWidth = 964
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
    Top = 31
    Width = 658
    Height = 649
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = LCxSkin1
    object grd1: TcxGrid
      Left = 3
      Top = 18
      Width = 652
      Height = 294
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
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.ImageIndex = 5
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.ImageIndex = 1
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        OnCellClick = v1CellClick
        DataController.DataSource = src_kontr
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.ImmediateEditor = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.OnGetContentStyle = v1StylesGetContentStyle
        object clv1ISACTIVE: TcxGridDBColumn
          Caption = #1055#1088#1080#1079#1085#1072#1082' '#1072#1082#1090#1080#1074#1085#1086#1089#1090#1080
          DataBinding.FieldName = 'ISACTIVE'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnChange = clv1ISACTIVEPropertiesChange
          HeaderHint = #1055#1088#1080#1079#1085#1072#1082' '#1072#1082#1090#1080#1074#1085#1086#1089#1090#1080
          Options.ShowCaption = False
          Width = 20
        end
        object clCODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clNAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'NAME'
          Options.Editing = False
          Width = 113
        end
        object clKTYPE: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072
          DataBinding.FieldName = 'KTYPE'
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
          Properties.ListSource = src_ktype
          Options.Editing = False
          Width = 107
        end
        object clFULLNAME: TcxGridDBColumn
          Caption = #1055#1086#1083#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'FULLNAME'
          Options.Editing = False
          Width = 168
        end
        object clINN: TcxGridDBColumn
          Caption = #1048#1053#1053
          DataBinding.FieldName = 'INN'
          Options.Editing = False
          Width = 104
        end
        object clKPP: TcxGridDBColumn
          Caption = #1050#1055#1055
          DataBinding.FieldName = 'KPP'
          Options.Editing = False
          Width = 99
        end
        object clOGRN: TcxGridDBColumn
          Caption = #1054#1043#1056#1053
          DataBinding.FieldName = 'OGRN'
          Options.Editing = False
          Width = 92
        end
        object clPOSTADDR: TcxGridDBColumn
          Caption = #1055#1086#1095#1090#1086#1074#1099#1081' '#1072#1076#1088#1077#1089
          DataBinding.FieldName = 'POSTADDR'
          Options.Editing = False
          Width = 125
        end
        object clURADDR: TcxGridDBColumn
          Caption = #1070#1088#1080#1076#1080#1095#1077#1089#1082#1080#1081' '#1072#1076#1088#1077#1089
          DataBinding.FieldName = 'URADDR'
          Options.Editing = False
          Width = 168
        end
        object clv1DIRECTOR: TcxGridDBColumn
          Caption = #1044#1080#1088#1077#1082#1090#1086#1088
          DataBinding.FieldName = 'DIRECTOR'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownSizeable = True
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'FIO'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = src_WORKER
          Options.Editing = False
          Width = 219
        end
        object clPHONE: TcxGridDBColumn
          Caption = #1058#1077#1083#1077#1092#1086#1085#1099
          DataBinding.FieldName = 'PHONE'
          Options.Editing = False
          Width = 83
        end
        object clEMAIL: TcxGridDBColumn
          Caption = 'EMail'
          DataBinding.FieldName = 'EMAIL'
          Options.Editing = False
          Width = 114
        end
        object v1Column1: TcxGridDBColumn
          Caption = #1050#1086#1076' 1'#1057
          DataBinding.FieldName = 'Code1C'
          Options.Editing = False
          Width = 80
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 25
      Top = 385
      Width = 604
      Height = 263
      TabOrder = 1
      object v2: TcxGridDBTableView
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
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.ImageIndex = 1
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = src_bschet
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.ImmediateEditor = False
        OptionsView.GroupByBox = False
        object clSCHET: TcxGridDBColumn
          Caption = #1057#1095#1077#1090
          DataBinding.FieldName = 'SCHET'
          Width = 103
        end
        object clKSCHET: TcxGridDBColumn
          Caption = #1050#1086#1088#1089#1095#1077#1090'.'
          DataBinding.FieldName = 'KSCHET'
          Width = 105
        end
        object clKONTRAGENT: TcxGridDBColumn
          Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          Width = 122
        end
        object clBANK: TcxGridDBColumn
          Caption = #1041#1072#1085#1082
          DataBinding.FieldName = 'BANK'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownSizeable = True
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = src_bank
          Options.ShowEditButtons = isebAlways
          Width = 180
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object grd4: TcxGrid
      Left = 10000
      Top = 10000
      Width = 250
      Height = 200
      TabOrder = 2
      Visible = False
      object v4: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_ksrv
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object clv4CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv4NAME: TcxGridDBColumn
          Caption = #1059#1089#1083#1091#1075#1072
          DataBinding.FieldName = 'NAME'
          Options.Editing = False
          Width = 304
        end
        object clv4RTYPE: TcxGridDBColumn
          DataBinding.FieldName = 'RTYPE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv4KSSRV: TcxGridDBColumn
          DataBinding.FieldName = 'KSSRV'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = clv4KSSRVPropertiesEditValueChanged
          Width = 28
          IsCaptionAssigned = True
        end
        object clv4KSCODE: TcxGridDBColumn
          DataBinding.FieldName = 'KSCODE'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l4: TcxGridLevel
        GridView = v4
      end
    end
    object grp_left: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object Item_grd1: TdxLayoutItem
      CaptionOptions.Text = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099
      CaptionOptions.Layout = clTop
      Parent = grp_left
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 309
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object splt2: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grp_left
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object grp2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp_left
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      Index = 2
    end
    object Item_grd2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1051#1080#1094#1077#1074#1099#1077' '#1089#1095#1077#1090#1072
      CaptionOptions.Layout = clTop
      Parent = grp2
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_grd4: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1057#1087#1080#1089#1086#1082' '#1074#1080#1076#1086#1074' '#1091#1089#1083#1091#1075
      CaptionOptions.Layout = clTop
      Parent = grp2
      Control = grd4
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object spl1: TcxSplitter
    Left = 658
    Top = 31
    Width = 6
    Height = 649
    HotZoneClassName = 'TcxMediaPlayer9Style'
    AlignSplitter = salRight
    MinSize = 15
    Control = lcntr2
  end
  object lcntr2: TdxLayoutControl
    Left = 664
    Top = 31
    Width = 300
    Height = 649
    Align = alRight
    TabOrder = 2
    LayoutLookAndFeel = LCxSkin1
    object grd3: TcxGrid
      Left = 3
      Top = 18
      Width = 294
      Height = 659
      TabOrder = 0
      object v3: TcxGridDBTableView
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
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.ImageIndex = 1
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = src_bank
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Appending = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cl3CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object cl3NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'NAME'
          Width = 316
        end
        object cl3BIK: TcxGridDBColumn
          Caption = #1041#1048#1050
          DataBinding.FieldName = 'BIK'
          Width = 368
        end
      end
      object l3: TcxGridLevel
        GridView = v3
      end
    end
    object grp_right: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object Item_grd3: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1041#1072#1085#1082#1080
      CaptionOptions.Layout = clTop
      Parent = grp_right
      Control = grd3
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cl3BIK
        Properties.Strings = (
          'Width')
      end
      item
        Component = cl3CODE
        Properties.Strings = (
          'Width')
      end
      item
        Component = cl3NAME
        Properties.Strings = (
          'Width')
      end
      item
        Component = clBANK
        Properties.Strings = (
          'Properties.DropDownWidth'
          'Width')
      end
      item
        Component = clCODE
        Properties.Strings = (
          'Width')
      end
      item
        Component = clEMAIL
        Properties.Strings = (
          'Width')
      end
      item
        Component = clFULLNAME
        Properties.Strings = (
          'Width')
      end
      item
        Component = clINN
        Properties.Strings = (
          'Width')
      end
      item
        Component = clKONTRAGENT
        Properties.Strings = (
          'Properties.DropDownWidth'
          'Width')
      end
      item
        Component = clKPP
        Properties.Strings = (
          'Width')
      end
      item
        Component = clKSCHET
        Properties.Strings = (
          'Width')
      end
      item
        Component = clKTYPE
        Properties.Strings = (
          'Properties.DropDownWidth'
          'Width')
      end
      item
        Component = clNAME
        Properties.Strings = (
          'Width')
      end
      item
        Component = clOGRN
        Properties.Strings = (
          'Width')
      end
      item
        Component = clPHONE
        Properties.Strings = (
          'Width')
      end
      item
        Component = clPOSTADDR
        Properties.Strings = (
          'Width')
      end
      item
        Component = clSCHET
        Properties.Strings = (
          'Width')
      end
      item
        Component = clURADDR
        Properties.Strings = (
          'Width')
      end
      item
        Component = grp_left
        Properties.Strings = (
          'SizeOptions.Height'
          'SizeOptions.Width')
      end
      item
        Component = grp_right
        Properties.Strings = (
          'SizeOptions.Height'
          'SizeOptions.Width')
      end
      item
        Component = Item_grd1
        Properties.Strings = (
          'SizeOptions.Height'
          'SizeOptions.Width')
      end
      item
        Component = Item_grd2
        Properties.Strings = (
          'SizeOptions.Height'
          'SizeOptions.Width')
      end
      item
        Component = Item_grd3
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
    Left = 656
    Top = 40
  end
  object LSkin1: TdxLayoutLookAndFeelList
    Left = 96
    Top = 104
    object LCxSkin1: TdxLayoutCxLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
      LookAndFeel.NativeStyle = False
    end
  end
  object src_kontr: TDataSource
    DataSet = arDS_kontr
    Left = 524
    Top = 288
  end
  object mt_ktype: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 23
    Top = 124
  end
  object src_ktype: TDataSource
    DataSet = mt_ktype
    Left = 52
    Top = 124
  end
  object ppm1: TcxGridPopupMenu
    Grid = grd1
    PopupMenus = <>
    Left = 376
    Top = 224
  end
  object ds_bschet: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE BANKSCHET'
      'SET '
      '    KSCHET = :KSCHET,'
      '    KONTRAGENT = :KONTRAGENT,'
      '    BANK = :BANK'
      'WHERE'
      '    SCHET = :OLD_SCHET'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    BANKSCHET'
      'WHERE'
      '        SCHET = :OLD_SCHET'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO BANKSCHET('
      '    SCHET,'
      '    KSCHET,'
      '    KONTRAGENT,'
      '    BANK'
      ')'
      'VALUES('
      '    :SCHET,'
      '    :KSCHET,'
      '    :KONTRAGENT,'
      '    :BANK'
      ')')
    RefreshSQL.Strings = (
      'select SCHET, KSCHET, KONTRAGENT, BANK'
      'from BANKSCHET'
      ''
      ' WHERE '
      '        BANKSCHET.SCHET = :OLD_SCHET'
      '    ')
    SelectSQL.Strings = (
      'select SCHET, KSCHET, KONTRAGENT, BANK'
      'from BANKSCHET'
      'WHERE KONTRAGENT = :mas_CODE')
    AfterInsert = ds_bschetAfterInsert
    BeforePost = ds_bschetBeforePost
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    AutoCommit = True
    DataSource = src_kontr
    Left = 39
    Top = 561
    dcForceOpen = True
    oProtectedEdit = True
  end
  object src_bschet: TDataSource
    DataSet = ds_bschet
    Left = 67
    Top = 561
  end
  object mt_bschet: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 527
    Top = 454
  end
  object src_mtschet: TDataSource
    DataSet = mt_bschet
    Left = 555
    Top = 454
  end
  object ds_bank: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE BANK'
      'SET '
      '    NAME = :NAME,'
      '    BIK = :BIK'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    BANK'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO BANK('
      '    CODE,'
      '    NAME,'
      '    BIK'
      ')'
      'VALUES('
      '    :CODE,'
      '    :NAME,'
      '    :BIK'
      ')')
    RefreshSQL.Strings = (
      'select CODE, NAME, BIK'
      'from BANK'
      ' WHERE '
      '        BANK.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'select CODE, NAME, BIK'
      'from BANK')
    BeforePost = ds_bankBeforePost
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 464
    Top = 96
  end
  object src_bank: TDataSource
    DataSet = ds_bank
    Left = 492
    Top = 96
  end
  object il1: TcxImageList
    FormatVersion = 1
    DesignInfo = 33554477
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
  object m_ksrv: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 112
    Top = 448
  end
  object src_ksrv: TDataSource
    DataSet = m_ksrv
    Left = 140
    Top = 448
  end
  object ds_WORKER: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT w.CODE, p.FIO'
      'FROM WORKER w'
      'left outer join piple p on p.code=w.piple'
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 152
    Top = 152
  end
  object src_WORKER: TDataSource
    DataSet = ds_WORKER
    Left = 184
    Top = 152
  end
  object StyleRepository1: TcxStyleRepository
    Left = 248
    Top = 72
    PixelsPerInch = 96
    object Style1: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGrayText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      TextColor = clGrayText
    end
  end
  object barM1: TdxBarManager
    AlwaysSaveText = True
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
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    SunkenBorder = True
    UseSystemFont = True
    Left = 464
    Top = 232
    DockControlHeights = (
      0
      0
      31
      0)
    object brM1Bar1: TdxBar
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
      FloatLeft = 998
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_New'
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
    object btn_New: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1102
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1102
      Visible = ivAlways
      ImageIndex = 0
      OnClick = btn_NewClick
    end
    object btn_Edit: TdxBarButton
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Category = 0
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Visible = ivAlways
      ImageIndex = 1
      OnClick = btn_EditClick
    end
    object btn_Delete: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Visible = ivAlways
      ImageIndex = 2
      OnClick = btn_DeleteClick
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
  end
  object arDS_kontr: TAureliusDataset
    FieldDefs = <
      item
        Name = 'Self'
        Attributes = [faReadonly]
        DataType = ftVariant
      end
      item
        Name = 'Code'
        Attributes = [faReadonly, faRequired]
        DataType = ftInteger
      end
      item
        Name = 'Name'
        Attributes = [faRequired]
        DataType = ftString
        Size = 128
      end
      item
        Name = 'FullName'
        DataType = ftString
        Size = 256
      end
      item
        Name = 'INN'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'KPP'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'Ogrn'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'PostAddr'
        DataType = ftString
        Size = 256
      end
      item
        Name = 'UrAddr'
        DataType = ftString
        Size = 256
      end
      item
        Name = 'Phone'
        DataType = ftString
        Size = 64
      end
      item
        Name = 'Email'
        DataType = ftString
        Size = 64
      end
      item
        Name = 'KType'
        DataType = ftSmallint
      end
      item
        Name = 'DefSchet'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'Code1C'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Director'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'DopNum'
        DataType = ftInteger
      end
      item
        Name = 'DispId'
        DataType = ftInteger
      end
      item
        Name = 'UUId'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'IsActive'
        DataType = ftSmallint
      end
      item
        Name = 'Chief'
        DataType = ftVariant
      end>
    Left = 496
    Top = 288
  end
end
