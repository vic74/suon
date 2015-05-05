object ShowPrikaz: TShowPrikaz
  Left = 0
  Top = 0
  HelpContext = 13
  Caption = #1055#1088#1080#1082#1072#1079#1099' '#1086' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1080' '#1086#1089#1084#1086#1090#1088#1086#1074
  ClientHeight = 616
  ClientWidth = 996
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
    Width = 996
    Height = 616
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = laf1
    object grd1: TcxGrid
      Left = 8
      Top = 31
      Width = 987
      Height = 350
      TabOrder = 1
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        OnCellDblClick = v1CellDblClick
        DataController.DataSource = src_SHOWPRIKAZ
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1NUM: TcxGridDBColumn
          Caption = #1053#1086#1084#1077#1088' '#1087#1088#1080#1082#1072#1079#1072
          DataBinding.FieldName = 'NUM'
          HeaderAlignmentHorz = taCenter
          Width = 95
        end
        object clv1DATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1087#1088#1080#1082#1072#1079#1072
          DataBinding.FieldName = 'DATA'
          HeaderAlignmentHorz = taCenter
          Width = 77
        end
        object clv1SHOWTYPE: TcxGridDBColumn
          Caption = #1058#1080#1087
          DataBinding.FieldName = 'SHOWTYPE'
          Visible = False
          VisibleForCustomization = False
          Width = 76
        end
        object clv1SHNAME: TcxGridDBColumn
          Caption = #1058#1080#1087
          DataBinding.FieldName = 'SHNAME'
          HeaderAlignmentHorz = taCenter
          Width = 79
        end
        object clv1GENDIR: TcxGridDBColumn
          Caption = #1043#1077#1085'.'#1044#1080#1088#1077#1082#1090#1086#1088
          DataBinding.FieldName = 'GENDIR'
          HeaderAlignmentHorz = taCenter
          Width = 84
        end
        object clv1CHIEFOE: TcxGridDBColumn
          Caption = #1043#1083#1072#1074#1072' '#1086#1090#1076#1077#1083#1072' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1080
          DataBinding.FieldName = 'CHIEFOE'
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object clv1CHIEFTO: TcxGridDBColumn
          Caption = #1058#1077#1093#1085#1080#1095#1077#1089#1082#1080#1081' '#1076#1080#1088#1077#1082#1090#1086#1088
          DataBinding.FieldName = 'CHIEFTO'
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object clv1stnum: TcxGridDBColumn
          Caption = #8470' '#1089#1090#1072#1085#1076#1072#1088#1090
          DataBinding.FieldName = 'stnum'
        end
        object clv1stdate: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1089#1090#1072#1085#1076#1072#1088#1090
          DataBinding.FieldName = 'stdate'
        end
        object clv1CHIEF_FIN: TcxGridDBColumn
          Caption = #1060#1080#1085#1072#1085#1089#1086#1074#1099#1081' '#1076#1080#1088#1077#1082#1090#1086#1088
          DataBinding.FieldName = 'CHIEF_FIN'
          Width = 127
        end
        object clv1CHIEF_UO: TcxGridDBColumn
          Caption = #1053#1072#1095#1072#1083#1100#1085#1080#1082' '#1070#1054
          DataBinding.FieldName = 'CHIEF_UO'
          Width = 165
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object edt_NUM: TcxMaskEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 4
      Visible = False
      Width = 196
    end
    object dt_Data: TcxDateEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 5
      Visible = False
      Width = 196
    end
    object cbb_ShowType: TcxComboBox
      Left = 10000
      Top = 10000
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        #1074#1077#1089#1085#1072
        #1086#1089#1077#1085#1100)
      Style.HotTrack = False
      TabOrder = 6
      Text = #1074#1077#1089#1085#1072
      Visible = False
      Width = 196
    end
    object edt_GenDir: TcxMaskEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 7
      Visible = False
      Width = 196
    end
    object edt_ChiefOE: TcxMaskEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 8
      Visible = False
      Width = 196
    end
    object edt_ChiefTO: TcxMaskEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 9
      Visible = False
      Width = 196
    end
    object btn_ok: TcxButton
      Left = 10000
      Top = 10000
      Width = 65
      Height = 25
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      Visible = False
      OnClick = btn_okClick
    end
    object btn_edit: TcxButton
      Left = 10000
      Top = 10000
      Width = 65
      Height = 25
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
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
      TabOrder = 13
      Visible = False
      OnClick = btn_editClick
    end
    object btn_del: TcxButton
      Left = 10000
      Top = 10000
      Width = 65
      Height = 25
      Hint = #1059#1076#1072#1083#1080#1090#1100
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
      PaintStyle = bpsGlyph
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
      Visible = False
      OnClick = btn_delClick
    end
    object grd2: TcxGrid
      Left = 503
      Top = 435
      Width = 482
      Height = 167
      TabOrder = 3
      object v2: TcxGridDBTableView
        OnKeyUp = v2KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = v2CellDblClick
        DataController.DataSource = src_SRVDOG
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        object clv2CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2KNAME: TcxGridDBColumn
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'KNAME'
          Width = 124
        end
        object clv2NOMER: TcxGridDBColumn
          Caption = #1053#1086#1084#1077#1088
          DataBinding.FieldName = 'NOMER'
          Width = 36
        end
        object clv2D1: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1079#1072#1082#1083#1102#1095#1077#1085#1080#1103
          DataBinding.FieldName = 'D1'
          Width = 97
        end
        object clv2D2: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
          DataBinding.FieldName = 'D2'
          Width = 90
        end
        object clv2DATA: TcxGridDBColumn
          DataBinding.FieldName = 'DATA'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object grd3: TcxGrid
      Left = 11
      Top = 435
      Width = 484
      Height = 167
      TabOrder = 2
      object v3: TcxGridDBTableView
        OnKeyUp = v3KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = v3CellDblClick
        DataController.DataSource = src_SHOWPRIKAZLIST
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        object clv3CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3SHOWPRIKAZ: TcxGridDBColumn
          DataBinding.FieldName = 'SHOWPRIKAZ'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3SPNUM: TcxGridDBColumn
          Caption = #8470' '#1087#1088#1080#1082#1072#1079#1072
          DataBinding.FieldName = 'SPNUM'
          Width = 67
        end
        object clv3SRVDOG: TcxGridDBColumn
          DataBinding.FieldName = 'SRVDOG'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3SDNOMER: TcxGridDBColumn
          Caption = #1044#1086#1075#1086#1074#1086#1088' '#8470
          DataBinding.FieldName = 'SDNOMER'
          Width = 71
        end
        object clv3kontragent: TcxGridDBColumn
          DataBinding.FieldName = 'kontragent'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3KName: TcxGridDBColumn
          Caption = #1055#1086#1076#1088#1103#1076#1085#1072#1103' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'KName'
          Width = 199
        end
      end
      object l3: TcxGridLevel
        GridView = v3
      end
    end
    object doc_br1: TdxBarDockControl
      Left = 8
      Top = 1
      Width = 987
      Height = 29
      Align = dalTop
      BarManager = brm1
    end
    object txt1: TcxTextEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 10
      Visible = False
      Width = 196
    end
    object dt1: TcxDateEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 11
      Visible = False
      Width = 196
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grplc1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grp_left: TdxLayoutGroup
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 216
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = -1
    end
    object itm_NUM: TdxLayoutItem
      CaptionOptions.Text = #1053#1086#1084#1077#1088' '#1087#1088#1080#1082#1072#1079#1072
      CaptionOptions.Layout = clTop
      Parent = grp_left
      Control = edt_NUM
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_Data: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1087#1088#1080#1082#1072#1079#1072
      CaptionOptions.Layout = clTop
      Parent = grp_left
      Control = dt_Data
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_ShowType: TdxLayoutItem
      CaptionOptions.Text = #1058#1080#1087
      CaptionOptions.Layout = clTop
      Parent = grp_left
      Control = cbb_ShowType
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_GenDir: TdxLayoutItem
      CaptionOptions.Text = #1060#1048#1054' '#1075#1077#1085#1076#1080#1088#1077#1082#1090#1086#1088#1072
      CaptionOptions.Layout = clTop
      Parent = grp_left
      Control = edt_GenDir
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_ChiefOE: TdxLayoutItem
      CaptionOptions.Text = #1043#1083#1072#1074#1072' '#1086#1090#1076#1077#1083#1072' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1080
      CaptionOptions.Layout = clTop
      Parent = grp_left
      Control = edt_ChiefOE
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itm_ChiefTO: TdxLayoutItem
      CaptionOptions.Text = #1058#1077#1093#1085#1080#1095#1077#1089#1082#1080#1081' '#1076#1080#1088#1077#1082#1090#1086#1088
      CaptionOptions.Layout = clTop
      Parent = grp_left
      Control = edt_ChiefTO
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object grplc1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Offsets.Top = 5
      Parent = grp_left
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 8
    end
    object itm_Ok: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grplc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 65
      Control = btn_ok
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_edit: TdxLayoutItem
      AlignHorz = ahCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grplc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 65
      Control = btn_edit
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_del: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 65
      Control = btn_del
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object spl1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 0
    end
    object grplc1Group4: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grplc1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object itm_doc: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = grplc1Group4
      Control = doc_br1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grplc1Group4
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object spl2: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object grp_bottom: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 226
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 2
    end
    object grplc1Group3: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp_bottom
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itm_grd3: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1047#1072#1082#1088#1077#1087#1083#1077#1085#1085#1099#1077' '#1076#1086#1075#1086#1074#1086#1088#1099
      CaptionOptions.Layout = clTop
      Parent = grplc1Group3
      Control = grd3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object spl4: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grplc1Group3
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object itm_grd2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1057#1087#1080#1089#1086#1082' '#1076#1086#1075#1086#1074#1086#1088#1086#1074
      CaptionOptions.Layout = clTop
      Parent = grplc1Group3
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itmlc1Item1: TdxLayoutItem
      CaptionOptions.Text = #1057#1090#1072#1085#1076#1072#1088#1090' '#8470
      CaptionOptions.Layout = clTop
      Parent = grp_left
      Control = txt1
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object itmlc1Item11: TdxLayoutItem
      CaptionOptions.Text = #1057#1090#1072#1085#1076#1072#1088#1090' '#1076#1072#1090#1072
      CaptionOptions.Layout = clTop
      Parent = grp_left
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 7
    end
  end
  object lkf1: TdxLayoutLookAndFeelList
    Left = 680
    Top = 88
    object laf1: TdxLayoutCxLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetVert = 1
    end
  end
  object ds_SHOWPRIKAZ: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE SHOWPRIKAZ'
      'SET '
      '    NUM = :NUM,'
      '    DATA = :DATA,'
      '    SHOWTYPE = :SHOWTYPE,'
      '    GENDIR = :GENDIR,'
      '    CHIEFOE = :CHIEFOE,'
      '    CHIEFTO = :CHIEFTO'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    SHOWPRIKAZ'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO SHOWPRIKAZ('
      '    CODE,'
      '    NUM,'
      '    DATA,'
      '    SHOWTYPE,'
      '    GENDIR,'
      '    CHIEFOE,'
      '    CHIEFTO'
      ')'
      'VALUES('
      '    :CODE,'
      '    :NUM,'
      '    :DATA,'
      '    :SHOWTYPE,'
      '    :GENDIR,'
      '    :CHIEFOE,'
      '    :CHIEFTO'
      ')')
    RefreshSQL.Strings = (
      'SELECT sp.CODE, '
      '       sp.NUM, '
      '       sp.DATA, '
      '       sp.SHOWTYPE,'
      '        case'
      '           when sp.SHOWTYPE = 0 then '#39#1074#1077#1089#1085#1072#39
      '           when sp.SHOWTYPE = 1 then '#39#1086#1089#1077#1085#1100#39
      '          else '#39#39
      '        end SHName,'
      '       sp.GENDIR, '
      '       sp.CHIEFOE, '
      '       sp.CHIEFTO'
      'FROM SHOWPRIKAZ sp'
      ''
      ' WHERE '
      '        SP.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT sp.CODE,'
      '       sp.NUM, '
      '       sp.DATA,'
      '       sp.SHOWTYPE,'
      '        case'
      '           when sp.SHOWTYPE = 0 then '#39#1074#1077#1089#1085#1072#39
      '           when sp.SHOWTYPE = 1 then '#39#1086#1089#1077#1085#1100#39
      '          else '#39#39
      '        end SHName,'
      '       sp.GENDIR, '
      '       sp.CHIEFOE, '
      '       sp.CHIEFTO, sp.stnum, sp.stdate,'
      '         CHIEF_FIN,  CHIEF_UO'
      ''
      ''
      'FROM SHOWPRIKAZ sp'
      'order by sp.DATA DESC')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 336
    Top = 168
  end
  object src_SHOWPRIKAZ: TDataSource
    DataSet = ds_SHOWPRIKAZ
    Left = 364
    Top = 168
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 652
    Top = 88
  end
  object fr: TfrxReport
    Version = '4.15.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    OldStyleProgress = True
    PreviewOptions.AllowEdit = False
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40715.578944236100000000
    ReportOptions.LastChange = 42053.714123148150000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Left = 344
    Top = 240
  end
  object ds_SRVDOG: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT sd.CODE, '
      '       sd.KONTRAGENT, k.name KName,'
      '       sd.NOMER, '
      '       sd.D1, '
      '       sd.D2, '
      '       sd.DATA'
      'FROM SRVDOG sd'
      'left outer join kontragent k on sd.kontragent=k.code')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 645
    Top = 400
  end
  object src_SRVDOG: TDataSource
    DataSet = m_SRVDOG
    Left = 541
    Top = 408
  end
  object ds_SHOWPRIKAZLIST: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE SHOWPRIKAZLIST'
      'SET '
      '    SHOWPRIKAZ = :SHOWPRIKAZ,'
      '    SRVDOG = :SRVDOG'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    SHOWPRIKAZLIST'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO SHOWPRIKAZLIST('
      '    CODE,'
      '    SHOWPRIKAZ,'
      '    SRVDOG'
      ')'
      'VALUES('
      '    :CODE,'
      '    :SHOWPRIKAZ,'
      '    :SRVDOG'
      ')')
    RefreshSQL.Strings = (
      'SELECT sp.CODE, '
      '       sp.SHOWPRIKAZ, sh.num SPNum,'
      '       sd.kontragent, k.name KName,'
      '       sp.SRVDOG, sd.nomer SDNomer'
      'FROM SHOWPRIKAZLIST sp'
      'left outer join SHOWPRIKAZ sh on sh.code=sp.showprikaz'
      'left outer join srvdog sd on sd.code=sp.srvdog'
      'left outer join kontragent k on k.code = sd.kontragent'
      ''
      ' WHERE '
      '        SP.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT sp.CODE, '
      '       sp.SHOWPRIKAZ, sh.num SPNum,'
      '       sd.kontragent, k.name KName,'
      '       sp.SRVDOG, sd.nomer SDNomer'
      'FROM SHOWPRIKAZLIST sp'
      'left outer join SHOWPRIKAZ sh on sh.code=sp.showprikaz'
      'left outer join srvdog sd on sd.code=sp.srvdog'
      'left outer join kontragent k on k.code = sd.kontragent')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 48
    Top = 384
  end
  object src_SHOWPRIKAZLIST: TDataSource
    DataSet = ds_SHOWPRIKAZLIST
    Left = 76
    Top = 384
  end
  object m_SRVDOG: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 512
    Top = 408
  end
  object brm1: TdxBarManager
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
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 528
    Top = 240
    DockControlHeights = (
      0
      0
      0
      0)
    object brm1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = doc_br1
      DockedDockControl = doc_br1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 756
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_print'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_NewRec'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_EditRec'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_DeleteRec'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_print: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000001515
        151F8A8A8A9F8888889D8686869B8484849983838397818181957F7E7E937C7B
        7A907777768E757575885C5C5C720F0F0F210000000000000000000000002222
        222FF8F8F8FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF5F4
        F4FFF1EFEFFFF0EFEFFFF7F7F7FFB5B5B5D10101010800000000000000001F1F
        1F2BF7F7F7FFF6F6F6FFF6F6F6FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
        F5FFF5F3F3FFC2C1C0FF9A9A9AFFF2F2F2FF0C0C0C1900000000000000001C1C
        1C28F6F6F6FFF5F5F5FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
        F4FFCACACAFF7A7A7AFFBAB8B8FFEFEEEEFF1A1A1A2500000000000000001919
        1924F4F4F4FFF4F4F4FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFD2D2
        D2FF676767FFB1B1B1FFF2F1F1FFF2F0EFFF1A1A1A2400000000000000001717
        1722F3F3F3FFF3F3F3FFF3F3F3FFF2F2F2FFF1F1F1FFF1F1F1FFD7D7D7FF5B5B
        5BFFA8A8A8FFF2F2F2FFF3F3F3FFF4F2F2FF1A1A1A2400000000000000001717
        1721F2F2F2FFEDEDEDFFC3C3C3FFBCBCBCFFE3E3E3FFDCDCDCFF585858FFA0A0
        A0FFF1F1F1FFF2F2F2FFF3F3F3FFF3F3F3FF1919192300000000000000001616
        1620C6C6C6FF989494FFBDB7B6FFC1BBBBFF9B9797FF666666FF9A9A9AFFEFEF
        EFFFF0F0F0FFF1F1F1FFF2F2F2FFF2F2F2FF1818182100000000000000000E0E
        0E29ACA8A8FFE7E2E2FFE6E2E1FFE5E0E0FFE4DFDFFFBFBBBBFFC3C2C2FFEEEE
        EEFFEFEFEFFFF0F0F0FFF1F1F1FFF2F2F2FF1515151E0000000000000000302F
        2F75EDEAEAFFEBE7E7FFECE8E8FFEEEAEAFFEEEBEAFFECE8E7FFB0AFAFFFECEC
        ECFFEEEEEEFFEFEFEFFFF1F1F1FFF1F1F1FF1212121B00000000000000005554
        5491EFECEBFFF3F2F1FFF5F3F3FFF5F3F3FFF5F3F3FFF5F3F3FFBEBDBDFFEBEB
        EBFFEDEDEDFFEFEFEFFFF0F0F0FFF0F0F0FF0F0F0F1800000000000000003534
        346CF1F0F0FFF9F8F8FFF9F8F8FFF9F8F8FFF9F8F8FFF4F2F2FFC2C2C2FFEBEB
        EBFFEDEDEDFFEEEEEEFFF0F0F0FFF0F0F0FF0B0B0B1300000000000000001616
        1625C2C1C1FFFAF9F9FFFBFAFAFFF9F8F8FFF7F5F5FFD0CFCFFFDADADAFFEBEB
        EBFFEDEDEDFFEEEEEEFFF0F0F0FFEFEFEFFF0808080F00000000000000000A0A
        0A12DEDEDEFFC1C1C1FFCBCBCBFFCCCCCCFFC0C0C0FFD4D4D4FFE9E9E9FFEBEB
        EBFFEDEDEDFFEEEEEEFFF0F0F0FFEFEFEFFF0505050B00000000000000000909
        0910EEEEEEFFF0F0F0FFEBEBEBFFE9E9E9FFECECECFFEBEBEBFFEBEBEBFFECEC
        ECFFEDEDEDFFEFEFEFFFF0F0F0FFEEEEEEFF0202020700000000000000000303
        03065E5E5E6D6161616F62626270626262706262627162626271626262726262
        62726161617161616171616161715F5F5F700000000300000000}
      PaintStyle = psCaptionGlyph
      OnClick = btn_printClick
    end
    object btn_NewRec: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
      Visible = ivAlways
      ImageIndex = 0
      OnClick = btn_NewRecClick
    end
    object btn_EditRec: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
      Visible = ivAlways
      ImageIndex = 1
      OnClick = btn_EditRecClick
    end
    object btn_DeleteRec: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Visible = ivAlways
      ImageIndex = 2
      OnClick = btn_DeleteRecClick
    end
  end
  object wExp1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    OpenAfterExport = True
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = True
    HeaderFooterMode = hfText
    AutoSize = True
    Left = 376
    Top = 240
  end
end
