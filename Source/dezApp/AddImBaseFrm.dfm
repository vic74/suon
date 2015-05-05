object AddImBaseForm: TAddImBaseForm
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  ClientHeight = 302
  ClientWidth = 276
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 276
    Height = 302
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object cbb_street: TcxLookupComboBox
      Left = 62
      Top = 10
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
      Properties.ListSource = src_STREET
      Properties.OnEditValueChanged = cbb_streetPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 0
      Width = 203
    end
    object cbb_house: TcxLookupComboBox
      Left = 62
      Top = 37
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
      Properties.ListSource = src_HOUSE
      Style.HotTrack = False
      TabOrder = 1
      Width = 203
    end
    object cbb_ATYPE: TcxComboBox
      Left = 62
      Top = 64
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        #1087#1086#1084#1077#1097#1077#1085#1080#1077
        #1089#1090#1077#1085#1072
        #1082#1088#1099#1096#1072)
      Style.HotTrack = False
      TabOrder = 2
      Text = #1087#1086#1084#1077#1097#1077#1085#1080#1077
      Width = 203
    end
    object ced_Cost: TcxCalcEdit
      Left = 62
      Top = 91
      EditValue = 0.000000000000000000
      Style.HotTrack = False
      TabOrder = 3
      Width = 203
    end
    object ced_SQ: TcxCalcEdit
      Left = 62
      Top = 118
      EditValue = 0.000000000000000000
      Style.HotTrack = False
      TabOrder = 4
      Width = 203
    end
    object cbb_Dtype: TcxComboBox
      Left = 10
      Top = 163
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        #1085#1077#1086#1087#1088#1077#1076#1077#1083#1077#1085#1086
        #1089#1086#1073#1089#1090#1074#1077#1085#1085#1086#1077
        #1072#1088#1077#1085#1076#1072' '#1050#1059#1080#1047#1054
        #1072#1088#1077#1085#1076#1072' '#1044#1045#1047)
      Style.HotTrack = False
      TabOrder = 5
      Text = #1085#1077#1086#1087#1088#1077#1076#1077#1083#1077#1085#1086
      Width = 252
    end
    object mmo_Note: TcxMemo
      Left = 10
      Top = 208
      Style.HotTrack = False
      TabOrder = 6
      Height = 47
      Width = 252
    end
    object btn_Add: TcxButton
      Left = 10
      Top = 261
      Width = 81
      Height = 25
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
      TabOrder = 7
      OnClick = btn_AddClick
    end
    object grLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grlc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object itmlc1Item1: TdxLayoutItem
      CaptionOptions.Text = #1059#1083#1080#1094#1072
      Parent = grlc1Group1
      Control = cbb_street
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item11: TdxLayoutItem
      CaptionOptions.Text = #1044#1086#1084
      Parent = grlc1Group1
      Control = cbb_house
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmlc1Item2: TdxLayoutItem
      CaptionOptions.Text = #1058#1080#1087
      Parent = grlc1Group1
      Control = cbb_ATYPE
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itmlc1Item3: TdxLayoutItem
      CaptionOptions.Text = #1058#1072#1088#1080#1092
      Parent = grlc1Group1
      Control = ced_Cost
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itmlc1Item12: TdxLayoutItem
      CaptionOptions.Text = #1055#1083#1086#1097#1072#1076#1100
      Parent = grlc1Group1
      Control = ced_SQ
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itmlc1Item4: TdxLayoutItem
      CaptionOptions.Text = #1042#1080#1076' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1086#1089#1090#1080
      CaptionOptions.Layout = clTop
      Parent = grlc1Group1
      Control = cbb_Dtype
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object itmlc1Item5: TdxLayoutItem
      CaptionOptions.Text = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      CaptionOptions.Layout = clTop
      Parent = grlc1Group1
      Control = mmo_Note
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object itmlc1Item13: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = grlc1Group1
      Control = btn_Add
      ControlOptions.ShowBorder = False
      Index = 7
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 24
    Top = 216
    object lcl1: TdxLayoutCxLookAndFeel
    end
  end
  object ds_STREET: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       NAME'
      'FROM STREET'
      'order by name')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DataSet_ID = 1
    Description = 'Simple STREET'
    Left = 48
    Top = 248
    poApplyRepositary = True
  end
  object src_STREET: TDataSource
    DataSet = ds_STREET
    Left = 80
    Top = 248
  end
  object ds_HOUSE: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       NOMER,'
      '       Street'
      'FROM HOUSE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 144
    Top = 248
    poApplyRepositary = True
  end
  object src_HOUSE: TDataSource
    DataSet = ds_HOUSE
    Left = 176
    Top = 248
  end
  object ds_IMMKD: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE IMMKD'
      'SET '
      '    HOUSE = :HOUSE,'
      '    ATYPE = :ATYPE,'
      '    NOTE = :NOTE,'
      '    COST = :COST,'
      '    SQ = :SQ'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    IMMKD'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO IMMKD('
      '    CODE,'
      '    HOUSE,'
      '    ATYPE,'
      '    NOTE,'
      '    COST,'
      '    SQ'
      ')'
      'VALUES('
      '    :CODE,'
      '    :HOUSE,'
      '    :ATYPE,'
      '    :NOTE,'
      '    :COST,'
      '    :SQ'
      ')')
    RefreshSQL.Strings = (
      'SELECT im.CODE, '
      '       im.HOUSE, h.nomer, '
      '       h.street, s.name StName,'
      '       im.ATYPE,'
      '       case'
      '         when im.ATYPE=0 then '#39#1087#1086#1084#1077#1097#1077#1085#1080#1077#39
      '         when im.ATYPE=1 then '#39#1089#1090#1077#1085#1072#39
      '         when im.ATYPE=2 then '#39#1082#1088#1099#1096#1072#39
      '         else '#39#1086#1096#1080#1073#1082#1072' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1080#1103'!!'#39
      '       end ATYPENAME,'
      '       im.NOTE, '
      '       im.COST, '
      '       im.SQ'
      'FROM IMMKD im'
      'left outer join house h on h.code=im.house'
      'left outer join street s on s.code=h.street'
      ''
      ' WHERE '
      '        IM.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT im.CODE, '
      '       im.HOUSE, h.nomer, '
      '       h.street, s.name StName,'
      '       im.ATYPE,'
      '       case'
      '         when im.ATYPE=0 then '#39#1087#1086#1084#1077#1097#1077#1085#1080#1077#39
      '         when im.ATYPE=1 then '#39#1089#1090#1077#1085#1072#39
      '         when im.ATYPE=2 then '#39#1082#1088#1099#1096#1072#39
      '         else '#39#1086#1096#1080#1073#1082#1072' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1080#1103'!!'#39
      '       end ATYPENAME,'
      '       im.NOTE, '
      '       im.COST, '
      '       im.SQ,'
      '       im.dtype,'
      '       case'
      '         when im.dtype=0 then '#39#1085#1077#1086#1087#1088#1077#1076#1077#1083#1077#1085#1086#39
      '         when im.dtype=1 then '#39#1089#1086#1073#1089#1090#1074#1077#1085#1085#1086#1077#39
      '         when im.dtype=2 then '#39#1072#1088#1077#1085#1076#1072' '#1050#1059#1080#1047#1054#39
      '         when im.dtype=3 then '#39#1072#1088#1077#1085#1076#1072' '#1044#1045#1047#39
      '         else '#39#1086#1096#1080#1073#1082#1072' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1080#1103'!!'#39
      '       end DTYPENAME'
      'FROM IMMKD im'
      'left outer join house h on h.code=im.house'
      'left outer join street s on s.code=h.street')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 208
    Top = 248
  end
  object src_IMMKD: TDataSource
    DataSet = ds_IMMKD
    Left = 236
    Top = 248
  end
end
