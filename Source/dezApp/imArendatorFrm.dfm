object imArendatorForm: TimArendatorForm
  Left = 0
  Top = 0
  Caption = #1040#1088#1077#1085#1076#1072#1090#1086#1088#1099' '#1086#1073#1097#1077#1075#1086' '#1080#1084#1091#1097#1077#1089#1090#1074#1072' '#1052#1050#1044
  ClientHeight = 613
  ClientWidth = 886
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
    Width = 886
    Height = 613
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    ExplicitWidth = 719
    ExplicitHeight = 586
    object grd1: TcxGrid
      Left = 268
      Top = 10
      Width = 250
      Height = 200
      TabOrder = 7
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        DataController.DataSource = src_ARENDATOR
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
        object clv1NAME: TcxGridDBColumn
          Caption = #1040#1088#1077#1085#1076#1072#1090#1086#1088
          DataBinding.FieldName = 'NAME'
          Width = 148
        end
        object clv1FULLNAME: TcxGridDBColumn
          Caption = #1055#1086#1083#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'FULLNAME'
          Width = 181
        end
        object clv1INN: TcxGridDBColumn
          Caption = #1048#1053#1053
          DataBinding.FieldName = 'INN'
          Visible = False
          Width = 157
        end
        object clv1KPP: TcxGridDBColumn
          Caption = #1050#1055#1055
          DataBinding.FieldName = 'KPP'
          Visible = False
          Width = 138
        end
        object clv1SCHET: TcxGridDBColumn
          Caption = #1057#1095#1077#1090
          DataBinding.FieldName = 'SCHET'
          Visible = False
          VisibleForCustomization = False
          Width = 106
        end
        object clv1KSCHET: TcxGridDBColumn
          Caption = #1050#1086#1088'.'#1089#1095#1077#1090
          DataBinding.FieldName = 'KSCHET'
          Visible = False
          VisibleForCustomization = False
          Width = 91
        end
        object clv1BANK: TcxGridDBColumn
          Caption = #1041#1072#1085#1082
          DataBinding.FieldName = 'BANK'
          Visible = False
          VisibleForCustomization = False
          Width = 114
        end
        object clv1AGNAME: TcxGridDBColumn
          Caption = #1043#1088#1091#1087#1087#1072
          DataBinding.FieldName = 'AGNAME'
          Width = 99
        end
        object v1Column1: TcxGridDBColumn
          Caption = #1050#1086#1076' '#1076#1083#1103' 1'#1057
          DataBinding.FieldName = 'Code1C'
          Width = 70
        end
        object clv1AGROUP: TcxGridDBColumn
          DataBinding.FieldName = 'AGROUP'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object msk_NAME: TcxMaskEdit
      Left = 85
      Top = 30
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object msk_INN: TcxMaskEdit
      Left = 85
      Top = 57
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object msk_KPP: TcxMaskEdit
      Left = 85
      Top = 84
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object btn_Add: TcxButton
      Left = 22
      Top = 143
      Width = 110
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
      PaintStyle = bpsGlyph
      TabOrder = 4
      OnClick = btn_AddClick
    end
    object btn_edit: TcxButton
      Left = 90
      Top = 143
      Width = 110
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
      TabOrder = 5
      OnClick = btn_editClick
    end
    object btn_del: TcxButton
      Left = 158
      Top = 143
      Width = 110
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
      TabOrder = 6
      OnClick = btn_delClick
    end
    object Code1C: TcxMaskEdit
      Left = 85
      Top = 111
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object grd2: TcxGrid
      Left = 586
      Top = 10
      Width = 250
      Height = 200
      TabOrder = 8
      object v2: TcxGridDBTableView
        OnKeyUp = v2KeyUp
        OnCellClick = v2CellClick
        OnEditKeyDown = v2EditKeyDown
        DataController.DataSource = src_AGROUP
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.ImmediateEditor = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Appending = True
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        object clv2CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
          Width = 39
        end
        object clv2NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'NAME'
          Width = 134
        end
        object clv2INN: TcxGridDBColumn
          Caption = #1048#1053#1053
          DataBinding.FieldName = 'INN'
          Width = 83
        end
        object clv2KPP: TcxGridDBColumn
          Caption = #1050#1055#1055
          DataBinding.FieldName = 'KPP'
          Width = 96
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object grd3: TcxGrid
      Left = 586
      Top = 224
      Width = 250
      Height = 200
      TabOrder = 9
      object v3: TcxGridDBTableView
        OnKeyUp = v3KeyUp
        DataController.DataSource = src_ARENDATORG
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        object clv3CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3NAME: TcxGridDBColumn
          Caption = #1040#1088#1077#1085#1076#1072#1090#1086#1088
          DataBinding.FieldName = 'NAME'
          Width = 167
        end
        object clv3INN: TcxGridDBColumn
          DataBinding.FieldName = 'INN'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3KPP: TcxGridDBColumn
          DataBinding.FieldName = 'KPP'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3SCHET: TcxGridDBColumn
          DataBinding.FieldName = 'SCHET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3KSCHET: TcxGridDBColumn
          DataBinding.FieldName = 'KSCHET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3BANK: TcxGridDBColumn
          DataBinding.FieldName = 'BANK'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3CODE1C: TcxGridDBColumn
          DataBinding.FieldName = 'CODE1C'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3FULLNAME: TcxGridDBColumn
          Caption = #1055#1086#1083#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'FULLNAME'
          Width = 118
        end
        object clv3AGROUP: TcxGridDBColumn
          DataBinding.FieldName = 'AGROUP'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l3: TcxGridLevel
        GridView = v3
      end
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
    object grp_bottom: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Glyph.Data = {
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
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 162
      SizeOptions.Width = 244
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 0
    end
    object itm_NAME: TdxLayoutItem
      CaptionOptions.Text = #1040#1088#1077#1085#1076#1072#1090#1086#1088
      Parent = grp_bottom
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 242
      Control = msk_NAME
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_INN: TdxLayoutItem
      CaptionOptions.Text = #1048#1053#1053
      Parent = grp_bottom
      SizeOptions.Width = 242
      Control = msk_INN
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_KPP: TdxLayoutItem
      CaptionOptions.Text = #1050#1055#1055
      Parent = grp_bottom
      SizeOptions.Width = 242
      Control = msk_KPP
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lc1Item2: TdxLayoutItem
      CaptionOptions.Text = #1050#1086#1076' '#1076#1083#1103' 1'#1057
      Parent = grp_bottom
      Control = Code1C
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object grp_btn: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Offsets.Top = 5
      Parent = grp_bottom
      ButtonOptions.Buttons = <>
      ButtonOptions.Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object lc1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp_btn
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 62
      Control = btn_Add
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_edit: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp_btn
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 62
      Control = btn_edit
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_del: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp_btn
      SizeOptions.Width = 62
      Control = btn_del
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object spl1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object spl2: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 3
    end
    object grlc1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 238
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 4
    end
    object itm_grd2: TdxLayoutItem
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grlc1Group1
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object spl3: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grlc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object itm_grd3: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grlc1Group1
      Control = grd3
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 608
    Top = 40
    object lcl1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 580
    Top = 40
  end
  object ds_ARENDATOR: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE ARENDATOR'
      'SET '
      '    NAME = :NAME,'
      '    INN = :INN,'
      '    KPP = :KPP,'
      '    SCHET = :SCHET,'
      '    KSCHET = :KSCHET,'
      '    BANK = :BANK'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    ARENDATOR'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO ARENDATOR('
      '    CODE,'
      '    NAME,'
      '    INN,'
      '    KPP,'
      '    SCHET,'
      '    KSCHET,'
      '    BANK'
      ')'
      'VALUES('
      '    :CODE,'
      '    :NAME,'
      '    :INN,'
      '    :KPP,'
      '    :SCHET,'
      '    :KSCHET,'
      '    :BANK'
      ')')
    RefreshSQL.Strings = (
      ' SELECT A.CODE, '
      '        A.NAME, '
      '        A.INN, '
      '        A.KPP, '
      '        A.SCHET, '
      '        A.KSCHET, '
      '        A.BANK'
      ' FROM ARENDATOR A'
      ''
      ' WHERE '
      '        A.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      ' SELECT A.CODE, '
      '        A.NAME, '
      '        A.INN, '
      '        A.KPP, '
      '        A.SCHET, '
      '        A.KSCHET, '
      '        A.BANK,'
      '        A.Code1C,'
      'A.FULLNAME, A.AGROUP, ag.name AGNAME'
      ' FROM ARENDATOR A'
      ' left outer join agroup ag on ag.code=a.agroup')
    Transaction = cmDB.RT
    Database = cmDB.DB
    UpdateTransaction = cmDB.WT
    Left = 48
    Top = 200
  end
  object src_ARENDATOR: TDataSource
    DataSet = ds_ARENDATOR
    OnDataChange = src_ARENDATORDataChange
    Left = 77
    Top = 200
  end
  object ds_AGROUP: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME, INN, KPP'
      'from AGROUP')
    AfterOpen = ds_AGROUPAfterOpen
    Transaction = cmDB.RT
    Database = cmDB.DB
    UpdateTransaction = cmDB.WT
    Left = 696
    Top = 56
  end
  object src_AGROUP: TDataSource
    DataSet = ds_AGROUP
    Left = 724
    Top = 56
  end
  object ds_ARENDATORG: TpFIBDataSet
    SelectSQL.Strings = (
      ' SELECT A.CODE, '
      '        A.NAME, '
      '        A.INN, '
      '        A.KPP, '
      '        A.SCHET, '
      '        A.KSCHET, '
      '        A.BANK,'
      '        A.Code1C,'
      'A.FULLNAME, A.AGROUP'
      ' FROM ARENDATOR A')
    Transaction = cmDB.RT
    Database = cmDB.DB
    UpdateTransaction = cmDB.WT
    Left = 728
    Top = 360
  end
  object src_ARENDATORG: TDataSource
    DataSet = ds_ARENDATORG
    Left = 760
    Top = 360
  end
end
