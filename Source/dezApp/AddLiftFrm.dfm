object AddLiftForm: TAddLiftForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 321
  ClientWidth = 299
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
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 299
    Height = 321
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = laf1
    object edt_code: TcxMaskEdit
      Left = 100
      Top = 3
      Style.HotTrack = False
      TabOrder = 0
      Width = 196
    end
    object cbb_street: TcxLookupComboBox
      Left = 100
      Top = 25
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
      Properties.ListSource = src_street
      Properties.OnEditValueChanged = cbb_streetPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 1
      Width = 196
    end
    object cbb_house: TcxLookupComboBox
      Left = 100
      Top = 47
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
      Properties.ListSource = src_house
      Style.HotTrack = False
      TabOrder = 2
      Width = 196
    end
    object edsp_entrance: TcxSpinEdit
      Left = 100
      Top = 69
      Style.HotTrack = False
      TabOrder = 3
      Width = 196
    end
    object edt_y: TcxMaskEdit
      Left = 3
      Top = 106
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '([123][0-9])? [0-9][0-9]'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 4
      Width = 293
    end
    object edsp_kost: TcxSpinEdit
      Left = 100
      Top = 128
      Style.HotTrack = False
      TabOrder = 5
      Width = 196
    end
    object edsp_gruz: TcxSpinEdit
      Left = 100
      Top = 150
      Style.HotTrack = False
      TabOrder = 6
      Width = 196
    end
    object mmo_note: TcxMemo
      Left = 3
      Top = 187
      Style.HotTrack = False
      TabOrder = 7
      Height = 89
      Width = 293
    end
    object btn_ok: TcxButton
      Left = 3
      Top = 284
      Width = 106
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000010101020101010401010106010101090101010B0101010C0101010C0101
        010B010101090101010701010104010101020000000000000000000000010101
        0108010101110101011B010101240101012C010101340102013B0101013A0101
        01350101012E010101250101011C010101130101010900000001000000000000
        0000000000000000000101010103010804141752329252AE7BF4062815550101
        0106010101040101010301010102000000000000000000000000000000000000
        000000000000000000000725144345A570E47BE4A9FF7EE7ACFF44B375F10215
        0A29000000000000000000000000000000000000000000000000000000000000
        0000000000000A3B206445C27DFB55D990FF50D78CFF4FD88BFF53D88EFF1A8E
        4ED70108040E0000000000000000000000000000000000000000000000000000
        00000430185222B965FD1EC568FF10C15FFF0CC15CFF0CC15CFF13C261FF25C5
        6CFF096B35AC0101010100000000000000000000000000000000000000000109
        050F0A9E4CED0BAD54FB077538B4054F2780065D2D93099C4CE80BB757FF0BB8
        58FF0CB356FF0444206D0000000000000000000000000000000000000000043A
        1C5A098F45D9021C0E2C0000000000000000000000000106030A06582A880AAC
        52FD0AAF54FF0AA550F80220103100000000000000000000000000000000032C
        15420213091C0000000000000000000000000000000000000000000000000331
        184A099F4CEF0AA650FF088B43D2010503070000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000320102E099B4AE8099F4CFF065A2B820000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000021D0E27099A4AE80A9D4CF7021A0D2200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000325122F099A4AEF077639A600000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000004371B450BAE54F802170C1C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000065F2E7406592B68000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000001020102032E1636000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 8
      OnClick = btn_okClick
    end
    object btn_cancel: TcxButton
      Left = 190
      Top = 284
      Width = 106
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
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
      TabOrder = 9
      OnClick = btn_cancelClick
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object itm_code: TdxLayoutItem
      CaptionOptions.Text = #1056#1077#1075'. '#1085#1086#1084#1077#1088
      Parent = grp1
      Control = edt_code
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_street: TdxLayoutItem
      CaptionOptions.Text = #1059#1083#1080#1094#1072
      Parent = grp1
      Control = cbb_street
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_house: TdxLayoutItem
      CaptionOptions.Text = #1044#1086#1084
      Parent = grp1
      Control = cbb_house
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_entrance: TdxLayoutItem
      CaptionOptions.Text = #1055#1086#1076#1098#1077#1079#1076
      Parent = grp1
      Control = edsp_entrance
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_y: TdxLayoutItem
      CaptionOptions.Text = #1043#1086#1076' '#1074#1074#1086#1076#1072' '#1074' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1102
      CaptionOptions.Layout = clTop
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 169
      Control = edt_y
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itm_kost: TdxLayoutItem
      CaptionOptions.Text = #1050#1086#1083'-'#1074#1086' '#1086#1089#1090#1072#1085#1086#1074#1086#1082
      Parent = grp1
      Control = edsp_kost
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object itm_gruz: TdxLayoutItem
      CaptionOptions.Text = #1043#1088#1091#1079#1086#1087#1086#1076#1098#1077#1084#1085#1086#1089#1090#1100
      Parent = grp1
      Control = edsp_gruz
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object itm_note: TdxLayoutItem
      CaptionOptions.Text = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      CaptionOptions.Layout = clTop
      Parent = grp1
      Control = mmo_note
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object grplc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Offsets.Top = 7
      Parent = grp1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 8
    end
    object itm_ok: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 106
      Control = btn_ok
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_cancel: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 106
      Control = btn_cancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object lkf1: TdxLayoutLookAndFeelList
    Left = 64
    Top = 200
    object laf1: TdxLayoutCxLookAndFeel
      Offsets.ControlOffsetHorz = 0
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object ds_street: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    CODE,'
      '    NAME'
      'FROM'
      '    STREET '
      'order by name')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 152
    Top = 208
  end
  object ds_house: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    CODE,'
      '    NOMER    '
      'FROM'
      '    HOUSE ')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 216
    Top = 208
  end
  object src_street: TDataSource
    DataSet = ds_street
    Left = 184
    Top = 208
  end
  object src_house: TDataSource
    DataSet = ds_house
    Left = 248
    Top = 208
  end
end
