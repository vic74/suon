object TRProcess4Form: TTRProcess4Form
  Left = 0
  Top = 0
  HelpContext = 114
  Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1077' '#1089#1086#1075#1083#1072#1096#1077#1085#1080#1103
  ClientHeight = 654
  ClientWidth = 974
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
    Top = 31
    Width = 974
    Height = 623
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    ExplicitTop = 0
    ExplicitHeight = 654
    object grd1: TcxGrid
      Left = 20
      Top = 41
      Width = 328
      Height = 174
      TabOrder = 0
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        DataController.DataSource = src_TRDOP
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsBehavior.PullFocusing = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object clv1STATE: TcxGridDBColumn
          AlternateCaption = #1057#1090#1072#1090#1091#1089
          Caption = #1057#1090#1072#1090#1091#1089
          DataBinding.FieldName = 'STATE'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = clv1STATEPropertiesEditValueChanged
          Visible = False
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
          Options.ShowCaption = False
          VisibleForCustomization = False
          Width = 23
        end
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          Options.Editing = False
          Width = 37
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1053#1086#1084#1077#1088
          DataBinding.FieldName = 'NOMER'
          Options.Editing = False
          Width = 55
        end
        object clv1DOPDATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103
          DataBinding.FieldName = 'DOPDATE'
          Options.Editing = False
        end
        object clv1KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv1KNAME: TcxGridDBColumn
          Caption = #1055#1086#1076#1088#1103#1076#1095#1080#1082
          DataBinding.FieldName = 'KNAME'
          Options.Editing = False
          Width = 82
        end
        object clv1DOG: TcxGridDBColumn
          DataBinding.FieldName = 'DOG'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv1D1: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
          DataBinding.FieldName = 'D1'
          Options.Editing = False
        end
        object clv1D2: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
          DataBinding.FieldName = 'D2'
          Options.Editing = False
        end
        object clv1DogNom: TcxGridDBColumn
          Caption = #1044#1086#1075#1086#1074#1086#1088' '#8470
          DataBinding.FieldName = 'DogNom'
          Visible = False
        end
        object clv1DogD1: TcxGridDBColumn
          DataBinding.FieldName = 'DogD1'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1DogD2: TcxGridDBColumn
          DataBinding.FieldName = 'DogD2'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 20
      Top = 382
      Width = 328
      Height = 143
      TabOrder = 6
      object v2: TcxGridDBTableView
        OnKeyUp = v2KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v2CellClick
        DataController.DataSource = src_TRDOPSOG
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = clv2SUMMA
          end
          item
            Kind = skSum
            Column = clv2NSumma
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsBehavior.PullFocusing = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        Styles.OnGetContentStyle = v2StylesGetContentStyle
        object clv2STATE: TcxGridDBColumn
          AlternateCaption = #1057#1090#1072#1090#1091#1089
          Caption = #1057#1090#1072#1090#1091#1089
          DataBinding.FieldName = 'STATE'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = clv2STATEPropertiesEditValueChanged
          Visible = False
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
          Options.ShowCaption = False
          VisibleForCustomization = False
          Width = 20
        end
        object clv2CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          Options.Editing = False
          Width = 40
        end
        object clv2TRFACT: TcxGridDBColumn
          DataBinding.FieldName = 'TRFACT'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv2TRDOP: TcxGridDBColumn
          DataBinding.FieldName = 'TRDOP'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv2D1: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
          DataBinding.FieldName = 'D1'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ImmediatePost = True
          Width = 70
        end
        object clv2D2: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
          DataBinding.FieldName = 'D2'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ImmediatePost = True
          Width = 78
        end
        object clv2MLIST: TcxGridDBColumn
          DataBinding.FieldName = 'MLIST'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv2SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Options.Editing = False
          Width = 132
        end
        object clv2NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Options.Editing = False
          Width = 40
        end
        object clv2MNAME: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090#1099
          DataBinding.FieldName = 'MNAME'
          Options.Editing = False
          Width = 131
        end
        object clv2HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv2STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv2NSumma: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1087#1086' '#1089#1084#1077#1090#1077
          DataBinding.FieldName = 'NSumma'
          Options.Editing = False
          Width = 76
        end
        object clv2SUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1088#1072#1073#1086#1090' '#1092#1072#1082#1090
          DataBinding.FieldName = 'SUMMA'
          Options.Editing = False
          Width = 82
        end
        object clv2dplace: TcxGridDBColumn
          DataBinding.FieldName = 'dplace'
          Visible = False
          VisibleForCustomization = False
        end
        object clISCALC: TcxGridDBColumn
          Caption = #1055#1088#1080#1079#1085#1072#1082' '#1082#1072#1083#1100#1082#1091#1083#1103#1094#1080#1080
          DataBinding.FieldName = 'ISCALC'
          Visible = False
          VisibleForCustomization = False
        end
        object clCALCNUM: TcxGridDBColumn
          Caption = #8470' '#1082#1072#1083#1100#1082#1091#1083#1103#1094#1080#1080
          DataBinding.FieldName = 'CALCNUM'
          Visible = False
        end
        object clv2MANAGER: TcxGridDBColumn
          DataBinding.FieldName = 'MANAGER'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2PLANCODE: TcxGridDBColumn
          Caption = #1050#1086#1076' '#1087#1083#1072#1085#1072
          DataBinding.FieldName = 'PLANCODE'
          Visible = False
        end
        object clv2Y: TcxGridDBColumn
          Caption = #1043#1086#1076' ('#1087#1083#1072#1085')'
          DataBinding.FieldName = 'Y'
          Visible = False
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object grd3: TcxGrid
      Left = 386
      Top = 41
      Width = 568
      Height = 559
      TabOrder = 9
      object v3: TcxGridDBTableView
        OnKeyUp = v3KeyUp
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_TRFACT
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv3SNAME
          end
          item
            Kind = skSum
            Column = clv3NSUMMA
          end
          item
            Kind = skSum
            Column = clv3SUMMA
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.IncSearch = True
        OptionsBehavior.PullFocusing = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object clv3CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          Width = 44
        end
        object clv3DATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = 'DATA'
          Visible = False
        end
        object clv3STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Width = 181
        end
        object clv3HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 35
        end
        object clv3MLIST: TcxGridDBColumn
          DataBinding.FieldName = 'MLIST'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3MNAME: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090#1099
          DataBinding.FieldName = 'MNAME'
          Width = 144
        end
        object clv3KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3KNAME: TcxGridDBColumn
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'KNAME'
          Width = 132
        end
        object clv3MANAGER: TcxGridDBColumn
          DataBinding.FieldName = 'MANAGER'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3FIO: TcxGridDBColumn
          Caption = #1054#1090#1074'. '#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
          DataBinding.FieldName = 'FIO'
          Width = 159
        end
        object clv3NCALC: TcxGridDBColumn
          Caption = #1053#1086#1084#1077#1088' '#1089#1084#1077#1090#1099
          DataBinding.FieldName = 'NCALC'
          Width = 85
        end
        object clv3NCALCDATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103' '#1089#1084#1077#1090#1099
          DataBinding.FieldName = 'NCALCDATE'
          Width = 87
        end
        object clv3NSUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1087#1086' '#1089#1084#1077#1090#1077
          DataBinding.FieldName = 'NSUMMA'
          Width = 83
        end
        object clv3NDOP: TcxGridDBColumn
          Caption = #1053#1086#1084#1077#1088' '#1076#1086#1087'. '#1089#1086#1075#1083#1072#1096#1077#1085#1080#1103
          DataBinding.FieldName = 'NDOP'
          Visible = False
          Width = 74
        end
        object clv3SUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1088#1072#1073#1086#1090' ('#1092#1072#1082#1090')'
          DataBinding.FieldName = 'SUMMA'
          Visible = False
          Width = 93
        end
        object clv3NOTE: TcxGridDBColumn
          Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
          DataBinding.FieldName = 'NOTE'
          Visible = False
          Width = 93
        end
        object clv3PLANCODE: TcxGridDBColumn
          DataBinding.FieldName = 'PLANCODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3STATE: TcxGridDBColumn
          DataBinding.FieldName = 'STATE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3TRDOPSOG: TcxGridDBColumn
          DataBinding.FieldName = 'TRDOPSOG'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3Y: TcxGridDBColumn
          Caption = #1043#1086#1076' ('#1087#1083#1072#1085')'
          DataBinding.FieldName = 'Y'
        end
      end
      object l3: TcxGridLevel
        GridView = v3
      end
    end
    object btn_addDop: TcxButton
      Left = 20
      Top = 221
      Width = 86
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
      TabOrder = 1
      OnClick = btn_addDopClick
    end
    object btn_delDop: TcxButton
      Left = 262
      Top = 221
      Width = 86
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
      TabOrder = 3
      OnClick = btn_delDopClick
    end
    object btn_edit: TcxButton
      Left = 126
      Top = 221
      Width = 116
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
      TabOrder = 2
      OnClick = btn_editClick
    end
    object ced_sum: TcxCalcEdit
      Left = 30
      Top = 562
      EditValue = 0.000000000000000000
      Properties.OnEditValueChanged = ced_sumPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object btn_save: TcxButton
      Left = 157
      Top = 562
      Width = 38
      Height = 25
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
      TabOrder = 8
      OnClick = btn_saveClick
    end
    object btn_print: TcxButton
      Left = 10000
      Top = 10000
      Width = 135
      Height = 25
      Caption = #1055#1077#1095#1072#1090#1100
      Kind = cxbkDropDown
      OptionsImage.Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FEFEFEFDFDFD
        FBFBFBF8F8F8F6F6F6F4F4F4F3F3F3F3F3F3F3F3F3F3F3F3F4F4F4F5F5F5F8F8
        F8FAFAFAFCFCFCFEFEFEF9F9F9F5F5F5EEEEEEE0DEDBD5D0CBCCC7C3C5C0BBC0
        BBB7BFBAB6C1BDB8C7C2BECFCAC6D7D2CDE8E8E8F1F1F1F7F7F7FAFAFAF4F4F4
        ECECECC2B8AFC2B5A9CDC3BACCC2BACCC2BACCC2B9CBC2B9CBC1B9CBC1B8A795
        84DDDDDDF0F0F0F8F8F8FFFFFFF7F7F7ECECECBEBBB8A29A92B5B5B5B5B5B5B6
        B6B6B6B6B6B6B6B6B6B6B6B6B6B6968A80E4E4E4F4F4F4FFFFFFFEFEFEE9E9E9
        E9E9E99595955B5B5A5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5C5B
        5BDADADAE4E4E4FEFEFEFFFFFFE2E2E2DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDD76BC95B6CCC0D9D9D9FDFDFDFFFFFFDDDDDD
        D0CECDC5B6ACC4B5AAC4B5AAC4B5AAC4B5AAC4B5AAC4B5AAC4B5AAC4B5AAB7AC
        9EC6BCB4D0D0D0FFFFFFFFFFFFF2F2F2BAAEA693634296674696674696674696
        6746966746966746966746966746966746A18069E1E1E1FFFFFFFFFFFFFFFFFF
        F0F0F0BDB2AA9D948ED2D1D1D2D1D1D2D1D1D2D1D1D2D1D1D2D1D1C0BEBDA99C
        92E2E0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4F2F2F2F2F2F2F2
        F2F2F2F2F2F2F2F2F2F2F2ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6F6F6F1F1F1F0F0F0F1F1F1F2F2F2F5F5F5F6F6F6EFEFEFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0F0F0F0F0EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6F6F6EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEECECECFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 11
      Visible = False
      OnClick = btn_printClick
    end
    object btn_set: TcxButton
      Left = 10000
      Top = 10000
      Width = 135
      Height = 25
      Caption = #1059#1090#1074#1077#1088#1076#1080#1090#1100
      OptionsImage.Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333300003333333333333333333300003333000333333333333300003333
        08803333333333330000333330F8033333333333000033333307803333333333
        00003333330F700333333333000033333330780380333333000033333300F700
        0803333300003333330F0F700780333300003333300F0FF70080333300003333
        30F0F0FF7078033300003333300F0F0F777703330000333330F0F07FF7770333
        00003333330F07FFFF770333000033333330FF7FFFF703330000333333330FFF
        FFF7033300003333333330F7FFFF703300003333333333000000003300003333
        33333333333333330000}
      TabOrder = 10
      Visible = False
      OnClick = btn_setClick
    end
    object docm1: TdxBarDockControl
      Left = 20
      Top = 345
      Width = 328
      Height = 31
      Align = dalTop
      BarManager = bm1
    end
    object doc1: TdxBarDockControl
      Left = 20
      Top = 252
      Width = 328
      Height = 31
      Align = dalTop
      BarManager = bm1
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
    object grlc1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 348
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object grlc1Group1: TdxLayoutGroup
      CaptionOptions.Text = #1044#1086#1087'. '#1089#1086#1075#1083#1072#1096#1077#1085#1080#1103
      Parent = grlc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 286
      SizeOptions.Width = 306
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grlc1Group1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grlc1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grlc1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object itm_addDop: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grlc1Group5
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 86
      Control = btn_addDop
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_edit: TdxLayoutItem
      AlignHorz = ahCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group5
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 116
      Control = btn_edit
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_delDop: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grlc1Group5
      SizeOptions.Width = 86
      Control = btn_delDop
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_print: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 135
      Control = btn_print
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object itm_set: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 135
      Control = btn_set
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object spl1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grlc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object grlc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1057#1087#1080#1089#1086#1082' '#1088#1072#1073#1086#1090
      Parent = grlc1Group4
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object itm_grd2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grlc1Group2
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grlc1Group6: TdxLayoutGroup
      CaptionOptions.Text = 
        #1048#1079#1084#1077#1085#1080#1090#1100' '#1089#1091#1084#1084#1091'                                                  ' +
        '    '
      Parent = grlc1Group2
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      LayoutDirection = ldHorizontal
      OnCaptionClick = grlc1Group6CaptionClick
      Index = 2
    end
    object itm_sum: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxCalcEdit1'
      CaptionOptions.Visible = False
      Parent = grlc1Group6
      Control = ced_sum
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_save: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group6
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 38
      Control = btn_save
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
    object grlc1Group3: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1057#1084#1077#1090#1072
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object itm_grd3: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grlc1Group3
      Control = grd3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item1: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grlc1Group2
      Control = docm1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item1: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grlc1Group1
      Control = doc1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 680
    Top = 160
    object lcl1: TdxLayoutCxLookAndFeel
      LookAndFeel.NativeStyle = False
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_Firm
        Properties.Strings = (
          'EditValue')
      end>
    StorageName = 'prop1'
    Left = 652
    Top = 160
  end
  object ds_TRFACT: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  TF.CODE, TF.DATA, S.CODE STREET, S.NAME SNAME, TF.HOUSE,'
      '  H.NOMER, TF.MLIST, M.NAME MNAME, TF.KONTRAGENT,'
      
        '  K.NAME KNAME, TF.MANAGER,(P.F || '#39' '#39' || P.I || '#39' '#39' || P.O) FIO' +
        ','
      '  TF.NCALC, TF.NCALCDATE, TF.NSUMMA, TF.NDOP, TF.SUMMA, TF.NOTE,'
      
        '  TF.PLANCODE ,TF.STATE ,TF.TRDOPSOG, TF.ISCALC, TF.CALCNUM, TP.' +
        'Y,'
      '  TF.FIRM'
      ''
      'from TRFACT TF'
      ' left outer join HOUSE H on H.CODE = TF.HOUSE'
      ' left outer join STREET S on S.CODE = H.STREET'
      ' left outer join MLIST M on M.CODE = TF.MLIST'
      ' left outer join KONTRAGENT K on K.CODE = TF.KONTRAGENT'
      ' left outer join WORKER W on W.CODE = TF.MANAGER'
      ' left outer join PIPLE P on P.CODE = W.PIPLE'
      ' left outer join TRPLAN TP on TP.CODE = TF.PLANCODE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 472
    Top = 176
  end
  object src_TRFACT: TDataSource
    DataSet = ds_TRFACT
    Left = 501
    Top = 176
  end
  object ds_TRDOP: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE TRDOP'
      'SET '
      '    NOMER = :NOMER,'
      '    DOPDATE = :DOPDATE,'
      '    KONTRAGENT = :KONTRAGENT,'
      '    DOG = :DOG,'
      '    D1 = :D1,'
      '    D2 = :D2,'
      '    STATE = :STATE'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    TRDOP'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO TRDOP('
      '    CODE,'
      '    NOMER,'
      '    DOPDATE,'
      '    KONTRAGENT,'
      '    DOG,'
      '    D1,'
      '    D2,'
      '    STATE'
      ')'
      'VALUES('
      '    :CODE,'
      '    :NOMER,'
      '    :DOPDATE,'
      '    :KONTRAGENT,'
      '    :DOG,'
      '    :D1,'
      '    :D2,'
      '    :STATE'
      ')')
    RefreshSQL.Strings = (
      'SELECT td.CODE, '
      '       td.NOMER, '
      '       td.DOPDATE, '
      '       td.KONTRAGENT, k.name kName ,'
      '       td.DOG, '
      '       td.D1, '
      '       td.D2, '
      '       td.STATE'
      'FROM TRDOP td'
      'left outer join kontragent k on k.code=td.kontragent'
      ' WHERE '
      '        TD.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT td.CODE,'
      '       td.NOMER, '
      '       td.DOPDATE, '
      '       td.KONTRAGENT, k.name kName ,'
      '       td.DOG, sd.nomer DogNom, sd.d1 DogD1, sd.d2 DogD2,'
      '       td.D1, '
      '       td.D2, '
      '       td.STATE,'
      '       td.lstate, td.FIRM'
      'FROM TRDOP td'
      'left outer join kontragent k on k.code=td.kontragent'
      'left outer join srvdog sd on sd.code=td.dog')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 32
    Top = 128
  end
  object src_TRDOP: TDataSource
    DataSet = ds_TRDOP
    Left = 64
    Top = 136
  end
  object ds_TRDOPSOG: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE TRDOPSOG'
      'SET '
      '    TRFACT = :TRFACT,'
      '    TRDOP = :TRDOP,'
      '    D1 = :D1,'
      '    D2 = :D2,'
      '    STATE = :STATE'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    TRDOPSOG'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO TRDOPSOG('
      '    CODE,'
      '    TRFACT,'
      '    TRDOP,'
      '    D1,'
      '    D2,'
      '    STATE'
      ')'
      'VALUES('
      '    :CODE,'
      '    :TRFACT,'
      '    :TRDOP,'
      '    :D1,'
      '    :D2,'
      '    :STATE'
      ')')
    RefreshSQL.Strings = (
      'SELECT td.CODE, '
      '       td.TRFACT, tr.mlist,'
      '       m.name mName,'
      '       tr.house, h.nomer,'
      '       h.street, s.name sName,'
      '       tr.summa,'
      '       td.TRDOP,'
      '       td.D1, '
      '       td.D2, '
      '       td.STATE'
      'FROM TRDOPSOG td'
      'left outer join trfact tr on tr.code=td.trfact'
      'left outer join mlist m on m.code=tr.mlist'
      'left outer join house h on h.code=tr.house'
      'left outer join street s on s.code=h.street'
      ''
      ' WHERE '
      '        TD.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT TD.CODE,'
      '       TD.TRFACT, TR.MLIST,'
      '       M.NAME MNAME,'
      '       TR.HOUSE, H.NOMER,'
      '       H.STREET, S.NAME SNAME,'
      '       TR.SUMMA, TR.NSUMMA,TR.DPLACE,'
      '       TD.TRDOP, TR.NCALC,'
      '       TD.D1,'
      '       TD.D2,'
      '       TD.STATE, TR.ISCALC, TR.CALCNUM, TR.MANAGER,'
      '       TR.PLANCODE, TP.Y'
      'FROM TRDOPSOG TD'
      'LEFT OUTER JOIN TRFACT TR ON TR.CODE=TD.TRFACT'
      'LEFT OUTER JOIN MLIST M ON M.CODE=TR.MLIST'
      'LEFT OUTER JOIN HOUSE H ON H.CODE=TR.HOUSE'
      'LEFT OUTER JOIN STREET S ON S.CODE=H.STREET'
      'LEFT OUTER JOIN TRPLAN TP ON TP.CODE = TR.PLANCODE')
    BeforeEdit = ds_TRDOPSOGBeforeEdit
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 64
    Top = 416
  end
  object src_TRDOPSOG: TDataSource
    DataSet = ds_TRDOPSOG
    Left = 92
    Top = 416
  end
  object iml1: TcxImageList
    FormatVersion = 1
    DesignInfo = 30933080
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000101
          01020101010401010106010101080101010A0101010C0101010D0101010D0101
          010C0101010A0101010801010106010101030000000100000000010101080101
          011101010119010101210101012901010130010101360101013A0101013A0101
          01360101013001010129010101210101021A0101011001010108000000000000
          0000000000010101010319191935272627440101010701010107010101070101
          010701010106011725330098C6E000ABDEF70039566800000000000000000606
          060C1F1E1E340000000008080813CECDCDF52222223900000000000000000000
          00000104090C0092C4DB00C5F1FF00BEF0FF0080B8D200000000000000003333
          334B818181A40000000003030306B2B2B2DD6D6D6D9200000000000000000000
          00000161869B00C6F1FF00CAF3FF00BCEEFF0147708700000000000000001E1E
          1E37DBDADAF97E7E7EA5BBBBBBE8DDDCDCFF717171A70000000000000000012D
          414E00C5F0FF00CBF3FF00A6D9EE003553660001010100000000000000000000
          00007272729CDBDADAFFD9D8D8FFCCCCCDFFBEBEBFFF3A3A3A670117273300A8
          D9EE00BFEEFE00668DA201091117000000000000000000000000000000000000
          0000000000001414142B3D3D3D68B4B4B4F3C6C6C6FF90A6BAFD00ADE5FB009C
          D8F101283E4C0000000000000000000000000000000000000000000000000000
          00000000000000000000000000001818182FA0A0A1E7B2B2B4FF3B97C9FF184B
          6D96000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000505050C868686C7AFAFB0FFBABABBFFB7B7
          B8FD414141730000000000000000000000000000000000000000000000000000
          000000000000000000000404040A808081C0818182C51B1B1B38A5A5A6E8C2C2
          C2FFC2C2C3FF979797D34A4A4A73010101010000000000000000000000000000
          000000000000040404097A7A7ABB707070B104040409000000001F1F1F3FCCCC
          CCFFD7D6D7FFD1D1D1FFD8D8D8FF414141660000000000000000000000000000
          00004949496F979798E65F5F5F9C0202020400000000000000002121213DDCDC
          DCFF5F5F5F8F0E0E0E1D5A5A5A7C838383A90000000000000000000000001919
          192ADCDBDBFBC4C3C4FB0F0F0F2A0000000000000000000000000B0B0B18D3D2
          D2F924242442000000000C0C0C185655557A0000000000000000000000000101
          010267676783201F1F3500000000000000000000000000000000000000004646
          465E605F5F8C0000000000000000010101010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000010101010000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000101
          01040101010B0101011501010125010101350101014001010145010101430101
          013C0101013101010123010101150101010C0101010701010102000000000000
          000101010106343434707F7F7FDD636363E4696969E9737373EB757575E96A6A
          6AE5626262E07E7E7EDA3A3A3A77010101080101010301010101000000000000
          0000000000005050507ED5D5D5FFB7B7B7FFC0C0C0FFCECECEFFD0D0D0FFC2C2
          C2FFB6B6B6FFD4D4D4FF5A5A5A88000000000000000000000000000000000000
          0000000000005050507ED7D7D7FFB7B7B7FFC0C0C0FFCFCFCFFFD1D1D1FFC2C2
          C2FFB6B6B6FFD5D5D5FF5B5B5B88000000000000000000000000000000000000
          0000000000004F4F4F7ED8D8D8FFB2B2B2FFBEBEBEFFD0D0D0FFD2D2D2FFC0C0
          C0FFB1B1B1FFD5D5D5FF59595988000000000000000000000000000000000000
          0000000000004D4D4D7EDADADAFFB0B0B0FFBABABAFFCCCCCCFFCECECEFFBCBC
          BCFFACACACFFD7D7D7FF58585888000000000000000000000000000000000000
          0000000000005050507EE3E3E3FFB8B8B8FFBEBEBEFFCECECEFFD0D0D0FFC0C0
          C0FFB5B5B5FFE1E1E1FF5B5B5B88000000000000000000000000000000000000
          0000000000005050507EE5E5E5FFBCBCBCFFC0C0C0FFCECECEFFD0D0D0FFC2C2
          C2FFBABABAFFE3E3E3FF5B5B5B88000000000000000000000000000000000000
          0000000000002C2C2C52858585A8737373A57C7C7CA6868686A6878787A67E7E
          7EA6757575ADC0C0C0FF34343463000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000006060615AFB0B0FF06060620000000000000000000000000000000000000
          000000000000000000009FA0A1FA0C0C0C300000000000000000000000000000
          000006060616ADAEAEFF0606061F000000000000000000000000000000000000
          00000000000000000000A2A3A3E0161617520000000000000000000000000000
          00000D0D0D31979898F902020208000000000000000000000000000000000000
          000000000000000000006D6D6E916B6C6CD10303030F00000000000000000101
          0105555657B26D6E6FAC00000000000000000000000000000000000000000000
          000000000000000000000B0B0B12B4B4B5D89E9E9FE23B3B3C88333434809292
          92D3BBBBBCE31212121E00000000000000000000000000000000000000000000
          000000000000000000000000000009090910696969858E8F8FCC909090CF7272
          728F0E0E0E170000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object fr: TfrxReport
    Version = '4.15.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40831.797607326400000000
    ReportOptions.LastChange = 41893.922925335650000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 496
    Top = 288
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 744.567410000000000000
        Restrictions = [rfDontModify, rfDontMove]
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Rich2: TfrxRichView
          Width = 718.110700000000000000
          Height = 374.173470000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Frame.Width = 1.500000000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034395C6465666C616E6766653130
            34395C6465667461623730387B5C666F6E7474626C7B5C66305C66726F6D616E
            5C66707271325C66636861727365743230347B5C2A5C666E616D652054696D65
            73204E657720526F6D616E3B7D54696D6573204E657720526F6D616E20435952
            3B7D7B5C66315C666D6F6465726E5C66707271315C6663686172736574302043
            6F7572696572204E65773B7D7B5C66325C666D6F6465726E5C66707271315C66
            636861727365743230347B5C2A5C666E616D6520436F7572696572204E65773B
            7D436F7572696572204E6577204359523B7D7B5C66335C66726F6D616E5C6670
            7271325C6663686172736574302054696D6573204E657720526F6D616E3B7D7B
            5C66345C6673776973735C66707271325C66636861727365743230347B5C2A5C
            666E616D6520417269616C3B7D417269616C204359523B7D7D0D0A7B5C2A5C67
            656E657261746F7220526963686564323020362E332E393630307D5C76696577
            6B696E64345C756331200D0A5C706172645C71725C66305C667332305C276366
            5C2766305C2765385C2765625C2765655C2765365C2765355C2765645C276538
            5C276535205C276239315C7061720D0A5C276561205C2765345C2765655C2765
            335C2765655C2765325C2765655C2766305C276633205C2765665C2765655C27
            65345C2766305C2766665C2765345C276530205C276239205C66315C6C616E67
            31303333205B7661724E446F675D5C66325C6C616E673130343920205C276565
            5C276632205C66315C6C616E6731303333205B76617244446F675D5C66325C6C
            616E67313034395C2765335C6630202E5C7061720D0A5C7061720D0A0D0A5C70
            6172645C71635C2763345C2763655C2763665C2763655C2763625C2763645C27
            63385C2764325C2763355C2763625C2764635C2763645C2763655C276335205C
            2764315C2763655C2763335C2763625C2763305C2764385C2763355C2763645C
            2763385C276335205C27623920205C66335C6C616E6731303333205B7661724E
            756D446F705D205C66305C6C616E67313034395C2765655C276632205C66335C
            6C616E6731303333205B766172446F70446174655D5C66305C6C616E67313034
            395C7061720D0A5C276561205C2765345C2765655C2765335C2765655C276532
            5C2765655C2766305C276633205C2765665C2765655C2765345C2766305C2766
            665C2765345C276530205C276239205C66315C6C616E6731303333205B766172
            4E446F675D5C66325C6C616E673130343920205C2765655C276632205C66315C
            6C616E6731303333205B76617244446F675D5C66325C6C616E67313034395C27
            65335C6630202E202020202020202020205C7061720D0A5C7061720D0A5C7061
            720D0A0D0A5C706172645C72692D355C716A5C625C2763655C2763655C276365
            205C2761625C2763345C2765385C2766305C2765355C2765615C2766365C2765
            385C276666205C2765355C2765345C2765385C2765645C2765655C2765335C27
            6565205C2765375C2765305C2765615C2765305C2765375C2766375C2765385C
            2765615C276530205C2763615C2765305C2765625C2765385C2765645C276538
            5C2765645C2766315C2765615C2765655C2765335C276565205C2766305C2765
            305C2765395C2765655C2765645C2765305C2762625C6230202C205C2765385C
            2765635C2765355C2765645C2766335C2765355C2765635C2765655C27653520
            5C276532205C2765345C2765305C2765625C2766635C2765645C2765355C2765
            395C2766385C2765355C276563205C2761625C2763375C2765305C2765615C27
            65305C2765375C2766375C2765385C2765615C2762622C205C276532205C2765
            625C2765385C2766365C276535205C2765335C2765355C2765645C2765355C27
            66305C2765305C2765625C2766635C2765645C2765655C2765335C2765652020
            5C2765345C2765385C2766305C2765355C2765615C2766325C2765655C276630
            5C27653020205C2764315C2765635C2765385C2766305C2765645C2765655C27
            65325C276530205C2763615C2765655C2765645C2766315C2766325C2765305C
            2765645C2766325C2765385C2765645C276530205C2763385C2765335C276565
            5C2766305C2765355C2765325C2765385C2766375C2765302C205C2765345C27
            65355C2765395C2766315C2766325C2765325C2766335C2766655C2766395C27
            65355C2765335C276565205C2765645C276530205C2765655C2766315C276564
            5C2765655C2765325C2765305C2765645C2765385C276538205C2764335C2766
            315C2766325C2765305C2765325C2765302C205C276631205C2765655C276534
            5C2765645C2765655C276539205C2766315C2766325C2765655C2766305C2765
            655C2765645C2766622C205C276538205C625C66335C6C616E6731303333205B
            7661724B6F6E74725D5C66305C6C616E673130343920205C62305C2765385C27
            65635C2765355C2765645C2766335C2765355C2765635C2765655C276535205C
            276532205C2765345C2765305C2765625C2766635C2765645C2765355C276539
            5C2766385C2765355C276563205C2761625C2763665C2765655C2765345C2766
            305C2766665C2765345C2766375C2765385C2765615C2762622C205C27653220
            5C2765625C2765385C2766365C276535205C2765345C2765385C2766305C2765
            355C2765615C2766325C2765655C2766305C276530205C66335C6C616E673130
            3333205B7661724469725D5C66305C6C616E6731303439202C205C2765345C27
            65355C2765395C2766315C2766325C2765325C2766335C2766655C2766395C27
            65355C2765335C276565205C2765645C276530205C2765655C2766315C276564
            5C2765655C2765325C2765305C2765645C2765385C27653820205C2764335C27
            66315C2766325C2765305C2765325C2765302C205C276631205C2765345C2766
            305C2766335C2765335C2765655C276539205C2766315C2766325C2765655C27
            66305C2765655C2765645C276662205C2765375C2765305C2765615C2765625C
            2766655C2766375C2765385C2765625C276538205C2765645C2765305C276631
            5C2766325C2765655C2766665C2766395C2765355C276535205C2765345C2765
            655C2765665C2765655C2765625C2765645C2765385C2766325C2765355C2765
            625C2766635C2765645C2765655C276535205C2766315C2765655C2765335C27
            65625C2765305C2766385C2765355C2765645C2765385C276535205C27656520
            5C2765645C2765385C2765365C2765355C2766315C2765625C2765355C276534
            5C2766335C2766655C2766395C2765355C2765633A5C7061720D0A312E205C27
            6332205C2766315C2765655C2765655C2766325C2765325C2765355C2766325C
            2766315C2766325C2765325C2765385C276538205C276631205C2765345C2765
            655C2765335C2765655C2765325C2765655C2766305C2765655C276563205C27
            6239205C66315C6C616E6731303333205B7661724E446F675D5C66325C6C616E
            673130343920205C2765655C276632205C66315C6C616E6731303333205B7661
            7244446F675D5C66325C6C616E67313034395C2765335C6630202E205C276366
            5C2765655C2765345C2766305C2766665C2765345C2766375C2765385C276561
            20205C2765655C2765315C2766665C2765375C2766335C2765355C2766325C27
            66315C276666205C2765665C276565205C2765375C2765305C2765345C276530
            5C2765645C2765385C276665205C2763375C2765305C2765615C2765305C2765
            375C2766375C2765385C2765615C2765302C205C2765325C2766625C2765665C
            2765655C2765625C2765645C2765385C2766325C276663205C2766305C276530
            5C2765315C2765655C2766325C276662205C2765645C276530205C2765655C27
            65315C2766615C2765355C2765615C2766325C2765352C205C2765655C276531
            5C2765655C2765375C2765645C2765305C2766375C2765355C2765645C276564
            5C2765655C276563205C2763375C2765305C2765615C2765305C2765375C2766
            375C2765385C2765615C2765655C2765632C205C2766315C2765345C2765305C
            2766325C276663205C2766305C2765355C2765375C2766335C2765625C276663
            5C2766325C2765305C276632205C2766305C2765305C2765315C2765655C2766
            325C27666220205C2763375C2765305C2765615C2765305C2765375C2766375C
            2765385C2765615C2766332C20205C27653020205C2763375C2765305C276561
            5C2765305C2765375C2766375C2765385C27656120205C2765655C2765315C27
            66665C2765375C2766335C2765355C2766325C2766315C2766662020205C2765
            665C2766305C2765385C2765645C2766665C2766325C276663205C2766305C27
            65355C2765375C2766335C2765625C2766635C2766325C2765305C276632205C
            2766305C2765305C2765315C2765655C2766325C276662205C276538205C2765
            655C2765665C2765625C2765305C2766325C2765385C2766325C276663205C27
            65355C2765335C2765652E5C7061720D0A322E205C2763305C2765345C276630
            5C2765355C2766315C276530205C2765655C2765315C2766615C2765355C2765
            615C2766325C2765655C2765323A5C66335C6C616E6731303333205B76617241
            6472576F726B5D5C66305C6C616E67313034395C7061720D0A332E205C276362
            5C2765655C2765615C2765305C2765625C2766635C2765645C2766625C276535
            205C2766315C2765635C2765355C2766325C2766623A205C276239205C66335C
            6C616E6731303333205B7661724E43414C435D5C7061720D0A342E205C66305C
            6C616E67313034395C2763615C2765305C2765625C2766635C2765615C276633
            5C2765625C2766665C2766365C2765385C2766663A205C66335C6C616E673130
            3333205B76617243414C435D5C66305C6C616E67313034395C7061720D0A5C66
            335C6C616E673130333320355C66305C6C616E6731303439202E205C2763645C
            2765305C2766375C2765305C2765625C276565205C2766305C2765305C276531
            5C2765655C2766323A205C66335C6C616E6731303333205B766172426567696E
            576F726B5D5C66305C6C616E673130343920205C2765332E2020202020202020
            2020202020202020202020205C7061720D0A5C2763665C2766305C2765655C27
            65635C2765355C2765365C2766335C2766325C2765655C2766375C2765645C27
            66625C276535205C2766645C2766325C2765305C2765665C2766622C205C2766
            315C2766305C2765655C2765615C276538205C2765325C2766625C2765665C27
            65655C2765625C2765645C2765355C2765645C2765385C276666205C2766305C
            2765305C2765315C2765655C276632205C276538205C2765385C276635205C27
            65665C2765355C2766305C2765355C2766375C2765355C2765645C276663205F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5C7061720D0A5C66335C6C616E673130333320365C66305C
            6C616E6731303439202E5C2763655C2765615C2765655C2765645C2766375C27
            65305C2765645C2765385C276535205C2766305C2765305C2765315C2765655C
            2766323A205C66335C6C616E6731303333205B766172456E64576F726B5D5C66
            305C6C616E673130343920205C2765332E202020202020202020202020202020
            2020202020205C7061720D0A5C66335C6C616E673130333320375C66305C6C61
            6E6731303439202E205C2764315C2766325C2765655C2765385C2765635C2765
            655C2766315C2766325C276663205C2766305C2765305C2765315C2765655C27
            66323A205C66335C6C616E6731303333205B76617253756D5D5C66305C6C616E
            67313034395C7061720D0A5C66335C6C616E673130333320385C66305C6C616E
            6731303439202E205C2763335C2765305C2766305C2765305C2765645C276632
            5C2765385C2765395C2765645C2766625C276539205C2766315C2766305C2765
            655C276561205C2765325C2766625C2765665C2765655C2765625C2765645C27
            65355C2765645C2765645C2766625C276635205C2766305C2765305C2765315C
            2765655C2766323A205C66335C6C616E6731303333205B766172476172616E74
            5D5C66305C6C616E673130343920205C7061720D0A5C66335C6C616E67313033
            3320395C66305C6C616E6731303439202E205C276431205C2765635C2765655C
            2765635C2765355C2765645C2766325C276530205C2765665C2765655C276534
            5C2765665C2765385C2766315C2765305C2765645C2765385C276666205C2766
            315C2766325C2765655C2766305C2765655C2765645C2765305C2765635C2765
            38205C2765345C2765305C2765645C2765645C2765655C2765335C276565205C
            2765345C2765655C2765665C2765655C2765625C2765645C2765385C2766325C
            2765355C2765625C2766635C2765645C2765655C2765335C276565205C276631
            5C2765655C2765335C2765625C2765305C2766385C2765355C2765645C276538
            5C276666205C2763665C2765655C2765345C2766305C2766665C2765345C2766
            375C2765385C2765615C276633205C2765645C2765355C2765655C2765315C27
            66355C2765655C2765345C2765385C2765635C276565205C2765665C2766305C
            2765355C2765345C2765655C2766315C2766325C2765305C2765325C2765385C
            2766325C276663205C2765335C2766305C2765305C2766345C2765385C276561
            205C2765665C2766305C2765655C2765325C2765355C2765345C2765355C2765
            645C2765385C276666205C2766305C2765305C2765315C2765655C276632205C
            2766315C2765655C2765335C2765625C2765305C2766315C2765645C27656520
            5C2765305C2765345C2766305C2765355C2766315C2765645C2765655C276533
            5C276565205C2766315C2765665C2765385C2766315C2765615C276530205C27
            6532205C2766325C2765355C2766375C2765355C2765645C2765385C27653520
            332D5C276635205C2765345C2765645C2765355C2765392E5C7061720D0A5C27
            63665C2766305C2765385C2765625C2765655C2765365C2765355C2765645C27
            65385C2765353A5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F205C7061720D0A
            5C7061720D0A0D0A5C706172645C72692D3736365C625C7061720D0A0D0A5C70
            6172645C72692D3736365C716A5C62305C7061720D0A0D0A5C706172645C6634
            5C7061720D0A0D0A5C706172645C72692D3736365C71635C625C66305C706172
            0D0A0D0A5C706172645C62305C66345C667332345C7061720D0A7D0D0A00}
        end
        object Rich1: TfrxRichView
          ShiftMode = smWhenOverlapped
          Top = 374.173470000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AllowExpressions = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C66726F6D616E5C66707271325C66636861727365743230347B5C2A5C666E
            616D652054696D6573204E657720526F6D616E3B7D54696D6573204E65772052
            6F6D616E204359523B7D7B5C66315C666E696C5C666368617273657432303420
            5461686F6D613B7D7D0D0A7B5C2A5C67656E657261746F722052696368656432
            3020362E332E393630307D5C766965776B696E64345C756331200D0A5C706172
            645C72692D3736365C71635C625C66305C6673323020392E205C2764305C2765
            355C2765615C2765325C2765385C2765375C2765385C2766325C276662205C27
            6538205C2765665C2765655C2765345C2765665C2765385C2766315C27653820
            5C2766315C2766325C2765655C2766305C2765655C2765645C7061720D0A0D0A
            5C706172645C62305C66315C667331365C7061720D0A7D0D0A00}
        end
        object Rich3: TfrxRichView
          Align = baLeft
          ShiftMode = smWhenOverlapped
          Top = 394.086890000000000000
          Width = 302.362400000000000000
          Height = 188.976500000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C66726F6D616E5C66707271325C66636861727365743230347B5C2A5C666E
            616D652054696D6573204E657720526F6D616E3B7D54696D6573204E65772052
            6F6D616E204359523B7D7B5C66315C66726F6D616E5C66707271325C66636861
            72736574302054696D6573204E657720526F6D616E3B7D7B5C66325C666E696C
            5C6663686172736574323034205461686F6D613B7D7D0D0A7B5C2A5C67656E65
            7261746F7220526963686564323020362E332E393630307D5C766965776B696E
            64345C756331200D0A5C706172645C625C66305C667332345C2763375C276530
            5C2765615C2765305C2765375C2766375C2765385C2765613A205C6230202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020205C7061720D0A0D0A5C
            706172645C72692D3736365C66315C6C616E6731303333205B76617244657A49
            6E666F5D5C66325C667331365C6C616E67313034395C7061720D0A7D0D0A00}
        end
        object Rich7: TfrxRichView
          Align = baRight
          ShiftMode = smWhenOverlapped
          Left = 419.527829999999900000
          Top = 394.307360000000000000
          Width = 298.582870000000000000
          Height = 188.976500000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C66726F6D616E5C66707271325C66636861727365743230347B5C2A5C666E
            616D652054696D6573204E657720526F6D616E3B7D54696D6573204E65772052
            6F6D616E204359523B7D7B5C66315C66726F6D616E5C66707271325C66636861
            72736574302054696D6573204E657720526F6D616E3B7D7B5C66325C666E696C
            5C6663686172736574323034205461686F6D613B7D7D0D0A7B5C2A5C67656E65
            7261746F7220526963686564323020362E332E393630307D5C766965776B696E
            64345C756331200D0A5C706172645C625C66305C667332345C2763665C276565
            5C2765345C2766305C2766665C2765345C2766375C2765385C2765613A202020
            5C62302020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020205C7061720D
            0A0D0A5C706172645C72692D3736365C66315C6C616E6731303333205B766172
            504F496E666F5D5C66325C667331365C6C616E67313034395C7061720D0A7D0D
            0A00}
        end
        object Rich6: TfrxRichView
          ShiftMode = smWhenOverlapped
          Top = 585.827150000000000000
          Width = 718.110700000000000000
          Height = 154.960730000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C66726F6D616E5C66707271325C66636861727365743230347B5C2A5C666E
            616D652054696D6573204E657720526F6D616E3B7D54696D6573204E65772052
            6F6D616E204359523B7D7B5C66315C66726F6D616E5C66707271325C66636861
            72736574302054696D6573204E657720526F6D616E3B7D7B5C66325C666E696C
            5C6663686172736574323034205461686F6D613B7D7D0D0A7B5C636F6C6F7274
            626C203B5C726564305C677265656E305C626C7565303B7D0D0A7B5C2A5C6765
            6E657261746F7220526963686564323020362E332E393630307D5C766965776B
            696E64345C756331200D0A5C706172645C72692D3736365C716A5C625C66305C
            667332305C2763665C2765655C2765345C2765665C2765385C2766315C276538
            205C2766315C2766325C2765655C2766305C2765655C2765643A5C7061720D0A
            5C62305C7061720D0A5C7061720D0A5C7061720D0A5C625C2763375C2765305C
            2765615C2765305C2765375C2766375C2765385C276561202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020205C2763665C2765655C2765345C27
            66305C2766665C2765345C2766375C2765385C2765615C7061720D0A20202020
            2020202020202020205C7061720D0A5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F205C66315C6C616E6731303333205B76617244657A4469725D5C6630
            5C6C616E673130343920202020202020205C62302020205C6220202020202020
            202020202020202020202020202020202020202020205F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F205C66315C6C616E6731303333205B766172446972
            5D5C66305C6C616E67313034395C7061720D0A5C62305C2765632E5C2765662E
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020205C66315C6C616E67313033332020205C66305C6C616E67313034395C27
            65632E5C2765662E2020205C7061720D0A0D0A5C706172645C66325C66733136
            5C7061720D0A5C6366315C7061720D0A7D0D0A00}
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 155.385900000000000000
        Top = 823.937540000000000000
        Width = 718.110700000000000000
        Stretched = True
      end
    end
  end
  object frFib1: TfrxFIBComponents
    DefaultDatabase = cmDb.DB
    Left = 536
    Top = 288
  end
  object wExp1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 576
    Top = 288
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
    ImageOptions.Images = cmDb.iml1
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    SunkenBorder = True
    UseSystemFont = True
    Left = 536
    Top = 384
    DockControlHeights = (
      0
      0
      31
      0)
    object br1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = docm1
      DockedDockControl = docm1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1008
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_addCalc'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_editCalc'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_DelCalc'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'itm1'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object br2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 1008
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          UserDefine = [udWidth]
          UserWidth = 325
          Visible = True
          ItemName = 'cbb_Firm'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Load'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object brbm1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockControl = doc1
      DockedDockControl = doc1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1008
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'sItem1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Prov'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btn_addCalc: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1072#1083#1100#1082#1091#1083#1103#1094#1080#1102
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1072#1083#1100#1082#1091#1083#1103#1094#1080#1102
      Visible = ivAlways
      ImageIndex = 0
      OnClick = btn_addCalcClick
    end
    object btn_editCalc: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1082#1072#1083#1100#1082#1091#1083#1103#1094#1080#1102
      Category = 0
      Enabled = False
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1082#1072#1083#1100#1082#1091#1083#1103#1094#1080#1102
      Visible = ivAlways
      ImageIndex = 1
      OnClick = btn_editCalcClick
    end
    object btn_DelCalc: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1082#1072#1083#1100#1082#1091#1083#1103#1094#1080#1102
      Category = 0
      Enabled = False
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1082#1072#1083#1100#1082#1091#1083#1103#1094#1080#1102
      Visible = ivAlways
      ImageIndex = 2
      OnClick = btn_DelCalcClick
    end
    object itm1: TcxBarEditItem
      Align = iaClient
      Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1094#1080#1103
      Category = 0
      Hint = #1050#1072#1083#1100#1082#1091#1083#1103#1094#1080#1103
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxLabelProperties'
      Properties.Alignment.Horz = taCenter
    end
    object cbb_Firm: TcxBarEditItem
      Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      Category = 0
      Hint = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxLookupComboBoxProperties'
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
      Properties.OnEditValueChanged = cbb_FirmPropertiesEditValueChanged
    end
    object btn_Load: TdxBarButton
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      Category = 0
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
      OnClick = btn_LoadClick
    end
    object sItem1: TdxBarSubItem
      Caption = #1055#1077#1095#1072#1090#1100
      Category = 0
      Visible = ivAlways
      ImageIndex = 3
      AllowCustomizing = False
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_PrintNds'
        end
        item
          Visible = True
          ItemName = 'btn_PrintNoNds'
        end>
      ItemOptions.ShowDescriptions = False
    end
    object btn_PrintNds: TdxBarButton
      Caption = #1053#1044#1057
      Category = 0
      Hint = #1053#1044#1057
      Visible = ivAlways
      OnClick = btn_PrintNdsClick
    end
    object btn_PrintNoNds: TdxBarButton
      Caption = #1041#1077#1079' '#1053#1044#1057
      Category = 0
      Hint = #1041#1077#1079' '#1053#1044#1057
      Visible = ivAlways
      OnClick = btn_PrintNoNdsClick
    end
    object btn_Prov: TdxBarButton
      Align = iaRight
      Caption = #1059#1090#1074#1077#1088#1076#1080#1090#1100
      Category = 0
      Hint = #1059#1090#1074#1077#1088#1076#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 33
      PaintStyle = psCaptionGlyph
      OnClick = btn_ProvClick
    end
  end
end
