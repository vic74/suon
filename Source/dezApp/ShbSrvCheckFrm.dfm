object ShbSrvCheckForm: TShbSrvCheckForm
  Left = 0
  Top = 0
  Caption = #1059#1089#1083#1091#1075#1080' '#1074' '#1088#1072#1079#1088#1077#1079#1077' '#1052#1050#1044' '#1087#1086' '#1084#1077#1089#1103#1094#1072#1084
  ClientHeight = 564
  ClientWidth = 697
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
    Width = 697
    Height = 564
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object cbb_M: TcxComboBox
      Left = 48
      Top = 12
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        #1103#1085#1074#1072#1088#1100
        #1092#1077#1074#1088#1072#1083#1100
        #1084#1072#1088#1090
        #1072#1087#1088#1077#1083#1100
        #1084#1072#1081
        #1080#1102#1085#1100
        #1080#1102#1083#1100
        #1072#1074#1075#1091#1089#1090
        #1089#1077#1085#1090#1103#1073#1088#1100
        #1086#1082#1090#1103#1073#1088#1100
        #1085#1086#1103#1073#1088#1100
        #1076#1077#1082#1072#1073#1088#1100)
      Style.HotTrack = False
      TabOrder = 0
      Text = #1103#1085#1074#1072#1088#1100
      Width = 121
    end
    object msk_Y: TcxMaskEdit
      Left = 203
      Top = 12
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 1
      Text = '2011'
      Width = 121
    end
    object btn_Exec: TcxButton
      Left = 334
      Top = 12
      Width = 152
      Height = 21
      Caption = #1055#1086#1083#1091#1095#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      OptionsImage.Glyph.Data = {
        72010000424D7201000000000000760000002800000014000000150000000100
        040000000000FC000000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFF0000FFFFFF00FFFFFFFFFFFF0000FFFFFF0B0FFFFFFFFFFF
        0000FFFFFFF0B0FFFFFFFFFF0000FFFFFFF0FB0FFFFFFFFF0000FFFFFFFF0FB0
        FFFFFFFF0000FFFFFF000B000FFFFFFF0000FFFFFFF0BF0FFFFFFFFF0000FFFF
        FFFF0BF0FFFFFFFF0000FFFFFFFF0FBF0FFFFFFF0000FFFFF0000F0000FFFFFF
        0000FFFFFF0BFBF0FFFFFFFF0000FFFFFFF0BFBF0FFFFFFF0000FFFFFFF0FBFB
        F0FFFFFF0000FFFFFFFF0000000FFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000}
      TabOrder = 2
      OnClick = btn_ExecClick
    end
    object grd1: TcxGrid
      Left = 12
      Top = 43
      Width = 250
      Height = 200
      TabOrder = 4
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_m1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
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
        end
        object clv1HOUSE: TcxGridDBColumn
          Caption = #1044#1086#1084'('#1082#1086#1076')'
          DataBinding.FieldName = 'HOUSE'
          Visible = False
        end
        object clv1Flag: TcxGridDBColumn
          DataBinding.FieldName = 'FLAG'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Visible = False
          VisibleForCustomization = False
          Width = 30
          IsCaptionAssigned = True
        end
        object clv1SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Options.Editing = False
          Width = 152
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Options.Editing = False
          Width = 39
        end
        object clv1Y: TcxGridDBColumn
          DataBinding.FieldName = 'Y'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1M: TcxGridDBColumn
          DataBinding.FieldName = 'M'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1F1: TcxGridDBColumn
          Caption = #1042#1099#1074#1086#1079' '#1058#1041#1054
          DataBinding.FieldName = 'F1'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.FullFocusRect = True
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = PostData
          Width = 43
        end
        object clv1F2: TcxGridDBColumn
          Caption = #1059#1073#1086#1088#1082#1072' '#1076#1074#1086#1088#1072
          DataBinding.FieldName = 'F2'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = PostData
          Width = 48
        end
        object clv1F3: TcxGridDBColumn
          Caption = #1059#1073#1086#1088#1082#1072' '#1087#1086#1076#1098#1077#1079#1076#1072
          DataBinding.FieldName = 'F3'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = PostData
          Width = 51
        end
        object clv1F4: TcxGridDBColumn
          DataBinding.FieldName = 'F4'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Visible = False
          VisibleForCustomization = False
          Width = 36
        end
        object v1Column1: TcxGridDBColumn
          Caption = #1054#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077' '#1054#1055#1059
          DataBinding.FieldName = 'F4'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = PostData
          Width = 48
        end
        object clv1F5: TcxGridDBColumn
          Caption = #1043#1072#1079#1086#1074#1086#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'F5'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = PostData
          Width = 54
        end
        object clv1F6: TcxGridDBColumn
          Caption = #1054#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077' '#1080' '#1088#1077#1084#1086#1085#1090
          DataBinding.FieldName = 'F6'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = PostData
          Width = 56
        end
        object clv1F7: TcxGridDBColumn
          DataBinding.FieldName = 'F7'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Visible = False
          VisibleForCustomization = False
          Width = 28
        end
        object clv1F8: TcxGridDBColumn
          Caption = #1051#1080#1092#1090
          DataBinding.FieldName = 'F8'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = PostData
          Width = 37
        end
        object clv1F9: TcxGridDBColumn
          Caption = #1052#1091#1089#1086#1088#1086#1087#1088#1086#1074#1086#1076
          DataBinding.FieldName = 'F9'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = PostData
          Width = 46
        end
        object clv1F11: TcxGridDBColumn
          Caption = #1044#1077#1088#1072#1090#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'F11'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = PostData
          Width = 43
        end
        object clv1F12: TcxGridDBColumn
          Caption = #1059#1073#1086#1088#1082#1072' '#1082#1072#1073#1080#1085#1099' '#1083#1080#1092#1090#1072
          DataBinding.FieldName = 'F12'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = PostData
          Width = 47
        end
        object clv1F13: TcxGridDBColumn
          Caption = #1040#1042#1057
          DataBinding.FieldName = 'F13'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = PostData
          Width = 33
        end
        object clv1F14: TcxGridDBColumn
          Caption = #1051#1044#1057#1057
          DataBinding.FieldName = 'F14'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = PostData
          Width = 40
        end
        object clv1F15: TcxGridDBColumn
          DataBinding.FieldName = 'F15'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Visible = False
          VisibleForCustomization = False
        end
        object clv1F16: TcxGridDBColumn
          DataBinding.FieldName = 'F16'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Visible = False
          VisibleForCustomization = False
        end
        object clv1F17: TcxGridDBColumn
          DataBinding.FieldName = 'F17'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Visible = False
          VisibleForCustomization = False
        end
        object clv1F18: TcxGridDBColumn
          DataBinding.FieldName = 'F18'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Visible = False
          VisibleForCustomization = False
        end
        object clv1F19: TcxGridDBColumn
          DataBinding.FieldName = 'F19'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Visible = False
          VisibleForCustomization = False
        end
        object clv1F20: TcxGridDBColumn
          DataBinding.FieldName = 'F20'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = -1
          Properties.ValueUnchecked = 0
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object cbb_street: TcxLookupComboBox
      Left = 58
      Top = 512
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
      Style.HotTrack = False
      TabOrder = 5
      Width = 213
    end
    object cbb_house: TcxLookupComboBox
      Left = 302
      Top = 512
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
      TabOrder = 6
      Width = 213
    end
    object btn_Add: TcxButton
      Left = 394
      Top = 512
      Width = 100
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '
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
      TabOrder = 7
      OnClick = btn_AddClick
    end
    object btn_del: TcxButton
      Left = 500
      Top = 512
      Width = 100
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
      TabOrder = 8
      OnClick = btn_delClick
    end
    object btn_copy: TcxButton
      Left = 492
      Top = 10
      Width = 158
      Height = 25
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1076#1072#1085#1085#1099#1077
      DropDownMenu = pm1
      Kind = cxbkDropDown
      TabOrder = 3
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grlc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itm_M: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1052#1077#1089#1103#1094
      Parent = grlc1Group1
      Control = cbb_M
      Index = 0
    end
    object itm_Y: TdxLayoutItem
      CaptionOptions.Text = #1043#1086#1076
      Parent = grlc1Group1
      Control = msk_Y
      Index = 1
    end
    object itm_Exec: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 154
      Control = btn_Exec
      Index = 2
    end
    object itm_copy: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 158
      Control = btn_copy
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object grlc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = ' '
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grlc1Group2
      Control = grd1
      Index = 0
    end
    object grlc1Group3: TdxLayoutGroup
      CaptionOptions.Text = '  '
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 62
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object itm_street: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1059#1083#1080#1094#1072
      Parent = grlc1Group3
      Control = cbb_street
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_house: TdxLayoutItem
      CaptionOptions.Text = #1044#1086#1084
      Parent = grlc1Group3
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 111
      Control = cbb_house
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_Add: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group3
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 100
      Control = btn_Add
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_del: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group3
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 100
      Control = btn_del
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 656
    Top = 120
    object lcl1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 628
    Top = 120
  end
  object m1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 112
    Top = 128
  end
  object ds_SHBSRVCHECK: TpFIBDataSet
    SelectSQL.Strings = (
      'select SH.CODE, SH.HOUSE, H.NOMER, S.NAME SNAME, SH.Y, SH.M,'
      '       SH.F1, SH.F2, SH.F3, SH.F4, SH.F5, SH.F6, SH.F7, SH.F8,'
      '       SH.F9, SH.F11, SH.F12, SH.F13, SH.F14, SH.F15, SH.F16,'
      '       SH.F17, SH.F18, SH.F19, SH.F20'
      'from SHBSRVCHECK SH'
      'left outer join HOUSE H on H.CODE = SH.HOUSE'
      'left outer join STREET S on S.CODE = H.STREET')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 168
    Top = 176
  end
  object src_m1: TDataSource
    DataSet = ds_SHBSRVCHECK
    Left = 144
    Top = 128
  end
  object ppm1: TcxGridPopupMenu
    Grid = grd1
    PopupMenus = <
      item
        GridView = v1
        HitTypes = [gvhtCell, gvhtRecord]
        Index = 0
        PopupMenu = pm1
      end>
    AlwaysFireOnPopup = True
    Left = 424
    Top = 200
  end
  object pm1: TPopupMenu
    Images = cmDb.iml1
    Left = 464
    Top = 200
    object N1: TMenuItem
      Caption = #1054#1090#1084#1077#1090#1080#1090#1100' '#1074#1089#1077' '#1079#1072#1087#1080#1089#1080
      ImageIndex = 5
      Visible = False
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1057#1085#1103#1090#1100' '#1074#1089#1077' '#1086#1090#1084#1077#1090#1082#1080
      ImageIndex = 6
      Visible = False
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object N4: TMenuItem
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1085#1072' '#1089#1083#1077#1076#1091#1102#1097#1080#1081' '#1084#1077#1089#1103#1094
      ImageIndex = 7
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1085#1072' '#1091#1082#1072#1079#1072#1085#1085#1099#1081' '#1084#1077#1089#1103#1094
      ImageIndex = 8
      OnClick = N5Click
    end
  end
  object src_HOUSE: TDataSource
    DataSet = ds_HOUSE
    Left = 560
    Top = 496
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
    Left = 528
    Top = 496
    poApplyRepositary = True
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
    Top = 496
    poApplyRepositary = True
  end
  object src_STREET: TDataSource
    DataSet = ds_STREET
    Left = 632
    Top = 496
  end
end
