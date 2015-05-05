object HouseWorkForm: THouseWorkForm
  Left = 0
  Top = 0
  Caption = #1044#1072#1090#1099' '#1082#1072#1087#1088#1077#1084#1086#1085#1090#1072
  ClientHeight = 640
  ClientWidth = 944
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
    Width = 944
    Height = 611
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = laf1
    ExplicitTop = 26
    ExplicitHeight = 614
    object grd1: TcxGrid
      Left = 10
      Top = 10
      Width = 250
      Height = 200
      TabOrder = 0
      object v1: TcxGridDBTableView
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
        DataController.DataSource = src_houseKwork
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
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
        object clv1STREETNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STREETNAME'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 145
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 85
        end
        object clv1MLIST: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'MLIST'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownSizeable = True
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
          Properties.ListSource = src_mlist
          HeaderAlignmentVert = vaCenter
          Width = 198
        end
        object clv1Y: TcxGridDBColumn
          Caption = #1043#1086#1076' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#1082#1072#1087#1088#1077#1084#1086#1085#1090#1072
          DataBinding.FieldName = 'Y'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 72
        end
        object clv1ENT: TcxGridDBColumn
          Caption = #1057#1087#1080#1089#1086#1082' '#1087#1086#1076#1098#1077#1079#1076#1086#1074', '#1074' '#1082#1086#1090#1086#1088#1099#1093' '#1087#1088#1086#1074#1086#1076#1080#1083#1089#1103' '#1082#1072#1087#1088#1077#1084#1086#1085#1090
          DataBinding.FieldName = 'ENT'
          PropertiesClassName = 'TcxCheckComboBoxProperties'
          Properties.Delimiter = ','
          Properties.ShowEmptyText = False
          Properties.DropDownSizeable = True
          Properties.EditValueFormat = cvfIndices
          Properties.ImmediatePost = True
          Properties.Items = <
            item
              Description = #1059#1082#1072#1078#1080#1090#1077' '#1085#1086#1084#1077#1088#1072' '#1087#1086#1076#1098#1077#1079#1076#1086#1074
              Enabled = False
            end
            item
              Description = '1'
              ShortDescription = '1'
            end
            item
              Description = '2'
              ShortDescription = '2'
            end
            item
              Description = '3'
              ShortDescription = '3'
            end
            item
              Description = '4'
              ShortDescription = '4'
            end
            item
              Description = '5'
              ShortDescription = '5'
            end
            item
              Description = '6'
              ShortDescription = '6'
            end
            item
              Description = '7'
              ShortDescription = '7'
            end
            item
              Description = '8'
              ShortDescription = '8'
            end
            item
              Description = '9'
              ShortDescription = '9'
            end
            item
              Description = '10'
              ShortDescription = '10'
            end
            item
              Description = '11'
              ShortDescription = '11'
            end
            item
              Description = '12'
              ShortDescription = '12'
            end
            item
              Description = '13'
              ShortDescription = '13'
            end
            item
              Description = '14'
              ShortDescription = '14'
            end
            item
              Description = '15'
              ShortDescription = '15'
            end>
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 225
        end
        object clv1STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1_SRVDOGTYPE: TcxGridDBColumn
          Caption = #1058#1080#1087
          DataBinding.FieldName = 'SRVDOGTYPE'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ImmediateDropDownWhenActivated = True
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
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 161
        end
        object clv1SDName: TcxGridDBColumn
          Caption = #1058#1080#1087
          DataBinding.FieldName = 'SDName'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 176
        end
      end
      object l1: TcxGridLevel
        GridView = v1
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
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grp1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object lkf1: TdxLayoutLookAndFeelList
    Left = 608
    Top = 8
    object laf1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 576
    Top = 8
  end
  object ds_street: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       NAME, '
      '       STR_TYPE'
      'FROM STREET'
      'order by name')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 48
    Top = 112
  end
  object ds_house: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       NOMER'
      'FROM HOUSE'
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 184
    Top = 112
    dcForceOpen = True
  end
  object ds_HouseKWork: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE HOUSEKWORK'
      'SET '
      '    HOUSE = :HOUSE,'
      '    MLIST = :MLIST,'
      '    Y = :Y,'
      '    ENT = :ENT,'
      '    STREET = :STREET'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    HOUSEKWORK'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO HOUSEKWORK('
      '    CODE,'
      '    HOUSE,'
      '    MLIST,'
      '    Y,'
      '    ENT,'
      '    STREET'
      ')'
      'VALUES('
      '    :CODE,'
      '    :HOUSE,'
      '    :MLIST,'
      '    :Y,'
      '    :ENT,'
      '    :STREET'
      ')')
    RefreshSQL.Strings = (
      'SELECT HW.CODE, '
      '       HW.HOUSE,h.nomer,'
      '       HW.MLIST, '
      '       HW.Y, '
      '       HW.ENT, '
      '       HW.STREET, s.name StreetName'
      'FROM HOUSEKWORK HW'
      'left outer join house h on h.code=hw.house'
      'left outer join street s on s.code=hw.street'
      ''
      ' WHERE '
      '        HW.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT HW.CODE, '
      '       HW.HOUSE,h.nomer,'
      '       HW.MLIST, '
      '       HW.Y, '
      '       HW.ENT, '
      '       HW.STREET, s.name StreetName,'
      '       HW.srvdogtype, sd.name SDName'
      'FROM HOUSEKWORK HW'
      'left outer join house h on h.code=hw.house'
      'left outer join street s on s.code=hw.street'
      'left outer join srvdogtype sd on sd.code = hw.srvdogtype')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 64
    Top = 200
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
      'where MGROUP=2')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 56
    Top = 288
  end
  object src_street: TDataSource
    DataSet = ds_street
    Left = 77
    Top = 112
  end
  object src_house: TDataSource
    DataSet = ds_house
    Left = 213
    Top = 112
  end
  object src_houseKwork: TDataSource
    DataSet = ds_HouseKWork
    Left = 96
    Top = 200
  end
  object src_mlist: TDataSource
    DataSet = ds_mlist
    Left = 88
    Top = 288
  end
  object brm1: TdxBarManager
    AllowReset = False
    AutoDockColor = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    DockColor = clBtnFace
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 184
    Top = 200
    DockControlHeights = (
      0
      0
      29
      0)
    object brm1Bar1: TdxBar
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
      FloatLeft = 708
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_add'
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
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_add: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000000000000A000000250000003300000033000000330000
        0033000000250000000A00000000000000000000000000000000000000000000
        00000000000000000022001D105C006738C9008C4BFF008B4AFF008B4AFF008C
        4BFF006738C9001D105C0000001E000000000000000000000000000000000000
        00000000001E005E33BB009050FF01A169FF00AA76FF00AB77FF00AB77FF00AA
        76FF01A169FF009050FF00532DAA0000001E0000000000000000000000000000
        000A00532DAA009152FF02AC77FF00C38CFF00D699FF18DEA8FF18DEA8FF00D6
        99FF00C38CFF01AB76FF009253FF00532DAA0000000A0000000000000000001C
        1051009051FF0FB483FF02D299FF00D69BFF00D193FFFFFFFFFFFFFFFFFF00D1
        93FF00D69BFF00D198FF01AB76FF009050FF001D105100000000000000000067
        36C916AB78FF11C997FF00D49AFF00D297FF00CD8EFFFFFFFFFFFFFFFFFF00CD
        8EFF00D297FF00D59BFF00C18CFF01A169FF006838C90000000000000000008A
        48FF38C49CFF00D198FF00CD92FF00CB8EFF00C787FFFFFFFFFFFFFFFFFF00C7
        87FF00CB8EFF00CE93FF00D09AFF00AB76FF008C4BFF00000000000000000089
        46FF51D2AFFF12D4A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF00CF97FF00AD78FF008B4AFF00000000000000000088
        45FF66DDBEFF10D0A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF00CD97FF00AD78FF008B4AFF00000000000000000088
        46FF76E0C5FF00CA98FF00C590FF00C48EFF00C187FFFFFFFFFFFFFFFFFF00C1
        87FF00C48EFF00C793FF00CB99FF00AB76FF008C4BFF00000000000000000065
        34BE59C9A4FF49DEBCFF00C794FF00C794FF00C38EFFFFFFFFFFFFFFFFFF00C3
        8EFF00C896FF00CB9AFF06C190FF00A168FF006838BF0000000000000000001C
        0F330A9458FFADF8E9FF18D0A7FF00C494FF00C290FFFFFFFFFFFFFFFFFF00C3
        91FF00C799FF05C89BFF18B787FF009050FF001C0F3300000000000000000000
        0000005C30AA199C63FFBCFFF7FF5DE4C9FF00C397FF00BF90FF00C091FF00C4
        98FF22CAA2FF31C297FF039355FF00522C950000000000000000000000000000
        00000000000000512A950E9659FF74D5B6FF9FF3E0FF92EFDAFF79E5CAFF5DD6
        B5FF2EB586FF039152FF005D33AA000000000000000000000000000000000000
        00000000000000000000001C0F33006433BB008744FF008743FF008744FF0089
        46FF006636BB001C0F3300000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      PaintStyle = psCaptionGlyph
      OnClick = btn_addClick
    end
    object btn_edit: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000330000
        0033000000330000003300000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000596C7CFF4A68
        84FF4F94D9FF538CD1FF00000033000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000005F829DFF80A4
        B5FF90D5FDFF5FBBFFFF3A6B9AFF000000330000000000000000000000000000
        00000000000000000000000000000000000000000000000000004CAAEAFF9FE6
        FFFF99DBF9FF259FFFFF179CFFFF3E6E9AFF0000003300000000000000000000
        00000000000000000000000000000000000000000000000000004FB1EBFF88E2
        FFFF43BCFFFF29A6FFFF1E9BFFFF1A9DFFFF3E6E9AFF00000033000000000000
        0000000000000000000000000000000000000000000000000000000000003478
        C3FF4ECDFFFF3DB9FFFF2DA8FFFF1F9CFFFF1A9DFFFF3E6E9AFF000000330000
        0000000000000000000000000000000000000000000000000000000000000000
        0000397DC5FF51CFFFFF3EB9FFFF2DA8FFFF1F9CFFFF1A9DFFFF3E6E9AFF0000
        0033000000000000000000000000000000000000000000000000000000000000
        000000000000397DC6FF51CFFFFF3EB9FFFF2DA8FFFF1F9CFFFF1A9DFFFF3E6E
        9AFF000000330000000000000000000000000000000000000000000000000000
        00000000000000000000397DC6FF51CFFFFF3EB9FFFF2DA8FFFF1F9CFFFF1A9D
        FFFF3D6E9BFF0000003300000000000000000000000000000000000000000000
        0000000000000000000000000000397DC6FF51CFFFFF3EB9FFFF2DA8FFFF1E9C
        FFFF169CFFFF326CA2FF00000033000000000000000000000000000000000000
        000000000000000000000000000000000000397DC6FF51CFFFFF3DB9FFFF29A8
        FFFF129BFFFF7FABD1FF807A72FF000000330000000000000000000000000000
        00000000000000000000000000000000000000000000397DC6FF4ECEFFFF32B9
        FFFF96BFDEFF958A81FFB9B6AFFF787D6EFF0000003300000000000000000000
        0000000000000000000000000000000000000000000000000000327DC9FFB9E3
        F4FF90857DFFD3D0CBFF8A8E84FFB672B2FF986ACAFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000009386
        7AFFF2F0EBFF868980FFC990C9FFBB7FB7FFAE7DCEFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000087877FFFE8B9E8FFD5A6D2FFBE8BD3FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000C38AD9FFBD88D3FF000000000000000000000000}
      PaintStyle = psCaptionGlyph
      OnClick = btn_editClick
    end
    object btn_delete: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000000000001E000000310000003300000033000000330000
        00310000001E0000000000000000000000000000000000000000000000000000
        00000000000E000000331B2471AA2B3ABAF92B3BBEFF2B3ABEFF2B3BBEFF2B3A
        BAF91B2471AA000000330000000E000000000000000000000000000000000000
        000E0D11356B2B3BBEFF4A5BE2FF6175FCFF697DFFFF697CFFFF697DFFFF6175
        FCFF4A5BE2FF2B3BBEFF0D11356B0000000E0000000000000000000000000D11
        356B2F3FC2FF596DF6FF6276FFFF6074FEFF5F73FEFF5F73FDFF5F73FEFF6074
        FEFF6276FFFF596DF6FF2F3FC2FF0D11356B00000000000000000000001E2C3C
        BFFF5669F4FF5D71FCFF5B6FFAFF5A6EF9FF5A6EF9FF5A6EF9FF5A6EF9FF5A6E
        F9FF5B6FFAFF5D71FCFF5669F4FF2C3CBFFF0000001E000000001B2471A94256
        DEFF576DFBFF5369F8FF5268F7FF5267F7FF5267F7FF5267F7FF5267F7FF5267
        F7FF5268F7FF5369F8FF576DFBFF4256DEFF1B2471A9000000002C3CBAF94E64
        F4FF4C63F7FF425AF4FF3E56F4FF3D55F4FF3D55F4FF3D55F4FF3D55F4FF3D55
        F4FF3E56F4FF425AF4FF4C63F7FF4E64F4FF2C3CBAF9000000002C3CBFFF5369
        F8FF3E56F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF3E56F3FF5369F8FF2C3CBFFF000000002B3BBFFF6378
        F7FF334DF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF334DF0FF6378F7FF2B3BBFFF000000002A39BFFF8696
        F8FF2F4BEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF2F4BEEFF8696F8FF2A39BFFF000000002837BAF8A1AC
        F4FF3852EDFF2D48ECFF2B46EBFF2A46EBFF2A46EBFF2A46EBFF2A46EBFF2A46
        EBFF2B46EBFF2D48ECFF3852EDFFA1ACF4FF2837BAF800000000192271956F7C
        DDFF8494F5FF2E4AE9FF334DE9FF354FEAFF3650EAFF3650EAFF3650EAFF354F
        EAFF334DE9FF2E4AE9FF8494F5FF6F7CDDFF1922719500000000000000002737
        BFFF9AA7F0FF7F90F3FF324CE9FF2D49E7FF304CE8FF314CE8FF304CE8FF2D49
        E7FF324CE9FF7F90F3FF9AA7F0FF2737BFFF0000000000000000000000000C11
        35462F3FC3FF97A3EFFF9EACF7FF6075EDFF3E57E9FF2441E5FF3E57E9FF6075
        EDFF9EACF7FF97A3EFFF2F3FC3FF0C1135460000000000000000000000000000
        00000C1035462737BFFF6A77DCFF9EA9F2FFAFBAF8FFAFBBF8FFAFBAF8FF9EA9
        F2FF6A77DCFF2737BFFF0C103546000000000000000000000000000000000000
        00000000000000000000192271952736BAF72737BFFF2737BFFF2737BFFF2736
        BAF7192271950000000000000000000000000000000000000000}
      PaintStyle = psCaptionGlyph
      OnClick = btn_deleteClick
    end
  end
end
