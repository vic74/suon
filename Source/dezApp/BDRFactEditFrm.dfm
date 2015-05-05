object BDRFactEditForm: TBDRFactEditForm
  Left = 0
  Top = 0
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1091#1084#1084' '#1087#1086' '#1091#1089#1083#1091#1075#1072#1084
  ClientHeight = 591
  ClientWidth = 659
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 659
    Height = 591
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object cbb_dog: TcxLookupComboBox
      Left = 58
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
          MinWidth = 0
          Width = 0
          FieldName = 'KONTRAGENT'
        end
        item
          MinWidth = 0
          Width = 0
          FieldName = 'ATYPE'
        end
        item
          FieldName = 'ATYPENAME'
        end>
      Properties.ListFieldIndex = 3
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_srvdog
      Style.HotTrack = False
      TabOrder = 0
      Width = 349
    end
    object doc1: TdxBarDockControl
      Left = 10
      Top = 37
      Width = 299
      Height = 29
      Align = dalTop
      BarManager = brm1
    end
    object grd1: TcxGrid
      Left = 10
      Top = 72
      Width = 639
      Height = 509
      TabOrder = 7
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_m1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = clv1FACTSUM
          end
          item
            Kind = skCount
            Column = clv1STNAME
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ShowEditButtons = gsebForFocusedRecord
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
        end
        object clv1STNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STNAME'
          Options.Editing = False
          Width = 263
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Options.Editing = False
          Width = 58
        end
        object clv1FACTSUM: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = 'FACTSUM'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ImmediatePost = True
          Properties.QuickClose = True
          Width = 107
        end
        object clv1SQ1: TcxGridDBColumn
          Caption = #1046#1080#1083#1072#1103' '#1087#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'SQ1'
          Width = 95
        end
        object clv1SQ2: TcxGridDBColumn
          Caption = #1053#1077#1078#1080#1083#1072#1103' '#1087#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'SQ2'
          Width = 99
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object cbb1: TcxComboBox
      Left = 377
      Top = 37
      Enabled = False
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
      TabOrder = 5
      Text = #1103#1085#1074#1072#1088#1100
      Width = 121
    end
    object mskY: TcxMaskEdit
      Left = 528
      Top = 37
      Enabled = False
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object chk1: TcxCheckBox
      Left = 315
      Top = 37
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.OnEditValueChanged = chk1PropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 4
      Width = 20
    end
    object chk_all: TcxCheckBox
      Left = 413
      Top = 10
      Caption = #1042#1089#1077' '#1076#1086#1084#1072
      Properties.OnEditValueChanged = chk_allPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 1
      Width = 93
    end
    object chk_lift: TcxCheckBox
      Left = 512
      Top = 10
      Caption = #1090#1086#1083#1100#1082#1086' '#1089' '#1083#1080#1092#1090#1072#1084#1080
      Style.HotTrack = False
      TabOrder = 2
      Width = 132
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
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = gr1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object itmlc1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1044#1086#1075#1086#1074#1086#1088
      Parent = grplc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 397
      Control = cbb_dog
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item11: TdxLayoutItem
      AlignHorz = ahClient
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = grplc1Group1
      Control = doc1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grlc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = gr1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object itmlc1Item12: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grlc1Group2
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item13: TdxLayoutItem
      CaptionOptions.Text = #1052#1077#1089#1103#1094
      Parent = grplc1Group1
      Control = cbb1
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object grplc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grlc1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object itmlc1Item14: TdxLayoutItem
      CaptionOptions.Text = #1043#1086#1076
      Parent = grplc1Group1
      Control = mskY
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 3
    end
    object itmlc1Item15: TdxLayoutItem
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 19
      Control = chk1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmlc1Item16: TdxLayoutItem
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Parent = grplc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 93
      Control = chk_all
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grplc1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grlc1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itm_lift: TdxLayoutItem
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Parent = grplc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 132
      Control = chk_lift
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 592
    Top = 104
    object lcl1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_dog
        Properties.Strings = (
          'Properties.DropDownHeight'
          'Properties.DropDownWidth')
      end>
    StorageName = 'prop1'
    Left = 624
    Top = 104
  end
  object brm1: TdxBarManager
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
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 592
    Top = 152
    DockControlHeights = (
      0
      0
      0
      0)
    object bar1: TdxBar
      AllowClose = False
      AllowQuickCustomizing = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = doc1
      DockedDockControl = doc1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 819
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_exec'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_save'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_exec: TdxBarButton
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Category = 0
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      ScreenTip = tip_load
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        777700000000000007777888888888880777F777777777780777F77777777778
        0777F799777777780777FFFFFFFFFFF777777777777777777777007777770000
        000700777770FBFBFBF000770770BFBFBFB000870070FBFBFBF080000000BFBF
        BFB077770070000BFBF077770770BFB000077777777700077777}
      PaintStyle = psCaptionGlyph
      OnClick = btn_execClick
    end
    object btn_save: TdxBarButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      ScreenTip = tip_save
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        777777700000000000007777888888888880777F777777777780777F77777777
        7780777F799777777780777FFFFFFFFFFF777777777777777777700000007777
        70770FBFBFBF077700070BFBFBFB077000000FBFBFBF077770770BFBFBFB0777
        80770000BFBF000000770BFB0000700008777000777777777777}
      PaintStyle = psCaptionGlyph
      OnClick = btn_saveClick
    end
    object cci1: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = cbb1
    end
  end
  object stip1: TdxBarScreenTipRepository
    Left = 624
    Top = 152
    object tip_load: TdxBarScreenTip
      Header.Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        777700000000000007777888888888880777F777777777780777F77777777778
        0777F799777777780777FFFFFFFFFFF777777777777777777777007777770000
        000700777770FBFBFBF000770770BFBFBFB000870070FBFBFBF080000000BFBF
        BFB077770070000BFBF077770770BFB000077777777700077777}
      Header.Text = #1047#1072#1075#1088#1091#1079#1082#1072' '#1076#1072#1085#1085#1099#1093
      Description.Text = 
        #1047#1072#1075#1088#1091#1078#1072#1077#1090#1089#1103' '#1089#1087#1080#1089#1086#1082' '#1076#1086#1084#1086#1074' '#1080#1079' '#1076#1086#1075#1086#1074#1086#1088#1072' '#1055#1054', '#1072' '#1090#1072#1082' '#1078#1077' '#1080#1084#1077#1102#1097#1080#1077#1089#1103' '#1089#1091#1084#1084 +
        #1099' '#1080#1079' '#1076#1086#1082#1091#1084#1077#1085#1090#1072' '#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1080' '#1091#1089#1083#1091#1075'.'
    end
    object tip_save: TdxBarScreenTip
      Header.Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        777777700000000000007777888888888880777F777777777780777F77777777
        7780777F799777777780777FFFFFFFFFFF777777777777777777700000007777
        70770FBFBFBF077700070BFBFBFB077000000FBFBFBF077770770BFBFBFB0777
        80770000BFBF000000770BFB0000700008777000777777777777}
      Header.Text = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1074' '#1076#1086#1082#1091#1084#1077#1085#1090'.'
      Description.Text = #1057#1086#1093#1088#1072#1085#1103#1077#1090' '#1091#1089#1090#1072#1085#1086#1074#1083#1077#1085#1085#1099#1077' '#1089#1091#1084#1084#1099' '#1074' '#1076#1086#1082#1091#1084#1077#1085#1090'.'
    end
  end
  object m1: TdxMemData
    Indexes = <>
    SortOptions = []
    AfterEdit = m1AfterEdit
    Left = 280
    Top = 224
  end
  object src_m1: TDataSource
    DataSet = m1
    Left = 312
    Top = 224
  end
  object ds1: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT sh.HOUSE, h.nomer,s.name StName, fd.factsum'
      'FROM SRVDOGHOUSE sh'
      
        'left  join FACTDOCLIST fd on fd.house=sh.house and fd.FACTDOC=:f' +
        'actdoc'
      'left outer join house h on h.code=sh.house'
      'left outer join street s on s.code=h.street'
      'where sh.srvdog=:dog')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 280
    Top = 280
  end
  object ds_srvdog: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT sd.CODE, '
      '       sd.KONTRAGENT,k.NAME KName,'
      '       sd.NOMER, '
      '       sd.D1, '
      '       sd.D2, '
      '       sd."ACTIVE", '
      '       sd.DATA,'
      '       sd.atype,'
      '      case'
      
        '        when sd.atype=0 then k.NAME||'#39' | '#8470#39'||sd.NOMER||'#39' | '#1057#1072#1085#1090#1077 +
        #1093#1085#1080#1082#1072' '#1080' '#1086#1073#1097#1077#1089#1090#1088#1086#1081#39
      
        '        when sd.atype=1 then k.NAME||'#39' | '#8470#39'||sd.NOMER||'#39' | '#1069#1083#1077#1082#1090 +
        #1088#1080#1082#1072#39
      
        '        when sd.atype=2 then k.NAME||'#39' | '#8470#39'||sd.NOMER||'#39' | '#1051#1080#1092#1090#1099 +
        #39
      
        '        when sd.atype=3 then k.NAME||'#39' | '#8470#39'||sd.NOMER||'#39' | '#1057#1072#1085#1080#1090 +
        #1072#1088#1080#1103#39
      '        when sd.atype=4 then k.NAME||'#39' | '#8470#39'||sd.NOMER||'#39' | '#1042#1044#1043#1054#39
      
        '        when sd.atype=5 then k.NAME||'#39' | '#8470#39'||sd.NOMER||'#39' | '#1042#1077#1085#1090#1080 +
        #1083#1103#1094#1080#1103#39
      
        '        when sd.atype=6 then k.NAME||'#39' | '#8470#39'||sd.NOMER||'#39' | '#1042#1099#1074#1086#1079 +
        ' '#1058#1041#1054#39
      
        '        when sd.atype=7 then k.NAME||'#39' | '#8470#39'||sd.NOMER||'#39' | '#1044#1077#1088#1072#1090 +
        #1080#1079#1072#1094#1080#1103#39
      '        else '#39' '#39
      '      end atypeName'
      'FROM SRVDOG sd'
      'left outer join KONTRAGENT k on k.code=sd.KONTRAGENT'
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 448
    Top = 112
  end
  object src_srvdog: TDataSource
    DataSet = ds_srvdog
    Left = 480
    Top = 112
  end
  object ds_house: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT h.CODE HOUSE,'
      '       h.NOMER, '
      '       s.name StName,'
      '       0 factsum,'
      '       h.TOTAL_SQ SQ1,'
      '       h.COMMERCE_SQ SQ2'
      'FROM HOUSE h'
      'left outer join street s on s.code=h.street'
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 280
    Top = 344
  end
end
