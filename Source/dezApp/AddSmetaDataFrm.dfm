object AddSmetaDataForm: TAddSmetaDataForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1047#1072#1087#1086#1083#1085#1077#1085#1080#1077' '#1076#1072#1085#1085#1099#1084#1080
  ClientHeight = 194
  ClientWidth = 334
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cnt1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 334
    Height = 194
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcaf1
    ExplicitHeight = 180
    object rb1: TcxRadioButton
      Left = 20
      Top = 41
      Width = 113
      Height = 17
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1080#1079' '#1076#1086#1075#1086#1074#1086#1088#1072
      Checked = True
      Color = 16579065
      ParentColor = False
      TabOrder = 0
      TabStop = True
      OnClick = rb1Click
      LookAndFeel.SkinName = 'DevExpressStyle'
      ParentBackground = False
    end
    object rb2: TcxRadioButton
      Left = 20
      Top = 64
      Width = 113
      Height = 17
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074#1089#1077' '#1076#1086#1084#1072
      Color = 16579065
      ParentColor = False
      TabOrder = 1
      OnClick = rb2Click
      ParentBackground = False
    end
    object rb3: TcxRadioButton
      Left = 20
      Top = 87
      Width = 113
      Height = 17
      Caption = #1057#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1079#1072' '#1087#1077#1088#1080#1086#1076
      Color = 16579065
      ParentColor = False
      TabOrder = 2
      OnClick = rb3Click
      ParentBackground = False
    end
    object cbb_M: TcxComboBox
      Left = 56
      Top = 110
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
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
      Style.HotTrack = False
      TabOrder = 3
      Text = #1103#1085#1074#1072#1088#1100
      Width = 121
    end
    object msk_Y: TcxMaskEdit
      Left = 215
      Top = 110
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object btn_Ok: TcxButton
      Left = 10
      Top = 159
      Width = 75
      Height = 25
      Caption = #1055#1088#1080#1085#1103#1090#1100
      OptionsImage.Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555555555555555555905555555555555999055555555555599905555
        5555555999990555555555999999055555555799059990555555790555599055
        5555555555599905555555555555990555555555555559905555555555555579
        0555555555555557905555555555555559905555555555555555}
      TabOrder = 5
      OnClick = btn_OkClick
    end
    object btn_Cancel: TcxButton
      Left = 227
      Top = 159
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      ModalResult = 2
      OptionsImage.Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FDFDFDFBFBFBF9F9F9F6F6F6F4F4F4F3F3F3F3F3F3F4F4F4F6F6F6F8F8F8FBFB
        FBFDFDFDFFFFFFFFFFFFFEFEFEF7F7F7EEEEEEE4E4E4DBDBDBD3D3D3CCCCCCC2
        C2C7C1C1C6CACACAD1D1D1D9D9D9E3E3E3ECECECF6F6F6FEFEFEFFFFFFFFFFFF
        FFFFFFFEFEFEEFEFFA8282E22E2ECC0A0AC40A0AC42E2ECC8282E2EFEFFAFDFD
        FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D3F62727CE0C0CD10D0DE40D
        0DEE0D0DEE0D0DE40C0CD12727CED3D3F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E9E9FA2424D21414ED1616F52929ED1616FB1616FB2828ED1616F51414ED2424
        D2E9E9FAFFFFFFFFFFFFFFFFFFFFFFFF6F6FE11C1CEF1F1FF3A2A2EFE2E2F838
        38EC3838ECE2E2F7A1A1EE1E1EF31C1CEF6F6FE1FFFFFFFFFFFFFFFFFFF8F8FD
        2323DC3B3BF54C4CEDE4E4F9FFFFFFE3E3F8E2E2F8FFFFFFE2E2F83636EA2929
        F52222DCF8F8FDFFFFFFFFFFFFD3D3F53838E16666F56666F56868EEE4E4FAFF
        FFFFFFFFFFE2E2F94545EB3232F23F3FF23A3AE1D3D3F5FFFFFFFFFFFFCCCCF2
        4343DF7B7BF47B7BF47272F0E3E3FAFFFFFFFFFFFFE3E3FA5C5CED6363F27777
        F34545DFCCCCF2FFFFFFFFFFFFECECFA2929D48C8CF27B7BF1E3E3FBFFFFFFE4
        E4FBE4E4FBFFFFFFE4E4FB7B7BEF8C8CF22C2CD4ECECFAFFFFFFFFFFFFFFFFFF
        4747D67474E99393F1B8B8F6E4E4FB8D8DF18E8EF1E4E4FBB9B9F69393F17575
        E94747D6FFFFFFFFFFFFFFFFFFFFFFFFC2C2EF2A2AD89191EE9696F09292F0B2
        B2F4B2B2F49292F09696F09191EE2A2AD8C2C2EFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF9191E33636DD9797F1A2A2F2A2A2F2A2A2F2A2A2F29898F13838DD9191
        E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5B5EB3939D54D4DE16D
        6DED6F6FED5252E23B3BD5B5B5EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFECDCDF1A3A3E5A3A3E5CDCDF1FEFEFEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 6
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grpcnt1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object grpcnt1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = ' '
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object itmcnt1Item1: TdxLayoutItem
      CaptionOptions.Text = 'cxRadioButton1'
      CaptionOptions.Visible = False
      Parent = grpcnt1Group2
      Control = rb1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmcnt1Item11: TdxLayoutItem
      CaptionOptions.Text = 'cxRadioButton1'
      CaptionOptions.Visible = False
      Parent = grpcnt1Group2
      Control = rb2
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmcnt1Item12: TdxLayoutItem
      CaptionOptions.Text = 'cxRadioButton1'
      CaptionOptions.Visible = False
      Parent = grpcnt1Group2
      Control = rb3
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object PerGr: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grpcnt1Group2
      Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object itmcnt1Item13: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1052#1077#1089#1103#1094
      Parent = PerGr
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 134
      Control = cbb_M
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmcnt1Item14: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = #1043#1086#1076
      Parent = PerGr
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 123
      Control = msk_Y
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmcnt1Item15: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grpcnt1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 97
      Control = btn_Ok
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmcnt1Item16: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000031B300004223C0001070C0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000001080F00095A9F000F8DF9000F90FF000F90FF000F90FF000C
        73CC00031E360000000000000000000000000000000000000000000000000000
        000000032039011089ED081D9FFF0522A9FF0A2FB7FF0B32B8FF082CB5FF0825
        A7FF051898FD0008487E00000000000000000000000000000000000000000001
        0A12010F87EB0A20A5FF010D9DFF525ABCFF0A16A0FF0936C5FF1F29A9FF1A26
        B4FF020C8FFF041698FF00042A4B000000000000000000000000000000000008
        4C8704179BFF0A2FB8FF7186D2FFFFFFFFFFCFD4EEFF2731ACFFE3E8F8FFDAE1
        F6FF2048C8FF051C9FFF000D7AD800000000000000000000000000000000000D
        7CDB0824ADFF0430BFFF3452C2FFF3F5FBFFFFFFFFFFFDFDFEFFFFFFFFFFCBD3
        F0FF143FC6FF0525ACFF000F90FF0002182A000000000000000000000203000F
        8EFC082BB7FF0938C7FF042FC0FF414AB6FFFCFDFEFFFFFFFFFFF9FAFDFF1620
        A5FF0834C2FF0724A6FF000F90FF00052F54000000000000000000000000000E
        8BF6092AB4FF0639CDFF1F29A9FFE1E3F6FFFFFFFFFFF9FAFEFFFFFFFFFFC1C4
        EBFF0A16A0FF0521A5FF000F90FF00042A4B000000000000000000000000000B
        6EC30921A5FF0F44D4FF5679DCFFFDFDFEFFD2D9F3FF4E69CFFFEBEEF9FFFAFB
        FEFF4668D4FF0925AAFF000F90FF0002111E0000000000000000000000000006
        3A66021294FF2045C5FF154CD8FF4C72DDFF0F42D0FF0035CBFF254DCBFF5071
        D6FF1740C4FF0D23A4FF000B67B7000000000000000000000000000000000000
        0306000C72C9051698FF2B4BC5FF2657D9FF174ED8FF134BD5FF1D4FD3FF2E56
        CCFF162CAAFF01108EF70002182A000000000000000000000000000000000000
        000000020F1B000C72C9021294FF1428A6FF2844BBFF2D4BC0FF223BB4FF091B
        9CFF010F88EE0004274500000000000000000000000000000000000000000000
        0000000000000000030600063D6C000C73CC000F90FF000F90FF000E82E70008
        519000010E180000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grpcnt1Group1
      SizeOptions.Width = 97
      Control = btn_Cancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object laf1: TdxLayoutLookAndFeelList
    Left = 240
    object lcaf1: TdxLayoutCxLookAndFeel
      LookAndFeel.SkinName = 'DevExpressStyle'
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_M
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = msk_Y
        Properties.Strings = (
          'Text')
      end>
    StorageName = 'prop1'
    Left = 208
  end
  object ds_kontr: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, NAME FROM KONTRAGENT')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 656
    Top = 168
  end
  object src_kontr: TDataSource
    DataSet = ds_kontr
    Left = 685
    Top = 168
  end
end
