object ZTOShablonForm: TZTOShablonForm
  Left = 0
  Top = 0
  Caption = #1064#1072#1073#1083#1086#1085#1099' '#1079#1072#1090#1088#1072#1090' '#1055#1054
  ClientHeight = 697
  ClientWidth = 919
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 919
    Height = 697
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object grd1: TcxGrid
      Left = 11
      Top = 32
      Width = 250
      Height = 200
      TabOrder = 0
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        OnCellClick = v1CellClick
        DataController.DataSource = src_ZTOSHABLON
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1NAME: TcxGridDBColumn
          Caption = #1053#1072#1079#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'NAME'
          Width = 87
        end
        object clv1SDATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = 'SDATE'
          Width = 73
        end
        object clv1KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1KNAME: TcxGridDBColumn
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'KNAME'
          Width = 99
        end
        object clv1SRVDOG: TcxGridDBColumn
          DataBinding.FieldName = 'SRVDOG'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 316
      Top = 311
      Width = 250
      Height = 200
      TabOrder = 10
      object v2: TcxGridDBTableView
        OnCellDblClick = v2CellDblClick
        DataController.DataSource = src_ZTOHOUSE
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object clv2CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2ZTOTREE: TcxGridDBColumn
          DataBinding.FieldName = 'ZTOTREE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2ZPNAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1095#1072#1089#1090#1082#1072
          DataBinding.FieldName = 'ZPNAME'
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object grd3: TcxGrid
      Left = 600
      Top = 311
      Width = 250
      Height = 200
      TabOrder = 11
      object v3: TcxGridDBTableView
        OnCellDblClick = v3CellDblClick
        DataController.DataSource = src_memhouse
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.ImmediateEditor = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object clv3CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3SRVDOG: TcxGridDBColumn
          DataBinding.FieldName = 'SRVDOG'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1095#1072#1089#1090#1082#1072
          DataBinding.FieldName = 'NAME'
        end
      end
      object l3: TcxGridLevel
        GridView = v3
      end
    end
    object lst1: TcxDBTreeList
      Left = 316
      Top = 32
      Width = 250
      Height = 150
      Bands = <
        item
        end>
      DataController.DataSource = src_ZTOTree
      DataController.ParentField = 'OWNER'
      DataController.KeyField = 'CODE'
      DragMode = dmAutomatic
      LookAndFeel.NativeStyle = False
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.DragFocusing = True
      OptionsBehavior.ExpandOnIncSearch = True
      OptionsData.Inserting = True
      OptionsView.CategorizedColumn = clNAME
      OptionsView.Indicator = True
      RootValue = -1
      TabOrder = 9
      OnClick = lst1Click
      OnCustomDrawDataCell = lst1CustomDrawDataCell
      OnDragDrop = lst1DragDrop
      OnDragOver = lst1DragOver
      OnKeyUp = lst1KeyUp
      object clCODE: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'CODE'
        Width = 100
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object clNAME: TcxDBTreeListColumn
        Caption.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1089#1090#1072#1074#1082#1080
        DataBinding.FieldName = 'NAME'
        Width = 158
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object clZTOSHABLON: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'ZTOSHABLON'
        Width = 100
        Position.ColIndex = 3
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object clOWNER: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'OWNER'
        Width = 100
        Position.ColIndex = 4
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object clZTOTYPE: TcxDBTreeListColumn
        PropertiesClassName = 'TcxLookupComboBoxProperties'
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
        Properties.ListSource = src_mType
        Caption.Text = #1058#1080#1087
        DataBinding.FieldName = 'ZTOTYPE'
        Width = 169
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object clSUMMA: TcxDBTreeListColumn
        Caption.Text = #1057#1091#1084#1084#1072
        DataBinding.FieldName = 'SUMMA'
        Width = 100
        Position.ColIndex = 5
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
    object cbb_kontr: TcxLookupComboBox
      Left = 21
      Top = 548
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
      Properties.ListSource = com_dm.src_KONTRAGENT
      Properties.OnEditValueChanged = cbb_kontrPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 3
      Width = 145
    end
    object txt_Name: TcxTextEdit
      Left = 21
      Top = 470
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object dt1: TcxDateEdit
      Left = 21
      Top = 509
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cbb_dog: TcxLookupComboBox
      Left = 21
      Top = 587
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          Caption = #1053#1086#1084#1077#1088
          FieldName = 'NOMER'
        end
        item
          Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
          FieldName = 'D1'
        end
        item
          Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
          FieldName = 'D2'
        end>
      Properties.ListSource = com_dm.src_SRVDOG
      Style.HotTrack = False
      TabOrder = 4
      Width = 145
    end
    object btn_Add: TcxButton
      Left = 21
      Top = 619
      Width = 75
      Height = 25
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btn_AddClick
    end
    object btn_shEdit: TcxButton
      Left = 112
      Top = 619
      Width = 75
      Height = 25
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = btn_shEditClick
    end
    object btn_shDel: TcxButton
      Left = 203
      Top = 619
      Width = 75
      Height = 25
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = btn_shDelClick
    end
    object btn_copy: TcxButton
      Left = 21
      Top = 645
      Width = 257
      Height = 25
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1096#1072#1073#1083#1086#1085
      OptionsImage.Glyph.Data = {
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
      TabOrder = 8
      OnClick = btn_copyClick
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = lcl1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object gr1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object gr_zatr: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1047#1072#1090#1088#1072#1090#1099
      CaptionOptions.Visible = False
      Parent = gr1
      ButtonOptions.Buttons = <>
      ButtonOptions.Visible = False
      ShowBorder = False
      Index = 0
    end
    object grlc1Group1: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = gr_zatr
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object gr_shablon: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = #1064#1072#1073#1083#1086#1085' '#1079#1072#1090#1088#1072#1090
      Parent = grlc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 297
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = gr_shablon
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object gr_shedt: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = #1056#1077#1076#1072#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
      Parent = gr_shablon
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 187
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object itm_Name: TdxLayoutItem
      CaptionOptions.Text = #1053#1072#1079#1074#1072#1085#1080#1077' '#1096#1072#1073#1083#1086#1085#1072
      CaptionOptions.Layout = clTop
      Parent = gr_shedt
      Control = txt_Name
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_sdate: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1089' '#1082#1086#1090#1086#1088#1086#1081' '#1076#1077#1081#1089#1090#1074#1091#1077#1090' '#1096#1072#1073#1083#1086#1085
      CaptionOptions.Layout = clTop
      Parent = gr_shedt
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_kontr: TdxLayoutItem
      CaptionOptions.Text = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      CaptionOptions.Layout = clTop
      Parent = gr_shedt
      Control = cbb_kontr
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_dog: TdxLayoutItem
      CaptionOptions.Text = #1044#1086#1075#1086#1074#1086#1088' '#1089' '#1087#1086#1076#1088#1103#1076#1085#1086#1081' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1077#1081
      CaptionOptions.Layout = clTop
      Parent = gr_shedt
      Control = cbb_dog
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object grlc1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Offsets.Top = 10
      Parent = gr_shedt
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object itm_add: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grlc1Group4
      Control = btn_Add
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_shEdit: TdxLayoutItem
      AlignHorz = ahCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grlc1Group4
      Control = btn_shEdit
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_shDel: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group4
      Control = btn_shDel
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_copy: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = gr_shedt
      Control = btn_copy
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object spl1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grlc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object grlc1Group3: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grlc1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 2
    end
    object gr_tree: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = #1050#1083#1072#1089#1089#1080#1092#1080#1082#1072#1090#1086#1088' '#1079#1072#1090#1088#1072#1090
      Parent = grlc1Group3
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 271
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object itm_lst1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxDBTreeList1'
      CaptionOptions.Visible = False
      Parent = gr_tree
      Control = lst1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object spl2: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grlc1Group3
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object grlc1Group2: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grlc1Group3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object gr_house: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = #1047#1072#1082#1088#1077#1087#1083#1077#1085#1085#1099#1077' '#1091#1095#1072#1089#1090#1082#1080
      Parent = grlc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 276
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object itm_grd2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = gr_house
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object spl3: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grlc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object gr_aviable: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1044#1086#1089#1090#1091#1087#1085#1099#1077' '#1091#1095#1072#1089#1090#1082#1080
      Parent = grlc1Group2
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object itm_grd3: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = gr_aviable
      Control = grd3
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 680
    Top = 56
    object lcl1: TdxLayoutCxLookAndFeel
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 2
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetVert = 1
      LookAndFeel.NativeStyle = False
    end
  end
  object ds_ZTOTree: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT zt.CODE, '
      '       zt.NAME, '
      '       zt.ZTOSHABLON, '
      '       zt.OWNER, '
      '       zt.ZTOTYPE, '
      '       zt.SUMMA'
      'FROM ZTOTREE zt')
    BeforeInsert = ds_ZTOTreeBeforeInsert
    BeforePost = ds_ZTOTreeBeforePost
    Transaction = cmDB.RT
    Database = cmDB.DB
    UpdateTransaction = cmDB.WT
    Left = 408
    Top = 152
  end
  object src_ZTOTree: TDataSource
    DataSet = ds_ZTOTree
    Left = 437
    Top = 152
  end
  object ds_ZTOSHABLON: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT zt.CODE, '
      '       zt.NAME, '
      '       zt.SDATE, '
      '       zt.KONTRAGENT, k.name KName,'
      '       zt.SRVDOG'
      'FROM ZTOSHABLON zt'
      'left outer join kontragent k on k.code=zt.kontragent')
    Transaction = cmDB.RT
    Database = cmDB.DB
    UpdateTransaction = cmDB.WT
    Left = 80
    Top = 112
  end
  object src_ZTOSHABLON: TDataSource
    DataSet = ds_ZTOSHABLON
    Left = 108
    Top = 112
  end
  object mt_house: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 688
    Top = 376
  end
  object src_memhouse: TDataSource
    DataSet = mt_house
    Left = 717
    Top = 376
  end
  object ds_house: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, SRVDOG, NAME'
      'from ZTOPATH')
    Transaction = cmDB.RT
    Database = cmDB.DB
    UpdateTransaction = cmDB.WT
    Left = 688
    Top = 432
  end
  object src_house: TDataSource
    DataSet = ds_house
    Left = 716
    Top = 432
  end
  object ds_ZTOHOUSE: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT zt.CODE, '
      '       zt.ZTOTREE, '
      '       zt.HOUSE,zp.name ZPNAME'
      'FROM ZTOHOUSE zt'
      'left outer join ztopath zp on zp.code=zt.house'
      '')
    Transaction = cmDB.RT
    Database = cmDB.DB
    UpdateTransaction = cmDB.WT
    Left = 376
    Top = 408
  end
  object src_ZTOHOUSE: TDataSource
    DataSet = ds_ZTOHOUSE
    Left = 408
    Top = 408
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 712
    Top = 56
  end
  object mType: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 688
    Top = 152
  end
  object src_mType: TDataSource
    DataSet = mType
    Left = 716
    Top = 152
  end
  object ppm1: TcxGridPopupMenu
    Grid = grd1
    PopupMenus = <
      item
        GridView = v1
        HitTypes = [gvhtCell, gvhtRecord]
        Index = 0
      end>
    Left = 144
    Top = 184
  end
  object pm1: TPopupMenu
    Left = 184
    Top = 184
    object N1: TMenuItem
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1096#1072#1073#1083#1086#1085
    end
  end
end
