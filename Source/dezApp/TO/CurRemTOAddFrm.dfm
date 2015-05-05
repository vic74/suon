object CurRemTOAddForm: TCurRemTOAddForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'CurRemTOAddForm'
  ClientHeight = 254
  ClientWidth = 348
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 348
    Height = 254
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = laf1
    object cbb_mlist: TcxLookupComboBox
      Left = 64
      Top = 7
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_mat
      Properties.OnValidate = cbb_mlistPropertiesValidate
      Style.HotTrack = False
      TabOrder = 0
      Width = 218
    end
    object cbb_kontr: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.DropDownSizeable = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          MinWidth = 0
          Width = 0
          FieldName = 'CODE'
        end
        item
          Width = 100
          FieldName = 'NAME'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_kontr
      Style.HotTrack = False
      TabOrder = 10
      Visible = False
      Width = 145
    end
    object btn_Ok: TcxButton
      Left = 7
      Top = 211
      Width = 118
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000041204230D3E0F7D17691BDB196E1DF3196B1DF31761
        1BDB0D370F7D040F042300000000000000000000000000000000000000000000
        000000000000092D0B5318761CE642A052FF87CA9AFF9BD3ABFF9BD2ABFF83C7
        96FF3D974CFF17631BE609240A53000000000000000000000000000000000000
        0000092F0E531A841FF46DBE83FFA8DBB5FF87CC98FF66BC7DFF64BA7CFF86CB
        98FFA5D9B4FF66B77DFF19671CF409250A530000000000000000000000000415
        072219872AE572C287FFA8DBB2FF60BC77FF5CBA73FF59B870FF59B56FFF58B5
        6FFF5BB774FFA5D9B3FF69B87FFF17651BE5040F042200000000000000000F51
        1E7E4CB064FFAADDB4FF64C179FF5FBE71FF75C585FFD4ECD9FF8ACD99FF56B6
        6CFF58B56EFF5CB774FFA6DAB4FF419B4EFF0D3B0F7E00000000000000001B91
        39DB91D29FFF8DD49AFF64C374FF79C987FFF2FAF4FFFFFFFFFFFDFEFDFF86CB
        96FF57B76DFF5BB972FF85CC97FF87C79AFF17671BDB00000000000000001EA7
        40F6A6DCAFFF70CA7FFF73CA80FFF0F9F1FFFFFFFFFFEBF7EDFFFFFFFFFFFBFD
        FCFF88CD96FF5BB971FF67BE7DFFA0D7AFFF1A761DF6000000000000000025AE
        48F6A7DDB1FF72CC80FF66C773FFB0E1B7FFD2EED6FF63C170FFB8E3BFFFFFFF
        FFFFFBFDFCFF8CD099FF69C17EFFA1D7AEFF1A7B1DF6000000000000000027A1
        48DB95D7A1FF91D79BFF69C976FF64C66FFF61C46EFF61C36FFF61C26FFFB9E4
        C0FFFFFFFFFFE3F4E6FF8BD199FF8BCE9DFF18751BDB00000000000000001A5E
        2C7E57BF70FFAFE1B7FF6DCC7AFF68C872FF65C770FF63C56EFF62C46EFF63C4
        71FFB6E3BEFF6FC77EFFACDFB5FF48A95EFF0E47137E0000000000000000081A
        0C222FAB4CE57FCE90FFAEE1B5FF6DCC7AFF6ACA76FF68C872FF68C874FF68C8
        75FF6BC979FFACDFB4FF76C489FF198728E50414062200000000000000000000
        000013401F5332B851F47FCE90FFAFE1B7FF92D89DFF77CE83FF77CE83FF92D8
        9DFFAEE1B5FF78C88BFF1C9630F4093312530000000000000000000000000000
        00000000000014411F5331AF50E659C274FF96D7A3FFA5DCAEFFA5DCAEFF95D6
        A1FF50B96AFF1C9A3CE60A371553000000000000000000000000000000000000
        00000000000000000000091C0D231D612E7D31A74EDB2FB450F32BB24EF3259F
        46DB155A287D05190B2300000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 8
      OnClick = btn_OkClick
    end
    object btn_Cancel: TcxButton
      Left = 223
      Top = 211
      Width = 118
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      ModalResult = 2
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000DFEC0000F1FF0000F1FF0000F1FF0000EFFF0000
        EFFF0000EDFF0000DCED00000000000000000000000000000000000000000000
        0000000000000000E3EC1A20F5FF3C4CF9FF3A49F8FF3847F8FF3545F8FF3443
        F7FF3242F7FF141BF1FF0000D8E8000000000000000000000000000000000000
        00000000E5EC1D23F9FF4453FAFF2429F9FF1212F7FF0F0FF6FF0C0CF5FF0909
        F5FF161BF5FF3343F7FF141BF1FF0000D8E80000000000000000000000000000
        E6EC1F25FAFF4A58FBFF4247FBFFC9C9FDFF3B3BF9FF1313F7FF1010F6FF3333
        F7FFC5C5FDFF3035F7FF3444F7FF141BF2FF0000D8E800000000000000000000
        FBFF4F5DFDFF3237FBFFCBCBFEFFF2F2FFFFEBEBFEFF3B3BF9FF3939F8FFEAEA
        FEFFF1F1FEFFC5C5FDFF181DF6FF3343F7FF0000EFFF00000000000000000000
        FDFF525FFDFF2828FCFF4747FCFFECECFFFFF2F2FFFFECECFFFFECECFEFFF1F1
        FFFFEAEAFEFF3434F7FF0B0BF5FF3545F8FF0000EFFF00000000000000000000
        FDFF5562FEFF2C2CFDFF2929FCFF4848FCFFEDEDFFFFF2F2FFFFF2F2FFFFECEC
        FEFF3A3AF9FF1212F7FF0F0FF6FF3848F8FF0000F1FF00000000000000000000
        FDFF5764FEFF3030FDFF2D2DFDFF4B4BFCFFEDEDFFFFF2F2FFFFF2F2FFFFECEC
        FFFF3D3DF9FF1616F8FF1313F7FF3C4BF8FF0000F1FF00000000000000000000
        FFFF5A67FEFF3333FEFF5050FDFFEDEDFFFFF3F3FFFFEDEDFFFFEDEDFFFFF2F2
        FFFFECECFEFF3E3EFAFF1717F8FF3F4EF9FF0000F1FF00000000000000000000
        FFFF5B68FFFF4347FEFFCFCFFFFFF3F3FFFFEDEDFFFF4C4CFCFF4A4AFCFFECEC
        FFFFF2F2FFFFCACAFEFF2A2FFAFF4251FAFF0000F3FF00000000000000000000
        EBEB262BFFFF5D6AFFFF585BFFFFCFCFFFFF5252FEFF2F2FFDFF2C2CFDFF4B4B
        FCFFCCCCFEFF484CFBFF4957FBFF1D23F9FF0000E2EB00000000000000000000
        00000000EBEB262BFFFF5D6AFFFF4347FFFF3434FEFF3232FEFF3030FDFF2D2D
        FDFF383CFCFF4F5DFCFF1F25FAFF0000E4EB0000000000000000000000000000
        0000000000000000EBEB262BFFFF5C69FFFF5B68FFFF5A67FEFF5865FEFF5663
        FEFF5461FEFF2227FCFF0000EEF2000000000000000000000000000000000000
        000000000000000000000000ECEC0000FFFF0000FFFF0000FFFF0000FDFF0000
        FDFF0000FDFF0000EAEC00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 9
    end
    object CurrencyEdit_proc1: TcxCurrencyEdit
      Left = 10000
      Top = 10000
      Properties.AssignedValues.DisplayFormat = True
      Style.HotTrack = False
      TabOrder = 14
      Visible = False
      Width = 121
    end
    object CurrencyEdit_sum1: TcxCurrencyEdit
      Left = 64
      Top = 51
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.ReadOnly = False
      Properties.OnEditValueChanged = CurrencyEdit_sum1PropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object CurrencyEdit_proc2: TcxCurrencyEdit
      Left = 10000
      Top = 10000
      Properties.AssignedValues.DisplayFormat = True
      Style.HotTrack = False
      TabOrder = 13
      Visible = False
      Width = 121
    end
    object CurrencyEdit_sum2: TcxCurrencyEdit
      Left = 64
      Top = 73
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.ReadOnly = False
      Properties.OnEditValueChanged = CurrencyEdit_sum2PropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object CurrencyEdit_proc3: TcxCurrencyEdit
      Left = 10000
      Top = 10000
      Properties.AssignedValues.DisplayFormat = True
      Style.HotTrack = False
      TabOrder = 12
      Visible = False
      Width = 121
    end
    object CurrencyEdit_sum3: TcxCurrencyEdit
      Left = 64
      Top = 95
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.ReadOnly = False
      Properties.OnEditValueChanged = CurrencyEdit_sum3PropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object CurrencyEdit_proc4: TcxCurrencyEdit
      Left = 10000
      Top = 10000
      Properties.AssignedValues.DisplayFormat = True
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 11
      Visible = False
      Width = 121
    end
    object CurrencyEdit_sum4: TcxCurrencyEdit
      Left = 64
      Top = 117
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.ReadOnly = False
      Properties.OnEditValueChanged = CurrencyEdit_sum4PropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object txt1: TcxTextEdit
      Left = 7
      Top = 179
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object CurrencyEdit_sum: TcxSpinEdit
      Left = 64
      Top = 29
      Properties.ImmediatePost = True
      Properties.ValueType = vtFloat
      Properties.OnEditValueChanged = CurrencyEdit_sumPropertiesEditValueChanged
      Properties.OnValidate = CurrencyEdit_sumPropertiesValidate
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object txt_ost: TcxTextEdit
      Left = 64
      Top = 139
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object lGrpgrp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object litm_btnAdd: TdxLayoutItem
      AlignHorz = ahClient
      CaptionOptions.Text = #1042#1080#1076' '#1088#1072#1073#1086#1090
      Parent = lGrpgrp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 270
      Control = cbb_mlist
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_kontr: TdxLayoutItem
      CaptionOptions.Text = #1055#1086#1076#1088#1103#1076#1085#1072#1103' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 305
      Control = cbb_kontr
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object litm_sum1: TdxLayoutItem
      CaptionOptions.Text = '1 '#1082#1074#1072#1088#1090#1072#1083
      Parent = lGrpgrp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 321
      Control = CurrencyEdit_sum1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litm_sum2: TdxLayoutItem
      CaptionOptions.Text = '2 '#1082#1074#1072#1088#1090#1072#1083
      Parent = lGrpgrp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 282
      Control = CurrencyEdit_sum2
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object litm_sum3: TdxLayoutItem
      CaptionOptions.Text = '3 '#1082#1074#1072#1088#1090#1072#1083
      Parent = lGrpgrp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 282
      Control = CurrencyEdit_sum3
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object litm_sum4: TdxLayoutItem
      CaptionOptions.Text = '4 '#1082#1074#1072#1088#1090#1072#1083
      Parent = lGrpgrp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 282
      Control = CurrencyEdit_sum4
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object litm_txt1: TdxLayoutItem
      CaptionOptions.Text = #1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
      CaptionOptions.Layout = clTop
      Parent = lGrpgrp1
      Control = txt1
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object lGrpgrplc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Offsets.Top = 10
      Parent = lGrpgrp1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 8
    end
    object litm_Ok: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1044#1086#1073#1072#1074#1080#1090#1100
      CaptionOptions.Visible = False
      Parent = lGrpgrplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 118
      Control = btn_Ok
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_Cancel: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = #1054#1090#1084#1077#1085#1080#1090#1100
      CaptionOptions.Visible = False
      Parent = lGrpgrplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 118
      Control = btn_Cancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litm_proc1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = '1 '#1082#1074#1072#1088#1090#1072#1083
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 165
      Control = CurrencyEdit_proc1
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object litm_proc2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = '2 '#1082#1074#1072#1088#1090#1072#1083
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 165
      Control = CurrencyEdit_proc2
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object litm_propc3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = '3 '#1082#1074#1072#1088#1090#1072#1083
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 165
      Control = CurrencyEdit_proc3
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object litm_proc4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = '4 '#1082#1074#1072#1088#1090#1072#1083
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 165
      Control = CurrencyEdit_proc4
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object litm_lc1Item1: TdxLayoutItem
      CaptionOptions.Text = #1057#1091#1084#1084#1072
      Parent = lGrpgrp1
      Control = CurrencyEdit_sum
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litm_lc1Item11: TdxLayoutItem
      CaptionOptions.Text = #1054#1089#1090#1072#1090#1086#1082
      Parent = lGrpgrp1
      Control = txt_ost
      ControlOptions.ShowBorder = False
      Index = 6
    end
  end
  object lkf1: TdxLayoutLookAndFeelList
    Left = 72
    Top = 56
    object laf1: TdxLayoutCxLookAndFeel
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 5
      Offsets.RootItemsAreaOffsetVert = 5
    end
  end
  object ds_mat: TpFIBDataSet
    SelectSQL.Strings = (
      'select ML.CODE, ML.MGROUP,MG.NAME GRNAME, ML.NAME, ML.ED,'
      'ML.RTYPE'
      'from MLIST ML'
      'left outer join MGROUP MG on ML.MGROUP = MG.CODE'
      'WHERE ML.CODE<>1'
      'order by ML.MGROUP')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 176
    Top = 104
  end
  object src_mat: TDataSource
    DataSet = ds_mat
    Left = 149
    Top = 104
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_mlist
        Properties.Strings = (
          'Properties.DropDownWidth')
      end
      item
        Component = CurrencyEdit_proc1
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = CurrencyEdit_proc2
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = CurrencyEdit_proc3
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = CurrencyEdit_proc4
        Properties.Strings = (
          'EditValue')
      end>
    StorageName = 'prop1'
    Left = 102
    Top = 56
  end
  object ds_kontr: TpFIBDataSet
    SelectSQL.Strings = (
      'select Distinct(SD.KONTRAGENT) CODE, k.Name'
      'from SRVDOG SD'
      'left outer join kontragent k on k.code = sd.kontragent'
      'where SD."ACTIVE" =1'
      'order by name')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 103
    Top = 86
  end
  object src_kontr: TDataSource
    DataSet = ds_kontr
    Left = 72
    Top = 85
  end
end
