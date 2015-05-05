object GraphListForm: TGraphListForm
  Left = 0
  Top = 0
  Caption = #1043#1088#1072#1092#1080#1082#1080' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103' '#1088#1072#1073#1086#1090' '#1058#1054
  ClientHeight = 663
  ClientWidth = 937
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
    Width = 937
    Height = 663
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = laf1
    object grd2: TcxGrid
      Left = 45
      Top = 280
      Width = 889
      Height = 75
      TabOrder = 12
      LockedStateImageOptions.Effect = lsieDark
      LockedStateImageOptions.ShowText = True
      LockedStateImageOptions.Text = #1055#1086#1076#1086#1078#1076#1080#1090#1077' ...'
      object v2: TcxGridDBTableView
        OnKeyUp = v2KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v2CellClick
        DataController.DataSource = src_GrapSpec
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.InvertSelect = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsSelection.CellMultiSelect = True
        OptionsView.ShowEditButtons = gsebForFocusedRecord
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        Styles.Inactive = cmDb.styl1
        Styles.Selection = cmDb.styl1
        Styles.OnGetContentStyle = v2StylesGetContentStyle
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
        object clv2Flag: TcxGridDBColumn
          Caption = #1047#1072#1082#1088#1099#1090
          DataBinding.FieldName = 'ISCLOSED'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = clv2FlagPropertiesEditValueChanged
          HeaderGlyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFFFBFBFB
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
          Width = 27
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
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ImmediatePost = True
          Options.Editing = False
          Styles.OnGetContentStyle = clv2D1StylesGetContentStyle
          Width = 102
        end
        object clv2D2: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103' '#1086#1089#1084#1086#1090#1088#1072
          DataBinding.FieldName = 'D2'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ImmediatePost = True
          Options.Editing = False
          Styles.OnGetContentStyle = clv2D2StylesGetContentStyle
          Width = 119
        end
        object clv2D3: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1089#1076#1072#1095#1080' '#1072#1082#1090#1072
          DataBinding.FieldName = 'D3'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ImmediatePost = True
          Options.Editing = False
          Width = 83
        end
        object cl_PROSR: TcxGridDBColumn
          Caption = #1076#1085#1077#1081' '#1087#1088#1086#1089#1088#1086#1095#1082#1080
          DataBinding.FieldName = 'PROSR'
        end
        object cl_ACTFACT: TcxGridDBColumn
          Caption = #1086#1089#1084#1086#1090#1088#1077#1085#1085#1099#1093' '#1082#1074#1072#1088#1090#1080#1088
          DataBinding.FieldName = 'ACTFACT'
          Visible = False
          Width = 69
        end
        object cl_FLAT_CNT: TcxGridDBColumn
          Caption = #1082#1086#1083'-'#1074#1086' '#1082#1074'.'
          DataBinding.FieldName = 'FLAT_CNT'
          Visible = False
          Options.Editing = False
          Width = 41
        end
        object cl_PROC: TcxGridDBColumn
          Caption = '% '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
          DataBinding.FieldName = 'PROC'
          PropertiesClassName = 'TcxProgressBarProperties'
          Properties.AssignedValues.Min = True
          Properties.Max = 100.000000000000000000
          Visible = False
          Options.Editing = False
          Width = 70
        end
        object clv2ENTRANCE_CNT: TcxGridDBColumn
          Caption = #1082#1086#1083'-'#1074#1086' '#1087#1086#1076'.'
          DataBinding.FieldName = 'ENTRANCE_CNT'
          Visible = False
          HeaderHint = #1082#1086#1083'-'#1074#1086' '#1087#1086#1076#1098#1077#1079#1076#1086#1074
          Options.Editing = False
          Width = 46
        end
        object clv2CNT: TcxGridDBColumn
          Caption = #1050#1086#1083' - '#1074#1086' '#1088#1072#1073#1086#1090' '#1087#1086' '#1085#1072#1088#1103#1076#1072#1084
          DataBinding.FieldName = 'CNT'
          Visible = False
          Options.Editing = False
          Width = 79
        end
        object clv2PROC_EN: TcxGridDBColumn
          Caption = '% '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
          DataBinding.FieldName = 'PROC_EN'
          PropertiesClassName = 'TcxProgressBarProperties'
          Visible = False
          Options.Editing = False
          Width = 70
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object doc_br1: TdxBarDockControl
      Left = 3
      Top = 253
      Width = 931
      Height = 26
      Align = dalTop
      BarManager = brm1
    end
    object cbb_SHOWPRIKAZPO: TcxLookupComboBox
      Left = 10000
      Top = 10000
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
          FieldName = 'SHOWTYPE'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = src_SHOWPROKAZPO
      Style.HotTrack = False
      TabOrder = 16
      Visible = False
      Width = 145
    end
    object edt_year: TcxMaskEdit
      Left = 10000
      Top = 10000
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 17
      Visible = False
      Width = 121
    end
    object cbb_type: TcxComboBox
      Left = 10000
      Top = 10000
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        #1074#1077#1089#1085#1072
        #1086#1089#1077#1085#1100)
      Style.HotTrack = False
      TabOrder = 18
      Text = #1074#1077#1089#1085#1072
      Visible = False
      Width = 121
    end
    object m_note: TcxMemo
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 19
      Visible = False
      Height = 89
      Width = 185
    end
    object btn_ok: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      OptionsImage.Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FDFDFDFBFBFBF9F9F9F6F6F6F4F4F4F3F3F3F3F3F3F4F4F4F6F6F6F8F8F8FBFB
        FBFDFDFDFFFFFFFFFFFFFEFEFEF7F7F7EEEEEEE4E4E4DBDBDBD3D3D3CBCBCBC1
        C4C2C1C4C2CACACAD1D1D1DADADAE3E3E3ECECECF6F6F6FEFEFEFFFFFFFFFFFF
        FFFFFFFEFEFEEFF5F180C09C2EB2690BB3560BB3562EB26980C09CEFF5F1FDFD
        FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2E8DC27B06425DC813EEDA24A
        F3B14AF4B23FEDA426DC8327B165D2E8DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E9F4EE29B66B43EEA854FABF4CECABADEBCEADE8CC4CE5A854FABF45F0AB2BB7
        6DE9F4EEFFFFFFFFFFFFFFFFFFFFFFFF6FC5963EEAA24BF5B34BF5B34AE7A3FF
        FFFFFFFFFF49E0A04BF5B34BF5B340ECA56FC697FFFFFFFFFFFFFFFFFFF8FCFA
        29C27552F2AF4CEDA44AE9A148DE97FFFFFFFFFFFF47D19042D9973ED89541F1
        A82CC579F8FCFAFFFFFFFFFFFFD3EEDF3ACE846AF2B5AFF4D0FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFA6DCC146EEA33CD187D3EEDFFFFFFFFFFFFFCCEDDB
        40C98173F0B5B1F4D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADDCC36FEF
        B340CB83CCEDDBFFFFFFFFFFFFECF9F228B4687CEBB36BEAA86CE7A764DD9DFF
        FFFFFFFFFF63CF966BD89F69D79F7BECB428B568ECF9F2FFFFFFFFFFFFFFFFFF
        47C17D6EC89787ECB788EFB974E3A7FFFFFFFFFFFF73DCA487EFB986ECB86CC9
        9747C17DFFFFFFFFFFFFFFFFFFFFFFFFC3F1D72AAA648DCDAA93DFB57BDFA8B7
        E9CDB7E6CC7BD8A593DFB68CCDA927A961C3F1D7FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF92E4B736AC6A95CAADA0CFB5A0CFB5A0CFB5A0CFB595C9AD34AA6992E4
        B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6F1D039BE744CB27A6A
        B1896CB28B4FB47D3ABE75B6F1D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFECEF7E0A5F1C6A5F1C6CEF7E0FEFEFEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      PaintStyle = bpsGlyph
      ParentShowHint = False
      ShowHint = True
      TabOrder = 20
      Visible = False
      OnClick = btn_okClick
    end
    object btn_ed: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Hint = #1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Caption = #1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
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
      TabOrder = 21
      Visible = False
      OnClick = btn_edClick
    end
    object btn_del: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
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
      TabOrder = 22
      Visible = False
      OnClick = btn_delClick
    end
    object dt1: TcxDateEdit
      Left = 10000
      Top = 10000
      Properties.ClearKey = 46
      Style.HotTrack = False
      TabOrder = 8
      Visible = False
      Width = 159
    end
    object dt2: TcxDateEdit
      Left = 10000
      Top = 10000
      Properties.ClearKey = 46
      Style.HotTrack = False
      TabOrder = 9
      Visible = False
      Width = 159
    end
    object dt3: TcxDateEdit
      Left = 10000
      Top = 10000
      Properties.ClearKey = 46
      Style.HotTrack = False
      TabOrder = 10
      Visible = False
      Width = 159
    end
    object btn_post: TcxButton
      Left = 10000
      Top = 10000
      Width = 159
      Height = 25
      Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100
      TabOrder = 11
      Visible = False
      OnClick = btn_postClick
    end
    object msk_Y: TcxMaskEdit
      Left = 34
      Top = 36
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '([123][0-1])? [0-9][0-9]'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cbb_Dog: TcxLookupComboBox
      Left = 13
      Top = 73
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
          MinWidth = 0
          Width = 0
          FieldName = 'KONTRAGENT'
        end
        item
          MinWidth = 0
          Width = 0
          FieldName = 'KNAME'
        end
        item
          MinWidth = 70
          Width = 90
          FieldName = 'NOMER'
        end
        item
          MinWidth = 0
          Width = 0
          FieldName = 'ATYPE'
        end
        item
          FieldName = 'ATYPENAME'
        end
        item
          MinWidth = 0
          Width = 0
          FieldName = 'D1'
        end
        item
          MinWidth = 0
          Width = 0
          FieldName = 'D2'
        end>
      Properties.ListFieldIndex = 5
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_dog
      Style.HotTrack = False
      TabOrder = 1
      Width = 244
    end
    object cbb_gtype: TcxLookupComboBox
      Left = 13
      Top = 110
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          MinWidth = 0
          Width = 20
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
      Width = 244
    end
    object txt_prim: TcxTextEdit
      Left = 13
      Top = 184
      Style.HotTrack = False
      TabOrder = 4
      Width = 244
    end
    object doc1: TdxBarDockControl
      Left = 13
      Top = 206
      Width = 244
      Height = 26
      Align = dalTop
      BarManager = brm1
    end
    object txt_app: TcxTextEdit
      Left = 13
      Top = 147
      Style.HotTrack = False
      TabOrder = 3
      Width = 244
    end
    object grd3: TcxGrid
      Left = 173
      Top = 393
      Width = 751
      Height = 253
      TabOrder = 15
      object v3: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = src_GRAPHSPECM
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        object clv3CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
        end
        object clv3GRAPHSPEC: TcxGridDBColumn
          DataBinding.FieldName = 'GRAPHSPEC'
          Visible = False
        end
        object clv3M: TcxGridDBColumn
          DataBinding.FieldName = 'M'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3MName: TcxGridDBColumn
          Caption = #1084#1077#1089#1103#1094
          DataBinding.FieldName = 'MName'
          Options.Editing = False
          Width = 123
        end
        object clv3FLATPLAN: TcxGridDBColumn
          Caption = #1082#1086#1083'-'#1074#1086' '#1087#1083#1072#1085
          DataBinding.FieldName = 'FLATPLAN'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.ImmediatePost = True
          Properties.OnEditValueChanged = clv3FLATPLANPropertiesEditValueChanged
          Width = 95
        end
        object clv3FLAT: TcxGridDBColumn
          Caption = #1082#1086#1083'-'#1074#1086' '#1092#1072#1082#1090
          DataBinding.FieldName = 'FLAT'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.ImmediatePost = True
          Properties.OnEditValueChanged = clv3FLATPropertiesEditValueChanged
          Width = 101
        end
      end
      object l3: TcxGridLevel
        GridView = v3
      end
    end
    object cbb_Month: TcxComboBox
      Left = 55
      Top = 393
      Properties.DropDownListStyle = lsFixedList
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
      TabOrder = 13
      Text = #1103#1085#1074#1072#1088#1100
      Width = 117
    end
    object btn_AddMonth: TcxButton
      Left = 55
      Top = 430
      Width = 117
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1084#1077#1089#1103#1094
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = cmDb.iml1
      TabOrder = 14
      OnClick = btn_AddMonthClick
    end
    object docs1: TdxDockSite
      Left = 268
      Top = 3
      Width = 666
      Height = 242
      DockingType = 5
      OriginalWidth = 666
      OriginalHeight = 242
      object docs3: TdxLayoutDockSite
        Left = 0
        Top = 0
        Width = 666
        Height = 242
        DockingType = 0
        OriginalWidth = 300
        OriginalHeight = 200
      end
      object docs4: TdxTabContainerDockSite
        Left = 0
        Top = 0
        Width = 666
        Height = 242
        ActiveChildIndex = 0
        AllowFloating = True
        OnActiveChildChanged = docs4ActiveChildChanged
        AutoHide = False
        CaptionButtons = []
        ShowCaption = False
        DockingType = 0
        OriginalWidth = 185
        OriginalHeight = 140
        object pnl1: TdxDockPanel
          Left = 0
          Top = 0
          Width = 658
          Height = 209
          AllowFloating = True
          AutoHide = False
          Caption = #1043#1088#1072#1092#1080#1082#1080
          ImageIndex = 19
          DockingType = 0
          OriginalWidth = 185
          OriginalHeight = 140
          object grd1: TcxGrid
            Left = 0
            Top = 0
            Width = 658
            Height = 209
            Align = alClient
            Images = cmDb.iml1
            TabOrder = 0
            LockedStateImageOptions.ShowText = True
            LookAndFeel.NativeStyle = False
            object v1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              OnFocusedRecordChanged = v1FocusedRecordChanged
              DataController.DataSource = src_GraphList
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              Images = cmDb.iml1
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsBehavior.ImmediateEditor = False
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Inserting = False
              OptionsSelection.HideFocusRectOnExit = False
              OptionsSelection.UnselectFocusedRecordOnExit = False
              OptionsView.ShowEditButtons = gsebForFocusedRecord
              OptionsView.CellAutoHeight = True
              OptionsView.CellTextMaxLineCount = 4
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object cl_v1POALOCK: TcxGridDBColumn
                Caption = #1055#1054' '#1089#1090#1072#1090#1091#1089
                DataBinding.FieldName = 'POALOCK'
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Images = cmDb.iml1
                Properties.ImmediateDropDownWhenActivated = True
                Properties.ImmediatePost = True
                Properties.Items = <
                  item
                    Description = #1074' '#1088#1072#1073#1086#1090#1077
                    Value = 0
                  end
                  item
                    Description = #1079#1072#1082#1086#1085#1095#1077#1085
                    ImageIndex = 4
                    Value = 1
                  end
                  item
                    Description = #1074' '#1088#1072#1073#1086#1090#1077
                  end>
                Properties.OnEditValueChanged = cl_v1POALOCKPropertiesEditValueChanged
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
                Width = 89
              end
              object clv1alock: TcxGridDBColumn
                DataBinding.FieldName = 'alock'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ImmediatePost = True
                Properties.NullStyle = nssUnchecked
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                Properties.OnEditValueChanged = clv1alockPropertiesEditValueChanged
                HeaderImageIndex = 4
                Width = 21
                IsCaptionAssigned = True
              end
              object clv1CODE: TcxGridDBColumn
                Caption = #1050#1086#1076
                DataBinding.FieldName = 'CODE'
                Visible = False
                Options.Editing = False
                Width = 33
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
                Width = 76
              end
              object clv1KNAME: TcxGridDBColumn
                Caption = #1055#1086#1076#1088#1103#1076#1085#1072#1103' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
                DataBinding.FieldName = 'KNAME'
                Options.Editing = False
                Width = 153
              end
              object clv1GTNAME: TcxGridDBColumn
                Caption = #1058#1080#1087' '#1075#1088#1072#1092#1080#1082#1072
                DataBinding.FieldName = 'GTNAME'
                Options.Editing = False
                Width = 243
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
                Options.Editing = False
                VisibleForCustomization = False
              end
              object clv1APP: TcxGridDBColumn
                Caption = #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077' '#8470
                DataBinding.FieldName = 'APP'
                Options.Editing = False
                Width = 90
              end
              object clv1KONTRAGENT: TcxGridDBColumn
                DataBinding.FieldName = 'KONTRAGENT'
                Visible = False
                Options.Editing = False
                VisibleForCustomization = False
              end
              object clv1GRAPHTO: TcxGridDBColumn
                DataBinding.FieldName = 'GRAPHTO'
                Visible = False
                Options.Editing = False
                VisibleForCustomization = False
              end
              object cl_v1GLTCODE: TcxGridDBColumn
                DataBinding.FieldName = 'GLTCODE'
                Visible = False
                VisibleForCustomization = False
              end
              object cl_v1GLTNAME: TcxGridDBColumn
                Caption = #1058#1080#1087' '#1075#1088#1072#1092#1080#1082#1072
                DataBinding.FieldName = 'GLTNAME'
                Width = 89
              end
              object cl_v1PROCFACT: TcxGridDBColumn
                DataBinding.FieldName = 'PROCFACT'
                Visible = False
                VisibleForCustomization = False
              end
              object cl_v1PREDDATA: TcxGridDBColumn
                DataBinding.FieldName = 'PREDDATA'
                Visible = False
                VisibleForCustomization = False
              end
              object clv1GRAPHTYPE: TcxGridDBColumn
                DataBinding.FieldName = 'GRAPHTYPE'
                Visible = False
              end
              object clv1GTCODE: TcxGridDBColumn
                DataBinding.FieldName = 'GTCODE'
                Visible = False
              end
              object clv1NOMER: TcxGridDBColumn
                DataBinding.FieldName = 'NOMER'
                Visible = False
                VisibleForCustomization = False
              end
              object clv1D1: TcxGridDBColumn
                DataBinding.FieldName = 'D1'
                Visible = False
                VisibleForCustomization = False
              end
              object clv1D2: TcxGridDBColumn
                DataBinding.FieldName = 'D2'
                Visible = False
                VisibleForCustomization = False
              end
            end
            object l1: TcxGridLevel
              GridView = v1
            end
          end
        end
        object pnl2: TdxDockPanel
          Left = 0
          Top = 0
          Width = 658
          Height = 209
          AllowFloating = True
          AutoHide = False
          Caption = #1053#1072#1088#1103#1076#1099
          CaptionButtons = []
          ImageIndex = 20
          DockingType = 0
          OriginalWidth = 185
          OriginalHeight = 140
          object grd4: TcxGrid
            Left = 0
            Top = 0
            Width = 658
            Height = 184
            Align = alClient
            TabOrder = 0
            object v4: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = src_orderspec
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              Images = cmDb.iml1
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsBehavior.ImmediateEditor = False
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.ShowEditButtons = gsebForFocusedRecord
              OptionsView.CellAutoHeight = True
              OptionsView.CellTextMaxLineCount = 4
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object clv4KNAME: TcxGridDBColumn
                Caption = #1055#1086#1076#1088#1103#1076#1095#1080#1082
                DataBinding.FieldName = 'KNAME'
                Width = 144
              end
              object clv4DATA: TcxGridDBColumn
                Caption = #1044#1072#1090#1072
                DataBinding.FieldName = 'DATA'
                Width = 80
              end
              object clv4SNAME: TcxGridDBColumn
                Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090#1099
                DataBinding.FieldName = 'SNAME'
                Width = 219
              end
              object clv4NOTE: TcxGridDBColumn
                Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
                DataBinding.FieldName = 'NOTE'
                Width = 198
              end
              object clv4FDATA: TcxGridDBColumn
                Caption = #1060#1072#1082#1090'. '#1076#1072#1090#1072
                DataBinding.FieldName = 'FDATA'
                Width = 80
              end
            end
            object l4: TcxGridLevel
              GridView = v4
            end
          end
          object docm2: TdxBarDockControl
            Left = 0
            Top = 184
            Width = 658
            Height = 25
            Align = dalBottom
            BarManager = brm1
          end
        end
      end
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = laf1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grplc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 203
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grlc1Group3: TdxLayoutGroup
      CaptionOptions.Glyph.Data = {
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
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 264
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 0
    end
    object itmlc1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1043#1086#1076
      Parent = grlc1Group3
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Control = msk_Y
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item11: TdxLayoutItem
      CaptionOptions.Text = #1044#1086#1075#1086#1074#1086#1088
      CaptionOptions.Layout = clTop
      Parent = grlc1Group3
      Control = cbb_Dog
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmlc1Item12: TdxLayoutItem
      CaptionOptions.Text = #1058#1080#1087' '#1075#1088#1072#1092#1080#1082#1072
      CaptionOptions.Layout = clTop
      Parent = grlc1Group3
      Control = cbb_gtype
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itmlc1Item15: TdxLayoutItem
      CaptionOptions.Text = #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077' '#1082' '#1076#1086#1075#1086#1074#1086#1088#1091
      CaptionOptions.Layout = clTop
      Parent = grlc1Group3
      Control = txt_app
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itmlc1Item13: TdxLayoutItem
      CaptionOptions.Text = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      CaptionOptions.Layout = clTop
      Parent = grlc1Group3
      Control = txt_prim
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itmlc1Item14: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = grlc1Group3
      Control = doc1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 5
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
    object grlc1Group2: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object grlc1Group1: TdxLayoutGroup
      Parent = grlc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 179
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Expanded = False
      Index = 0
    end
    object itm_D1: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1086#1089#1084#1086#1090#1088#1072
      CaptionOptions.Layout = clTop
      Parent = grlc1Group1
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_D2: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103' '#1086#1089#1084#1086#1090#1088#1072
      CaptionOptions.Layout = clTop
      Parent = grlc1Group1
      Control = dt2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_D3: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1089#1076#1072#1095#1080' '#1072#1082#1090#1072
      CaptionOptions.Layout = clTop
      Parent = grlc1Group1
      Control = dt3
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_post: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grlc1Group1
      Control = btn_post
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object spl: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grlc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object itm_grd2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grplc1Group4
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grp_left: TdxLayoutGroup
      AlignVert = avClient
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 213
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = -1
    end
    object itm_SHOWPRIKAZPO: TdxLayoutItem
      CaptionOptions.Text = #1055#1088#1080#1082#1072#1079' '#1055#1054
      CaptionOptions.Layout = clTop
      Parent = grp_left
      Control = cbb_SHOWPRIKAZPO
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_year: TdxLayoutItem
      CaptionOptions.Text = #1043#1086#1076
      CaptionOptions.Layout = clTop
      Parent = grp_left
      Control = edt_year
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_type: TdxLayoutItem
      CaptionOptions.Text = #1058#1080#1087
      CaptionOptions.Layout = clTop
      Parent = grp_left
      Control = cbb_type
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_note: TdxLayoutItem
      CaptionOptions.Text = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      CaptionOptions.Layout = clTop
      Parent = grp_left
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 66
      Control = m_note
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object grplc1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp_left
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object itm_ok: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grplc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 60
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
      SizeOptions.Width = 60
      Control = btn_ed
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_del: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grplc1Group2
      SizeOptions.Width = 60
      Control = btn_del
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object DetailGroup: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Parent = grplc1Group4
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 300
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 2
    end
    object grplc1Group4: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grlc1Group2
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 2
    end
    object itm_grd3: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grplc1Group5
      Control = grd3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grplc1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grplc1Group5
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 117
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object grplc1Group5: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = DetailGroup
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itmlc1Item16: TdxLayoutItem
      CaptionOptions.Text = #1052#1077#1089#1103#1094
      CaptionOptions.Visible = False
      Parent = grplc1Group3
      Control = cbb_Month
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item17: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group3
      Padding.Top = 15
      Padding.AssignedValues = [lpavTop]
      Control = btn_AddMonth
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object spl4: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grplc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object itmlc1Item18: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'dxDockSite1'
      CaptionOptions.Visible = False
      LayoutLookAndFeel = laf1
      Parent = grplc1Group1
      Control = docs1
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
        Component = cbb_Dog
        Properties.Strings = (
          'Properties.DropDownWidth')
      end
      item
        Component = cbb_gtype
        Properties.Strings = (
          'Properties.DropDownWidth')
      end
      item
        Component = DetailGroup
        Properties.Strings = (
          'SizeOptions.Height'
          'SizeOptions.Width')
      end
      item
        Component = grlc1Group3
        Properties.Strings = (
          'Expanded')
      end
      item
        Component = itm_dt1
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = itm_dt2
        Properties.Strings = (
          'EditValue')
      end>
    StorageName = 'prop1'
    Left = 648
    Top = 128
  end
  object brm1: TdxBarManager
    AllowReset = False
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
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Blue'
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 616
    Top = 128
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
      DockControl = doc1
      DockedDockControl = doc1
      DockedLeft = 0
      DockedTop = 0
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
          ItemName = 'btn_rep'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_GRep'
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
          ItemName = 'btn_Smeta'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Act'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object brm1Bar3: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockControl = docm2
      DockedDockControl = docm2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 971
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'itm_dt1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'itm_dt2'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_sync: TdxBarButton
      Caption = #1057#1080#1085#1093#1088#1086#1085#1080#1079#1072#1094#1080#1103' '#1089' '#1076#1086#1075#1086#1074#1086#1088#1086#1084
      Category = 0
      Hint = #1057#1080#1085#1093#1088#1086#1085#1080#1079#1072#1094#1080#1103' '#1089' '#1076#1086#1075#1086#1074#1086#1088#1086#1084
      Visible = ivAlways
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
      OnClick = btn_syncClick
    end
    object lb_copy: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
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
      Visible = ivAlways
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
      Visible = ivAlways
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
      Visible = ivAlways
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
      Visible = ivAlways
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
      Visible = ivAlways
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
    object btn_GRep: TdxBarButton
      Caption = #1054#1090#1095#1077#1090
      Category = 0
      Hint = #1054#1090#1095#1077#1090
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
        0000333330FFFFFFFFF0003000000FF000F0E00FBFBFB0FFFFF0E0FBFB00000F
        F0F0E0BFBFBFBFB0FFF0E0FBFB00000FF0F0E0BFBFBFBFB0FFF0E0FB0000000F
        F0F0000FB0FFFFFFFFF0333000FFFFFFFFF0333330F000FF0000333330FFFFFF
        0FF0333330CCCCCC0F03333330FFFFFF00333333300000000333}
      PaintStyle = psCaptionGlyph
      OnClick = btn_GRepClick
    end
    object itm_dt1: TcxBarEditItem
      Caption = #1087#1077#1088#1080#1086#1076' '#1089
      Category = 0
      Hint = #1087#1077#1088#1080#1086#1076' '#1089
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.ImmediatePost = True
      Properties.OnEditValueChanged = itm_dt1PropertiesEditValueChanged
    end
    object itm_dt2: TcxBarEditItem
      Caption = ' '#1087#1086
      Category = 0
      Hint = ' '#1087#1086
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.ImmediatePost = True
      Properties.OnEditValueChanged = itm_dt2PropertiesEditValueChanged
    end
    object btn_Smeta: TdxBarButton
      Caption = #1057#1084#1077#1090#1072
      Category = 0
      Hint = #1057#1084#1077#1090#1072
      Visible = ivAlways
      OnClick = btn_SmetaClick
    end
    object btn_Act: TdxBarButton
      Caption = #1040#1082#1090
      Category = 0
      Hint = #1040#1082#1090
      Visible = ivAlways
      OnClick = btn_ActClick
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
      
        'select GL.POALOCK, GL.CODE, GL."YEAR", GL.KONTRAGENT, K.NAME KNA' +
        'ME,'
      '       GL.GRAPHTO, GT.CODE GTCODE,'
      '       GT.NAME GTNAME, GL.NOTE, GL.SHOWPRIKAZPO, GL.ALOCK,'
      '       GL.SRVDOG, GL.APP, GLT.CODE GLTCODE, GLT.NAME GLTNAME,'
      
        '       GT.PROCFACT, GT.PREDDATA, GT.GRAPHTYPE, S.NOMER, S.D1, S.' +
        'D2'
      'from GRAPHLIST GL'
      'left outer join KONTRAGENT K on K.CODE = GL.KONTRAGENT'
      'left outer join GRAPHTO GT on GT.CODE = GL.GRAPHTO'
      'left outer join GRAPHTYPE GLT on GLT.CODE = GT.GRAPHTYPE'
      'left outer join SRVDOG S on S.CODE = GL.SRVDOG')
    AfterOpen = ds_GraphListAfterOpen
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 280
    Top = 32
  end
  object src_GraphList: TDataSource
    DataSet = ds_GraphList
    Left = 312
    Top = 32
  end
  object ds_kontr: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    CODE,'
      '    NAME'
      'FROM'
      '    KONTRAGENT ')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 280
    Top = 80
  end
  object src_kontr: TDataSource
    DataSet = ds_kontr
    Left = 312
    Top = 80
  end
  object ds_GRAPHTO: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    CODE,'
      '    NAME'
      'FROM'
      '    GRAPHTO '
      'order by name')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 360
    Top = 88
  end
  object src_GRAPHTO: TDataSource
    DataSet = ds_GRAPHTO
    Left = 392
    Top = 88
  end
  object ds_GrapSpec: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE GRAPHSPEC'
      'SET '
      '    ISCLOSED = :ISCLOSED,'
      '    GRAPHLIST = :GRAPHLIST,'
      '    STREET = :STREET,'
      '    HOUSE = :HOUSE,'
      '    D1 = :D1,'
      '    D2 = :D2,'
      '    D3 = :D3,'
      '    PROSR = :PROSR,'
      '    ACTFACT = :ACTFACT'
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
      '    ISCLOSED,'
      '    CODE,'
      '    GRAPHLIST,'
      '    STREET,'
      '    HOUSE,'
      '    D1,'
      '    D2,'
      '    D3,'
      '    PROSR,'
      '    ACTFACT'
      ')'
      'VALUES('
      '    :ISCLOSED,'
      '    :CODE,'
      '    :GRAPHLIST,'
      '    :STREET,'
      '    :HOUSE,'
      '    :D1,'
      '    :D2,'
      '    :D3,'
      '    :PROSR,'
      '    :ACTFACT'
      ')')
    RefreshSQL.Strings = (
      'SELECT GS.ISCLOSED,'
      '       GS.CODE, '
      '       GS.GRAPHLIST, '
      '       GS.STREET, s.name STName,'
      '       GS.HOUSE, h.nomer,'
      '       GS.D1, '
      '       GS.D2,'
      '       GS.d3,'
      '       GS.prosr,'
      '       GS.actfact,'
      '       GT.GRAPHTYPE,'
      '       h.flat_cnt, h.ENTRANCE_CNT,'
      
        '       iif(GS.actfact>0 and h.flat_cnt>0,(((GS.actfact*1.0) / (h' +
        '.flat_cnt*1.0))*100),0) proc,'
      
        '       iif(GS.actfact>0 and h.ENTRANCE_CNT>0,(((GS.actfact*1.0) ' +
        '/ (h.ENTRANCE_CNT*1.0))*100),0) proc_en'
      
        '       --,(select CNT from GET_ORDER_WORK_BY_GRAPH(gt.GRAPHTYPE,' +
        ' GS.D1, (GS.d3 +7), GS.HOUSE)) CNT'
      'FROM GRAPHSPEC GS'
      'left outer join street s on s.code=gs.street'
      'left outer join house h on h.code=gs.house'
      'left outer join GRAPHLIST g on g.CODE = gs.GRAPHLIST'
      'left outer join graphto gt on gt.CODE = g.GRAPHTO'
      ''
      ''
      ' WHERE '
      '        GS.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT GS.ISCLOSED,'
      '       GS.CODE, '
      '       GS.GRAPHLIST, '
      '       GS.STREET, s.name STName,'
      '       GS.HOUSE, h.nomer,'
      '       GS.D1, '
      '       GS.D2,'
      '       GS.d3,'
      '       GS.prosr,'
      '       GS.actfact,'
      '       GT.GRAPHTYPE,'
      '       h.flat_cnt, h.ENTRANCE_CNT,'
      
        '       iif(GS.actfact>0 and h.flat_cnt>0,(((GS.actfact*1.0) / (h' +
        '.flat_cnt*1.0))*100),0) proc,'
      
        '       iif(GS.actfact>0 and h.ENTRANCE_CNT>0,(((GS.actfact*1.0) ' +
        '/ (h.ENTRANCE_CNT*1.0))*100),0) proc_en'
      
        '       --,(select CNT from GET_ORDER_WORK_BY_GRAPH(gt.GRAPHTYPE,' +
        ' GS.D1, (GS.d3 +7), GS.HOUSE)) CNT'
      'FROM GRAPHSPEC GS'
      'left outer join street s on s.code=gs.street'
      'left outer join house h on h.code=gs.house'
      'left outer join GRAPHLIST g on g.CODE = gs.GRAPHLIST'
      'left outer join graphto gt on gt.CODE = g.GRAPHTO'
      '')
    BeforeDelete = ds_GrapSpecBeforeDelete
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 240
    Top = 416
  end
  object src_GrapSpec: TDataSource
    DataSet = ds_GrapSpec
    Left = 272
    Top = 416
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
    Left = 376
    Top = 416
  end
  object src_copy: TDataSource
    DataSet = ds_copy
    Left = 400
    Top = 416
  end
  object xls1: TQExport4XLS
    DataSet = ds_GrapSpec
    ExportedFields.Strings = (
      'STName'
      'nomer'
      'D1'
      'D2')
    CaptionRow = 3
    About = '(About EMS AdvancedExport)'
    _Version = '4.2.0.6'
    ShowFile = True
    Captions.Strings = (
      'STName='#1059#1083#1080#1094#1072
      'nomer='#1044#1086#1084
      'D1='#1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1086#1089#1084#1086#1090#1088#1072
      'D2='#1044#1072#1090#1072' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103' '#1086#1089#1084#1086#1090#1088#1072)
    AutoCalcColWidth = True
    Options.PageFooter = 'Page &P of &N'
    Options.SheetTitle = 'Sheet 1'
    Options.CaptionsFormat.Font.Style = [xfsBold]
    Options.HyperlinkFormat.Font.Color = clrBlue
    Options.HyperlinkFormat.Font.Underline = fulSingle
    Options.NoteFormat.Alignment.Horizontal = halLeft
    Options.NoteFormat.Alignment.Vertical = valTop
    Options.NoteFormat.Font.Size = 8
    Options.NoteFormat.Font.Style = [xfsBold]
    Options.NoteFormat.Font.Name = 'Tahoma'
    FieldFormats = <>
    StripStyles = <>
    Hyperlinks = <>
    Notes = <>
    Charts = <>
    Sheets = <>
    Pictures = <>
    Images = <>
    Cells = <>
    Aggregates = <>
    MergedCells = <>
    DefRowHeight = 12.750000000000000000
    Left = 304
    Top = 416
  end
  object fr: TfrxReport
    Version = '4.15.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40668.465338171300000000
    ReportOptions.LastChange = 41298.651009803200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      
        'procedure Page1OnBeforePrint(Sender: TfrxComponent);            ' +
        '                                         '
      'begin'
      '  Q1.Query.SelectSQL.Text:='
      '               '#39'SELECT GS.CODE, '#39' + #13#10 +'
      '               '#39'       GS.GRAPHLIST,gt.name GName,'#39' + #13#10 +'
      '               '#39'       GS.STREET, s.name STName,'#39' + #13#10 +'
      '               '#39'       GS.HOUSE, h.nomer,'#39' + #13#10 +'
      '               '#39'       --l.code RegNom,'#39' + #13#10 +'
      '               '#39'       h.du, d.name DUName,'#39' + #13#10 +'
      '               '#39'       GS.D1, '#39' + #13#10 +'
      '               '#39'       GS.D2,'#39' + #13#10 +'
      '               '#39'       GS.D3                     '#39' + #13#10 +'
      '               '#39'FROM GRAPHSPEC GS'#39' + #13#10 +'
      
        '               '#39'left outer join street s on s.code=gs.street'#39' + ' +
        '#13#10 +'
      
        '               '#39'left outer join house h on h.code=gs.house'#39' + #1' +
        '3#10 +'
      
        '               '#39'--left outer join liftlist l on l.house=gs.house' +
        #39' + #13#10 +'
      '               '#39'left outer join du d on d.code=h.du'#39' + #13#10 +'
      
        '               '#39'left outer join graphlist gl on gl.code=gs.graph' +
        'list'#39' + #13#10 +'
      
        '               '#39'left outer join graphto gt on gt.code=gl.graphto' +
        #39' + #13#10 +'
      '               '#39'where gs.graphlist=:graf'#39' + #13#10 +'
      '               '#39'order by GS.D1,GS.D2'#39';'
      '  Q1.ParamByName('#39'graf'#39').Value:=Report.variables['#39'varGraph'#39'];'
      '  Q1.Open;                   '
      ' // Q1DUNAME.Visible:=false;'
      ' // Q1REGNOM.Visible:=false;'
      ' // Memo7.Visible:=false;'
      ' // Memo8.Visible:=false;                          '
      'end;'
      ''
      'procedure ReopenQ(aType :integer);'
      'begin'
      '  Q1.Close;'
      '  Q1.Query.SelectSQL.Text:='
      '               '#39'SELECT GS.CODE, '#39' + #13#10 +'
      '               '#39'       GS.GRAPHLIST,gt.name GName,'#39' + #13#10 +'
      '               '#39'       GS.STREET, s.name STName,'#39' + #13#10 +'
      '               '#39'       GS.HOUSE, h.nomer,'#39' + #13#10 +'
      '               '#39'       --l.code RegNom,'#39' + #13#10 +'
      '               '#39'       h.du, d.name DUName,'#39' + #13#10 +'
      '               '#39'       GS.D1, '#39' + #13#10 +'
      '               '#39'       GS.D2,'#39' + #13#10 +'
      '               '#39'       GS.D3                     '#39' + #13#10 +'
      '               '#39'FROM GRAPHSPEC GS'#39' + #13#10 +'
      
        '               '#39'left outer join street s on s.code=gs.street'#39' + ' +
        '#13#10 +'
      
        '               '#39'left outer join house h on h.code=gs.house'#39' + #1' +
        '3#10 +'
      
        '               '#39'--left outer join liftlist l on l.house=gs.house' +
        #39' + #13#10 +'
      '               '#39'left outer join du d on d.code=h.du'#39' + #13#10 +'
      
        '               '#39'left outer join graphlist gl on gl.code=gs.graph' +
        'list'#39' + #13#10 +'
      
        '               '#39'left outer join graphto gt on gt.code=gl.graphto' +
        #39' + #13#10 +'
      '               '#39'where gs.graphlist=:graf'#39' + #13#10;'
      
        '   if aType=0 then Q1.Query.SelectSQL.Add('#39'order by GS.D1,GS.D2'#39 +
        ');'
      
        '   if aType=1 then Q1.Query.SelectSQL.Add('#39'order by s.name,h.nom' +
        'er'#39');                                          '
      ' //  case aType of'
      '//     0 : Q1.Query.SelectSQL.Add('#39'order by GS.D1,GS.D2'#39');'
      
        '//     1 : Q1.Query.SelectSQL.Add('#39'order by s.name,h.nomer'#39');   ' +
        '      '
      '  // end;  '
      '   Q1.ParamByName('#39'graf'#39').Value:=Report.variables['#39'varGraph'#39'];'
      '   Q1.Open;       '
      'end;          '
      '  '
      
        'procedure Memo9OnPreviewClick(Sender: TfrxView; Button: TMouseBu' +
        'tton; Shift: Integer; var Modified: Boolean);'
      'begin'
      '       '
      'end;'
      ''
      
        'procedure Memo1OnPreviewClick(Sender: TfrxView; Button: TMouseBu' +
        'tton; Shift: Integer; var Modified: Boolean);'
      'begin'
      '                       '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 432
    Top = 88
    Datasets = <
      item
        DataSet = fr_ds1
        DataSetName = 'frx_GrapSpec'
      end
      item
        DataSet = fr.Q1
        DataSetName = 'Q1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object fdb: TfrxFIBDatabase
        DatabaseName = '91.144.190.4:d:/base/DEZ.fdb'
        LoginPrompt = False
        Params.Strings = (
          'user_name=sysdba'
          'password=victris'
          'sql_role_name=')
        SQLDialect = 3
        pLeft = 24
        pTop = 40
      end
      object Q1: TfrxFIBQuery
        UserName = 'Q1'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'graf'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'SELECT GS.CODE, '
          '       GS.GRAPHLIST,gt.name GName,'
          '       GS.STREET, s.name STName,'
          '       GS.HOUSE, h.nomer,'
          '       --l.code RegNom,'
          '       h.du, d.name DUName,'
          '       GS.D1, '
          '       GS.D2,'
          '       GS.D3                     '
          'FROM GRAPHSPEC GS'
          'left outer join street s on s.code=gs.street'
          'left outer join house h on h.code=gs.house'
          '--left outer join liftlist l on l.house=gs.house'
          'left outer join du d on d.code=h.du'
          'left outer join graphlist gl on gl.code=gs.graphlist'
          'left outer join graphto gt on gt.code=gl.graphto'
          'where gs.graphlist=:graf'
          'order by GS.D1,GS.D2    '
          '                                                   '
          '  ')
        Database = fr.fdb
        pLeft = 24
        pTop = 92
        Parameters = <
          item
            Name = 'graf'
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
        Height = 283.464750000000000000
        Top = 16.000000000000000000
        Width = 718.110700000000000000
        object Rich2: TfrxRichView
          Align = baLeft
          Top = 56.692949999999990000
          Width = 336.378170000000000000
          Height = 113.385900000000000000
          ShowHint = False
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
            645C73613230305C736C3237365C736C6D756C74315C625C66305C667332305C
            2764335C2764325C2763325C2763355C2764305C2763365C2763345C2763305C
            2764652020202020202020202020202020202020202020202020202020205C62
            305C667332325C7061720D0A5C667332305C2763345C2765385C2766305C2765
            355C2765615C2766325C2765655C276630205C2763655C2763655C276365205F
            5F5F5F5F5F5F5F5F5F5F5F5F5C667332325C7061720D0A5C66733230205F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F205C2764342E5C2763382E5C2763652E5C6673
            32325C7061720D0A0D0A5C706172645C667332305C2761625F5F5F5C2762625F
            5F5F5F5F5F5F5F5F5F5F32305F5F5C2765332E5C66315C667331365C7061720D
            0A7D0D0A00}
        end
        object Rich3: TfrxRichView
          Align = baWidth
          Top = 181.417440000000000000
          Width = 718.110700000000000000
          Height = 90.708720000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C666E696C5C66636861727365743230347B5C2A5C666E616D652041726961
            6C3B7D417269616C204359523B7D7B5C66315C666E696C5C6663686172736574
            3020417269616C3B7D7B5C66325C66726F6D616E5C66707271325C6663686172
            7365743230347B5C2A5C666E616D652054696D6573204E657720526F6D616E3B
            7D54696D6573204E657720526F6D616E204359523B7D7B5C66335C66726F6D61
            6E5C66707271325C6663686172736574302054696D6573204E657720526F6D61
            6E3B7D7B5C66345C666E696C5C6663686172736574323034205461686F6D613B
            7D7D0D0A7B5C2A5C67656E657261746F7220526963686564323020362E332E39
            3630307D5C766965776B696E64345C756331200D0A5C706172645C7361323030
            5C736C3237365C736C6D756C74315C71635C625C66305C667332345C2763335C
            2766305C2765305C2766345C2765385C2765615C66315C6C616E67313033335C
            7061720D0A5B51312E22474E414D45225D5C66325C6C616E67313034395C7061
            720D0A0D0A5C706172645C62305C2763645C2765305C2765385C2765635C2765
            355C2765645C2765655C2765325C2765305C2765645C2765385C2765355C6633
            5C6C616E673130333320205B7661724B6F6E74725D5C66345C667331365C6C61
            6E67313034395C7061720D0A7D0D0A00}
        end
        object Rich1: TfrxRichView
          Left = 377.953000000000000000
          Top = 7.559059999999999000
          Width = 336.378170000000000000
          Height = 162.519790000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C666E696C5C66636861727365743230347B5C2A5C666E616D652041726961
            6C3B7D417269616C204359523B7D7B5C66315C666E696C5C6663686172736574
            3020417269616C3B7D7B5C66325C666E696C5C66636861727365743230342054
            61686F6D613B7D7D0D0A7B5C2A5C67656E657261746F72205269636865643230
            20362E332E393630307D5C766965776B696E64345C756331200D0A5C70617264
            5C71725C66305C667332305C2763665C2766305C2765385C2765625C2765655C
            2765365C2765355C2765645C2765385C276535205C2762395B7661724150505D
            5C7061720D0A205C276561205C2765345C2765655C2765335C2765655C276532
            5C2765655C2766305C276633205C2762395C66315C6C616E6731303333205B76
            6172444F475D205C66305C6C616E67313034395C2765655C276632205C66315C
            6C616E6731303333205B76617244315D5C66305C6C616E673130343920202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020205C276561205C2763665C2765
            655C2765625C2765655C2765365C2765355C2765645C2765385C27666520205C
            276565205C2765665C2765655C2766305C2766665C2765345C2765615C276535
            205C2765665C2766305C2765655C2765325C2765355C2765345C2765355C2765
            645C2765385C276666205C7061720D0A5C2765655C2766315C2765355C276564
            5C2765645C2765355C2765335C2765652F5C2765325C2765355C2766315C2765
            355C2765645C2765645C2765355C2765335C276565205C2765655C2766315C27
            65635C2765655C2766325C2766305C2765305C7061720D0A5C7061720D0A5C27
            64335C2764325C2763325C2763355C2764305C2763365C2763345C2763305C27
            64655C7061720D0A5C2763335C2765355C2765645C2765355C2766305C276530
            5C2765625C2766635C2765645C2766625C276539205C2765345C2765385C2766
            305C2765355C2765615C2766325C2765655C2766305C7061720D0A5C2763655C
            2763655C276365205C66315C6C616E67313033335C2761625C66305C6C616E67
            313034395C2763345C2763355C276337205C2763615C2765305C2765625C2765
            385C2765645C2765385C2765645C2766315C2765615C2765655C2765335C2765
            65205C2766305C2765305C2765395C2765655C2765645C2765305C66315C6C61
            6E67313033335C2762625C7061720D0A5F5F5F5F5F5F5F5F5F5F5F5F5F5F205C
            66305C6C616E67313034395C2764315C2765635C2765385C2766305C2765645C
            2765655C276532205C2763612E5C2763382E5C7061720D0A5B76617259454152
            5D5C2765332E5C66325C667331365C7061720D0A7D0D0A00}
        end
      end
      object Header1: TfrxHeader
        Height = 34.015757800000000000
        Top = 320.000000000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          Align = baLeft
          Width = 30.236240000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = fr.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470
            #1087'/'#1087)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baWidth
          Left = 30.236240000000000000
          Width = 370.016192290000000000
          Height = 15.118098030000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1040#1076#1088#1077#1089)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Align = baRight
          Left = 400.252432290000000000
          Width = 106.204724410000000000
          Height = 34.015770000000000000
          OnPreviewClick = 'Memo9OnPreviewClick'
          ShowHint = False
          DataSet = fr.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1086#1089#1084#1086#1090#1088#1072)
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baRight
          Left = 506.457156700000000000
          Width = 105.826771650000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = fr.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103' '#1086#1089#1084#1086#1090#1088#1072)
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 30.236220470000000000
          Top = 15.118119999999980000
          Width = 298.204724410000000000
          Height = 18.897650000000000000
          OnPreviewClick = 'Memo1OnPreviewClick'
          ShowHint = False
          Memo.UTF8W = (
            #1059#1083#1080#1094#1072)
        end
        object Memo11: TfrxMemoView
          Left = 328.039580000000000000
          Top = 15.118119999999980000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1044#1086#1084)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baRight
          Left = 612.283928350000000000
          Width = 105.826771650000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = fr.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
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
        Height = 18.897637800000000000
        Top = 376.000000000000000000
        Width = 718.110700000000000000
        DataSet = fr_ds1
        DataSetName = 'frx_GrapSpec'
        RowCount = 0
        object Memo2: TfrxMemoView
          Align = baLeft
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = fr.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
        end
        object Q1STNAME: TfrxMemoView
          Left = 30.236240000000000000
          Width = 298.031430160000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = fr.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frx_GrapSpec."STNAME"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 400.078740160000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = fr.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frx_GrapSpec."D1"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 506.456692910000000000
          Width = 105.826771650000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = fr.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frx_GrapSpec."D2"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 328.039580000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fr.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frx_GrapSpec."NOMER"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 612.283860000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fr.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frx_GrapSpec."D3"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 173.858380000000000000
        Top = 416.000000000000000000
        Width = 718.110700000000000000
        object Rich4: TfrxRichView
          Align = baClient
          Width = 718.110700000000000000
          Height = 173.858380000000000000
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
            64345C756331200D0A5C706172645C73613230305C736C3237365C736C6D756C
            74315C66305C667332345C7061720D0A5C7061720D0A5C2764315C2765655C27
            65335C2765625C2765305C2766315C2765655C2765325C2765305C2765645C27
            65653A205C66315C6C616E6731303333205B766172526F6C655D5C66305C6C61
            6E673130343920205C2764315C276464205C2763655C2763655C276365205C27
            61625C2763345C2763355C276337205C2763615C2765305C2765625C2765385C
            2765645C2765385C2765645C2766315C2765615C2765655C2765335C27656520
            5C2766305C2765305C2765395C2765655C2765645C2765305C276262205F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F285C2764342E5C2763382E5C2763652E29
            5C7061720D0A5C2763655C2765375C2765645C2765305C2765615C2765655C27
            65635C2765625C2765355C2765645C2766623A205C2765655C2766325C276532
            5C2765355C2766325C2766315C2766325C2765325C2765355C2765645C276564
            5C2765655C276535205C2765625C2765385C2766365C276565205C2763655C27
            63655C276365205F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F285C2764342E5C27
            63382E5C2763652E2C205C2765345C2765655C2765625C2765365C2765645C27
            65655C2766315C2766325C276663295C7061720D0A2020202020202020202020
            20202020202020202020202020205C2763385C2765645C2765365C2765355C27
            65645C2765355C2766302D5C2765615C2766335C2766305C2765305C2766325C
            2765655C276630205C2764315C276464202020205F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F285C2764342E5C2763382E5C2763652E2C205C2765345C2765655C
            2765625C2765365C2765645C2765655C2766315C2766325C276663295C706172
            0D0A0D0A5C706172645C66325C667331365C7061720D0A7D0D0A00}
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
      '       sp.SHOWTYPE, '
      '       sp.GENDIR, '
      '       sp.ISPOLNIT, '
      '       sp.CONTROL, '
      '       sp.KONTRAGENT, '
      '       sp.SRVDOG'
      'FROM SHOWPROKAZPO sp')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 384
    Top = 32
  end
  object src_SHOWPROKAZPO: TDataSource
    DataSet = ds_SHOWPROKAZPO
    Left = 413
    Top = 32
  end
  object xlr: TEXLReport
    About = 'EMS Advanced Excel Report(tm) Component Suite for Delphi(R)'
    Bands.BandCount = 2
    Bands.GroupHeaderBandCount = 1
    Bands.Items = <
      item
        Bands.Range = 'A2:O2'
        Bands.BandType = 0
      end
      item
        Bands.BandType = 1
        Bands.GroupID = 1
      end>
    DataSet = ds_GraphList
    Dictionary = <>
    _Version = '1.6.0.3'
    Left = 336
    Top = 416
  end
  object ds_dog: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT sd.CODE, '
      '       sd.KONTRAGENT,k.NAME KName, '
      '       sd.NOMER, '
      '       sd.D1, '
      '       sd.D2, '
      '       sd."ACTIVE", '
      '       sd.DATA,'
      '       sd.atype,'
      '      case'
      
        '        when sd.atype=0 then k.NAME||'#39' | '#39'||'#39#1057#1072#1085#1090#1077#1093#1085#1080#1082#1072' '#1080' '#1086#1073#1097#1077#1089#1090 +
        #1088#1086#1081#39
      '        when sd.atype=1 then k.NAME||'#39' | '#39'||'#39#1069#1083#1077#1082#1090#1088#1080#1082#1072#39
      '        when sd.atype=2 then k.NAME||'#39' | '#39'||'#39#1051#1080#1092#1090#1099#39
      '        when sd.atype=3 then k.NAME||'#39' | '#39'||'#39#1057#1072#1085#1080#1090#1072#1088#1080#1103#39
      '        when sd.atype=4 then k.NAME||'#39' | '#39'||'#39#1042#1044#1043#1054#39
      '        when sd.atype=5 then k.NAME||'#39' | '#39'||'#39#1042#1077#1085#1090#1080#1083#1103#1094#1080#1103#39
      '        when sd.atype=6 then k.NAME||'#39' | '#39'||'#39#1042#1099#1074#1086#1079' '#1058#1041#1054#39
      '        when sd.atype=7 then k.NAME||'#39' | '#39'||'#39#1044#1077#1088#1072#1090#1080#1079#1072#1094#1080#1103#39
      '        else '#39' '#39
      '      end atypeName'
      ''
      'FROM SRVDOG sd'
      'left outer join KONTRAGENT k on k.code=sd.KONTRAGENT'
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 176
    Top = 32
  end
  object src_dog: TDataSource
    DataSet = ds_dog
    Left = 204
    Top = 32
  end
  object ds_GRAPHSPECM: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, GRAPHSPEC, M,'
      '     case'
      '       when M=1 then '#39#1103#1085#1074#1072#1088#1100#39
      '       when M=2 then '#39#1092#1077#1074#1088#1072#1083#1100#39
      '       when M=3 then '#39#1084#1072#1088#1090#39
      '       when M=4 then '#39#1072#1087#1088#1077#1083#1100#39
      '       when M=5 then '#39#1084#1072#1081#39
      '       when M=6 then '#39#1080#1102#1085#1100#39
      '       when M=7 then '#39#1080#1102#1083#1100#39
      '       when M=8 then '#39#1072#1074#1075#1091#1089#1090#39
      '       when M=9 then '#39#1089#1077#1085#1090#1103#1073#1088#1100#39
      '       when M=10 then '#39#1086#1082#1090#1103#1073#1088#1100#39
      '       when M=11 then '#39#1085#1086#1103#1073#1088#1100#39
      '       when M=12 then '#39#1076#1077#1082#1072#1073#1088#1100#39
      '     end MName,'
      '     FLATPLAN, FLAT, GRAPHTYPE'
      ''
      'from GRAPHSPECM'
      'where GRAPHSPEC=:mas_code'
      '    --and GRAPHTYPE=:mas_GRAPHTYPE')
    AfterDelete = ds_GRAPHSPECMAfterDelete
    AfterPost = ds_GRAPHSPECMAfterPost
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DataSource = src_GrapSpec
    Left = 624
    Top = 488
    dcForceOpen = True
  end
  object src_GRAPHSPECM: TDataSource
    DataSet = ds_GRAPHSPECM
    Left = 700
    Top = 488
  end
  object fr2: TfrxReport
    Version = '4.15.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41065.791681145800000000
    ReportOptions.LastChange = 41298.711028831020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      '                                                    '
      'procedure Button1OnClick(Sender: TfrxComponent);'
      'begin'
      
        ' // ShowMessage(cbbY.Text);                                     ' +
        '         '
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  //Report.variables['#39'varYear'#39']:=2012;                  '
      
        '  Report.variables['#39'varMonth'#39']:= #39+cbb1.Text+#39;             ' +
        '             '
      '  //Report.variables['#39'varM'#39']:=3;            '
      '  Q.ParamByName('#39'M'#39').Value := cbb1.ItemIndex;'
      
        '  //ShowMessage(IntToStr(cbb1.ItemIndex));                      ' +
        '          '
      '  Q.ParamByName('#39'GRAPHLIST_'#39').Value:= Report.variables['#39'varM'#39'];'
      '  Q.Open;'
      '  if Report.variables['#39'varPOType'#39'] = 1 then'
      '     Report.variables['#39'varI'#39']:= #39+'#39#1069#1085#1077#1088#1075#1077#1090#1080#1082' '#39'+#39 else'
      
        '     Report.variables['#39'varI'#39']:= #39+'#39#1052#1077#1085#1077#1076#1078#1077#1088' '#1057#1069' '#39'+#39;         ' +
        '  '
      '   {0 - '#1054#1073#1097#1077#1089#1090#1088#1086#1080#1090#1077#1083#1100#1085#1099#1081
      '    1 - '#1069#1083#1077#1082#1090#1088#1080#1082#1072
      '    2 - '#1051#1080#1092#1090#1099
      '    3 - '#1055#1088#1086#1095#1077#1077'}        '
      'end;'
      ''
      'procedure Memo7OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  n: variant;                                           '
      'begin'
      
        '  n:= IIF(<Q."FLAT_CNT"> > 0,(<Q."ACTFACT"> / <Q."FLAT_CNT">) * ' +
        '100,0);                 '
      '  Memo7.Text:= FormatFloat('#39'0'#39',n);        '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 496
    Top = 88
    Datasets = <
      item
        DataSet = fr2.Q
        DataSetName = 'Q'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object Q: TfrxFIBQuery
        UserName = 'Q'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'GRAPHLIST_'
            DataType = ftUnknown
          end
          item
            Name = 'M'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          
            'select CODE, GRAPHLIST, STREET, HOUSE, D1, D2, D3, ISCLOSED, PRO' +
            'SR, ACTFACT, FLAT_CNT, STREETNAME||'#39', '#39'||NOMER DOM'
          'from GRAPH_REP(:GRAPHLIST_, :M)'
          'order by STREETNAME, NOMER  ')
        Database = fr2.fdb
        pLeft = 40
        pTop = 64
        Parameters = <
          item
            Name = 'GRAPHLIST_'
            DataType = ftUnknown
          end
          item
            Name = 'M'
            DataType = ftUnknown
          end>
      end
      object fdb: TfrxFIBDatabase
        DatabaseName = '91.144.190.4:d:/base/DEZ.fdb'
        LoginPrompt = False
        Params.Strings = (
          'user_name=sysdba'
          'password=victris')
        SQLDialect = 3
        pLeft = 40
        pTop = 16
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
        Height = 124.724490000000000000
        Top = 16.000000000000000000
        Width = 718.110700000000000000
        object Rich1: TfrxRichView
          Align = baClient
          Width = 718.110700000000000000
          Height = 124.724490000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C666E696C5C66636861727365743230347B5C2A5C666E616D652041726961
            6C3B7D417269616C204359523B7D7B5C66315C666E696C5C6663686172736574
            3020417269616C3B7D7B5C66325C666E696C5C66636861727365743020546168
            6F6D613B7D7B5C66335C666E696C5C6663686172736574323034205461686F6D
            613B7D7D0D0A7B5C2A5C67656E657261746F7220526963686564323020362E33
            2E393630307D5C766965776B696E64345C756331200D0A5C706172645C71635C
            625C66305C667333325C2763655C2764325C2764375C2763355C2764325C6673
            32385C7061720D0A5C667332345C276565205C2765325C2766625C2765665C27
            65655C2765625C2765645C2765355C2765645C2765385C276538205C2765335C
            2766305C2765305C2766345C2765385C2765615C276530205C66315C6C616E67
            31303333205B766172474E616D655D5C62305C66325C7061720D0A5C66305C66
            7332385C6C616E67313034395C2765375C2765305C625C66315C6C616E673130
            333320205B7661724D6F6E74685D205B766172596561725D5C66305C6C616E67
            313034395C2765332E5C7061720D0A5C66315C6C616E6731303333205B5C6630
            5C6C616E673130343920766172504F5C66315C6C616E6731303333205D5C6230
            5C66335C667331365C6C616E67313034395C7061720D0A7D0D0A00}
        end
      end
      object Header1: TfrxHeader
        Height = 34.015770000000000000
        Top = 160.000000000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baLeft
          Width = 34.015748030000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1087'/'#1087
            #8470)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          Left = 34.015748030000000000
          Width = 275.905511810000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1040#1076#1088#1077#1089)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 309.921259840000000000
          Width = 154.960629920000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1083#1072#1085
            '('#1082#1086#1083'-'#1074#1086' '#1082#1074#1072#1088#1090#1080#1088')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Left = 464.881889760000000000
          Width = 154.960629920000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1060#1072#1082#1090
            '('#1082#1086#1083'-'#1074#1086' '#1082#1074#1072#1088#1090#1080#1088')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Align = baWidth
          Left = 619.842519680000000000
          Width = 98.268180319999940000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1086#1094#1077#1085#1090
            #1074#1099#1087#1086#1083#1085#1077#1085#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897637800000000000
        Top = 216.000000000000000000
        Width = 718.110700000000000000
        DataSet = fr2.Q
        DataSetName = 'Q'
        RowCount = 0
        object QSTREETNAME: TfrxMemoView
          Align = baLeft
          Left = 34.015770000000010000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DOM'
          DataSet = fr2.Q
          DataSetName = 'Q'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q."DOM"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Align = baLeft
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
        end
        object QFLAT_CNT: TfrxMemoView
          Align = baLeft
          Left = 309.921460000000000000
          Width = 154.960629920000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FLAT_CNT'
          DataSet = fr2.Q
          DataSetName = 'Q'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Q."FLAT_CNT"]')
          ParentFont = False
        end
        object QACTFACT: TfrxMemoView
          Align = baLeft
          Left = 464.882089920000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ACTFACT'
          DataSet = fr2.Q
          DataSetName = 'Q'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Q."ACTFACT"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baWidth
          Left = 619.842819920000000000
          Width = 98.267880079999940000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo7OnBeforePrint'
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 136.063080000000000000
        Top = 256.000000000000000000
        Width = 718.110700000000000000
        object Rich2: TfrxRichView
          Align = baClient
          Width = 718.110700000000000000
          Height = 136.063080000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C666E696C5C6663686172736574323034205461686F6D613B7D7B5C66315C
            666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C2A5C6765
            6E657261746F7220526963686564323020362E332E393630307D5C766965776B
            696E64345C756331200D0A5C706172645C66305C667332305C2763375C276530
            5C2765615C2765305C2765375C2766375C2765385C276561203A5C7061720D0A
            5C7061720D0A5C66315C6C616E6731303333205B766172495D5C66305C6C616E
            673130343920205C2763655C2763655C27636520225C2763345C2763355C2763
            37205C2763615C2765305C2765625C2765385C2765645C2765385C2765645C27
            66315C2765615C2765655C2765335C276565205C2766305C2765305C2765395C
            2765655C2765645C276530225C66315C6C616E6731303333205F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5C66305C6C616E6731303439
            5C7061720D0A5C7061720D0A5C2763385C2766315C2765665C2765655C276562
            5C2765645C2765385C2766325C2765355C2765625C2766633A205C2765345C27
            65385C2766305C2765355C2765615C2766325C2765655C276630205C66315C6C
            616E6731303333205B766172504F5D5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5B766172504F4469725D5C66305C6C616E67313034
            395C7061720D0A5C7461625C7461625C7461625C7461625C7461625C7461625C
            7061720D0A5C2763385C2765645C2765365C2765355C2765645C2765355C2766
            30202D205C2765615C2766335C2766305C2765305C2766325C2765655C276630
            205C2764315C27646420205C2763655C2763655C27636520225C2763345C2763
            355C276337205C2763615C2765305C2765625C2765385C2765645C2765385C27
            65645C2766315C2765615C2765655C2765335C276565205C2766305C2765305C
            2765395C2765655C2765645C276530225C66315C6C616E6731303333205F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5C66305C667331365C6C616E67313034395C7061
            720D0A7D0D0A00}
        end
      end
    end
    object DialogPage1: TfrxDialogPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1084#1077#1089#1103#1094
      Height = 217.000000000000000000
      ClientHeight = 178.000000000000000000
      Left = 478.000000000000000000
      Top = 230.000000000000000000
      Width = 215.000000000000000000
      ClientWidth = 199.000000000000000000
      object cbb1: TfrxComboBoxControl
        Left = 48.000000000000000000
        Top = 40.000000000000000000
        Width = 101.000000000000000000
        Height = 21.000000000000000000
        ShowHint = True
        Color = clWindow
        Items.Strings = (
          ''
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
        Text = #1103#1085#1074#1072#1088#1100
        ItemIndex = 1
      end
      object btn1: TfrxButtonControl
        Left = 48.000000000000000000
        Top = 92.000000000000000000
        Width = 99.000000000000000000
        Height = 25.000000000000000000
        ShowHint = True
        Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
        ModalResult = 1
        OnClick = 'Button1OnClick'
      end
    end
  end
  object docm1: TdxDockingManager
    Color = clBtnFace
    DefaultHorizContainerSiteProperties.Dockable = True
    DefaultHorizContainerSiteProperties.ImageIndex = -1
    DefaultVertContainerSiteProperties.Dockable = True
    DefaultVertContainerSiteProperties.ImageIndex = -1
    DefaultTabContainerSiteProperties.CaptionButtons = []
    DefaultTabContainerSiteProperties.Dockable = True
    DefaultTabContainerSiteProperties.ImageIndex = -1
    DockStyle = dsVS2005
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Images = cmDb.iml1
    Left = 584
    Top = 128
    PixelsPerInch = 96
  end
  object ds_orderSpec: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT WS.CODE,'
      '       WS.DATA,'
      '       WS.KONTRAGENT, k.NAME KNAME,'
      '       WS.SERVISWORK, s.NAME SNAME,'
      '       WS.HOUSE,'
      '       WS.ADDR,'
      '       WS.PRICE,'
      '       WS.NOTE,'
      '       WS.WORKLIST,'
      '       WS.USERNAME,'
      '       WS.LASTTIME,'
      '       WS.QUANTITY,'
      '       WS.JWORK,'
      '       WS.FDATA'
      'FROM WORKSPECLIST WS'
      'left outer join WORKLIST w on w.code=ws.WORKLIST'
      'left outer join SERVISWORK s on s.CODE = ws.SERVISWORK'
      'left outer join KONTRAGENT k on k.CODE = ws.KONTRAGENT'
      ''
      'where ws.DATA between :D1 and :D2'
      '          and ws.HOUSE =:HOUSE'
      '          and ws.KONTRAGENT =:kontragent'
      
        '          --and ws.SERVISWORK in (select code from SERVISWORK wh' +
        'ere GRAPHTYPE =:gtype)'
      'order by k.NAME, ws.DATA')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 576
    Top = 64
  end
  object src_orderspec: TDataSource
    DataSet = ds_orderSpec
    Left = 608
    Top = 64
  end
  object fr_ds1: TfrxDBDataset
    UserName = 'frx_GrapSpec'
    CloseDataSource = False
    DataSet = ds_GrapSpec
    BCDToCurrency = False
    Left = 440
    Top = 416
  end
  object xls2: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 392
    Top = 144
  end
  object rtf1: TfrxRTFExport
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
    Left = 424
    Top = 144
  end
end
