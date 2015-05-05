object TRLFinPlanForm: TTRLFinPlanForm
  Left = 0
  Top = 0
  HelpContext = 103
  Caption = #1060#1080#1085#1072#1085#1089#1086#1074#1099#1081' '#1087#1083#1072#1085' '#1090#1077#1082#1091#1097#1080#1093' '#1088#1077#1084#1086#1085#1090#1086#1074' ('#1051#1080#1092#1090')'
  ClientHeight = 627
  ClientWidth = 849
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
    Width = 849
    Height = 627
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = laf1
    object edt_year: TcxMaskEdit
      Left = 34
      Top = 10
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 0
      Width = 89
    end
    object cbb_street: TcxLookupComboBox
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
          Width = 80
          FieldName = 'NAME'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_street
      Style.HotTrack = False
      TabOrder = 5
      Visible = False
      Width = 145
    end
    object btn_exec: TcxButton
      Left = 129
      Top = 10
      Width = 127
      Height = 25
      Caption = #1055#1086#1083#1091#1095#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000008242F3700000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000002290B9D5249AC9E902080A0C0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000002080A0C2DAEDFFF2BABDEFF145A778A00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000238EB5CF4FBCE7FF4CBAE6FF239BCCED030F14170000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000002BAFDFFF84D3F2FF55BDE7FF2EAADEFF145D
        7C90000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000002286A9C070CCEEFF83D2F2FF7ECEF1FF4AB6
        E4FF229CCFF1030F14170000000000000000000000000000000035B7D9F035BB
        E0F834B8DFF832B6DEF830B3DDF82EB1DCF886D7F3FF2FB6EBFF4ABCECFF80CE
        F1FF51B9E6FF2CA8DDFF1664869D00000000000000000000000035B3D4E975DA
        F2FF93E6F8FF91E3F7FF8DE0F6FF8ADCF5FF8ADBF5FF88D7F4FF84D3F2FF7FCF
        F1FF7CCCF0FF7AC9EFFF48B4E3FF229DD1F504161E23000000000D2B32374FCD
        ECFF98E9F9FF4AD5F3FF45CFF1FF40CAF0FF38C2EEFF89D9F4FF2EB3E0FE2BAC
        DAF82AA9D9F828A7D8F826A4D6F824A1D5F82095C7E9000000000000000038BE
        DFF480E1F5FF8EE6F8FF43D2F3FF3FCDF1FF39C7EFFF8CDCF5FF58C6EAFF1552
        6674000000000000000000000000000000000000000000000000000000001442
        4D545BD4EFFF99EAF9FF47D6F4FF42D0F2FF3DCBF0FF6ED5F3FF7FD7F3FF4AC0
        E7FF0E34414A0000000000000000000000000000000000000000000000000000
        00003CC5E4F993E9F9FF72E1F7FF45D4F3FF41CEF2FF3CC9F0FF8ADCF5FF70D0
        EFFF3DBBE4FF06191F2300000000000000000000000000000000000000000000
        00002069798364D9F1FF9AEBFAFF48D8F4FF44D3F3FF3FCEF1FF3AC8F0FF8CDC
        F5FF62CBEDFF30B6E0FC00000000000000000000000000000000000000000000
        0000000000003FCAE9FD9AEDFAFF99EBF9FF97E8F9FF94E5F8FF91E2F7FF8EDF
        F6FF8BDBF5FF56C7EBFF2FAFD8F3000000000000000000000000000000000000
        000000000000298396A23FCCEBFF3ECBEAFF3CC9E9FF3BC7E9FF3AC4E8FF38C2
        E7FF36C0E6FF35BDE5FF33BBE4FF2BA2C8E10000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 1
      OnClick = btn_execClick
    end
    object grd1: TcxGrid
      Left = 10
      Top = 75
      Width = 829
      Height = 542
      TabOrder = 4
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_plan
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv1SUMOST
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv1SUMY
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv1SUM1
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv1SUM2
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv1SUM3
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv1SUM4
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv1SummAll
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Width = 181
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 72
        end
        object clv1STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SUMOST: TcxGridDBColumn
          Caption = #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1085#1072#1095#1072#1083#1086' '#1075#1086#1076#1072
          DataBinding.FieldName = 'SUMOST'
          Width = 92
        end
        object clv1SUMY: TcxGridDBColumn
          Caption = #1055#1083#1072#1085' '#1085#1072' '#1075#1086#1076
          DataBinding.FieldName = 'SUMY'
          Width = 86
        end
        object clv1SummAll: TcxGridDBColumn
          Caption = #1055#1083#1072#1085' + '#1054#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SUMMALL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 85
        end
        object clv1SUM1: TcxGridDBColumn
          Caption = #1055#1083#1072#1085' '#1085#1072' 1 '#1082#1074#1072#1088#1090#1072#1083
          DataBinding.FieldName = 'SUM1'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 75
        end
        object clv1SUM2: TcxGridDBColumn
          Caption = #1055#1083#1072#1085' '#1085#1072' 2 '#1082#1074#1072#1088#1090#1072#1083
          DataBinding.FieldName = 'SUM2'
          HeaderAlignmentHorz = taCenter
          Width = 78
        end
        object clv1SUM3: TcxGridDBColumn
          Caption = #1055#1083#1072#1085' '#1085#1072' 3 '#1082#1074#1072#1088#1090#1072#1083
          DataBinding.FieldName = 'SUM3'
          HeaderAlignmentHorz = taCenter
          Width = 86
        end
        object clv1SUM4: TcxGridDBColumn
          Caption = #1055#1083#1072#1085' '#1085#1072' 4 '#1082#1074#1072#1088#1090#1072#1083
          DataBinding.FieldName = 'SUM4'
          HeaderAlignmentHorz = taCenter
          Width = 73
        end
        object clv1Y: TcxGridDBColumn
          DataBinding.FieldName = 'Y'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object doc1: TdxBarDockControl
      Left = 10
      Top = 41
      Width = 829
      Height = 28
      Align = dalTop
      BarManager = brm1
    end
    object btn_Excel: TcxButton
      Left = 262
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Excel'
      OptionsImage.ImageIndex = 16
      OptionsImage.Images = cmDb.iml1
      TabOrder = 2
      OnClick = btn_ExcelClick
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grp2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itm_year: TdxLayoutItem
      CaptionOptions.Text = #1043#1086#1076
      Parent = grp2
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 113
      Control = edt_year
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_exec: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp2
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 127
      Control = btn_exec
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmlc1Item1: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = grp1
      Control = doc1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itml_grd: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grp1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_street: TdxLayoutItem
      CaptionOptions.Text = #1059#1083#1080#1094#1072
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 275
      Control = cbb_street
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object itmlc1Item11: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp2
      Control = btn_Excel
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object lkf1: TdxLayoutLookAndFeelList
    Left = 656
    Top = 120
    object laf1: TdxLayoutCxLookAndFeel
      LookAndFeel.SkinName = 'Office2010Blue'
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_street
        Properties.Strings = (
          'EditValue'
          'Properties.DropDownWidth')
      end
      item
        Component = edt_year
        Properties.Strings = (
          'Text')
      end>
    StorageName = 'prop1'
    Left = 685
    Top = 120
  end
  object ds_street: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    CODE,'
      '    NAME,'
      '    STR_TYPE'
      'FROM'
      '    STREET ')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 264
    Top = 104
  end
  object src_street: TDataSource
    DataSet = ds_street
    Left = 292
    Top = 104
  end
  object ds_plan: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE TRLFINPLAN'
      'SET '
      '    SUMY = :SUMY,'
      '    SUM1 = :SUM1,'
      '    SUM2 = :SUM2,'
      '    SUM3 = :SUM3,'
      '    SUM4 = :SUM4,'
      '    SUMOST = :SUMOST'
      'WHERE'
      '    Y = :OLD_Y'
      '    and HOUSE = :OLD_HOUSE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    TRLFINPLAN'
      'WHERE'
      '        Y = :OLD_Y'
      '    and HOUSE = :OLD_HOUSE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO TRLFINPLAN('
      '    Y,'
      '    HOUSE,'
      '    SUMY,'
      '    SUM1,'
      '    SUM2,'
      '    SUM3,'
      '    SUM4,'
      '    SUMOST'
      ')'
      'VALUES('
      '    :Y,'
      '    :HOUSE,'
      '    :SUMY,'
      '    :SUM1,'
      '    :SUM2,'
      '    :SUM3,'
      '    :SUM4,'
      '    :SUMOST'
      ')')
    RefreshSQL.Strings = (
      'SELECT tp.Y, '
      '       tp.HOUSE,h.NOMER,h.STREET,s.name SNAME,'
      '       tp.SUMY, tp.SUM1, tp.SUM2, tp.SUM3,'
      '       tp.SUM4, tp.SUMOST'
      '       , m.worker, (P.F || '#39' '#39' || P.I || '#39' '#39' || P.O) FIO'
      'FROM TRLFINPLAN tp'
      'left outer join house h on h.code=tp.house'
      'left outer join street s on s.code=h.street'
      'left outer join mhouse m on m.house=h.code and m.kontragent=1'
      'left outer join WORKER W on W.CODE = m.worker'
      'left outer join PIPLE P on P.CODE = W.PIPLE'
      ''
      ' WHERE '
      '        TP.Y = :OLD_Y'
      '    and TP.HOUSE = :OLD_HOUSE'
      '    ')
    SelectSQL.Strings = (
      'SELECT tp.Y,'
      '       tp.HOUSE,h.NOMER,h.STREET,s.name SNAME,'
      '       tp.SUMY, tp.SUM1, tp.SUM2, tp.SUM3,'
      '       tp.SUM4, tp.SUMOST, (tp.SUMY + tp.SUMOST) SummAll '
      '       , m.worker, (P.F || '#39' '#39' || P.I || '#39' '#39' || P.O) FIO'
      'FROM TRLFINPLAN tp'
      'left outer join house h on h.code=tp.house'
      'left outer join street s on s.code=h.street'
      'left outer join mhouse m on m.house=h.code and m.kontragent=1'
      'left outer join WORKER W on W.CODE = m.worker'
      'left outer join PIPLE P on P.CODE = W.PIPLE')
    AutoUpdateOptions.UpdateTableName = 'TRLFINPLAN'
    AutoUpdateOptions.KeyFields = 'Y;HOUSE'
    AfterOpen = ds_planAfterOpen
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    AutoCommit = True
    Left = 96
    Top = 104
  end
  object src_plan: TDataSource
    DataSet = ds_plan
    Left = 126
    Top = 104
  end
  object brm1: TdxBarManager
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
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 592
    Top = 248
    DockControlHeights = (
      0
      0
      0
      0)
    object bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = doc1
      DockedDockControl = doc1
      DockedLeft = 2
      DockedTop = 0
      FloatLeft = 870
      FloatTop = 8
      FloatClientWidth = 115
      FloatClientHeight = 80
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_delhouse'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_AddHouse'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Calc'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_delhouse: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1076#1086#1084
      Category = 0
      Enabled = False
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1076#1086#1084
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
      PaintStyle = psCaptionGlyph
      OnClick = btn_delhouseClick
    end
    object btn_AddHouse: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1084
      Category = 0
      Enabled = False
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1084
      Visible = ivAlways
      Glyph.Data = {
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
      PaintStyle = psCaptionGlyph
      OnClick = btn_AddHouseClick
    end
    object btn_Calc: TdxBarButton
      Caption = #1056#1072#1079#1085#1077#1089#1090#1080' '#1089#1091#1084#1084#1091' '#1086#1089#1090#1072#1090#1082#1072
      Category = 0
      Enabled = False
      Hint = #1056#1072#1079#1085#1077#1089#1090#1080' '#1089#1091#1084#1084#1091' '#1086#1089#1090#1072#1090#1082#1072
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000010101010101010101010101000000000107040B0109050F010A050F010A
        050F010A050F010B060F010B060F0108040B0000000000000000000000000000
        000084AD96CFD1EDDDFFD1F1DFFF183E294A72AC8CDDC3E5D2FFC4E7D3FFC4E9
        D4FFC4EAD5FFC4ECD6FFC4EED6FF69B58ACF0000000000000000000000000000
        000086AE98CFD4EEE0FFD4F2E1FF183E294A74AD8EDEC6E7D5FFC7E8D5FFC7EA
        D6FFC7EBD7FFC7EDD8FFC7EED8FF6AB68CD00000000000000000000000000000
        000002130A21021B0D2A021E0F2A0108040B0220103803291446032B1546032D
        1646032F17460331184603331946032713340000000000000000000000000000
        00009BB8A7D0F5FBF7FFF5FBF8FF1C3F2C4B86B69CDEE7F4EDFFE7F5EDFFE7F6
        EEFFE7F6EEFFE7F7EEFFE7F8EFFF7BBB97D00000000000000000000000000000
        00006F9580B4AFCCBCDEAFCFBDDE153523405E9978CAA1CBB4EBA1CEB5EBA1CF
        B6EBA1D1B6EBA1D4B7EBA1D6B9EB57A379BD0000000000000000000000000000
        000041604E7866837294668674940C22162A34644A8B58836BA259856CA25987
        6DA259896EA2598B6FA25A8D70A2306D4B820000000000000000000000000000
        0000A2BBACD0FFFFFFFFFFFFFFFF1D402C4B94BCA6DEFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF87BE9FD00000000000000000000000000000
        00002946365C41614F7342645173081A10201F50357834684B8F346B4C8F346D
        4D8F34704F8F3472508F3575518F1D5B39700000000000000000000000000000
        000086AE98CFD4EEE0FFD4F2E1FF183E294A74AD8EDEC6E7D5FFC7E8D5FFC7EA
        D6FFC7EBD7FFC7EDD8FFC7EED8FF6AB68CD00000000000000000000000000000
        000084AD96CFD1EDDDFFD1F1DFFF183E294A72AC8CDDC3E5D2FFC4E7D3FFC4E9
        D4FFC4EAD5FFC4ECD6FFC4EED6FF69B58ACF0000000000000000000000000000
        0000010101010101010101010101000000000107040B0109050F010A050F010A
        050F010A050F010B060F010B060F0108040B0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      PaintStyle = psCaptionGlyph
      OnClick = btn_CalcClick
    end
  end
  object xlr1: TEXLReport
    About = 'EMS Advanced Excel Report(tm) Component Suite for Delphi(R)'
    DataSet = ds_plan
    Dictionary = <>
    _Version = '1.9.0.2'
    Left = 563
    Top = 249
  end
end
