object ShHouseGetForm: TShHouseGetForm
  Left = 0
  Top = 0
  Caption = #1057#1087#1080#1089#1086#1082' '#1086#1089#1077#1085#1085#1077'-'#1074#1077#1089#1077#1085#1085#1080#1093' '#1086#1089#1084#1086#1090#1088#1086#1074
  ClientHeight = 397
  ClientWidth = 640
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Ribbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 640
    Height = 24
    BarManager = MainForm.bm1
    ColorSchemeName = 'Blue'
    ShowTabGroups = False
    ShowTabHeaders = False
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object Ribbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'Ribbon1Tab1'
      Groups = <>
      Index = 0
    end
  end
  object lcntr1: TdxLayoutControl
    Left = 0
    Top = 24
    Width = 640
    Height = 373
    Align = alClient
    TabOrder = 1
    LayoutLookAndFeel = LCxSkin1
    object grd2: TcxGrid
      Left = 10
      Top = 10
      Width = 712
      Height = 205
      Align = alClient
      TabOrder = 0
      object v2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = v2CellDblClick
        DataController.DataSource = src_osm
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
          Width = 58
        end
        object clv2ALOCK: TcxGridDBColumn
          DataBinding.FieldName = 'ALOCK'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = iml1
          Properties.ImmediatePost = True
          Properties.Items = <
            item
              ImageIndex = 0
              Value = 1
            end
            item
              ImageIndex = 1
            end
            item
              Value = 0
            end>
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
          Width = 22
          IsCaptionAssigned = True
        end
        object clv2KONTNAME: TcxGridDBColumn
          Caption = #1055#1086#1076#1088#1103#1076#1095#1080#1082
          DataBinding.FieldName = 'KONTNAME'
          Width = 117
        end
        object clv1SRVDOG: TcxGridDBColumn
          Caption = #1044#1086#1075#1086#1074#1086#1088
          DataBinding.FieldName = 'SRVDOG'
          Visible = False
          VisibleForCustomization = False
          Width = 90
        end
        object clv2NOMER: TcxGridDBColumn
          Caption = #1053#1086#1084#1077#1088
          DataBinding.FieldName = 'NOMER'
          Width = 65
        end
        object clv1SHOWDATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103
          DataBinding.FieldName = 'SHOWDATE'
          Width = 91
        end
        object clv1STYPE: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1086#1089#1084#1086#1090#1088#1072
          DataBinding.FieldName = 'STYPE'
          Width = 97
        end
        object clv1SYEAR: TcxGridDBColumn
          Caption = #1043#1086#1076
          DataBinding.FieldName = 'SYEAR'
          Width = 83
        end
        object clv1STATE: TcxGridDBColumn
          Caption = #1057#1090#1072#1090#1091#1089
          DataBinding.FieldName = 'STATE'
          Width = 189
        end
        object clv2Kontr: TcxGridDBColumn
          DataBinding.FieldName = 'Kontr'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2GRAPHLIST: TcxGridDBColumn
          DataBinding.FieldName = 'GRAPHLIST'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2SHOWPRIKAZPO: TcxGridDBColumn
          DataBinding.FieldName = 'SHOWPRIKAZPO'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2ATYPE: TcxGridDBColumn
          DataBinding.FieldName = 'ATYPE'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object Itm2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      Parent = grp1
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object LSkin1: TdxLayoutLookAndFeelList
    Left = 88
    Top = 112
    object LCxSkin1: TdxLayoutCxLookAndFeel
      LookAndFeel.NativeStyle = False
    end
  end
  object ds_osm: TpFIBDataSet
    SelectSQL.Strings = (
      'select s.CODE, s.SRVDOG, sd.nomer, s.SHOWDATE,'
      '  case'
      '    when s.STYPE=0 then '#39#1074#1077#1089#1085#1072#39
      '    when s.STYPE=1 then '#39#1086#1089#1077#1085#1100#39
      '    when s.STYPE=2 then '#39#1074#1085#1077#1087#1083#1072#1085#1086#1074#1099#1081#39
      '    else '#39#1086#1096#1080#1073#1082#1072' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1080#1103'!!'#39
      '  end STYPE,'
      '    s.SYEAR,'
      '  case'
      '    when s.STATE = 0 then '#39#1089#1086#1079#1076#1072#1085#39
      '    when s.STATE = 1 then '#39#1091#1090#1074#1077#1088#1078#1076#1077#1085' '#1090#1077#1093#1085#1080#1095#1077#1089#1082#1080#1084' '#1076#1080#1088#1077#1082#1090#1086#1088#1086#1084#39
      '    when s.STATE = 2 then '#39#1080#1079#1076#1072#1085' '#1087#1088#1080#1082#1072#1079' '#1055#1054#39
      '    when s.STATE = 3 then '#39#1087#1088#1080#1082#1072#1079' '#1055#1054' '#1091#1090#1074#1077#1088#1078#1076#1077#1085#39
      '    when s.STATE = 4 then '#39#1089#1086#1089#1090#1072#1074#1083#1077#1085' '#1075#1088#1072#1092#1080#1082' '#1086#1089#1084#1086#1090#1088#1072#39
      '    else '#39#1086#1096#1080#1073#1082#1072' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1080#1103'!!'#39' '
      
        '  end STATE,k.code Kontr, k.name KontName,s.graphlist,s.showprik' +
        'azpo,'
      '  s.ALOCK, sd.ATYPE'
      'from SHOWHOUSE s'
      'left outer join srvdog sd on s.srvdog=sd.code'
      'left outer join kontragent k on sd.kontragent=k.code')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 125
    Top = 108
  end
  object src_osm: TDataSource
    DataSet = ds_osm
    Left = 161
    Top = 107
  end
  object mt_type: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 224
    Top = 159
  end
  object mt_state: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 252
    Top = 159
  end
  object src_type: TDataSource
    DataSet = mt_type
    Left = 224
    Top = 187
  end
  object src_state: TDataSource
    DataSet = mt_state
    Left = 252
    Top = 187
  end
  object iml1: TcxImageList
    FormatVersion = 1
    DesignInfo = 12058736
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000101
          01040101010B0101011501010125010101350101014001010145010101430101
          013C0101013101010123010101150101010C0101010701010102000000000000
          000101010106343434707F7F7FDD636363E4696969E9737373EB757575E96A6A
          6AE5626262E07E7E7EDA3A3A3A77010101080101010301010101000000000000
          0000000000005050507ED5D5D5FFB7B7B7FFC0C0C0FFCECECEFFD0D0D0FFC2C2
          C2FFB6B6B6FFD4D4D4FF5A5A5A88000000000000000000000000000000000000
          0000000000005050507ED7D7D7FFB7B7B7FFC0C0C0FFCFCFCFFFD1D1D1FFC2C2
          C2FFB6B6B6FFD5D5D5FF5B5B5B88000000000000000000000000000000000000
          0000000000004F4F4F7ED8D8D8FFB2B2B2FFBEBEBEFFD0D0D0FFD2D2D2FFC0C0
          C0FFB1B1B1FFD5D5D5FF59595988000000000000000000000000000000000000
          0000000000004D4D4D7EDADADAFFB0B0B0FFBABABAFFCCCCCCFFCECECEFFBCBC
          BCFFACACACFFD7D7D7FF58585888000000000000000000000000000000000000
          0000000000005050507EE3E3E3FFB8B8B8FFBEBEBEFFCECECEFFD0D0D0FFC0C0
          C0FFB5B5B5FFE1E1E1FF5B5B5B88000000000000000000000000000000000000
          0000000000005050507EE5E5E5FFBCBCBCFFC0C0C0FFCECECEFFD0D0D0FFC2C2
          C2FFBABABAFFE3E3E3FF5B5B5B88000000000000000000000000000000000000
          0000000000002C2C2C52BDBEBEFE787878B77C7C7CA6868686A6878787A67E7E
          7EA6757575ADC0C0C0FF34343463000000000000000000000000000000000000
          00000000000000000000ACADADFB0C0D0D310000000000000000000000000000
          000006060615AFB0B0FF06060620000000000000000000000000000000000000
          00000000000000000000ADAEAFFA0D0D0D320000000000000000000000000000
          000006060616ADAEAEFF0606061F000000000000000000000000000000000000
          00000000000000000000A2A3A3E0161617520000000000000000000000000000
          00000D0D0D31979898F902020208000000000000000000000000000000000000
          000000000000000000006D6D6E916B6C6CD10303030F00000000000000000101
          0105555657B26D6E6FAC00000000000000000000000000000000000000000000
          000000000000000000000B0B0B12B4B4B5D89E9E9FE23B3B3C88333434809292
          92D3BBBBBCE31212121E00000000000000000000000000000000000000000000
          000000000000000000000000000009090910696969858E8F8FCC909090CF7272
          728F0E0E0E170000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
end
