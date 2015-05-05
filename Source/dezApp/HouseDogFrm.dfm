object HouseDogForm: THouseDogForm
  Left = 0
  Top = 0
  Caption = #1044#1086#1075#1086#1074#1086#1088#1099' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1103
  ClientHeight = 622
  ClientWidth = 920
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
    Top = 29
    Width = 920
    Height = 593
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = laf1
    object grd1: TcxGrid
      Left = 263
      Top = 4
      Width = 250
      Height = 200
      TabOrder = 10
      LockedStateImageOptions.Effect = lsieLight
      LockedStateImageOptions.ShowText = True
      LockedStateImageOptions.Text = #1055#1086#1078#1072#1083#1091#1081#1089#1090#1072' '#1087#1086#1076#1086#1078#1076#1080#1090#1077'...'
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        DataController.DataSource = src_HOUSEDOG
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
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1STNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STNAME'
          HeaderAlignmentHorz = taCenter
          Width = 165
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          HeaderAlignmentHorz = taCenter
          Width = 39
        end
        object clv1STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1DU: TcxGridDBColumn
          DataBinding.FieldName = 'DU'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1DUNAME: TcxGridDBColumn
          Caption = #1044#1086#1084#1086#1091#1087#1088#1072#1074#1083#1077#1085#1080#1077
          DataBinding.FieldName = 'DUNAME'
          HeaderAlignmentHorz = taCenter
          Width = 174
        end
        object clv1DATAPUK: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1087#1088#1086#1090#1086#1082#1086#1083#1072' '#1086' '#1074#1099#1073#1086#1088#1077' '#1059#1050
          DataBinding.FieldName = 'DATAPUK'
          HeaderAlignmentHorz = taCenter
          Width = 96
        end
        object clv1NUMDOG: TcxGridDBColumn
          Caption = #1053#1086#1084#1077#1088' '#1076#1086#1075#1086#1074#1086#1088#1072
          DataBinding.FieldName = 'NUMDOG'
          HeaderAlignmentHorz = taCenter
        end
        object clv1STARTDATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1079#1072#1082#1083#1102#1095#1077#1085#1080#1103' '#1076#1086#1075#1086#1074#1086#1088#1072
          DataBinding.FieldName = 'STARTDATA'
          HeaderAlignmentHorz = taCenter
          Width = 107
        end
        object clv1ENDDATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103' '#1076#1086#1075#1086#1074#1086#1088#1072
          DataBinding.FieldName = 'ENDDATA'
          HeaderAlignmentHorz = taCenter
          Width = 104
        end
        object clv1PROCUK: TcxGridDBColumn
          Caption = #1055#1088#1086#1094#1077#1085#1090' '#1074#1086#1079#1085#1072#1075#1088#1072#1078#1076#1077#1085#1080#1103' '#1059#1050
          DataBinding.FieldName = 'PROCUK'
          HeaderAlignmentHorz = taCenter
          Width = 122
        end
        object clv1FIRM: TcxGridDBColumn
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'FIRM'
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
          Width = 152
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object cbb_street: TcxLookupComboBox
      Left = 14
      Top = 50
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
      Properties.ListSource = com_dm.src_street
      Properties.OnEditValueChanged = cbb_streetPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 0
      Width = 145
    end
    object cbb_house: TcxLookupComboBox
      Left = 14
      Top = 87
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'HOUSE'
      Properties.ListColumns = <
        item
          FieldName = 'NOMER'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_house
      Properties.OnChange = cbb_housePropertiesChange
      Properties.OnEditValueChanged = cbb_housePropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 1
      Width = 145
    end
    object txt_du: TcxTextEdit
      Left = 10000
      Top = 10000
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 11
      Visible = False
      Width = 121
    end
    object dt_DataPUK: TcxDateEdit
      Left = 14
      Top = 124
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object edt_NumDog: TcxMaskEdit
      Left = 14
      Top = 161
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object dt_StartData: TcxDateEdit
      Left = 14
      Top = 198
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object dt_EndData: TcxDateEdit
      Left = 14
      Top = 235
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object clc_ProcUK: TcxCalcEdit
      Left = 14
      Top = 272
      EditValue = 0.000000000000000000
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object btn_ok: TcxButton
      Left = 14
      Top = 299
      Width = 75
      Height = 25
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
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
      TabOrder = 7
      OnClick = btn_okClick
    end
    object btn_edit: TcxButton
      Left = 92
      Top = 299
      Width = 75
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = btn_editClick
    end
    object btn_del: TcxButton
      Left = 170
      Top = 299
      Width = 75
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
      TabOrder = 9
      OnClick = btn_delClick
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
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 251
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 0
    end
    object itm_street: TdxLayoutItem
      CaptionOptions.Text = #1059#1083#1080#1094#1072
      CaptionOptions.Layout = clTop
      Parent = grp_left
      Control = cbb_street
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_house: TdxLayoutItem
      CaptionOptions.Text = #1044#1086#1084
      CaptionOptions.Layout = clTop
      Parent = grp_left
      Control = cbb_house
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_du: TdxLayoutItem
      CaptionOptions.Text = #1044#1086#1084#1086#1091#1087#1088#1072#1074#1083#1077#1085#1080#1077
      CaptionOptions.Layout = clTop
      Control = txt_du
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object itm_DataPUK: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1087#1088#1086#1090#1086#1082#1086#1083#1072' '#1086' '#1074#1099#1073#1086#1088#1077' '#1059#1050'.'
      CaptionOptions.Layout = clTop
      Parent = grp_left
      Control = dt_DataPUK
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_NumDog: TdxLayoutItem
      CaptionOptions.Text = #1053#1086#1084#1077#1088' '#1076#1086#1075#1086#1074#1086#1088#1072
      CaptionOptions.Layout = clTop
      Parent = grp_left
      Control = edt_NumDog
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_StartData: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1079#1072#1082#1083#1102#1095#1077#1085#1080#1103' '#1076#1086#1075#1086#1074#1086#1088#1072
      CaptionOptions.Layout = clTop
      Parent = grp_left
      Control = dt_StartData
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itm_EndData: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103' '#1076#1086#1075#1086#1074#1086#1088#1072
      CaptionOptions.Layout = clTop
      Parent = grp_left
      Control = dt_EndData
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object itm_ProcUK: TdxLayoutItem
      CaptionOptions.Text = #1055#1088#1086#1094#1077#1085#1090' '#1074#1086#1079#1085#1072#1075#1088#1072#1078#1076#1077#1085#1080#1103' '#1059#1050
      CaptionOptions.Layout = clTop
      Parent = grp_left
      Control = clc_ProcUK
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object grplc1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Offsets.Top = 5
      Parent = grp_left
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 7
    end
    object itm_ok: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grplc1Group2
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
      Control = btn_edit
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_del: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group2
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
      Index = 1
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grplc1Group1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object lkf1: TdxLayoutLookAndFeelList
    Left = 664
    Top = 112
    object laf1: TdxLayoutCxLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 3
      Offsets.RootItemsAreaOffsetVert = 3
    end
  end
  object ds_house: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT HOUSE, NOMER, STREET FROM GETHOUSEBYFIRM(:FIRM)')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 296
    Top = 88
  end
  object src_house: TDataSource
    DataSet = ds_house
    Left = 324
    Top = 88
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_Firm
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = clv1DATAPUK
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1DUNAME
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1ENDDATA
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1NOMER
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1NUMDOG
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1PROCUK
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1STARTDATA
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1STNAME
        Properties.Strings = (
          'Width')
      end
      item
        Component = grp_left
        Properties.Strings = (
          'SizeOptions.Width')
      end>
    StorageName = 'prop1'
    Left = 694
    Top = 112
  end
  object ds_HOUSEDOG: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE HOUSEDOG'
      'SET '
      '    HOUSE = :HOUSE,'
      '    STREET = :STREET,'
      '    DU = :DU,'
      '    DATAPUK = :DATAPUK,'
      '    NUMDOG = :NUMDOG,'
      '    STARTDATA = :STARTDATA,'
      '    ENDDATA = :ENDDATA,'
      '    PROCUK = :PROCUK'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    HOUSEDOG'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO HOUSEDOG('
      '    CODE,'
      '    HOUSE,'
      '    STREET,'
      '    DU,'
      '    DATAPUK,'
      '    NUMDOG,'
      '    STARTDATA,'
      '    ENDDATA,'
      '    PROCUK'
      ')'
      'VALUES('
      '    :CODE,'
      '    :HOUSE,'
      '    :STREET,'
      '    :DU,'
      '    :DATAPUK,'
      '    :NUMDOG,'
      '    :STARTDATA,'
      '    :ENDDATA,'
      '    :PROCUK'
      ')')
    RefreshSQL.Strings = (
      'SELECT hd.CODE, '
      '       hd.HOUSE, h.nomer,'
      '       hd.STREET, s.name STName,'
      '       hd.DU, d.name DuName,'
      '       hd.DATAPUK, '
      '       hd.NUMDOG, '
      '       hd.STARTDATA, '
      '       hd.ENDDATA, '
      '       hd.PROCUK'
      'FROM HOUSEDOG hd'
      'left outer join house h on h.code=hd.house'
      'left outer join street s on s.code=hd.street'
      'left outer join du d on d.code=hd.du'
      ''
      ' WHERE '
      '        HD.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT hd.CODE,'
      '       hd.HOUSE, h.nomer,'
      '       hd.STREET, s.name STName,'
      '       hd.DU, d.name DuName,'
      '       hd.DATAPUK,'
      '       hd.NUMDOG,'
      '       hd.STARTDATA,'
      '       hd.ENDDATA,'
      '       hd.PROCUK,'
      '       hd.FIRM'
      'FROM HOUSEDOG hd'
      'left outer join house h on h.code=hd.house'
      'left outer join street s on s.code=hd.street'
      'left outer join du d on d.code=hd.du')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 296
    Top = 184
  end
  object src_HOUSEDOG: TDataSource
    DataSet = ds_HOUSEDOG
    Left = 324
    Top = 184
  end
  object barM1: TdxBarManager
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
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 568
    Top = 360
    DockControlHeights = (
      0
      0
      29
      0)
    object br1: TdxBar
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
      FloatLeft = 954
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          UserDefine = [udWidth]
          UserWidth = 252
          Visible = True
          ItemName = 'cbb_Firm'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_LoadData'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
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
    object btn_LoadData: TdxBarButton
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      Category = 0
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
      OnClick = btn_LoadDataClick
    end
  end
end
