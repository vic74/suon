object AddWorkSpecListForm: TAddWorkSpecListForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1056#1072#1073#1086#1090#1072' '#1087#1086' '#1085#1072#1088#1103#1076#1091
  ClientHeight = 296
  ClientWidth = 309
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 309
    Height = 296
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = skn1
    object cbb_street: TcxLookupComboBox
      Left = 10000
      Top = 10000
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
      Properties.ListSource = src_street
      Properties.OnEditValueChanged = cbb_streetPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 9
      Visible = False
      Width = 145
    end
    object cbb_house: TcxLookupComboBox
      Left = 10000
      Top = 10000
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
      Properties.ListSource = src_house
      Properties.OnEditValueChanged = cbb_housePropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 10
      Visible = False
      Width = 145
    end
    object cbb_flat: TcxLookupComboBox
      Left = 10000
      Top = 10000
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
          FieldName = 'FLAT'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_flat
      Properties.OnEditValueChanged = cbb_flatPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 11
      Visible = False
      Width = 145
    end
    object cbb_work: TcxLookupComboBox
      Left = 62
      Top = 31
      Properties.DropDownHeight = 200
      Properties.DropDownListStyle = lsEditList
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
      Properties.ListSource = src_serviswork
      Properties.OnChange = cbb_workPropertiesChange
      Properties.OnEditValueChanged = cbb_workPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 1
      Width = 145
    end
    object btn_ok: TcxButton
      Left = 16
      Top = 251
      Width = 116
      Height = 25
      Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000205020500000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000007470ABE19671CCD05090609000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000034105BB4CC655F977EE81FF1C641DDC030804080000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000013E03BD35BA3EF860FE6FFF69FF78FF58F065FF106313DD0208
        0309000000000000000000000000000000000000000000000000000000000000
        0000013A01BB23AD2FF94FE95EFF78EF84FF79F284FF58F567FF4AE756FF0B5E
        0EDD01060108000000000000000000000000000000000000000000000000053A
        06BC239D2FF953D75FFF88E491FF8EE596FF9FEAA5FF71E77CFF4AE759FF3FD6
        4CFF07550ADD0005010900000000000000000000000000000000033505A45DB3
        66FE6FD179FF9DDFA3FF98DF9FFF217D26F41C6F21E299E5A0FF69DB74FF39D8
        49FF31C23DFF034B05DD00040009000000000000000000000000010B02163F84
        44ECB5DDBAFFA9DAAEFF2D8A33F60228053C00040106136D19D1A5E2AAFF60D0
        6AFF28C937FF22B02FFF034204DC00020008000000000000000000000000000C
        0114308536ED3E8F42F90029034100000000000000000008010C0E6814D1B3E3
        B7FF55C460FF15B725FF13A320FF024004DB0002000900000000000000000000
        0000000C011301220435000000000000000000000000000000000007010B0B62
        10D1B4DCB7FF51B25AFF069E14FF0B9517FF0E4810DD00050110000000000000
        0000000000000000000000000000000000000000000000000000000000000006
        000B0D6213D1B6D7B9FF529F5AFF3A9941FF499351FF013001B2000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000007000B0D6213D0BAD7BDFF569E5DFF003601B400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000007000B0E5F13CD0B430CB70000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000020004000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 7
      OnClick = btn_okClick
    end
    object btn_cancel: TcxButton
      Left = 177
      Top = 251
      Width = 116
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000001166800022CCFF00093340000000000000000000000000000000000000
        000000000000000933400022CCFF001166800000000000000000000000000213
        67800325CEFF3355FFFF0325CEFF010934400000000000000000000000000000
        0000010934400325CEFF3355FFFF0325CEFF0213678000000000000000000729
        D2FF88AAFFFF385AFFFF385AFFFF0729D2FF020A35400000000000000000020A
        35400729D2FF385AFFFF385AFFFF88AAFFFF0729D2FF0000000000000000030C
        35400C2ED5FF88AAFFFF3E60FFFF3E60FFFF0C2ED5FF030C3540030C35400C2E
        D5FF3E60FFFF3E60FFFF88AAFFFF0C2ED5FF030C354000000000000000000000
        0000050D37401234DAFF88AAFFFF4668FFFF4668FFFF1234DAFF1234DAFF4668
        FFFF4668FFFF88AAFFFF1234DAFF050D37400000000000000000000000000000
        000000000000060F3840183ADEFF88AAFFFF4F71FFFF4F71FFFF4F71FFFF4F71
        FFFF88AAFFFF183ADEFF060F3840000000000000000000000000000000000000
        00000000000000000000081039401F41E3FF7193FFFF597BFFFF597BFFFF7193
        FFFF1F41E3FF0810394000000000000000000000000000000000000000000000
        0000000000000000000009123A402547E8FF6284FFFF6284FFFF6284FFFF6284
        FFFF2547E8FF09123A4000000000000000000000000000000000000000000000
        0000000000000B143B402C4EEDFF6C8EFFFF6C8EFFFF88AAFFFF88AAFFFF6C8E
        FFFF6C8EFFFF2C4EEDFF0B143B40000000000000000000000000000000000000
        00000D153C403254F1FF7597FFFF7597FFFF88AAFFFF3254F1FF3254F1FF88AA
        FFFF7597FFFF7597FFFF3254F1FF0D153C400000000000000000000000000E17
        3E40385AF6FF7D9FFFFF7D9FFFFF88AAFFFF385AF6FF0E173E400E173E40385A
        F6FF88AAFFFF7D9FFFFF7D9FFFFF385AF6FF0E173E4000000000000000003D5F
        F9FF88AAFFFF83A5FFFF88AAFFFF3D5FF9FF0F183E4000000000000000000F18
        3E403D5FF9FF88AAFFFF83A5FFFF88AAFFFF3D5FF9FF00000000000000002132
        7F804163FDFF88AAFFFF4163FDFF10193F400000000000000000000000000000
        000010193F404163FDFF88AAFFFF4163FDFF21327F8000000000000000000000
        0000223380804466FFFF111A4040000000000000000000000000000000000000
        000000000000111A40404466FFFF223380800000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 8
      OnClick = btn_cancelClick
    end
    object cedt_price: TcxCurrencyEdit
      Left = 62
      Top = 103
      Style.HotTrack = False
      TabOrder = 5
      OnKeyDown = cedt_priceKeyDown
      Width = 121
    end
    object mmo1: TcxMemo
      Left = 6
      Top = 142
      Style.HotTrack = False
      TabOrder = 6
      Height = 89
      Width = 185
    end
    object btn_spr: TcxButton
      Left = 268
      Top = 31
      Width = 35
      Height = 21
      Caption = 'btn_spr'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000001190A30011F0C3C0006020C0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000008030F0252209F048132F9048433FF048433FF048433FF036A
        29CC011C0B360000000000000000000000000000000000000000000000000000
        0000011E0B39047B2FEB0C9940FF19A64DFF1BA44DFF19A24BFF1AA24BFF0E9A
        40FF048533FC023E187800000000000000000000000000000000000000000009
        0412047B30EB10A44AFF14AC56FF09A348FF058A37FF058A37FF07983BFF119C
        43FF129F45FF048834FF01270F4B000000000000000000000000000000000246
        1B870A9B41FF0EB760FF06AE53FF11AC53FFE4F5EBFFC7EAD5FF03993AFF0397
        39FF0B993EFF0B9B3EFF03702BD8000000000000000000000000000000000371
        2CDB0BB459FF09BD66FF058A37FF129042FFE4F5EBFFBDE2CBFF058A37FF058A
        37FF05973AFF089B3DFF048433FF0116082A0000000000000000000201030482
        32FC0AC168FF03C166FFDAF2E5FFE4F5EBFFE4F5EBFFE4F5EBFFE4F5EBFFA1DB
        B8FF019838FF069A3CFF048433FF012B1154000000000000000000000000047F
        31F60AC56BFF05C76EFFB7EAD1FFCFEEDEFFE4F5EBFFE4F5EBFFCEEEDDFF87D5
        A8FF029F40FF069D40FF048433FF01270F4B0000000000000000000000000365
        27C310BF6AFF0BD385FF08CF7FFF0DC873FFE4F5EBFFD8F2E4FF00B857FF03B9
        5CFF06B356FF0CA94CFF048433FF0010061E0000000000000000000000000235
        146610A14BFF1AD995FF08D488FF18D48CFFE4F5EBFFBFEDD7FF09C673FF05C0
        68FF11C06CFF14A64EFF035F25B7000000000000000000000000000000000003
        0106036C2ACC23B565FF27DB98FF0ED68DFF05D485FF04D07FFF0BCD7EFF1FCD
        83FF27B767FF058533F70116082A000000000000000000000000000000000000
        0000000E051B036C2ACC1BA552FF37CA84FF37D794FF35D592FF37CA84FF1FA9
        56FF058032EF01240E4500000000000000000000000000000000000000000000
        000000000000000301060238166C036A29CC048433FF048433FF04782EE7024B
        1D90000C05180000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      PaintStyle = bpsGlyph
      TabOrder = 2
      OnClick = btn_sprClick
    end
    object txt_ed: TcxTextEdit
      Left = 62
      Top = 55
      TabStop = False
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 3
      OnKeyDown = txt_edKeyDown
      Width = 121
    end
    object edsp_quant: TcxSpinEdit
      Left = 62
      Top = 79
      Properties.ValueType = vtFloat
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object dt1: TcxDateEdit
      Left = 62
      Top = 7
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = skn1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object itm_dt: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072
      Parent = grp1
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grplc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object itm_work: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1056#1072#1073#1086#1090#1072
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 259
      Control = cbb_work
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_spr: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 21
      SizeOptions.Width = 35
      Control = btn_spr
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_ed: TdxLayoutItem
      CaptionOptions.Text = #1045#1076'. '#1080#1079#1084'.'
      Parent = grp1
      Control = txt_ed
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_quant: TdxLayoutItem
      CaptionOptions.Text = #1050#1086#1083'-'#1074#1086
      Parent = grp1
      Control = edsp_quant
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_price: TdxLayoutItem
      CaptionOptions.Text = #1057#1090#1086#1080#1084#1086#1089#1090#1100
      LayoutLookAndFeel = skn1
      Parent = grp1
      Control = cedt_price
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itm_mmo: TdxLayoutItem
      CaptionOptions.Text = #1054#1087#1080#1089#1072#1085#1080#1077' '#1088#1072#1073#1086#1090'('#1084#1077#1089#1090#1086')'
      CaptionOptions.Layout = clTop
      Parent = grp1
      Control = mmo1
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object grp2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avBottom
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 6
    end
    object itm_ok: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp2
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 116
      Control = btn_ok
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_cancel: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp2
      SizeOptions.Width = 116
      Control = btn_cancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_flat: TdxLayoutItem
      CaptionOptions.Text = #1050#1074#1072#1088#1090#1080#1088#1072
      Control = cbb_flat
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object itm_house: TdxLayoutItem
      CaptionOptions.Text = #1044#1086#1084
      Control = cbb_house
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object itm_street: TdxLayoutItem
      CaptionOptions.Text = #1059#1083#1080#1094#1072
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 246
      Control = cbb_street
      ControlOptions.ShowBorder = False
      Index = -1
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_work
        Properties.Strings = (
          'Properties.DropDownHeight')
      end>
    StorageName = 'prop1'
    Left = 408
    Top = 24
  end
  object ds_serviswork: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME'
      'from SERVISWORK'
      'order by NAME ')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 120
    Top = 144
  end
  object src_serviswork: TDataSource
    DataSet = ds_serviswork
    Left = 149
    Top = 143
  end
  object ds_street: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME'
      'from STREET'
      'order by NAME')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 128
  end
  object src_street: TDataSource
    DataSet = ds_street
    Left = 156
  end
  object ds_house: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NOMER'
      'from HOUSE'
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 128
    Top = 56
  end
  object src_house: TDataSource
    DataSet = ds_house
    Left = 156
    Top = 56
  end
  object ds_flat: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, FLAT from ADDR'
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 224
    Top = 144
  end
  object src_flat: TDataSource
    DataSet = ds_flat
    Left = 252
    Top = 144
  end
  object lkf1: TdxLayoutLookAndFeelList
    Left = 32
    Top = 176
    object skn1: TdxLayoutSkinLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 4
      Offsets.RootItemsAreaOffsetVert = 5
      LookAndFeel.SkinName = 'Office2010Blue'
    end
    object laf1: TdxLayoutCxLookAndFeel
    end
  end
end
