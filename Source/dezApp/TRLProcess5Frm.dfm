object TRLProcess5Form: TTRLProcess5Form
  Left = 0
  Top = 0
  HelpContext = 115
  Caption = #1050#1086#1085#1090#1088#1086#1083#1100' '#1093#1086#1076#1072' '#1088#1072#1073#1086#1090' ('#1051#1080#1092#1090')'
  ClientHeight = 701
  ClientWidth = 879
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
    Width = 879
    Height = 701
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object grd1: TcxGrid
      Left = 13
      Top = 115
      Width = 388
      Height = 163
      TabOrder = 5
      LockedStateImageOptions.Effect = lsieLight
      LockedStateImageOptions.ShowText = True
      LockedStateImageOptions.Text = #1055#1086#1078#1072#1083#1091#1081#1089#1090#1072' '#1087#1086#1076#1086#1078#1076#1080#1090#1077'...'
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
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          Options.Editing = False
        end
        object clv1STATE: TcxGridDBColumn
          AlternateCaption = #1089#1090#1072#1090#1091#1089
          Caption = #1089#1090#1072#1090#1091#1089
          DataBinding.FieldName = 'STATE'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = clv1STATEPropertiesEditValueChanged
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
          Options.Editing = False
          Options.ShowCaption = False
          Width = 25
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1053#1086#1084#1077#1088
          DataBinding.FieldName = 'NOMER'
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Width = 53
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
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Width = 90
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
          Caption = #1044#1072#1090#1072' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103
          DataBinding.FieldName = 'D2'
          Options.Editing = False
          Width = 78
        end
        object clv1LSTATE: TcxGridDBColumn
          DataBinding.FieldName = 'LSTATE'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 23
      Top = 346
      Width = 368
      Height = 310
      TabOrder = 7
      LockedStateImageOptions.Effect = lsieLight
      LockedStateImageOptions.ShowText = True
      LockedStateImageOptions.Text = #1055#1086#1078#1072#1083#1091#1081#1089#1090#1072' '#1087#1086#1076#1086#1078#1076#1080#1090#1077'...'
      object v2: TcxGridDBTableView
        OnKeyUp = v2KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v2CellClick
        DataController.DataSource = src_TRDOPSOG
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = clv2NSumma
          end
          item
            Kind = skSum
            Column = clv2SUMMA
          end
          item
            Kind = skCount
            Column = clv2SNAME
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
        object clv2CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          Options.Editing = False
        end
        object clv2TRFACT: TcxGridDBColumn
          DataBinding.FieldName = 'TRLFACT'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv2MLIST: TcxGridDBColumn
          DataBinding.FieldName = 'MLIST'
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
        object clv2STATE: TcxGridDBColumn
          AlternateCaption = #1089#1090#1072#1090#1091#1089
          Caption = #1089#1090#1072#1090#1091#1089
          DataBinding.FieldName = 'STATE'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.FullFocusRect = True
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnChange = clv2STATEPropertiesChange
          Properties.OnEditValueChanged = clv2STATEPropertiesEditValueChanged
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
          Options.Editing = False
          Options.ShowCaption = False
          Width = 25
        end
        object clv2SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Options.Editing = False
          Width = 140
        end
        object clv2NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Options.Editing = False
          Width = 32
        end
        object clv2MNAME: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'MNAME'
          Options.Editing = False
          Width = 132
        end
        object clv2HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv2SUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1088#1072#1073#1086#1090' ('#1092#1072#1082#1090')'
          DataBinding.FieldName = 'SUMMA'
          Options.Editing = False
          Width = 77
        end
        object clv2TRDOP: TcxGridDBColumn
          DataBinding.FieldName = 'TRLDOP'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv2D1: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
          DataBinding.FieldName = 'D1'
          Visible = False
          Options.Editing = False
          Width = 75
        end
        object clv2D2: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103
          DataBinding.FieldName = 'D2'
          Visible = False
          Options.Editing = False
          Width = 75
        end
        object clv2NSumma: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1087#1086' '#1089#1084#1077#1090#1077
          DataBinding.FieldName = 'NSumma'
          Options.Editing = False
          Width = 98
        end
        object clv2DATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'DATA'
          Visible = False
          Width = 102
        end
        object clv2ZD: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'ZD'
          Width = 111
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object grd3: TcxGrid
      Left = 429
      Top = 115
      Width = 437
      Height = 334
      TabOrder = 9
      LockedStateImageOptions.Effect = lsieDark
      LockedStateImageOptions.ShowText = True
      LockedStateImageOptions.Text = #1055#1086#1078#1072#1083#1091#1081#1089#1090#1072' '#1087#1086#1076#1086#1078#1076#1080#1090#1077'...'
      object v3: TcxGridDBTableView
        OnKeyUp = v3KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v3CellClick
        DataController.DataSource = src_TRPREDP
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsBehavior.PullFocusing = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object clv3CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          Options.Editing = False
        end
        object clv3TRFACT: TcxGridDBColumn
          DataBinding.FieldName = 'TRLFACT'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv3NOMER: TcxGridDBColumn
          Caption = #1053#1086#1084#1077#1088' '#1072#1082#1090#1072', '#1076#1086#1082'-'#1090#1072
          DataBinding.FieldName = 'NOMER'
          Options.Editing = False
          Width = 85
        end
        object clv3DTYPENAME: TcxGridDBColumn
          Caption = #1058#1080#1087
          DataBinding.FieldName = 'DTYPENAME'
          Options.Editing = False
          Width = 85
        end
        object clv3DATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
          DataBinding.FieldName = 'DATA'
          Options.Editing = False
        end
        object clv3DTYPE: TcxGridDBColumn
          Caption = #1058#1080#1087
          DataBinding.FieldName = 'DTYPE'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
          Width = 85
        end
        object clv3NOTE: TcxGridDBColumn
          Caption = #1047#1072#1084#1077#1095#1072#1085#1080#1103' '#1080' '#1085#1077#1076#1086#1089#1090#1072#1090#1082#1080
          DataBinding.FieldName = 'NOTE'
          Options.Editing = False
          Width = 168
        end
      end
      object l3: TcxGridLevel
        GridView = v3
      end
    end
    object dt1: TcxDateEdit
      Left = 322
      Top = 49
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cbb_state: TcxComboBox
      Left = 588
      Top = 49
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        #1074' '#1088#1072#1073#1086#1090#1077
        #1079#1072#1074#1077#1088#1096#1077#1085#1086
        #1074#1089#1077)
      Style.HotTrack = False
      TabOrder = 3
      Text = #1074' '#1088#1072#1073#1086#1090#1077
      Width = 121
    end
    object btn_apply: TcxButton
      Left = 710
      Top = 45
      Width = 110
      Height = 25
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      OptionsImage.ImageIndex = 9
      OptionsImage.Images = cmDb.iml1
      TabOrder = 4
      OnClick = btn_applyClick
    end
    object msk_num: TcxMaskEdit
      Left = 557
      Top = 477
      Style.HotTrack = False
      TabOrder = 10
      Width = 146
    end
    object dt2: TcxDateEdit
      Left = 557
      Top = 499
      Style.HotTrack = False
      TabOrder = 11
      Width = 146
    end
    object cbb_type: TcxComboBox
      Left = 557
      Top = 521
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        #1072#1082#1090' '#1089#1082#1088#1099#1090#1099#1093' '#1088#1072#1073#1086#1090
        #1072#1082#1090' '#1087#1088#1086#1074#1077#1088#1082#1080' '#1082#1072#1095#1077#1089#1090#1074#1072)
      Style.HotTrack = False
      TabOrder = 12
      Text = #1072#1082#1090' '#1089#1082#1088#1099#1090#1099#1093' '#1088#1072#1073#1086#1090
      Width = 146
    end
    object m_note: TcxMemo
      Left = 439
      Top = 558
      Style.HotTrack = False
      TabOrder = 13
      Height = 64
      Width = 417
    end
    object btn_save: TcxButton
      Left = 439
      Top = 623
      Width = 111
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
      TabOrder = 14
      OnClick = btn_saveClick
    end
    object btn_edit: TcxButton
      Left = 551
      Top = 623
      Width = 111
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
      TabOrder = 15
      OnClick = btn_editClick
    end
    object btn_delete: TcxButton
      Left = 663
      Top = 623
      Width = 111
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
      TabOrder = 16
      OnClick = btn_deleteClick
    end
    object dt3: TcxDateEdit
      Left = 466
      Top = 49
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object dt4: TcxDateEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 17
      Visible = False
      Width = 121
    end
    object doc_Dop: TdxBarDockControl
      Left = 13
      Top = 279
      Width = 388
      Height = 28
      Align = dalTop
      BarManager = bar1
      SunkenBorder = True
      UseOwnSunkenBorder = True
    end
    object doc_Work: TdxBarDockControl
      Left = 23
      Top = 646
      Width = 368
      Height = 26
      Align = dalTop
      BarManager = bar1
    end
    object cbb_Firm: TcxLookupComboBox
      Left = 13
      Top = 49
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
      Style.HotTrack = False
      TabOrder = 0
      Width = 308
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grlc1Group5: TdxLayoutGroup
      CaptionOptions.Text = #1060#1080#1083#1100#1090#1088
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 53
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object itm_dt1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103' '#1076#1086#1082#1091#1084#1077#1085#1090#1072' '#1089
      CaptionOptions.Layout = clTop
      Parent = grlc1Group5
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_dt3: TdxLayoutItem
      CaptionOptions.Text = ' '#1087#1086
      CaptionOptions.Layout = clTop
      Parent = grlc1Group5
      Control = dt3
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_state: TdxLayoutItem
      CaptionOptions.Text = #1089#1090#1072#1090#1091#1089' '
      CaptionOptions.Layout = clTop
      Parent = grlc1Group5
      Control = cbb_state
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_apply: TdxLayoutItem
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group5
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 110
      Control = btn_apply
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object grlc1Group7: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object grlc1Group1: TdxLayoutGroup
      CaptionOptions.Text = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086#1077' '#1089#1086#1075#1083#1072#1096#1077#1085#1080#1077
      Parent = grlc1Group7
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 408
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object grlc1Group10: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grlc1Group1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grlc1Group10
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = False
      SizeOptions.Height = 163
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object spl2: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grlc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object grlc1Group2: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = #1057#1087#1080#1089#1086#1082' '#1088#1072#1073#1086#1090
      Parent = grlc1Group1
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object itm_2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grlc1Group2
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object spl1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grlc1Group7
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object grlc1Group3: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1040#1082#1090#1099', '#1079#1072#1084#1077#1095#1072#1085#1080#1103
      Parent = grlc1Group7
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
    object spl3: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grlc1Group3
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object grlc1Group4: TdxLayoutGroup
      CaptionOptions.Text = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1072#1082#1090#1086#1074' '#1087#1088#1077#1076#1087#1080#1089#1072#1085#1080#1103
      Parent = grlc1Group3
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 239
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 2
    end
    object itm_num: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1053#1086#1084#1077#1088' '#1072#1082#1090#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      Parent = grlc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 264
      Control = msk_num
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_dt2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1044#1072#1090#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      Parent = grlc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 264
      Control = dt2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_type: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1058#1080#1087
      Parent = grlc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 264
      Control = cbb_type
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_note: TdxLayoutItem
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1047#1072#1084#1077#1095#1072#1085#1080#1103' '#1080' '#1085#1077#1076#1086#1089#1090#1072#1090#1082#1080
      CaptionOptions.Layout = clTop
      Parent = grlc1Group4
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 79
      Control = m_note
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object grlc1Group8: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grlc1Group4
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object itm_save: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group8
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 111
      Control = btn_save
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_edit: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group8
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 111
      Control = btn_edit
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_delete: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group8
      SizeOptions.Width = 111
      Control = btn_delete
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_dt4: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1088#1072#1073#1086#1090
      CaptionOptions.Layout = clTop
      Offsets.Left = 10
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 115
      Control = dt4
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object itm_lc1Item1: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grlc1Group10
      Control = doc_Dop
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_lc1Item11: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grlc1Group2
      Control = doc_Work
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litm_lc1Item1: TdxLayoutItem
      CaptionOptions.Text = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      CaptionOptions.Layout = clTop
      Parent = grlc1Group5
      Control = cbb_Firm
      ControlOptions.ShowBorder = False
      Index = 0
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
      LookAndFeel.NativeStyle = False
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_Firm
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = cbb_state
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = dt1
        Properties.Strings = (
          'EditValue')
      end>
    StorageName = 'prop1'
    Left = 652
    Top = 56
  end
  object ds_TRDOP: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT td.CODE,'
      '       td.NOMER, '
      '       td.DOPDATE, '
      '       td.KONTRAGENT, k.name kName ,'
      '       td.DOG, '
      '       td.D1, '
      '       td.D2, '
      '       td.STATE,'
      '       td.LSTATE, td.FIRM'
      'FROM TRLDOP td'
      'left outer join kontragent k on k.code=td.kontragent')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 56
    Top = 168
  end
  object src_TRDOP: TDataSource
    DataSet = ds_TRDOP
    Left = 88
    Top = 168
  end
  object ds_TRDOPSOG: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT td.CODE, '
      '       td.TRLFACT, tr.mlist, tr.data,'
      '       m.name mName,'
      '       tr.house, h.nomer,'
      '       h.street, s.name sName,'
      '       tr.summa, tr.NSumma,'
      '       td.TRLDOP,'
      '       td.D1, '
      '       td.D2, '
      '       td.STATE,'
      '       tr.ZD'
      'FROM TRLDOPSOG td'
      'left outer join trlfact tr on tr.code=td.trlfact'
      'left outer join mlist m on m.code=tr.mlist'
      'left outer join house h on h.code=tr.house'
      'left outer join street s on s.code=h.street')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 56
    Top = 472
  end
  object src_TRDOPSOG: TDataSource
    DataSet = ds_TRDOPSOG
    Left = 88
    Top = 472
  end
  object ds_TRPREDP: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT tp.CODE, '
      '       tp.TRLFACT, '
      '       tp.NOMER, '
      '       tp.DATA,'
      '       case'
      '         when tp.DTYPE=0 then '#39#1072#1082#1090' '#1089#1082#1088#1099#1090#1099#1093' '#1088#1072#1073#1086#1090#39
      '         when tp.DTYPE=1 then '#39#1072#1082#1090' '#1087#1088#1086#1074#1077#1088#1082#1080' '#1082#1072#1095#1077#1089#1090#1074#1072#39
      '        else '#39#39
      '       end DTYPENAME,'
      '       tp.DTYPE, '
      '       tp.NOTE'
      'FROM TRLPREDP tp')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 408
    Top = 160
  end
  object src_TRPREDP: TDataSource
    DataSet = ds_TRPREDP
    Left = 436
    Top = 160
  end
  object bar1: TdxBarManager
    AlwaysSaveText = True
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
    ImageOptions.Images = cmDb.iml1
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseSystemFont = True
    Left = 544
    Top = 192
    DockControlHeights = (
      0
      0
      0
      0)
    object br_dop: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = doc_Dop
      DockedDockControl = doc_Dop
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 913
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_CloseDop'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_OpenDop'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_ReturnDop'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object br_Work: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = doc_Work
      DockedDockControl = doc_Work
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 913
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_CloseWork'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_OpenWork'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_ChangeSum'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_CloseDop: TdxBarButton
      Caption = #1047#1072#1082#1088#1099#1090#1100' '#1076'.'#1089'.'
      Category = 0
      Enabled = False
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1076#1086#1087'. '#1089#1086#1075#1083#1072#1096#1077#1085#1080#1077
      Visible = ivAlways
      ImageIndex = 14
      PaintStyle = psCaptionGlyph
      OnClick = btn_CloseDopClick
    end
    object btn_OpenDop: TdxBarButton
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1076'.'#1089'.'
      Category = 0
      Enabled = False
      Hint = #1054#1090#1082#1088#1099#1090#1100' '#1076#1086#1087'. '#1089#1086#1075#1083#1072#1096#1077#1085#1080#1077
      Visible = ivAlways
      ImageIndex = 15
      PaintStyle = psCaptionGlyph
      OnClick = btn_OpenDopClick
    end
    object btn_ReturnDop: TdxBarButton
      Align = iaRight
      Caption = #1042#1077#1088#1085#1091#1090#1100' '#1076'.'#1089'.'
      Category = 0
      Enabled = False
      Hint = #1042#1077#1088#1085#1091#1090#1100' '#1076#1086#1087'. '#1089#1086#1075#1083#1072#1096#1077#1085#1080#1077
      Visible = ivAlways
      ImageIndex = 13
      PaintStyle = psCaptionGlyph
      OnClick = btn_ReturnDopClick
    end
    object btn_CloseWork: TdxBarButton
      Caption = #1047#1072#1082#1088#1099#1090#1100' '#1088#1072#1073#1086#1090#1091
      Category = 0
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1088#1072#1073#1086#1090#1091
      Visible = ivAlways
      ImageIndex = 14
      OnClick = btn_CloseWorkClick
    end
    object btn_OpenWork: TdxBarButton
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1088#1072#1073#1086#1090#1091
      Category = 0
      Hint = #1054#1090#1082#1088#1099#1090#1100' '#1088#1072#1073#1086#1090#1091
      Visible = ivAlways
      ImageIndex = 15
      OnClick = btn_OpenWorkClick
    end
    object btn_ChangeSum: TdxBarButton
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1089#1091#1084#1084#1091
      Category = 0
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1089#1091#1084#1084#1091
      Visible = ivAlways
      OnClick = btn_ChangeSumClick
    end
  end
end
