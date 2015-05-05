object DocCostForm: TDocCostForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1057#1086#1079#1076#1072#1085#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072' '#1079#1072#1090#1088#1072#1090
  ClientHeight = 519
  ClientWidth = 471
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cnt1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 471
    Height = 519
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcaf1
    object cbb_month: TcxComboBox
      Left = 91
      Top = 68
      Properties.DropDownListStyle = lsEditFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        ''
        #1103#1085#1074#1072#1088#1100
        #1092#1077#1074#1088#1072#1083#1100
        #1084#1072#1088#1090
        #1072#1087#1088#1077#1083#1100
        #1084#1072#1081
        #1080#1102#1085#1100
        #1080#1102#1083#1100
        #1072#1074#1075#1091#1089#1090
        #1089#1077#1085#1090#1103#1073#1088#1100
        #1086#1082#1090#1103#1073#1088#1100
        #1085#1086#1103#1073#1088#1100
        #1076#1077#1082#1072#1073#1088#1100)
      Properties.OnEditValueChanged = cbb_monthPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 1
      Text = #1103#1085#1074#1072#1088#1100
      Width = 87
    end
    object cbb_srv: TcxLookupComboBox
      Left = 91
      Top = 147
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'COD'
      Properties.ListColumns = <
        item
          MinWidth = 0
          Width = 0
          FieldName = 'COD'
        end
        item
          MinWidth = 0
          Width = 0
          FieldName = 'CODE'
        end
        item
          FieldName = 'NAME'
        end
        item
          MinWidth = 0
          Width = 0
          FieldName = 'TBL'
        end>
      Properties.ListFieldIndex = 2
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_HOUSESRV
      Properties.OnEditValueChanged = cbb_srvPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 4
      Width = 193
    end
    object grd1: TcxGrid
      Left = 55
      Top = 199
      Width = 365
      Height = 294
      TabOrder = 8
      LockedStateImageOptions.Effect = lsieDark
      LockedStateImageOptions.ShowText = True
      LockedStateImageOptions.Text = #1055#1086#1078#1072#1083#1091#1081#1089#1090#1072' '#1087#1086#1076#1086#1078#1076#1080#1090#1077'...'
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_md
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = clv1SUMMA
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.InvertSelect = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv1FLAG: TcxGridDBColumn
          DataBinding.FieldName = 'FLAG'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = clv1FLAGPropertiesEditValueChanged
          Options.FilteringFilteredItemsList = False
          Options.Sorting = False
          Width = 29
          IsCaptionAssigned = True
        end
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          Width = 45
        end
        object clv1SRVDOG: TcxGridDBColumn
          DataBinding.FieldName = 'SRVDOG'
          Visible = False
          Width = 52
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1075#1086#1074#1086#1088
          DataBinding.FieldName = 'NOMER'
          Options.Editing = False
          Width = 68
        end
        object clv1KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          Width = 76
        end
        object clv1KNAME: TcxGridDBColumn
          Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
          DataBinding.FieldName = 'KNAME'
          Options.Editing = False
          Width = 183
        end
        object clv1SUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = 'SUMMA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Options.Editing = False
          Width = 77
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object btn_Create: TcxButton
      Left = 326
      Top = 143
      Width = 125
      Height = 25
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      OptionsImage.Glyph.Data = {
        72010000424D7201000000000000760000002800000014000000150000000100
        040000000000FC000000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFF0000FFFFFF00FFFFFFFFFFFF0000FFFFFF0B0FFFFFFFFFFF
        0000FFFFFFF0B0FFFFFFFFFF0000FFFFFFF0FB0FFFFFFFFF0000FFFFFFFF0FB0
        FFFFFFFF0000FFFFFF000B000FFFFFFF0000FFFFFFF0BF0FFFFFFFFF0000FFFF
        FFFF0BF0FFFFFFFF0000FFFFFFFF0FBF0FFFFFFF0000FFFFF0000F0000FFFFFF
        0000FFFFFF0BFBF0FFFFFFFF0000FFFFFFF0BFBF0FFFFFFF0000FFFFFFF0FBFB
        F0FFFFFF0000FFFFFFFF0000000FFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000}
      TabOrder = 6
      OnClick = btn_CreateClick
    end
    object btn_Cancel: TcxButton
      Left = 326
      Top = 112
      Width = 125
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
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
      TabOrder = 5
    end
    object mmo1: TcxMemo
      Left = 10000
      Top = 10000
      Properties.ReadOnly = True
      Properties.ScrollBars = ssVertical
      Style.HotTrack = False
      TabOrder = 9
      Visible = False
      Height = 89
      Width = 185
    end
    object prb1: TcxProgressBar
      Left = 10000
      Top = 10000
      TabOrder = 10
      Visible = False
      Width = 121
    end
    object doc1: TdxBarDockControl
      Left = 22
      Top = 199
      Width = 27
      Height = 294
      Align = dalLeft
      BarManager = bm1
    end
    object chk1: TcxCheckBox
      Left = 20
      Top = 122
      Caption = #1087#1086' '#1074#1089#1077#1084' '#1091#1089#1083#1091#1075#1072#1084
      Properties.OnEditValueChanged = chk1PropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 3
      Width = 264
    end
    object cbb_Y: TcxComboBox
      Left = 91
      Top = 95
      Properties.DropDownListStyle = lsEditFixedList
      Properties.ImmediateDropDownWhenActivated = True
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016')
      Properties.OnEditValueChanged = cbb_YPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 2
      Text = '2013'
      Width = 87
    end
    object cbb_FIRM: TcxLookupComboBox
      Left = 91
      Top = 41
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
      Style.HotTrack = False
      TabOrder = 0
      Width = 188
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
    object grpcnt1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1064#1072#1073#1083#1086#1085#1099
      Parent = grp2
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object grpcnt1Group2: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'New Group'
      Parent = grpcnt1Group3
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 86
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object itmcnt1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1052#1077#1089#1103#1094
      Parent = grpcnt1Group2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 158
      Control = cbb_month
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmcnt1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1059#1089#1083#1091#1075#1072
      Parent = grpcnt1Group2
      Control = cbb_srv
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object grpcnt1Group3: TdxLayoutGroup
      CaptionOptions.Text = ' '
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 103
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grpcnt1Group6
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grpcnt1Group4: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grpcnt1Group3
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object itmcnt1Item11: TdxLayoutItem
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = '          '
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clRight
      Parent = grpcnt1Group10
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Control = btn_Create
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmcnt1Item12: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grpcnt1Group10
      Visible = False
      SizeOptions.Width = 125
      Control = btn_Cancel
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grpcnt1Group5: TdxLayoutGroup
      AlignVert = avBottom
      CaptionOptions.Text = 'Hidden Group'
      Parent = grpcnt1Group4
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grp2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      TabbedOptions.NavigatorPosition = npRightBottom
      TabbedOptions.TabPosition = tpRight
      Index = 1
    end
    object grpcnt1Group7: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = #1057#1086#1086#1073#1097#1077#1085#1080#1103
      Parent = grp2
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object itmcnt1Item13: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxMemo1'
      CaptionOptions.Visible = False
      Parent = grpcnt1Group7
      Control = mmo1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmcnt1Item14: TdxLayoutItem
      CaptionOptions.Text = 'cxProgressBar1'
      CaptionOptions.Visible = False
      Parent = grpcnt1Group7
      Control = prb1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmcnt1Item15: TdxLayoutItem
      AlignVert = avClient
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = grpcnt1Group6
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      Control = doc1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grpcnt1Group6: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grpcnt1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grpcnt1Group8: TdxLayoutGroup
      AlignHorz = ahRight
      CaptionOptions.Text = 'Hidden Group'
      Parent = grpcnt1Group5
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object grpcnt1Group9: TdxLayoutGroup
      AlignVert = avBottom
      CaptionOptions.Text = 'Hidden Group'
      Parent = grpcnt1Group8
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grpcnt1Group10: TdxLayoutGroup
      AlignHorz = ahRight
      CaptionOptions.Text = 'Hidden Group'
      Parent = grpcnt1Group9
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object LItemcnt1Item1: TdxLayoutItem
      CaptionOptions.Text = #1087#1086' '#1074#1089#1077#1084' '#1091#1089#1083#1091#1075#1072#1084
      CaptionOptions.Visible = False
      Parent = grpcnt1Group2
      Control = chk1
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lItmcnt1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1043#1086#1076
      Parent = grpcnt1Group2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 158
      Control = cbb_Y
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litm_Firm: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      Parent = grpcnt1Group2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 259
      Control = cbb_FIRM
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object src_HOUSESRV: TDataSource
    DataSet = ds_HOUSESRV
    Left = 317
    Top = 40
  end
  object ds_HOUSESRV: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT '#39'0_'#39'||CODE COD,CODE, NAME,'
      '       '#39'HOUSESRV'#39' TBL'
      'FROM HOUSESRV'
      'where code in (1,2,3,5,9,14)'
      'union all'
      'SELECT '#39'1_'#39'||CODE COD,CODE, NAME,'
      '       '#39'SRV'#39' TBL'
      'FROM SRV'
      'where code in (3,4,5,6,7,8,9,10,11,12,13)')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 344
    Top = 40
  end
  object ds_MAKESMETASHABLON: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT MH.CODE, '
      '       MH.SRVDOG, S.NOMER,'
      '       S.KONTRAGENT, K.NAME KNAME,'
      '       SUM(IIF(MS.SUMMA IS NULL, 0,MS.SUMMA)) SUMMA'
      'FROM MAKESMETASHABLON MH'
      'LEFT OUTER JOIN SRVDOG S ON S.CODE = MH.SRVDOG'
      'LEFT OUTER JOIN KONTRAGENT K ON K.CODE=S.KONTRAGENT'
      
        'LEFT OUTER JOIN MAKESMETASHABLONSPEC MS ON MS.MAKESMETASHABLON =' +
        ' MH.CODE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 236
    Top = 232
  end
  object md: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 296
    Top = 232
  end
  object src_md: TDataSource
    DataSet = md
    Left = 324
    Top = 232
  end
  object laf1: TdxLayoutLookAndFeelList
    Left = 624
    Top = 40
    object lcaf1: TdxLayoutCxLookAndFeel
    end
  end
  object ds: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT MS.HOUSE,'
      '       s.NAME SNAME, h.NOMER,'
      '       MS.SUMMA, Sd.KONTRAGENT, MS.SQ1, MS.SQ2'
      'FROM ARCSHBSPEC MS'
      'left outer join house h on h.code=ms.HOUSE'
      'left outer join street s on s.CODE = h.STREET'
      'left outer join ARCSHBHEAD M on m.CODE = ms.ARCSHBHEAD'
      'LEFT outer join SRVDOG sd on sd.CODE = m.SRVDOG')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 268
    Top = 184
  end
  object md1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 296
    Top = 184
  end
  object bm1: TdxBarManager
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
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 352
    Top = 232
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
      DockControl = doc1
      DockedDockControl = doc1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 597
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_ChecAll'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_UnCheck'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_ChecAll: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = #1054#1090#1084#1077#1090#1080#1090#1100' '#1074#1089#1077
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FF00FF00FF00FF0080000000FF00FF00FF00FF0000000000FF00FF00FF00
        FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
        0000FF00FF00800000008000000080000000FF00FF0000000000FF00FF00FF00
        FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
        0000FF00FF00FF00FF0080000000FF00FF00FF00FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FF00FF00FF00FF0080000000FF00FF00FF00FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FF00FF00800000008000000080000000FF00FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FF00FF00FF00FF0080000000FF00FF00FF00FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      OnClick = btn_ChecAllClick
    end
    object btn_UnCheck: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = #1057#1085#1103#1090#1100' '#1086#1090#1084#1077#1090#1082#1080
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
        FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
        FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      OnClick = btn_UnCheckClick
    end
  end
  object ds_kontr: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, NAME FROM KONTRAGENT')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 656
    Top = 168
  end
  object src_kontr: TDataSource
    DataSet = ds_kontr
    Left = 685
    Top = 168
  end
end
