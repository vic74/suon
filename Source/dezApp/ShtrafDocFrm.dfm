object ShtrafDocForm: TShtrafDocForm
  Left = 0
  Top = 0
  Caption = #1057#1085#1103#1090#1080#1077' '#1089' '#1086#1073#1098#1077#1084#1086#1074
  ClientHeight = 602
  ClientWidth = 896
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
    Width = 896
    Height = 602
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object grd1: TcxGrid
      Left = 240
      Top = 1
      Width = 655
      Height = 600
      TabOrder = 11
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        DataController.DataSource = src_OUTCASHBDR
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
          Caption = #1044#1072#1090#1072' '#1086#1087#1077#1088#1072#1094#1080#1080
          DataBinding.FieldName = 'DATA'
          Width = 91
        end
        object clv1DOCNOMER: TcxGridDBColumn
          Caption = #1053#1086#1084#1077#1088' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
          DataBinding.FieldName = 'DOCNOMER'
          Width = 104
        end
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Width = 170
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 45
        end
        object clv1STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1KNAME: TcxGridDBColumn
          Caption = #1055#1086#1076#1088#1103#1076#1095#1080#1082
          DataBinding.FieldName = 'KNAME'
          Width = 159
        end
        object clv1HOUSESRV: TcxGridDBColumn
          Caption = #1059#1089#1083#1091#1075#1072
          DataBinding.FieldName = 'HOUSESRV'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'COD'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListSource = src_HOUSESRV
          Width = 162
        end
        object clv1SUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1089#1085#1103#1090#1080#1103
          DataBinding.FieldName = 'SUMMA'
          Width = 81
        end
        object clv1NOTE: TcxGridDBColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          DataBinding.FieldName = 'NOTE'
          Width = 223
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object dt1: TcxDateEdit
      Left = 11
      Top = 47
      Style.HotTrack = False
      TabOrder = 0
      Width = 214
    end
    object msk_num: TcxMaskEdit
      Left = 11
      Top = 84
      Style.HotTrack = False
      TabOrder = 1
      Width = 214
    end
    object cbb_street: TcxLookupComboBox
      Left = 11
      Top = 121
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
      TabOrder = 2
      Width = 214
    end
    object cbb_house: TcxLookupComboBox
      Left = 11
      Top = 158
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
      TabOrder = 3
      Width = 214
    end
    object cbb_kontr: TcxLookupComboBox
      Left = 11
      Top = 195
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_KONTRAGENT
      Style.HotTrack = False
      TabOrder = 4
      Width = 214
    end
    object cbb_srv: TcxLookupComboBox
      Left = 11
      Top = 232
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'COD'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_HOUSESRV
      Properties.OnEditValueChanged = cbb_srvPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 5
      Width = 214
    end
    object ced_sum: TcxCalcEdit
      Left = 11
      Top = 269
      EditValue = 0.000000000000000000
      Style.HotTrack = False
      TabOrder = 6
      Width = 214
    end
    object mmo_note: TcxMemo
      Left = 11
      Top = 306
      Style.HotTrack = False
      TabOrder = 7
      Height = 58
      Width = 214
    end
    object btn_add: TcxButton
      Left = 11
      Top = 365
      Width = 61
      Height = 25
      Caption = 'btn_add'
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
      TabOrder = 8
      OnClick = btn_addClick
    end
    object btn_edit: TcxButton
      Left = 89
      Top = 365
      Width = 61
      Height = 25
      Caption = 'btn_edit'
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
      TabOrder = 9
      OnClick = btn_editClick
    end
    object btn_del: TcxButton
      Left = 168
      Top = 365
      Width = 61
      Height = 25
      Caption = 'btn_del'
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
      TabOrder = 10
      OnClick = btn_delClick
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
    object grp2: TdxLayoutGroup
      AlignVert = avClient
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 238
      ButtonOptions.Buttons = <
        item
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000373746468B8BDBF5111142F5000000460000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000003636
            4848B9B9F7F7DADAFFFF4D4DD2FF000037F70000004800000000000000000000
            000000000000000000000000000000000000000000000000000036364848BABA
            F7F7D1D1FFFF7D7DE8FF0C0CC7FF0000B9FF00003EF700000048000000000000
            0000000000000000000000000000000000000000000000000000BFBFFFFFCECE
            FFFF7E7EEAFF0000BDFF0000BFFF0000C6FF0000B8FF00003FFD000000440000
            0000000000000000000000000000000000000000000000000000686883837F7F
            E9FF0000BBFF0000BFFF0000C0FF0000C0FF0000C4FF0000B9FF00003AF50000
            0048000000000000000000000000000000000000000000000000000000005959
            7B7E3232D0FF0000BBFF0000C0FF0000C0FF0000C0FF0000C5FF0103BCFF2013
            35F9000000460000000000000000000000000000000000000000000000000000
            000060607E7E3232D0FF0000BCFF0000C0FF0000BFFF0000BCFF9CAAF7FFEFAA
            A0FF3D0000FB0000004400000000000000000000000000000000000000000000
            000000000000646481833838D0FF0000BAFF0000BCFF919BEDFFFFFAE8FFFF92
            93FFE75B5BFF3D0000F500000048000000000000000000000000000000000000
            000000000000000000005D5D7C7C3536D1FF9199EBFFFFF1ECFFFF8483FFFF7B
            7BFFFF8B8BFFE45E5EFF410505FF000000460000000000000000000000000000
            00000000000000000000000000006D6C8181FFD5CCFFFF8584FFFF7B7BFFFF80
            80FFFF8080FFFF8989FFE45E5EFF3B0202F70000004800000000000000000000
            000000000000000000000000000000000000815D5B81FF8E8EFFFF7C7CFFFF80
            80FFFF8080FFFF7F7FFFFF8A8AFFE75E5EFF3E0303F700000048000000000000
            000000000000000000000000000000000000000000007C5E5E7CFF9090FFFF7B
            7BFFFF8080FFFF8080FFFF8080FFFF8A8AFFE35E5EFF470C0CF9000000000000
            000000000000000000000000000000000000000000000000000083636383FF91
            91FFFF7B7BFFFF8080FFFF8080FFFF8080FFFF9090FFAD2525FD000000000000
            0000000000000000000000000000000000000000000000000000000000007E5F
            5F7EFF9191FFFF7B7BFFFF8282FFFF8A8AFFBF4040FF1C0303DB000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00007E5F5F7EFF9090FFFF8585FFC13F3FFF170000D50000001C000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000083676783BC5050F5140000D70000001C00000000}
          Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1087#1086#1083#1103' '#1074#1074#1086#1076#1072
          OnClick = grp2Button0Click
        end>
      ButtonOptions.ShowExpandButton = True
      Index = 0
    end
    object itm_dt1: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1086#1087#1077#1088#1072#1094#1080#1080
      CaptionOptions.Layout = clTop
      Parent = grp2
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_num: TdxLayoutItem
      CaptionOptions.Text = #1053#1086#1084#1077#1088' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      CaptionOptions.Layout = clTop
      Parent = grp2
      Control = msk_num
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_street: TdxLayoutItem
      CaptionOptions.Text = #1059#1083#1080#1094#1072
      CaptionOptions.Layout = clTop
      Parent = grp2
      Control = cbb_street
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_house: TdxLayoutItem
      CaptionOptions.Text = #1044#1086#1084
      CaptionOptions.Layout = clTop
      Parent = grp2
      Control = cbb_house
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_kontr: TdxLayoutItem
      CaptionOptions.Text = #1055#1086#1076#1088#1103#1076#1095#1080#1082
      CaptionOptions.Layout = clTop
      Parent = grp2
      Control = cbb_kontr
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itm_srv: TdxLayoutItem
      CaptionOptions.Text = #1059#1089#1083#1091#1075#1072
      CaptionOptions.Layout = clTop
      Parent = grp2
      Control = cbb_srv
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object itm_sum: TdxLayoutItem
      CaptionOptions.Text = #1057#1091#1084#1084#1072' '#1089#1085#1103#1090#1080#1103
      CaptionOptions.Layout = clTop
      Parent = grp2
      Control = ced_sum
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object itm_note: TdxLayoutItem
      CaptionOptions.Text = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      CaptionOptions.Layout = clTop
      Parent = grp2
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 73
      Control = mmo_note
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object grplc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 8
    end
    object itm_add: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grplc1Group1
      SizeOptions.Width = 61
      Control = btn_add
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_edit: TdxLayoutItem
      AlignHorz = ahCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grplc1Group1
      SizeOptions.Width = 61
      Control = btn_edit
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_del: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 61
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
      Offsets.RootItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetVert = 1
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 652
    Top = 56
  end
  object ds_street: TpFIBDataSet
    SelectSQL.Strings = (
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DataSet_ID = 1
    Left = 24
    Top = 480
    poApplyRepositary = True
  end
  object src_street: TDataSource
    DataSet = ds_street
    Left = 53
    Top = 480
  end
  object ds_house: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       NOMER,'
      '       Street'
      'FROM HOUSE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 24
    Top = 520
    poApplyRepositary = True
  end
  object src_house: TDataSource
    DataSet = ds_house
    Left = 56
    Top = 520
  end
  object ds_HOUSESRV: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT '#39'0_'#39'||CODE COD,CODE, NAME,'
      '       '#39'HOUSESRV'#39' TBL'
      'FROM HOUSESRV'
      'where code in (1,2,3,5,9)'
      'union all'
      'SELECT '#39'1_'#39'||CODE COD,CODE, NAME,'
      '       '#39'SRV'#39' TBL'
      'FROM SRV'
      'where code in (3,4,5,6,7,8,9,10,11,12)'
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 96
    Top = 480
    poApplyRepositary = True
  end
  object src_HOUSESRV: TDataSource
    DataSet = ds_HOUSESRV
    Left = 125
    Top = 480
  end
  object src_KONTRAGENT: TDataSource
    Left = 126
    Top = 520
  end
  object ds_OUTCASHBDR: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE OUTCASHBDR'
      'SET '
      '    DATA = :DATA,'
      '    DOCNOMER = :DOCNOMER,'
      '    HOUSE = :HOUSE,'
      '    STREET = :STREET,'
      '    KONTRAGENT = :KONTRAGENT,'
      '    HOUSESRV = :HOUSESRV,'
      '    SUMMA = :SUMMA,'
      '    NOTE = :NOTE'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    OUTCASHBDR'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO OUTCASHBDR('
      '    CODE,'
      '    DATA,'
      '    DOCNOMER,'
      '    HOUSE,'
      '    STREET,'
      '    KONTRAGENT,'
      '    HOUSESRV,'
      '    SUMMA,'
      '    NOTE'
      ')'
      'VALUES('
      '    :CODE,'
      '    :DATA,'
      '    :DOCNOMER,'
      '    :HOUSE,'
      '    :STREET,'
      '    :KONTRAGENT,'
      '    :HOUSESRV,'
      '    :SUMMA,'
      '    :NOTE'
      ')')
    RefreshSQL.Strings = (
      'SELECT oc.CODE, '
      '       oc.DATA, '
      '       oc.DOCNOMER, '
      '       oc.HOUSE, h.nomer, '
      '       oc.STREET, s.name SName,'
      '       oc.KONTRAGENT,k.name KName,'
      '       oc.HOUSESRV, hs.name HSName,'
      '       oc.SUMMA, '
      '       oc.NOTE'
      'FROM OUTCASHBDR oc'
      'left outer join house h on h.code=oc.house'
      'left outer join street s on s.code=oc.street'
      'left outer join kontragent k on k.code=oc.kontragent'
      'left outer join housesrv hs on hs.code=oc.housesrv'
      ' WHERE '
      '        OC.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT oc.CODE,'
      '       oc.DATA, '
      '       oc.DOCNOMER, '
      '       oc.HOUSE, h.nomer, '
      '       oc.STREET, s.name SName,'
      '       oc.KONTRAGENT,k.name KName,'
      '       oc.HOUSESRV, --hs.name HSName,'
      '       oc.SUMMA, '
      '       oc.NOTE'
      'FROM OUTCASHBDR oc'
      'left outer join house h on h.code=oc.house'
      'left outer join street s on s.code=oc.street'
      'left outer join kontragent k on k.code=oc.kontragent'
      '--left outer join housesrv hs on hs.code=oc.housesrv')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 360
    Top = 176
  end
  object src_OUTCASHBDR: TDataSource
    DataSet = ds_OUTCASHBDR
    Left = 389
    Top = 176
  end
end
