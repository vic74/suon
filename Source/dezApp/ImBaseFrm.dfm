object ImBaseForm: TImBaseForm
  Left = 0
  Top = 0
  Caption = #1054#1073#1097#1077#1077' '#1080#1084#1091#1097#1077#1089#1090#1074#1086' '#1052#1050#1044
  ClientHeight = 606
  ClientWidth = 725
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
    Width = 725
    Height = 606
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object grd1: TcxGrid
      Left = 276
      Top = 3
      Width = 250
      Height = 200
      TabOrder = 10
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        OnCellClick = v1CellClick
        OnCellDblClick = v1CellDblClick
        DataController.DataSource = src_IMMKD
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
        object clv1STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1STNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STNAME'
          Width = 148
        end
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 47
        end
        object clv1ATYPE: TcxGridDBColumn
          Caption = #1058#1080#1087
          DataBinding.FieldName = 'ATYPE'
          Visible = False
          VisibleForCustomization = False
          Width = 134
        end
        object clv1ATYPENAME: TcxGridDBColumn
          Caption = #1058#1080#1087
          DataBinding.FieldName = 'ATYPENAME'
          Width = 132
        end
        object clv1COST: TcxGridDBColumn
          Caption = #1058#1072#1088#1080#1092
          DataBinding.FieldName = 'COST'
          Width = 75
        end
        object clv1SQ: TcxGridDBColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'SQ'
          Width = 76
        end
        object clv1NOTE: TcxGridDBColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          DataBinding.FieldName = 'NOTE'
          Width = 230
        end
        object clv1DTYPE: TcxGridDBColumn
          DataBinding.FieldName = 'DTYPE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1DTYPENAME: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1086#1089#1090#1080
          DataBinding.FieldName = 'DTYPENAME'
          Width = 143
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object cbb_street: TcxLookupComboBox
      Left = 62
      Top = 34
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
      Properties.ListSource = src_STREET
      Properties.OnChange = cbb_streetPropertiesChange
      Properties.OnEditValueChanged = cbb_streetPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 0
      Width = 145
    end
    object cbb_house: TcxLookupComboBox
      Left = 62
      Top = 56
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
          FieldName = 'NOMER'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_HOUSE
      Style.HotTrack = False
      TabOrder = 1
      Width = 145
    end
    object cbb_ATYPE: TcxComboBox
      Left = 62
      Top = 78
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        #1087#1086#1084#1077#1097#1077#1085#1080#1077
        #1089#1090#1077#1085#1072
        #1082#1088#1099#1096#1072)
      Style.HotTrack = False
      TabOrder = 2
      Text = #1087#1086#1084#1077#1097#1077#1085#1080#1077
      Width = 121
    end
    object ced_Cost: TcxCalcEdit
      Left = 62
      Top = 100
      EditValue = 0.000000000000000000
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object ced_SQ: TcxCalcEdit
      Left = 62
      Top = 122
      EditValue = 0.000000000000000000
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object mmo_Note: TcxMemo
      Left = 13
      Top = 196
      Style.HotTrack = False
      TabOrder = 6
      Height = 21
      Width = 381
    end
    object btn_Add: TcxButton
      Left = 13
      Top = 250
      Width = 81
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OptionsImage.Glyph.Data = {
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
      PaintStyle = bpsGlyph
      TabOrder = 7
      OnClick = btn_AddClick
    end
    object btn_Edit: TcxButton
      Left = 95
      Top = 250
      Width = 76
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
      PaintStyle = bpsGlyph
      TabOrder = 8
      OnClick = btn_EditClick
    end
    object btn_del: TcxButton
      Left = 177
      Top = 250
      Width = 81
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100
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
        0000020213170B0BB9E51414EDFF1616FBFF1616FBFF1616FBFF1616FBFF1616
        FBFF1616FBFF1414EDFF0B0BB9E5020213170000000000000000000000000000
        0000070779971C1CEFFF1F1FF8FF1F1FF8FF1F1FF8FF1F1FF8FF1F1FF8FF1F1F
        F8FF1F1FF8FF1F1FF8FF1C1CEFFF070779970000000000000000000000000101
        06071616CEF13B3BF5FF3A3AE9FF3939EAFF3232EAFF3131ECFF3131EDFF3131
        EEFF3232EFFF2C2CF0FF2929F5FF1515CEF10101060700000000000000000202
        242E3838E1FF6666F5FFAFAFEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFA8A8F6FF3F3FF2FF3A3AE1FF0202242E00000000000000000202
        29354343DFFF7B7BF4FFB3B3EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFB0B0F7FF7777F3FF4545DFFF0202293500000000000000000101
        0F142828D2FD8C8CF2FF7A7AEBFF7B7BEBFF7B7BEDFF7C7CEEFF7C7CEFFF7C7C
        F0FF7B7BF1FF7A7AF1FF8C8CF2FF2B2BD2FD01010F1400000000000000000000
        0000090999C17474E9FF9F9FF3FFA1A1F4FFA1A1F4FFA1A1F4FFA1A1F4FFA1A1
        F4FFA1A1F4FF9F9FF3FF7575E9FF0A0A99C10000000000000000000000000000
        000003032F3F2929D6FD9191EEFFA4A4F1FFAEAEF3FFB2B2F4FFB2B2F4FFAEAE
        F3FFA4A4F1FF9191EEFF2929D6FD03032F3F0000000000000000000000000000
        000000000000050557723636DCFE9797F1FFA2A2F2FFA2A2F2FFA2A2F2FFA2A2
        F2FF9898F1FF3838DCFE05055772000000000000000000000000000000000000
        000000000000000000000404394D1515B1DA4D4DE1FF6D6DEDFF6F6FEDFF5252
        E2FF1616B1DA0404394D00000000000000000000000000000000000000000000
        0000000000000000000000000000000001010303263405054660050546600303
        2634000001010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      PaintStyle = bpsGlyph
      TabOrder = 9
      OnClick = btn_delClick
    end
    object cbb_Dtype: TcxComboBox
      Left = 13
      Top = 159
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        #1085#1077#1086#1087#1088#1077#1076#1077#1083#1077#1085#1086
        #1089#1086#1073#1089#1090#1074#1077#1085#1085#1086#1077
        #1072#1088#1077#1085#1076#1072' '#1050#1059#1080#1047#1054
        #1072#1088#1077#1085#1076#1072' '#1044#1045#1047)
      Style.HotTrack = False
      TabOrder = 5
      Text = #1085#1077#1086#1087#1088#1077#1076#1077#1083#1077#1085#1086
      Width = 121
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = lcl1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object grp_left: TdxLayoutGroup
      AlignVert = avClient
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 158
      SizeOptions.Width = 269
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 0
    end
    object grplc1Group1: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp_left
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 243
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object itm_street: TdxLayoutItem
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = #1059#1083#1080#1094#1072
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 252
      Control = cbb_street
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_house: TdxLayoutItem
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = #1044#1086#1084
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 252
      Control = cbb_house
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_ATYPE: TdxLayoutItem
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = #1058#1080#1087
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 252
      Control = cbb_ATYPE
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_Cost: TdxLayoutItem
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = #1058#1072#1088#1080#1092
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 252
      Control = ced_Cost
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_SQ: TdxLayoutItem
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = #1055#1083#1086#1097#1072#1076#1100
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 252
      Control = ced_SQ
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itm_dtype: TdxLayoutItem
      CaptionOptions.Text = #1042#1080#1076' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1086#1089#1090#1080
      CaptionOptions.Layout = clTop
      Parent = grplc1Group1
      Control = cbb_Dtype
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object itm_Note: TdxLayoutItem
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      CaptionOptions.Layout = clTop
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 62
      SizeOptions.Width = 252
      Control = mmo_Note
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object grplc1Group4: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      Offsets.Top = 6
      Parent = grp_left
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object itm_Add: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 81
      Control = btn_Add
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_Edit: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 81
      Control = btn_Edit
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_del: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group4
      SizeOptions.Width = 81
      Control = btn_del
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
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 680
    Top = 56
    object lcl1: TdxLayoutCxLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 652
    Top = 56
  end
  object ds_IMMKD: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE IMMKD'
      'SET '
      '    HOUSE = :HOUSE,'
      '    ATYPE = :ATYPE,'
      '    NOTE = :NOTE,'
      '    COST = :COST,'
      '    SQ = :SQ'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    IMMKD'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO IMMKD('
      '    CODE,'
      '    HOUSE,'
      '    ATYPE,'
      '    NOTE,'
      '    COST,'
      '    SQ'
      ')'
      'VALUES('
      '    :CODE,'
      '    :HOUSE,'
      '    :ATYPE,'
      '    :NOTE,'
      '    :COST,'
      '    :SQ'
      ')')
    RefreshSQL.Strings = (
      'SELECT im.CODE, '
      '       im.HOUSE, h.nomer, '
      '       h.street, s.name StName,'
      '       im.ATYPE,'
      '       case'
      '         when im.ATYPE=0 then '#39#1087#1086#1084#1077#1097#1077#1085#1080#1077#39
      '         when im.ATYPE=1 then '#39#1089#1090#1077#1085#1072#39
      '         when im.ATYPE=2 then '#39#1082#1088#1099#1096#1072#39
      '         else '#39#1086#1096#1080#1073#1082#1072' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1080#1103'!!'#39
      '       end ATYPENAME,'
      '       im.NOTE, '
      '       im.COST, '
      '       im.SQ'
      'FROM IMMKD im'
      'left outer join house h on h.code=im.house'
      'left outer join street s on s.code=h.street'
      ''
      ' WHERE '
      '        IM.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT im.CODE, '
      '       im.HOUSE, h.nomer, '
      '       h.street, s.name StName,'
      '       im.ATYPE,'
      '       case'
      '         when im.ATYPE=0 then '#39#1087#1086#1084#1077#1097#1077#1085#1080#1077#39
      '         when im.ATYPE=1 then '#39#1089#1090#1077#1085#1072#39
      '         when im.ATYPE=2 then '#39#1082#1088#1099#1096#1072#39
      '         else '#39#1086#1096#1080#1073#1082#1072' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1080#1103'!!'#39
      '       end ATYPENAME,'
      '       im.NOTE, '
      '       im.COST, '
      '       im.SQ,'
      '       im.dtype,'
      '       case'
      '         when im.dtype=0 then '#39#1085#1077#1086#1087#1088#1077#1076#1077#1083#1077#1085#1086#39
      '         when im.dtype=1 then '#39#1089#1086#1073#1089#1090#1074#1077#1085#1085#1086#1077#39
      '         when im.dtype=2 then '#39#1072#1088#1077#1085#1076#1072' '#1050#1059#1080#1047#1054#39
      '         when im.dtype=3 then '#39#1072#1088#1077#1085#1076#1072' '#1044#1045#1047#39
      '         else '#39#1086#1096#1080#1073#1082#1072' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1080#1103'!!'#39
      '       end DTYPENAME'
      'FROM IMMKD im'
      'left outer join house h on h.code=im.house'
      'left outer join street s on s.code=h.street')
    Transaction = cmDB.RT
    Database = cmDB.DB
    UpdateTransaction = cmDB.WT
    Left = 40
    Top = 88
  end
  object src_IMMKD: TDataSource
    DataSet = ds_IMMKD
    Left = 68
    Top = 88
  end
  object ds_STREET: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       NAME'
      'FROM STREET'
      'order by name')
    Transaction = cmDB.RT
    Database = cmDB.DB
    UpdateTransaction = cmDB.WT
    DataSet_ID = 1
    Description = 'Simple STREET'
    Left = 624
    Top = 480
    poApplyRepositary = True
  end
  object src_STREET: TDataSource
    DataSet = ds_STREET
    Left = 656
    Top = 480
  end
  object ds_HOUSE: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       NOMER,'
      '       Street'
      'FROM HOUSE')
    Transaction = cmDB.RT
    Database = cmDB.DB
    UpdateTransaction = cmDB.WT
    Left = 608
    Top = 528
    poApplyRepositary = True
  end
  object src_HOUSE: TDataSource
    DataSet = ds_HOUSE
    Left = 640
    Top = 528
  end
end
