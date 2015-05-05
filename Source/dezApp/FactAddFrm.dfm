object FactAddForm: TFactAddForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1044#1086#1087'. '#1088#1072#1073#1086#1090#1072
  ClientHeight = 415
  ClientWidth = 323
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 323
    Height = 415
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object cbb_street: TcxLookupComboBox
      Left = 92
      Top = 23
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
      Left = 92
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
          FieldName = 'NOMER'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = com_dm.src_house
      Style.HotTrack = False
      TabOrder = 1
      Width = 145
    end
    object cbb_kontr: TcxLookupComboBox
      Left = 92
      Top = 77
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_Kontr
      Style.HotTrack = False
      TabOrder = 2
      Width = 145
    end
    object cbb_mlist: TcxLookupComboBox
      Left = 92
      Top = 104
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
      Properties.ListSource = src_mlist
      Properties.OnChange = cbb_mlistPropertiesChange
      Style.HotTrack = False
      TabOrder = 3
      Width = 145
    end
    object cbb_manager: TcxLookupComboBox
      Left = 92
      Top = 131
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
          FieldName = 'FIO'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_worker
      Style.HotTrack = False
      TabOrder = 4
      Width = 145
    end
    object dt_zd: TcxDateEdit
      Left = 92
      Top = 184
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object dt_sd: TcxDateEdit
      Left = 92
      Top = 211
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object ced_summa: TcxCalcEdit
      Left = 92
      Top = 264
      EditValue = 0.000000000000000000
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object btn_add: TcxButton
      Left = 20
      Top = 317
      Width = 283
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      OptionsImage.Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333300007777777003300000788888800030000078008880003000007800888
        0003000007888888000300000000000000030000000000000003000FFFFFFFFF
        0003000FFFFFFFFF0003000FFFFFFFFF0003000FFFFFFFFF0003000FFFFFFFFF
        0003000FFFFFFFFF0703000FFFFFFFFF00033009999999990033}
      TabOrder = 8
      OnClick = btn_addClick
    end
    object btn_edit: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
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
      TabOrder = 9
      Visible = False
      OnClick = btn_editClick
    end
    object btn_del: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
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
      PaintStyle = bpsGlyph
      TabOrder = 10
      Visible = False
    end
    object gr1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grlc1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      Parent = gr1
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object itm_street: TdxLayoutItem
      CaptionOptions.Text = #1059#1083#1080#1094#1072
      Parent = grlc1Group1
      Control = cbb_street
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_house: TdxLayoutItem
      CaptionOptions.Text = #1044#1086#1084
      Parent = grlc1Group1
      Control = cbb_house
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_kontr: TdxLayoutItem
      CaptionOptions.Text = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      Parent = grlc1Group1
      Control = cbb_kontr
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_mlist: TdxLayoutItem
      CaptionOptions.Text = #1042#1080#1076' '#1088#1072#1073#1086#1090#1099
      Parent = grlc1Group1
      Control = cbb_mlist
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_manager: TdxLayoutItem
      CaptionOptions.Text = #1054#1090#1074'. '#1083#1080#1094#1086
      Parent = grlc1Group1
      Control = cbb_manager
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object grlc1Group2: TdxLayoutGroup
      Parent = gr1
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object itm_zd: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1092#1072#1082#1090
      Parent = grlc1Group2
      Control = dt_zd
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_sd: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1085#1072' '#1089#1072#1081#1090
      Parent = grlc1Group2
      Control = dt_sd
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grlc1Group3: TdxLayoutGroup
      Parent = gr1
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object itm_summa: TdxLayoutItem
      CaptionOptions.Text = #1057#1091#1084#1084#1072' '#1092#1072#1082#1090
      Parent = grlc1Group3
      Control = ced_summa
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grlc1Group4: TdxLayoutGroup
      Parent = gr1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object itm_add: TdxLayoutItem
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 280
      Control = btn_add
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_del: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btn_del
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object itm_edit: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 104
      Control = btn_edit
      ControlOptions.ShowBorder = False
      Index = -1
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 472
    Top = 344
    object lcl1: TdxLayoutCxLookAndFeel
    end
  end
  object ds_mlist: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    CODE,'
      '    MGROUP,'
      '    NAME,'
      '    ED,'
      '    JWORKTYPE,'
      '    NOTE,'
      '    KYEAR,'
      '    STRUCTDEFECT'
      'FROM'
      '    MLIST '
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 104
    Top = 112
  end
  object src_mlist: TDataSource
    DataSet = ds_mlist
    Left = 133
    Top = 112
  end
  object ds_worker: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT w.CODE, '
      '       w.KONTRAGENT, '
      '       w.PIPLE,'
      '       (p.f||'#39' '#39'||p.i||'#39' '#39'||p.o) fio,'
      '       w.AROLE'
      'FROM WORKER w'
      'left outer join PIPLE p on p.code=w.piple'
      'where USETR=1')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 104
    Top = 64
  end
  object src_worker: TDataSource
    DataSet = ds_worker
    Left = 136
    Top = 64
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_manager
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = dt_sd
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = dt_zd
        Properties.Strings = (
          'EditValue')
      end>
    StorageName = 'prop1'
    Left = 96
    Top = 192
  end
  object src_Kontr: TDataSource
    Left = 224
    Top = 72
  end
end
