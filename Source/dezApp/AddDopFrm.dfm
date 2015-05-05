object AddDopForm: TAddDopForm
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  ClientHeight = 193
  ClientWidth = 273
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 273
    Height = 193
    Align = alClient
    BorderWidth = 2
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object msk_num: TcxMaskEdit
      Left = 98
      Top = 37
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object dt1: TcxDateEdit
      Left = 98
      Top = 68
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object cbb_dog: TcxLookupComboBox
      Left = 98
      Top = 10
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
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          HeaderAlignment = taCenter
          Width = 200
          FieldName = 'KNAME'
        end
        item
          Caption = #8470
          Width = 50
          FieldName = 'NOMER'
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
        end
        item
          MinWidth = 0
          Width = 0
          FieldName = 'KONTRAGENT'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = src_SRVDOG
      Style.HotTrack = False
      TabOrder = 0
      Width = 145
    end
    object dt2: TcxDateEdit
      Left = 98
      Top = 95
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object dt3: TcxDateEdit
      Left = 98
      Top = 122
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object btn_ok: TcxButton
      Left = 10
      Top = 149
      Width = 249
      Height = 25
      Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000010101020101010401010106010101090101010B0101010C0101010C0101
        010B010101090101010701010104010101020000000000000000000000010101
        0108010101110101011B010101240101012C010101340102013B0101013A0101
        01350101012E010101250101011C010101130101010900000001000000000000
        0000000000000000000101010103010804141752329252AE7BF4062815550101
        0106010101040101010301010102000000000000000000000000000000000000
        000000000000000000000725144345A570E47BE4A9FF7EE7ACFF44B375F10215
        0A29000000000000000000000000000000000000000000000000000000000000
        0000000000000A3B206445C27DFB55D990FF50D78CFF4FD88BFF53D88EFF1A8E
        4ED70108040E0000000000000000000000000000000000000000000000000000
        00000430185222B965FD1EC568FF10C15FFF0CC15CFF0CC15CFF13C261FF25C5
        6CFF096B35AC0101010100000000000000000000000000000000000000000109
        050F0A9E4CED0BAD54FB077538B4054F2780065D2D93099C4CE80BB757FF0BB8
        58FF0CB356FF0444206D0000000000000000000000000000000000000000043A
        1C5A098F45D9021C0E2C0000000000000000000000000106030A06582A880AAC
        52FD0AAF54FF0AA550F80220103100000000000000000000000000000000032C
        15420213091C0000000000000000000000000000000000000000000000000331
        184A099F4CEF0AA650FF088B43D2010503070000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000320102E099B4AE8099F4CFF065A2B820000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000021D0E27099A4AE80A9D4CF7021A0D2200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000325122F099A4AEF077639A600000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000004371B450BAE54F802170C1C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000065F2E7406592B68000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000001020102032E1636000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 6
      OnClick = btn_okClick
    end
    object btn_gen: TcxButton
      Left = 227
      Top = 37
      Width = 75
      Height = 25
      Hint = #1043#1077#1085#1077#1088#1080#1088#1086#1074#1072#1090#1100' '#1085#1086#1084#1077#1088
      Caption = #1043#1077#1085#1077#1088#1080#1088#1086#1074#1072#1090#1100' '#1085#1086#1084#1077#1088
      OptionsImage.Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFF0FF0FF0FF
        0FF0FFF0F0F0F0F0F0F0FFF0F0F0F0F0F0F0FFF0FF0FF0FF0FF0FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFF00FFFFFFFFFFFFF00007000000007FFF00F7BFBFBFBF0FF
        F00F7FBFBFBFB0FFF00F7BFBFBFBF0F000FF7FBFBFBFB0FFFFFF7BFBFBFBF0FF
        FFFF7777BFBFB0FFFFFF7BFB77777FFFFFFFF777FFFFFFFFFFFF}
      PaintStyle = bpsGlyph
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btn_genClick
    end
    object gr1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object itm_dog: TdxLayoutItem
      CaptionOptions.Text = #1044#1086#1075#1086#1074#1086#1088' '#8470
      Parent = gr1
      Control = cbb_dog
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grlc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = gr1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object itm_num: TdxLayoutItem
      AlignHorz = ahClient
      CaptionOptions.Text = #1053#1086#1084#1077#1088
      Parent = grlc1Group1
      Control = msk_num
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_gen: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 32
      Control = btn_gen
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_dt1: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072
      Parent = gr1
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_dt2: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
      Parent = gr1
      Control = dt2
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_dt3: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
      Parent = gr1
      Control = dt3
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itm_ok: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = gr1
      Control = btn_ok
      ControlOptions.ShowBorder = False
      Index = 5
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 160
    Top = 112
    object lcl1: TdxLayoutCxLookAndFeel
    end
  end
  object ds_SRVDOG: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT sd.CODE, '
      '       sd.KONTRAGENT, k.name kName,'
      '       sd.NOMER, '
      '       sd.D1, '
      '       sd.D2, '
      '       sd."ACTIVE"'
      'FROM SRVDOG sd'
      'left outer join kontragent k on k.code = sd.kontragent'
      'where sd."ACTIVE"=1')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 184
    Top = 112
  end
  object src_SRVDOG: TDataSource
    DataSet = ds_SRVDOG
    Left = 211
    Top = 112
  end
end
