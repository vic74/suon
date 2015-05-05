object AddHouseForm: TAddHouseForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = ' '
  ClientHeight = 391
  ClientWidth = 736
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 736
    Height = 391
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object cbb_street: TcxLookupComboBox
      Left = 188
      Top = 10
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
      Properties.OnEditValueChanged = cbb_streetPropertiesEditValueChanged
      StyleFocused.BorderColor = clRed
      TabOrder = 0
      Width = 145
    end
    object cbb_du: TcxLookupComboBox
      Left = 188
      Top = 68
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
      Properties.ListSource = src_DU
      Style.HotTrack = False
      TabOrder = 3
      Width = 145
    end
    object ced_TOTAL_SQ: TcxCalcEdit
      Left = 188
      Top = 95
      EditValue = 0.000000000000000000
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object ced_LIVING_SQ: TcxCalcEdit
      Left = 188
      Top = 122
      EditValue = 0.000000000000000000
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object ced_LODGER_CNT: TcxCalcEdit
      Left = 188
      Top = 149
      EditValue = 0.000000000000000000
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object ced_CELLAR_SQ: TcxCalcEdit
      Left = 188
      Top = 176
      EditValue = 0.000000000000000000
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object ced_DRTZ_SQ: TcxCalcEdit
      Left = 188
      Top = 203
      EditValue = 0.000000000000000000
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 8
      Width = 121
    end
    object ced_FLAT_CNT: TcxCalcEdit
      Left = 188
      Top = 230
      EditValue = 0.000000000000000000
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 9
      Width = 121
    end
    object ced_ACCCODE_CNT: TcxCalcEdit
      Left = 188
      Top = 257
      EditValue = 0.000000000000000000
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 10
      Width = 121
    end
    object ced_FLOOR_CNT: TcxCalcEdit
      Left = 188
      Top = 284
      EditValue = 0.000000000000000000
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 11
      Width = 121
    end
    object ced_LIFT_CNT: TcxCalcEdit
      Left = 188
      Top = 311
      EditValue = 0.000000000000000000
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 12
      Width = 121
    end
    object ced_ENTRANCE_CNT: TcxCalcEdit
      Left = 560
      Top = 10
      EditValue = 0.000000000000000000
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 13
      Width = 121
    end
    object ced_GARBAGE_CNT: TcxCalcEdit
      Left = 560
      Top = 37
      EditValue = 0.000000000000000000
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 14
      Width = 121
    end
    object ced_COMMERCE_SQ: TcxCalcEdit
      Left = 560
      Top = 64
      EditValue = 0.000000000000000000
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 15
      Width = 121
    end
    object msk_BUILDYEAR: TcxMaskEdit
      Left = 560
      Top = 91
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 16
      Width = 121
    end
    object cbb_Wall: TcxLookupComboBox
      Tag = 1
      Left = 560
      Top = 145
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
      Style.HotTrack = False
      TabOrder = 18
      Width = 145
    end
    object cbb_GAZ: TcxLookupComboBox
      Tag = 1
      Left = 560
      Top = 172
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
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
      Style.HotTrack = False
      TabOrder = 19
      Width = 145
    end
    object cbb_FASAD: TcxLookupComboBox
      Tag = 1
      Left = 560
      Top = 199
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
      Properties.ListSource = src_Fasad
      Style.HotTrack = False
      TabOrder = 20
      Width = 145
    end
    object cbb_KROV: TcxLookupComboBox
      Tag = 1
      Left = 560
      Top = 226
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
      Properties.ListSource = src_Krov
      Style.HotTrack = False
      TabOrder = 21
      Width = 145
    end
    object cbb_VODA: TcxLookupComboBox
      Tag = 1
      Left = 560
      Top = 253
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
      Properties.ListSource = src_Voda
      Style.HotTrack = False
      TabOrder = 22
      Width = 145
    end
    object cbb_HAT: TcxLookupComboBox
      Tag = 1
      Left = 560
      Top = 280
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
      Properties.ListSource = src_Hat
      Style.HotTrack = False
      TabOrder = 23
      Width = 145
    end
    object btn_Add: TcxButton
      Left = 10
      Top = 338
      Width = 119
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1076#1086#1084
      OptionsImage.Glyph.Data = {
        36030000424D36030000000000003600000028000000100000000C0000000100
        2000000000000003000000000000000000000000000000000000000000000000
        000000000000010101010101010301010106010101090101010B0101010C0101
        010A010101080101010401010101000000000000000000000000000000000000
        000001010106010101120101011E090909540A0A0B7202020234010101340101
        0135010101320101012C0101011E010101090000000000000000000000000000
        0000010101030101010C0101011A151515CA0D0D0EFF707070E0252525870202
        0240010101370101012901010117010101040000000000000000000000000000
        000000000000000000000E0E0E451B1B1CFF686869FFEFEFEFFFE9E9EAFF9A9A
        9BE12C2C2C6C0303030900000000000000000000000000000000000000000000
        00000000000001010101262626C7292929FFD3D3D3FFE9E9E9FFEAEAEAFFE9E9
        E9FFEBE9E8FF9F9F9FE70D0D0D760404040E0000000000000000000000000000
        0000000000001414144C363636FF303030FF8D8D8DFFD7D7D7FFDCDCDCFFE2E2
        E2FFEFD8C9FFC6BBB4FF020203FF0B0B0B600000000000000000000000000000
        000000000001393939CD3F3F40FF373738FF2F2F2FFF363636FF848484FFCFCF
        CFFFDADADAFF4C4C4DFF0A0A0ADD020202050000000000000000000000000000
        00001A1A1A52505051FF494949FF6F6F6FFF79797AFF373737FF292929FF2D2D
        2DFF5A5A5BFF121213FF0D0D0D64000000000000000000000000000000000000
        0000464646C35A5A5AFF545455FFD1D1D1FFD8D8D8FFB3B3B3FF696969FF3232
        33FF222223FF1D1D1DDD02020206000000000000000000000000000000000000
        00000505050F292929736B6B6BE1EFEFEFFFDEDEDEFFC5C5C5FF737373FF7E7E
        7EFF2D2D2DFF1313146400000000000000000000000000000000000000000000
        00000000000000000000020202062A2A2A5C878787CFA7A7A7FF7E7E7FFF6E6E
        6EFF313131DE0202020700000000000000000000000000000000000000000000
        00000000000000000000000000000000000001010101191919455B5B5BB93A3A
        3AC90E0E0E350000000000000000000000000000000000000000}
      TabOrder = 24
      OnClick = btn_AddClick
    end
    object btn_Cancel: TcxButton
      Left = 607
      Top = 338
      Width = 119
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      ModalResult = 2
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
      TabOrder = 25
    end
    object msk_nomer: TcxMaskEdit
      Left = 188
      Top = 41
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object dt_LAST_KR: TcxDateEdit
      Tag = 1
      Left = 560
      Top = 118
      Style.HotTrack = False
      TabOrder = 17
      Width = 121
    end
    object btn_addStreet: TcxButton
      Left = 366
      Top = 10
      Width = 75
      Height = 25
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1091#1083#1080#1094#1091
      Caption = 'btn_addStreet'
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btn_addStreetClick
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grplc1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grplc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grplc1Group3
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object grlc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grplc1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itm_street: TdxLayoutItem
      CaptionOptions.Text = #1059#1083#1080#1094#1072
      Parent = grlc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 350
      Control = cbb_street
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_AddStreet: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 24
      Control = btn_addStreet
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_nomer: TdxLayoutItem
      CaptionOptions.Text = #1044#1086#1084
      Parent = grplc1Group1
      Control = msk_nomer
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_du: TdxLayoutItem
      CaptionOptions.Text = #1044#1059
      Parent = grplc1Group1
      Control = cbb_du
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_TOTAL_SQ: TdxLayoutItem
      CaptionOptions.Text = #1054#1073#1097#1072#1103' '#1087#1083#1086#1097#1072#1076#1100
      Parent = grplc1Group1
      Control = ced_TOTAL_SQ
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_LIVING_SQ: TdxLayoutItem
      CaptionOptions.Text = #1046#1080#1083#1072#1103' '#1087#1083#1086#1097#1072#1076#1100
      Parent = grplc1Group1
      Control = ced_LIVING_SQ
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itm_LODGER_CNT: TdxLayoutItem
      CaptionOptions.Text = #1050#1086#1083'-'#1074#1086' '#1087#1088#1086#1078#1080#1074#1072#1102#1097#1080#1093
      Parent = grplc1Group1
      Control = ced_LODGER_CNT
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object itm_CELLAR_SQ: TdxLayoutItem
      CaptionOptions.Text = #1055#1083#1086#1097#1072#1076#1100' '#1087#1086#1076#1074#1072#1083#1100#1085#1099#1093' '#1087#1086#1084#1077#1097#1077#1085#1080#1081
      Parent = grplc1Group1
      Control = ced_CELLAR_SQ
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object itm_DRTZ_SQ: TdxLayoutItem
      CaptionOptions.Text = #1055#1083#1086#1097#1072#1076#1100' '#1076#1077#1088#1072#1090#1080#1079#1072#1094#1080#1080
      Parent = grplc1Group1
      Control = ced_DRTZ_SQ
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object lc1Item1: TdxLayoutItem
      CaptionOptions.Text = #1050#1086#1083'-'#1074#1086' '#1082#1074#1072#1088#1090#1080#1088
      Parent = grplc1Group1
      Control = ced_FLAT_CNT
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object itm_ACCCODE_CNT: TdxLayoutItem
      CaptionOptions.Text = #1050#1086#1083'-'#1074#1086' '#1083'/'#1089
      Parent = grplc1Group1
      Control = ced_ACCCODE_CNT
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object itm_FLOOR_CNT: TdxLayoutItem
      CaptionOptions.Text = #1050#1086#1083'-'#1074#1086' '#1101#1090#1072#1078#1077#1081
      Parent = grplc1Group1
      Control = ced_FLOOR_CNT
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object itm_LIFT_CNT: TdxLayoutItem
      CaptionOptions.Text = #1050#1086#1083'-'#1074#1086' '#1083#1080#1092#1090#1086#1074
      Parent = grplc1Group1
      Control = ced_LIFT_CNT
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object grplc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grplc1Group3
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object itm_ENTRANCE_CNT: TdxLayoutItem
      CaptionOptions.Text = #1050#1086#1083'-'#1074#1086' '#1087#1086#1076#1098#1077#1079#1076#1086#1074
      Parent = grplc1Group2
      Control = ced_ENTRANCE_CNT
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_GARBAGE_CNT: TdxLayoutItem
      CaptionOptions.Text = #1063#1080#1089#1083#1086' '#1084#1091#1089#1086#1088#1086#1087#1088#1086#1074#1086#1076#1086#1074
      Parent = grplc1Group2
      Control = ced_GARBAGE_CNT
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_COMMERCE_SQ: TdxLayoutItem
      CaptionOptions.Text = #1055#1083#1086#1097#1072#1076#1100' '#1085#1077' '#1078#1080#1083#1099#1093' '#1087#1086#1084#1077#1097#1077#1085#1080#1081
      Parent = grplc1Group2
      Control = ced_COMMERCE_SQ
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_BUILDYEAR: TdxLayoutItem
      CaptionOptions.Text = #1043#1086#1076' '#1087#1086#1089#1090#1088#1086#1081#1082#1080' '#1076#1086#1084#1072' '
      Parent = grplc1Group2
      Control = msk_BUILDYEAR
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_LAST_KR1: TdxLayoutItem
      CaptionOptions.Text = #1050#1072#1087#1088#1077#1084#1086#1085#1090
      Parent = grplc1Group2
      Control = dt_LAST_KR
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itm_Wall: TdxLayoutItem
      CaptionOptions.Text = #1052#1072#1090#1077#1088#1080#1072#1083' '#1089#1090#1077#1085
      Parent = grplc1Group2
      Control = cbb_Wall
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object itm_GAZ: TdxLayoutItem
      CaptionOptions.Text = #1043#1072#1079
      Parent = grplc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 208
      Control = cbb_GAZ
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object itm_FASAD: TdxLayoutItem
      CaptionOptions.Text = #1058#1080#1087' '#1092#1072#1089#1072#1076#1072
      Parent = grplc1Group2
      Control = cbb_FASAD
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object itm_KROV: TdxLayoutItem
      CaptionOptions.Text = #1058#1080#1087' '#1082#1088#1086#1074#1083#1080
      Parent = grplc1Group2
      Control = cbb_KROV
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object itm_VODA: TdxLayoutItem
      CaptionOptions.Text = #1058#1080#1087' '#1074#1086#1076#1086#1085#1072#1075#1088#1077#1074#1072#1090#1077#1083#1103
      Parent = grplc1Group2
      Control = cbb_VODA
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object itm_HAT: TdxLayoutItem
      CaptionOptions.Text = #1057#1080#1089#1090#1077#1084#1072' '#1086#1090#1086#1087#1083#1077#1085#1080#1103
      Parent = grplc1Group2
      Control = cbb_HAT
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object grplc1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
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
      SizeOptions.Width = 119
      Control = btn_Add
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_Cancel: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group4
      SizeOptions.Width = 119
      Control = btn_Cancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 152
    Top = 8
    object lcl1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 124
    Top = 8
  end
  object ds_STREET: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       NAME'
      'FROM STREET'
      'order by name')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DataSet_ID = 1
    Description = 'Simple STREET'
    Left = 600
    Top = 208
    poApplyRepositary = True
  end
  object src_STREET: TDataSource
    DataSet = ds_STREET
    Left = 632
    Top = 208
  end
  object src_HOUSE: TDataSource
    DataSet = ds_HOUSE
    Left = 632
    Top = 248
  end
  object ds_HOUSE: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       NOMER,'
      '       Street'
      'FROM HOUSE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 600
    Top = 248
    poApplyRepositary = True
  end
  object mem_wall: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 525
    Top = 144
  end
  object src_wall: TDataSource
    DataSet = mem_wall
    Left = 557
    Top = 144
  end
  object mem_GAZ: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 525
    Top = 176
  end
  object src_GAZ: TDataSource
    DataSet = mem_GAZ
    Left = 557
    Top = 176
  end
  object mem_Fasad: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 525
    Top = 208
  end
  object src_Fasad: TDataSource
    DataSet = mem_Fasad
    Left = 557
    Top = 208
  end
  object mem_Krov: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 525
    Top = 239
  end
  object src_Krov: TDataSource
    DataSet = mem_Krov
    Left = 557
    Top = 240
  end
  object src_Voda: TDataSource
    DataSet = mem_Voda
    Left = 557
    Top = 272
  end
  object mem_Voda: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 525
    Top = 272
  end
  object mem_Hat: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 525
    Top = 304
  end
  object src_Hat: TDataSource
    DataSet = mem_Hat
    Left = 557
    Top = 304
  end
  object ds_DU: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE,NAME FROM DU'
      'order by NAME')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 392
    Top = 296
  end
  object src_DU: TDataSource
    DataSet = ds_DU
    Left = 424
    Top = 296
  end
end
