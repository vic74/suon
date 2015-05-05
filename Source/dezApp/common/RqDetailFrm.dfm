object RqDetailForm: TRqDetailForm
  Left = 0
  Top = 0
  Caption = #1047#1072#1103#1074#1082#1072' '#8470' '
  ClientHeight = 624
  ClientWidth = 809
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 809
    Height = 624
    Align = alClient
    TabOrder = 0
    object doc1: TdxBarDockControl
      Left = 10
      Top = 588
      Width = 789
      Height = 26
      Align = dalTop
      BarManager = BarManager1
    end
    object grd1: TcxGrid
      Left = 10
      Top = 10
      Width = 789
      Height = 227
      TabOrder = 0
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCustomDrawCell = v1CustomDrawCell
        DataController.DataSource = src_Detail
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv1ID: TcxGridDBColumn
          Caption = 'Id'
          DataBinding.FieldName = 'ID'
          Width = 55
        end
        object clv1Data: TcxGridDBColumn
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = 'Data'
          Width = 119
        end
        object clv1Status: TcxGridDBColumn
          DataBinding.FieldName = 'Status'
          Visible = False
        end
        object clv1StatusName: TcxGridDBColumn
          Caption = #1042#1080#1076
          DataBinding.FieldName = 'StatusName'
          Width = 111
        end
        object clv1USR: TcxGridDBColumn
          DataBinding.FieldName = 'USR'
          Visible = False
        end
        object clv1USERNAME: TcxGridDBColumn
          Caption = #1044#1086#1073#1072#1074#1080#1083
          DataBinding.FieldName = 'USERNAME'
          Width = 125
        end
        object clv1NOTE: TcxGridDBColumn
          Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
          DataBinding.FieldName = 'NOTE'
          Width = 361
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object dt1: TcxDateEdit
      Left = 126
      Top = 296
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 101
    end
    object tm1: TcxTimeEdit
      Left = 233
      Top = 296
      EditValue = 0d
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Width = 71
    end
    object chk_ABC: TcxCheckBox
      Left = 22
      Top = 323
      Caption = #1042#1099#1077#1079#1076' '#1040#1042#1057':'
      Properties.Alignment = taRightJustify
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Transparent = True
      Width = 139
    end
    object cbb_Kontr: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 24
      Visible = False
      Width = 227
    end
    object cbb_User: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 23
      Visible = False
      Width = 227
    end
    object txt_Phone: TcxTextEdit
      Left = 10000
      Top = 10000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 22
      Visible = False
      Width = 112
    end
    object mmo_Note: TcxMemo
      Left = 10
      Top = 518
      PopupMenu = pm1
      Properties.OnEditValueChanged = mmo_NotePropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Height = 64
      Width = 356
    end
    object grd2: TcxGrid
      Left = 386
      Top = 265
      Width = 399
      Height = 271
      TabOrder = 12
      object v2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_mat
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv2WORKSPECLIST: TcxGridDBColumn
          DataBinding.FieldName = 'WORKSPECLIST'
          Visible = False
        end
        object clv2DATA: TcxGridDBColumn
          DataBinding.FieldName = 'DATA'
          Visible = False
        end
        object clv2KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
        end
        object clv2SERVISWORK: TcxGridDBColumn
          DataBinding.FieldName = 'SERVISWORK'
          Visible = False
        end
        object clv2HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
        end
        object clv2CLASSMAT: TcxGridDBColumn
          DataBinding.FieldName = 'CLASSMAT'
          Visible = False
        end
        object clv2FULLNAME: TcxGridDBColumn
          Caption = #1052#1072#1090#1077#1088#1080#1072#1083
          DataBinding.FieldName = 'FULLNAME'
          Width = 152
        end
        object clv2QUANTITY: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086
          DataBinding.FieldName = 'QUANTITY'
          Width = 46
        end
        object clv2PRICE: TcxGridDBColumn
          Caption = #1062#1077#1085#1072
          DataBinding.FieldName = 'PRICE'
          Width = 60
        end
        object clv2NOTE: TcxGridDBColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          DataBinding.FieldName = 'NOTE'
          Width = 106
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object doc2: TdxBarDockControl
      Left = 386
      Top = 542
      Width = 399
      Height = 26
      Align = dalTop
      BarManager = BarManager1
    end
    object cbb_mat: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_smat
      Properties.OnChange = cbb_matPropertiesChange
      Properties.OnEditValueChanged = cbb_matPropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 14
      Visible = False
      Width = 284
    end
    object spn_Kol: TcxSpinEdit
      Left = 10000
      Top = 10000
      Properties.ImmediatePost = True
      Properties.ValueType = vtFloat
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 16
      Visible = False
      Width = 92
    end
    object txt_ed: TcxTextEdit
      Left = 10000
      Top = 10000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Visible = False
      Width = 49
    end
    object mmo_note1: TcxMemo
      Left = 10000
      Top = 10000
      Properties.ClearKey = 46
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      Visible = False
      Height = 156
      Width = 382
    end
    object btn_mat: TcxButton
      Left = 10000
      Top = 10000
      Width = 27
      Height = 21
      Hint = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074
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
      TabOrder = 15
      Visible = False
      OnClick = btn_matClick
    end
    object doc3: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 382
      Height = 26
      Align = dalTop
      BarManager = BarManager1
      Visible = False
    end
    object cbb_work: TcxLookupComboBox
      Left = 80
      Top = 368
      Properties.DropDownHeight = 150
      Properties.DropDownSizeable = True
      Properties.DropDownWidth = 250
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
      Properties.ListSource = src_serviswork
      Properties.OnChange = cbb_workPropertiesChange
      Properties.OnEditValueChanged = cbb_workPropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 219
    end
    object btn_w: TcxButton
      Left = 305
      Top = 368
      Width = 35
      Height = 21
      Hint = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1088#1072#1073#1086#1090
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1088#1072#1073#1086#1090
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000010101010101010101010101000000000107040B0109050F010A050F010A
        050F010A050F010B060F010B060F0108040B0000000000000000000000000000
        000084AD96CFD1EDDDFFD1F1DFFF183E294A72AC8CDDC3E5D2FFC4E7D3FFC4E9
        D4FFC4EAD5FFC4ECD6FFC4EED6FF69B58ACF0000000000000000000000000000
        000086AE98CFD4EEE0FFD4F2E1FF183E294A74AD8EDEC6E7D5FFC7E8D5FFC7EA
        D6FFC7EBD7FFC7EDD8FFC7EED8FF6AB68CD00000000000000000000000000000
        000002130A21021B0D2A021E0F2A0108040B0220103803291446032B1546032D
        1646032F17460331184603331946032713340000000000000000000000000000
        00009BB8A7D0F5FBF7FFF5FBF8FF1C3F2C4B86B69CDEE7F4EDFFE7F5EDFFE7F6
        EEFFE7F6EEFFE7F7EEFFE7F8EFFF7BBB97D00000000000000000000000000000
        00006F9580B4AFCCBCDEAFCFBDDE153523405E9978CAA1CBB4EBA1CEB5EBA1CF
        B6EBA1D1B6EBA1D4B7EBA1D6B9EB57A379BD0000000000000000000000000000
        000041604E7866837294668674940C22162A34644A8B58836BA259856CA25987
        6DA259896EA2598B6FA25A8D70A2306D4B820000000000000000000000000000
        0000A2BBACD0FFFFFFFFFFFFFFFF1D402C4B94BCA6DEFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF87BE9FD00000000000000000000000000000
        00002946365C41614F7342645173081A10201F50357834684B8F346B4C8F346D
        4D8F34704F8F3472508F3575518F1D5B39700000000000000000000000000000
        000086AE98CFD4EEE0FFD4F2E1FF183E294A74AD8EDEC6E7D5FFC7E8D5FFC7EA
        D6FFC7EBD7FFC7EDD8FFC7EED8FF6AB68CD00000000000000000000000000000
        000084AD96CFD1EDDDFFD1F1DFFF183E294A72AC8CDDC3E5D2FFC4E7D3FFC4E9
        D4FFC4EAD5FFC4ECD6FFC4EED6FF69B58ACF0000000000000000000000000000
        0000010101010101010101010101000000000107040B0109050F010A050F010A
        050F010A050F010B060F010B060F0108040B0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      PaintStyle = bpsGlyph
      TabOrder = 10
      OnClick = btn_wClick
    end
    object spn_col: TcxSpinEdit
      Left = 80
      Top = 449
      Properties.ValueType = vtFloat
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 8
      Width = 74
    end
    object txt_wed: TcxTextEdit
      Left = 80
      Top = 422
      TabStop = False
      Properties.ReadOnly = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 74
    end
    object cedt_price: TcxCalcEdit
      Left = 10000
      Top = 10000
      EditValue = 0.000000000000000000
      Properties.ImmediatePost = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 18
      Visible = False
      Width = 121
    end
    object ced_wprice: TcxCalcEdit
      Left = 191
      Top = 449
      EditValue = 0.000000000000000000
      Properties.ImmediatePost = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Width = 89
    end
    object chk_AddWork: TcxCheckBox
      Left = 34
      Top = 395
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1072#1079#1074#1072#1085#1080#1077' '#1088#1072#1073'o'#1090#1099' '#1074' '#1082#1086#1084#1077#1085#1090#1072#1088#1080#1081
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      State = cbsChecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Transparent = True
      Width = 265
    end
    object lbl1: TcxLabel
      Left = 24
      Top = 271
      Caption = #1044#1086#1087#1091#1089#1090#1080#1084#1099#1081' '#1087#1077#1088#1080#1086#1076' '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object lgrp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 2
      ShowBorder = False
      Index = -1
    end
    object lgrpLControl1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = lgrp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object lgrpLControl1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1054#1090#1084#1077#1090#1080#1090#1100' '#1082#1072#1082' '#1074#1099#1087#1086#1083#1085#1077#1085#1085#1091#1102
      Parent = lgrpLControl1Group8
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object splLControl1SplitterItem1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = lgrp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object LItemLControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = lgrp1
      Control = doc1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LItemLControl1Item11: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item12: TdxLayoutItem
      CaptionOptions.Text = #1042#1088#1077#1084#1103' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103':'
      Parent = lgrpLControl1Group3
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 205
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item13: TdxLayoutItem
      CaptionOptions.Text = 'cxTimeEdit1'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group3
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 71
      Control = tm1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lgrpLControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lgrpLControl1Group2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object LItemLControl1Item14: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group2
      Control = chk_ABC
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LItemLControl1Item15: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103':'
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 348
      Control = cbb_Kontr
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object LItemLControl1Item16: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100':'
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 348
      Control = cbb_User
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object LItemLControl1Item17: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1058#1077#1083#1077#1092#1086#1085' '#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1103':'
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 233
      Control = txt_Phone
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object lgrpLControl1Group4: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1052#1072#1090#1077#1088#1080#1072#1083#1099
      Parent = lgrpLControl1Group9
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object lgrpLControl1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = lgrp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object lgrpLControl1Group6: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = lgrpLControl1Group5
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 331
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lgrpLControl1Group7: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = lgrpLControl1Group6
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 356
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item19: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081':'
      CaptionOptions.Layout = clTop
      Parent = lgrpLControl1Group8
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 93
      Control = mmo_Note
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lgrpLControl1Group8: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = lgrpLControl1Group7
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item110: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group4
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item111: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group4
      Control = doc2
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lgrpLControl1Group9: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      Parent = lgrpLControl1Group6
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      TabbedOptions.HideTabs = True
      Index = 1
    end
    object lgrpLControl1Group10: TdxLayoutGroup
      CaptionOptions.Text = ' '
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group9
      ButtonOptions.Buttons = <>
      TabbedOptions.HideTabs = True
      Index = 1
    end
    object LItemLControl1Item112: TdxLayoutItem
      AlignHorz = ahClient
      CaptionOptions.Text = #1052#1072#1090#1077#1088#1080#1072#1083
      Parent = lgrpLControl1Group12
      Control = cbb_mat
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item113: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1050#1086#1083'-'#1074#1086
      Parent = lgrpLControl1Group11
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 157
      Control = spn_Kol
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item114: TdxLayoutItem
      CaptionOptions.Text = #1045#1076'. '#1080#1079#1084'.'
      Parent = lgrpLControl1Group11
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 95
      Control = txt_ed
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lgrpLControl1Group11: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lgrpLControl1Group10
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object LItemLControl1Item3: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      CaptionOptions.Layout = clTop
      Parent = lgrpLControl1Group10
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 102
      Control = mmo_note1
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LItemLControl1Item4: TdxLayoutItem
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group12
      Control = btn_mat
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lgrpLControl1Group12: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lgrpLControl1Group10
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item115: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group10
      Control = doc3
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object LItemLControl1Item5: TdxLayoutItem
      CaptionOptions.Text = #1056#1072#1073#1086#1090#1072
      Parent = lgrpLControl1Group14
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 265
      Control = cbb_work
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item6: TdxLayoutItem
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group17
      Control = btn_w
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LItemLControl1Item7: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1054#1073#1098#1077#1084
      Parent = lgrpLControl1Group15
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 120
      Control = spn_col
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item8: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1045#1076'. '#1080#1079#1084'.'
      Parent = lgrpLControl1Group13
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 120
      Control = txt_wed
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lgrpLControl1Group17: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group2
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object lgrpLControl1Group14: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lgrpLControl1Group17
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object lgrpLControl1Group13: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lgrpLControl1Group14
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object LItemLControl1Item18: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1062#1077#1085#1072' '#1079#1072' '#1077#1076'.'
      Parent = lgrpLControl1Group10
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 158
      Control = cedt_price
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LItemLControl1Item116: TdxLayoutItem
      CaptionOptions.Text = #1062#1077#1085#1072
      Parent = lgrpLControl1Group15
      SizeOptions.Width = 120
      Control = ced_wprice
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LItemLControl1Item117: TdxLayoutItem
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group13
      Control = chk_AddWork
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lgrpLControl1Group15: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lgrpLControl1Group13
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object LItemLControl1Item118: TdxLayoutItem
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group2
      Control = lbl1
      Index = 0
    end
  end
  object BarManager1: TdxBarManager
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
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 544
    Top = 176
    DockControlHeights = (
      0
      0
      0
      0)
    object br1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = doc1
      DockedDockControl = doc1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 764
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_Exec'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
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
      DockControl = doc2
      DockedDockControl = doc2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 764
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_Add'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Del'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object br3: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockControl = doc3
      DockedDockControl = doc3
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 833
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_SaveMat'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_CancelMat'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btn_Exec: TdxBarButton
      Caption = #1042#1099#1087#1086#1083#1085#1077#1085#1086
      Category = 0
      Hint = #1042#1099#1087#1086#1083#1085#1077#1085#1086
      Visible = ivAlways
      OnClick = btn_ExecClick
    end
    object btn_Add: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1084#1072#1090#1077#1088#1080#1072#1083
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1084#1072#1090#1077#1088#1080#1072#1083
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = btn_AddClick
    end
    object btn_Del: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1084#1072#1090#1077#1088#1080#1072#1083
      Category = 0
      Enabled = False
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1084#1072#1090#1077#1088#1080#1072#1083
      Visible = ivAlways
      ImageIndex = 2
      PaintStyle = psCaptionGlyph
      OnClick = btn_DelClick
    end
    object btn_SaveMat: TdxBarButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 10
      PaintStyle = psCaptionGlyph
      OnClick = btn_SaveMatClick
    end
    object btn_CancelMat: TdxBarButton
      Align = iaRight
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      Category = 0
      Hint = #1054#1090#1084#1077#1085#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 12
      PaintStyle = psCaptionGlyph
      OnClick = btn_CancelMatClick
    end
  end
  object src_Detail: TDataSource
    DataSet = md_detail
    Left = 568
    Top = 104
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = chk_AddWork
        Properties.Strings = (
          'Checked')
      end
      item
        Component = clv1Data
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1ID
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1NOTE
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1StatusName
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1USERNAME
        Properties.Strings = (
          'Width')
      end
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Width')
      end>
    StorageName = 'prop1'
    Left = 624
    Top = 104
  end
  object src_smat: TDataSource
    DataSet = ds_CLASSMAT
    Left = 425
    Top = 441
  end
  object ds_CLASSMAT: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE,'
      '       TRIM(FULLNAME) NAME,'
      '       ED, '
      '       PRICE'
      'FROM CLASSMAT'
      'where ISGROUP=0'
      'order by TRIM(FULLNAME)')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 456
    Top = 440
  end
  object md_mat: TdxMemData
    Indexes = <>
    SortOptions = []
    AfterPost = md_matAfterPost
    AfterDelete = md_matAfterDelete
    Left = 536
    Top = 472
  end
  object src_mat: TDataSource
    DataSet = md_mat
    Left = 568
    Top = 472
  end
  object src_serviswork: TDataSource
    DataSet = ds_serviswork
    Left = 229
    Top = 199
  end
  object ds_serviswork: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME'
      'from SERVISWORK'
      'Order by NAME')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 200
    Top = 200
  end
  object md_detail: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 272
    Top = 128
  end
  object ds_WorkSpecList: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE WORKSPECLIST'
      'SET '
      '    DATA = :DATA,'
      '    KONTRAGENT = :KONTRAGENT,'
      '    SERVISWORK = :SERVISWORK,'
      '    HOUSE = :HOUSE,'
      '    ADDR = :ADDR,'
      '    PRICE = :PRICE,'
      '    NOTE = :NOTE,'
      '    WORKLIST = :WORKLIST,'
      '    QUANTITY = :QUANTITY,'
      '    JWORK = :JWORK'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    WORKSPECLIST'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO WORKSPECLIST('
      '    CODE,'
      '    DATA,'
      '    KONTRAGENT,'
      '    SERVISWORK,'
      '    HOUSE,'
      '    ADDR,'
      '    PRICE,'
      '    NOTE,'
      '    WORKLIST,'
      '    QUANTITY,'
      '    JWORK'
      ')'
      'VALUES('
      '    :CODE,'
      '    :DATA,'
      '    :KONTRAGENT,'
      '    :SERVISWORK,'
      '    :HOUSE,'
      '    :ADDR,'
      '    :PRICE,'
      '    :NOTE,'
      '    :WORKLIST,'
      '    :QUANTITY,'
      '    :JWORK'
      ')')
    SelectSQL.Strings = (
      'SELECT ws.CODE,'
      '       ws.DATA, '
      '       ws.KONTRAGENT, '
      '       ws.SERVISWORK, sw.name sworkname,'
      '       ws.HOUSE,'
      '       ws.ADDR,'
      '       ws.PRICE, '
      '       ws.NOTE, '
      '       ws.WORKLIST,'
      '       WS.Quantity,'
      '       WS.jwork, WS.FDATA, WS.JWORK1, ws.REQUESTID, ws.DISP_BASE'
      ' '
      'FROM WORKSPECLIST ws'
      'left outer join serviswork sw on sw.code = ws.serviswork'
      'WHERE'
      '    ws.CODE = :code')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 56
    Top = 80
  end
  object ds_WorkSpecMaterial: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE WORKSPECMATERIAL'
      'SET '
      '    WORKSPECLIST = :WORKSPECLIST,'
      '    DATA = :DATA,'
      '    KONTRAGENT = :KONTRAGENT,'
      '    SERVISWORK = :SERVISWORK,'
      '    HOUSE = :HOUSE,'
      '    ADDR = :ADDR,'
      '    SERVISMATERIAL = :SERVISMATERIAL,'
      '    QUANTITY = :QUANTITY,'
      '    PRICE = :PRICE,'
      '    NOTE = :NOTE'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    WORKSPECMATERIAL'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO WORKSPECMATERIAL('
      '    CODE,'
      '    WORKSPECLIST,'
      '    DATA,'
      '    KONTRAGENT,'
      '    SERVISWORK,'
      '    HOUSE,'
      '    ADDR,'
      '    SERVISMATERIAL,'
      '    QUANTITY,'
      '    PRICE,'
      '    NOTE'
      ')'
      'VALUES('
      '    :CODE,'
      '    :WORKSPECLIST,'
      '    :DATA,'
      '    :KONTRAGENT,'
      '    :SERVISWORK,'
      '    :HOUSE,'
      '    :ADDR,'
      '    :SERVISMATERIAL,'
      '    :QUANTITY,'
      '    :PRICE,'
      '    :NOTE'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    CODE,'
      '    WORKSPECLIST,'
      '    DATA,'
      '    KONTRAGENT,'
      '    SERVISWORK,'
      '    HOUSE,'
      '    ADDR,'
      '    SERVISMATERIAL,'
      '    QUANTITY,'
      '    PRICE,'
      '    NOTE'
      'FROM'
      '    WORKSPECMATERIAL'
      'WHERE( '
      '    WORKSPECLIST = :mas_code'
      '     ) and (     WORKSPECMATERIAL.CODE = :OLD_CODE'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'select WS.CODE,'
      '       WS.WORKSPECLIST,'
      '       WS.DATA,'
      '       WS.KONTRAGENT,'
      '       WS.SERVISWORK,'
      '       WS.HOUSE,'
      '       WS.ADDR,'
      '       WS.CLASSMAT, TRIM(SM.FULLNAME) NAME,'
      '       WS.QUANTITY,'
      '       WS.PRICE,'
      '       WS.NOTE'
      'from WORKSPECMATERIAL WS'
      'left outer join CLASSMAT SM on SM.code = WS.CLASSMAT'
      'where WS.WORKSPECLIST  = :CODE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    AutoCommit = True
    Left = 56
    Top = 128
    dcForceOpen = True
  end
  object SpellChecker1: TdxSpellChecker
    DialogLookAndFeel.NativeStyle = False
    DictionaryItems = <
      item
        DictionaryTypeClassName = 'TdxHunspellDictionary'
        DictionaryType.DictionaryPath = 'config\russian-rk-ieyo.dic'
        DictionaryType.GrammarPath = 'config\russian-rk-ieyo.aff'
        DictionaryType.Language = 1049
      end
      item
        DictionaryTypeClassName = 'TdxUserSpellCheckerDictionary'
        DictionaryType.CodePage = 1251
        DictionaryType.DictionaryPath = 'config\user.dic'
      end>
    SpellingFormType = sftWord
    UseThreadedLoad = True
    Left = 416
    Top = 336
  end
  object pm1: TPopupMenu
    Left = 456
    Top = 112
  end
end
