object OrderSpecForm: TOrderSpecForm
  Left = 0
  Top = 0
  Caption = #1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103' '#1085#1072#1088#1103#1076#1072
  ClientHeight = 713
  ClientWidth = 912
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object docs1: TdxDockSite
    Left = 0
    Top = 26
    Width = 912
    Height = 687
    AllowDockClients = []
    Align = alClient
    ExplicitTop = 0
    ExplicitHeight = 713
    DockingType = 5
    OriginalWidth = 912
    OriginalHeight = 687
    object docs2: TdxLayoutDockSite
      Left = 0
      Top = 361
      Width = 912
      Height = 326
      AllowDockClients = []
      ExplicitHeight = 352
      DockingType = 0
      OriginalWidth = 300
      OriginalHeight = 200
      object docs3: TdxLayoutDockSite
        Left = 0
        Top = 0
        Width = 912
        Height = 326
        AllowDockClients = []
        DockingType = 0
        OriginalWidth = 300
        OriginalHeight = 200
      end
      object docs4: TdxTabContainerDockSite
        Left = 0
        Top = 0
        Width = 912
        Height = 326
        AllowDockClients = [dtClient]
        ActiveChildIndex = 1
        AllowDock = []
        AllowFloating = True
        AutoHide = False
        CaptionButtons = []
        Dockable = False
        DockingType = 0
        OriginalWidth = 185
        OriginalHeight = 140
        object pnl_Material: TdxDockPanel
          Left = 0
          Top = 0
          Width = 904
          Height = 272
          AllowDock = []
          AllowDockClients = []
          AllowFloating = False
          AutoHide = False
          Caption = #1057#1087#1080#1089#1086#1082' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1085#1099#1093' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074
          Dockable = False
          DockingType = 0
          OriginalWidth = 185
          OriginalHeight = 140
          object cnt2: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 904
            Height = 272
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = lcaf1
            object grd3: TcxGrid
              Left = 286
              Top = 4
              Width = 614
              Height = 264
              TabOrder = 9
              object v3: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                Navigator.Buttons.First.Visible = False
                Navigator.Buttons.PriorPage.Visible = False
                Navigator.Buttons.Prior.Visible = False
                Navigator.Buttons.Next.Visible = False
                Navigator.Buttons.NextPage.Visible = False
                Navigator.Buttons.Last.Visible = False
                Navigator.Buttons.Edit.Visible = False
                Navigator.Buttons.Cancel.Visible = False
                Navigator.Buttons.Refresh.Visible = False
                Navigator.Buttons.SaveBookmark.Visible = False
                Navigator.Buttons.GotoBookmark.Visible = False
                Navigator.Buttons.Filter.Visible = False
                OnCellClick = v3CellClick
                DataController.DataSource = src_WorkSpecMaterial
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsBehavior.FocusFirstCellOnNewRecord = True
                OptionsBehavior.GoToNextCellOnEnter = True
                OptionsBehavior.ImmediateEditor = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsSelection.HideFocusRectOnExit = False
                OptionsSelection.UnselectFocusedRecordOnExit = False
                OptionsView.CellAutoHeight = True
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                object clv3CODE: TcxGridDBColumn
                  DataBinding.FieldName = 'CODE'
                  Visible = False
                end
                object clv3WORKSPECLIST: TcxGridDBColumn
                  DataBinding.FieldName = 'WORKSPECLIST'
                  Visible = False
                  VisibleForCustomization = False
                end
                object clv3DATA: TcxGridDBColumn
                  DataBinding.FieldName = 'DATA'
                  Visible = False
                  VisibleForCustomization = False
                end
                object clv3KONTRAGENT: TcxGridDBColumn
                  DataBinding.FieldName = 'KONTRAGENT'
                  Visible = False
                  VisibleForCustomization = False
                end
                object clv3SERVISWORK: TcxGridDBColumn
                  DataBinding.FieldName = 'SERVISWORK'
                  Visible = False
                  VisibleForCustomization = False
                end
                object clv3HOUSE: TcxGridDBColumn
                  DataBinding.FieldName = 'HOUSE'
                  Visible = False
                  VisibleForCustomization = False
                end
                object clv3ADDR: TcxGridDBColumn
                  DataBinding.FieldName = 'ADDR'
                  Visible = False
                  VisibleForCustomization = False
                end
                object clv3SERVISMATERIAL: TcxGridDBColumn
                  Caption = #1052#1072#1090#1077#1088#1080#1072#1083
                  DataBinding.FieldName = 'SERVISMATERIAL'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.CaseSensitiveSearch = True
                  Properties.DropDownAutoSize = True
                  Properties.DropDownHeight = 300
                  Properties.DropDownRows = 30
                  Properties.DropDownWidth = 450
                  Properties.View = com_dm.v_ServisMaterial
                  Properties.KeyFieldNames = 'CODE'
                  Properties.ListFieldItem = com_dm.cl_ServisMaterial_NAME
                  Visible = False
                  Width = 145
                end
                object clv3NAME: TcxGridDBColumn
                  Caption = #1052#1072#1090#1077#1088#1080#1072#1083
                  DataBinding.FieldName = 'NAME'
                  Width = 176
                end
                object clv3QUANTITY: TcxGridDBColumn
                  Caption = #1050#1086#1083'-'#1074#1086
                  DataBinding.FieldName = 'QUANTITY'
                  Width = 74
                end
                object clv3PRICE: TcxGridDBColumn
                  Caption = #1062#1077#1085#1072
                  DataBinding.FieldName = 'PRICE'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = ',0.0000;-,0.0000'
                  Width = 98
                end
                object clv3NOTE: TcxGridDBColumn
                  Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
                  DataBinding.FieldName = 'NOTE'
                  Width = 236
                end
                object clv3CLASSMAT: TcxGridDBColumn
                  DataBinding.FieldName = 'CLASSMAT'
                  Visible = False
                end
              end
              object l3: TcxGridLevel
                GridView = v3
              end
            end
            object cbb_mat: TcxLookupComboBox
              Left = 14
              Top = 52
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
                  FieldName = 'Name'
                end>
              Properties.ListFieldIndex = 1
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = src_smat
              Properties.OnChange = cbb_matPropertiesChange
              Properties.OnEditValueChanged = cbb_matPropertiesEditValueChanged
              Style.HotTrack = False
              TabOrder = 0
              Width = 229
            end
            object btn_mat: TcxButton
              Left = 246
              Top = 52
              Width = 27
              Height = 21
              Caption = 'btn_mat'
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
              TabOrder = 1
              OnClick = btn_matClick
            end
            object edsp_kol: TcxSpinEdit
              Left = 78
              Top = 76
              Properties.ImmediatePost = True
              Properties.ValueType = vtFloat
              Style.HotTrack = False
              TabOrder = 2
              Width = 195
            end
            object txt_ed: TcxTextEdit
              Left = 78
              Top = 100
              Properties.ReadOnly = True
              Style.HotTrack = False
              TabOrder = 3
              Width = 195
            end
            object cedt_price: TcxCurrencyEdit
              Left = 78
              Top = 124
              Properties.DisplayFormat = ',0.0000;-,0.0000'
              Properties.UseDisplayFormatWhenEditing = True
              Style.HotTrack = False
              TabOrder = 4
              Width = 195
            end
            object btn_post: TcxButton
              Left = 14
              Top = 212
              Width = 75
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
              TabOrder = 6
              OnClick = btn_postClick
            end
            object btn_edit_m: TcxButton
              Left = 92
              Top = 212
              Width = 103
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
              TabOrder = 7
              OnClick = btn_edit_mClick
            end
            object btn_del_m: TcxButton
              Left = 198
              Top = 212
              Width = 75
              Height = 25
              Caption = #1059#1076#1072#1083#1080#1090#1100
              Enabled = False
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
              TabOrder = 8
              OnClick = btn_del_mClick
            end
            object m_note: TcxMemo
              Left = 14
              Top = 165
              Properties.ClearKey = 46
              Style.HotTrack = False
              TabOrder = 5
              Height = 44
              Width = 259
            end
            object grp2: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avClient
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = -1
            end
            object grpcnt2Group1: TdxLayoutGroup
              AlignVert = avClient
              Parent = grp2
              SizeOptions.AssignedValues = [sovSizableHorz]
              SizeOptions.SizableHorz = True
              SizeOptions.Width = 158
              ButtonOptions.Buttons = <
                item
                  Glyph.Data = {
                    36030000424D3603000000000000360000002800000010000000100000000100
                    18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                    F0F0FF9595E51B1B4CB9B9B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFEDEDFFC1C1FFDADAFF4D4DD208083FB7B7B7FF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDFFC1C1FF
                    D1D1FF7D7DE80C0CC70000B9080845B7B7B7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFBFBFFFCECEFF7E7EEA0000BD0000BF0000C60000B802
                    0241BBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3FF7F7FE9
                    0000BB0000BF0000C00000C00000C40000B90A0A43B7B7B7FFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFDADAFC3232D00000BB0000C00000C00000C000
                    00C50103BC26183AB9B9B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    E1E1FE3232D00000BC0000C00000BF0000BC9CAAF7EFAAA0410404BBBBBBFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFD3838D00000BA0000BC91
                    9BEDFFFAE8FF9293E75B5B460A0AB7B7B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFE0E0FF3536D19199EBFFF1ECFF8483FF7B7BFF8B8BE45E5E4105
                    05B9B9B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBE9FFFFD5CCFF
                    8584FF7B7BFF8080FF8080FF8989E45E5E430909B7B7B7FFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFDAD9FF8E8EFF7C7CFF8080FF8080FF7F7FFF8A
                    8AE75E5E450A0AB7B7B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    E0E0FF9090FF7B7BFF8080FF8080FF8080FF8A8AE35E5E4D1111FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFF9191FF7B7BFF8080FF80
                    80FF8080FF9090AE2626FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFE0E0FF9191FF7B7BFF8282FF8A8ABF4040402626FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0FF9090FF85
                    85C13F3F412A2AE3E3E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFE2E2C659593C2828E3E3E3FFFFFF}
                  OnClick = grpcnt2Group1Button0Click
                end>
              ButtonOptions.ShowExpandButton = True
              Index = 0
            end
            object grpcnt2Group2: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'New Group'
              Parent = grp2
              ButtonOptions.Buttons = <>
              ShowBorder = False
              Index = 1
            end
            object itmcnt2Item1: TdxLayoutItem
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'New Item'
              CaptionOptions.Visible = False
              Parent = grpcnt2Group2
              Control = grd3
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object cnt2Item1: TdxLayoutItem
              AlignHorz = ahClient
              CaptionOptions.Text = #1052#1072#1090#1077#1088#1080#1072#1083
              CaptionOptions.Layout = clTop
              Parent = grpcnt2Group3
              Control = cbb_mat
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object itmcnt2Item2: TdxLayoutItem
              AlignVert = avBottom
              CaptionOptions.Text = 'New Item'
              CaptionOptions.Visible = False
              Parent = grpcnt2Group3
              Control = btn_mat
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object grpcnt2Group3: TdxLayoutGroup
              CaptionOptions.Text = 'Hidden Group'
              Parent = grpcnt2Group1
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 0
            end
            object itmcnt2Item3: TdxLayoutItem
              CaptionOptions.Text = #1050#1086#1083'-'#1074#1086
              Parent = grpcnt2Group1
              Control = edsp_kol
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object itmcnt2Item4: TdxLayoutItem
              CaptionOptions.Text = #1045#1076'. '#1080#1079#1084'.'
              Parent = grpcnt2Group1
              Control = txt_ed
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object itmcnt2Item5: TdxLayoutItem
              CaptionOptions.Text = #1062#1077#1085#1072' '#1079#1072' '#1077#1076'.'
              Parent = grpcnt2Group1
              Control = cedt_price
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object itmcnt2Item21: TdxLayoutItem
              CaptionOptions.Text = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
              CaptionOptions.Layout = clTop
              Parent = grpcnt2Group1
              SizeOptions.AssignedValues = [sovSizableVert]
              SizeOptions.SizableVert = True
              SizeOptions.Height = 61
              Control = m_note
              ControlOptions.ShowBorder = False
              Index = 4
            end
            object grpcnt2Group4: TdxLayoutGroup
              AlignHorz = ahClient
              CaptionOptions.Text = 'New Group'
              CaptionOptions.Visible = False
              Parent = grpcnt2Group1
              ButtonOptions.Buttons = <>
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 5
            end
            object itmcnt2Item6: TdxLayoutItem
              AlignHorz = ahLeft
              CaptionOptions.Text = 'New Item'
              CaptionOptions.Visible = False
              Parent = grpcnt2Group4
              Control = btn_post
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object itmcnt2Item7: TdxLayoutItem
              CaptionOptions.Text = 'New Item'
              CaptionOptions.Visible = False
              Parent = grpcnt2Group4
              SizeOptions.AssignedValues = [sovSizableHorz]
              SizeOptions.SizableHorz = True
              SizeOptions.Width = 103
              Control = btn_edit_m
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object itmcnt2Item8: TdxLayoutItem
              CaptionOptions.Text = 'New Item'
              CaptionOptions.Visible = False
              Parent = grpcnt2Group4
              Control = btn_del_m
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 2
            end
            object grpcnt2Group5: TdxLayoutGroup
              CaptionOptions.Text = 'New Group'
              ButtonOptions.Buttons = <>
              Index = -1
            end
          end
          object mmo1: TcxMemo
            Left = 496
            Top = 115
            Properties.ClearKey = 46
            Style.HotTrack = False
            TabOrder = 1
            Visible = False
            Height = 115
            Width = 265
          end
        end
        object pnl_Jurnal: TdxDockPanel
          Left = 0
          Top = 0
          Width = 904
          Height = 272
          AllowDock = []
          AllowDockClients = []
          AllowFloating = False
          AutoHide = False
          Caption = #1046#1091#1088#1085#1072#1083' '#1088#1072#1073#1086#1090
          Dockable = False
          ExplicitHeight = 298
          DockingType = 0
          OriginalWidth = 185
          OriginalHeight = 140
          object cnt3: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 904
            Height = 272
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = lcaf1
            ExplicitHeight = 298
            object grd4: TcxGrid
              Left = 4
              Top = 4
              Width = 896
              Height = 235
              Align = alClient
              TabOrder = 0
              object v4: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                OnCellClick = v4CellClick
                DataController.DataSource = src_Jwork
                DataController.Filter.Options = [fcoCaseInsensitive]
                DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                FilterRow.Visible = True
                FilterRow.ApplyChanges = fracImmediately
                OptionsSelection.CellSelect = False
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                object clv4WORKSPECLIST: TcxGridDBColumn
                  DataBinding.FieldName = 'WORKSPECLIST'
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Images = il1
                  Properties.Items = <>
                  Properties.ShowDescriptions = False
                  Width = 20
                  IsCaptionAssigned = True
                end
                object clv4CODE: TcxGridDBColumn
                  DataBinding.FieldName = 'CODE'
                  Visible = False
                  VisibleForCustomization = False
                end
                object clv4JWORKTYPE: TcxGridDBColumn
                  DataBinding.FieldName = 'JWORKTYPE'
                  Visible = False
                  VisibleForCustomization = False
                end
                object clv4JTNAME: TcxGridDBColumn
                  Caption = #1058#1080#1087' '#1088#1072#1073#1086#1090#1099
                  DataBinding.FieldName = 'JTNAME'
                  Width = 149
                end
                object clv4REGDATE: TcxGridDBColumn
                  Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103
                  DataBinding.FieldName = 'REGDATE'
                  Width = 97
                end
                object clv4KONTRAGENT: TcxGridDBColumn
                  DataBinding.FieldName = 'KONTRAGENT'
                  Visible = False
                  VisibleForCustomization = False
                end
                object clv4HOUSE: TcxGridDBColumn
                  DataBinding.FieldName = 'HOUSE'
                  Visible = False
                  VisibleForCustomization = False
                end
                object clv4DESCRIPTION: TcxGridDBColumn
                  Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1087#1083#1072#1085#1080#1088#1091#1077#1084#1099#1093' '#1088#1072#1073#1086#1090
                  DataBinding.FieldName = 'DESCRIPTION'
                  Width = 200
                end
                object clv4PLACE: TcxGridDBColumn
                  Caption = #1052#1077#1089#1090#1086' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#1088#1072#1073#1086#1090
                  DataBinding.FieldName = 'PLACE'
                  Width = 193
                end
                object clv4PLANDATE: TcxGridDBColumn
                  Caption = #1055#1083#1072#1085#1086#1074#1072#1103' '#1076#1072#1090#1072
                  DataBinding.FieldName = 'PLANDATE'
                  Width = 110
                end
                object clv4FACTDATE: TcxGridDBColumn
                  DataBinding.FieldName = 'FACTDATE'
                  Visible = False
                  VisibleForCustomization = False
                end
                object clv4NOTE: TcxGridDBColumn
                  Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1074#1099#1087#1086#1083#1085#1077#1085#1099#1093' '#1088#1072#1073#1086#1090
                  DataBinding.FieldName = 'NOTE'
                  Visible = False
                  VisibleForCustomization = False
                end
                object clv4SHOWRESULT: TcxGridDBColumn
                  DataBinding.FieldName = 'SHOWRESULT'
                  Visible = False
                  VisibleForCustomization = False
                end
                object clv4STREET: TcxGridDBColumn
                  DataBinding.FieldName = 'STREET'
                  Visible = False
                  VisibleForCustomization = False
                end
                object clv4WORKSPECLIST1: TcxGridDBColumn
                  Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1077
                  DataBinding.FieldName = 'WORKSPECLIST1'
                  Width = 81
                end
              end
              object l4: TcxGridLevel
                GridView = v4
              end
            end
            object doc1: TdxBarDockControl
              Left = 4
              Top = 242
              Width = 896
              Height = 26
              Align = dalTop
              BarManager = bm1
            end
            object grp3: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avClient
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object itmcnt3Item1: TdxLayoutItem
              AlignHorz = ahClient
              AlignVert = avClient
              Parent = grp3
              Control = grd4
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object itmcnt3Item11: TdxLayoutItem
              CaptionOptions.Text = 'dxBarDockControl1'
              CaptionOptions.Visible = False
              Parent = grp3
              Control = doc1
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
              Index = 1
            end
          end
        end
        object pnl2: TdxDockPanel
          Left = 0
          Top = 0
          Width = 904
          Height = 272
          AllowDock = []
          AllowDockClients = []
          AllowFloating = False
          AutoHide = False
          Caption = #1040#1088#1093#1080#1074' '#1078#1091#1088#1085#1072#1083#1072' '#1088#1072#1073#1086#1090
          Dockable = False
          ExplicitHeight = 298
          DockingType = 0
          OriginalWidth = 185
          OriginalHeight = 140
          object doc2: TdxBarDockControl
            Left = 0
            Top = 246
            Width = 904
            Height = 26
            Align = dalBottom
            BarManager = bm1
            ExplicitTop = 272
          end
          object grd1: TcxGrid
            Left = 0
            Top = 0
            Width = 904
            Height = 246
            Align = alClient
            TabOrder = 1
            object v1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              OnCellClick = v4CellClick
              DataController.DataSource = src_JWORKARC
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.CellSelect = False
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object cl1: TcxGridDBColumn
                DataBinding.FieldName = 'WORKSPECLIST'
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Images = il1
                Properties.Items = <>
                Properties.ShowDescriptions = False
                Width = 20
                IsCaptionAssigned = True
              end
              object cl2: TcxGridDBColumn
                DataBinding.FieldName = 'CODE'
                Visible = False
                VisibleForCustomization = False
              end
              object cl3: TcxGridDBColumn
                DataBinding.FieldName = 'JWORKTYPE'
                Visible = False
                VisibleForCustomization = False
              end
              object cl4: TcxGridDBColumn
                Caption = #1058#1080#1087' '#1088#1072#1073#1086#1090#1099
                DataBinding.FieldName = 'JTNAME'
                Width = 149
              end
              object cl5: TcxGridDBColumn
                Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103
                DataBinding.FieldName = 'REGDATE'
                Width = 97
              end
              object cl6: TcxGridDBColumn
                DataBinding.FieldName = 'KONTRAGENT'
                Visible = False
                VisibleForCustomization = False
              end
              object cl7: TcxGridDBColumn
                DataBinding.FieldName = 'HOUSE'
                Visible = False
                VisibleForCustomization = False
              end
              object cl8: TcxGridDBColumn
                Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1087#1083#1072#1085#1080#1088#1091#1077#1084#1099#1093' '#1088#1072#1073#1086#1090
                DataBinding.FieldName = 'DESCRIPTION'
                Width = 200
              end
              object cl9: TcxGridDBColumn
                Caption = #1052#1077#1089#1090#1086' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#1088#1072#1073#1086#1090
                DataBinding.FieldName = 'PLACE'
                Width = 193
              end
              object cl10: TcxGridDBColumn
                Caption = #1055#1083#1072#1085#1086#1074#1072#1103' '#1076#1072#1090#1072
                DataBinding.FieldName = 'PLANDATE'
                Width = 110
              end
              object cl11: TcxGridDBColumn
                DataBinding.FieldName = 'FACTDATE'
                Visible = False
                VisibleForCustomization = False
              end
              object cl12: TcxGridDBColumn
                Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1074#1099#1087#1086#1083#1085#1077#1085#1099#1093' '#1088#1072#1073#1086#1090
                DataBinding.FieldName = 'NOTE'
                Visible = False
                VisibleForCustomization = False
              end
              object cl13: TcxGridDBColumn
                DataBinding.FieldName = 'SHOWRESULT'
                Visible = False
                VisibleForCustomization = False
              end
              object cl14: TcxGridDBColumn
                DataBinding.FieldName = 'STREET'
                Visible = False
                VisibleForCustomization = False
              end
            end
            object l1: TcxGridLevel
              GridView = v1
            end
          end
        end
        object pnl_Disp: TdxDockPanel
          Left = 0
          Top = 0
          Width = 904
          Height = 272
          Visible = False
          AllowDockClients = []
          AllowFloating = False
          AutoHide = False
          Caption = #1044#1080#1089#1087#1077#1090#1095#1077#1088
          ExplicitHeight = 298
          DockingType = 0
          OriginalWidth = 185
          OriginalHeight = 140
          object grd6: TcxGrid
            Left = 0
            Top = 26
            Width = 904
            Height = 246
            Align = alClient
            TabOrder = 0
            LockedStateImageOptions.Effect = lsieDark
            LockedStateImageOptions.ShowText = True
            LockedStateImageOptions.Text = #1055#1086#1078#1072#1083#1091#1081#1089#1090#1072' '#1087#1086#1076#1086#1078#1076#1080#1090#1077' ...'
            object v6: TcxGridDBTableView
              OnDblClick = v6DblClick
              Navigator.Buttons.CustomButtons = <>
              OnCellClick = v6CellClick
              DataController.DataSource = src_RQ
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                  Column = clv1RequestId
                end>
              DataController.Summary.SummaryGroups = <>
              Images = cmDb.iml1
              OptionsBehavior.EditAutoHeight = eahRow
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsCustomize.GroupRowSizing = True
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.HideFocusRectOnExit = False
              OptionsSelection.InvertSelect = False
              OptionsSelection.UnselectFocusedRecordOnExit = False
              OptionsView.CellAutoHeight = True
              OptionsView.Footer = True
              OptionsView.FooterMultiSummaries = True
              OptionsView.GroupByBox = False
              OptionsView.GroupFooterMultiSummaries = True
              OptionsView.GroupRowStyle = grsOffice11
              OptionsView.HeaderAutoHeight = True
              OptionsView.HeaderFilterButtonShowMode = fbmButton
              OptionsView.Indicator = True
              object clv6SuonID: TcxGridDBColumn
                Caption = #1057#1074#1103#1079#1100' '#1089' '#1088#1072#1073#1086#1090#1086#1081
                DataBinding.FieldName = 'SuonID'
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.DefaultDescription = #1089#1074#1103#1079#1072#1085#1072' '#1089' '#1088#1072#1073#1086#1090#1086#1081
                Properties.DefaultImageIndex = 29
                Properties.Images = cmDb.iml1
                Properties.Items = <
                  item
                  end>
                HeaderHint = #1057#1074#1103#1079#1100' '#1089' '#1088#1072#1073#1086#1090#1086#1081
                HeaderImageIndex = 29
                Options.ShowCaption = False
                Width = 25
              end
              object clv1RequestId: TcxGridDBColumn
                Caption = #8470
                DataBinding.FieldName = 'RequestId'
                Width = 62
              end
              object clv1HouseCompany_Title: TcxGridDBColumn
                Caption = #1044#1059
                DataBinding.FieldName = 'DU'
                Options.CellMerging = True
                Width = 81
              end
              object clv1CreatedAtUtc: TcxGridDBColumn
                Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1072
                DataBinding.FieldName = 'Added'
                Width = 117
              end
              object clv1WorkType: TcxGridDBColumn
                Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090
                DataBinding.FieldName = 'WorkType'
                Width = 80
              end
              object clv1Addr: TcxGridDBColumn
                Caption = #1040#1076#1088#1077#1089
                DataBinding.FieldName = 'Addr'
                Width = 144
              end
              object clv1LocationTitle: TcxGridDBColumn
                Caption = #1051#1086#1082#1072#1083#1080#1079#1072#1094#1080#1103
                DataBinding.FieldName = 'LocationTitle'
                Width = 76
              end
              object clv1State: TcxGridDBColumn
                Caption = #1057#1090#1072#1090#1091#1089
                DataBinding.FieldName = 'State'
                Styles.Content = Style1
                Styles.OnGetContentStyle = clv1StateStylesGetContentStyle
                Width = 104
              end
              object clv1NOTE: TcxGridDBColumn
                Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
                DataBinding.FieldName = 'NOTE'
                Width = 233
              end
              object clv1Price: TcxGridDBColumn
                Caption = #1062#1077#1085#1072
                DataBinding.FieldName = 'Price'
                Width = 51
              end
              object clv6Status: TcxGridDBColumn
                DataBinding.FieldName = 'Status'
                Visible = False
              end
            end
            object vb1: TcxGridDBBandedTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.EditAutoHeight = eahRow
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsCustomize.GroupRowSizing = True
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.CellAutoHeight = True
              OptionsView.FooterMultiSummaries = True
              OptionsView.GroupByBox = False
              OptionsView.GroupFooterMultiSummaries = True
              OptionsView.GroupRowStyle = grsOffice11
              OptionsView.HeaderAutoHeight = True
              OptionsView.HeaderFilterButtonShowMode = fbmButton
              OptionsView.Indicator = True
              Bands = <
                item
                  Width = 675
                end
                item
                  Width = 107
                end
                item
                end>
              object clvb1RequestId: TcxGridDBBandedColumn
                Caption = #8470
                DataBinding.FieldName = 'RequestId'
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object clvb1DU: TcxGridDBBandedColumn
                DataBinding.FieldName = 'DU'
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object clvb1Added: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Added'
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object clvb1WorkType: TcxGridDBBandedColumn
                DataBinding.FieldName = 'WorkType'
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object clvb1Addr: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Addr'
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object clvb1LocationTitle: TcxGridDBBandedColumn
                DataBinding.FieldName = 'LocationTitle'
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object clvb1State: TcxGridDBBandedColumn
                DataBinding.FieldName = 'State'
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object clvb1NOTE: TcxGridDBBandedColumn
                DataBinding.FieldName = 'NOTE'
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object clvb1Price: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Price'
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object clvb1HouseCompany_Title: TcxGridDBBandedColumn
                DataBinding.FieldName = 'HouseCompany_Title'
                Position.BandIndex = 1
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object clvb1LocalId: TcxGridDBBandedColumn
                DataBinding.FieldName = 'LocalId'
                Position.BandIndex = 1
                Position.ColIndex = 0
                Position.RowIndex = 1
              end
              object clvb1CreatedAtUtc: TcxGridDBBandedColumn
                DataBinding.FieldName = 'CreatedAtUtc'
                Position.BandIndex = 2
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object clvb1CreatedBy_UserName: TcxGridDBBandedColumn
                DataBinding.FieldName = 'CreatedBy_UserName'
                Position.BandIndex = 2
                Position.ColIndex = 0
                Position.RowIndex = 1
              end
              object clvb1CreatedBy_Company_Title: TcxGridDBBandedColumn
                DataBinding.FieldName = 'CreatedBy_Company_Title'
                Position.BandIndex = 2
                Position.ColIndex = 0
                Position.RowIndex = 2
              end
            end
            object l6: TcxGridLevel
              GridView = v6
            end
          end
          object doc4: TdxBarDockControl
            Left = 0
            Top = 0
            Width = 904
            Height = 26
            Align = dalTop
            BarManager = bm1
          end
        end
      end
    end
    object pnl1: TdxDockPanel
      Left = 0
      Top = 0
      Width = 912
      Height = 361
      AllowDock = []
      AllowDockClients = []
      AllowFloating = False
      AutoHide = False
      Caption = #1057#1087#1080#1089#1086#1082' '#1088#1072#1073#1086#1090
      CaptionButtons = []
      Dockable = False
      TabsProperties.Options = [pcoAlwaysShowGoDialogButton, pcoCloseButton, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize]
      DockingType = 2
      OriginalWidth = 185
      OriginalHeight = 361
      object cnt1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 904
        Height = 331
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = lcaf1
        object grd2: TcxGrid
          Left = 295
          Top = 16
          Width = 564
          Height = 295
          Align = alClient
          TabOrder = 14
          object v2: TcxGridDBTableView
            OnKeyUp = v2KeyUp
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Visible = False
            Navigator.Buttons.PriorPage.Visible = False
            Navigator.Buttons.Prior.Visible = False
            Navigator.Buttons.Next.Visible = False
            Navigator.Buttons.NextPage.Visible = False
            Navigator.Buttons.Last.Visible = False
            Navigator.Buttons.Insert.Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Delete.Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Hint = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Visible = False
            Navigator.Buttons.Refresh.Visible = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Visible = False
            OnCellClick = v2CellClick
            DataController.DataSource = src_WorkSpecList
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.ImmediateEditor = False
            OptionsBehavior.NavigatorHints = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.CellAutoHeight = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object clv2jwork: TcxGridDBColumn
              DataBinding.FieldName = 'jwork'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.DefaultImageIndex = 8
              Properties.Images = il1
              Properties.ImmediatePost = True
              Properties.Items = <
                item
                end>
              Options.ShowCaption = False
              Width = 22
            end
            object clv2CODE: TcxGridDBColumn
              Caption = #1050#1086#1076
              DataBinding.FieldName = 'CODE'
            end
            object clv2REQUESTID: TcxGridDBColumn
              Caption = #1047#1072#1103#1074#1082#1072
              DataBinding.FieldName = 'REQUESTID'
              Width = 54
            end
            object clv2DATA: TcxGridDBColumn
              Caption = #1044#1072#1090#1072
              DataBinding.FieldName = 'DATA'
              Width = 81
            end
            object clv2KONTRAGENT: TcxGridDBColumn
              DataBinding.FieldName = 'KONTRAGENT'
              Visible = False
              VisibleForCustomization = False
            end
            object clv2SERVISWORK: TcxGridDBColumn
              Caption = #1056#1072#1073#1086#1090#1072' '#1087#1086' '#1085#1072#1088#1103#1076#1091
              DataBinding.FieldName = 'SERVISWORK'
              Visible = False
              VisibleForCustomization = False
              Width = 159
            end
            object clv2sworkname: TcxGridDBColumn
              Caption = #1056#1072#1073#1086#1090#1072' '#1087#1086' '#1085#1072#1088#1103#1076#1091
              DataBinding.FieldName = 'sworkname'
              Width = 146
            end
            object clv2Street: TcxGridDBColumn
              Caption = #1059#1083#1080#1094#1072
              DataBinding.FieldName = 'Street'
              Visible = False
              VisibleForCustomization = False
              Width = 136
            end
            object clv2streetname: TcxGridDBColumn
              Caption = #1059#1083#1080#1094#1072
              DataBinding.FieldName = 'streetname'
              Visible = False
              VisibleForCustomization = False
              Width = 146
            end
            object clv2HOUSE: TcxGridDBColumn
              Caption = #1044#1086#1084
              DataBinding.FieldName = 'HOUSE'
              Visible = False
              VisibleForCustomization = False
              Width = 59
            end
            object clv2nomer: TcxGridDBColumn
              Caption = #1044#1086#1084
              DataBinding.FieldName = 'nomer'
              Visible = False
              VisibleForCustomization = False
              Width = 43
            end
            object clv2ADDR: TcxGridDBColumn
              Caption = #1050#1074#1072#1088#1090#1080#1088#1072
              DataBinding.FieldName = 'ADDR'
              Visible = False
              VisibleForCustomization = False
            end
            object clv2flat: TcxGridDBColumn
              Caption = #1050#1074#1072#1088#1090#1080#1088#1072
              DataBinding.FieldName = 'flat'
              Visible = False
              VisibleForCustomization = False
              Width = 60
            end
            object clv2ED: TcxGridDBColumn
              Caption = #1045#1076'. '#1080#1079#1084'.'
              DataBinding.FieldName = 'ED'
              Visible = False
              VisibleForCustomization = False
              Width = 69
            end
            object clv2NOTE: TcxGridDBColumn
              Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1088#1072#1073#1086#1090' ('#1084#1077#1089#1090#1086')'
              DataBinding.FieldName = 'NOTE'
              Width = 207
            end
            object clv2WORKLIST: TcxGridDBColumn
              DataBinding.FieldName = 'WORKLIST'
              Visible = False
              VisibleForCustomization = False
            end
            object clv2DISP_BASE: TcxGridDBColumn
              Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1077
              DataBinding.FieldName = 'DISP_BASE'
              Width = 179
            end
            object clv2Quantity: TcxGridDBColumn
              Caption = #1050#1086#1083'-'#1074#1086
              DataBinding.FieldName = 'Quantity'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.ImmediatePost = True
              Properties.ValueType = vtFloat
              Width = 58
            end
            object clv2PRICE: TcxGridDBColumn
              Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1088#1072#1073#1086#1090
              DataBinding.FieldName = 'PRICE'
              Width = 99
            end
            object clv2FDATA: TcxGridDBColumn
              Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103' '#1079#1072#1087#1080#1089#1080
              DataBinding.FieldName = 'FDATA'
              Options.Editing = False
              Width = 128
            end
            object clv2JWORK1: TcxGridDBColumn
              DataBinding.FieldName = 'JWORK1'
              Visible = False
              VisibleForCustomization = False
            end
          end
          object l2: TcxGridLevel
            GridView = v2
          end
        end
        object cbb_filtr: TcxComboBox
          Left = 24
          Top = 66
          Properties.ImmediatePost = True
          Properties.Items.Strings = (
            #1042#1089#1077' '#1088#1072#1073#1086#1090#1099
            #1057#1072#1085#1090#1077#1093#1085#1080#1095#1077#1089#1082#1080#1077' '#1088#1072#1073#1086#1090#1099
            #1054#1073#1097#1077#1089#1090#1088#1086#1080#1090#1077#1083#1100#1085#1099#1077' '#1088#1072#1073#1086#1090#1099
            #1069#1083#1077#1082#1090#1088#1086#1084#1086#1085#1090#1072#1078#1085#1099#1077' '#1088#1072#1073#1086#1090#1099)
          Properties.OnEditValueChanged = cbb_filtrPropertiesEditValueChanged
          Style.HotTrack = False
          TabOrder = 0
          Text = #1042#1089#1077' '#1088#1072#1073#1086#1090#1099
          Width = 236
        end
        object dt1: TcxDateEdit
          Left = 79
          Top = 127
          Style.HotTrack = False
          TabOrder = 2
          Width = 191
        end
        object cbb_work: TcxLookupComboBox
          Left = 14
          Top = 168
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
          Style.HotTrack = False
          TabOrder = 3
          Width = 218
        end
        object btn_w: TcxButton
          Left = 235
          Top = 168
          Width = 35
          Height = 21
          Caption = 'btn_w'
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
          TabOrder = 4
          OnClick = btn_wClick
        end
        object txt_wed: TcxTextEdit
          Left = 79
          Top = 192
          TabStop = False
          Properties.ReadOnly = True
          Style.HotTrack = False
          TabOrder = 5
          Width = 191
        end
        object ed_col: TcxSpinEdit
          Left = 79
          Top = 216
          Properties.ValueType = vtFloat
          Style.HotTrack = False
          TabOrder = 6
          Width = 191
        end
        object ced_wprice: TcxCurrencyEdit
          Left = 79
          Top = 240
          Properties.DisplayFormat = ',0.00;-,0.00'
          Style.HotTrack = False
          TabOrder = 7
          Width = 191
        end
        object btn_wAdd: TcxButton
          Left = 14
          Top = 288
          Width = 75
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 9
          OnClick = btn_wAddClick
        end
        object btn_wEdit: TcxButton
          Left = 92
          Top = 288
          Width = 100
          Height = 25
          Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
          TabOrder = 10
          OnClick = btn_wEditClick
        end
        object btn_wDel: TcxButton
          Left = 195
          Top = 288
          Width = 75
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          Enabled = False
          TabOrder = 11
          OnClick = btn_wDelClick
        end
        object doc3: TdxBarDockControl
          Left = 10000
          Top = 10000
          Width = 547
          Height = 26
          Align = dalTop
          BarManager = bm1
          Visible = False
        end
        object grd5: TcxGrid
          Left = 10000
          Top = 10000
          Width = 547
          Height = 265
          TabOrder = 13
          Visible = False
          object v5: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = src_worklist
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            Styles.OnGetContentStyle = v5StylesGetContentStyle
            object clv5FLAG: TcxGridDBColumn
              DataBinding.FieldName = 'FLAG'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Properties.OnEditValueChanged = clv5FLAGPropertiesEditValueChanged
              HeaderGlyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                04000000000080000000C40E0000C40E00001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                FFFFF000000000000000F8F7F7F7F7F7F7F0F87F707F7F7F7F70F8F70007F7F7
                F7F0F87F0F007F7F7F70F8F7F7F007F7F7F0F87F707F7F7F7F70F8F70007F7F7
                F7F0F87F0F007F7F7F70F8F7F7F007F7F7F0F87F7F7F7F7F7F70F80000000000
                0000F8FCCCCCCCCCFCF0F888888888888888FFFFFFFFFFFFFFFF}
              Width = 23
              IsCaptionAssigned = True
            end
            object clv5CODE: TcxGridDBColumn
              Caption = #1050#1086#1076
              DataBinding.FieldName = 'CODE'
              Options.Editing = False
              Width = 50
            end
            object clv5DATA: TcxGridDBColumn
              Caption = #1044#1072#1090#1072
              DataBinding.FieldName = 'DATA'
              Options.Editing = False
              Width = 82
            end
            object clv5KONTRAGENT: TcxGridDBColumn
              DataBinding.FieldName = 'KONTRAGENT'
              Visible = False
              VisibleForCustomization = False
            end
            object clv5KONTRNAME: TcxGridDBColumn
              Caption = #1055#1086#1076#1088#1103#1076#1085#1072#1103' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
              DataBinding.FieldName = 'KONTRNAME'
              Options.Editing = False
              Width = 176
            end
            object clv5STREET: TcxGridDBColumn
              DataBinding.FieldName = 'STREET'
              Visible = False
              VisibleForCustomization = False
            end
            object clv5STREETNAME: TcxGridDBColumn
              Caption = #1059#1083#1080#1094#1072
              DataBinding.FieldName = 'STREETNAME'
              Options.Editing = False
              Width = 186
            end
            object clv5HOUSE: TcxGridDBColumn
              Caption = #1044#1086#1084
              DataBinding.FieldName = 'HOUSE'
              Visible = False
              VisibleForCustomization = False
              Width = 33
            end
            object clv5NOMER: TcxGridDBColumn
              Caption = #1044#1086#1084
              DataBinding.FieldName = 'NOMER'
              Options.Editing = False
              Width = 34
            end
            object clv5DU: TcxGridDBColumn
              DataBinding.FieldName = 'DU'
              Visible = False
              VisibleForCustomization = False
            end
            object clv5DUNAME: TcxGridDBColumn
              DataBinding.FieldName = 'DUNAME'
              Visible = False
              VisibleForCustomization = False
            end
            object clv5WORKER: TcxGridDBColumn
              DataBinding.FieldName = 'WORKER'
              Visible = False
              VisibleForCustomization = False
            end
            object clv5FIO: TcxGridDBColumn
              DataBinding.FieldName = 'FIO'
              Visible = False
              VisibleForCustomization = False
            end
            object clv5Ex: TcxGridDBColumn
              DataBinding.FieldName = 'Ex'
              Visible = False
              VisibleForCustomization = False
            end
          end
          object l5: TcxGridLevel
            GridView = v5
          end
        end
        object ppd1: TcxPopupEdit
          Left = 79
          Top = 264
          Properties.ButtonGlyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000020101120F0B094B0F0C0C4D0F0D094A0F0E094A0F0E094A0F0E094A0F0E
            094A0F0E094A0F0D094A0F0C094A0E0B094A0E0A094B0201011B000000000000
            000045261767D5A47DFFD9B180FFE3C282FFE3C784FFE3CB85FFE3CC86FFE3CB
            85FFE3C784FFE3C282FFDFB87FFFD3A37BFFCA8C77FF30110D64000000000000
            000037251455FDFEFEFFE5E7FFFFFBFCFEFFFBFCFEFFFBFBFEFFFBFBFEFFFBFB
            FEFFFBFCFEFFFBFCFEFFFBFCFFFFFBFDFFFFFDF4EEFF1F0B044B000000000000
            00001E14063DFCF3E8FFE0DAF0FFF5EEEDFFF3EDEBFFF2EDEAFFF1EDE9FFEFEA
            E7FFEEE9E7FFF6F0EFFFFAF4F4FFFBF6F5FFFAE1D2FF0B04002E000000000000
            00000C080024FEF6E0FFE0E1F8FFF6F6F5FFF1F2F2FFEEEEEEFFEAEBEBFFE8E8
            E8FFE4E7EAFFA2AEBCFFF6F6F6FFFFFFFFFFEAD2B7F802000015000000000000
            00000301000FF2DFBFF9DFD8F0FFF8F0EEFFF7F0EFFFFAF3F0FFFDF8F1FFB7DA
            ECFF78A0DAFFE1E6F2FFFAF3F3FFFAF4F4FFC8B093E300000004000000000000
            000000000002D8C6A4E8DEDCF2FFF6F2F0FFF4F1F1FFF8F4F1FFAAD9F2FF0DA2
            EFFF97DEF5FFF8F2F1FFF6F2F1FFF6F3F4FFA49273C700000000000000000000
            000000000000B8A987D1DDDDF2FFF2F1EFFFF4F1EFFFA8D3ECFF0EA3EFFF76DF
            FCFFEFF0F1FFF2EFEFFFF2F0F0FFF3F3F5FF8A7555AA00000000000000000000
            0000000000009A8766B8D8D2E5FFEDE3E0FFA2C9E2FF0FA6F1FF75DDF9FFEAE6
            E2FFEBE4E1FFEAE2E1FFEAE2E2FFEDE6E8FF6851348900000000000000000000
            000000000000867253A0DBD8EAFFA2CFE7FF0FA8F2FF77DAF5FFE6E6E4FFE8E6
            E4FFE8E5E4FFE8E5E5FFE8E5E5FFEEE9E7FF412D176400000000000000000000
            0000000000006E54358399C7EAFF11A9F2FF7BDEF8FFD6D7D4FFE5E3E2FFE1DF
            DCFFDEDCDAFFE5E3E3FFD8D6D3FFEDE2DAFF1D10054300000000000000000000
            0000000000001033467C14AFF7FF45A1B6CB545759637B7A78C4565656686463
            628B6B6B69A25A5A5A64797977CE52504E610100000800000000000000000000
            000000273E6B0FADF2FC48A2B5CB535758780000000059595991000000031A1A
            1A3E3E3E3E5A000000005B5B5B9D00000000000000000000000000000000201F
            1F7138B2E4FC4298AABC0001020B030303040000000003030305000000000101
            01020202020300000000030303050000000000000000000000001018345CB5B6
            BAFD979999C20002030C00000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000475F8DA46B7D
            9EB40303030E0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          Properties.PopupAutoSize = False
          Properties.PopupControl = mmo1
          Properties.PopupSysPanelStyle = True
          Properties.ReadOnly = False
          Properties.OnCloseUp = ppd1PropertiesCloseUp
          Properties.OnPopup = ppd1PropertiesPopup
          Style.HotTrack = False
          TabOrder = 8
          OnClick = ppd1Click
          Width = 191
        end
        object cbb_isPay: TcxComboBox
          Left = 24
          Top = 90
          Properties.ImmediatePost = True
          Properties.Items.Strings = (
            #1051#1102#1073#1099#1077
            #1090#1086#1083#1100#1082#1086' '#1087#1083#1072#1090#1085#1099#1077
            #1090#1086#1083#1083#1100#1082#1086' '#1087#1086' '#1058#1054)
          Properties.OnEditValueChanged = cbb_isPayPropertiesEditValueChanged
          Style.HotTrack = False
          TabOrder = 1
          Text = #1051#1102#1073#1099#1077
          Width = 236
        end
        object grp1: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          ButtonOptions.Buttons = <>
          Hidden = True
          ItemIndex = 1
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object itm_grd2: TdxLayoutItem
          AlignHorz = ahClient
          AlignVert = avClient
          Parent = grpcnt1Group5
          Control = grd2
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object grpcnt1Group1: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avClient
          Parent = grp1
          SizeOptions.AssignedValues = [sovSizableHorz]
          SizeOptions.SizableHorz = True
          SizeOptions.Width = 276
          ButtonOptions.Buttons = <
            item
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                F0F0FF9595E51B1B4CB9B9B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEDEDFFC1C1FFDADAFF4D4DD208083FB7B7B7FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDFFC1C1FF
                D1D1FF7D7DE80C0CC70000B9080845B7B7B7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFBFBFFFCECEFF7E7EEA0000BD0000BF0000C60000B802
                0241BBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3FF7F7FE9
                0000BB0000BF0000C00000C00000C40000B90A0A43B7B7B7FFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFDADAFC3232D00000BB0000C00000C00000C000
                00C50103BC26183AB9B9B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                E1E1FE3232D00000BC0000C00000BF0000BC9CAAF7EFAAA0410404BBBBBBFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFD3838D00000BA0000BC91
                9BEDFFFAE8FF9293E75B5B460A0AB7B7B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFE0E0FF3536D19199EBFFF1ECFF8483FF7B7BFF8B8BE45E5E4105
                05B9B9B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBE9FFFFD5CCFF
                8584FF7B7BFF8080FF8080FF8989E45E5E430909B7B7B7FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFDAD9FF8E8EFF7C7CFF8080FF8080FF7F7FFF8A
                8AE75E5E450A0AB7B7B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                E0E0FF9090FF7B7BFF8080FF8080FF8080FF8A8AE35E5E4D1111FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFF9191FF7B7BFF8080FF80
                80FF8080FF9090AE2626FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFE0E0FF9191FF7B7BFF8282FF8A8ABF4040402626FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0FF9090FF85
                85C13F3F412A2AE3E3E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFE2E2C659593C2828E3E3E3FFFFFF}
              OnClick = grpcnt1Group1Button0Click
            end>
          ButtonOptions.ShowExpandButton = True
          Index = 0
        end
        object itmcnt1Item1: TdxLayoutItem
          CaptionOptions.Text = #1060#1080#1083#1100#1090#1088' '#1088#1072#1073#1086#1090
          CaptionOptions.Visible = False
          Parent = lgrpcnt1Group1
          Control = cbb_filtr
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object itmcnt1Item2: TdxLayoutItem
          CaptionOptions.Text = #1044#1072#1090#1072
          Parent = grpcnt1Group1
          Control = dt1
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object itmcnt1Item3: TdxLayoutItem
          AlignHorz = ahClient
          CaptionOptions.Text = #1056#1072#1073#1086#1090#1072
          CaptionOptions.Layout = clTop
          Parent = grpcnt1Group4
          Control = cbb_work
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object itmcnt1Item4: TdxLayoutItem
          AlignVert = avBottom
          CaptionOptions.Text = 'New Item'
          CaptionOptions.Visible = False
          Parent = grpcnt1Group3
          Control = btn_w
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object grpcnt1Group3: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = grpcnt1Group1
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 2
        end
        object itmcnt1Item5: TdxLayoutItem
          CaptionOptions.Text = #1045#1076'. '#1080#1079#1084'.'
          Parent = grpcnt1Group1
          Control = txt_wed
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object grpcnt1Group4: TdxLayoutGroup
          AlignHorz = ahClient
          CaptionOptions.Text = 'Hidden Group'
          Parent = grpcnt1Group3
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object itmcnt1Item6: TdxLayoutItem
          CaptionOptions.Text = #1054#1073#1098#1077#1084
          Parent = grpcnt1Group1
          Control = ed_col
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object itmcnt1Item7: TdxLayoutItem
          CaptionOptions.Text = #1057#1090#1086#1080#1084#1086#1089#1090#1100
          Parent = grpcnt1Group1
          Control = ced_wprice
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object itmcnt1Item12: TdxLayoutItem
          CaptionOptions.Text = 'cxMemo1'
          ControlOptions.ShowBorder = False
          Index = -1
        end
        object grpcnt1Group2: TdxLayoutGroup
          CaptionOptions.Text = 'New Group'
          Parent = grpcnt1Group1
          ButtonOptions.Buttons = <>
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 7
        end
        object itmcnt1Item8: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = 'New Item'
          CaptionOptions.Visible = False
          Parent = grpcnt1Group2
          Control = btn_wAdd
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object itmcnt1Item9: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = 'New Item'
          CaptionOptions.Visible = False
          Parent = grpcnt1Group2
          SizeOptions.AssignedValues = [sovSizableHorz]
          SizeOptions.SizableHorz = True
          SizeOptions.Width = 100
          Control = btn_wEdit
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object itmcnt1Item10: TdxLayoutItem
          CaptionOptions.Text = 'New Item'
          CaptionOptions.Visible = False
          Parent = grpcnt1Group2
          Control = btn_wDel
          ControlOptions.ShowBorder = False
          Enabled = False
          Index = 2
        end
        object grpcnt1Group5: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = #1057#1087#1080#1089#1086#1082' '#1088#1072#1073#1086#1090
          Parent = grpcnt1Group6
          ButtonOptions.Buttons = <>
          ShowBorder = False
          Index = 1
        end
        object grpcnt1Group6: TdxLayoutGroup
          AlignHorz = ahClient
          CaptionOptions.Text = 'New Group'
          Parent = grp1
          ButtonOptions.Buttons = <>
          ItemIndex = 1
          LayoutDirection = ldTabbed
          ShowBorder = False
          TabbedOptions.TabPosition = tpRight
          OnTabChanged = grpcnt1Group6TabChanged
          Index = 1
        end
        object grpcnt1Group7: TdxLayoutGroup
          CaptionOptions.Text = #1056#1072#1073#1086#1090#1072' '#1087#1086' '#1072#1076#1088#1077#1089#1072#1084
          Parent = grpcnt1Group6
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object itmcnt1Item13: TdxLayoutItem
          CaptionOptions.Text = 'dxBarDockControl1'
          CaptionOptions.Visible = False
          Parent = grpcnt1Group7
          Control = doc3
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object itmcnt1Item14: TdxLayoutItem
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'cxGrid1'
          CaptionOptions.Visible = False
          Parent = grpcnt1Group7
          Control = grd5
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object itmcnt1Item15: TdxLayoutItem
          CaptionOptions.Text = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          Parent = grpcnt1Group1
          Control = ppd1
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object LItemcnt1Item1: TdxLayoutItem
          CaptionOptions.Text = 'cxComboBox1'
          CaptionOptions.Visible = False
          Parent = lgrpcnt1Group1
          Control = cbb_isPay
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object lgrpcnt1Group1: TdxLayoutGroup
          CaptionOptions.Text = #1060#1080#1083#1100#1090#1088' '#1088#1072#1073#1086#1090
          Parent = grpcnt1Group1
          ButtonOptions.Buttons = <>
          Index = 0
        end
      end
    end
  end
  object docm_1: TdxDockingManager
    Color = clBtnFace
    DefaultLayoutSiteProperties.AllowDockClients = []
    DefaultFloatSiteProperties.AllowDockClients = []
    DefaultHorizContainerSiteProperties.AllowDock = []
    DefaultHorizContainerSiteProperties.AllowDockClients = []
    DefaultHorizContainerSiteProperties.AllowFloating = False
    DefaultHorizContainerSiteProperties.CaptionButtons = [cbHide]
    DefaultHorizContainerSiteProperties.Dockable = False
    DefaultHorizContainerSiteProperties.ImageIndex = -1
    DefaultVertContainerSiteProperties.AllowDock = []
    DefaultVertContainerSiteProperties.AllowDockClients = []
    DefaultVertContainerSiteProperties.AllowFloating = False
    DefaultVertContainerSiteProperties.Dockable = False
    DefaultVertContainerSiteProperties.ImageIndex = -1
    DefaultTabContainerSiteProperties.AllowDock = []
    DefaultTabContainerSiteProperties.AllowDockClients = []
    DefaultTabContainerSiteProperties.AllowFloating = False
    DefaultTabContainerSiteProperties.Dockable = False
    DefaultTabContainerSiteProperties.ImageIndex = -1
    DockStyle = dsVS2005
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [doActivateAfterDocking, doDblClickDocking, doTabContainerHasCaption, doTabContainerCanAutoHide, doSideContainerCanClose, doSideContainerCanAutoHide, doTabContainerCanInSideContainer, doRedrawOnResize, doFillDockingSelection, doUseCaptionAreaToClientDocking]
    Left = 336
    Top = 216
    PixelsPerInch = 96
  end
  object laf1: TdxLayoutLookAndFeelList
    Left = 364
    Top = 216
    object lcaf1: TdxLayoutCxLookAndFeel
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 2
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 3
      Offsets.RootItemsAreaOffsetVert = 3
    end
  end
  object src_WorkSpecList: TDataSource
    DataSet = ds_WorkSpecList
    Left = 365
    Top = 160
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
      '')
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
      '    ws.WORKLIST = :code')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 336
    Top = 160
  end
  object ds_smat: TpFIBDataSet
    SelectSQL.Strings = (
      'select SM.CODE, SM.KSERVISMATERIAL, SM.NAME, SM.ED, SM.PRICE'
      'from SERVISMATERIAL SM'
      'ORDER BY SM.KSERVISMATERIAL, SM.NAME')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 321
    Top = 405
  end
  object src_smat: TDataSource
    DataSet = ds_CLASSMAT
    Left = 365
    Top = 421
  end
  object ds_Jwork: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE JWORK'
      'SET '
      '    JWORKTYPE = :JWORKTYPE,'
      '    REGDATE = :REGDATE,'
      '    KONTRAGENT = :KONTRAGENT,'
      '    HOUSE = :HOUSE,'
      '    DESCRIPTION = :DESCRIPTION,'
      '    PLACE = :PLACE,'
      '    PLANDATE = :PLANDATE,'
      '    FACTDATE = :FACTDATE,'
      '    NOTE = :NOTE,'
      '    SHOWRESULT = :SHOWRESULT,'
      '    WORKSPECLIST = :WORKSPECLIST,'
      '    LASTTIME = :LASTTIME,'
      '    USERNAME = :USERNAME,'
      '    STREET = :STREET'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    JWORK'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO JWORK('
      '    CODE,'
      '    JWORKTYPE,'
      '    REGDATE,'
      '    KONTRAGENT,'
      '    HOUSE,'
      '    DESCRIPTION,'
      '    PLACE,'
      '    PLANDATE,'
      '    FACTDATE,'
      '    NOTE,'
      '    SHOWRESULT,'
      '    WORKSPECLIST,'
      '    LASTTIME,'
      '    USERNAME,'
      '    STREET'
      ')'
      'VALUES('
      '    :CODE,'
      '    :JWORKTYPE,'
      '    :REGDATE,'
      '    :KONTRAGENT,'
      '    :HOUSE,'
      '    :DESCRIPTION,'
      '    :PLACE,'
      '    :PLANDATE,'
      '    :FACTDATE,'
      '    :NOTE,'
      '    :SHOWRESULT,'
      '    :WORKSPECLIST,'
      '    :LASTTIME,'
      '    :USERNAME,'
      '    :STREET'
      ')')
    RefreshSQL.Strings = (
      'SELECT JW.CODE, '
      '       JW.JWORKTYPE, jt.name JTName,'
      '       JW.REGDATE, '
      '       JW.KONTRAGENT, k.Name KontrName,'
      '       JW.HOUSE, h.nomer,'
      '       JW.DESCRIPTION, '
      '       JW.PLACE, '
      '       JW.PLANDATE, '
      '       JW.FACTDATE, '
      '       JW.NOTE, '
      '       JW.SHOWRESULT, '
      '       JW.WORKSPECLIST, '
      '       JW.LASTTIME, '
      '       JW.USERNAME, '
      '       JW.STREET, s.name StreetName'
      'FROM JWORK JW'
      'left outer join house h on h.code=JW.HOUSE'
      'Left outer join street s on s.code = jw.street'
      'left outer join kontragent k on k.code=jw.kontragent'
      'left outer join JWORKTYPE jt on jt.code=jw.JWORKTYPE'
      ''
      ' WHERE '
      '        JW.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT JW.CODE,'
      '       JW.JWORKTYPE, jt.name JTName,'
      '       JW.REGDATE, '
      '       JW.KONTRAGENT, k.Name KontrName,'
      '       JW.HOUSE, h.nomer,'
      '       JW.DESCRIPTION, '
      '       JW.PLACE, '
      '       JW.PLANDATE, '
      '       JW.FACTDATE, '
      '       JW.NOTE, '
      '       JW.SHOWRESULT, '
      '       JW.WORKSPECLIST, '
      '       JW.LASTTIME, '
      '       JW.USERNAME,'
      '       JW.STREET, s.name StreetName, JW.WORKSPECLIST1'
      ''
      'FROM JWORK JW'
      'left outer join house h on h.code=JW.HOUSE'
      'Left outer join street s on s.code = jw.street'
      'left outer join kontragent k on k.code=jw.kontragent'
      'left outer join JWORKTYPE jt on jt.code=jw.JWORKTYPE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    AutoCommit = True
    Left = 320
    Top = 496
  end
  object src_Jwork: TDataSource
    DataSet = ds_Jwork
    Left = 349
    Top = 496
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
      'where WS.WORKSPECLIST  = :mas_code')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    AutoCommit = True
    DataSource = src_WorkSpecList
    Left = 712
    Top = 600
    dcForceOpen = True
  end
  object src_WorkSpecMaterial: TDataSource
    DataSet = ds_WorkSpecMaterial
    Left = 740
    Top = 600
  end
  object ds_ServisMaterial: TpFIBDataSet
    SelectSQL.Strings = (
      'select SM.CODE, SM.KSERVISMATERIAL, SM.NAME, SM.ED, SM.PRICE'
      'from SERVISMATERIAL SM'
      'ORDER BY SM.KSERVISMATERIAL, SM.NAME')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 320
    Top = 536
  end
  object src_ServisMaterial: TDataSource
    DataSet = ds_ServisMaterial
    Left = 348
    Top = 536
  end
  object src_serviswork: TDataSource
    DataSet = ds_serviswork
    Left = 365
    Top = 271
  end
  object ds_serviswork: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME'
      'from SERVISWORK'
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 336
    Top = 272
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_filtr
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = cbb_isPay
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = cbb_work
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = ced_wprice
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = clv1Addr
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1CreatedAtUtc
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1HouseCompany_Title
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1LocationTitle
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1NOTE
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1Price
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1RequestId
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1State
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1WorkType
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clvb1Added
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = dt1
        Properties.Strings = (
          'Date')
      end
      item
        Component = ed_col
        Properties.Strings = (
          'Value')
      end
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Left'
          'Top'
          'Width')
      end>
    StorageName = 'prop1'
    Left = 393
    Top = 160
  end
  object il1: TcxImageList
    FormatVersion = 1
    DesignInfo = 27787768
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000009140B231E46247D32783ADB33833DF3308139F32871
          2FDB163F197D0511072300000000000000000000000000000000000000000000
          00000000000018321D533E874BE6419950FF7DC28FFF96D0A6FF96CFA6FF78BE
          89FF368D42FF28742FE60D291053000000000000000000000000000000000000
          00001A3420534A9559F464B478FFA8DBB5FF87CC98FF66BC7DFF64BA7CFF86CB
          98FFA5D9B4FF58AA6BFF2A7B32F40D2910530000000000000000000000000C16
          0E224D925CE56AB97DFFA8DBB2FF60BC77FF5CBA73FF59B870FF59B56FFF58B5
          6FFF5BB774FFA5D9B3FF5AAA6CFF28752FE50511062200000000000000002E54
          377E53AB68FFAADDB4FF64C179FF5FBE71FF60BC77FFFFFFFFFFFFFFFFFF59B8
          70FF58B56EFF5CB774FFA6DAB4FF388F43FF16401A7E00000000000000005394
          64DB8ACC98FF89D396FF6BC67AFF63C170FF55AB65FFFFFFFFFFFFFFFFFF59B8
          70FF59B870FF5BB972FF85CC97FF7BBE8DFF297231DB000000000000000061A9
          76F6A9DDB3FF7DCF8AFF75CC81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF59B870FF67BE7DFF9CD4ABFF32833BF6000000000000000065AC
          7AF6B6E2BEFF8BD597FF7AC986FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF59B870FF69C17EFF9DD4AAFF368640F600000000000000005E9B
          71DBACDDB6FFA6DFAFFF81CB8CFF7CC986FF6EBD79FFFFFFFFFFFFFFFFFF5BAC
          6AFF60BC77FF5CBA73FF8BD199FF80C592FF347A3DDB0000000000000000375B
          437E85C797FFD2EED7FF95D9A0FF8AD394FF7FC889FFFFFFFFFFFFFFFFFF79CD
          85FF6BC37CFF6FC77EFFACDFB5FF459E57FF2048267E00000000000000000F19
          122265A579E5AADAB7FFD8F1DCFF92D89DFF88CD93FF84CC8EFF8BD496FF8AD4
          95FF83D28EFFAFE0B7FF6BB97DFF41894DE509140B2200000000000000000000
          0000253D2D536BB081F4AFDCBBFFDCF2E0FFB6E4BDFF9BDBA5FF96D9A0FFA5DF
          AFFFC0E8C5FF79C28AFF4D975BF419321E530000000000000000000000000000
          000000000000253D2D5366A67AE694CEA4FFC3E6CBFFCFEBD4FFC9E9CEFFAFDD
          B8FF6DB97FFF4F955FE61B342153000000000000000000000000000000000000
          00000000000000000000101A1323375B437D5E9C71DB65AB7AF362A976F35595
          66DB2F54387D0D170F2300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000205020A0103010700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000205030A37833DFF307936FB01030107000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000306030A408E47FF54A35CFF4F9F57FF327C38FE010402080000
          0000000000000000000000000000000000000000000000000000000000000000
          00000306030A499A51FF5BAC64FF77CA82FF74C87EFF51A059FF337D39FE0104
          0208000000000000000000000000000000000000000000000000000000000307
          040A51A65AFF63B56DFF7ECE89FF7BCC87FF76CA81FF76C981FF52A25AFF347E
          3AFE0204020800000000000000000000000000000000000000000306040959B0
          63FF6BBD76FF84D290FF7AC985FF60B26AFF63B46DFF78C983FF78CB82FF53A3
          5CFF347E3AFD02040208000000000000000000000000000000001A331D4651A2
          5BE479C986FF80CE8DFF50A459FC2246256F28552C8B5CAD67FF7CCC86FF79CB
          85FF54A45DFF347E3AFC0204020800000000000000000000000000000000162C
          193C53A45CE66DC079FF254B296F00000000000000002A592F915EAE68FF7DCD
          89FF7CCD87FF56A55FFF357F3BFC020402080000000000000000000000000000
          000019311C4324482965000000000000000000000000000000002B5A2F915FAF
          69FF7FCE8AFF7ECE89FF57A660FF36803CFC0204020800000000000000000000
          0000000000000000000000000000000000000000000000000000000000002B5A
          309160B06AFF81CF8DFF7FCF8BFF58A761FF398540FF02040208000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002B5B309162B26CFF82D18FFF7AC885FF57A660FF1B401E7B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002C5C319163B36DFF5FAF69FF1F45237900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000002C5C3191254E297F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000010103C4102020708000000000000000000000000000000000000
          0000000000000101070808073A41000000000000000000000000000000000000
          000013123D414F4CF2FF3F3EEBFD020207080000000000000000000000000000
          0000010107082422E1FC312FEAFF08073A410000000000000000000000001515
          3E415856F5FF6361FAFF5855F6FF403EEAFC0202070800000000000000000201
          07082B2AE3FC413FF1FF4C4AF6FF312FEAFF08073A4100000000000000000F0F
          292B5B58F6FF6562FAFF7170FFFF5956F6FF413FEBFC02020708020207083431
          E6FC4745F2FF6362FFFF4A48F4FF2F2DE9FF0605262B00000000000000000000
          00000F0F292B5B59F6FF6663FAFF7471FFFF5A58F6FF4240EBFC3E3CEAFD504D
          F4FF6867FFFF504EF5FF3634EBFF0707272B0000000000000000000000000000
          0000000000000F0F292B5C5AF6FF6764FAFF7472FFFF7370FFFF706EFFFF6E6C
          FFFF5755F7FF3F3DEEFF0808272B000000000000000000000000000000000000
          00000000000000000000100F292B5D5BF7FF7976FFFF5956FFFF5754FFFF7270
          FFFF4846F0FF0A0A282B00000000000000000000000000000000000000000000
          00000000000000000000030308085C59F4FD7D79FFFF5E5BFFFF5B58FFFF7674
          FFFF4542EDFD0202070800000000000000000000000000000000000000000000
          000000000000030308086562F6FC706DFBFF807EFFFF7E7BFFFF7C79FFFF7977
          FFFF5E5CF7FF4643ECFC02020708000000000000000000000000000000000000
          0000040308086D6AF9FC7774FDFF8682FFFF7673FCFF6462F8FF605DF7FF6D6A
          FAFF7B79FFFF605DF7FF4744ECFC020207080000000000000000000000000404
          08087370FCFD7D7AFEFF8A87FFFF7C79FDFF6C69FBFF11102A2B10102A2B615E
          F8FF6E6CFAFF7D7AFFFF615FF7FF4845EDFC0101050500000000000000000E0E
          1F1F7A77FFFF817EFFFF817EFEFF7471FDFF12122A2B00000000000000001010
          2A2B625FF8FF6F6DFBFF7E7CFFFF625FF8FF201F686F01010202000000000000
          00000E0E1F1F7A77FFFF7976FEFF13132B2B0000000000000000000000000000
          000010102A2B6461F8FF6A68F9FF3735A0A80D0C272900000000000000000000
          0000000000000E0E1F1F14142B2B000000000000000000000000000000000000
          00000000000011102A2B28286C6F16153C3E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000004040A0A000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000090C1B231C275F7D3047A3DB334DB4F32E47B3F32843
          9EDB15255A7D050A192300000000000000000000000000000000000000000000
          000000000000171D41533C4DB3E63C52CCFF757AE8FF8F92EEFF8F92EEFF7178
          E4FF334DC1FF2743A5E60D183B53000000000000000000000000000000000000
          0000191D43534655C2F45C65E0FFA1A6F5FF7E86EFFF5B63E9FF595DE7FF7D84
          EEFF9EA0F4FF515DD7FF2947AFF40D183B530000000000000000000000000B0D
          1C224B57BAE5616BE3FFA1ACF5FF545FECFF505CEAFF4D59E9FF4E59E6FF4C56
          E6FF5056E6FF9EA2F4FF5460D6FF2642A5E5050A182200000000000000002B2F
          697E4B56DBFFA2ABF6FF5664F0FF5266EEFF4D59E9FF4D59E9FF4D59E9FF4D59
          E9FF4C58E6FF525AE6FF9FA3F5FF3450C4FF15255B7E00000000000000004F54
          B9DB818CEEFF7E91F7FF5D73F3FF4D59E9FF4D59E9FF4D59E9FF4D59E9FF4D59
          E9FF4D59E9FF4F5BE9FF7B83F0FF757BE2FF2840A0DB00000000000000005C60
          D2F6A1ABF7FF7086F8FF6882F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF4D59E9FF5C66EAFF969CF1FF304DB5F600000000000000006065
          D3F6AFB9F9FF7F93FAFF7085F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF4D59E9FF5E6AEEFF969DF1FF344CB7F60000000000000000585B
          BFDBA5AFF5FF9DABFAFF778CF0FF545FECFF545FECFF545FECFF545FECFF545F
          ECFF545FECFF6377F2FF818EF4FF787FE9FF3247A5DB00000000000000003434
          6F7E7D83EAFFCDD4FCFF8B9DFAFF7E93F7FF758AEEFF6C84F6FF6C84F6FF6C84
          F6FF6C84F6FF6379F3FFA4AFF8FF3E4FD0FF1F2A607E00000000000000000E0E
          1E225F5EC9E5A3A7F3FFD4DBFDFF879AFAFF7F91F0FF7A8EF1FF7F94F8FF7E92
          F9FF768CF8FFA8B6F8FF636EE3FF3E4EB3E5090B1A2200000000000000000000
          000023234A536564D6F4AAADF2FFD8DCFDFFAEBAFAFF91A3FAFF8B9DFAFF9CA9
          FBFFBAC7FCFF707BE9FF4957C3F4171D42530000000000000000000000000000
          00000000000023234A536060C9E68E93EDFFBEC3F8FFCCD3F9FFC4CBF9FFAAB4
          F4FF6670E2FF4B55BDE61A1E4353000000000000000000000000000000000000
          000000000000000000000F0F1F2334346E7D595BBEDB5E5FD2F35C5FD0F35055
          BADB2D31697D0C0D1D2300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000307936FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000037833EFF347E3AFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003F8D46FF57A15EFF559E5AFF357F3BFF317B37FF2662
          2AD31230146B0000000000000000000000000000000000000000000000000000
          00000000000046984EFF5FA966FF83C68BFF81C587FF7EC385FF7CC282FF6DB5
          74FF4D9552FF235C27CB040B051A000000000000000000000000000000000000
          0000000000004A9D53FF63AD6AFF87C98FFF85C78BFF82C689FF7FC487FF75BF
          7CFF7BC282FF559D5BFF235C27CB000000000000000000000000000000000000
          000000000000000000004B9E53FF63AE6CFF60AA68FF409048FF5AA361FF81C5
          87FF7EC485FF7CC282FF4E9654FF1331156B0000000000000000000000000000
          00000000000000000000000000004B9F54FF489A50FF000000002A5E30A63E8B
          44FD7CC184FF77C17EFF71B777FF29662ED80000000000000000000000000000
          0000000000000000000000000000000000004CA055FF0000000000000000224A
          258263AB6AFF83C78AFF82C588FF347E3AFF0000000000000000000000000000
          00005CB666FF59B263FF56AE60FF53A95CFF254D2A770000000000000000244D
          288267AF6FFF88C98FFF85C88CFF38843EFF0000000000000000000000000000
          0000509E5AD894D19DFF9DD5A6FF93CF9BFF52A95CFD29552D8227522C82499B
          51FD89C990FF85C88CFF7DC084FF337439D80000000000000000000000000000
          000029502E6B7BC785FFA0D7A9FF9ED6A7FF97D1A0FF77C081FF75BC7EFF8ECC
          97FF93CF9BFF90CE98FF61AB69FF1B3C1E6B0000000000000000000000000000
          0000000000004E9857CB82CA8CFFA1D8ABFF99D4A2FF9CD5A6FF9BD4A4FF92D0
          9BFF96D19EFF71B879FF397A40CB000000000000000000000000000000000000
          0000000000000A140B1A4E9858CB7CC887FF96D3A1FFA0D8AAFF9ED6A7FF90CE
          99FF70BA78FF3F8246CB0810091A000000000000000000000000000000000000
          00000000000000000000000000002A512E6B519F5BD85EB969FF5BB566FF4B96
          54D82449286B0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001340
          58FF15425EFF25699CFF2C76B4FF285E7EAD0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001242
          59FF5D9CD4FFA6CFF5FFA9CFECFF488BC1FF2C76B4FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000001E6D
          93FFCBE3F9FF61AAECFF4098E8FF1567C2FF1660AAFF2C76B4FF000000000000
          0000000000000000000000000000000000000000000000000000000000001E6D
          93FFC8E1F2FFD1E7FAFF347DB5FF3199C3FF6DC4DCFF4A9CCFFF3483C7FF0000
          000000000000000000000000000000000000000000000000000000000000040C
          13202689B9FFB0CBE1FF67A9C8FF60DCF5FF44D6F4FF8EEEFAFF5DB4E6FF3B8F
          D9FF000000000000000000000000000000000000000000000000000000000000
          0000000000002689B9FFBEE6F2FFB3F4FCFF60DCF5FF44D6F4FF8EEEFAFF5DB4
          E6FF3B8FD9FF0000000000000000000000000000000000000000000000000000
          000000000000000000002790BFFFC3EDF8FFB3F4FCFF60DCF5FF44D6F4FF8EEE
          FAFF5DB4E6FF3B8FD9FF00000000000000000000000000000000000000000000
          00000000000000000000000000002FBAE4FFC3EDF8FFB3F4FCFF60DCF5FF44D6
          F4FF8EEEFAFF5DB4E6FF3B8FD9FF000000000000000000000000000000000000
          0000000000000000000000000000000000002FBAE4FFC3EDF8FFB3F4FCFF60DC
          F5FF44D6F4FF8EEEFAFF5DB4E6FF3B8FD9FF0000000000000000000000000000
          000000000000000000000000000000000000000000002FBAE4FFC3EDF8FFB3F4
          FCFF68D9F5FF6FCFF3FF599DD0FF73ABDDFF4F91C9FF00000000000000000000
          00000000000000000000000000000000000000000000000000002FBAE4FFC3ED
          F8FFA8E2F8FF6CAEDDFFA5CFF4FFA5CFF4FFBDDBF7FF508EC5F7000000000000
          0000000000000000000000000000000000000000000000000000000000002FBA
          E4FFA7D4F4FFC5E1F8FFCCE3F9FFCCE3F9FFBDDBF7FF4E8FC7FD000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000050A8D9FF6AA5D8FFC9E1F7FFCBE3F8FF4295CAFF215984AE000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000002070809489CC9EA4F92C8FD4E90C8FF2989B8DF05101619000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FDFDFD00FBFBFB00F9F9F900F6F6F600F4F4F400F3F3F300F3F3F300F4F4
          F400F6F6F600F8F8F800FBFBFB00FDFDFD00FFFFFF00FFFFFF00FEFEFE00F7F7
          F700EEEEEE00E4E4E400DBDBDB00D3D3D300CCCCCC00C2C2C700C1C1C600CACA
          CA00D1D1D100D9D9D900E3E3E300ECECEC00F6F6F600FEFEFE00FFFFFF00FFFF
          FF00FFFFFF00FEFEFE00EFEFFA008282E2002E2ECC000A0AC4000A0AC4002E2E
          CC008282E200EFEFFA00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00D3D3F6002727CE000C0CD1000D0DE4000D0DEE000D0DEE000D0D
          E4000C0CD1002727CE00D3D3F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00E9E9FA002424D2001414ED001616F5002929ED001616FB001616FB002828
          ED001616F5001414ED002424D200E9E9FA00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF006F6FE1001C1CEF001F1FF300A2A2EF00E2E2F8003838EC003838EC00E2E2
          F700A1A1EE001E1EF3001C1CEF006F6FE100FFFFFF00FFFFFF00FFFFFF00F8F8
          FD002323DC003B3BF5004C4CED00E4E4F900FFFFFF00E3E3F800E2E2F800FFFF
          FF00E2E2F8003636EA002929F5002222DC00F8F8FD00FFFFFF00FFFFFF00D3D3
          F5003838E1006666F5006666F5006868EE00E4E4FA00FFFFFF00FFFFFF00E2E2
          F9004545EB003232F2003F3FF2003A3AE100D3D3F500FFFFFF00FFFFFF00CCCC
          F2004343DF007B7BF4007B7BF4007272F000E3E3FA00FFFFFF00FFFFFF00E3E3
          FA005C5CED006363F2007777F3004545DF00CCCCF200FFFFFF00FFFFFF00ECEC
          FA002929D4008C8CF2007B7BF100E3E3FB00FFFFFF00E4E4FB00E4E4FB00FFFF
          FF00E4E4FB007B7BEF008C8CF2002C2CD400ECECFA00FFFFFF00FFFFFF00FFFF
          FF004747D6007474E9009393F100B8B8F600E4E4FB008D8DF1008E8EF100E4E4
          FB00B9B9F6009393F1007575E9004747D600FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00C2C2EF002A2AD8009191EE009696F0009292F000B2B2F400B2B2F4009292
          F0009696F0009191EE002A2AD800C2C2EF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF009191E3003636DD009797F100A2A2F200A2A2F200A2A2F200A2A2
          F2009898F1003838DD009191E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00B5B5EB003939D5004D4DE1006D6DED006F6FED005252
          E2003B3BD500B5B5EB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00CDCDF100A3A3E500A3A3E500CDCD
          F100FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00D5D5D500CCCCCC00CCCCCC00CCCCCC00D1D1D100FAFAFA00FFFF
          FF00D5D5D500CCCCCC00CCCCCC00CCCCCC00D1D1D100F8F8F800FFFFFF00F5F5
          F500D2D2D200747270006B696800757370006967660041403F00BEBEBE00CCCC
          CC0055545400383635006A68670062605F005D5B5A00BDBDBD00E0E0E000C8C7
          C4007A797800ADABAA00D7D5D400C1BFBF008D8B8A003E3C3B0043413E005E5B
          560055535200817F7D00B0AEAC00AAA8A60092908D005C5A5900BDB9B300BBB4
          A7006D6B6A00E6E4E30082807E00696866005351510083818000797776007775
          7400706E6D005B5958006967650053515100ABA9A600716F6D00B3ADA000CEC7
          BB0072716F00EAE8E9007C7A7800C1B8B20068666400FFFFFF00ECEAE900E3E1
          E100C3C1BF007C7A79009E9A910052504F00B2B0AF00817F7E00B1AB9F00CDC6
          BB0078767500FFFFFF007F7D7B0063615F007A7978007D7B79007C7A78007D7B
          79007E7C7A007D7B79006664640056545200DBD9D800807E7C00B1AB9E00CFC7
          BD009D9A9700B3B3B100FDFDFC00E7E5E400E5E3E200ABAAA8008B8885009C99
          9600B3B2B100FFFFFF00F2F0F000E8E7E600B0AEAC0092908E00C1BDB500FCF6
          F000D5CEC6008885810079777600737170006C6C6A007C787600C3B9B000C6BC
          B300898682007C7B7A007E7D7C0082807E0099979500FFFFFF00BAB7AF00A39B
          9000BCB4A900CFC5BC00E4DAD000ECE1D800F3E7E000EDE3DA00E4D9D100D0C6
          BE00C2B8AF00ABA19700C0BBB400FFFFFF00FFFFFF00FFFFFF00B1AB9F00C9C2
          B900D0C8BF00D6CDC500DDD4CB00E5DAD200EBE0D900E7DDD400DFD4CC00D8CF
          C600D2CAC100CDC4BC00B3ADA100FFFFFF00FFFFFF00FFFFFF00B0AB9E00C7C0
          B600CCC4BB00D3C9C100DAD0C700E1D7CF00EBE1DA00E4D9D100DCD1C900D5CC
          C200CEC6BD00CAC1B900B1AB9E00FFFFFF00FFFFFF00FFFFFF00AFAA9D00C8C1
          B700E8E3DB00F5F0E800FDF8F200FCF8F100FBF7F000FCF7F100FCF8F100F6F0
          EA00E9E2DB00CAC2BA00AFA99D00FFFFFF00FFFFFF00FFFFFF00AEA89C00FBF5
          EF00EEE7DE00E0D8CE00DDD5CC00DDD4CB00DDD4CB00DDD4CB00DDD5CC00E0D7
          CE00EDE6DE00FBF6EF00AEA89C00FFFFFF00FFFFFF00FFFFFF00AFA99D00E1D8
          CE00E1D7CE00DFD6CC00DFD5CB00DFD5CB00DFD5CB00DFD5CB00DFD5CB00DFD6
          CC00E1D7CE00E1D8CE00AFA99D00FFFFFF00FFFFFF00FFFFFF00D0CCC500B6B0
          A400D6CFC400E6DED500EFE7DD00EEE6DC00EEE6DC00EEE6DC00EFE7DD00E6DE
          D500D6CFC400B6B0A400D0CCC500FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEE
          EB00C4C0B700AEA99C00AEA89C00AEA89C00AEA89C00AEA89C00AEA89C00AEA9
          9C00C4C0B700EFEEEB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          001E000000330000003300000033000000220000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000001E6B69
          69AC676564FF676564FF636160FF5A5957BD0000002200000000000000000000
          000000000000000000000000000000000000000000000000000072716FAC6A68
          66FFB7B5B3FFB2B0AEFFAEABA8FF615F5EFF6A6866B90000001E000000000000
          0000000000000000000000000000000000000000000000000000767472FFC1C1
          BEFF7F7D7BFF4A4B4B74716F6DFF9E9C99FF615F5EFF5F5D5CAC000000000000
          00000000000000000000000000000000000000000000000000007C7A78FFD5D3
          D2FF3F3F3F880000000000000033747270FFAFACAAFF666462FF000000000000
          00000000000000000000000000000000000000000000000000007F7D7AFFEEED
          ECFF83817FFF000000336D6A68FF585656FFB7B5B3FF6F6D6BFF000000000000
          0000000000000000000000000000000000000000000000000000797977AC7A78
          76FFEAEBEAFF848280FF7A7876FFB9B8B7FF585654FF3F4040FF000000000000
          0000000000000000000000000000000000000000000000000000000000008B8A
          89A7787675FFEEEDECFFD7D5D5FF797775FFF5F6F6FF5A5856FF000000330000
          003300000033000000330000001E000000000000000000000000000000000000
          00007C7C7A967F7D7BFF807E7CFF7F7D7BFF7A7876FFF5F6F6FF5A5756FF3F3F
          3FFF6E6C6AFF646362FF5F5E5CAC000000220000000000000000000000000000
          000000000000000000000000000000000000000000007A7876FFF5F5F5FF5654
          53FFB7B5B3FFAFACAAFF61605FFF6A6867B90000001E00000000000000000000
          000000000000000000000000000000000000000000007D7B79FF777572FFF4F4
          F5FF575555FF62605EFFB0ADABFF636160FF504E4DAC00000000000000000000
          000000000000000000000000000000000000000000007F7D7CFFD6D4D3FF7977
          75FF6E6C69FF000000005F5D5BFFAFABA9FF666463FF00000000000000000000
          000000000000000000000000000000000000000000007F7D7BFFEEEDECFF7F7D
          7AFF000000330000001554545498B2B0AEFF6A6866FF00000000000000000000
          000000000000000000000000000000000000000000007D7C7B97797775FFF5F5
          F4FF7E7B79FF404040876C6A67FFB9B7B4FF6D6B6AFF00000000000000000000
          00000000000000000000000000000000000000000000000000008A8A88A77B78
          76FFEEEDECFFD5D3D2FFC3C2C0FF73716EFF5C5B599700000000000000000000
          0000000000000000000000000000000000000000000000000000000000006867
          6696817F7DFF7F7D7CFF7C7A78FF61605F970000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000330000002F000000000000
          0000000000000000000000000000000060600000FFFF0000FFFF000000000000
          000000000000000000000000000000000033008B49FF008246F1000000000000
          00000000000000000000000060600000FFFF0000FFFF00006060000000000000
          0000000000000000000000000033008743FFA1E2D5FF239A60FF000000330000
          003300000033000060800000FFFF0000FFFF0000707000000000000000000000
          00000000000000000033008743FF93DCC9FF1ACAADFF00B68EFF009658FF0097
          5BFF00578EFF0000FFFF0000FFFF000080990000000000000000000000000000
          000000000000008A48FF81DBC2FF14CEA9FF00C499FF57DBC1FF56DCC3FF3E9F
          D5FF0000FFFF0000FFFF2260CDFF008B4AFF0000003300000000000000000000
          000000000000008A48FF6FD7B8FF12D5A9FF00CD9BFF00CE9DFF0096BBFF0007
          FCFF0000FFFF005CD5FF1DD8AEFF2FCCA3FF018A49FF0000001E000000000000
          00000000000000000000008744FF5FD1ACFF11DDAAFF0091AFFF0004F9FF0000
          FFFF003BC2FF00A568FF00C48AFF04DDA8FF16BA83FF01532DAA000000000000
          0033000000330000001A00000000008846FF3A9EBFFF0105FAFF0000FFFF0000
          9FB000000033004B2889008043F000B578FF00D89FFF008B4BFF00000000008D
          4DFF008B4BFF004626990000002C000030400006F1F90000FFFF00009E9F007B
          42E5008C4AFF0000003300000000005C31A8008B4BFF008D4DFF00000000008B
          4BFF00D89FFF00B578FF006162E90003F0F70000FFFF0000B6C5000008391191
          54FF53D4AAFF008846FF00000033000000000000000000000000000000000252
          2D951ABA86FF06B2B8FF000CF7FF0000FFFF002CD1FF00834AFF008A49FF00C9
          90FF12DCAAFF63D3AFFF008744FF000000330000000000000000000000000000
          0000007960FF030DFAFF0000FFFF043CE6FF0DCDAAFF0DD4A8FF0DD3A7FF0ED1
          A4FF00CA9AFF13D3A9FF73D7BBFF008A48FF0000000000000000000000000000
          20200000DEDF0000FFFF1437E3FF59D5C8FF5BDEC8FF5ADEC7FF5BDDC6FF5CDB
          C3FF00C399FF15CCAAFF85DBC3FF008A48FF0000000000000000000020200000
          DEDF0000FFFF0000B6B7005836AB008946FF008844FF008744FF008947FF00B5
          8EFF1BC8AEFF98DECBFF008742FF0000000000000000000000000000D6D70000
          FFFF0000B6B7000008080000000000000000000000000000000000000000239B
          61FFA1E2D5FF008743FF00000000000000000000000000000000000048480000
          B6B7000008080000000000000000000000000000000000000000000000000082
          46ED008B49FF0000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000330000002F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000033008B49FF008246F1000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000033008743FFA1E2D5FF239A60FF000000330000
          0033000000330000003300000022000000000000000000000000000000000000
          00000000000000000033008743FF93DCC9FF1ACAADFF00B68EFF009658FF0097
          5BFF008B4AFF008945FF005B30B9000000330000000000000000000000000000
          000000000000008A48FF81DBC2FF14CEA9FF00C499FF57DBC1FF56DCC3FF56DD
          C4FF56DEC5FF56DCC4FF44C19AFF008B4AFF0000003300000000000000000000
          000000000000008A48FF6FD7B8FF12D5A9FF00CD9BFF00CE9DFF00D1A0FF00D2
          A1FF00D1A0FF00D1A0FF1DD8AEFF2FCCA3FF018A49FF0000001E000000000000
          00000000000000000000008744FF5FD1ACFF11DDAAFF00CA90FF008B49FF0087
          45FF009C5EFF00A568FF00C48AFF04DDA8FF16BA83FF01532DAA000000000000
          0033000000330000001A00000000008846FF4ED3A9FF129155FF000000000000
          002D00000033004B2889008043F000B578FF00D89FFF008B4BFF00000000008D
          4DFF008B4BFF004626990000002C0000001400592FA2008D4CFF00000000007B
          42E5008C4AFF0000003300000000005C31A8008B4BFF008D4DFF00000000008B
          4BFF00D89FFF00B578FF00773EE400361D820000003300000033000000331191
          54FF53D4AAFF008846FF00000033000000000000000000000000000000000252
          2D951ABA86FF07DBA8FF00BE85FF00A061FF009C5DFF008744FF008A49FF00C9
          90FF12DCAAFF63D3AFFF008744FF000000330000000000000000000000000000
          0000008A49FF35D0AAFF20D7B1FF0DD3A7FF0DD4A7FF0DD4A8FF0DD3A7FF0ED1
          A4FF00CA9AFF13D3A9FF73D7BBFF008A48FF0000000000000000000000000000
          000000000000018B49FF48C29CFF5CDCC6FF5BDEC8FF5ADEC7FF5BDDC6FF5CDB
          C3FF00C399FF15CCAAFF85DBC3FF008A48FF0000000000000000000000000000
          00000000000000000000005B2FA8008946FF008844FF008744FF008947FF00B5
          8EFF1BC8AEFF98DECBFF008742FF000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000239B
          61FFA1E2D5FF008743FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000082
          46ED008B49FF0000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
          FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
          FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
          0000FF00FF00FF00FF0080000000FF00FF00FF00FF0000000000FF00FF00FF00
          FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
          0000FF00FF00800000008000000080000000FF00FF0000000000FF00FF00FF00
          FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
          0000FF00FF00FF00FF0080000000FF00FF00FF00FF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
          0000FF00FF00FF00FF0080000000FF00FF00FF00FF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
          0000FF00FF00800000008000000080000000FF00FF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
          0000FF00FF00FF00FF0080000000FF00FF00FF00FF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000006953158A1713061D0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003E310C53D1AA33FFAF9E41C70302
          0104000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001410051ABD9522ECD4AF33FFE5CF6EFF7B6E
          368D000000000000000000000000000000000000000000000000000000000000
          000000000000000000000101000195781DBBD3AE29FFD6B132FFE1C75EFFECDD
          9CFE423B1A4E0000000000000000000000000000000000000000000000000000
          000000000000000000005A491371D5B131FFD8B730FFD7B431FFE4CC60FFEBDA
          91FFDDD19CEE1A16072000000000000000000000000000000000000000000000
          000000000000231C082DD5B756F8E3CB67FFDCBE35FFDBBA34FFE6D062FFEAD9
          86FFF5EDCCFFB9AB76CA05040106000000000000000000000000000000000000
          0000000000002A220934473C105578671C8CDDC032FFDEC137FFE7D364FFE7D3
          6FFF5045155D483D0F551613051B000000000000000000000000000000000000
          0000000000000000000000000000463C1052DEC132FFE0C43AFFE8D363FFE6D2
          69FF060502070000000000000000000000000000000000000000000000000000
          0000000000000000000000000000463B1052DCBE31FFDFC33CFFE5D061FFE6D1
          6CFF060502070000000000000000000000000000000000000000000000000000
          0000000000000000000000000000453A0F52D9B82EFFDDBE3BFFE4CD62FFE6D1
          73FF060502070000000000000000000000000000000000000000000000000000
          0000000000000000000000000000463A0E54D5B02AFFDAB93BFFE3CB67FFE7D2
          7FFF050502070000000000000000000000000000000000000000000000000000
          000000000000000000000000000046390D55D0A727FFD6B23DFFE2C96FFFE8D3
          8AFF050402070000000000000000000000000000000000000000000000000000
          000000000000000000000000000044360C55CB9E23FFD2AC3DFFE0C673FFE7D2
          8FFF050402070000000000000000000000000000000000000000000000000000
          000000000000000000000000000043330B55D1A943FFD5B252FFDDC06EFFDFC3
          75FF050401070000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000002D220739856415AA886A1FAA8D7431AA8F79
          3BAA030301050000000000000000000000000000000000000000000000000000
          000000000000000000000000000044350C55C99A22FFD0A93DFFDFC473FFE6D0
          8FFF050401070000000000000000000000000000000000000000000000000000
          000000000000000000000000000045370D55CEA325FFD4B03CFFE1C770FFE7D2
          8CFF050402070000000000000000000000000000000000000000000000000000
          000000000000000000000000000046390E54D3AD29FFD8B63BFFE2CA6AFFE7D2
          83FF050502070000000000000000000000000000000000000000000000000000
          0000000000000000000000000000453A0F52D8B52DFFDCBD3BFFE4CC64FFE6D1
          77FF060502070000000000000000000000000000000000000000000000000000
          0000000000000000000000000000463B0F52DBBC30FFDFC13BFFE5CF61FFE6D1
          6DFF060502070000000000000000000000000000000000000000000000000000
          0000000000000000000000000000463C1052DDC032FFDFC43BFFE7D263FFE6D2
          6AFF060502070000000000000000000000000000000000000000000000000000
          0000000000000000000000000000463C1052DDC032FFDFC238FFE8D364FFE7D2
          6AFF0908030B0000000000000000000000000000000000000000000000000000
          0000000000004D3F1161DABA49FFDFC34CFFDDBF34FFDCBD35FFE6D163FFEAD8
          82FFEBDA8EFFD6C170EF1B160721000000000000000000000000000000000000
          000000000000000000008C7323ACDABA41FFDABA33FFD9B632FFE5CD61FFEAD9
          89FFF1E6BBFE443C1D5000000000000000000000000000000000000000000000
          000000000000000000000E0C0413BC9A2EE4D6B22CFFD6B232FFE2C95EFFEFE1
          A9FF7E73448E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000372D1045D0A82DFED5B134FFE3CB6BFFB3A5
          69C7040301050000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000715B1E8FD4AE37FFD5C26AEC1815
          071E000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000005050208A88A30D13F37194C0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000908020E000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000010101010101
          01020101010401010107010101090101010B0101010C0101010C0101010C0101
          010C0101010B0101010A01010107010101050101010301010101010101060101
          010B0303031314110F32231E1A4D231E1955221D195C221D1960221D1961221D
          195F221D1859221D1952221D194A0404041B0202020F01010108010101050101
          010B0101011439302776C2B5A9FFCDC3BAFFCCC2BAFFCCC2BAFFCCC2B9FFCBC2
          B9FFCBC1B9FFCBC1B8FF988574EF020202230101010F01010107000000002525
          252CBDBDBDD0B8B5B2F8A29A92FFB5B5B5FFB5B5B5FFB6B6B6FFB6B6B6FFB6B6
          B6FFB6B6B6FFB6B6B6FF95897EFDCECECEE85454545F00000000010101019393
          93A9E9E9E9FF959595FF5B5B5AFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E
          5EFF5E5E5EFF5E5E5EFF5C5B5BFFDADADAFFDADADAF500000001000000009393
          93B0DDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDD
          DDFFDDDDDDFFDDDDDDFF76BC95FFB6CCC0FFD6D6D6FC00000002000000007777
          7798D0CECDFFC5B6ACFFC4B5AAFFC4B5AAFFC4B5AAFFC4B5AAFFC4B5AAFFC4B5
          AAFFC4B5AAFFC4B5AAFFB7AC9EFFC6BCB4FFB7B7B7E600000000000000001919
          1926AB9E97EF936342FF966746FF966746FF966746FF966746FF966746FF9667
          46FF966746FF966746FF966746FFA18069FF4848486500000000000000000000
          00001B1B1B2A766A62B7978F89F9D2D1D1FFD2D1D1FFD2D1D1FFD2D1D1FFD2D1
          D1FFD2D1D1FFBFBDBCFE807268D5383736550000000000000000000000000000
          000000000000000000003333333EF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
          F2FFF2F2F2FFC2C2C2D400000000000000000000000000000000000000000000
          000000000000000000003434343DF1F1F1FFF0F0F0FFF1F1F1FFF2F2F2FFF5F5
          F5FFF6F6F6FFC5C5C5D500000000000000000000000000000000000000000000
          000000000000000000003131313CF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
          F0FFF0F0F0FFBEBEBED300000000000000000000000000000000000000000000
          000000000000000000001C1C1C24868686968686869686868696868686968686
          8696868686966B6B6B7D00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FFFFFF008080
          8000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0
          C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF0000000000FFFFFF008080
          8000C0C0C000FFFFFF00C0C0C00000000000C0C0C000FFFFFF00C0C0C000FFFF
          FF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C00000000000FFFFFF008080
          8000FFFFFF00C0C0C000000000000000000000000000C0C0C000FFFFFF00C0C0
          C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF0000000000FFFFFF008080
          8000C0C0C000FFFFFF0000000000FFFFFF000000000000000000C0C0C000FFFF
          FF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C00000000000FFFFFF008080
          8000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF000000000000000000C0C0
          C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF0000000000FFFFFF008080
          8000C0C0C000FFFFFF00C0C0C00000000000C0C0C000FFFFFF00C0C0C000FFFF
          FF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C00000000000FFFFFF008080
          8000FFFFFF00C0C0C000000000000000000000000000C0C0C000FFFFFF00C0C0
          C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF0000000000FFFFFF008080
          8000C0C0C000FFFFFF0000000000FFFFFF000000000000000000C0C0C000FFFF
          FF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C00000000000FFFFFF008080
          8000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF000000000000000000C0C0
          C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF0000000000FFFFFF008080
          8000C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFF
          FF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C00000000000FFFFFF008080
          8000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FFFFFF008080
          8000FFFFFF00FF000000FF000000FF000000FF000000FF000000FF000000FF00
          0000FF000000FF000000FFFFFF00FF000000FFFFFF0000000000FFFFFF008080
          8000808080008080800080808000808080008080800080808000808080008080
          8000808080008080800080808000808080008080800080808000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF000C20200081949400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00427C7C00007C7C00758A8A00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00999999006699990022BBBB0077777700FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005C5C5C00A0D1D10005A0A0006666
          6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF003A3A3A00003A3A004EDFDF00131313006161
          6100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003F7979004EDFDF0092929200A0A0
          A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005C5C5C00AFCCCC0044DFDF008383
          830099999900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0044444400002222003355550099DDDD00444444002222
          220055555500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF005783830042C5C5008AFFFF0075E9E9008383
          8300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF009E9E9E00799797004EF3F300A5F3F3006BDF
          DF006B6B6B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009292920049494900494949004949
          49004949490049494900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end>
  end
  object bm1: TdxBarManager
    AlwaysSaveText = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default'
      'newJur')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.Images = il1
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseSystemFont = True
    Left = 496
    Top = 112
    DockControlHeights = (
      0
      0
      26
      0)
    object bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = doc1
      DockedDockControl = doc1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 946
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_NewRec'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_LinkRec'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bar_arh: TdxBar
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
      FloatLeft = 960
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_MoveToJur'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bar3: TdxBar
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
      FloatLeft = 960
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_selAll'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_selNone'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_MakeWork'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object br_main: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'Custom 4'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 946
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
          ItemName = 'btn_next'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_prew'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object br4: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'Custom 5'
      CaptionButtons = <>
      DockControl = doc4
      DockedDockControl = doc4
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 938
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_GetDispData'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_filter'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_NewRec: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1074' '#1078#1091#1088#1085#1072#1083#1077
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1074' '#1078#1091#1088#1085#1072#1083#1077
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = ppm1
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = btn_NewRecClick
    end
    object btn_LinkRec: TdxBarButton
      Caption = #1057#1074#1103#1079#1072#1090#1100' '#1089' '#1088#1072#1073#1086#1090#1086#1081
      Category = 0
      Hint = #1057#1074#1103#1079#1072#1090#1100' '#1089' '#1088#1072#1073#1086#1090#1086#1081
      Visible = ivAlways
      ImageIndex = 8
      PaintStyle = psCaptionGlyph
      OnClick = btn_LinkRecClick
    end
    object btn_MoveToJur: TdxBarButton
      Caption = #1042#1077#1088#1085#1091#1090#1100' '#1074' '#1078#1091#1088#1085#1072#1083
      Category = 0
      Hint = #1042#1077#1088#1085#1091#1090#1100' '#1074' '#1078#1091#1088#1085#1072#1083
      Visible = ivAlways
      ImageIndex = 4
      PaintStyle = psCaptionGlyph
      OnClick = btn_MoveToJurClick
    end
    object btn_selAll: TdxBarButton
      Caption = #1042#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1077
      Category = 0
      Hint = #1042#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1077
      Visible = ivAlways
      ImageIndex = 12
      OnClick = btn_selAllClick
    end
    object btn_selNone: TdxBarButton
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1080#1080
      Category = 0
      Hint = #1054#1090#1084#1077#1085#1080#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1080#1080
      Visible = ivAlways
      ImageIndex = 11
      OnClick = btn_selNoneClick
    end
    object btn_MakeWork: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1088#1072#1073#1086#1090#1099
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1088#1072#1073#1086#1090#1099
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = btn_MakeWorkClick
    end
    object btn_print: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1085#1072#1088#1103#1076#1072
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1085#1072#1088#1103#1076#1072
      Visible = ivAlways
      ImageIndex = 15
      OnClick = btn_printClick
    end
    object btn_next: TdxBarButton
      Caption = #1057#1083#1077#1076#1091#1102#1097#1080#1081' '#1085#1072#1088#1103#1076
      Category = 0
      Hint = #1057#1083#1077#1076#1091#1102#1097#1080#1081' '#1085#1072#1088#1103#1076
      Visible = ivAlways
      ImageIndex = 13
      OnClick = btn_nextClick
    end
    object btn_prew: TdxBarButton
      Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1085#1072#1088#1103#1076
      Category = 0
      Hint = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1085#1072#1088#1103#1076
      Visible = ivAlways
      ImageIndex = 14
      OnClick = btn_prewClick
    end
    object btn_GetDispData: TdxBarButton
      Caption = #1055#1086#1083#1091#1095#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Category = 0
      Hint = #1055#1086#1083#1091#1095#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Visible = ivAlways
      ImageIndex = 17
      PaintStyle = psCaptionGlyph
      OnClick = btn_GetDispDataClick
    end
    object btn_filter: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088
      Visible = ivAlways
      OnClick = btn_filterClick
    end
    object btn_addwithLink: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1080' '#1089#1074#1103#1079#1072#1090#1100' '#1089' '#1088#1072#1073#1086#1090#1086#1081
      Category = 1
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1080' '#1089#1074#1103#1079#1072#1090#1100' '#1089' '#1088#1072#1073#1086#1090#1086#1081
      Visible = ivAlways
      ImageIndex = 8
      PaintStyle = psCaptionGlyph
      OnClick = btn_addwithLinkClick
    end
    object btn_addNoLink: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1091#1102' '#1079#1072#1087#1080#1089#1100
      Category = 1
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1091#1102' '#1079#1072#1087#1080#1089#1100
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = btn_addNoLinkClick
    end
    object btn_addByRec: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1085#1072' '#1086#1089#1085#1086#1074#1072#1085#1080#1080
      Category = 1
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1085#1072' '#1086#1089#1085#1086#1074#1072#1085#1080#1080
      Visible = ivAlways
      ImageIndex = 7
      PaintStyle = psCaptionGlyph
      OnClick = btn_addByRecClick
    end
  end
  object ds_JWORKARC: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT JW.CODE, '
      '       JW.JWORKTYPE, jt.name JTName,'
      '       JW.REGDATE, '
      '       JW.KONTRAGENT, k.Name KontrName,'
      '       JW.HOUSE, h.nomer,'
      '       JW.DESCRIPTION, '
      '       JW.PLACE, '
      '       JW.PLANDATE, '
      '       JW.FACTDATE, '
      '       JW.NOTE, '
      '       JW.SHOWRESULT, '
      '       JW.WORKSPECLIST, '
      '       JW.LASTTIME, '
      '       JW.USERNAME, '
      '       JW.STREET, s.name StreetName'
      'FROM JWORK_ARC JW'
      'left outer join house h on h.code=JW.HOUSE'
      'Left outer join street s on s.code = jw.street'
      'left outer join kontragent k on k.code=jw.kontragent'
      'left outer join JWORKTYPE jt on jt.code=jw.JWORKTYPE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 400
    Top = 448
  end
  object src_JWORKARC: TDataSource
    DataSet = ds_JWORKARC
    Left = 429
    Top = 448
  end
  object ds_worklist: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE WORKLIST'
      'SET '
      '    DATA = :DATA,'
      '    KONTRAGENT = :KONTRAGENT,'
      '    HOUSE = :HOUSE,'
      '    NOTE = :NOTE'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    WORKLIST'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO WORKLIST('
      '    CODE,'
      '    DATA,'
      '    KONTRAGENT,'
      '    HOUSE,'
      '    NOTE'
      ')'
      'VALUES('
      '    :CODE,'
      '    :DATA,'
      '    :KONTRAGENT,'
      '    :HOUSE,'
      '    :NOTE'
      ')')
    RefreshSQL.Strings = (
      'SELECT wl.CODE, '
      '       wl.DATA, '
      '       wl.KONTRAGENT,k.name KontrName, '
      '        s.code Street, s.name streetname,'
      '       wl.HOUSE, h.nomer, h.du, d.name DUName,'
      '       mh.worker,(p.f||'#39' '#39'||p.i||'#39' '#39'||p.o) fio,'
      '       wl.NOTE  '
      ''
      'FROM WORKLIST wl'
      'left outer join house h on h.code = wl.house'
      'left outer join street s on s.code = h.street'
      'left outer join KONTRAGENT k on k.code=wl.KONTRAGENT'
      'left outer join du d on d.code=h.du'
      ''
      
        'left outer join mhouse mh on mh.house=wl.house and mh.kontragent' +
        '=wl.kontragent'
      'left outer join worker w on w.code=mh.worker'
      'left outer join piple p on p.code=w.piple'
      ''
      ' WHERE '
      '        WL.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT DISTINCT(wl.CODE) CODE, 0 FLAG ,'
      '       wl.DATA, '
      '       wl.KONTRAGENT,k.name KontrName, '
      '        s.code Street, s.name streetname,'
      '       wl.HOUSE, h.nomer, h.du, d.name DUName,'
      '       mh.worker,(p.f||'#39' '#39'||p.i||'#39' '#39'||p.o) fio,'
      '       wl.NOTE,'
      
        '   iif((select first 1 CODE from WORKSPECLIST where SERVISWORK=:' +
        'work and worklist=wl.CODE) is null,0,1) Ex'
      ''
      'FROM WORKLIST wl'
      'left outer join house h on h.code = wl.house'
      'left outer join street s on s.code = h.street'
      'left outer join KONTRAGENT k on k.code=wl.KONTRAGENT'
      'left outer join du d on d.code=h.du'
      ''
      
        'left outer join mhouse mh on mh.house=wl.house and mh.kontragent' +
        '=wl.kontragent'
      'left outer join worker w on w.code=mh.worker'
      'left outer join piple p on p.code=w.piple')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 576
    Top = 112
  end
  object src_worklist: TDataSource
    DataSet = md_wl
    Left = 605
    Top = 112
  end
  object md_wl: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 576
    Top = 160
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
    Left = 393
    Top = 420
  end
  object frep: TfrxReport
    Version = '4.15.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40626.950418217600000000
    ReportOptions.LastChange = 41144.663154270840000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Q.ParamByName('#39'Code'#39').Value:=Report.variables['#39'varCode'#39'];     ' +
        '                                     '
      'end;'
      ''
      'procedure Memo5OnBeforePrint(Sender: TfrxComponent);'
      'var'
      
        '  quant, price: Variant;                                        ' +
        '           '
      'begin'
      
        '   quant := IIF(<Q_mat."QUANTITY"> is null,0,<Q_mat."QUANTITY">)' +
        ';                            '
      
        '   memo5.text:=FormatFloat('#39'#.00'#39',(<Q_mat."QUANTITY">*<Q_mat."PR' +
        'ICE">));  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 432
    Top = 240
    Datasets = <
      item
        DataSet = frDS1
        DataSetName = 'Q'
      end
      item
        DataSet = frDS2
        DataSetName = 'Q_mat'
      end>
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
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        Height = 113.385900000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo15: TfrxMemoView
          Align = baLeft
          Top = 37.795300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103)
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 94.488250000000000000
          Top = 37.795300000000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[Q."KONTRNAME"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Align = baLeft
          Top = 57.472480000000010000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1053#1072#1088#1103#1076' '#8470)
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 68.031540000000000000
          Top = 57.448818900000010000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[Q1."CODE"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 105.519790000000000000
          Top = 57.448818900000010000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1086#1090)
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 128.196970000000000000
          Top = 57.448818900000010000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[Q1."D1"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Top = 76.370130000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1040#1076#1088#1077#1089)
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 94.488250000000000000
          Top = 76.346456690000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[<Q1."STREETNAME">] [<Q1."NOMER">]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 68.031540000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo6: TfrxMemoView
          Width = 71.811070000000000000
          Height = 52.913385830000000000
          ShowHint = False
          Color = 15000804
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 71.811028500000000000
          Width = 173.858380000000000000
          Height = 52.913385830000000000
          ShowHint = False
          Color = 15000804
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 245.669408500000000000
          Width = 291.401574800000000000
          Height = 52.913385830000000000
          ShowHint = False
          Color = 15000804
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1087#1080#1089#1072#1085#1080#1077' '#1088#1072#1073#1086#1090' ('#1084#1077#1089#1090#1086')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 537.149970000000000000
          Width = 34.015770000000000000
          Height = 52.913385830000000000
          ShowHint = False
          Color = 15000804
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1045#1076'. '#1080#1079#1084'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 571.165740000000000000
          Width = 52.913420000000000000
          Height = 52.913385830000000000
          ShowHint = False
          Color = 15000804
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1083'-'#1074#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 624.220474880000000000
          Width = 93.732281020000000000
          Height = 52.913385830000000000
          ShowHint = False
          Color = 15000804
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090'-'#1090#1100' '#1087#1083#1072#1090#1085#1086#1081' '#1091#1089#1083#1091#1075#1080' ('#1088#1091#1073'.)')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897637800000000000
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        DataSetName = 'Q1'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q."DATA"]')
          ParentFont = False
        end
        object Q1WORKNAME: TfrxMemoView
          Left = 71.811023620000000000
          Width = 173.858267720000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q."WORKNAME"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 245.669291340000000000
          Width = 291.401574800000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q."NOTE"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 537.070866140000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q."ED"]')
          ParentFont = False
        end
        object Q1QUANTITY: TfrxMemoView
          Left = 571.086614169999900000
          Width = 52.913385830000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[Q."QUANTITY"]')
          ParentFont = False
        end
        object Q1PLATWORK: TfrxMemoView
          Left = 624.377952760000000000
          Width = 93.732283460000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[Q."PRICE"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 120.944960000000000000
        Top = 445.984540000000000000
        Width = 718.110700000000000000
        object Memo23: TfrxMemoView
          Top = 11.338590000000010000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100':')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Top = 30.015770000000090000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1044#1080#1088#1077#1082#1090#1086#1088' '#1055#1054)
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 147.401670000000000000
          Top = 30.236240000000010000
          Width = 461.102660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[varDir]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Align = baLeft
          Top = 74.063080000000080000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1052#1072#1089#1090#1077#1088' ('#1080#1085#1078#1077#1085#1077#1088') '#1055#1054)
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 151.181200000000000000
          Top = 74.063079999999960000
          Width = 457.323130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[varManager]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        Height = 18.897637795275600000
        Top = 366.614410000000000000
        Width = 718.110700000000000000
        DataSetName = 'Q_mat'
        RowCount = 0
        object Q_matMATNAME: TfrxMemoView
          Left = 75.220428500000000000
          Width = 294.803193540000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MATNAME'
          DataSetName = 'Q_mat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q_mat."MATNAME"]')
          ParentFont = False
        end
        object Q_matPRICE: TfrxMemoView
          Left = 506.456692910000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRICE'
          DataSetName = 'Q_mat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[Q_mat."PRICE"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 585.826771650000000000
          Width = 132.283464570000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo5OnBeforePrint'
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 370.023622050000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ED'
          DataSetName = 'Q_mat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q_mat."ED"]')
          ParentFont = False
        end
        object Q_matQUANTITY: TfrxMemoView
          Left = 426.717070000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'QUANTITY'
          DataSetName = 'Q_mat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[Q_mat."QUANTITY"]')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        Description = 'fghgfh'
        Height = 18.897637795275600000
        Top = 325.039580000000000000
        Width = 718.110700000000000000
        object Memo12: TfrxMemoView
          Left = 506.394250000000000000
          Width = 79.370130000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 13434828
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090'-'#1090#1100' ('#1088#1091#1073'.)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 585.764380000000000000
          Width = 132.283550000000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo5OnBeforePrint'
          ShowHint = False
          Color = 13434828
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1073#1097#1072#1103' '#1089#1090'-'#1090#1100' ('#1088#1091#1073'.)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 75.283860000000000000
          Width = 294.803340000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 13434828
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 369.992580000000000000
          Width = 56.692950000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 13434828
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1045#1076'. '#1080#1079#1084'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 426.685530000000000000
          Width = 79.370130000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 13434828
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1083'-'#1074#1086)
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object rtfexp: TfrxRTFExport
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
    Left = 464
    Top = 240
  end
  object ppm1: TdxBarPopupMenu
    BarManager = bm1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'btn_addNoLink'
      end
      item
        Visible = True
        ItemName = 'btn_addwithLink'
      end
      item
        Visible = True
        ItemName = 'btn_addByRec'
      end>
    UseOwnFont = False
    Left = 104
    Top = 488
  end
  object src_RQ: TDataSource
    DataSet = md_RQ
    Left = 592
    Top = 528
  end
  object md_RQ: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 624
    Top = 528
  end
  object Repository1: TcxStyleRepository
    Left = 368
    Top = 96
    PixelsPerInch = 96
    object Style1: TcxStyle
      Tag = 1
    end
    object Style2: TcxStyle
      Tag = 2
    end
    object Style3: TcxStyle
      Tag = 3
    end
    object Style4: TcxStyle
      Tag = 4
    end
    object Style5: TcxStyle
      Tag = 5
    end
    object Style6: TcxStyle
      Tag = 6
    end
    object Style7: TcxStyle
      Tag = 7
    end
    object Style8: TcxStyle
      Tag = 8
    end
    object Style9: TcxStyle
      Tag = 9
    end
  end
  object Q: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT wl.CODE,'
      '       wl.DATA, w.data D1,'
      '       wl.KONTRAGENT,k.name KontrName, '
      '       wl.SERVISWORK, sw.name WorkName,'
      '       s.code street, s.name StreetName, '
      '       wl.HOUSE, h.nomer,                    '
      '       wl.ADDR, '
      '       wl.PRICE, '
      '       wl.NOTE, '
      '       wl.WORKLIST, '
      '       wl.USERNAME, '
      '       wl.LASTTIME, '
      '       wl.QUANTITY, sw.ed       '
      'FROM WORKSPECLIST wl'
      'left outer join kontragent k on k.code=wl.kontragent'
      'left outer join house h on h.code=wl.house'
      'left outer join street s on s.code=h.street'
      'left outer join serviswork  sw on sw.code=wl.serviswork'
      'left outer join worklist w on w.code=wl.worklist'
      'where wl.WORKLIST=:code'
      'order by wl.DATA')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 672
    Top = 152
  end
  object Q_mat: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT wm.CODE,'
      '       wm.WORKSPECLIST, '
      '       wm.DATA, '
      '       wm.KONTRAGENT, '
      '       wm.SERVISWORK, '
      '       wm.HOUSE, '
      '       wm.ADDR, '
      '       --wm.SERVISMATERIAL, sm.name MatName,'
      '       wm.CLASSMAT, TRIM(c.FULLNAME) MatName,'
      '       c.ed,'
      '       wm.QUANTITY, '
      '       wm.PRICE, '
      '       wm.NOTE, '
      '       wm.USERNAME, '
      '       wm.LASTTIME'
      'FROM WORKSPECMATERIAL wm'
      'left outer join SERVISMATERIAL sm on sm.code=wm.servismaterial'
      'left outer join CLASSMAT C on C.CODE = wm.CLASSMAT'
      'where wm.WORKSPECLIST=:mas_code')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DataSource = src_Q
    Left = 704
    Top = 152
    dcForceOpen = True
  end
  object src_Q: TDataSource
    DataSet = Q
    Left = 672
    Top = 184
  end
  object src_Qmat: TDataSource
    DataSet = Q_mat
    Left = 704
    Top = 184
  end
  object frDS1: TfrxDBDataset
    UserName = 'Q'
    CloseDataSource = False
    DataSet = Q
    BCDToCurrency = False
    Left = 672
    Top = 232
  end
  object frDS2: TfrxDBDataset
    UserName = 'Q_mat'
    CloseDataSource = False
    DataSet = Q_mat
    BCDToCurrency = False
    Left = 704
    Top = 232
  end
end
