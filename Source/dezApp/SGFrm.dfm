object SGForm: TSGForm
  Left = 0
  Top = 0
  HelpContext = 15
  Caption = #1043#1088#1072#1092#1080#1082#1080' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#1086#1089#1084#1086#1090#1088#1086#1074
  ClientHeight = 630
  ClientWidth = 946
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
    Top = 26
    Width = 946
    Height = 604
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = laf1
    ExplicitTop = 0
    ExplicitWidth = 725
    ExplicitHeight = 579
    object grd1: TcxGrid
      Left = 213
      Top = 3
      Width = 509
      Height = 232
      TabOrder = 7
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        DataController.DataSource = src_GraphList
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.ImmediateEditor = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.CellTextMaxLineCount = 4
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv1ALOCK: TcxGridDBColumn
          DataBinding.FieldName = 'ALOCK'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = clv1ALOCKPropertiesEditValueChanged
          HeaderGlyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFBFBFB
            F4F4F4EAEAEADADADACACACAC0C0C0BABABABCBCBCC3C3C3CECECEDDDDDDEBEB
            EBF3F3F3F8F8F8FDFDFDFFFFFFFEFEFEF9F9F9C2C2C2A1A1A17E7E7E7F7F7F88
            88888A8A8A838383828282A2A2A2C1C1C1F7F7F7FCFCFCFFFFFFFFFFFFFFFFFF
            FFFFFFD0D0D0D6D6D6B7B7B7C1C1C1CFCFCFD1D1D1C3C3C3B6B6B6D5D5D5D1D1
            D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1D8D8D8B8B8B8C1C1C1D0
            D0D0D1D1D1C3C3C3B7B7B7D6D6D6D1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFCFCFCFD9D9D9B3B3B3BEBEBED1D1D1D3D3D3C1C1C1B1B1B1D6D6D6D0D0
            D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECECEDBDBDBB1B1B1BBBBBBCD
            CDCDCFCFCFBDBDBDADADADD8D8D8CFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFD1D1D1E4E4E4B9B9B9BFBFBFCFCFCFD1D1D1C1C1C1B5B5B5E2E2E2D1D1
            D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1E6E6E6BDBDBDC1C1C1CF
            CFCFD1D1D1C3C3C3BBBBBBE4E4E4D2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFD8D8D8BFC0C0BFBFBFD5D5D5DFDFDFE1E1E1D7D7D7C7C7C7C1C1C1D0D0
            D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B1B2DADADAFFFFFFFF
            FFFFFFFFFFFFFFFFEFEFEFAFB0B1E4E4E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFB2B3B3D9D9D9FFFFFFFFFFFFFFFFFFFFFFFFEEEEEEADAEAFE6E6
            E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1C2C2C2C2C3FFFFFFFF
            FFFFFFFFFFFFFFFFDADADA9D9E9FF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFDBDBDB999A9AF2F2F2FFFFFFFFFFFFFAFAFAA2A2A3C0C1C1FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8DCDCDCBBBBBBB1
            B2B2B2B2B2BFBFBFD7D7D8F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF7F7F7E3E3E3C2C3C3BFC0C0E1E2E2F5F5F5FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Width = 25
          IsCaptionAssigned = True
        end
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Options.Editing = False
          VisibleForCustomization = False
          Width = 39
        end
        object clv1YEAR: TcxGridDBColumn
          Caption = #1043#1086#1076' '#1089#1086#1079#1076#1072#1085#1080#1103
          DataBinding.FieldName = 'YEAR'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.LookupItems.Strings = (
            '2005'
            '2006'
            '2007'
            '2008'
            '2009'
            '2010'
            '2011'
            '2012'
            '2013'
            '2014'
            '2015'
            '2016')
          Properties.LookupItemsSorted = True
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d'
          Options.Editing = False
          Width = 80
        end
        object clv1KONTRAGENT: TcxGridDBColumn
          Caption = #1055#1086#1076#1088#1103#1076#1085#1072#1103' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'KONTRAGENT'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownSizeable = True
          Properties.GridMode = True
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = src_kontr
          Options.Editing = False
          Width = 164
        end
        object clv1GRAPHTO: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1075#1088#1072#1092#1080#1082#1072
          DataBinding.FieldName = 'GRAPHTO'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownSizeable = True
          Properties.DropDownWidth = 300
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
          Properties.ListSource = src_GRAPHTO
          Options.Editing = False
          Width = 108
        end
        object clv1SHOWPRIKAZPO: TcxGridDBColumn
          Caption = #1055#1088#1080#1082#1072#1079' '#8470
          DataBinding.FieldName = 'SHOWPRIKAZPO'
          Options.Editing = False
        end
        object clv1NOTE: TcxGridDBColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          DataBinding.FieldName = 'NOTE'
          Options.Editing = False
          Width = 135
        end
        object clv1SRVDOG: TcxGridDBColumn
          DataBinding.FieldName = 'SRVDOG'
          Visible = False
        end
        object clv1NOMER: TcxGridDBColumn
          DataBinding.FieldName = 'NOMER'
          Visible = False
        end
        object clv1D1: TcxGridDBColumn
          DataBinding.FieldName = 'D1'
          Visible = False
        end
        object clv1D2: TcxGridDBColumn
          DataBinding.FieldName = 'D2'
          Visible = False
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 169
      Top = 309
      Width = 535
      Height = 254
      TabOrder = 13
      object v2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_GrapSpec
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.InvertSelect = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsSelection.CellMultiSelect = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.Inactive = cmDb.styl1
        Styles.Selection = cmDb.styl1
        object clv2CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2GRAPHLIST: TcxGridDBColumn
          DataBinding.FieldName = 'GRAPHLIST'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2STName: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STName'
          Options.Editing = False
          Width = 174
        end
        object clv2HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2nomer: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'nomer'
          Options.Editing = False
          Width = 51
        end
        object clv2D1: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1086#1089#1084#1086#1090#1088#1072
          DataBinding.FieldName = 'D1'
          Width = 131
        end
        object clv2D2: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103' '#1086#1089#1084#1086#1090#1088#1072
          DataBinding.FieldName = 'D2'
          Width = 157
        end
        object clv2D3: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1089#1076#1072#1095#1080' '#1072#1082#1090#1072
          DataBinding.FieldName = 'D3'
          Width = 101
        end
        object clv2duName: TcxGridDBColumn
          Caption = #1044#1059
          DataBinding.FieldName = 'duName'
          Width = 126
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object doc_br1: TdxBarDockControl
      Left = 3
      Top = 269
      Width = 719
      Height = 26
      Align = dalTop
      BarManager = brm1
    end
    object cbb_showprikazpo: TcxLookupComboBox
      Left = 13
      Top = 49
      Properties.DropDownSizeable = True
      Properties.DropDownWidth = 300
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          MinWidth = 0
          Width = 0
          FieldName = 'CODE'
        end
        item
          Caption = #8470
          FieldName = 'NUM'
        end
        item
          Caption = #1044#1072#1090#1072
          FieldName = 'DATA'
        end
        item
          Caption = #1058#1080#1087
          MinWidth = 0
          Width = 0
          FieldName = 'SHOWTYPE'
        end
        item
          Caption = #1058#1080#1087
          FieldName = 'SHName'
        end
        item
          FieldName = 'SRVDOG'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = src_SHOWPROKAZPO
      Properties.OnChange = cbb_showprikazpoPropertiesChange
      Style.HotTrack = False
      TabOrder = 0
      Width = 182
    end
    object edt_year: TcxMaskEdit
      Left = 13
      Top = 86
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 1
      Width = 182
    end
    object m_note: TcxMemo
      Left = 13
      Top = 160
      Style.HotTrack = False
      TabOrder = 3
      Height = 44
      Width = 182
    end
    object btn_ok: TcxButton
      Left = 13
      Top = 205
      Width = 60
      Height = 25
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
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
      TabOrder = 4
      OnClick = btn_okClick
    end
    object btn_ed: TcxButton
      Left = 74
      Top = 205
      Width = 60
      Height = 25
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btn_edClick
    end
    object btn_del: TcxButton
      Left = 135
      Top = 205
      Width = 60
      Height = 25
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
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
      TabOrder = 6
      OnClick = btn_delClick
    end
    object cbb_type: TcxLookupComboBox
      Left = 13
      Top = 123
      Properties.DropDownSizeable = True
      Properties.DropDownWidth = 300
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
      Properties.ListSource = src_GRAPHTO
      Style.HotTrack = False
      TabOrder = 2
      Width = 182
    end
    object dt_begin: TcxDateEdit
      Left = 23
      Top = 355
      Style.HotTrack = False
      TabOrder = 9
      Width = 135
    end
    object dt_end: TcxDateEdit
      Left = 23
      Top = 392
      Style.HotTrack = False
      TabOrder = 10
      Width = 135
    end
    object dt_close: TcxDateEdit
      Left = 23
      Top = 429
      Style.HotTrack = False
      TabOrder = 11
      Width = 135
    end
    object btn_setD: TcxButton
      Left = 23
      Top = 451
      Width = 135
      Height = 25
      Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100
      TabOrder = 12
      OnClick = btn_setDClick
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = laf1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grplc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = False
      SizeOptions.Height = 236
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grplc1Group1: TdxLayoutGroup
      AlignVert = avClient
      Parent = grplc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 190
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 0
    end
    object itm_showprikazpo: TdxLayoutItem
      CaptionOptions.Text = #1055#1088#1080#1082#1072#1079' '#8470
      CaptionOptions.Layout = clTop
      Parent = grplc1Group1
      Control = cbb_showprikazpo
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_year: TdxLayoutItem
      CaptionOptions.Text = #1043#1086#1076
      CaptionOptions.Layout = clTop
      Parent = grplc1Group1
      Control = edt_year
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_type: TdxLayoutItem
      CaptionOptions.Text = #1058#1080#1087
      CaptionOptions.Layout = clTop
      Parent = grplc1Group1
      Control = cbb_type
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_note: TdxLayoutItem
      CaptionOptions.Text = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      CaptionOptions.Layout = clTop
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 59
      Control = m_note
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object grplc1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grplc1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object itm_ok: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grplc1Group3
      SizeOptions.Width = 60
      Control = btn_ok
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_ed: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grplc1Group3
      SizeOptions.Width = 60
      Control = btn_ed
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_del: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grplc1Group3
      SizeOptions.Width = 60
      Control = btn_del
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object spl: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grplc1Group2
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
      Parent = grplc1Group2
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      Control = grd1
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
    object itm_doc: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = grp1
      Control = doc_br1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object grlc1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 3
    end
    object grlc1Group3: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grlc1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grlc1Group2: TdxLayoutGroup
      Parent = grlc1Group3
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 0
    end
    object itm_begin: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1086#1089#1084#1086#1090#1088#1072
      CaptionOptions.Layout = clTop
      Parent = grlc1Group2
      Control = dt_begin
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_end: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103' '#1086#1089#1084#1086#1090#1088#1072
      CaptionOptions.Layout = clTop
      Parent = grlc1Group2
      Control = dt_end
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_close: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1089#1076#1072#1095#1080' '#1072#1082#1090#1072
      CaptionOptions.Layout = clTop
      Parent = grlc1Group2
      Control = dt_close
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_SetD: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grlc1Group2
      Control = btn_setD
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_grd2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grlc1Group3
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 258
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object lkf1: TdxLayoutLookAndFeelList
    Left = 672
    Top = 128
    object laf1: TdxLayoutCxLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Blue'
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = clv1GRAPHTO
        Properties.Strings = (
          'Properties.DropDownWidth'
          'Width')
      end
      item
        Component = clv1KONTRAGENT
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1NOTE
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1YEAR
        Properties.Strings = (
          'Width')
      end
      item
        Component = grlc1Group2
        Properties.Strings = (
          'Expanded')
      end>
    StorageName = 'prop1'
    Left = 648
    Top = 128
  end
  object brm1: TdxBarManager
    AllowReset = False
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
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Blue'
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 616
    Top = 128
    DockControlHeights = (
      0
      0
      26
      0)
    object brm1Bar1: TdxBar
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
      FloatLeft = 751
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_insert'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_edit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_delete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_xls'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_rep'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object brm1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = doc_br1
      DockedDockControl = doc_br1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 751
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_sync'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_copy'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 144
          Visible = True
          ItemName = 'lb_copy'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object btn_sync: TdxBarButton
      Caption = #1057#1080#1085#1093#1088#1086#1085#1080#1079#1072#1094#1080#1103' '#1089' '#1076#1086#1075#1086#1074#1086#1088#1086#1084'  '
      Category = 0
      Hint = #1057#1080#1085#1093#1088#1086#1085#1080#1079#1072#1094#1080#1103' '#1089' '#1076#1086#1075#1086#1074#1086#1088#1086#1084'  '
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000101011619222740202C324308090919010101190101011B0101
        011204060824638899B8151B1D21000000000000000000000000000000000000
        0000010101401F292CA48EABB8FF4B8FB1FF38A58AFA2EBF79ED28B672E30D49
        2A7B1016197B7CB6D2FF5C91ADE3181E21280000000000000000000000000101
        012101010170202B2F9FA6C4D3FF3CA298FF45EFAAFFB0F4D6FF7DECBEFF36BB
        84FF2B6163FF82BCD8FF5D9FBFFF528BA8E91A22262E00000000000000000101
        012A0101015E202B2F91A8C8D8FF49BE9BFFB4F5D4FFF5FDF8FFEEF9F3FF75B9
        98FF2B6E60FF89C2DEFF64A5C5FF4F91B4FF3A55637F00000000000000000101
        012E0101014B202B2F83ABCADAFF45AD95FF81E7B3FFC2F6DAFFA0EEC5FF5EAD
        85FF2A675FFF8FC9E3FF6CACCBFF5395B7FF3B55627D000000000101010A0101
        012B01010138202B2F7688B9D2FF5FA7BFFF53B78DFF84CBA4FF7FC09CFF2E6D
        57FF3E6879FF95CEE8FF73B2D1FF599ABCFF3A535F7900000000000000000101
        01020101010D02030422598498D16BABCBFF6AABC9FF57B0B4FF54A5ABFF4168
        7CFF75A2B7FF95D2EEFF7AB9D7FF60A1C2FF364D597000000000000000000000
        000000000000000000004D7182AE71B1D0FF72B1D1FF72B1D1FF6BA7C4FF456C
        7FFF80B0C6FF9AD6F2FF81BFDDFF67A7C7FF3347516400000000000000000000
        00000000000000000000507585AF78B7D5FF78B7D6FF78B7D6FF71ACC9FF496F
        82FF80B0C6FF9DD9F4FF88C6E3FF6EAECDFF33464F6000000000000000000000
        00000000000000000000567C8DB57EBDDBFF7EBDDBFF7FBDDBFF78B2CEFF4D73
        85FF81B0C6FF9FDAF5FF90CDE9FF75B4D3FF3447505F00000000000000000000
        000000000000000000005F8699BE84C2E0FF85C3E0FF85C3E0FF7EB8D4FF5176
        88FF81B1C6FF9FDBF6FF96D2EEFF7BBAD8FF3748515E00000000000000000000
        00000000000000000000668FA2C68BC8E5FF8BC8E5FF8BC9E6FF84BEDAFF547A
        8BFF82B1C6FF9FDBF6FF9BD7F2FF82C0DEFF37474F5B00000000000000000000
        000000000000000000006C96AACE91CEEAFF91CEEBFF92CEEBFF8BC4DFFF587D
        8EFF82B1C6FF9FDBF6FF9EDAF5FF89C6E3FF35434A5400000000000000000000
        00000000000000000000719DB1D397D4F0FF98D4F0FF98D4F0FF98D4EFFF8AC1
        DAFF8BBED4FF9FDBF6FF9FDAF5FF90CDE9FF2F3B414800000000000000000000
        000000000000000000003F56607877A2B4C890C4DBEFA0D8F2FF9EDAF5FF9EDA
        F5FF9AD0E9FF9ED4ECFFA0D9F3FF96D2EEFF2C373C4200000000000000000000
        00000000000000000000000000000000000000000000090C0D1521292D383342
        4955455A647156727E8C62808EA06D8E9DB321282B3000000000}
      PaintStyle = psCaptionGlyph
      OnClick = btn_syncClick
    end
    object lb_copy: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivNever
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000C2B3A5FFA78C7EFFA19C94FFBBB9
        B1FF63615D803634324000000000000000000000000000000000000000000000
        0000000000000000000000000000615F5980F3C09FFFFDE3D4FFF9CEB7FFD0A7
        8CFFAF907EFF9F9288FFA7A39AFFC0BEB5FF6565618036343240000000000000
        0000363432403636344000000000D0A992FFFDF3EDFFFFF1EBFFFFFFFFFFFFFF
        FFFFFFF5EDFFFFE7D2FFF3CEB3FFC8A38AFFAB9682FFADA9A5FF000000003634
        3240BCA494FF9F8E80FFA5A198FFEBB199FFFFFFFFFFFFE4D8FFFFCCB9FFFFCC
        B7FFFFD8C8FFFFF3EFFFFFFFFFFFFFFDFDFFFDD4B7FFB9B3A7FF00000000CCB5
        A7FFFBD0BBFFFFDCCCFFF39E7FFFF7C8B9FFFFEDE5FFFFCCB9FFFFE9E0FFFFFF
        FDFFFFF5F3FFFFD8CAFFFFE7DCFFFFF5EBFFC2A590FF3434324036343240E3AF
        92FFFFFFFDFFFFE3DAFFF59E82FFFBE2D8FFFFF7EDFFFFFBF3FFFFE0D2FFFFCA
        B7FFFFC8B5FFFFD6C6FFFFFFFDFFF3C2A7FFBBB7AFFF0000000061554F80F9D0
        BBFFFFFFFBFFFFD6C4FFEF8865FFFFEFE5FFFFD6C2FFFFC6ADFFFFCAB5FFFFDE
        CEFFFFFBF7FFFFF7F3FFFFFDF9FFC2947DFF65635F8000000000D0A590FFFDED
        E7FFFFE0D2FFFFCCB9FFED8867FFFFF1E5FFFFCCB5FFFFDECAFFFFF5E7FFFFE5
        D6FFFFCAB5FFFFD8C8FFFDEBE2FFAD907EFF3636344000000000D99B82FFFFFB
        F3FFFFF7EFFFFFF7EFFFEB8669FFFFEDD6FFFFE5CAFFFFD0B7FFFFC2A7FFFFC2
        A9FFFFCEB7FFFFEBDEFFFBDACAFFA79688FF0000000000000000E39D84FFFFF5
        EBFFFFCCB5FFFFC8AFFFEB8467FFFFE5CAFFFFDAB7FFFFE0C2FFFFE5CAFFFFEB
        D4FFFFE5D2FFFFE3D0FFF9CAB7FFA99C94FF0000000000000000E7A188FFFFE9
        D4FFFFC8AFFFFFE9D4FFE99073FFEDA188FFF7C6AFFFFFE3CCFFFFE0C4FFFFE0
        C2FFFFE5CAFFFFE7D2FFF3BEA7FFA9A79EFF0000000000000000EB9D86FFFFE5
        CAFFFFE1C8FFFFCEB1FFFFC4A9FFFDB79CFFF19679FFE99678FFEB927CFFF1B5
        A0FFF9D6C6FFFFEBD9FFF1B19CFFA9A59CFF0000000000000000E9A188FFFFD6
        B1FFFFDAB9FFFFE3C6FFFFE5CCFFFFEBD4FFFFE3CEFFFFEFE1FFDAA38EFFB7A9
        9FFFD29F8CFFD4967BFFDE825FFFC4C2B9FF0000000000000000DA755CFFEFA9
        92FFF9CEB9FFFFE5D0FFFFDEC1FFFFDEC2FFFFE3CAFFFFEFDBFFCE947EFFC6BE
        B8FF000000000000000000000000000000000000000000000000000000006359
        5380D29F8CFFD48C75FFE79884FFF5B9A4FFFDDDC6FFFFF1E3FFC6826BFFC6C0
        BAFF000000000000000000000000000000000000000000000000000000000000
        000000000000000000003634324065514B80D29A86FFDC886DFFC67D63FF6363
        5F80000000000000000000000000000000000000000000000000}
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.DropDownSizeable = True
      Properties.DropDownWidth = 450
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          Caption = #1050#1086#1076
          Width = 45
          FieldName = 'CODE'
        end
        item
          Caption = #1043#1086#1076
          Width = 50
          FieldName = 'YEAR'
        end
        item
          MinWidth = 0
          Width = 0
          FieldName = 'KONTRAGENT'
        end
        item
          Caption = #1055#1086#1076#1088#1103#1076#1085#1072#1103' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          Width = 90
          FieldName = 'KNAME'
        end
        item
          MinWidth = 0
          Width = 0
          FieldName = 'GRAPHTO'
        end
        item
          Caption = #1058#1080#1087' '#1075#1088#1072#1092#1080#1082#1072
          Width = 84
          FieldName = 'GTNAME'
        end
        item
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          Width = 100
          FieldName = 'NOTE'
        end>
      Properties.ListSource = src_copy
    end
    object btn_copy: TdxBarButton
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1080#1079
      Category = 0
      Hint = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1080#1079
      Visible = ivNever
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000C2B3A5FFA78C7EFFA19C94FFBBB9
        B1FF63615D803634324000000000000000000000000000000000000000000000
        0000000000000000000000000000615F5980F3C09FFFFDE3D4FFF9CEB7FFD0A7
        8CFFAF907EFF9F9288FFA7A39AFFC0BEB5FF6565618036343240000000000000
        0000363432403636344000000000D0A992FFFDF3EDFFFFF1EBFFFFFFFFFFFFFF
        FFFFFFF5EDFFFFE7D2FFF3CEB3FFC8A38AFFAB9682FFADA9A5FF000000003634
        3240BCA494FF9F8E80FFA5A198FFEBB199FFFFFFFFFFFFE4D8FFFFCCB9FFFFCC
        B7FFFFD8C8FFFFF3EFFFFFFFFFFFFFFDFDFFFDD4B7FFB9B3A7FF00000000CCB5
        A7FFFBD0BBFFFFDCCCFFF39E7FFFF7C8B9FFFFEDE5FFFFCCB9FFFFE9E0FFFFFF
        FDFFFFF5F3FFFFD8CAFFFFE7DCFFFFF5EBFFC2A590FF3434324036343240E3AF
        92FFFFFFFDFFFFE3DAFFF59E82FFFBE2D8FFFFF7EDFFFFFBF3FFFFE0D2FFFFCA
        B7FFFFC8B5FFFFD6C6FFFFFFFDFFF3C2A7FFBBB7AFFF0000000061554F80F9D0
        BBFFFFFFFBFFFFD6C4FFEF8865FFFFEFE5FFFFD6C2FFFFC6ADFFFFCAB5FFFFDE
        CEFFFFFBF7FFFFF7F3FFFFFDF9FFC2947DFF65635F8000000000D0A590FFFDED
        E7FFFFE0D2FFFFCCB9FFED8867FFFFF1E5FFFFCCB5FFFFDECAFFFFF5E7FFFFE5
        D6FFFFCAB5FFFFD8C8FFFDEBE2FFAD907EFF3636344000000000D99B82FFFFFB
        F3FFFFF7EFFFFFF7EFFFEB8669FFFFEDD6FFFFE5CAFFFFD0B7FFFFC2A7FFFFC2
        A9FFFFCEB7FFFFEBDEFFFBDACAFFA79688FF0000000000000000E39D84FFFFF5
        EBFFFFCCB5FFFFC8AFFFEB8467FFFFE5CAFFFFDAB7FFFFE0C2FFFFE5CAFFFFEB
        D4FFFFE5D2FFFFE3D0FFF9CAB7FFA99C94FF0000000000000000E7A188FFFFE9
        D4FFFFC8AFFFFFE9D4FFE99073FFEDA188FFF7C6AFFFFFE3CCFFFFE0C4FFFFE0
        C2FFFFE5CAFFFFE7D2FFF3BEA7FFA9A79EFF0000000000000000EB9D86FFFFE5
        CAFFFFE1C8FFFFCEB1FFFFC4A9FFFDB79CFFF19679FFE99678FFEB927CFFF1B5
        A0FFF9D6C6FFFFEBD9FFF1B19CFFA9A59CFF0000000000000000E9A188FFFFD6
        B1FFFFDAB9FFFFE3C6FFFFE5CCFFFFEBD4FFFFE3CEFFFFEFE1FFDAA38EFFB7A9
        9FFFD29F8CFFD4967BFFDE825FFFC4C2B9FF0000000000000000DA755CFFEFA9
        92FFF9CEB9FFFFE5D0FFFFDEC1FFFFDEC2FFFFE3CAFFFFEFDBFFCE947EFFC6BE
        B8FF000000000000000000000000000000000000000000000000000000006359
        5380D29F8CFFD48C75FFE79884FFF5B9A4FFFDDDC6FFFFF1E3FFC6826BFFC6C0
        BAFF000000000000000000000000000000000000000000000000000000000000
        000000000000000000003634324065514B80D29A86FFDC886DFFC67D63FF6363
        5F80000000000000000000000000000000000000000000000000}
      PaintStyle = psCaptionGlyph
      OnClick = btn_copyClick
    end
    object btn_insert: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1075#1088#1072#1092#1080#1082
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1075#1088#1072#1092#1080#1082
      Visible = ivNever
      Glyph.Data = {
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
      OnClick = btn_insertClick
    end
    object btn_edit: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
      Visible = ivNever
      Glyph.Data = {
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
      OnClick = btn_editClick
    end
    object btn_delete: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Visible = ivNever
      Glyph.Data = {
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
      OnClick = btn_deleteClick
    end
    object btn_xls: TdxBarButton
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Category = 0
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Visible = ivNever
      Glyph.Data = {
        26040000424D2604000000000000360000002800000012000000120000000100
        180000000000F003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000FFFFFF
        0000FFFFFF000000000000000000000000000000000000000000000000000000
        000000000000808000808000808000808000000000FFFFFF0000FFFFFF000000
        808080808080808080808080808080808080808080808080000000808000FFFF
        00FFFF00FFFFFF000000FFFFFFFFFFFF0000FFFFFFFFFFFF000000FFFF008080
        00808000808000808000808000000000808000FFFF00FFFF00FFFFFF000000FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF000000FFFF0080800080800080
        8000000000808000FFFF00FFFF00FFFFFF000000808000000000FFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00808000000000808000FFFF00
        FFFF00FFFFFF000000000000000000000000FFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000808000FFFF00FFFF00FFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000808000FFFF00FFFF00FFFFFF000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF000000808000FFFF00FF
        FF00FFFFFF000000808000808080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFF000000808000FFFF00FFFF00FFFFFF000000FFFF00
        808000808000808080000000FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        000000808000FFFF00FFFF00FFFFFF000000FFFFFF000000FFFF008080008080
        00808080000000FFFFFFFFFFFFFFFFFF0000FFFFFF000000FFFFFFFFFFFFFFFF
        FFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFF00FFFF00FFFF00FFFF0000
        0000FFFFFFFFFFFF0000FFFFFF000000000000000000000000000000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000FFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000}
      OnClick = btn_xlsClick
    end
    object btn_rep: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1086#1090#1095#1077#1090#1072
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1086#1090#1095#1077#1090#1072
      Visible = ivAlways
      Glyph.Data = {
        4E010000424D4E01000000000000760000002800000015000000120000000100
        040000000000D800000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888888000888888E88888888E888880008888888E88888EEE888880008888
        8888E8EEEEE88888800088F88888EEEEE8888888800088FF8888EE8888888888
        8000888FF8888EEEEEE88888800088888F8888E88EEEE8888000888888F88E8E
        8888EE888000888FFFFFF888E8888E8880008888FFFFFFEEEEEEEE8880008888
        8888FEEEEEEEE8888000888888888F888888888880008888FF8888F888888888
        80008888FFF888F88888888880008888FFFFFFFFFFF8888880008888888FFFFF
        FFFF88888000888888888888888888888000}
      OnClick = btn_repClick
    end
  end
  object ds_GraphList: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE GRAPHLIST'
      'SET '
      '    "YEAR" = :"YEAR",'
      '    KONTRAGENT = :KONTRAGENT,'
      '    GRAPHTO = :GRAPHTO,'
      '    NOTE = :NOTE,'
      '    SHOWPRIKAZPO = :SHOWPRIKAZPO,'
      '    ALOCK = :ALOCK'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    GRAPHLIST'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO GRAPHLIST('
      '    CODE,'
      '    "YEAR",'
      '    KONTRAGENT,'
      '    GRAPHTO,'
      '    NOTE,'
      '    SHOWPRIKAZPO,'
      '    ALOCK'
      ')'
      'VALUES('
      '    :CODE,'
      '    :"YEAR",'
      '    :KONTRAGENT,'
      '    :GRAPHTO,'
      '    :NOTE,'
      '    :SHOWPRIKAZPO,'
      '    :ALOCK'
      ')')
    RefreshSQL.Strings = (
      'SELECT GL.CODE, '
      '       GL."YEAR", '
      '       GL.KONTRAGENT,'
      '       GL.GRAPHTO,'
      '       GL.NOTE,'
      '       GL.showprikazpo,'
      '       GL.alock'
      'FROM GRAPHLIST GL'
      ''
      ' WHERE '
      '        GL.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT GL.CODE,'
      '       GL."YEAR",'
      '       GL.KONTRAGENT,'
      '       GL.GRAPHTO,'
      '       GL.NOTE,'
      '       GL.showprikazpo,'
      '       GL.alock, sp.SRVDOG,'
      '       sd.NOMER, sd.D1,  sd.D2'
      'FROM GRAPHLIST GL'
      'left outer join SHOWPROKAZPO sp on sp.CODE = gl.SHOWPRIKAZPO'
      'left outer join srvdog sd on sd.CODE = sp.SRVDOG')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 256
    Top = 64
  end
  object src_GraphList: TDataSource
    DataSet = ds_GraphList
    Left = 288
    Top = 64
  end
  object src_kontr: TDataSource
    Left = 288
    Top = 112
  end
  object ds_GRAPHTO: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    CODE,'
      '    NAME'
      'FROM'
      '    GRAPHTO'
      'where code in (15,16) '
      'order by name')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 256
    Top = 160
  end
  object src_GRAPHTO: TDataSource
    DataSet = ds_GRAPHTO
    Left = 288
    Top = 160
  end
  object ds_GrapSpec: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE GRAPHSPEC'
      'SET '
      '    GRAPHLIST = :GRAPHLIST,'
      '    STREET = :STREET,'
      '    HOUSE = :HOUSE,'
      '    D1 = :D1,'
      '    D2 = :D2,'
      '    D3 = :D3'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    GRAPHSPEC'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO GRAPHSPEC('
      '    CODE,'
      '    GRAPHLIST,'
      '    STREET,'
      '    HOUSE,'
      '    D1,'
      '    D2,'
      '    D3'
      ')'
      'VALUES('
      '    :CODE,'
      '    :GRAPHLIST,'
      '    :STREET,'
      '    :HOUSE,'
      '    :D1,'
      '    :D2,'
      '    :D3'
      ')')
    RefreshSQL.Strings = (
      'SELECT GS.CODE, '
      '       GS.GRAPHLIST, '
      '       GS.STREET, s.name STName,'
      '       GS.HOUSE, h.nomer,h.du, '
      '       du.name duName,'
      '       GS.D1, '
      '       GS.D2,'
      '       GS.d3'
      'FROM GRAPHSPEC GS'
      'left outer join street s on s.code=gs.street'
      'left outer join house h on h.code=gs.house'
      'left outer join du on du.code=h.du'
      ''
      ' WHERE '
      '        GS.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT GS.CODE, '
      '       GS.GRAPHLIST, '
      '       GS.STREET, s.name STName,'
      '       GS.HOUSE, h.nomer,h.du, '
      '       du.name duName,'
      '       GS.D1, '
      '       GS.D2,'
      '       GS.d3'
      'FROM GRAPHSPEC GS'
      'left outer join street s on s.code=gs.street'
      'left outer join house h on h.code=gs.house'
      'left outer join du on du.code=h.du')
    BeforePost = ds_GrapSpecBeforePost
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 176
    Top = 352
  end
  object src_GrapSpec: TDataSource
    DataSet = ds_GrapSpec
    Left = 208
    Top = 352
  end
  object TdxBarSeparator
    Category = -1
    Visible = ivAlways
  end
  object ds_copy: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT gl.CODE, '
      '       gl."YEAR", '
      '       gl.KONTRAGENT, k.name KName,'
      '       gl.GRAPHTO, gt.name GTName,'
      '       gl.NOTE'
      'FROM GRAPHLIST gl'
      'left outer join kontragent k on k.code=gl.kontragent'
      'left outer join graphto gt on gt.code=gl.graphto')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 176
    Top = 392
  end
  object src_copy: TDataSource
    DataSet = ds_copy
    Left = 208
    Top = 392
  end
  object fr: TfrxReport
    Version = '4.15.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40566.813802442100000000
    ReportOptions.LastChange = 40925.948752430600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Q1.ParamByName('#39'shh'#39').Value:=Report.Variables['#39'varOsm'#39'];'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 328
    Top = 160
    Datasets = <
      item
        DataSet = fr.Q1
        DataSetName = 'Q1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object DB: TfrxFIBDatabase
        DatabaseName = 'D:\base\DEZ.FDB'
        LoginPrompt = False
        Params.Strings = (
          'user_name=sysdba'
          'password=masterkey'
          'sql_role_name=')
        SQLDialect = 3
        pLeft = 32
        pTop = 48
      end
      object Q1: TfrxFIBQuery
        UserName = 'Q1'
        CloseDataSource = True
        FieldAliases.Strings = (
          'CODE=CODE'
          'SHOWHOUSE=SHOWHOUSE'
          'HOUSE=HOUSE'
          'NOMER=NOMER'
          'STREETNAME=STREETNAME'
          'D1=D1'
          'D2=D2'
          'SHOWDATE=SHOWDATE')
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'shh'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          
            'select s.CODE, s.SHOWHOUSE, s.HOUSE,h.nomer,st.name StreetName, ' +
            's.D1, s.D2, s.SHOWDATE'
          'from SHOWHOUSEPLAN s'
          'left outer join house h on s.house=h.code'
          'left outer join street st on h.street=st.code'
          'where s.SHOWHOUSE=:shh'
          'order by s.D1, s.D2  ')
        Database = fr.DB
        pLeft = 32
        pTop = 108
        Parameters = <
          item
            Name = 'shh'
            DataType = ftUnknown
          end>
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 279.685220000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Width = 718.110700000000000000
          Height = 94.488250000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077' [varAPP]'
            
              '                                                                ' +
              '                                                                ' +
              '                                                                ' +
              '                                                        '#1082' '#1055#1086#1083#1086#1078#1077 +
              #1085#1080#1102'  '#1086' '#1087#1086#1088#1103#1076#1082#1077' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '
            #1086#1089#1077#1085#1085#1077#1075#1086'/'#1074#1077#1089#1077#1085#1085#1077#1075#1086' '#1086#1089#1084#1086#1090#1088#1072
            ''
            '                                 '#1059#1058#1042#1045#1056#1046#1044#1040#1070)
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 75.590600000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            #1059#1058#1042#1045#1056#1046#1044#1040#1070'                           ')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 94.488250000000000000
          Width = 188.976500000000000000
          Height = 68.031540000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1044#1080#1088#1077#1082#1090#1086#1088' '#1054#1054#1054' _____________'
            '________________ '#1060'.'#1048'.'#1054'.'
            #171'___'#187'___________20__'#1075'.')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 487.559370000000000000
          Top = 94.488250000000000000
          Width = 230.551330000000000000
          Height = 68.031540000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            #1043#1077#1085#1077#1088#1072#1083#1100#1085#1099#1081' '#1076#1080#1088#1077#1082#1090#1086#1088
            #1054#1054#1054' '#171#1044#1045#1047' '#1050#1072#1083#1080#1085#1080#1085#1089#1082#1086#1075#1086' '#1088#1072#1081#1086#1085#1072#187
            '_________________ '#1057#1084#1080#1088#1085#1086#1074' '#1050'.'#1048'.'
            #171'___'#187'___________________ 2010'#1075'.')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baWidth
          Top = 174.519790000000000000
          Width = 718.110700000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #1043#1088#1072#1092#1080#1082
            #1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#1086#1089#1077#1085#1085#1077#1075#1086'/'#1074#1077#1089#1077#1085#1085#1077#1075#1086' '#1086#1089#1084#1086#1090#1088#1072'  '#1078#1080#1083#1086#1075#1086' '#1092#1086#1085#1076#1072' '
            #1086#1090#1095#1077#1090#1085#1099#1081' '#1087#1077#1088#1080#1086#1076' '#1089' '#171'___'#187'__________ '#1087#1086' '#171'___'#187'__________20 __'#1075'.')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 270.614173228346000000
          Top = 205.094620000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1089' '#171'___'#187'__________ ')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Top = 238.110390000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1054#1054#1054)
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 147.401670000000000000
          Top = 238.110390000000000000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 18.897637795275600000
        Top = 359.055350000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          Width = 313.700787400000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1059#1083#1080#1094#1072)
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 313.700787400000000000
          Width = 41.574803150000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1086#1084)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 355.275590550000000000
          Width = 120.944881889764000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072)
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 476.220472440000000000
          Width = 120.944881889764000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103)
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 597.165354330000000000
          Width = 120.944881889764000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1089#1076#1072#1095#1080' '#1072#1082#1090#1072)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897637795275600000
        Top = 400.630180000000000000
        Width = 718.110700000000000000
        DataSet = fr.Q1
        DataSetName = 'Q1'
        RowCount = 0
        object FIBQuery1STREETNAME: TfrxMemoView
          Width = 313.700787400000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'STREETNAME'
          DataSet = fr.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q1."STREETNAME"]')
          ParentFont = False
        end
        object FIBQuery1NOMER: TfrxMemoView
          Left = 313.701319530000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NOMER'
          DataSet = fr.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q1."NOMER"]')
          ParentFont = False
        end
        object FIBQuery1D1: TfrxMemoView
          Left = 355.276149530000000000
          Width = 120.944881890000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'D1'
          DataSet = fr.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Q1."D1"]')
          ParentFont = False
        end
        object FIBQuery1D2: TfrxMemoView
          Left = 476.221031420000000000
          Width = 120.944881890000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'D2'
          DataSet = fr.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Q1."D2"]')
          ParentFont = False
        end
        object FIBQuery1SHOWDATE: TfrxMemoView
          Left = 597.165913310000000000
          Width = 120.944881890000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'SHOWDATE'
          DataSet = fr.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Q1."SHOWDATE"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 109.606370000000000000
        Top = 442.205010000000000000
        Width = 718.110700000000000000
        object Memo14: TfrxMemoView
          Align = baClient
          Width = 718.110700000000000000
          Height = 109.606370000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              #1057#1086#1075#1083#1072#1089#1086#1074#1072#1085#1086': '#1089#1090'. '#1084#1077#1085#1077#1076#1078#1077#1088' '#1057#1069' '#1054#1054#1054' '#171#1044#1045#1047' '#1050#1072#1083#1080#1085#1080#1085#1089#1082#1086#1075#1086' '#1088#1072#1081#1086#1085#1072#187' _____' +
              '_____________('#1060'.'#1048'.'#1054'.)'
            
              #1054#1079#1085#1072#1082#1086#1084#1083#1077#1085#1099': '#1086#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1086#1077' '#1083#1080#1094#1086' '#1054#1054#1054'                             ' +
              '     ________________________('#1060'.'#1048'.'#1054'., '#1076#1086#1083#1078#1085#1086#1089#1090#1100')'
            
              '                         '#1048#1085#1078#1077#1085#1077#1088'-'#1082#1091#1088#1072#1090#1086#1088' '#1057#1069' '#1044#1059'                  ' +
              '                                 _________________('#1060'.'#1048'.'#1054'., '#1076#1086#1083#1078#1085 +
              #1086#1089#1090#1100')'
            ' ')
          ParentFont = False
          VAlign = vaBottom
        end
      end
    end
  end
  object ds_SHOWPROKAZPO: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT sp.CODE, '
      '       sp.SHOWPRIKAZ, '
      '       sp.NUM, '
      '       sp.DATA, '
      '       sp.SHOWTYPE,'
      '         case'
      '           when sp.SHOWTYPE = 0 then '#39#1074#1077#1089#1085#1072#39
      '           when sp.SHOWTYPE = 1 then '#39#1086#1089#1077#1085#1100#39
      '          else '#39#39
      '        end SHName,  '
      '       sp.GENDIR, '
      '       sp.ISPOLNIT, '
      '       sp.CONTROL, '
      '       sp.KONTRAGENT, '
      '       sp.SRVDOG'
      'FROM SHOWPROKAZPO sp')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 440
    Top = 64
  end
  object src_SHOWPROKAZPO: TDataSource
    DataSet = ds_SHOWPROKAZPO
    Left = 469
    Top = 64
  end
  object Xexp1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = True
    DataOnly = False
    ExportEMF = True
    OpenExcelAfterExport = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 360
    Top = 160
  end
  object wexp1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = True
    DataOnly = False
    PictureType = gpPNG
    OpenAfterExport = True
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 392
    Top = 160
  end
  object fr_ds1: TfrxDBDataset
    UserName = 'frx_GrapSpec'
    CloseDataSource = False
    DataSet = ds_GrapSpec
    BCDToCurrency = False
    Left = 304
    Top = 400
  end
end
