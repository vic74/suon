object HousePlanForm: THousePlanForm
  Left = 0
  Top = 0
  Caption = #1055#1083#1072#1085#1099' '#1055#1059
  ClientHeight = 657
  ClientWidth = 718
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
    Width = 718
    Height = 657
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = laf1
    ExplicitHeight = 625
    object grd1: TcxGrid
      Left = 265
      Top = -20
      Width = 250
      Height = 200
      TabOrder = 15
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        DataController.DataSource = src_HousePlan
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1DATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = 'DATA'
          Width = 98
        end
        object clv1HOUSESRV: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1091#1089#1083#1091#1075#1080
          DataBinding.FieldName = 'HOUSESRV'
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
              FieldName = 'Name'
            end>
          Properties.ListFieldIndex = 1
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = src_HouseSrv
          Width = 271
        end
        object clv1RECV: TcxGridDBColumn
          DataBinding.FieldName = 'RECV'
          Visible = False
          VisibleForCustomization = False
          Width = 89
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object dt1: TcxDateEdit
      Left = 13
      Top = 28
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cbb_srv: TcxLookupComboBox
      Left = 13
      Top = 67
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
      Properties.ListSource = src_HouseSrv
      Properties.OnChange = cbb_srvPropertiesChange
      Style.HotTrack = False
      TabOrder = 1
      Width = 145
    end
    object btn_save: TcxButton
      Left = 13
      Top = 616
      Width = 75
      Height = 25
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Caption = 'btn_save'
      OptionsImage.Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333300007777777003300000788888800030000078008880003000007800888
        0003000007888888000300000000000000030000000000000003000FFFFFFFFF
        0003000FFFFFFFFF0003000FFFFFFFFF0003000FFFFFFFFF0003000FFFFFFFFF
        0003000FFFFFFFFF0703000FFFFFFFFF00033009999999990033}
      PaintStyle = bpsGlyph
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      OnClick = btn_saveClick
    end
    object btn_edit: TcxButton
      Left = 96
      Top = 616
      Width = 75
      Height = 25
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
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
      TabOrder = 13
      OnClick = btn_editClick
    end
    object btn_delete: TcxButton
      Left = 179
      Top = 616
      Width = 75
      Height = 25
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
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
      TabOrder = 14
      OnClick = btn_deleteClick
    end
    object clc_gfk: TcxCalcEdit
      Left = 23
      Top = 137
      EditValue = 0.000000000000000000
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object clc_gfz: TcxCalcEdit
      Left = 23
      Top = 176
      EditValue = 0.000000000000000000
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object clc_nfk: TcxCalcEdit
      Left = 23
      Top = 259
      EditValue = 0.000000000000000000
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object clc_nfz: TcxCalcEdit
      Left = 23
      Top = 298
      EditValue = 0.000000000000000000
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object clc_kv: TcxCalcEdit
      Left = 23
      Top = 381
      EditValue = 0.000000000000000000
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object clc_ods: TcxCalcEdit
      Left = 23
      Top = 420
      EditValue = 0.000000000000000000
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object clc_drtz: TcxCalcEdit
      Left = 23
      Top = 459
      EditValue = 0.000000000000000000
      Style.HotTrack = False
      TabOrder = 8
      Width = 121
    end
    object clc_IPU: TcxCalcEdit
      Left = 23
      Top = 498
      EditValue = 0.000000000000000000
      Style.HotTrack = False
      TabOrder = 9
      Width = 121
    end
    object clc_DZI: TcxCalcEdit
      Left = 23
      Top = 537
      EditValue = 0.000000000000000000
      Style.HotTrack = False
      TabOrder = 10
      Width = 121
    end
    object clc_VENT: TcxCalcEdit
      Left = 23
      Top = 576
      EditValue = 0.000000000000000000
      Style.HotTrack = False
      TabOrder = 11
      Width = 121
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object grp_1: TdxLayoutGroup
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 261
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 0
    end
    object itm_dt1: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072
      CaptionOptions.Layout = clTop
      Parent = grp_1
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_srv: TdxLayoutItem
      CaptionOptions.Text = #1059#1089#1083#1091#1075#1080
      CaptionOptions.Layout = clTop
      Parent = grp_1
      Control = cbb_srv
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grp_grekv: TdxLayoutGroup
      CaptionOptions.Text = #1046#1080#1083#1086#1081' '#1092#1086#1085#1076
      Parent = grp_1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 116
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object itm_clc_kom: TdxLayoutItem
      CaptionOptions.Text = '% '#1050#1086#1084#1084#1080#1089#1080#1086#1085#1085#1086#1075#1086' '#1089#1073#1086#1088#1072
      CaptionOptions.Layout = clTop
      Parent = grp_grekv
      Control = clc_gfk
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_prz: TdxLayoutItem
      CaptionOptions.Text = #1055#1088#1086#1095#1080#1077' '#1079#1072#1090#1088#1072#1090#1099
      CaptionOptions.Layout = clTop
      Parent = grp_grekv
      Control = clc_gfz
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grp_nrekv: TdxLayoutGroup
      CaptionOptions.Text = #1053#1077#1078#1080#1083#1086#1081' '#1092#1086#1085#1076
      Parent = grp_1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 120
      ButtonOptions.Buttons = <>
      Index = 3
    end
    object itm_nfk: TdxLayoutItem
      CaptionOptions.Text = '% '#1050#1086#1084#1084#1080#1089#1080#1086#1085#1085#1086#1075#1086' '#1089#1073#1086#1088#1072
      CaptionOptions.Layout = clTop
      Parent = grp_nrekv
      Control = clc_nfk
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_nfz: TdxLayoutItem
      CaptionOptions.Text = #1055#1088#1086#1095#1080#1077' '#1079#1072#1090#1088#1072#1090#1099
      CaptionOptions.Layout = clTop
      Parent = grp_nrekv
      Control = clc_nfz
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grp_org: TdxLayoutGroup
      CaptionOptions.Text = #1054#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077' '#1080' '#1088#1077#1084#1086#1085#1090' '#1078#1080#1083#1100#1103
      Parent = grp_1
      Visible = False
      ButtonOptions.Buttons = <>
      Index = 4
    end
    object itm_kv: TdxLayoutItem
      CaptionOptions.Text = #1044#1086#1089#1090#1072#1074#1082#1072' '#1080' '#1088#1072#1089#1087#1077#1095#1072#1090#1082#1072' '#1082#1074#1080#1090#1072#1085#1094#1080#1081
      CaptionOptions.Layout = clTop
      Parent = grp_org
      Control = clc_kv
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_ods: TdxLayoutItem
      CaptionOptions.Text = #1047#1072#1090#1088#1072#1090#1099' '#1085#1072' '#1076#1080#1089#1087#1077#1090#1095#1077#1088#1089#1082#1091#1102' '#1089#1083#1091#1078#1073#1091
      CaptionOptions.Layout = clTop
      Parent = grp_org
      Control = clc_ods
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_drtz: TdxLayoutItem
      CaptionOptions.Text = #1044#1077#1088#1072#1090#1080#1079#1072#1094#1080#1103' '#1087#1086#1076#1074#1072#1083#1100#1085#1099#1093' '#1087#1086#1084#1077#1097#1077#1085#1080#1081
      CaptionOptions.Layout = clTop
      Parent = grp_org
      Control = clc_drtz
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object grp_btn: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Offsets.Top = 5
      Parent = grp_1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object itm_btn_save: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grp_btn
      Control = btn_save
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_btn_edit: TdxLayoutItem
      AlignHorz = ahCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grp_btn
      Control = btn_edit
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_delete: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grp_btn
      Control = btn_delete
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grp1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lc1Item1: TdxLayoutItem
      CaptionOptions.Text = #1059#1089#1090#1072#1085#1086#1074#1082#1072' '#1048#1055#1059
      CaptionOptions.Layout = clTop
      Parent = grp_org
      Control = clc_IPU
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lc1Item2: TdxLayoutItem
      CaptionOptions.Text = #1044#1077#1079#1080#1085#1089#1077#1082#1094#1080#1103
      CaptionOptions.Layout = clTop
      Parent = grp_org
      Control = clc_DZI
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object lc1Item3: TdxLayoutItem
      CaptionOptions.Text = #1042#1077#1085#1090#1080#1083#1103#1094#1080#1103' ('#1090#1072#1088#1080#1092' '#1085#1072' '#1082#1074')'
      CaptionOptions.Layout = clTop
      Parent = grp_org
      Control = clc_VENT
      ControlOptions.ShowBorder = False
      Index = 5
    end
  end
  object lkf1: TdxLayoutLookAndFeelList
    Left = 680
    Top = 112
    object laf1: TdxLayoutCxLookAndFeel
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 2
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 680
    Top = 80
  end
  object ds_HousePlan: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE HOUSEPLAN'
      'SET '
      '    DATA = :DATA,'
      '    HOUSESRV = :HOUSESRV,'
      '    RECV = :RECV'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    HOUSEPLAN'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO HOUSEPLAN('
      '    CODE,'
      '    DATA,'
      '    HOUSESRV,'
      '    RECV'
      ')'
      'VALUES('
      '    :CODE,'
      '    :DATA,'
      '    :HOUSESRV,'
      '    :RECV'
      ')')
    RefreshSQL.Strings = (
      'select CODE, DATA, HOUSESRV, RECV'
      'from HOUSEPLAN'
      ''
      ' WHERE '
      '        HOUSEPLAN.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'select CODE, DATA, HOUSESRV, RECV'
      'from HOUSEPLAN')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 424
    Top = 224
  end
  object src_HousePlan: TDataSource
    DataSet = ds_HousePlan
    Left = 456
    Top = 224
  end
  object ds_HouseSrv: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       NAME'
      'FROM HOUSESRV'
      'order by name')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 304
    Top = 56
  end
  object src_HouseSrv: TDataSource
    DataSet = ds_HouseSrv
    Left = 336
    Top = 56
  end
end
